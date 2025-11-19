BOOL @objc FIUIWorkoutActivityType.isGuided.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.isGuided.getter();

  return v2;
}

BOOL FIUIWorkoutActivityType.isGuided.getter()
{
  v1 = [v0 metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static HealthDataConstants.mediaTypeProperty.getter();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

    return 0;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v5, v9);

  if (swift_dynamicCast())
  {
    return MEMORY[0x20F2E52F0]() < 2u;
  }

  return 0;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  return sub_20AEC0318(a1, a2, a3) & 1;
}

{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x20F2E7A20](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

{
  return sub_20AEC0318(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, uint64_t a2)
{
  v15 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v14 = v7;
      closure #4 in closure #1 in CompoundActivityItemsDataSource.compoundDataSourceDidUpdate(withItems:section:)(&v14, a2, &v13);
      if (v2)
      {

        return v6;
      }

      if (v13)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v15;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

void closure #4 in closure #1 in CompoundActivityItemsDataSource.compoundDataSourceDidUpdate(withItems:section:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*(a2 + OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_standardActivityTypeProvider) activityTypeKeyForActivityType_];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  swift_beginAccess();
  v9 = specialized Dictionary._Variant.removeValue(forKey:)(v6, v8);
  swift_endAccess();
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.activityPicker);
  v11 = v9;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v20 = a3;
    v14 = swift_slowAlloc();
    v21[4] = v3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v14 = 136315394;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, v21);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v9;
    v18 = v11;
    _os_log_impl(&dword_20AEA4000, v12, v13, "Compound: compactMap, key: %s, item: %@", v14, 0x16u);
    outlined destroy of CompoundActivityItemsDataSourceCachedSync?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    v19 = v14;
    a3 = v20;
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  else
  {
  }

  *a3 = v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x20F2E7FD0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      swift_beginAccess();
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);

      String.hash(into:)();

      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t outlined destroy of CompoundActivityItemsDataSourceCachedSync?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = __CocoaSet.count.getter();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
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
    __CocoaSet.count.getter();
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
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [CompoundActivityPickerItem] and conformance [A], &_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CompoundActivityPickerItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorkoutBlock();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutChartDataElement] and conformance [A], &_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorkoutChartDataElement();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [HKWorkoutBuilderQuantity] and conformance [A], &_sSaySo24HKWorkoutBuilderQuantityCGMd, &_sSaySo24HKWorkoutBuilderQuantityCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24HKWorkoutBuilderQuantityCGMd, &_sSaySo24HKWorkoutBuilderQuantityCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for HKWorkoutBuilderQuantity, 0x277CCDC08);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorkoutStep();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [CyclingPowerZone] and conformance [A], &_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CyclingPowerZone();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [CLLocation] and conformance [A], &_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorkoutConfiguration();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GoalWorkoutConfiguration();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [RaceWorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore04RaceA13ConfigurationCGMd, &_sSay11WorkoutCore04RaceA13ConfigurationCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04RaceA13ConfigurationCGMd, &_sSay11WorkoutCore04RaceA13ConfigurationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RaceWorkoutConfiguration();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [HKWorkoutActivity] and conformance [A], &_sSaySo17HKWorkoutActivityCGMd, &_sSaySo17HKWorkoutActivityCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKWorkoutActivityCGMd, &_sSaySo17HKWorkoutActivityCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [NSPredicate] and conformance [A], &_sSaySo11NSPredicateCGMd, &_sSaySo11NSPredicateCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11NSPredicateCGMd, &_sSaySo11NSPredicateCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance [A], &_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ActivityTypeListItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [NLWorkoutAlertUnitAnnotatedString] and conformance [A], &_sSaySo33NLWorkoutAlertUnitAnnotatedStringCGMd, &_sSaySo33NLWorkoutAlertUnitAnnotatedStringCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo33NLWorkoutAlertUnitAnnotatedStringCGMd, &_sSaySo33NLWorkoutAlertUnitAnnotatedStringCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString, off_277D86CF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A], &_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for HKQuantitySample, 0x277CCD800);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [NLSessionActivitySegmentMarker] and conformance [A], &_sSaySo30NLSessionActivitySegmentMarkerCGMd, &_sSaySo30NLSessionActivitySegmentMarkerCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30NLSessionActivitySegmentMarkerCGMd, &_sSaySo30NLSessionActivitySegmentMarkerCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HKQuantitySample(0, &lazy cache variable for type metadata for NLSessionActivitySegmentMarker, off_277D86C68);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](&lazy protocol witness table cache variable for type [QueriedExternalProvider] and conformance [A], &_sSay11WorkoutCore23QueriedExternalProviderCGMd, &_sSay11WorkoutCore23QueriedExternalProviderCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore23QueriedExternalProviderCGMd, &_sSay11WorkoutCore23QueriedExternalProviderCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for QueriedExternalProvider();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for CompoundActivityPickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem()
{
  result = lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem;
  if (!lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem)
  {
    type metadata accessor for CompoundActivityPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem);
  }

  return result;
}

uint64_t ActivityPickerDataSource.dataSourceDidUpdate(with:section:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.activityPicker);
  swift_bridgeObjectRetain_n();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v13, v14))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_15;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  aBlock[0] = v16;
  *v15 = 136315394;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v17 = 0xE800000000000000;
      v18 = 0x646E756F706D6F63;
      goto LABEL_14;
    }

    if (a2 == 2)
    {
      v17 = 0xEA00000000007475;
      v18 = 0x6F6B726F57646461;
      goto LABEL_14;
    }

LABEL_20:
    swift_bridgeObjectRelease_n();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v17 = 0xE700000000000000;
      v18 = 0x646567616E616DLL;
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  v17 = 0xE900000000000064;
  v18 = 0x6574636964657270;
LABEL_14:
  v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, aBlock);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2048;
  v20 = *(a1 + 16);

  *(v15 + 14) = v20;

  _os_log_impl(&dword_20AEA4000, v13, v14, "dataSource didUpdate section=%s items=%ld", v15, 0x16u);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v16);
  MEMORY[0x20F2E9420](v16, -1, -1);
  MEMORY[0x20F2E9420](v15, -1, -1);

LABEL_15:
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v3;
  v21[4] = a1;
  v22 = objc_opt_self();

  if ([v22 isMainThread])
  {
    closure #1 in ActivityPickerDataSource.dataSourceDidUpdate(with:section:)(a2, v3, a1);
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_9(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for closure #1 in ActivityPickerDataSource.dataSourceDidUpdate(with:section:);
    *(v25 + 24) = v21;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_3;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_25;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v27 = v31;
    v28 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v27, v26);
    _Block_release(v26);

    (*(v33 + 8))(v27, v28);
    return (*(v30 + 8))(v11, v32);
  }
}

uint64_t sub_20AEC1480()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEC14C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void closure #1 in ActivityPickerDataSource.dataSourceDidUpdate(with:section:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      v56 = MEMORY[0x277D84F90];
      v5 = *(a3 + 16);
      v6 = a3 + 32;
LABEL_4:
      v7 = (v6 + 16 * v3);
      while (v5 != v3)
      {
        if (v3 >= v5)
        {
          __break(1u);
          goto LABEL_70;
        }

        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_73;
        }

        v10 = *v7;
        v7 += 2;
        v9 = v10;
        type metadata accessor for PredictedActivityPickerItem();
        ++v3;
        if (swift_dynamicCastClass())
        {
          MEMORY[0x20F2E6F30](v9);
          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v4 = v56;
          v3 = v8;
          goto LABEL_4;
        }
      }

      goto LABEL_42;
    }

    if (a1 == 1)
    {
      v20 = 0;
      v4 = MEMORY[0x277D84F90];
      v56 = MEMORY[0x277D84F90];
      v21 = *(a3 + 16);
      v22 = a3 + 32;
LABEL_24:
      v23 = (v22 + 16 * v20);
      while (v21 != v20)
      {
        if (v20 >= v21)
        {
          goto LABEL_71;
        }

        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_75;
        }

        v26 = *v23;
        v23 += 2;
        v25 = v26;
        type metadata accessor for ManagedConfigurationSourcePickerItem();
        ++v20;
        if (swift_dynamicCastClass())
        {
          MEMORY[0x20F2E6F30](v25);
          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v4 = v56;
          v20 = v24;
          goto LABEL_24;
        }
      }

      goto LABEL_42;
    }

LABEL_91:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (a1 == 2)
  {
    v12 = 0;
    v4 = MEMORY[0x277D84F90];
    v56 = MEMORY[0x277D84F90];
    v13 = *(a3 + 16);
    v14 = a3 + 32;
LABEL_14:
    v15 = (v14 + 16 * v12);
    while (v13 != v12)
    {
      if (v12 >= v13)
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_74;
      }

      v18 = *v15;
      v15 += 2;
      v17 = v18;
      type metadata accessor for ButtonActivityPickerItem();
      ++v12;
      if (swift_dynamicCastClass())
      {
        MEMORY[0x20F2E6F30](v17);
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v56;
        v12 = v16;
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (a1 != 3)
    {
      goto LABEL_91;
    }

    v28 = 0;
    v4 = MEMORY[0x277D84F90];
    v56 = MEMORY[0x277D84F90];
    v29 = *(a3 + 16);
    v30 = a3 + 32;
LABEL_34:
    v31 = (v30 + 16 * v28);
    while (v29 != v28)
    {
      if (v28 >= v29)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_76;
      }

      v34 = *v31;
      v31 += 2;
      v33 = v34;
      type metadata accessor for CompoundActivityPickerItem();
      ++v28;
      if (swift_dynamicCastClass())
      {
        MEMORY[0x20F2E6F30](v33);
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v56;
        v28 = v32;
        goto LABEL_34;
      }
    }
  }

LABEL_42:
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v4;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 >> 62)
  {
LABEL_77:
    v36 = __CocoaSet.count.getter();
  }

  else
  {
    v36 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v56 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v56 >> 62))
    {
      v39 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_49;
    }
  }

  v39 = __CocoaSet.count.getter();
LABEL_49:

  v40 = __OFADD__(v38, v39);
  v41 = v38 + v39;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v56 >> 62))
    {
      v42 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_52;
    }
  }

  v42 = __CocoaSet.count.getter();
LABEL_52:

  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
  }

  else if (one-time initialization token for activityPicker == -1)
  {
    goto LABEL_54;
  }

  swift_once();
LABEL_54:
  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static WOLog.activityPicker);
  swift_retain_n();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134219520;
    *(v47 + 4) = v43;
    *(v47 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v56 >> 62)
    {
      v48 = __CocoaSet.count.getter();
    }

    else
    {
      v48 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 14) = v48;

    *(v47 + 22) = 2048;
    v49 = ActivityPickerDataSource.guidedItems.getter();
    if (v49 >> 62)
    {
      v50 = __CocoaSet.count.getter();
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 24) = v50;

    *(v47 + 32) = 2048;
    v51 = ActivityPickerDataSource.standardItems.getter();
    if (v51 >> 62)
    {
      v52 = __CocoaSet.count.getter();
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 34) = v52;

    *(v47 + 42) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v56 >> 62)
    {
      v53 = __CocoaSet.count.getter();
    }

    else
    {
      v53 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 44) = v53;

    *(v47 + 52) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v56 >> 62)
    {
      v54 = __CocoaSet.count.getter();
    }

    else
    {
      v54 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 54) = v54;

    *(v47 + 62) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v56 >> 62)
    {
      v55 = __CocoaSet.count.getter();
    }

    else
    {
      v55 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 64) = v55;

    _os_log_impl(&dword_20AEA4000, v45, v46, "dataSource didUpdate total: %ld [compoundItems: %ld (guided: %ld, standard: %ld), addWorkoutItems: %ld, predictedItems: %ld, managedConfigurationSourceItems: %ld]", v47, 0x48u);
    MEMORY[0x20F2E9420](v47, -1, -1);
  }

  else
  {
  }
}

uint64_t ActivityPickerDataSource.guidedItems.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v11;
  v12 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_21:
    v1 = __CocoaSet.count.getter();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = v2;
    while ((v0 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x20F2E7A20](v4, v0);
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return result;
      }

      v7 = *(result + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = swift_unknownObjectRelease();
      if (v7 < 0)
      {
        goto LABEL_15;
      }

LABEL_9:
      v4 = v2;
      if (v2 == v1)
      {
        goto LABEL_23;
      }
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v2 = v4 + 1;
    v5 = *(*(v0 + 32 + 8 * v4) + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v9 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
LABEL_15:
    MEMORY[0x20F2E6F30](v9);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = v12;
  }

  while (v2 != v1);
LABEL_23:

  return v3;
}

uint64_t ActivityPickerDataSource.standardItems.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v11;
  v12 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_21:
    v1 = __CocoaSet.count.getter();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = v2;
    while ((v0 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x20F2E7A20](v4, v0);
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return result;
      }

      v7 = *(result + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = swift_unknownObjectRelease();
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_9:
      v4 = v2;
      if (v2 == v1)
      {
        goto LABEL_23;
      }
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v2 = v4 + 1;
    v5 = *(*(v0 + 32 + 8 * v4) + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }

    v9 = v5;
LABEL_15:
    MEMORY[0x20F2E6F30](v9);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = v12;
  }

  while (v2 != v1);
LABEL_23:

  return v3;
}

void MultiModalityWidgetDataProvider.compoundDataSourceDidUpdate(withItems:section:)(unint64_t a1, unint64_t a2)
{
  if (one-time initialization token for workoutWidget != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutWidget);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = *(a1 + 16);

      *(v7 + 12) = 2048;
      *(v7 + 14) = a2;
      _os_log_impl(&dword_20AEA4000, v5, v6, "[MultiModalityWidget] activity picker with %ld items, section: %lu", v7, 0x16u);
      MEMORY[0x20F2E9420](v7, -1, -1);

      if (!a2)
      {
        return;
      }
    }

    else
    {

      if (!a2)
      {
        return;
      }
    }

    if (a2 != 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v8 = 0;
    a2 = *(a1 + 16) >= 3uLL ? 3 : *(a1 + 16);
    v9 = a1 + 32;
    a1 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    v10 = a2 == 0;
    if (!a2)
    {
      break;
    }

    while (!v10)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_35;
      }

      v12 = *(v9 + 16 * v8);
      type metadata accessor for StandardActivityPickerItem();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        goto LABEL_12;
      }

      if (v11 == a2)
      {
        goto LABEL_31;
      }

      if (v11 >= a2)
      {
        break;
      }

      v8 += 2;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_35;
      }

      v14 = *(v9 + 16 * v11);
      type metadata accessor for StandardActivityPickerItem();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
        if (v8 == a2)
        {
          goto LABEL_31;
        }

        if (v8 >= a2)
        {
          break;
        }

        v11 += 2;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_35;
        }

        v16 = *(v9 + 16 * v8);
        type metadata accessor for StandardActivityPickerItem();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
LABEL_12:
          v8 = v11;
          goto LABEL_17;
        }

        if (v11 == a2)
        {
          goto LABEL_31;
        }

        if (v11 >= a2)
        {
          break;
        }

        v8 += 2;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_35;
        }

        v17 = *(v9 + 16 * v11);
        type metadata accessor for StandardActivityPickerItem();
        v13 = swift_dynamicCastClass();
      }

LABEL_17:
      v15 = *(v13 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
      MEMORY[0x20F2E6F30]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = v19;
      v10 = v8 >= a2;
      if (v8 == a2)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_31:
  MultiModalityWidgetDataProvider.saveModalities(modalities:)(a1);
}

uint64_t MultiModalityWidgetDataProvider.saveModalities(modalities:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v1[OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_savedModalities];

  v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo23FIUIWorkoutActivityTypeC_Tt1g5(a1, v17);

  if ((v18 & 1) == 0)
  {
    _sSo17OS_dispatch_queueCMaTm_19(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    (*(v13 + 104))(v16, *MEMORY[0x277D851A8], v12);
    v20 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = v2;
    aBlock[4] = partial apply for closure #1 in MultiModalityWidgetDataProvider.saveModalities(modalities:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_88;
    v22 = _Block_copy(aBlock);

    v23 = v2;
    static DispatchQoS.unspecified.getter();
    v27 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v7, v22);
    _Block_release(v22);

    (*(v26 + 8))(v7, v4);
    (*(v24 + 8))(v11, v25);
  }

  return result;
}

uint64_t sub_20AEC2A00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo23FIUIWorkoutActivityTypeC_Tt1g5(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for NSString(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F2E7A20](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x20F2E7A20](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

Swift::Void __swiftcall CompoundActivityItemsDataSource.updateObservers()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundObservables);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundObservables);
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    outlined init with copy of CompoundActivityItemsDataSourceObservable(*(v1 + 56) + 40 * (v9 | (v8 << 6)), v12);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v11 + 32))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v12);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for VoiceAssetsObserver()
{
  result = type metadata singleton initialization cache for VoiceAssetsObserver;
  if (!type metadata singleton initialization cache for VoiceAssetsObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoiceAssetsObserver()
{
  result = type metadata accessor for InferenceClient();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
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

uint64_t VoiceAssetsObserver.init(inferenceClient:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___hasFetchedAssets) = 0;
  *(v1 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___isObservingAssets) = 0;
  v3 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + v3) = v4;
  ObservationRegistrar.init()();
  v5 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_inferenceClient;
  v6 = type metadata accessor for InferenceClient();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t outlined destroy of DataLinkMirroredClientExpectation?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t closure #1 in MultiModalityWidgetDataProvider.saveModalities(modalities:)(unint64_t a1, char *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_33:
    v75 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v75 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = a2;
  if (v9)
  {
    v10 = 0;
    v74 = a1 & 0xC000000000000001;
    v71 = MEMORY[0x277D84F90];
    v72 = v9;
    v73 = a1;
    while (1)
    {
      v11 = v10;
      if (v74)
      {
        v12 = MEMORY[0x20F2E7A20](v10, a1);
      }

      else
      {
        if (v10 >= *(v75 + 16))
        {
          goto LABEL_32;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      ++v10;
      a1 = MEMORY[0x277D837D0];
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v13 = v12;
      v77 = [v13 identifier];
      v76 = [v13 auxiliaryTypeIdentifier];
      v14 = [v13 isIndoor];
      v15 = [v13 metadata];
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v16 + 16))
      {
        v17 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        aBlock = 0;
        v19 = [v17 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&aBlock];

        v20 = aBlock;
        if (!v19)
        {
          v62 = v20;
          v63 = _convertNSErrorToError(_:)();

          swift_willThrow();
          aBlock = 0;
          v80 = 0xE000000000000000;
          _StringGuts.grow(_:)(41);
          MEMORY[0x20F2E6D80](0xD000000000000027, 0x800000020B455A50);
          v78 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          _print_unlocked<A, B>(_:_:)();
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {

        v21 = 0;
        v23 = 0xF000000000000000;
      }

      v24 = [v13 isPartOfMultiSport];

      v25 = type metadata accessor for JSONEncoder();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      aBlock = v77;
      v80 = v76;
      LOBYTE(v81) = v14;
      v82 = v21;
      v83 = v23;
      LOBYTE(v84) = v24;
      lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
      v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v30 = v29;
      v31 = v28;

      outlined consume of Data?(v21, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1, v71);
      }

      v34 = *(v71 + 2);
      v33 = *(v71 + 3);
      a2 = (v34 + 1);
      if (v34 >= v33 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v71);
        v36 = v30;
        v71 = v39;
        v35 = v31;
      }

      else
      {
        v35 = v31;
        v36 = v30;
      }

      v37 = v71;
      *(v71 + 2) = a2;
      v38 = &v37[16 * v34];
      *(v38 + 4) = v35;
      *(v38 + 5) = v36;
      if (v10 == v72)
      {
        goto LABEL_23;
      }
    }
  }

  v71 = MEMORY[0x277D84F90];
LABEL_23:
  v40 = v64;
  if (one-time initialization token for workoutWidget != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static WOLog.workoutWidget);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    v46 = _sSo17OS_dispatch_queueCMaTm_19(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    v47 = MEMORY[0x20F2E6F70](a1, v46);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &aBlock);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_20AEA4000, v42, v43, "[MultiModalityWidget] saving top three modalities: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_9(v45);
    MEMORY[0x20F2E9420](v45, -1, -1);
    MEMORY[0x20F2E9420](v44, -1, -1);
  }

  v50 = *&v40[OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_userDefaults];
  if (v50)
  {
    v51 = Array._bridgeToObjectiveC()().super.isa;

    v52 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B46D8D0);
    [v50 setObject:v51 forKey:v52];
  }

  else
  {
  }

  _sSo17OS_dispatch_queueCMaTm_19(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v53 = static OS_dispatch_queue.main.getter();
  v54 = swift_allocObject();
  *(v54 + 16) = v40;
  *(v54 + 24) = a1;
  v83 = partial apply for closure #2 in closure #1 in MultiModalityWidgetDataProvider.saveModalities(modalities:);
  v84 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed () -> ();
  v82 = &block_descriptor_11_2;
  v55 = _Block_copy(&aBlock);

  v56 = v40;

  v57 = v65;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v58 = v67;
  v59 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v57, v58, v55);
  _Block_release(v55);

  (*(v69 + 8))(v58, v59);
  result = (*(v66 + 8))(v57, v68);
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20AEC3AC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id static WorkoutCoreInjector.shared.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

WONPSDomainAccessor __swiftcall WorkoutCoreInjector.inject()()
{
  v0 = static WorkoutCoreInjector.shared.getter(&one-time initialization token for npsDomainAccessor, &static WorkoutCoreInjector.npsDomainAccessor);
  result._domainAccessor = v1;
  result.super.isa = v0;
  return result;
}

uint64_t dispatch thunk of WorkoutCoreInjector.inject()()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x50))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

id one-time initialization function for npsDomainAccessor()
{
  result = [objc_allocWithZone(WONPSDomainAccessor) init];
  static WorkoutCoreInjector.npsDomainAccessor = result;
  return result;
}

uint64_t type metadata accessor for QuickWorkoutSwitchProvider()
{
  result = type metadata singleton initialization cache for QuickWorkoutSwitchProvider;
  if (!type metadata singleton initialization cache for QuickWorkoutSwitchProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for QuickWorkoutSwitchProvider()
{
  result = type metadata accessor for ObservationRegistrar();
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

id QuickWorkoutSwitchProvider.init(quickWorkoutSwitch:)(char a1)
{
  ObservationRegistrar.init()();
  v3 = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers] = v3;
  v1[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for QuickWorkoutSwitchProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

id MediaPlaybackController.init()()
{
  v1 = v0;
  v2 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v7 = static MediaPlaybackStore.sharedInstance;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 112) = v7;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 143) = 0;
  *(v1 + 176) = 0x20000;
  *(v1 + 184) = 0;
  v8 = type metadata accessor for MediaPlaybackController();
  v17.receiver = v1;
  v17.super_class = v8;

  v9 = objc_msgSendSuper2(&v17, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  if (one-time initialization token for AnnouncerWillStart != -1)
  {
    swift_once();
  }

  [v12 addObserver:v11 selector:? name:? object:?];

  v13 = [v10 defaultCenter];
  v14 = one-time initialization token for AnnouncerDidStop;
  v15 = v11;
  if (v14 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v15 selector:sel_handleAnnouncerDidStop_ name:static NSNotificationName.AnnouncerDidStop object:0];

  (*(v3 + 104))(v6, *MEMORY[0x277D2AE20], v2);
  static MusicDataRequest.preferredExecutionMethod.setter();

  return v15;
}

void *one-time initialization function for sharedInstance()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v0 = static WorkoutCoreInjector.npsDomainAccessor;
  type metadata accessor for MediaPlaybackStore();
  v1 = swift_allocObject();
  result = specialized MediaPlaybackStore.init(domainAccessor:)(v0, v1);
  static MediaPlaybackStore.sharedInstance = result;
  return result;
}

void *specialized MediaPlaybackStore.init(domainAccessor:)(void *a1, void *a2)
{
  swift_defaultActor_initialize();
  a2[15] = 0xD00000000000001DLL;
  a2[16] = 0x800000020B46B250;
  a2[17] = 0xD000000000000019;
  a2[18] = 0x800000020B46B270;
  a2[19] = 0;
  a2[20] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a2[22] = 0xD00000000000002ELL;
  a2[23] = 0x800000020B46B290;
  a2[14] = a1;
  v4 = a2[17];
  v5 = a2[18];
  v6 = a1;

  v7 = MEMORY[0x20F2E6C00](v4, v5);

  v8 = [v6 valueForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    _sSo8NSStringCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v9 = swift_dynamicCast();
    v10 = v14;
    if (!v9)
    {
      v10 = 0;
    }
  }

  else
  {
    _sSo8NSObjectCSgWOhTm_17(v17, &_sypSgMd, &_sypSgMR);
    v10 = 0;
  }

  a2[21] = v10;
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  if (one-time initialization token for workoutMediaPreferencesChangedNotificationName != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v11, a2, @objc closure #1 in MediaPlaybackStore.observeWorkoutMediaPreferencesChangedNotification(), static MediaPlaybackStore.workoutMediaPreferencesChangedNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v12, a2, @objc closure #1 in MediaPlaybackStore.observeDomainAccessorRefresh(), @"WONPSDomainAccessorDidRefreshNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return a2;
}

uint64_t one-time initialization function for AnnouncerWillStart()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B4666A0);
  static NSNotificationName.AnnouncerWillStart = result;
  return result;
}

uint64_t one-time initialization function for AnnouncerDidStop()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B466680);
  static NSNotificationName.AnnouncerDidStop = result;
  return result;
}

void type metadata completion function for HealthDatabaseAccessAssertionManager()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

char *HealthDatabaseAccessAssertionManager.init(workoutController:)(void *a1)
{
  v2 = specialized HealthDatabaseAccessAssertionManager.init(workoutController:)(a1);

  return v2;
}

char *specialized HealthDatabaseAccessAssertionManager.init(workoutController:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v13 = static WorkoutCoreInjector.healthStore;
  *(v2 + 3) = static WorkoutCoreInjector.healthStore;
  swift_unknownObjectWeakInit();
  v14 = v13;
  *(v2 + 5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So32HKDatabaseAccessibilityAssertionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v15 = OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  type metadata accessor for UnlockedDeviceMonitor();
  v17 = swift_allocObject();
  *(v17 + 16) = -1;
  *(v17 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 40) = 0;
  v18 = MKBGetDeviceLockState();
  if (v18)
  {
    v19 = v18 == 3;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  swift_beginAccess();
  *(v17 + 40) = v20;
  *(v2 + 2) = v17;
  swift_unknownObjectWeakAssign();
  v21 = *(v2 + 2);
  swift_beginAccess();
  *(v21 + 32) = &protocol witness table for HealthDatabaseAccessAssertionManager;
  swift_unknownObjectWeakAssign();
  type metadata accessor for OS_dispatch_queue();
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v2;
  aBlock[4] = partial apply for closure #1 in HealthDatabaseAccessAssertionManager.init(workoutController:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24_4;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v24);
  _Block_release(v24);

  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v28);
  return v2;
}

uint64_t sub_20AEC4AF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_22_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall NLWorkoutRecoveryController.recoverFromCrashIfNeeded()()
{
  if ([v0 hintSuggestsRecoveryNeeded])
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded();
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_86;
    v2 = _Block_copy(aBlock);

    [v0 attemptRecoveryWithCompletion_];
    _Block_release(v2);
  }

  else
  {
    if (one-time initialization token for recovery != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.recovery);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v4, "No crash recovery hint, not attempting crash recovery.", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }
  }
}

uint64_t sub_20AEC4DBC()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void closure #1 in TrackRunningCoordinator.fetchPreferredUnit()(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1)
    {
      v14 = a1;
      v15 = [v14 integerValue];
      if (!v15)
      {
        v37 = v14;
        v16 = 0;
        goto LABEL_7;
      }

      if (v15 == 1)
      {
        v37 = v14;
        v16 = 1;
LABEL_7:
        type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v36 = static OS_dispatch_queue.main.getter();
        v17 = swift_allocObject();
        *(v17 + 16) = v13;
        *(v17 + 24) = v16;
        aBlock[4] = partial apply for closure #1 in closure #1 in TrackRunningCoordinator.fetchPreferredUnit();
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_61_1;
        v18 = _Block_copy(aBlock);
        v19 = v13;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v20 = v36;
        MEMORY[0x20F2E7580](0, v11, v6, v18);

        _Block_release(v18);
        (*(v3 + 8))(v6, v2);
        (*(v8 + 8))(v11, v7);
        return;
      }
    }

    if ([*(&v13->isa + OBJC_IVAR___WOCoreTrackRunningCoordinator_unitManager) userDistanceWalkingRunningUnit] == 2)
    {
      if (one-time initialization token for trackRunning != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static WOLog.trackRunning);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_20AEA4000, v22, v23, "No preferred unit for track running, global walkingRunning unit set to kilometers, auto-storing as meters.", v24, 2u);
        MEMORY[0x20F2E9420](v24, -1, -1);
      }

      v40.super.super.super.isa = [objc_opt_self() meters];
      isa = v40.super.super.super.isa;
      TrackRunningCoordinator.storePreferredUnit(_:)(v40);
    }

    else
    {
      if (one-time initialization token for trackRunning != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static WOLog.trackRunning);
      isa = v13;
      v13 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v30 = v39;
        v31 = [v39 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, aBlock);

        *(v28 + 4) = v35;
        _os_log_impl(&dword_20AEA4000, v13, v27, "No preferred unit for track running, using default value %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x20F2E9420](v29, -1, -1);
        MEMORY[0x20F2E9420](v28, -1, -1);
      }
    }
  }
}

uint64_t sub_20AEC53F0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t type metadata accessor for TrackRunningCoordinator()
{
  result = type metadata singleton initialization cache for TrackRunningCoordinator;
  if (!type metadata singleton initialization cache for TrackRunningCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in WorkoutDevicesProvider.setupAirPodsSubscription()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = v1;
      v28 = specialized static SmartRoutingDeviceSymbolNameProvider.symbolName(forProductID:)([v4 productID]);
      v6 = v5;
      v7 = [v4 identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = [v4 name];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v16 = [objc_opt_self() bundleForClass_];
        v17 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B45F680);
        v18 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
        v11 = [v16 localizedStringForKey:v17 value:0 table:v18];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v19;
      }

      v20 = [v4 model];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = 0x7073646F70726961;
      if (v6)
      {
        v25 = v28;
      }

      v30.id._countAndFlagsBits = v27;
      v30.id._object = v9;
      v26 = 0xEA00000000006F72;
      if (v6)
      {
        v26 = v6;
      }

      v30.name._countAndFlagsBits = v12;
      v30.name._object = v14;
      v30.type = WorkoutCore_WorkoutDeviceType_smartRoutingHeadphones;
      v30.systemImage._countAndFlagsBits = v25;
      v30.systemImage._object = v26;
      v30.isTestDevice = 0;
      v30.productModel.value._countAndFlagsBits = v22;
      v30.productModel.value._object = v24;
      v29 = v30;
      WorkoutDevicesProvider.addDevice(_:)(&v29);

      outlined destroy of WorkoutDevice(&v30);
    }

    else
    {
      LOBYTE(v30.id._countAndFlagsBits) = 1;
      WorkoutDevicesProvider.removeDevices(deviceType:shouldRemoveTestDevices:)(&v30, 0);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_6(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_sSo21HKWorkoutSessionStateVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL _sSo21NLWorkoutPausedReasonVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *_sSo21CLAuthorizationStatusVSYSCSY8rawValuexSg03RawD0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t _sSo24HKQuantityTypeIdentifieraSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_20AEC5FDC(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = FakeableMetric.wrappedValue.getter();
}

double sub_20AEC6020(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

uint64_t sub_20AEC603C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEC607C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC60C8()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC6120()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEC6308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20AEC63B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AEC6458(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20AEC6504(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AEC65A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AEC6604(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return ReducedActivityTypesProvider.reducedActivityTypes.setter(v4);
}

uint64_t sub_20AEC68A8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEC6900(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEC6A14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20AEC6A5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC6A94@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v5 = a1 + *(result + 24);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AEC6AE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v5 = a2 + *(result + 24);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AEC6B1C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v5 = a1 + *(result + 28);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AEC6B68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AEC6BA4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_20AEC6C50(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AEC6CF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20AEC6D00()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_20AEC6D3C@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_20AEC6D98(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_20AEC6DF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20AEC6E54(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_20AEC6EB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AEC6F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEC6F74(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEC6FC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC7000()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC7048()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC7080(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20AEC7090()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC70D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC7110()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC7178()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC71B8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AEC72D8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20AEC748C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC74C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return ZonesAccumulator.elapsedTimes.setter(v4);
}

uint64_t sub_20AEC758C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEC75E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEC7620()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEC76EC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEC77C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC77F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC7838()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC7870()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC78B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEC7908(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEC798C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a2);
}

uint64_t sub_20AEC7A14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s11WorkoutCore12ZoneProtocol_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20AEC7A6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEC7AAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC7CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20AEC7DF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20AEC805C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = IntervalWorkout.warmupStep.getter();
  *a2 = result;
  return result;
}

uint64_t sub_20AEC80A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = IntervalWorkout.cooldownStep.getter();
  *a2 = result;
  return result;
}

uint64_t sub_20AEC80F0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(*a1);
  return WorkoutVoiceAvailabilityProvider.availabilityState.setter(v2);
}

uint64_t sub_20AEC81E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC8254()
{
  v1 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v64 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v65 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = (v0 + v3);
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    goto LABEL_43;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v23 = *v8;

      v24 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
LABEL_42:
      v50 = *(v24 + 20);
      v51 = type metadata accessor for UnknownStorage();
      (*(*(v51 - 8) + 8))(&v8[v50], v51);
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_43;
      }

      v17 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
      if ((*(*(v17 - 8) + 48))(v0 + v3, 1, v17))
      {
        goto LABEL_34;
      }

      v18 = swift_getEnumCaseMultiPayload();
      switch(v18)
      {
        case 3:
          v37 = *(v8 + 1);

          v19 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
          v20 = 28;
          break;
        case 2:
          v19 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
          v20 = 20;
          break;
        case 1:
          v19 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
          v20 = 24;
          break;
        default:
LABEL_34:
          v24 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
          goto LABEL_42;
      }

      v38 = *(v19 + v20);
      v39 = type metadata accessor for UnknownStorage();
      (*(*(v39 - 8) + 8))(&v8[v38], v39);
      goto LABEL_34;
    }

    v32 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
    if ((*(*(v32 - 8) + 48))(v0 + v3, 1, v32))
    {
      goto LABEL_41;
    }

    v33 = swift_getEnumCaseMultiPayload();
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
        v46 = *(started + 28);
        v47 = type metadata accessor for UnknownStorage();
        v60 = *(*(v47 - 8) + 8);
        v63 = v47;
        v60(&v8[v46]);
        v35 = *(started + 32);
LABEL_39:
        v48 = &v8[v35];
        v49 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
        if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
        {
          outlined consume of Data._Representation(*(v48 + 2), *(v48 + 3));
          (v60)(&v48[*(v49 + 24)], v63);
        }

        goto LABEL_41;
      }

      if (v33 != 2)
      {
LABEL_41:
        v24 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
        goto LABEL_42;
      }

      v36 = *(type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0) + 20);
    }

    else
    {
      switch(v33)
      {
        case 3:
          v36 = *(type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0) + 24);
          break;
        case 4:
          v40 = *(v8 + 1);

          v41 = *(v8 + 3);

          v42 = *(v8 + 5);

          v43 = *(v8 + 6);

          v36 = *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
          break;
        case 5:
          v34 = type metadata accessor for UnknownStorage();
          v60 = *(*(v34 - 8) + 8);
          v63 = v34;
          v60((v0 + v3));
          v35 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
          goto LABEL_39;
        default:
          goto LABEL_41;
      }
    }

    v44 = type metadata accessor for UnknownStorage();
    (*(*(v44 - 8) + 8))(&v8[v36], v44);
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = type metadata accessor for UnknownStorage();
      v57 = *(*(v25 - 8) + 8);
      v59 = v25;
      v57(v0 + v3);
      v62 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
      v26 = &v8[*(v62 + 20)];
      v27 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
      if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
      {
        v28 = *(v26 + 2);

        (v57)(&v26[*(v27 + 28)], v59);
      }

      v29 = &v8[*(v62 + 24)];
      v30 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
      if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
      {
        (v57)(v29, v59);
        v31 = *&v29[*(v30 + 20)];
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v11 = *v8;

      v12 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
      v13 = *(v12 + 20);
      v56 = type metadata accessor for UnknownStorage();
      v58 = (*(v56 - 8) + 8);
      v61 = *v58;
      (*v58)(&v8[v13], v56);
      v14 = &v8[*(v12 + 24)];
      v15 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
      if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
      {
        v61(v14, v56);
        v16 = *&v14[*(v15 + 20)];
      }
    }
  }

  else
  {
    v21 = type metadata accessor for UnknownStorage();
    (*(*(v21 - 8) + 8))(v0 + v3, v21);
    v22 = *&v8[*(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)];
  }

LABEL_43:
  v52 = (v3 + v64 + v6) & ~v6;
  v53 = *(v1 + 20);
  v54 = type metadata accessor for UnknownStorage();
  (*(*(v54 - 8) + 8))(&v8[v53], v54);
  (*(v5 + 8))(v0 + v52, v4);

  return MEMORY[0x2821FE8E8](v0, v52 + v65, v2 | v6 | 7);
}

uint64_t sub_20AEC8A0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC8A44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEC8B10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC8B54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEC8C24()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEC8C64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC8CA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEC8CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20AEC8D90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AEC8F50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEC8FA8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AEC8FFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AEC9068()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC90A0()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC90F0@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  v5 = a1 + *(result + 28);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AEC913C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AEC9178@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  v5 = a1 + *(result + 32);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AEC91C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AEC9200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEC9278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEC92F4(char a1)
{
  if (!a1)
  {
    return 0x73656E6F7ALL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x656C6174537369;
}

uint64_t sub_20AEC934C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = specialized LiveZones.zones.getter();
}

uint64_t sub_20AEC9388(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return LiveZones.zones.setter(v4);
}

uint64_t sub_20AEC93CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = LiveZones.currentZoneIndex.getter();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_20AEC9440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = LiveZones.isStale.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20AEC94AC()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEC94E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEC9540@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v5 = a1 + *(result + 28);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AEC958C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AEC95C8@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v5 = a1 + *(result + 32);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AEC9614(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AEC9650(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_20AEC96FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AEC97A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEC9818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEC98CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AEC991C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  return swift_unknownObjectWeakAssign();
}

double sub_20AEC9978@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

uint64_t sub_20AEC99C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_20AEC9A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20AEC9B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AEC9BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20AEC9CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20AECA1E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECA21C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AECA26C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AECA2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20AECA3F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_20AECA4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AECA574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AECA5FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECA810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AECA868(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AECA914@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AECAA58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AECAAB0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AECAB50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AECAC50()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECAC90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20AECACEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AECAD90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECADF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECAE34()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20AECAE94()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AECAEDC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AECAF1C()
{
  v1 = (type metadata accessor for DataLinkMirroredHostExpectation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AECB004()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20AECB03C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AECB08C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AECB0E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AECB134(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AECB18C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECB1C8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AECB200()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AECB240()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECB280()
{
  v1 = (type metadata accessor for DataLinkMirroredHostExpectation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AECB368()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECB5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20AECB6C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_20AECB7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20AECB8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20AECB9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AECBA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AECBAF8@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static AppleExertionScale.numberOfValues;
  return result;
}

uint64_t sub_20AECBB44(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static AppleExertionScale.numberOfValues = v1;
  return result;
}

double sub_20AECBB8C@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&static AppleExertionScale.range;
  *a1 = static AppleExertionScale.range;
  return result;
}

uint64_t sub_20AECBBD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_beginAccess();
  *&static AppleExertionScale.range = v1;
  *(&static AppleExertionScale.range + 1) = v2;
  return result;
}

uint64_t sub_20AECBC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20AECBC70(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_20AECBCF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AECBD50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AECBDA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_20AECBE04@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20AECBE5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t _s11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOs0F3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_20AECBFDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t _s11WorkoutCore06Apple_a1_B22_MirroredClientCommandO21InternalSwiftProtobuf4EnumAadEP8rawValuexSgSi_tcfCTW_0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 100)
  {
    v3 = 1;
  }

  else
  {
    v2 = result;
    v3 = 0;
  }

  if (result < 2)
  {
    v2 = result;
  }

  *a2 = v2;
  if (result >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _s11WorkoutCore06Apple_a1_B22_MirroredClientCommandO21InternalSwiftProtobuf4EnumAadEP8rawValueSivgTW_0()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_20B4316A0[result];
  }

  return result;
}

unint64_t *_s11WorkoutCore06Apple_a1_B22_MirroredClientCommandOSYAASY8rawValuexSg03RawH0Qz_tcfCTW_0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = 2;
  if (*result == 100)
  {
    v4 = 1;
  }

  else
  {
    v3 = *result;
    v4 = 0;
  }

  v5 = v2 >= 2;
  if (v2 >= 2)
  {
    v2 = v3;
  }

  *a2 = v2;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  *(a2 + 8) = v6;
  *(a2 + 9) = 0;
  return result;
}

void _s11WorkoutCore06Apple_a1_B22_MirroredClientCommandOSYAASY8rawValue03RawH0QzvgTW_0(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_20B4316A0[v2];
  }

  *a1 = v2;
}

BOOL _s11WorkoutCore06Apple_a1_B22_MirroredClientCommandOSQAASQ2eeoiySbx_xtFZTW_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_20B4316A0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_20B4316A0[v3];
  }

  return v2 == v3;
}

uint64_t _s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t _s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t _s11WorkoutCore06Apple_a1_B28_MirroredHostProtocolVersionOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B28_MirroredHostProtocolVersionOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s11WorkoutCore06Apple_a1_B28_MirroredHostProtocolVersionOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B28_MirroredHostProtocolVersionOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_20AECC5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20AECC688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AECC734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_20AECC864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20AECC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20AECCA3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AECCAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20AECCB8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AECCC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20AECCD2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20AECCE4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECCE8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_20AECCF38(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  HKLiveWorkoutBuilder.defaultRestingHeartRate.setter(v2);
}

void sub_20AECCF6C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter(&v3);
}

uint64_t sub_20AECD100()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECD138()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECD180()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECD1B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECD204()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AECD23C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20AECD2E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AECD3BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AECD510@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AECD75C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = _sIeg_ytIegr_TRTA_1;
  a2[1] = v5;
}

uint64_t sub_20AECD7CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo12MSSuggestionCGSgs5NeverOGMd, &_sScCySaySo12MSSuggestionCGSgs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_20AECD92C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AECD97C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECD9B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECD9EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void _s11WorkoutCore10RaceFilterOs12IdentifiableAAsADP2id2IDQzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = 1953718604;
  if (!*v1)
  {
    v2 = 0x6C616E6F73726550;
  }

  v3 = 0xED00007473654220;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_20AECDACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = RaceWorkoutConfiguration.lastWorkoutStartingPoint.getter();
  *a2 = result;
  return result;
}

void sub_20AECDAF8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  RaceWorkoutConfiguration.lastWorkoutStartingPoint.setter(v2);
}

id sub_20AECDB38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AECDD04()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20AECDD54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AECDDF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AECDE50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _sSaySo12CLRoutePointCGIegg_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20AECDED8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECDF34()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECDF6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECDFA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20AECE000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AECE064()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECE0A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a2);
}

uint64_t sub_20AECE100@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AECE158(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AECE204()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECE244()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECE27C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECE2F0()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECE334@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AECE390()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECE3C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_20AECE574(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  MediaPlaybackConfigurationItem.mediaSuggestion.setter(v2);
}

uint64_t sub_20AECE5A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AECE5E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistFilter.id.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AECE62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20AECE6D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AECE790@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = (a1 + *(result + 28));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AECE7D8(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_20AECE81C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_20AECE8C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AECE96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20AECEA6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_20AECEC74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECF434()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECF46C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AECF960()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AECF998()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AECFA18@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static MetricSlotProvider.standardMetricSlots;
  return result;
}

uint64_t sub_20AECFA64(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static MetricSlotProvider.standardMetricSlots = v1;
  return result;
}

uint64_t sub_20AECFAAC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static MetricSlotProvider.standardMetricsAllowed;
  return result;
}

uint64_t sub_20AECFAF8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static MetricSlotProvider.standardMetricsAllowed = v1;
  return result;
}

uint64_t sub_20AECFB40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AECFB88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_20AECFC4C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  WorkoutStatePublisher.activityType.setter(v2);
}

uint64_t sub_20AED01C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20AED026C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AED0310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20AED0468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFs01_E6BufferVy11WorkoutCore0H5BlockCG_Tg5_0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(v2, 0);

    MEMORY[0x20F2E79F0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_20AED0828()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AED08EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AED0948(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AED09AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED0A04(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED0A58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED0A90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED0AE8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED0B28()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED0B80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED0BB8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm_6(v0 + 7);
  v5 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_20AED0C18()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_20AED0EB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED0FEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AED104C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED1148()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20AED11B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED126C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED12C4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED1318@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED1370(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED13C4()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED13FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED145C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20AED14C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED1530()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20AED1598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED1604(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 4094)
  {
    v4 = a1[1];
    v5 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1 | (v4 >> 52) & 0x700 | (32 * (v4 & 7));
    v6 = 4096 - (((v4 >> 52) >> 11) | (2 * v5));
    if (v5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

unint64_t *sub_20AED16D0(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 4094)
  {
    v6 = (-a2 >> 1) & 0x7FF | ((-a2 & 0xFFF) << 11);
    *result = ((v6 << 59) | (4 * v6)) & 0xF000000000000007;
    result[1] = ((v6 >> 5) | (v6 << 52)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_20AED1790()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED17C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20AED1820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED188C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a2);
}

uint64_t sub_20AED18EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED1924()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED196C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20AED19B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_20AED1AB0()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED1AE8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20AED1B48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AED1BA8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED1BE8()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_20AED1C20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED1C58()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20AED1CB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMd, &_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AED1D5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED1D94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED1E08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED1E50()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED1E98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED1ED0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED1F08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED1F48()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20AED1F80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AED1FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20AED2014(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_20AED209C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20AED20E4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_20AED2128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_20AED2178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20AED21C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  return result;
}

uint64_t sub_20AED221C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

id sub_20AED226C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

uint64_t sub_20AED22D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED2318()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED2358()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED2390()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED23C8()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED2400()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AED2448()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED2684()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED26BC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_20AED27B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED27E8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_20AED28DC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AED291C()
{
  v1 = (type metadata accessor for Apple_Workout_Core_SequenceReset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3);

  v7 = v1[7];
  v8 = type metadata accessor for UnknownStorage();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AED2A0C()
{
  v1 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v11 = *(v6 + 8);

        v9 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
        v10 = 28;
        break;
      case 2:
        v9 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
        v10 = 20;
        break;
      case 1:
        v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
        v10 = 24;
        break;
      default:
        goto LABEL_9;
    }

    v12 = *(v9 + v10);
    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

LABEL_9:
  v14 = *(v1 + 20);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AED2BD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED2C20(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 4094)
  {
    v4 = a1[1];
    v5 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1 | (v4 >> 52) & 0x700 | (32 * (v4 & 7));
    v6 = 4096 - (((v4 >> 52) >> 11) | (2 * v5));
    if (v5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

unint64_t *sub_20AED2CEC(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 4094)
  {
    v6 = (-a2 >> 1) & 0x7FF | ((-a2 & 0xFFF) << 11);
    *result = ((v6 << 59) | (4 * v6)) & 0xF000000000000007;
    result[1] = ((v6 >> 5) | (v6 << 52)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_20AED2E5C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED2EC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  return outlined init with copy of Playback?(v3 + v4, a2);
}

uint64_t sub_20AED2F8C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED3118()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AED31F8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AED32C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_20AED34E8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20AED3540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WODownhillRun_workoutTime;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED35EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AED3690()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED36CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_20AED370C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_20AED3754(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

double sub_20AED37A0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_20AED37E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_20AED38BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AED391C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED3974(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AED39C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

double sub_20AED3A34@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20AED3A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED3AE0@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v5 = a1 + *(result + 28);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED3B2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AED3B68@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v5 = a1 + *(result + 32);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED3BB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AED3BF0@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v5 = a1 + *(result + 36);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED3C3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AED3C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 40);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_20AED3DB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20AED3EDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _sSbIeg_Iegyg_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20AED3EFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED3F34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED3F6C()
{
  v1 = (type metadata accessor for DataLinkMirroredClientExpectation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AED4054()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = *(v7 + 24);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  v10 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10 + 16);

  return MEMORY[0x2821FE8E8](v0, v10 + 24, v2 | 7);
}

uint64_t sub_20AED41A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = *(v7 + 24);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_20AED4300()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = *(v7 + 24);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10 + 8);

  v13 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v2 | 7);
}

uint64_t sub_20AED4468()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for MirroredClientPrecisionStart() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v10 - 8) + 48))(v0 + v3, 1, v10))
  {
    v11 = *(v10 + 24);
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  v13 = (v3 + v4 + v6) & ~v6;
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v0 + v13, v15);
  v16 = *(v0 + v14 + 8);

  return MEMORY[0x2821FE8E8](v0, v14 + 16, v2 | v6 | 7);
}

uint64_t sub_20AED4654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AED46A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

id sub_20AED46FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;
  return v4;
}

uint64_t sub_20AED4764()
{
  v1 = *(type metadata accessor for MirroredClientPrecisionStart() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3, v9);
  v11 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v11 - 8) + 48))(v0 + v7, 1, v11))
  {
    v10(v0 + v7 + *(v11 + 24), v9);
  }

  v12 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12);

  v15 = *(v0 + v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v2 | v6 | 7);
}

uint64_t sub_20AED493C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = *(v6 + 24);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v9);

  v12 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_20AED4A98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = *(v5 + 24);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  v11 = *(v0 + v9 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v2 | 7);
}

uint64_t sub_20AED4BEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for DataLinkMirroredClientExpectation();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = *(v5 + 24);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  v11 = *(v0 + v9 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v2 | 7);
}

uint64_t sub_20AED4D40()
{
  v1 = (type metadata accessor for DataLinkMirroredClientExpectation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AED4E28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED4E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20AED4F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 40);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_20AED514C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_20AED51AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED5218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20AED5274(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AED52D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AED532C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AED5390@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED53E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AED5454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED5538(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20AED5550()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED5588()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED55C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED55FC()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED5634()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _s11WorkoutCore06Apple_a1_B21_NotificationUnitTypeOSYAASY8rawValue03RawH0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Workout_Core_PublisherKey.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20AED5A44@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v5 = a1 + *(result + 32);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED5A90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AED5AD4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v5 = a1 + *(result + 28);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED5B20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t _s11WorkoutCore06Apple_a1_B8_CommandOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B8_CommandOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s11WorkoutCore06Apple_a1_B8_CommandOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B8_CommandOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_20AED5BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20AED5CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20AED5DFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20AED5F2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20AED605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AED60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AED6150(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20AED61FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AED62A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20AED63F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}