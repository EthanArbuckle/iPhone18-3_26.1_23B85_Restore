uint64_t _ManagedCriticalState.LockedBuffer.__deallocating_deinit()
{
  v0 = *MEMORY[0x1E12DD390]();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return MEMORY[0x1EEE6BDC0]();
}

void _ManagedCriticalState.withCriticalRegion<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 7) & 0x1FFFFFFF8;
  _swift_observation_lock_lock((a3 + v6));
  a1(a3 + v5);
  _swift_observation_lock_unlock((a3 + v6));
}

uint64_t ObservationRegistrar.State.registerTracking(for:willSet:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*v3)++;

  v9 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v3[1];
  v43 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, 0, a1, v8, isUniquelyReferenced_nonNull_native);
  v3[1] = v45;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyKeyPath();
    Set.Iterator.init(_cocoa:)();
    a1 = v45;
    v11 = v46;
    v13 = v47;
    v12 = v48;
    v14 = v49;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v12 = 0;
  }

  v18 = 0;
  v42 = a1;
  v19 = (v13 + 64) >> 6;
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for AnyKeyPath(), swift_dynamicCast(), v27 = v44, v25 = v12, v26 = v14, !v44))
    {
LABEL_29:
      sub_1DF7226C0();
      _sxRi_zRi0_zlyShySiGIsegr_SgWOe(v18);
      return v43;
    }

LABEL_19:
    _sxRi_zRi0_zlyShySiGIsegr_SgWOe(v18);
    v28 = v4[2];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v4[2];
    v30 = v44;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
    v32 = v30[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_31;
    }

    v36 = v31;
    if (v30[3] < v35)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v29);
      type metadata accessor for AnyKeyPath();
      v30 = v44;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_33;
      }

LABEL_24:
      v4[2] = v30;
      if (v36)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (v29)
    {
      goto LABEL_24;
    }

    v40 = v21;
    specialized _NativeDictionary.copy()();
    v21 = v40;
    v30 = v44;
    v4[2] = v44;
    if (v36)
    {
LABEL_8:
      v20 = v21;

      v21 = v20;
      goto LABEL_9;
    }

LABEL_25:
    v30[(v21 >> 6) + 8] |= 1 << v21;
    *(v30[6] + 8 * v21) = v27;
    *(v30[7] + 8 * v21) = MEMORY[0x1E69E7CD0];
    v38 = v30[2];
    v34 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v34)
    {
      goto LABEL_32;
    }

    v30[2] = v39;
LABEL_9:
    v22 = v30[7] + 8 * v21;
    specialized Set._Variant.insert(_:)(&v44, v43);
    v18 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
    v12 = v25;
    v14 = v26;
    a1 = v42;
  }

  v23 = v12;
  v24 = v14;
  v25 = v12;
  if (v14)
  {
LABEL_15:
    v26 = (v24 - 1) & v24;
    v27 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v27)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v19)
    {
      goto LABEL_29;
    }

    v24 = *(v11 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t ObservationRegistrar.State.registerTracking(for:didSet:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*v3)++;

  v9 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v3[1];
  v43 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, 1, a1, v8, isUniquelyReferenced_nonNull_native);
  v3[1] = v45;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyKeyPath();
    Set.Iterator.init(_cocoa:)();
    a1 = v45;
    v11 = v46;
    v13 = v47;
    v12 = v48;
    v14 = v49;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v12 = 0;
  }

  v18 = 0;
  v42 = a1;
  v19 = (v13 + 64) >> 6;
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for AnyKeyPath(), swift_dynamicCast(), v27 = v44, v25 = v12, v26 = v14, !v44))
    {
LABEL_29:
      sub_1DF7226C0();
      _sxRi_zRi0_zlyShySiGIsegr_SgWOe(v18);
      return v43;
    }

LABEL_19:
    _sxRi_zRi0_zlyShySiGIsegr_SgWOe(v18);
    v28 = v4[2];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v4[2];
    v30 = v44;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
    v32 = v30[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_31;
    }

    v36 = v31;
    if (v30[3] < v35)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v29);
      type metadata accessor for AnyKeyPath();
      v30 = v44;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_33;
      }

LABEL_24:
      v4[2] = v30;
      if (v36)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (v29)
    {
      goto LABEL_24;
    }

    v40 = v21;
    specialized _NativeDictionary.copy()();
    v21 = v40;
    v30 = v44;
    v4[2] = v44;
    if (v36)
    {
LABEL_8:
      v20 = v21;

      v21 = v20;
      goto LABEL_9;
    }

LABEL_25:
    v30[(v21 >> 6) + 8] |= 1 << v21;
    *(v30[6] + 8 * v21) = v27;
    *(v30[7] + 8 * v21) = MEMORY[0x1E69E7CD0];
    v38 = v30[2];
    v34 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v34)
    {
      goto LABEL_32;
    }

    v30[2] = v39;
LABEL_9:
    v22 = v30[7] + 8 * v21;
    specialized Set._Variant.insert(_:)(&v44, v43);
    v18 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
    v12 = v25;
    v14 = v26;
    a1 = v42;
  }

  v23 = v12;
  v24 = v14;
  v25 = v12;
  if (v14)
  {
LABEL_15:
    v26 = (v24 - 1) & v24;
    v27 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v27)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v19)
    {
      goto LABEL_29;
    }

    v24 = *(v11 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t ObservationRegistrar.State.cancel(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 8);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v5)
  {
    v6 = result;
    v7 = *(v2 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 8);
    v36 = v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_43:
      specialized _NativeDictionary.copy()();
      v9 = v36;
    }

    v10 = *(v9 + 56) + 32 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    specialized _NativeDictionary._delete(at:)(v6, v9);
    *(v2 + 8) = v9;
    v34 = v2;
    if ((v14 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for AnyKeyPath();
      Set.Iterator.init(_cocoa:)();
      _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();

      v15 = v37;
      v33 = v36;
      v16 = v38;
      v6 = v39;
      v17 = v40;
    }

    else
    {
      _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
      v6 = 0;
      v18 = -1 << *(v14 + 32);
      v33 = v14;
      v15 = v14 + 56;
      v16 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v14 + 56);
    }

    v2 = (v16 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        if (v33 < 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            return sub_1DF7226C0();
          }

          type metadata accessor for AnyKeyPath();
          swift_dynamicCast();
          v25 = v35;
          v23 = v6;
          v24 = v17;
          if (!v35)
          {
            return sub_1DF7226C0();
          }
        }

        else
        {
          v21 = v6;
          v22 = v17;
          v23 = v6;
          if (!v17)
          {
            while (1)
            {
              v23 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              if (v23 >= v2)
              {
                return sub_1DF7226C0();
              }

              v22 = *(v15 + 8 * v23);
              ++v21;
              if (v22)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_15:
          v24 = (v22 - 1) & v22;
          v25 = *(*(v33 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

          if (!v25)
          {
            return sub_1DF7226C0();
          }
        }

        v26 = *(v34 + 16);
        if (*(v26 + 16))
        {
          break;
        }

LABEL_33:
        v6 = v23;
        v17 = v24;
      }

      v27 = *(v34 + 16);
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
      LOBYTE(v27) = v29;

      v6 = v23;
      v17 = v24;
      if (v27)
      {
        v32 = *(v26 + 36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = v26;
          specialized _NativeDictionary.copy()();
          v26 = v35;
        }

        if (v28 < 0 || v28 >= 1 << *(v26 + 32))
        {
          goto LABEL_37;
        }

        v6 = v26 + 64;
        if ((*(v26 + 64 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
        {
          goto LABEL_38;
        }

        if (v32 != *(v26 + 36))
        {
          goto LABEL_39;
        }

        v30 = *(v26 + 56) + 8 * v28;
        specialized Set._Variant.remove(_:)(a1);
        *(v34 + 16) = v26;
        if (v28 >= 1 << *(v26 + 32))
        {
          goto LABEL_40;
        }

        if ((*(v6 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
        {
          goto LABEL_41;
        }

        if (v32 != *(v26 + 36))
        {
          goto LABEL_42;
        }

        v6 = v23;
        v17 = v24;
        if (!*(*(*(v26 + 56) + 8 * v28) + 16))
        {
          specialized Dictionary._Variant.remove(at:)(&v35, v28, v32);

          goto LABEL_33;
        }
      }
    }
  }

  return result;
}

uint64_t ObservationRegistrar.Extent.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  _swift_observation_lock_lock((v1 + 40));
  v2 = *(v1 + 24);

  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  v4 = *(v1 + 32);

  *(v1 + 32) = v3;
  _swift_observation_lock_unlock((v1 + 40));

  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ObservationRegistrar.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservationRegistrar.Extent();
  v2 = swift_allocObject();
  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A9RegistrarV0D033_5AE0855755CD62D4521FC18D42BC1E4BLLV_GMd, &_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A9RegistrarV0D033_5AE0855755CD62D4521FC18D42BC1E4BLLV_GMR);
    v4 = swift_allocObject();
    result = _swift_observation_lock_init((v4 + 40));
    v5 = MEMORY[0x1E69E7CC8];
    *(v4 + 16) = 0;
    *(v4 + 24) = v5;
    *(v4 + 32) = v5;
    *(v2 + 16) = v4;
    *a1 = v2;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *ObservationRegistrar.access<A, B>(_:keyPath:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = _swift_observation_tls_get();
  if (result)
  {
    v6 = result;
    if (*result || (*result = MEMORY[0x1E69E7CC8], result = , *v6))
    {
      v7 = *(v4 + 16);

      ObservationTracking._AccessList.addAccess<A>(keyPath:context:)(a2, v7);
    }
  }

  return result;
}

uint64_t ObservationTracking._AccessList.addAccess<A>(keyPath:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;

  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v25 = v9;
  *v4 = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_15:
    specialized _NativeDictionary.copy()();
    v9 = v25;
    goto LABEL_6;
  }

  v3 = v10;
  if (v9[3] >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
  v9 = v25;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v3 & 1) != (v16 & 1))
  {
    goto LABEL_19;
  }

  v11 = v15;
LABEL_6:
  v17 = *v4;

  *v4 = v9;
  if ((v3 & 1) == 0)
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
    {
      v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs10AnyKeyPathC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CD0];
    }

    v9[(v11 >> 6) + 8] |= 1 << v11;
    *(v9[6] + 8 * v11) = a2;
    v19 = (v9[7] + 16 * v11);
    *v19 = a2;
    v19[1] = v18;
    v20 = v9[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      v9[2] = v22;

      goto LABEL_11;
    }

    __break(1u);
LABEL_19:

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v23 = v9[7] + 16 * v11;

  specialized Set._Variant.insert(_:)(&v25, a1);
}

uint64_t ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  v11 = specialized ObservationRegistrar.willSet<A, B>(_:keyPath:)(a2, a6, specialized ObservationRegistrar.Context.willSet<A, B>(_:keyPath:));
  a3(v11);
  return specialized ObservationRegistrar.willSet<A, B>(_:keyPath:)(a2, a6, specialized ObservationRegistrar.Context.didSet<A, B>(_:keyPath:));
}

uint64_t ObservationRegistrar.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for ObservationRegistrar.Extent();
  v3 = swift_allocObject();
  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A9RegistrarV0D033_5AE0855755CD62D4521FC18D42BC1E4BLLV_GMd, &_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A9RegistrarV0D033_5AE0855755CD62D4521FC18D42BC1E4BLLV_GMR);
    v5 = swift_allocObject();
    result = _swift_observation_lock_init((v5 + 40));
    v6 = MEMORY[0x1E69E7CC8];
    *(v5 + 16) = 0;
    *(v5 + 24) = v6;
    *(v5 + 32) = v6;
    *(v3 + 16) = v5;
    *a2 = v3;
  }

  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyKeyPath();
    result = Set.Iterator.init(_cocoa:)();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_1DF7226C0();
      return v16;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyKeyPath();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t ObservationTracking.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMd, &_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMR);
    v5 = swift_allocObject();
    result = _swift_observation_lock_init((v5 + 40));
    v6 = MEMORY[0x1E69E7CC8];
    *(v5 + 16) = MEMORY[0x1E69E7CC8];
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    if (v3)
    {
      v6 = v3;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

Swift::Void __swiftcall ObservationTracking.cancel()()
{
  v2 = *v0;
  v1 = v0[1];
  _swift_observation_lock_lock(*v0 + 10);
  LOBYTE(v2[6]._os_unfair_lock_opaque) = 1;
  v3 = *&v2[4]._os_unfair_lock_opaque;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_11Observation0C8TrackingV2IdOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = *&v2[4]._os_unfair_lock_opaque;
  *&v2[4]._os_unfair_lock_opaque = v4;

  _swift_observation_lock_unlock(v2 + 10);
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v6 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = *(v3 + 56) + 24 * v13;
    v16 = *v15;
    v17 = *&v1[4]._os_unfair_lock_opaque;
    if (*(v15 + 16) && *(v15 + 16) != 1)
    {
      if (v17)
      {
        v29 = *(v15 + 8);
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v21)
        {
          v22 = (*&v1[14]._os_unfair_lock_opaque + 16 * v20);
          v23 = *v22;
          v28 = v22[1];

          _swift_observation_lock_lock(v23 + 10);
          ObservationRegistrar.State.cancel(_:)(v16);
          _swift_observation_lock_unlock(v23 + 10);
        }

        if (*&v1[4]._os_unfair_lock_opaque)
        {
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
          if (v24)
          {
            v16 = v29;
            goto LABEL_20;
          }
        }
      }
    }

    else if (v17)
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
      if (v19)
      {
LABEL_20:
        v25 = (*&v1[14]._os_unfair_lock_opaque + 16 * v18);
        v26 = *v25;
        v27 = v25[1];

        _swift_observation_lock_lock(v26 + 10);
        ObservationRegistrar.State.cancel(_:)(v16);
        _swift_observation_lock_unlock(v26 + 10);
      }
    }
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v3 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t ObservationTracking.changed.getter()
{
  v1 = *v0;
  _swift_observation_lock_lock((v1 + 40));
  v2 = *(v1 + 32);

  _swift_observation_lock_unlock((v1 + 40));
  return v2;
}

uint64_t generateAccessList<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v12 = a5;
  v13 = a3;
  v14 = a4;
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  result = _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, partial apply for closure #1 in generateAccessList<A>(_:), v11, CanonicalSpecializedMetadata, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v8);
  *a2 = v15[0];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t withObservationTracking<A>(_:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = generateAccessList<A>(_:)(a5, &v9, a1, a2, a4);
  if (v9)
  {
    v7 = a3(result);
    specialized static ObservationTracking._installTracking(_:onChange:)(&v9, v7, v8);
  }

  return result;
}

uint64_t withObservationTracking<A>(_:willSet:didSet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  generateAccessList<A>(_:)(a8, v16, a1, a2, a7);
  v12 = v16[0];
  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMd, &_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMR);
    v14 = swift_allocObject();
    _swift_observation_lock_init((v14 + 40));
    v15 = MEMORY[0x1E69E7CC8];
    *(v14 + 16) = MEMORY[0x1E69E7CC8];
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    if (v12)
    {
      v15 = v12;
    }

    v16[0] = v14;
    v16[1] = v15;
    specialized static ObservationTracking._installTracking(_:willSet:didSet:)(v16, a3, a4, a5, a6);
  }

  return result;
}

uint64_t withObservationTracking<A>(_:willSet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  generateAccessList<A>(_:)(a6, v12, a1, a2, a5);
  v8 = v12[0];
  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMd, &_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMR);
    v10 = swift_allocObject();
    _swift_observation_lock_init((v10 + 40));
    v11 = MEMORY[0x1E69E7CC8];
    *(v10 + 16) = MEMORY[0x1E69E7CC8];
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    if (v8)
    {
      v11 = v8;
    }

    v12[0] = v10;
    v12[1] = v11;
    specialized static ObservationTracking._installTracking(_:willSet:didSet:)(v12, a3, a4, 0, 0);
  }

  return result;
}

uint64_t withObservationTracking<A>(_:didSet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  generateAccessList<A>(_:)(a6, v12, a1, a2, a5);
  v8 = v12[0];
  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMd, &_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMR);
    v10 = swift_allocObject();
    _swift_observation_lock_init((v10 + 40));
    v11 = MEMORY[0x1E69E7CC8];
    *(v10 + 16) = MEMORY[0x1E69E7CC8];
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    if (v8)
    {
      v11 = v8;
    }

    v12[0] = v10;
    v12[1] = v11;
    specialized static ObservationTracking._installTracking(_:willSet:didSet:)(v12, 0, 0, a3, a4);
  }

  return result;
}

uint64_t static Observations.State.generation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  _ManagedCriticalState.withCriticalRegion<A>(_:)(partial apply for closure #1 in static Observations.State.generation(_:), v5, a1);
  return v5[7];
}

uint64_t static Observations.State.cancel(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a2;
  type metadata accessor for Observations.State.Continuation();
  type metadata accessor for Optional();
  _ManagedCriticalState.withCriticalRegion<A>(_:)(partial apply for closure #1 in static Observations.State.cancel(_:id:), v7, a1);
  result = v8;
  if (v8 >= 2)
  {
    return swift_continuation_throwingResume();
  }

  return result;
}

void static Observations.State.emitWillChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  type metadata accessor for Observations.State.Continuation();
  type metadata accessor for Dictionary.Values();
  _ManagedCriticalState.withCriticalRegion<A>(_:)(partial apply for closure #1 in static Observations.State.emitWillChange(_:), v14, a1);
  v5 = 0;
  v6 = v15;
  v7 = v15 + 64;
  v8 = 1 << *(v15 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v15 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    if (*(*(v6 + 56) + ((v5 << 9) | (8 * v13))))
    {
      swift_continuation_throwingResume();
    }
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t static Observations.State.willChange(isolation:state:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[10] = a3;
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  return MEMORY[0x1EEE6DFA0](static Observations.State.willChange(isolation:state:id:), v8, v10);
}

uint64_t static Observations.State.willChange(isolation:state:id:)()
{
  v11 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 16) = v0;
  *(v0 + 24) = static Observations.State.willChange(isolation:state:id:);
  v6 = *(v0 + 96);
  v7 = v1;
  v8 = v3;
  v9 = swift_continuation_init();
  _ManagedCriticalState.withCriticalRegion<A>(_:)(partial apply for closure #1 in closure #1 in static Observations.State.willChange(isolation:state:id:), v5, v2);
  if (v10)
  {
    swift_continuation_throwingResume();
  }

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t Observations.State.init()()
{
  v0 = type metadata accessor for Observations.State.Continuation();
  v1 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v2 = static Array._allocateUninitialized(_:)();
  specialized Dictionary.init(dictionaryLiteral:)(v2, v1, v0, MEMORY[0x1E69E6540]);

  return 0;
}

uint64_t Observations.init(emit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3 & 1;
  Observations.State.init()();
  type metadata accessor for Observations.State();
  v5 = specialized _ManagedCriticalState.init(_:)();

  *a4 = v5;
  return result;
}

__n128 _s11Observation12ObservationsVyACyxq_GxyYbq_YKYAccfC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Observations.init(emit:)(a1, a2, 1, &v6);
  v4 = v8;
  result = v7;
  *a3 = v6;
  *(a3 + 8) = result;
  *(a3 + 24) = v4;
  return result;
}

uint64_t _s11Observation12ObservationsV13untilFinishedyACyxq_GAC9IterationOyxq__GyYbq_YKYAcFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return Observations.init(emit:)(a1, a2, 0, a3);
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v28 = a3;
  v29 = a4;
  v30 = a1;
  v31 = a9;
  v26 = *(a6 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Observations.Iteration();
  v16 = type metadata accessor for Result();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a2;
  v41 = v28;
  v42 = v29 & 1;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = v30;
  withObservationTracking<A>(_:onChange:)(_s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZs6ResultOyAMq_GyXEfU_TA, v36, _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZyyYbcyXEfu_TA, v16, &v26 - v22);
  (*(v17 + 32))(v21, v23, v16);
  v24 = v43;
  result = _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v16, v15, v31);
  if (v24)
  {
    return (*(v26 + 32))(v27, v15, a6);
  }

  return result;
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZs6ResultOyAMq_GyXEfU_@<X0>(void (*a1)(_BYTE *)@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Result();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  if (a2)
  {
    v17 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC(a1, a4, &v19 - v15);
    MEMORY[0x1EEE9AC00](v17);
    *(&v19 - 4) = a3;
    *(&v19 - 3) = a4;
    *(&v19 - 2) = a5;
    type metadata accessor for Observations.Iteration();
    _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(_s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZs6ResultOyAMq_GyXEfU_AMxXEfU_TA, v12, a6);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    type metadata accessor for Observations.Iteration();

    return _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC(a1, a4, a6);
  }
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t _s11Observation12ObservationsV8IteratorV9terminate33_DF89E5A0D3A6524E6B622E937DD6C8FBLL8throwing2idxSgq_Sg_Sitq_YKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a2;
  v31 = a1;
  v26 = a5;
  v8 = a3[3];
  v29 = type metadata accessor for Optional();
  v9 = *(v29 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = v25 - v12;
  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v5;
  v19 = *v5;
  if (*v5)
  {
    MEMORY[0x1EEE9AC00](v16);
    v25[1] = v6;
    v25[-4] = a3[2];
    v25[-3] = v8;
    v20 = v28;
    v25[-2] = a3[4];
    v25[-1] = v20;
    type metadata accessor for Observations.State.Continuation();
    type metadata accessor for Optional();
    _ManagedCriticalState.withCriticalRegion<A>(_:)(_s11Observation12ObservationsV8IteratorV9terminate33_DF89E5A0D3A6524E6B622E937DD6C8FBLL8throwing2idxSgq_Sg_Sitq_YKFAC5StateV12ContinuationOyxq___GSgAMyxq__GzXEfU_TA, &v25[-6], v19);
    if (v32 >= 2)
    {
      swift_continuation_throwingResume();
    }
  }

  v21 = v29;
  *v30 = 0;
  (*(v9 + 16))(v13, v31, v21);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v9 + 8))(v13, v21);
    return (*(*(a3[2] - 8) + 56))(v26, 1, 1);
  }

  else
  {
    v23 = *(v14 + 32);
    v23(v18, v13, v8);
    v23(v27, v18, v8);
    v24 = a3[4];
    return swift_willThrowTypedImpl();
  }
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8[6] = v7;
  v8[7] = a7;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v11 = a6[3];
  v8[8] = v11;
  v12 = type metadata accessor for Optional();
  v8[9] = v12;
  v13 = *(v12 - 8);
  v8[10] = v13;
  v14 = *(v13 + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v15 = *(v11 - 8);
  v8[13] = v15;
  v16 = *(v15 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = a6[2];
  v8[18] = a6[4];
  v17 = *(*(type metadata accessor for Observations.Iteration() - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v8[20] = v18;
  v8[21] = v20;

  return MEMORY[0x1EEE6DFA0](_s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKFTY0_, v18, v20);
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKFTY0_()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 112);
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    (*(*(v0 + 104) + 56))(v2, 1, 1, *(v0 + 64));
    _s11Observation12ObservationsV8IteratorV9terminate33_DF89E5A0D3A6524E6B622E937DD6C8FBLL8throwing2idxSgq_Sg_Sitq_YKF(v2, v7, v6, v1, v8);
    (*(v3 + 8))(v2, v4);
    v15 = *(v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v9 = *(v0 + 48);
    *(v0 + 176) = *(v9 + 8);
    v10 = *(v9 + 16);
    *(v0 + 184) = v10;
    *(v0 + 216) = *(v9 + 24);
    *(v0 + 192) = *(v10 + 24);
    v11 = *(v10 + 16);
    *(v0 + 200) = v11;
    swift_unknownObjectRetain();
    if (v11)
    {
      swift_getObjectType();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKFTY1_, v12, v14);
  }
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKFTY1_()
{
  v1 = *(v0 + 200);
  _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZ(*(v0 + 24), *(v0 + 176), *(v0 + 184), *(v0 + 216), *(v0 + 136), *(v0 + 64), *(v0 + 144), *(v0 + 128), *(v0 + 152));
  *(v0 + 208) = 0;
  swift_unknownObjectRelease();
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](_s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKFTY2_, v2, v3);
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKFTY2_()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    v12 = v0[2];
    (*(v0[13] + 56))(v6, 1, 1, v0[8]);
    _s11Observation12ObservationsV8IteratorV9terminate33_DF89E5A0D3A6524E6B622E937DD6C8FBLL8throwing2idxSgq_Sg_Sitq_YKF(v6, v11, v10, v5, v12);
    (*(v8 + 8))(v6, v7);
    if (v4)
    {
      v13 = v0[19];
      v14 = v0[16];
      v15 = v0[14];
      v17 = v0[11];
      v16 = v0[12];
      (*(v0[13] + 32))(v0[7], v0[15], v0[8]);

      v18 = v0[1];
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v0[2];
    (*(v3 + 32))(v19, v1, v2);
    (*(v3 + 56))(v19, 0, 1, v2);
  }

  v20 = v0[19];
  v21 = v0[15];
  v22 = v0[16];
  v23 = v0[14];
  v25 = v0[11];
  v24 = v0[12];

  v18 = v0[1];
LABEL_6:

  return v18();
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKFTY3_()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  (*(v0[13] + 32))(v0[7], v0[16], v0[8]);

  v6 = v0[1];

  return v6();
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 24);
  v6[8] = v8;
  v9 = type metadata accessor for Optional();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = *(v8 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v6[17] = v14;
  v6[18] = v16;

  return MEMORY[0x1EEE6DFA0](_s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_, v14, v16);
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_()
{
  v1 = v0[6];
  v2 = *v1;
  v0[19] = *v1;
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);

    v8 = static Observations.State.generation(_:)(v7, v5, v3, v6);
    v0[20] = v8;
    if (*(v1 + 25))
    {
      v9 = v0[8];
      v10 = swift_task_alloc();
      v0[22] = v10;
      v10[2] = v5;
      v10[3] = v9;
      v10[4] = v6;
      v10[5] = v2;
      v10[6] = v8;
      v0[23] = swift_task_addCancellationHandler();
      v11 = swift_task_alloc();
      v0[24] = v11;
      *v11 = v0;
      v11[1] = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ3_;
      v14 = v0[3];
      v15 = v0[4];
      v31 = v0[8];

      return _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFyyYaXEfU_(v11, v12, v13, v14, v15, v2, v8, v5);
    }

    else
    {
      *(v1 + 25) = 1;
      v23 = swift_task_alloc();
      v0[21] = v23;
      *v23 = v0;
      v23[1] = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_;
      v24 = v0[15];
      v25 = v0[5];
      v26 = v0[6];
      v27 = v0[3];
      v28 = v0[4];
      v29 = v0[2];

      return _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKF(v29, v27, v28, v2, v8, v25, v24);
    }
  }

  else
  {
    (*(*(*(v0[5] + 16) - 8) + 56))(v0[2], 1, 1);
    v18 = v0[15];
    v17 = v0[16];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[11];

    v22 = v0[1];

    return v22();
  }
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  v5 = v2[19];

  v6 = v2[18];
  v7 = v2[17];
  if (v0)
  {
    v8 = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY8_;
  }

  else
  {
    v8 = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
    MEMORY[0x1E12DD5D0](v0);
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY6_;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY4_;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY4_()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  swift_task_removeCancellationHandler();

  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ5_;
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state2idxSgScA_pSgYi_AA21_ManagedCriticalStateVyAC0V0Vyxq__GGSitYaq_YKF(v11, v9, v10, v3, v5, v7, v6);
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ5_()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  v5 = v2[19];

  v6 = v2[18];
  v7 = v2[17];
  if (v0)
  {
    v8 = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY9_;
  }

  else
  {
    v8 = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY7_;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY8_()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[12];
  v18 = v1;
  v19 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v20 = v0[9];
  v7 = v0[5];
  v17 = v0[6];
  v8 = v0[2];
  v9 = *(v3 + 32);
  v9(v2, v0[15], v6);
  v9(v4, v2, v6);
  (*(v3 + 56))(v4, 0, 1, v6);
  _s11Observation12ObservationsV8IteratorV9terminate33_DF89E5A0D3A6524E6B622E937DD6C8FBLL8throwing2idxSgq_Sg_Sitq_YKF(v4, v18, v7, v19, v8);
  (*(v5 + 8))(v4, v20);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY9_()
{
  v1 = v0[20];
  v2 = v0[16];
  v18 = v1;
  v19 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v20 = v0[9];
  v6 = v0[8];
  v7 = v0[5];
  v17 = v0[6];
  v8 = v0[2];
  v9 = *(v4 + 32);
  v9(v2, v0[14], v6);
  v9(v3, v2, v6);
  (*(v4 + 56))(v3, 0, 1, v6);
  _s11Observation12ObservationsV8IteratorV9terminate33_DF89E5A0D3A6524E6B622E937DD6C8FBLL8throwing2idxSgq_Sg_Sitq_YKF(v3, v18, v7, v19, v8);
  (*(v5 + 8))(v3, v20);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFyyYaXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFyyYaXEfU_TQ0_;

  return static Observations.State.willChange(isolation:state:id:)(a4, a5, a6, a7, a8, v17, v18);
}

uint64_t _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFyyYaXEfU_TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance Observations<A, B>.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v7 = *(a2 + 24);
  v3[3] = v7;
  v8 = *(v7 - 8);
  v3[4] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[5] = v10;
  v11 = *(MEMORY[0x1E69E85D0] + 4);
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = protocol witness for AsyncIteratorProtocol.next() in conformance Observations<A, B>.Iterator;

  return MEMORY[0x1EEE6D8D8](a1, a2, a3, v10);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance Observations<A, B>.Iterator()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v7 = v2[3];
    v8 = *(v2[2] + 32);
    swift_allocError();
    (*(v6 + 32))(v9, v5, v7);
  }

  else
  {
    v11 = v2[5];
  }

  v10 = *(v4 + 8);

  return v10();
}

uint64_t _s11Observation12ObservationsV8IteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[5] = v13;
  v14 = swift_task_alloc();
  v5[6] = v14;
  *v14 = v5;
  v14[1] = _s11Observation12ObservationsV8IteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v13);
}

uint64_t _s11Observation12ObservationsV8IteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t Observations.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  return _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance Observations<A, B>@<X0>(uint64_t a1@<X8>)
{
  Observations.makeAsyncIterator()(a1);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);

  return _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  type metadata accessor for AnyKeyPath();
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x1E12DD420](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9, a2, a3);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys10AnyKeyPathCShySiGGMd, &_ss18_DictionaryStorageCys10AnyKeyPathCShySiGGMR);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      type metadata accessor for AnyKeyPath();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v10, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11Observation0C9RegistrarV5State33_5AE0855755CD62D4521FC18D42BC1E4BLLVACVGMd, &_ss18_DictionaryStorageCySi11Observation0C9RegistrarV5State33_5AE0855755CD62D4521FC18D42BC1E4BLLVACVGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *(v23 + 8);
      v38 = *v23;
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      if ((v37 & 1) == 0)
      {
        _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
      }

      result = MEMORY[0x1E12DD420](*(v8 + 40), v22);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v38;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      *(v17 + 24) = v26;
      ++*(v8 + 16);
      v5 = v36;
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11Observation0C8TrackingV5EntryVGMd, &_ss18_DictionaryStorageCySO11Observation0C8TrackingV5EntryVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v31 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x1E12DD420](*(v8 + 40), v21);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
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
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E12DD420](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
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

    if (__CocoaSet.member(for:)())
    {

      type metadata accessor for AnyKeyPath();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCs10AnyKeyPathC_Tt1g5(v7, result + 1);
    v18 = *(v17 + 16);
    if (*(v17 + 24) <= v18)
    {
      specialized _NativeSet.resize(capacity:)(v18 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v19, v17);

    *v3 = v17;
    goto LABEL_16;
  }

  type metadata accessor for AnyKeyPath();
  v9 = *(v6 + 40);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v21 = *(*(v6 + 48) + 8 * v12);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCs10AnyKeyPathC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys10AnyKeyPathCGMd, &_ss11_SetStorageCys10AnyKeyPathCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyKeyPath();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = MEMORY[0x1E12DD420](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys10AnyKeyPathCGMd, &_ss11_SetStorageCys10AnyKeyPathCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyKeyPath();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
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
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1E12DD420](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
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
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for AnyKeyPath();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys10AnyKeyPathCGMd, &_ss11_SetStorageCys10AnyKeyPathCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x1E12DD420](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys10AnyKeyPathCGMd, &_ss11_SetStorageCys10AnyKeyPathCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyKeyPath();

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AnyKeyPath();
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
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
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys10AnyKeyPathCShySiGGMd, &_ss18_DictionaryStorageCys10AnyKeyPathCShySiGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11Observation0C9RegistrarV5State33_5AE0855755CD62D4521FC18D42BC1E4BLLVACVGMd, &_ss18_DictionaryStorageCySi11Observation0C9RegistrarV5State33_5AE0855755CD62D4521FC18D42BC1E4BLLVACVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11Observation0C8TrackingV5EntryVGMd, &_ss18_DictionaryStorageCySO11Observation0C8TrackingV5EntryVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    result = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (result + 1) & v7;
      do
      {
        v10 = *(a2 + 48);
        v11 = (v10 + 8 * v6);
        result = MEMORY[0x1E12DD420](*(a2 + 40), *v11);
        v12 = result & v7;
        if (v3 >= v8)
        {
          if (v12 >= v8 && v3 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v3);
            if (v3 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
            }

            v16 = *(a2 + 56);
            v17 = (v16 + 32 * v3);
            v18 = (v16 + 32 * v6);
            if (v3 != v6 || v17 >= v18 + 2)
            {
              v9 = v18[1];
              *v17 = *v18;
              v17[1] = v9;
              v3 = v6;
            }
          }
        }

        else if (v12 >= v8 || v3 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    result = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (result + 1) & v7;
      type metadata accessor for AnyKeyPath();
      do
      {
        v9 = *(a2 + 40);
        v22 = *(*(a2 + 48) + 8 * v6);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v10 = result & v7;
        if (v3 >= v8)
        {
          if (v10 >= v8 && v3 >= v10)
          {
LABEL_16:
            v13 = *(a2 + 48);
            v14 = (v13 + 8 * v3);
            v15 = (v13 + 8 * v6);
            if (v3 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
            }

            v16 = *(a2 + 56);
            v17 = (v16 + 8 * v3);
            v18 = (v16 + 8 * v6);
            if (v3 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v3 = v6;
            }
          }
        }

        else if (v10 >= v8 || v3 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
      v24 = *v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 8 * result) = a5;
    v32 = v26[7] + 32 * result;
    *v32 = a1;
    *(v32 + 8) = a2;
    *(v32 + 16) = a3 & 1;
    *(v32 + 24) = a4;
    v33 = v26[2];
    v19 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v19)
    {
      v26[2] = v34;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7] + 32 * result;
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  *v27 = a1;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3 & 1;
  *(v27 + 24) = a4;
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E12DD420](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v13 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v12;
  *v1 = v13;
  return result;
}

uint64_t specialized Dictionary._Variant.remove(at:)(void *a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    *v4 = v10;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(*(v10 + 48) + 8 * a2);
    *a1 = *(*(v10 + 56) + 8 * a2);
    specialized _NativeDictionary._delete(at:)(a2, v10);
    *v4 = v10;
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x1E12DD420](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyys10AnyKeyPathCYbcGMd, &_ss23_ContiguousArrayStorageCyys10AnyKeyPathCYbcGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t specialized _ManagedCriticalState.init(_:)()
{
  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for _ManagedCriticalState.LockedBuffer();
    MEMORY[0x1EEE9AC00]();
    return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  }

  return result;
}

uint64_t specialized ObservationRegistrar.Context.willSet<A, B>(_:keyPath:)(uint64_t a1, uint64_t a2)
{
  _swift_observation_lock_lock((a2 + 40));
  v4 = *(a2 + 32);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = *(*(v4 + 56) + 8 * v5);

    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    while (v10)
    {
      v16 = v10;
LABEL_12:
      v10 = (v16 - 1) & v16;
      v18 = *(a2 + 24);
      if (*(v18 + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v7 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v16))))));
        if (v19)
        {
          v20 = *(v18 + 56) + 32 * result;
          if ((*(v20 + 16) & 1) == 0)
          {
            v21 = *v20;
            v22 = *(v20 + 8);
            v23 = swift_allocObject();
            *(v23 + 16) = v21;
            *(v23 + 24) = v22;
            v24 = v23;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
              v15 = result;
            }

            v26 = v15[2];
            v25 = v15[3];
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v15);
              v27 = v26 + 1;
              v15 = result;
            }

            v15[2] = v27;
            v28 = &v15[2 * v26];
            v28[4] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AnyKeyPath) -> ()partial apply;
            v28[5] = v24;
          }
        }
      }
    }

    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v17 >= v11)
      {

        goto LABEL_22;
      }

      v16 = *(v7 + 56 + 8 * v17);
      ++v14;
      if (v16)
      {
        v14 = v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_22:
    _swift_observation_lock_unlock((a2 + 40));
    v29 = v15[2];
    if (v29)
    {
      v30 = v15 + 5;
      do
      {
        v32 = *(v30 - 1);
        v31 = *v30;
        v33 = a1;

        v32(&v33);

        v30 += 2;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

uint64_t specialized ObservationRegistrar.Context.didSet<A, B>(_:keyPath:)(uint64_t a1, uint64_t a2)
{
  _swift_observation_lock_lock((a2 + 40));
  v4 = *(a2 + 32);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = *(*(v4 + 56) + 8 * v5);

    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    while (v10)
    {
      v16 = v10;
LABEL_12:
      v10 = (v16 - 1) & v16;
      v18 = *(a2 + 24);
      if (*(v18 + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v7 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v16))))));
        if (v19)
        {
          v20 = *(v18 + 56) + 32 * result;
          if (*(v20 + 16) == 1)
          {
            v21 = *v20;
            v22 = *(v20 + 8);
            v23 = swift_allocObject();
            *(v23 + 16) = v21;
            *(v23 + 24) = v22;
            v24 = v23;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
              v15 = result;
            }

            v26 = v15[2];
            v25 = v15[3];
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v15);
              v27 = v26 + 1;
              v15 = result;
            }

            v15[2] = v27;
            v28 = &v15[2 * v26];
            v28[4] = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AnyKeyPath) -> ();
            v28[5] = v24;
          }
        }
      }
    }

    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v17 >= v11)
      {

        goto LABEL_22;
      }

      v16 = *(v7 + 56 + 8 * v17);
      ++v14;
      if (v16)
      {
        v14 = v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_22:
    _swift_observation_lock_unlock((a2 + 40));
    v29 = v15[2];
    if (v29)
    {
      v30 = v15 + 5;
      do
      {
        v32 = *(v30 - 1);
        v31 = *v30;
        v33 = a1;

        v32(&v33);

        v30 += 2;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs10AnyKeyPathC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys10AnyKeyPathCGMd, &_ss11_SetStorageCys10AnyKeyPathCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1E12DD370](v5, v19);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    v9 = *(v3 + 40);
    type metadata accessor for AnyKeyPath();
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v6 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      while (1)
      {
        v20 = *(*(v3 + 48) + 8 * v11);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v6 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v7;
      v16 = *(v3 + 16);
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized ObservationRegistrar.willSet<A, B>(_:keyPath:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(*v3 + 16);

  a3(a1, v7, a2);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void specialized static ObservationTracking._installTracking(_:willSet:didSet:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11Observation0C8TrackingV2IdOGMd, &_ss18_DictionaryStorageCySO11Observation0C8TrackingV2IdOGMR);
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v5;
  v9 = v7;
  v10 = 0;
  v11 = v6 + 64;
  v45 = v6;
  v12 = 1 << *(v6 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v6 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = v7 + 64;
  v37 = v7;
  v38 = v8;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v43 = *(*(v45 + 48) + 8 * v19);
      v20 = (*(v45 + 56) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      if (a2)
      {
        lock = v22 + 10;
        v23 = swift_allocObject();
        v23[2] = v8;
        v23[3] = v45;
        v23[4] = a2;
        v23[5] = a3;

        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed ObservationTracking) -> ())?(a2);
        if (a4)
        {
          outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed ObservationTracking) -> ())?(a4);

          _swift_observation_lock_lock(lock);
          v41 = ObservationRegistrar.State.registerTracking(for:willSet:)(v21, partial apply for closure #4 in closure #1 in static ObservationTracking._installTracking(_:willSet:didSet:), v23);

          _swift_observation_lock_unlock(lock);
          v24 = swift_allocObject();
          v24[2] = v8;
          v24[3] = v45;
          v24[4] = a4;
          v24[5] = a5;
          v25 = v22 + 10;

          _swift_observation_lock_lock(lock);
          v26 = ObservationRegistrar.State.registerTracking(for:didSet:)(v21, partial apply for closure #2 in closure #1 in static ObservationTracking._installTracking(_:willSet:didSet:), v24);
          v27 = 2;
        }

        else
        {

          v25 = v22 + 10;
          _swift_observation_lock_lock(lock);
          v41 = ObservationRegistrar.State.registerTracking(for:willSet:)(v21, partial apply for closure #4 in closure #1 in static ObservationTracking._installTracking(_:willSet:didSet:), v23);
          v26 = 0;
          v27 = 0;
        }
      }

      else
      {
        if (!a4)
        {
          goto LABEL_27;
        }

        v28 = swift_allocObject();
        v28[2] = v8;
        v28[3] = v45;
        v28[4] = a4;
        v28[5] = a5;

        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed ObservationTracking) -> ())?(a4);

        v25 = v22 + 10;

        _swift_observation_lock_lock(v22 + 10);
        v41 = ObservationRegistrar.State.registerTracking(for:didSet:)(v21, partial apply for closure #4 in closure #1 in static ObservationTracking._installTracking(_:willSet:didSet:), v28);
        v26 = 0;
        v27 = 1;
      }

      _swift_observation_lock_unlock(v25);

      v9 = v37;
      *(v36 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v37[6] + 8 * v19) = v43;
      v29 = v37[7] + 24 * v19;
      *v29 = v41;
      *(v29 + 8) = v26;
      *(v29 + 16) = v27;
      v30 = v37[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v37[2] = v32;
      v8 = v38;
      v14 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v10 >= v15)
      {
        break;
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    _swift_observation_lock_lock((v8 + 40));
    if (*(v8 + 24))
    {
    }

    else
    {
      v33 = *(v8 + 16);
      *(v8 + 16) = v9;
    }

    _swift_observation_lock_unlock((v8 + 40));
  }
}

uint64_t specialized static ObservationTracking._installTracking(_:onChange:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;

  result = _swift_observation_lock_size();
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMd, &_s11Observation21_ManagedCriticalStateV12LockedBuffer33_5FBF5A2F6E23120A78D8E0DC60BDDA83LLCyAA0A8TrackingV0D0V_GMR);
    v7 = swift_allocObject();
    _swift_observation_lock_init((v7 + 40));
    *(v7 + 16) = MEMORY[0x1E69E7CC8];
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    v9[0] = v7;
    v9[1] = v5;
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = v7;
    v8[5] = v5;

    specialized static ObservationTracking._installTracking(_:willSet:didSet:)(v9, partial apply for closure #1 in static ObservationTracking._installTracking(_:onChange:), v8, 0, 0);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_11Observation0C8TrackingV2IdOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11Observation0C8TrackingV2IdOGMd, &_ss18_DictionaryStorageCySO11Observation0C8TrackingV2IdOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
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

unint64_t lazy protocol witness table accessor for type ObservationRegistrar and conformance ObservationRegistrar()
{
  result = lazy protocol witness table cache variable for type ObservationRegistrar and conformance ObservationRegistrar;
  if (!lazy protocol witness table cache variable for type ObservationRegistrar and conformance ObservationRegistrar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObservationRegistrar and conformance ObservationRegistrar);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *initializeBufferWithCopyOfBuffer for ObservationTracking._AccessList(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for ObservationTracking._AccessList(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for ObservationTracking._AccessList(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ObservationRegistrar(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ObservationRegistrar(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Observations(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);

  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return a1;
}

uint64_t *assignWithCopy for Observations(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = *a1;
  *a1 = *a2;

  v5 = v2[1];
  v6 = v2[2];
  LOBYTE(v2) = *(v2 + 24);
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(a1 + 24);
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 24) = v2;
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for Observations(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 24) = v5;
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
  return a1;
}

uint64_t getEnumTagSinglePayload for Observations(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for Observations(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata completion function for Observations.Iteration(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t destroy for Observations(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);

  return _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
}

uint64_t initializeWithCopy for Observations.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t *assignWithCopy for Observations.Iterator(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 24);
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
  v8 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 24);
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 24) = v7;
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for Observations.Iterator(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 24) = v5;
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t getEnumTagSinglePayload for Observations.Iterator(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Observations.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Observations.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for Observations.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for Observations.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for Observations.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for Observations.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ObservationTracking.Entry(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *initializeBufferWithCopyOfBuffer for ObservationTracking(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for ObservationTracking(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t *assignWithTake for ObservationTracking(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ObservationTracking(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ObservationTracking(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ObservationTracking.State(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];
}

uint64_t initializeBufferWithCopyOfBuffer for ObservationTracking.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t *assignWithCopy for ObservationTracking.State(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = a1[2];
  a1[2] = a2[2];

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for ObservationTracking.State(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = a1[2];
  a1[2] = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for ObservationTracking.State(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ObservationTracking.State(uint64_t result, int a2, int a3)
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

uint64_t destroy for ObservationRegistrar.State(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

void *initializeBufferWithCopyOfBuffer for ObservationRegistrar.State(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for ObservationRegistrar.State(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;

  return a1;
}

void *assignWithTake for ObservationRegistrar.State(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ObservationRegistrar.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ObservationRegistrar.State(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t partial apply for closure #1 in static Observations.State.cancel(_:id:)@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for Observations.State.Continuation();
  type metadata accessor for Dictionary();
  result = Dictionary.removeValue(forKey:)();
  if (v8 == 1)
  {
    result = Dictionary.subscript.setter();
  }

  *a1 = v8;
  return result;
}

void *partial apply for closure #1 in closure #1 in static Observations.State.willChange(isolation:state:id:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[6];
  v9 = *(a1 + 8);
  v13 = v2[5];
  v10 = type metadata accessor for Observations.State.Continuation();
  result = MEMORY[0x1E12DD1E0](&v14, &v13, v9, MEMORY[0x1E69E6530], v10, MEMORY[0x1E69E6540]);
  if (v14 == 1)
  {
    v12 = (a1 + 16);
    if (*(a1 + 16) == 1)
    {
      *a2 = v8;
    }

    else
    {
      v13 = v8;
      type metadata accessor for Dictionary();
      result = Dictionary.subscript.setter();
      *a2 = 0;
    }

    goto LABEL_7;
  }

  if (!v14)
  {
    *a2 = v8;
    v12 = (a1 + 16);
LABEL_7:
    *v12 = 0;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11Observation12ObservationsV8IteratorV9terminate33_DF89E5A0D3A6524E6B622E937DD6C8FBLL8throwing2idxSgq_Sg_Sitq_YKFAC5StateV12ContinuationOyxq___GSgAMyxq__GzXEfU_TA()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  type metadata accessor for Observations.State.Continuation();
  type metadata accessor for Dictionary();
  return Dictionary.removeValue(forKey:)();
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = v23 - v11;
  if (MEMORY[0x1E12DD240](a1, TupleTypeMetadata2))
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x1E12DD250](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v21 = v11;
LABEL_13:
    v23 = __clz(__rbit64(v9)) | (v21 << 6);
    v24 = *(a1 + 56);
    v48 = *(*(a1 + 48) + 8 * v23);
    v49 = *(v24 + 16 * v23);

    a2(&v46, &v48);

    v25 = v46;
    v45 = v47;
    v26 = *v50;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v33 = v50;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, a4 & 1);
      v34 = *v33;
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v28 = v35;
    }

    v9 &= v9 - 1;
    v37 = *v50;
    if (v32)
    {
      v12 = 16 * v28;
      v13 = (v37[7] + 16 * v28);
      v14 = *v13;
      v15 = v13[1];

      v17 = specialized Set.union<A>(_:)(v16, v15);

      v18 = (v37[7] + v12);
      v20 = *v18;
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v17;
    }

    else
    {
      v37[(v28 >> 6) + 8] |= 1 << v28;
      *(v37[6] + 8 * v28) = v25;
      *(v37[7] + 16 * v28) = v45;
      v38 = v37[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_25;
      }

      v37[2] = v40;
    }

    a4 = 1;
    v11 = v21;
  }

  v22 = v11;
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v10)
    {
      sub_1DF7226C0();
    }

    v9 = *(v6 + 8 * v21);
    ++v22;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void (*_s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZyyYbcyXEfu_TA())()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZyyYbcyXEfu_yyYbcfU0_TA;
}

uint64_t sub_1DF7222FC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void partial apply for closure #1 in static Observations.State.emitWillChange(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(a1 + 8);
  v9 = type metadata accessor for Observations.State.Continuation();
  if (!MEMORY[0x1E12DD1A0](v8, MEMORY[0x1E69E6530], v9, MEMORY[0x1E69E6540]))
  {
    *(a1 + 16) = 1;
  }

  *a2 = v8;
  type metadata accessor for Observations.State.Continuation();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
}

uint64_t _s11Observation12ObservationsV8IteratorV13trackEmission33_DF89E5A0D3A6524E6B622E937DD6C8FBLL9isolation5state4emitAC9IterationOyxq__GScA_pSgYi_AA21_ManagedCriticalStateVyAC0W0Vyxq__GGAC4EmitOyxq__Gtq_YKFZs6ResultOyAMq_GyXEfU_AMxXEfU_TA@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t *partial apply for closure #1 in static Observations.State.generation(_:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  *result = v2 + 1;
  return result;
}

uint64_t partial apply for closure #1 in _ManagedCriticalState.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  _swift_observation_lock_init((a1 + ((*(*a1 + 48) + 7) & 0x1FFFFFFF8)));
  return (*(*(*(v5 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v4);
}

uint64_t partial apply for closure #1 in generateAccessList<A>(_:)(uint64_t *a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = _swift_observation_tls_get();
  v6 = _swift_observation_tls_set(a1);
  v4(v6);
  v7 = *a1;
  if (*a1)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *v5;
    if (*v5)
    {
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v9;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v7, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v14);

      v11 = v14;

      v12 = *v5;
      *v5 = v11;
    }

    else
    {
      *v5 = v7;
    }
  }

  return _swift_observation_tls_set(v5);
}

uint64_t sub_1DF7226D8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 partial apply for closure #1 in static ObservationTracking._installTracking(_:onChange:)()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(v0 + 16))();
  ObservationTracking.cancel()();
  return result;
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed ObservationTracking) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #4 in closure #1 in static ObservationTracking._installTracking(_:willSet:didSet:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v7 = *(v1 + 16);
  _swift_observation_lock_lock((v7 + 40));
  v5 = *(v7 + 32);
  *(v7 + 32) = a1;

  _swift_observation_lock_unlock((v7 + 40));
  v8 = v7;
  return v4(&v8);
}

uint64_t _sxRi_zRi0_zlyShySiGIsegr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DF722864()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AnyKeyPath) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t getEnumTagSinglePayload for Observations.State.Continuation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Observations.State.Continuation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Observations.State.Continuation(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for Observations.State.Continuation(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ObservationTracking.Id(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObservationTracking.Id(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for ObservationRegistrar.State.Observation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for ObservationRegistrar.State.Observation(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
  v5 = a1[3];
}

uint64_t initializeWithCopy for ObservationRegistrar.State.Observation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = a2[3];

  return a1;
}

uint64_t *assignWithCopy for ObservationRegistrar.State.Observation(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOy_0();
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  *a1 = v4;
  a1[1] = v5;
  *(a1 + 16) = v6;
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
  v10 = a2[3];
  v11 = a1[3];
  a1[3] = v10;

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t *assignWithTake for ObservationRegistrar.State.Observation(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
  v8 = a1[3];
  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for ObservationRegistrar.State.Observation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ObservationRegistrar.State.Observation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Observations.Iteration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t destroy for Observations.Iteration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for Observations.Iteration(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for Observations.Iteration(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for Observations.Iteration(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for Observations.Iteration(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for Observations.Iteration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
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
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for Observations.Iteration(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t destroy for ObservationRegistrar.State.ObservationKind(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  return _s11Observation12ObservationsV4EmitOyxq__Gs8SendableRzs5ErrorR_r0_lWOe_0();
}

uint64_t initializeBufferWithCopyOfBuffer for Observations.Emit(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *assignWithCopy for Observations.Emit(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  *a1 = v7;
  a1[1] = v8;
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *assignWithTake for Observations.Emit(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for Observations.Emit(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Observations.Emit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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