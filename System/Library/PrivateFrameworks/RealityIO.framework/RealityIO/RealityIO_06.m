uint64_t closure #1 in RIOPxrVtValueRef.asInt32Array.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = closure #1 in RIOPxrVtValueRef.asInt32Array.getter(a1, MEMORY[0x277D00E90], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt64Array.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = closure #1 in RIOPxrVtValueRef.asInt64Array.getter(a1, MEMORY[0x277D00EA0], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asUIntArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      UInt32 = RIOPxrVtValueGetUInt32();

      if (UInt32)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[8 * v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asUInt8Array.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      UInt8 = RIOPxrVtValueGetUInt8();

      if (UInt8)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    v8[v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt32Array.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(id, void *)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v24[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_24:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_5:
  v22 = a3;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v23 = v12;
    v13 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26670F670](v13, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      LODWORD(v24[0]) = 0;
      a3 = a2(v14, v24);

      if (a3)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        v12 = v23;
        goto LABEL_25;
      }
    }

    a3 = LODWORD(v24[0]);
    v16 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = v22(0, *(v23 + 16) + 1, 1, v23);
    }

    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    v19 = v16;
    if (v18 >= v17 >> 1)
    {
      v19 = v22(v17 > 1, v18 + 1, 1, v16);
    }

    *(v19 + 16) = v18 + 1;
    v12 = v19;
    *(v19 + 4 * v18 + 32) = a3;
  }

  while (v11 != v10);
LABEL_25:

  *a4 = v12;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt64Array.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(id, void *)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v24[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_24:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_5:
  v22 = a3;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v23 = v12;
    v13 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26670F670](v13, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v24[0] = 0;
      a3 = a2(v14, v24);

      if (a3)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        v12 = v23;
        goto LABEL_25;
      }
    }

    v16 = v23;
    a3 = v24[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = v22(0, *(v23 + 16) + 1, 1, v23);
    }

    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    v19 = v16;
    if (v18 >= v17 >> 1)
    {
      v19 = v22(v17 > 1, v18 + 1, 1, v16);
    }

    *(v19 + 16) = v18 + 1;
    v12 = v19;
    *(v19 + 8 * v18 + 32) = a3;
  }

  while (v11 != v10);
LABEL_25:

  *a4 = v12;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt2Array.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Int2 = RIOPxrVtValueGetInt2();

      if (Int2)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[8 * v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asInt3Array.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(id, __int128 *)@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    *&v24 = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_24:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_5:
  v21 = a3;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v23 = v12;
    v13 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26670F670](v13, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v24 = 0uLL;
      a3 = a2(v14, &v24);

      if (a3)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        v12 = v23;
        goto LABEL_25;
      }
    }

    v22 = v24;
    v16 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = v21(0, *(v23 + 16) + 1, 1, v23);
    }

    a3 = *(v16 + 16);
    v17 = *(v16 + 24);
    v18 = v16;
    if (a3 >= v17 >> 1)
    {
      v18 = v21(v17 > 1, a3 + 1, 1, v16);
    }

    *(v18 + 16) = a3 + 1;
    v12 = v18;
    *(v18 + 16 * a3 + 32) = v22;
  }

  while (v11 != v10);
LABEL_25:

  *a4 = v12;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalfArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Float = RIOPxrVtValueGetFloat();

      if (Float)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[4 * v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalf2Array.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_25:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_5:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26670F670](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (RIOPxrVtValueGetHalf2())
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_26;
      }
    }

    v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v13 + 16) = 2;
    *(v13 + 36) = 0;
    *(v13 + 32) = 0;

    if (*(v13 + 16) < 2uLL)
    {
      __break(1u);
    }

    *(v13 + 36) = 0;
    v18 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
    }

    v9[2] = v15 + 1;
    v9[v15 + 4] = v13;
    v3 = v18;
  }

  while (v8 != v7);
LABEL_26:

  *a2 = v9;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asTexCoord2hArray.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v4 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26670F670](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (!RIOPxrVtValueGetHalf2())
      {
        __break(1u);
      }

      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v11 + 16) = 2;
      *(v11 + 32) = 0;
      v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v12[2] = 4;
      v12[4] = 0;
      v12[5] = 0;
      v13 = *(v11 + 16);
      if (!v13)
      {
        goto LABEL_23;
      }

      *(v12 + 8) = *(v11 + 32);
      if (v13 == 1)
      {
        goto LABEL_24;
      }

      v14 = v12;
      v15 = *(v11 + 36);

      if (v14[2] < 2uLL)
      {
        goto LABEL_25;
      }

      *(v14 + 9) = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v7);
      }

      v7[2] = v17 + 1;
      v7[v17 + 4] = v14;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_28;
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
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_28:

  *a2 = v7;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalf3Array.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_25:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_5:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26670F670](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (RIOPxrVtValueGetHalf3())
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_26;
      }
    }

    v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v13 + 16) = 4;
    *(v13 + 32) = 0uLL;

    if (*(v13 + 16) < 3uLL)
    {
      __break(1u);
    }

    *(v13 + 40) = 0;
    v18 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
    }

    v9[2] = v15 + 1;
    v9[v15 + 4] = v13;
    v3 = v18;
  }

  while (v8 != v7);
LABEL_26:

  *a2 = v9;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor3hArray.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v24[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v20 = a2;
    v8 = 0;
    v22 = v6 & 0xC000000000000001;
    a2 = v6 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x277D84F90];
    v10 = v6;
    while (1)
    {
      if (v22)
      {
        v11 = MEMORY[0x26670F670](v8, v6);
      }

      else
      {
        if (v8 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      *v24 = 0uLL;
      if (!RIOPxrVtValueGetHalf3())
      {
        __break(1u);
      }

      v23 = *v24;
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v13[2] = 4;
      v13[5] = 0;
      v13[4] = v23;
      *(v13 + 10) = DWORD2(v23);
      _s9RealityIO9TexCoord3VyACyxGs5SIMD3VyxGcfCAA4HalfV_Tt1B5Tm(v13, v24);

      v14 = v24[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = v20(0, *(v9 + 16) + 1, 1, v9);
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        v9 = v20(v15 > 1, v16 + 1, 1, v9);
      }

      *(v9 + 16) = v16 + 1;
      *(v9 + 8 * v16 + 32) = v14;
      ++v8;
      v17 = v6 == i;
      v6 = v10;
      if (v17)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_23:

  *a3 = v9;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asHalf4Array.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_25:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_5:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26670F670](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (RIOPxrVtValueGetHalf4())
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_26;
      }
    }

    v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v13 + 16) = 4;
    *(v13 + 32) = 0uLL;
    *(v13 + 40) = 0;

    if (*(v13 + 16) < 4uLL)
    {
      __break(1u);
    }

    *(v13 + 44) = 0 >> 96;
    v18 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
    }

    v9[2] = v15 + 1;
    v9[v15 + 4] = v13;
    v3 = v18;
  }

  while (v8 != v7);
LABEL_26:

  *a2 = v9;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor4hArray.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v22[0] = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v20 = v4 & 0xC000000000000001;
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    v9 = v4;
    while (1)
    {
      if (v20)
      {
        v10 = MEMORY[0x26670F670](v6, v4);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v4 + 8 * v6 + 32);
      }

      v11 = v10;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      *v22 = 0uLL;
      if (!RIOPxrVtValueGetHalf4())
      {
        __break(1u);
      }

      v21 = *v22;
      v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v12 + 16) = 4;
      *(v12 + 32) = v21;
      _s9RealityIO6Color4VyACyxGs5SIMD4VyxGcfCAA4HalfV_Tt1B5(v12, v22);

      v13 = v22[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
      }

      v8[2] = v15 + 1;
      v8[v15 + 4] = v13;
      ++v6;
      v16 = v4 == i;
      v4 = v9;
      if (v16)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_23:

  *a2 = v8;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asFloatArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Float = RIOPxrVtValueGetFloat();

      if (Float)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[4 * v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asFloat2Array.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Float2 = RIOPxrVtValueGetFloat2();

      if (Float2)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[8 * v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asTexCoord2fArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26670F670](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetFloat2() & 1) == 0)
      {
        __break(1u);
      }

      *&v11 = 0;
      v17 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      *&v7[16 * v13 + 32] = v17;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v7;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor3fArray.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v17 = a2;
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      a2 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetFloat3() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = v17(0, *(v9 + 16) + 1, 1, v9);
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v9 = v17(v12 > 1, v13 + 1, 1, v9);
      }

      v14 = 0uLL;
      HIDWORD(v14) = 0;
      *(v9 + 16) = v13 + 1;
      *(v9 + 16 * v13 + 32) = v14;
      ++v8;
      if (a2 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_22:

  *a3 = v9;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asFloat3Array.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(id, __int128 *)@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    *&v24 = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_24:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_5:
  v21 = a3;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v23 = v12;
    v13 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26670F670](v13, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v24 = 0uLL;
      a3 = a2(v14, &v24);

      if (a3)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        v12 = v23;
        goto LABEL_25;
      }
    }

    v22 = v24;
    v16 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = v21(0, *(v23 + 16) + 1, 1, v23);
    }

    a3 = *(v16 + 16);
    v17 = *(v16 + 24);
    v18 = v16;
    if (a3 >= v17 >> 1)
    {
      v18 = v21(v17 > 1, a3 + 1, 1, v16);
    }

    *(v18 + 16) = a3 + 1;
    v12 = v18;
    *(v18 + 16 * a3 + 32) = v22;
  }

  while (v11 != v10);
LABEL_25:

  *a4 = v12;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor4fArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26670F670](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetFloat4() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      *&v7[16 * v12 + 32] = 0uLL;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v7;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asDoubleArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Double = RIOPxrVtValueGetDouble();

      if (Double)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[8 * v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asDouble2Array.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Double2 = RIOPxrVtValueGetDouble2();

      if (Double2)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[16 * v14 + 32] = 0uLL;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asTexCoord2dArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26670F670](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetDouble2() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v13 = &v7[32 * v12];
      *(v13 + 6) = 0;
      *(v13 + 7) = 0;
      *(v13 + 2) = 0uLL;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v7;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor3dArray.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v17 = a2;
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      a2 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetDouble3() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = v17(0, *(v9 + 16) + 1, 1, v9);
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v9 = v17(v12 > 1, v13 + 1, 1, v9);
      }

      *(v9 + 16) = v13 + 1;
      v14 = v9 + 32 * v13;
      *(v14 + 32) = 0u;
      *(v14 + 48) = 0uLL;
      ++v8;
      if (a2 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_22:

  *a3 = v9;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asDouble3Array.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(id, __int128 *)@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    *&v26 = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_24:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_5:
  v22 = a3;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v25 = v12;
    v13 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26670F670](v13, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v26 = 0u;
      v27 = 0u;
      a3 = a2(v14, &v26);

      if (a3)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        v12 = v25;
        goto LABEL_25;
      }
    }

    v23 = v27;
    v24 = v26;
    v16 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = v22(0, *(v25 + 16) + 1, 1, v25);
    }

    a3 = *(v16 + 16);
    v17 = *(v16 + 24);
    v18 = v16;
    if (a3 >= v17 >> 1)
    {
      v18 = v22(v17 > 1, a3 + 1, 1, v16);
    }

    *(v18 + 16) = a3 + 1;
    v12 = v18;
    v19 = v18 + 32 * a3;
    *(v19 + 32) = v24;
    *(v19 + 48) = v23;
  }

  while (v11 != v10);
LABEL_25:

  *a4 = v12;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor4dArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26670F670](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetDouble4() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v13 = &v7[32 * v12];
      *(v13 + 2) = 0u;
      *(v13 + 3) = 0u;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v7;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asQuatfArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Quatf = RIOPxrVtValueGetQuatf();

      if (Quatf)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[16 * v14 + 32] = 0uLL;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asQuatdArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v18 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Quatd = RIOPxrVtValueGetQuatd();

      if (Quatd)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    v15 = &v8[32 * v14];
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
  }

  while (v7 != v6);
LABEL_25:

  *v18 = v8;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asMatrix2dArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v18 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Matrix2d = RIOPxrVtValueGetMatrix2d();

      if (Matrix2d)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    v15 = &v8[32 * v14];
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
  }

  while (v7 != v6);
LABEL_25:

  *v18 = v8;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asMatrix3dArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v18 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Matrix3d = RIOPxrVtValueGetMatrix3d();

      if (Matrix3d)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    v15 = &v8[96 * v14];
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
    *(v15 + 4) = 0u;
    *(v15 + 5) = 0u;
    *(v15 + 6) = 0u;
    *(v15 + 7) = 0u;
  }

  while (v7 != v6);
LABEL_25:

  *v18 = v8;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asMatrix4dArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v18 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Matrix4d = RIOPxrVtValueGetMatrix4d();

      if (Matrix4d)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    v15 = &v8[128 * v14];
    *(v15 + 4) = 0u;
    *(v15 + 5) = 0u;
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
    *(v15 + 8) = 0u;
    *(v15 + 9) = 0u;
    *(v15 + 6) = 0u;
    *(v15 + 7) = 0u;
  }

  while (v7 != v6);
LABEL_25:

  *v18 = v8;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asTokenArray.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, void (*a3)(_BOOL8, unint64_t, uint64_t)@<X3>, unint64_t *a4@<X8>)
{
  v7 = *a1;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    a2(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    v10 = v9;
    if (!(v9 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_13:

      v13 = MEMORY[0x277D84F90];
LABEL_19:
      *a4 = v13;
      return result;
    }
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = (a3)(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = v9;
    if ((v10 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v11; ++i)
      {
        v15 = MEMORY[0x26670F670](i, v10);
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          v24 = v15;
          a3(v16 > 1, v17 + 1, 1);
          v15 = v24;
        }

        *(v13 + 16) = v17 + 1;
        *(v13 + 8 * v17 + 32) = v15;
      }
    }

    else
    {
      v25 = a3;
      v18 = 32;
      do
      {
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        v21 = *(v10 + v18);
        if (v20 >= v19 >> 1)
        {
          v22 = v19 > 1;
          v23 = v21;
          v25(v22, v20 + 1, 1);
          v21 = v23;
        }

        *(v9 + 16) = v20 + 1;
        *(v9 + 8 * v20 + 32) = v21;
        v18 += 8;
        --v11;
      }

      while (v11);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t RIOPxrVtValueRef.asDictionary.getter()
{
  v0 = RIOPxrVtValueCopyDictionary();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for RIOPxrTfTokenRef(0);
      type metadata accessor for RIOPxrVtValueRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return 0;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v6 & 1);
    v18 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for RIOPxrTfTokenRef(0);
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 8 * v11) = v9;
  *(v23[7] + 8 * v11) = v10;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x26670F080](0xD00000000000001BLL, 0x8000000261994A30);
    type metadata accessor for RIOPxrTfTokenRef(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v23[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v27 = *v6;
      v28 = *a3;
      v9 = *(v6 - 1);
      v10 = v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v34 = *a3;
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v9;
      *(v36[7] + 8 * v29) = v10;
      v37 = v36[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v38;
      v6 += 2;
      if (v4 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void specialized static Int.getValue3Opt(from:time:)(uint64_t a1@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 0uLL;
  if (v2)
  {
    v4 = v2;
    Int3 = RIOPxrVtValueGetInt3();

    v6 = Int3 == 0;
    v3 = 0uLL;
  }

  else
  {
    v6 = 1;
  }

  *a1 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  v7 = *MEMORY[0x277D85DE8];
}

void specialized static Int.getValue4Opt(from:time:)(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 0uLL;
  if (v2)
  {
    v4 = v2;
    Int4 = RIOPxrVtValueGetInt4();

    if (Int4)
    {
      v6 = 0;
      v3 = 0uLL;
      *&v7 = 0;
      *(&v7 + 1) = 0 >> 96;
      v8 = v7;
    }

    else
    {
      v6 = 1;
      v8 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v8 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v8;
  *(a1 + 32) = v6;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t specialized static Int.getValue2Opt(from:time:)()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetInt2();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t specialized static Frame4D.getValueArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyMatrix4dArray();
    if (v2)
    {
      v52 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asMatrix4dArray.getter(&v52, &v51);

      v4 = v51;
      v5 = *(v51 + 2);
      if (v5)
      {
        v52 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = 0;
        v7 = v52;
        do
        {
          v8 = 0;
          v9 = &v4[128 * v6 + 32];
          v11 = *v9;
          v10 = *(v9 + 1);
          v13 = *(v9 + 2);
          v12 = *(v9 + 3);
          v15 = *(v9 + 4);
          v14 = *(v9 + 5);
          v17 = *(v9 + 6);
          v16 = *(v9 + 7);
          v18 = 0uLL;
          v19 = 0uLL;
          v20 = 0uLL;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          v24 = 0uLL;
          v25 = 0uLL;
          do
          {
            v27 = v8 >> 2;
            v28 = v15;
            v29 = v14;
            if (v8 >> 2 != 2)
            {
              v28 = v13;
              v29 = v12;
              if (v27 != 1)
              {
                v28 = v11;
                v29 = v10;
                if (v27)
                {
                  v28 = v17;
                  v29 = v16;
                  if ((v8 & 0x7FFFFFFFFFFFFFFCLL) != 0xC)
                  {
                    __break(1u);
                    return result;
                  }
                }
              }
            }

            v50[0] = v28;
            v50[1] = v29;
            v26 = *(v50 + (v8 & 3));
            v42 = v18;
            v43 = v19;
            v44 = v20;
            v45 = v21;
            v46 = v22;
            v47 = v23;
            v48 = v24;
            v49 = v25;
            *(&v42 + (v8 & 0xF)) = v26;
            v24 = v48;
            v25 = v49;
            v22 = v46;
            v23 = v47;
            v20 = v44;
            v21 = v45;
            ++v8;
            v18 = v42;
            v19 = v43;
          }

          while (v8 != 16);
          v52 = v7;
          v31 = *(v7 + 16);
          v30 = *(v7 + 24);
          if (v31 >= v30 >> 1)
          {
            v40 = v48;
            v41 = v49;
            v38 = v46;
            v39 = v47;
            v36 = v44;
            v37 = v45;
            v34 = v43;
            v35 = v42;
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
            v19 = v34;
            v18 = v35;
            v20 = v36;
            v21 = v37;
            v22 = v38;
            v23 = v39;
            v24 = v40;
            v25 = v41;
            v7 = v52;
          }

          ++v6;
          *(v7 + 16) = v31 + 1;
          v32 = (v7 + (v31 << 7));
          v32[2] = v18;
          v32[3] = v19;
          v32[4] = v20;
          v32[5] = v21;
          v32[6] = v22;
          v32[7] = v23;
          v32[8] = v24;
          v32[9] = v25;
        }

        while (v6 != v5);
        v33 = v7;

        return v33;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static simd_float2x2.getValueArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyMatrix2dArray();
    if (v2)
    {
      v19 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asMatrix2dArray.getter(&v19, &v18);

      v4 = v18;
      v5 = *(v18 + 2);
      if (v5)
      {
        v19 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = v19;
        v7 = *(v19 + 16);
        v8 = 16 * v7;
        v9 = (v4 + 48);
        do
        {
          v10 = v9[-1];
          v11 = *v9;
          v19 = v6;
          v12 = *(v6 + 24);
          v13 = v7 + 1;
          if (v7 >= v12 >> 1)
          {
            v16 = v11;
            v17 = v10;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v7 + 1, 1);
            v11 = v16;
            v10 = v17;
            v6 = v19;
          }

          *(v6 + 16) = v13;
          v14 = (v6 + v8);
          v14[4] = vcvt_f32_f64(v10);
          v14[5] = vcvt_f32_f64(v11);
          v8 += 16;
          v9 += 2;
          v7 = v13;
          --v5;
        }

        while (v5);
        v15 = v6;

        return v15;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static simd_float3x3.getValueArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyMatrix3dArray();
    if (v2)
    {
      v33 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asMatrix3dArray.getter(&v33, &v32);

      v4 = v32;
      v5 = *(v32 + 2);
      if (v5)
      {
        v33 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = v33;
        v7 = *(v33 + 16);
        v8 = 48 * v7;
        v9 = (v4 + 64);
        do
        {
          v10 = v9[-2];
          v11 = v9[-1];
          v13 = *v9;
          v12 = v9[1];
          v15 = v9[2];
          v14 = v9[3];
          v33 = v6;
          v16 = *(v6 + 24);
          v17 = v7 + 1;
          if (v7 >= v16 >> 1)
          {
            v30 = v15;
            v31 = v14.f64[0];
            v28 = v13;
            v29 = v12.f64[0];
            v26 = v10;
            v27 = v11.f64[0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v7 + 1, 1);
            v10 = v26;
            v11.f64[0] = v27;
            v13 = v28;
            v12.f64[0] = v29;
            v15 = v30;
            v14.f64[0] = v31;
            v6 = v33;
          }

          *&v18 = vcvt_f32_f64(v10);
          *&v19 = v11.f64[0];
          *(&v18 + 1) = v19;
          *&v20 = vcvt_f32_f64(v13);
          *&v21 = v12.f64[0];
          *(&v20 + 1) = v21;
          *&v22 = vcvt_f32_f64(v15);
          *&v23 = v14.f64[0];
          *(&v22 + 1) = v23;
          *(v6 + 16) = v17;
          v24 = (v6 + v8);
          v24[2] = v18;
          v24[3] = v20;
          v24[4] = v22;
          v8 += 48;
          v9 += 6;
          v7 = v17;
          --v5;
        }

        while (v5);
        v25 = v6;

        return v25;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static simd_float4x4.getValueArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyMatrix4dArray();
    if (v2)
    {
      v31 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asMatrix4dArray.getter(&v31, &v30);

      v4 = v30;
      v5 = *(v30 + 2);
      if (v5)
      {
        v31 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = v31;
        v7 = *(v31 + 16);
        v8 = (v7 << 6) + 80;
        v9 = (v4 + 64);
        do
        {
          v10 = v9[-2];
          v11 = v9[-1];
          v13 = *v9;
          v12 = v9[1];
          v15 = v9[2];
          v14 = v9[3];
          v17 = v9[4];
          v16 = v9[5];
          v31 = v6;
          v18 = *(v6 + 24);
          v19 = v7 + 1;
          if (v7 >= v18 >> 1)
          {
            v29 = v16;
            v27 = v12;
            v28 = v14;
            v25 = v11;
            v26 = v17;
            v23 = v13;
            v24 = v15;
            v22 = v10;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v7 + 1, 1);
            v10 = v22;
            v13 = v23;
            v15 = v24;
            v11 = v25;
            v17 = v26;
            v12 = v27;
            v14 = v28;
            v16 = v29;
            v6 = v31;
          }

          *(v6 + 16) = v19;
          v20 = (v6 + v8);
          v20[-3] = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
          v20[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v12);
          v20[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v14);
          *v20 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v16);
          v8 += 64;
          v9 += 8;
          v7 = v19;
          --v5;
        }

        while (v5);
        v21 = v6;

        return v21;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static Int8.getValueArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyInt32Array();
    if (v2)
    {
      v13 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asInt32Array.getter(&v13, MEMORY[0x277D00E90], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v12);

      v4 = v12;
      v5 = *(v12 + 16);
      if (v5)
      {
        v13 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = v13;
        v7 = *(v13 + 16);
        v8 = 32;
        do
        {
          v9 = *(v4 + v8);
          v13 = v6;
          v10 = *(v6 + 24);
          if (v7 >= v10 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
            v6 = v13;
          }

          *(v6 + 16) = v7 + 1;
          *(v6 + v7 + 32) = v9;
          v8 += 4;
          ++v7;
          --v5;
        }

        while (v5);
        v11 = v6;

        return v11;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static Int.getValue2ArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyInt2Array();
    if (v2)
    {
      v14 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asInt2Array.getter(&v14, &v13);

      v4 = v13;
      v5 = *(v13 + 2);
      if (v5)
      {
        v14 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = v14;
        v7 = *(v14 + 16);
        v8 = 32;
        do
        {
          v9 = *&v4[v8];
          v14 = v6;
          v10 = *(v6 + 24);
          if (v7 >= v10 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
            v6 = v14;
          }

          *&v11 = v9;
          *(&v11 + 1) = SHIDWORD(v9);
          *(v6 + 16) = v7 + 1;
          *(v6 + 16 * v7 + 32) = v11;
          v8 += 8;
          ++v7;
          --v5;
        }

        while (v5);
        v12 = v6;

        return v12;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static Int.getValue3ArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyInt3Array();
    if (v2)
    {
      v16 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asInt3Array.getter(&v16, MEMORY[0x277D00E88], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v15);

      v4 = v15;
      v5 = *(v15 + 16);
      if (v5)
      {
        v16 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = v16;
        v7 = *(v16 + 16) + 1;
        v8 = 32;
        do
        {
          v9 = *(v4 + v8);
          v16 = v6;
          v10 = *(v6 + 24);
          if (v7 - 1 >= v10 >> 1)
          {
            v14 = v9;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7, 1);
            v9 = v14;
            v6 = v16;
          }

          *&v11 = v9;
          *(&v11 + 1) = SDWORD1(v9);
          *(v6 + 16) = v7;
          v12 = (v6 + 32 * v7);
          *v12 = v11;
          v12[1] = SDWORD2(v9);
          ++v7;
          v8 += 16;
          --v5;
        }

        while (v5);
        v13 = v6;

        return v13;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static Int.getValue4ArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyInt4Array();
    if (v2)
    {
      v17 = v2;
      v3 = v2;
      closure #1 in RIOPxrVtValueRef.asInt3Array.getter(&v17, MEMORY[0x277D00E98], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v16);

      v4 = v16;
      v5 = *(v16 + 16);
      if (v5)
      {
        v17 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v6 = v17;
        v7 = *(v17 + 16) + 1;
        v8 = 32;
        do
        {
          v9 = *(v4 + v8);
          v17 = v6;
          v10 = *(v6 + 24);
          if (v7 - 1 >= v10 >> 1)
          {
            v15 = v9;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7, 1);
            v9 = v15;
            v6 = v17;
          }

          *&v11 = v9;
          *(&v11 + 1) = SDWORD1(v9);
          v12 = v11;
          *&v11 = SDWORD2(v9);
          *(&v11 + 1) = SHIDWORD(v9);
          *(v6 + 16) = v7;
          v13 = (v6 + 32 * v7);
          *v13 = v12;
          v13[1] = v11;
          ++v7;
          v8 += 16;
          --v5;
        }

        while (v5);
        v14 = v6;

        return v14;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static Int16.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(id, void *), uint64_t a4, void (*a5)(BOOL, unint64_t, uint64_t))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v10 = result;
    v11 = a2();
    if (v11)
    {
      v22 = v11;
      v12 = v11;
      closure #1 in RIOPxrVtValueRef.asInt32Array.getter(&v22, a3, a4, &v21);

      v13 = v21;
      v14 = *(v21 + 16);
      if (v14)
      {
        v22 = MEMORY[0x277D84F90];
        a5(0, v14, 0);
        v15 = v22;
        v16 = *(v22 + 16);
        v17 = 32;
        do
        {
          v18 = *(v13 + v17);
          v22 = v15;
          v19 = *(v15 + 24);
          if (v16 >= v19 >> 1)
          {
            a5(v19 > 1, v16 + 1, 1);
            v15 = v22;
          }

          *(v15 + 16) = v16 + 1;
          *(v15 + 2 * v16 + 32) = v18;
          v17 += 4;
          ++v16;
          --v14;
        }

        while (v14);
        v20 = v15;

        return v20;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static simd_float2x2.getValueOpt(from:time:)()
{
  v4 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    if (Matrix2d)
    {
      result = vcvt_f32_f64(0);
    }

    else
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void specialized static simd_float3x3.getValueOpt(from:time:)(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v5 = 0;
      *&v6 = vcvt_f32_f64(0);
      *(&v6 + 2) = 0.0;
      HIDWORD(v6) = 0;
      *&v7 = v6;
      *(&v7 + 2) = 0.0;
      HIDWORD(v7) = 0;
      *&v8 = v6;
      *(&v8 + 2) = 0.0;
      HIDWORD(v8) = 0;
    }

    else
    {
      v5 = 1;
      v7 = 0uLL;
      v8 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v6 = 0uLL;
    v5 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v5;
  v9 = *MEMORY[0x277D85DE8];
}

void specialized static simd_float4x4.getValueOpt(from:time:)(float32x4_t *a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix4d = RIOPxrVtValueGetMatrix4d();

    if (Matrix4d)
    {
      v5 = 0;
      v6 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
      v7 = v6;
      v8 = v6;
      v9 = v6;
    }

    else
    {
      v5 = 1;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v5 = 1;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4].i8[0] = v5;
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t specialized static Half.vtValue(from:)(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v3 = v1[8];
    v4 = v1[9];
    v5 = v1[10];
    return RIOPxrVtValueCreateWithHalf3();
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v1 = *result;
  v2 = *(*result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 != 3)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 36);
    v5 = *(v1 + 40);
    return RIOPxrVtValueCreateWithHalf4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized static ToolsFoundations.Token.vtValue(from:)(uint64_t a1, void (*a2)(void), uint64_t (*a3)(Class))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v5;
    }

    while (v5);
  }

  a2(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = a3(isa);

  return v12;
}

uint64_t specialized static Half.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithHalf();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithHalfArray();

  return v7;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    while (1)
    {
      v5 = *(*v4 + 16);
      if (!v5)
      {
        break;
      }

      if (v5 == 1)
      {
        goto LABEL_8;
      }

      v6 = *(*v4 + 32);
      RIOPxrVtValueCreateWithHalf2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v4 += 8;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = RIOPxrVtValueCreateWithHalf2Array();

    return v9;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    while (1)
    {
      v5 = *v4;
      v6 = *(*v4 + 16);
      if (!v6)
      {
        break;
      }

      if (v6 == 1)
      {
        goto LABEL_9;
      }

      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = v5[8];
      v8 = v5[9];
      v9 = v5[10];
      RIOPxrVtValueCreateWithHalf3();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v13 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v4 += 8;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_7:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = RIOPxrVtValueCreateWithHalf3Array();

    return v12;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    while (1)
    {
      v5 = *v4;
      v6 = *(*v4 + 16);
      if (!v6)
      {
        break;
      }

      if (v6 == 1)
      {
        goto LABEL_10;
      }

      if (v6 < 3)
      {
        goto LABEL_11;
      }

      if (v6 == 3)
      {
        goto LABEL_12;
      }

      v7 = *(v5 + 32);
      v8 = *(v5 + 36);
      v9 = *(v5 + 40);
      RIOPxrVtValueCreateWithHalf4();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v13 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      ++v4;
      if (!--v1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = RIOPxrVtValueCreateWithHalf4Array();

    return v12;
  }

  return result;
}

uint64_t specialized static Frame4D.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = v3[6];
      v5 = v3[7];
      v6 = v3[4];
      v7 = v3[5];
      v8 = v3[2];
      v9 = v3[3];
      v10 = *v3;
      v11 = v3[1];
      v3 += 8;
      RIOPxrVtValueCreateWithMatrix4d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v16 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = RIOPxrVtValueCreateWithMatrix4dArray();

  return v14;
}

uint64_t specialized static Bool.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithBool();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithBoolArray();

  return v7;
}

uint64_t specialized static Double.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithDouble();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithDoubleArray();

  return v7;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithDouble2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithDouble2Array();

  return v7;
}

uint64_t specialized static Float.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithFloat();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithFloatArray();

  return v7;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithFloat2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithFloat2Array();

  return v7;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithFloat3();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithFloat3Array();

  return v7;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithFloat4();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithFloat4Array();

  return v7;
}

uint64_t specialized static Int.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    while (1)
    {
      v5 = *v3++;
      result = v5;
      if (v5 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (result > 0x7FFFFFFF)
      {
        goto LABEL_8;
      }

      RIOPxrVtValueCreateWithInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = RIOPxrVtValueCreateWithInt32Array();

    return v8;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v8 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      vld2_f32(v3);
      v3 += 4;
      RIOPxrVtValueCreateWithInt2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = *(v8 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOPxrVtValueCreateWithInt2Array();

  return v6;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v5 = *v3;
      v4 = v3[1];
      v3 += 2;
      RIOPxrVtValueCreateWithInt3();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = RIOPxrVtValueCreateWithInt3Array();

  return v8;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v8 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      vld2q_f32(v3);
      v3 += 8;
      RIOPxrVtValueCreateWithInt4();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = *(v8 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOPxrVtValueCreateWithInt4Array();

  return v6;
}

uint64_t specialized static simd_quatd.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v3 += 2;
      RIOPxrVtValueCreateWithQuatd();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = RIOPxrVtValueCreateWithQuatdArray();

  return v8;
}

uint64_t specialized static simd_quatf.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithQuatf();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithQuatfArray();

  return v7;
}

uint64_t specialized static simd_float2x2.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      RIOPxrVtValueCreateWithMatrix2f();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = RIOPxrVtValueCreateWithMatrix2dArray();

  return v8;
}

uint64_t specialized static simd_float3x3.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = *(v3 - 2);
      RIOPxrVtValueCreateWithMatrix3f();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v11 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = RIOPxrVtValueCreateWithMatrix3dArray();

  return v9;
}

uint64_t specialized static simd_float4x4.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 80);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      RIOPxrVtValueCreateWithMatrix4f();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v12 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = RIOPxrVtValueCreateWithMatrix4dArray();

  return v10;
}

uint64_t specialized static simd_double2x2.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 48);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      RIOPxrVtValueCreateWithMatrix2d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = RIOPxrVtValueCreateWithMatrix2dArray();

  return v8;
}

uint64_t specialized static simd_double3x3.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 96);
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = v3[1];
      v3 += 6;
      RIOPxrVtValueCreateWithMatrix3d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOPxrVtValueCreateWithMatrix3dArray();

  return v12;
}

uint64_t specialized static simd_double4x4.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v12 = v3[4];
      v13 = v3[5];
      v14 = v3[6];
      v15 = v3[7];
      v8 = *v3;
      v9 = v3[1];
      v10 = v3[2];
      v11 = v3[3];
      RIOPxrVtValueCreateWithMatrix4d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = *(v16 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOPxrVtValueCreateWithMatrix4dArray();

  return v6;
}

uint64_t specialized static UInt.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    while (1)
    {
      v5 = *v3++;
      result = v5;
      if (HIDWORD(v5))
      {
        break;
      }

      RIOPxrVtValueCreateWithUInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = RIOPxrVtValueCreateWithUInt32Array();

    return v8;
  }

  return result;
}

uint64_t specialized static Int8.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithInt32Array();

  return v7;
}

uint64_t specialized static Int16.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithInt32Array();

  return v7;
}

uint64_t specialized static Int64.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithInt64();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithInt64Array();

  return v7;
}

uint64_t specialized static Int32.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithInt2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithInt2Array();

  return v7;
}

uint64_t specialized static Double.vtValue(from:)(uint64_t a1, uint64_t (*a2)(Class), void (*a3)(_OWORD *))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v7 += 2;
      v14[0] = v8;
      v14[1] = v9;
      a3(v14);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v15 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = a2(isa);

  return v12;
}

uint64_t specialized static Int32.vtValue(from:)(__n128 *a1, uint64_t (*a2)(Class), void (*a3)(uint64_t, __n128))
{
  v4 = a1[1].n128_i64[0];
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    v7 = specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 2;
    do
    {
      v9 = *v8++;
      a3(v7, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = a2(isa);

  return v12;
}

uint64_t specialized static UInt8.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithUInt8();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithUInt8Array();

  return v7;
}

uint64_t specialized static UInt16.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithUInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithUInt32Array();

  return v7;
}

uint64_t specialized static Int32.vtValue(from:)(uint64_t a1, uint64_t (*a2)(Class), void (*a3)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      a3(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v13 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = a2(isa);

  return v11;
}

uint64_t specialized static UInt64.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      RIOPxrVtValueCreateWithUInt64();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOPxrVtValueCreateWithUInt64Array();

  return v7;
}

void specialized static Int.getValue3(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetInt3();
  }

  v2 = *MEMORY[0x277D85DE8];
}

void specialized static Int.getValue4(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetInt4();
  }

  v2 = *MEMORY[0x277D85DE8];
}

void specialized static Int.getValue2(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetInt2();
  }

  v2 = *MEMORY[0x277D85DE8];
}

double specialized static simd_float2x2.getValue(from:time:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  v1 = 0.0;
  if (v0)
  {
    v2 = v0;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    if (Matrix2d)
    {
      v1 = COERCE_DOUBLE(vcvt_f32_f64(0));
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void specialized static simd_float3x3.getValue(from:time:)(_OWORD *a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      *&v5 = vcvt_f32_f64(0);
      *(&v5 + 2) = 0.0;
      HIDWORD(v5) = 0;
      *&v6 = v5;
      *(&v6 + 2) = 0.0;
      HIDWORD(v6) = 0;
      *&v7 = v5;
      *(&v7 + 2) = 0.0;
      HIDWORD(v7) = 0;
    }

    else
    {
      v6 = 0uLL;
      v7 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  v8 = *MEMORY[0x277D85DE8];
}

void specialized static simd_float4x4.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetMatrix4d();
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t partial apply for closure #3 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #3 in static Color3<>.vtValue(from:)(a1, v2[2], a2);
}

uint64_t partial apply for closure #2 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #2 in static Color3<>.vtValue(from:)(a1, v2[2], a2);
}

uint64_t partial apply for closure #1 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #1 in static Color3<>.vtValue(from:)(a1, v2[2], a2);
}

uint64_t partial apply for closure #3 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #3 in static Color4<>.vtValue(from:)(a1, v2[2], a2);
}

uint64_t partial apply for closure #2 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #2 in static Color4<>.vtValue(from:)(a1, v2[2], a2);
}

uint64_t partial apply for closure #1 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #1 in static Color4<>.vtValue(from:)(a1, v2[2], a2);
}

unint64_t lazy protocol witness table accessor for type Half and conformance Half()
{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

uint64_t RIOPxrVtValueRef.asPoint3h.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3h.getter(a1);
}

uint64_t RIOPxrVtValueRef.asVector3h.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3h.getter(a1);
}

uint64_t RIOPxrVtValueRef.asColor3h.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asTexCoord3h.getter(a1);
}

double RIOPxrVtValueRef.asPoint3f.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asColor3f.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asVector3f.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asTexCoord3f.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asPoint3d.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

double RIOPxrVtValueRef.asColor3d.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

double RIOPxrVtValueRef.asVector3d.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

double RIOPxrVtValueRef.asTexCoord3d.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

void closure #1 in static TriggerBuilder.generateTapTriggerSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v8 = type metadata accessor for __RKEntityTriggerSpecification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 16))(v12, a2, v13);
  (*(v9 + 104))(v12, *MEMORY[0x277CDAFF0], v8);
  v14 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
    *a3 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1, v14);
    *a3 = v14;
  }

  v14[2] = v17 + 1;
  (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v12, v8);
  v18 = *(a4 + 56);
  v19 = RIOBuilderInputsGetImportSession();
  if (v19)
  {
    v20 = v19;
    SwiftObject = RIOImportSessionGetSwiftObject();

    if (SwiftObject)
    {
      v22 = swift_allocObject();
      v22[2] = a1;
      v22[3] = closure #1 in closure #1 in static TriggerBuilder.generateTapTriggerSpecifications(inputs:);
      v22[4] = 0;
      v23 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

      swift_beginAccess();
      v24 = *(SwiftObject + v23);
      aBlock[4] = partial apply for closure #1 in Inputs.performBlockLaterWithEntity(_:_:);
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_11;
      v25 = _Block_copy(aBlock);

      v26 = v24;

      RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
      _Block_release(v25);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in closure #1 in static TriggerBuilder.generateTapTriggerSpecifications(inputs:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Entity.ComponentSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  v9 = type metadata accessor for CollisionComponent();
  Entity.ComponentSet.subscript.getter();
  (*(v5 + 8))(v8, v4);
  v10 = (*(*(v9 - 8) + 48))(v3, 1, v9);
  outlined destroy of CollisionComponent?(v3);
  if (v10 == 1)
  {
    Entity.generateCollisionShapes(recursive:)(1);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of CollisionComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for anchoringComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.anchoringComponent = result;
  return result;
}

uint64_t closure #1 in AnchoringComponentBuilder.run(inputs:)(uint64_t a1, _BYTE *a2)
{
  v166 = *MEMORY[0x277D85DE8];
  v154 = Inputs.prim.getter();
  v2 = *(v154 + 16);
  v3 = RIOPxrUsdObjectCopyName();
  v4 = RIOPxrTfTokenCopyString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = Prim.children.getter();
  v9 = v8;
  v153 = v7;
  v151 = v5;
  if (v8 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    while ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26670F670](v11, v9);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v15 = v13;
      v16 = *(v13 + 16);
      v17 = RIOPxrUsdObjectCopyName();
      if (one-time initialization token for descriptorName != -1)
      {
        swift_once();
      }

      v18 = static AnchoringComponentBuilder.descriptorName;
      type metadata accessor for RIOPxrTfTokenRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
      v19 = v18;
      v20 = static _CFObject.== infix(_:_:)();

      if (v20)
      {

        v21 = v15;
        goto LABEL_20;
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_19;
      }
    }

    if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v12 = *(v9 + 8 * v11 + 32);

    v14 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v21 = 0;
LABEL_20:
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v22 = *(v154 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_44;
  }

  v23 = RIOPxrUsdPrimCopyAttribute();
  v24 = RIOPxrUsdAttributeCopyValue();
  if (!v24)
  {

LABEL_45:
    AnchoringComponentBuilder.clear(inputs:)();

    v42 = *MEMORY[0x277D85DE8];
LABEL_46:
  }

  v25 = v24;
  v26 = RIOPxrVtValueCopyToken();

  if (!v26)
  {
    goto LABEL_44;
  }

  v27 = v21;
  v28 = RIOPxrTfTokenCopyString();
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v29 == 0xD000000000000014 && 0x80000002619965C0 == v31)
  {

    v32 = v27;
    goto LABEL_30;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v32 = v27;
  if ((v33 & 1) == 0)
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_30:
  v34 = Prim.parent.getter();
  if (!v34)
  {
    goto LABEL_33;
  }

  v35 = v34;
  v36 = *(v34 + 16);
  if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
  {
    if (one-time initialization token for anchoringComponent != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_26198A8E0;
    v45 = *(v35 + 16);
    v46 = RIOPxrUsdObjectCopyPath();
    v47 = RIOPxrSdfPathCopyString();
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = MEMORY[0x277D837D0];
    *(v44 + 56) = MEMORY[0x277D837D0];
    v52 = lazy protocol witness table accessor for type String and conformance String();
    *(v44 + 64) = v52;
    *(v44 + 32) = v48;
    *(v44 + 40) = v50;

    *(v44 + 96) = v51;
    *(v44 + 104) = v52;
    *(v44 + 72) = v151;
    *(v44 + 80) = v153;
    os_log(_:dso:log:type:_:)();

    v53 = *MEMORY[0x277D85DE8];
    goto LABEL_46;
  }

LABEL_33:
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v157);
  if (!*(&v158 + 1))
  {
    outlined destroy of Any?(&v157);
    goto LABEL_53;
  }

  type metadata accessor for EntityProxy();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    if (one-time initialization token for anchoringComponent != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_2619891C0;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v54 + 32) = v151;
    *(v54 + 40) = v153;
    os_log(_:dso:log:type:_:)();

    goto LABEL_56;
  }

  v37 = *(v154 + 16);
  if ((RIOPxrUsdPrimIsActive() & 1) == 0)
  {
    AnchoringComponentBuilder.clear(inputs:)();

LABEL_56:

LABEL_57:
    v55 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (one-time initialization token for typePropertyName != -1)
  {
    swift_once();
  }

  *&v157 = static AnchoringComponentBuilder.typePropertyName;
  v38 = static AnchoringComponentBuilder.typePropertyName;
  v39 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v32);

  if (!v39 || (v40 = RIOPxrVtValueCopyToken(), v39, !v40))
  {
    if (String.count.getter() < 1)
    {
      v41 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v41 = RIOPxrTfTokenCreateWithCString();
    }

    v40 = v41;
  }

  __AssetRef.__as<A>(_:)();
  REAnchoringComponentGetComponentType();
  v56 = REEntityGetOrAddComponentByClass();
  swift_beginAccess();
  v57 = objc_getAssociatedObject(a2, &static BuilderAssociatedKeys.CoreReference);
  result = swift_endAccess();
  if (v57)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v165, &v157);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    RIOBuilderAddComponent();

    if (one-time initialization token for isRequiredPropertyName != -1)
    {
      swift_once();
    }

    v58 = static AnchoringComponentBuilder.isRequiredPropertyName;
    *&v157 = static AnchoringComponentBuilder.isRequiredPropertyName;

    v59 = v58;
    v60 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v154);

    if (v60)
    {
      LOBYTE(v157) = 0;
      Bool = RIOPxrVtValueGetBool();

      if (Bool)
      {
        REAnchoringComponentSetIsRequired();
      }
    }

    if (one-time initialization token for scaleFactorPropertyName != -1)
    {
      swift_once();
    }

    *&v157 = static AnchoringComponentBuilder.scaleFactorPropertyName;
    v62 = static AnchoringComponentBuilder.scaleFactorPropertyName;
    v63 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v154);

    if (v63)
    {
      LODWORD(v157) = 0;
      Float = RIOPxrVtValueGetFloat();

      if (Float)
      {
        REAnchoringComponentSetScaleFactor();
      }
    }

    v65 = v40;
    if (String.count.getter() < 1)
    {
      v66 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v66 = RIOPxrTfTokenCreateWithCString();
    }

    v67 = v66;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
    v68 = static _CFObject.== infix(_:_:)();

    if (v68)
    {
      goto LABEL_76;
    }

    if (String.count.getter() < 1)
    {
      v69 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v69 = RIOPxrTfTokenCreateWithCString();
    }

    v70 = v69;
    v71 = static _CFObject.== infix(_:_:)();

    if (v71)
    {

      if (one-time initialization token for transformPropertyName != -1)
      {
        swift_once();
      }

      *&v157 = static AnchoringComponentBuilder.transformPropertyName;
      v72 = static AnchoringComponentBuilder.transformPropertyName;
      v73 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v27);

      if (!v73)
      {
        goto LABEL_89;
      }

      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      Matrix4d = RIOPxrVtValueGetMatrix4d();

      if ((Matrix4d & 1) == 0)
      {
LABEL_89:
        v77 = *MEMORY[0x277D860A0];
        v76 = *(MEMORY[0x277D860A0] + 16);
        v79 = *(MEMORY[0x277D860A0] + 32);
        v78 = *(MEMORY[0x277D860A0] + 48);
        v81 = *(MEMORY[0x277D860A0] + 64);
        v80 = *(MEMORY[0x277D860A0] + 80);
        v83 = *(MEMORY[0x277D860A0] + 96);
        v82 = *(MEMORY[0x277D860A0] + 112);
      }

      REAnchoringComponentSetDescriptorType();
      REAnchoringComponentSetDescriptorTransform();
      goto LABEL_179;
    }

    if (String.count.getter() < 1)
    {
      v75 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v75 = RIOPxrTfTokenCreateWithCString();
    }

    v84 = v75;
    v85 = static _CFObject.== infix(_:_:)();

    if (v85)
    {

      if (one-time initialization token for alignmentPropertyName != -1)
      {
        swift_once();
      }

      *&v157 = static AnchoringComponentBuilder.alignmentPropertyName;
      v86 = static AnchoringComponentBuilder.alignmentPropertyName;
      v87 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v27);

      if (!v87 || (v88 = RIOPxrVtValueCopyToken(), v87, !v88))
      {
        if (String.count.getter() < 1)
        {
          v89 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v89 = RIOPxrTfTokenCreateWithCString();
        }

        v88 = v89;
      }

      v97 = v88;
      if (String.count.getter() < 1)
      {
        v98 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v98 = RIOPxrTfTokenCreateWithCString();
      }

      v99 = v98;
      v100 = static _CFObject.== infix(_:_:)();

      if (v100)
      {
      }

      else
      {
        if (String.count.getter() < 1)
        {
          v101 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v101 = RIOPxrTfTokenCreateWithCString();
        }

        v115 = v101;
        static _CFObject.== infix(_:_:)();
      }

      if (one-time initialization token for classificationPropertyName != -1)
      {
        swift_once();
      }

      *&v157 = static AnchoringComponentBuilder.classificationPropertyName;
      v116 = static AnchoringComponentBuilder.classificationPropertyName;
      v117 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v27);

      if (!v117 || (v118 = RIOPxrVtValueCopyToken(), v117, !v118))
      {
        if (String.count.getter() < 1)
        {
          v119 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v119 = RIOPxrTfTokenCreateWithCString();
        }

        v118 = v119;
      }

      v120 = v118;
      if (String.count.getter() < 1)
      {
        v121 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v121 = RIOPxrTfTokenCreateWithCString();
      }

      v122 = v121;
      v123 = static _CFObject.== infix(_:_:)();

      if (v123)
      {
        goto LABEL_164;
      }

      v124 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
      v125 = v124;
      v126 = static _CFObject.== infix(_:_:)();

      if (v126)
      {
        goto LABEL_164;
      }

      v127 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
      v130 = v127;
      v131 = static _CFObject.== infix(_:_:)();

      if (v131 & 1) != 0 || (String.count.getter() < 1 ? (v132 = RIOPxrTfTokenEmpty()) : (v132 = RIOPxrTfTokenCreateWithCString()), v133 = v132, v134 = static _CFObject.== infix(_:_:)(), v133, (v134))
      {
LABEL_164:
      }

      else
      {
        if (String.count.getter() < 1)
        {
          v135 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v135 = RIOPxrTfTokenCreateWithCString();
        }

        v146 = v135;
        static _CFObject.== infix(_:_:)();
      }

      if (one-time initialization token for boundsPropertyName != -1)
      {
        swift_once();
      }

      *&v157 = static AnchoringComponentBuilder.boundsPropertyName;
      v147 = static AnchoringComponentBuilder.boundsPropertyName;
      v148 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v27);

      if (v148)
      {
        *&v157 = 0;
        RIOPxrVtValueGetFloat2();
      }

      REAnchoringComponentSetDescriptorType();
      REAnchoringComponentSetDescriptorAlignment();
      REAnchoringComponentSetDescriptorClassification();
      REAnchoringComponentSetDescriptorBounds();

      goto LABEL_179;
    }

    if (String.count.getter() < 1)
    {
      v90 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v90 = RIOPxrTfTokenCreateWithCString();
    }

    v91 = v90;
    v92 = static _CFObject.== infix(_:_:)();

    if ((v92 & 1) == 0)
    {
      if (String.count.getter() < 1)
      {
        v96 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v96 = RIOPxrTfTokenCreateWithCString();
      }

      v112 = v96;
      v113 = static _CFObject.== infix(_:_:)();

      if ((v113 & 1) == 0)
      {
        if (String.count.getter() < 1)
        {
          v114 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v114 = RIOPxrTfTokenCreateWithCString();
        }

        v128 = v114;
        v129 = static _CFObject.== infix(_:_:)();

        if ((v129 & 1) == 0)
        {
          goto LABEL_180;
        }

        goto LABEL_77;
      }

LABEL_76:

LABEL_77:
      REAnchoringComponentSetDescriptorType();
LABEL_179:
      MEMORY[0x26670FF10](v56);
LABEL_180:

      a2[17] = 1;
      goto LABEL_57;
    }

    if (one-time initialization token for resourcePathPropertyName != -1)
    {
      swift_once();
    }

    *&v157 = static AnchoringComponentBuilder.resourcePathPropertyName;
    v93 = static AnchoringComponentBuilder.resourcePathPropertyName;
    v94 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v27);

    if (v94)
    {
      v95 = RIOPxrVtValueCopyAssetPath();
    }

    else
    {
      v95 = 0;
    }

    if (one-time initialization token for physicalWidthPropertyName != -1)
    {
      swift_once();
    }

    *&v157 = static AnchoringComponentBuilder.physicalWidthPropertyName;
    v102 = static AnchoringComponentBuilder.physicalWidthPropertyName;
    v103 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v157, v27);

    if (v103)
    {
      LODWORD(v157) = 0;
      RIOPxrVtValueGetFloat();
    }

    REAnchoringComponentSetDescriptorType();
    if (!v95)
    {
      goto LABEL_179;
    }

    v104 = v95;
    v105 = RIOPxrSdfAssetPathResolvedPathCopyString();
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    String.utf8CString.getter();
    v109 = RIOPxrArAssetCreate();

    if (!v109)
    {

      goto LABEL_179;
    }

    CFDataNoCopy = RIOPxrArAssetCreateCFDataNoCopy();
    if (!CFDataNoCopy)
    {
      goto LABEL_128;
    }

    v111 = CFDataNoCopy;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_179;
    }

    v157 = xmmword_26198E2C0;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();

    if (*(&v157 + 1) >> 60 == 15)
    {
LABEL_128:

      goto LABEL_179;
    }

    v155 = v109;
    v136 = v157;
    v150 = specialized static CGImageRef.image(with:)(v157, *(&v157 + 1));
    if (!v150)
    {

      outlined consume of Data?(v136, *(&v136 + 1));
      goto LABEL_182;
    }

    type metadata accessor for __USDARReferenceProvidingPlugin();
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.assetService.getter();

    static __USDARReferenceProvidingPlugin.instance(for:)();
    __swift_destroy_boxed_opaque_existential_0(&v157);
    *&v157 = v106;
    *(&v157 + 1) = v108;
    *&v165 = 91;
    *(&v165 + 1) = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v137 = StringProtocol.components<A>(separatedBy:)();

    if (v137[2])
    {
      v138 = v137[4];
      v139 = v137[5];

      *&v157 = v138;
      *(&v157 + 1) = v139;
      *&v165 = 47;
      *(&v165 + 1) = 0xE100000000000000;
      v140 = StringProtocol.components<A>(separatedBy:)();

      v141 = *(v140 + 16);
      if (!v141)
      {

        outlined consume of Data?(v136, *(&v136 + 1));

        v149 = v150;
        goto LABEL_184;
      }

      v142 = (v140 + 16 + 16 * v141);
      v143 = *v142;
      v144 = v142[1];

      dispatch thunk of __USDARReferenceProvidingPlugin.createSchemePrefix(with:)();

      v145 = RIOPxrSdfAssetPathAssetPathCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.utf8CString.getter();

      REAnchoringComponentSetDescriptorResourceGroup();

      String.utf8CString.getter();

      REAnchoringComponentSetDescriptorResourceName();

      outlined consume of Data?(v136, *(&v136 + 1));
LABEL_182:
      v149 = v155;
LABEL_184:

      goto LABEL_179;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnchoringComponentBuilder.clear(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v2);
  if (!v3)
  {
    return outlined destroy of Any?(&v2);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 17) == 1)
    {
      __AssetRef.__as<A>(_:)();
      REAnchoringComponentGetComponentType();
      REEntityRemoveComponentByClass();

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t AnchoringComponentBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Builder.run(inputs:) in conformance AnchoringComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in AnchoringComponentBuilder.run(inputs:);
  *(v4 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_12;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized AnchoringComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v10 = static AnchoringComponentBuilder.realityKitComponentTypeName;
  v0 = static AnchoringComponentBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v10;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26198A640;
  *(v7 + 32) = v6;
  v10 = v3;

  specialized Sequence.forEach(_:)(v7);

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized AnchoringComponentBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v2 = static EntityBuilder.OutputName;
  v1 = qword_27FEBC3A0;
  v3 = one-time initialization token for OutputIdentifier;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static EntityBuilder.OutputIdentifier;
  v4 = *algn_27FEC8E68;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 112;

  if (String.count.getter() < 1)
  {
    v6 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v6 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002619966F0;
  *(inited + 104) = 0xD000000000000020;
  *(inited + 112) = 0x8000000261994710;
  *(inited + 120) = v6;
  *(inited + 128) = 1;
  *(inited + 136) = 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v8 = v7;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

uint64_t specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a2 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v4 = RIOPxrUsdPrimCopyAttribute();
    type metadata accessor for AnyAttribute();
    v5 = swift_allocObject();
    v5[2] = v4;
    EmptyValue = RIOPxrUsdAttributeCopyValue();
    if (!EmptyValue)
    {
      EmptyValue = RIOPxrVtValueCreateEmptyValue();
    }

    v7 = EmptyValue;
    outlined consume of Result<AnyAttribute, Object.Error>(v5, 0);
    return v7;
  }

  else
  {
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return 0;
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.description.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfNamespaceEditCopyCurrentPath();
  v3 = RIOPxrSdfPathCopyString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = v4;
  MEMORY[0x26670F080](540945696, 0xE400000000000000);
  v5 = RIOPxrSdfNamespaceEditCopyNewPath();
  v6 = RIOPxrSdfPathCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x26670F080](v7, v9);

  MEMORY[0x26670F080](8236, 0xE200000000000000);
  RIOPxrSdfNamespaceEditGetIndex();
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26670F080](v10);

  return v12;
}

unint64_t SceneDescriptionFoundations.NamespaceEdit.debugDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  v2 = SceneDescriptionFoundations.NamespaceEdit.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.currentPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfNamespaceEditCopyCurrentPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.newPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfNamespaceEditCopyNewPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfNamespaceEditCreateEmpty();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.NamespaceEdit.init(currentPath:newPath:index:)(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = RIOPxrSdfNamespaceEditCreateFromPaths();

  *a3 = v6;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.remove(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrSdfNamespaceEditCreateRemove();
  *a2 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.rename(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = RIOPxrSdfNamespaceEditCreateRename();
  *a3 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.reorder(from:at:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrSdfNamespaceEditCreateReorder();
  *a2 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.reparent(from:to:at:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = RIOPxrSdfNamespaceEditCreateReparent();
  *a3 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.reparentAndRename(from:to:with:at:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = RIOPxrSdfNamespaceEditCreateReparentAndRename();
  *a4 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.__allocating_init(tag:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  if (a2)
  {
    String.utf8CString.getter();
  }

  Anonymous = RIOPxrSdfLayerCreateAnonymous();
  swift_unknownObjectRelease();
  *(v3 + 16) = Anonymous;
  return v3;
}

uint64_t SceneDescriptionFoundations.Layer.init(tag:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    String.utf8CString.getter();
  }

  Anonymous = RIOPxrSdfLayerCreateAnonymous();
  swift_unknownObjectRelease();
  *(v2 + 16) = Anonymous;
  return v2;
}

uint64_t SceneDescriptionFoundations.Layer.init(relativeTo:identifier:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  String.utf8CString.getter();

  RelativeToLayer = RIOPxrSdfLayerCreateOrFindRelativeToLayer();

  if (RelativeToLayer)
  {
    *(v1 + 16) = RelativeToLayer;
  }

  else
  {
    type metadata accessor for SceneDescriptionFoundations.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t SceneDescriptionFoundations.Layer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.Layer()
{
  v1 = *(*v0 + 16);
  v2 = RIOPxrSdfLayerCopyIdentifier();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneDescriptionFoundations.Layer()
{
  v1 = *(*v0 + 16);
  v2 = RIOPxrSdfLayerCopyIdentifier();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x203A726579614C3CLL;
}

uint64_t SceneDescriptionFoundations.Layer.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrSdfLayerCopyIdentifier();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x203A726579614C3CLL;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.identifier()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00918]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.defaultPrim.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrSdfLayerCopyDefaultPrim();
  *a1 = result;
  return result;
}

uint64_t key path setter for SceneDescriptionFoundations.Layer.defaultPrim : SceneDescriptionFoundations.Layer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  IsEmpty = RIOPxrTfTokenIsEmpty();
  v5 = *(v3 + 16);
  if (IsEmpty)
  {

    return RIOPxrSdfLayerClearDefaultPrim();
  }

  else
  {

    return RIOPxrSdfLayerSetDefaultPrim();
  }
}

void SceneDescriptionFoundations.Layer.defaultPrim.setter(id *a1)
{
  v4 = *a1;
  if (RIOPxrTfTokenIsEmpty())
  {

    v2 = *(v1 + 16);

    RIOPxrSdfLayerClearDefaultPrim();
  }

  else
  {
    v3 = *(v1 + 16);
    RIOPxrSdfLayerSetDefaultPrim();
  }
}

void (*SceneDescriptionFoundations.Layer.defaultPrim.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrSdfLayerCopyDefaultPrim();
  return SceneDescriptionFoundations.Layer.defaultPrim.modify;
}

void SceneDescriptionFoundations.Layer.defaultPrim.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v8 = v3;
    IsEmpty = RIOPxrTfTokenIsEmpty();
    v5 = *(a1 + 8);
    if (IsEmpty)
    {

      RIOPxrSdfLayerClearDefaultPrim();
    }

    else
    {
      RIOPxrSdfLayerSetDefaultPrim();
    }

LABEL_10:

    return;
  }

  v8 = v3;
  v6 = RIOPxrTfTokenIsEmpty();
  v7 = *(a1 + 8);
  if (!v6)
  {
    RIOPxrSdfLayerSetDefaultPrim();
    goto LABEL_10;
  }

  RIOPxrSdfLayerClearDefaultPrim();
}

uint64_t SceneDescriptionFoundations.Layer.autoPlay.getter()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  v3 = v2;
  v4 = RIOPxrSdfLayerGetMetadata();

  if (v4 && (Bool = RIOPxrVtValueGetBool(), v4, (Bool & 1) != 0))
  {
    result = 0;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void key path setter for SceneDescriptionFoundations.Layer.autoPlay : SceneDescriptionFoundations.Layer(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  v6 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetMetadata();
}

void SceneDescriptionFoundations.Layer.autoPlay.setter()
{
  v1 = *(v0 + 16);
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  v3 = v2;
  v4 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetMetadata();
}

void (*SceneDescriptionFoundations.Layer.autoPlay.modify(uint64_t a1))(unsigned __int8 *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = SceneDescriptionFoundations.Layer.autoPlay.getter() & 1;
  return SceneDescriptionFoundations.Layer.autoPlay.modify;
}

void SceneDescriptionFoundations.Layer.autoPlay.modify(unsigned __int8 *a1, char a2)
{
  v3 = a1[8];
  v4 = *(*a1 + 16);
  v5 = String.count.getter();
  if (a2)
  {
    if (v5 < 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v6 = RIOPxrTfTokenCreateWithCString();
    goto LABEL_7;
  }

  if (v5 >= 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v6 = RIOPxrTfTokenEmpty();
LABEL_7:
  v8 = v6;
  v7 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetMetadata();
}

uint64_t SceneDescriptionFoundations.Layer.export(to:comment:fileFormatArguments:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, NSURL *a3@<X8>)
{
  v6 = *(v3 + 16);
  URL._bridgeToObjectiveC()(a3);
  v8 = v7;
  if (!a2)
  {
    v9.super.isa = 0;
    if (!a1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (a1)
  {
LABEL_3:
    String.utf8CString.getter();
  }

LABEL_5:
  v10 = RIOPxrSdfLayerExportWithURL();

  swift_unknownObjectRelease();
  return v10;
}

Swift::Bool __swiftcall SceneDescriptionFoundations.Layer.export(to:comment:fileFormatArguments:)(Swift::String to, Swift::String_optional comment, Swift::OpaquePointer_optional fileFormatArguments)
{
  object = comment.value._object;
  v5 = *(v3 + 16);
  if (fileFormatArguments.value._rawValue)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  String.utf8CString.getter();
  if (object)
  {
    String.utf8CString.getter();
  }

  v7 = RIOPxrSdfLayerExportWithFilePath();

  swift_unknownObjectRelease();
  return v7;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.toString()()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrSdfLayerCopyExportString();
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.comment()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D008F8]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.setComment(to:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  a3(v5, v6 + 32);
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.displayName()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00900]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.assetName()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D008F0]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.fileExtension()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00910]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.repositoryPath()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00930]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static SceneDescriptionFoundations.Layer.createIdentifier(with:options:)()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  Identifier = RIOPxrSdfLayerCreateIdentifier();

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.absolutePath(relativeTo:)(Swift::String relativeTo)
{
  v2 = *(v1 + 16);
  String.utf8CString.getter();
  v3 = RIOPxrSdfLayerCopyAbsolutePath();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.realPath()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00928]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.description.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void SceneDescriptionFoundations.Layer.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(v3 + 16);
  v8 = RIOPxrSdfLayerCopyCustomLayerDataValue();
  if (v8)
  {
    v10 = v8;
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a3);
  }

  else
  {
    v9 = *(*(a2 - 8) + 56);

    v9(a3, 1, 1, a2);
  }
}

void key path getter for SceneDescriptionFoundations.Layer.subscript<A>(customLayerDataKey:) : <A>SceneDescriptionFoundations.LayerA(uint64_t *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v9 = *a2;
  v8 = v9;
  SceneDescriptionFoundations.Layer.subscript.getter(&v9, v6, a4);
}

uint64_t key path setter for SceneDescriptionFoundations.Layer.subscript<A>(customLayerDataKey:) : <A>SceneDescriptionFoundations.LayerA(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = *a3;
  (*(v15 + 16))(&v19 - v12, a1, v11);
  v16 = *a2;
  v20 = v14;
  v17 = v14;
  return SceneDescriptionFoundations.Layer.subscript.setter(v13, &v20, v7, v8);
}

uint64_t SceneDescriptionFoundations.Layer.subscript.setter(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  (*(v10 + 16))(v13, a1, v9, v17);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v21 = *(v10 + 8);
    v21(v13, v9);
    v22 = *(v4 + 16);
    RIOPxrSdfLayerClearCustomLayerData();

    return (v21)(a1, v9);
  }

  else
  {
    (*(v14 + 32))(v19, v13, a3);
    v24 = *(v4 + 16);
    v25 = (*(a4 + 8))(a3, a4);
    RIOPxrSdfLayerSetCustomLayerData();

    (*(v10 + 8))(a1, v9);
    return (*(v14 + 8))(v19, a3);
  }
}

void (*SceneDescriptionFoundations.Layer.subscript.modify(void *a1, void **a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  SceneDescriptionFoundations.Layer.subscript.getter(&v20, a3, v16);

  return SceneDescriptionFoundations.Layer.subscript.modify;
}

void SceneDescriptionFoundations.Layer.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v8 = v2[2];
    v10 = *v2;
    (*(v7 + 16))((*a1)[5], v3, v6);
    v14 = v4;
    SceneDescriptionFoundations.Layer.subscript.setter(v5, &v14, v10, v9);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v11 = v2[1];
    v12 = v2[2];
    v13 = *v2;
    v14 = (*a1)[7];
    SceneDescriptionFoundations.Layer.subscript.setter(v3, &v14, v13, v11);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t SceneDescriptionFoundations.Layer.subLayerPaths()()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrSdfLayerCopySubLayerPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

Swift::Void __swiftcall SceneDescriptionFoundations.Layer.setSubLayerPaths(paths:)(Swift::OpaquePointer paths)
{
  v2 = *(v1 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  RIOPxrSdfLayerSetSubLayerPathsWithStrings();
}

uint64_t SceneDescriptionFoundations.Layer.canApplyEdits(with:)(uint64_t a1, uint64_t (*a2)(uint64_t, Class))
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v5;
    }

    while (v5);
  }

  type metadata accessor for RIOPxrSdfNamespaceEditRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = a2(v4, isa);

  return v12;
}

uint64_t SceneDescriptionFoundations.Layer.flattenSubGraphInPlace(subGraph:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrSdfLayerFlattenSubGraphInPlace();
}

uint64_t SceneDescriptionFoundations.Layer.copyPathToLayer(from:to:on:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(v3 + 16);
  v7 = *(a3 + 16);
  return RIOPxrUsdUtilsSdfCopySpec();
}

uint64_t SceneDescriptionFoundations.Layer.copyPathToLayer(from:to:on:includingDescendants:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(v3 + 16);
  v7 = *(a3 + 16);
  return RIOPxrUsdUtilsSdfCopySpec();
}

unint64_t one-time initialization function for replicationMessagePublishers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static SceneDescriptionFoundations.Layer.replicationMessagePublishers = result;
  return result;
}

uint64_t @objc closure #1 in SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.init(layerBase:)(_BYTE *a1, uint64_t a2)
{

  v6 = specialized Data.init(bytes:count:)(a1, a2);
  v7 = v4;
  PassthroughSubject.send(_:)();

  return outlined consume of Data._Representation(v6, v7);
}

uint64_t SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.deinit()
{
  v1 = *(v0 + 24);
  RIOPxrSdfLayerReplicationStopSending();
  v2 = *(v0 + 16);

  return v0;
}

uint64_t SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RIOPxrSdfLayerReplicationStopSending();
  v2 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = *(v2 + 16);
  (*(v7 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  PassthroughSubject.receive<A>(subscriber:)();
}

uint64_t SceneDescriptionFoundations.Layer.replicationMessagePublisher.getter()
{
  if (one-time initialization token for replicationMessagePublishers != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = specialized Dictionary.subscript.getter(v1, static SceneDescriptionFoundations.Layer.replicationMessagePublishers);
  if (v2)
  {
    v3 = v2;
LABEL_13:
    swift_endAccess();
    return v3;
  }

  swift_endAccess();
  type metadata accessor for SceneDescriptionFoundations.Layer.ReplicationMessagePublisher();
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5NeverOGMR);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v3 + 16) = PassthroughSubject.init()();
  *(v3 + 24) = v1;
  v7 = v1;
  RIOPxrSdfLayerReplicationStartSending();
  swift_beginAccess();
  if ((static SceneDescriptionFoundations.Layer.replicationMessagePublishers & 0xC000000000000001) == 0)
  {

    goto LABEL_12;
  }

  if (static SceneDescriptionFoundations.Layer.replicationMessagePublishers < 0)
  {
    v8 = static SceneDescriptionFoundations.Layer.replicationMessagePublishers;
  }

  else
  {
    v8 = static SceneDescriptionFoundations.Layer.replicationMessagePublishers & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    static SceneDescriptionFoundations.Layer.replicationMessagePublishers = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0G0C27ReplicationMessagePublisherCTt1g5(v8, result + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = static SceneDescriptionFoundations.Layer.replicationMessagePublishers;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v7, isUniquelyReferenced_nonNull_native);
    static SceneDescriptionFoundations.Layer.replicationMessagePublishers = v11;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.exportToUSDZ(at:firstLayerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = v4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    URL.deletingPathExtension()();
    v13 = URL.lastPathComponent.getter();
    v15 = v14;
    (*(v9 + 8))(v12, v8);
    v23[0] = v13;
    v23[1] = v15;

    MEMORY[0x26670F080](0x636473752ELL, 0xE500000000000000);
  }

  v16 = *(v6 + 16);

  v17 = RIOPxrSdfLayerCopyIdentifier();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  v18 = RIOPxrSdfAssetPathCreateFromCString();

  URL.path.getter();
  v19 = String.utf8CString.getter();

  v20 = String.utf8CString.getter();

  v21 = a4(v18, v19 + 32, v20 + 32);

  return v21;
}

uint64_t SceneDescriptionFoundations.Layer.modifyAssetPaths(modifyFunction:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in SceneDescriptionFoundations.Layer.modifyAssetPaths(modifyFunction:);
  *(v7 + 24) = v5;
  v10[4] = partial apply for thunk for @callee_guaranteed (@guaranteed CFStringRef) -> (@unowned Unmanaged<CFStringRef>);
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef) -> (@unowned Unmanaged<CFStringRef>);
  v10[3] = &block_descriptor_13;
  v8 = _Block_copy(v10);

  RIOPxrUsdUtilsModifyAssetPaths();
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in SceneDescriptionFoundations.Layer.modifyAssetPaths(modifyFunction:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = a2(v3);
  v6 = v5;

  v7 = MEMORY[0x26670EFB0](v4, v6);

  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef) -> (@unowned Unmanaged<CFStringRef>)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t SceneDescriptionFoundations.Layer.colorConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrSdfLayerCopyColorConfiguration();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Layer.colorConfiguration.setter(id *a1)
{
  v3 = *a1;
  v2 = *(v1 + 16);
  RIOPxrSdfLayerSetColorConfiguration();
}

void (*SceneDescriptionFoundations.Layer.colorConfiguration.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrSdfLayerCopyColorConfiguration();
  return SceneDescriptionFoundations.Layer.colorConfiguration.modify;
}

void SceneDescriptionFoundations.Layer.colorConfiguration.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrSdfLayerSetColorConfiguration();
}

uint64_t SceneDescriptionFoundations.Layer.colorManagementSystem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrSdfLayerCopyColorManagementSystem();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Layer.colorManagementSystem.setter(id *a1)
{
  v3 = *a1;
  v2 = *(v1 + 16);
  RIOPxrSdfLayerSetColorManagementSystem();
}

void (*SceneDescriptionFoundations.Layer.colorManagementSystem.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrSdfLayerCopyColorManagementSystem();
  return SceneDescriptionFoundations.Layer.colorManagementSystem.modify;
}

void SceneDescriptionFoundations.Layer.colorManagementSystem.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrSdfLayerSetColorManagementSystem();
}

uint64_t SceneDescriptionFoundations.Layer.documentation.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrSdfLayerCopyDocumentation();

  return String.init(_:)(v2)._countAndFlagsBits;
}

uint64_t (*SceneDescriptionFoundations.Layer.documentation.modify(Swift::String *a1))(uint64_t *a1, char a2)
{
  a1[1]._countAndFlagsBits = *(v1 + 16);
  v3 = RIOPxrSdfLayerCopyDocumentation();
  *a1 = String.init(_:)(v3);
  return SceneDescriptionFoundations.Layer.documentation.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.startTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetStartTimeCode();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.startTimeCode.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.endTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetEndTimeCode();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.endTimeCode.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.timeCodesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetTimeCodesPerSecond();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.timeCodesPerSecond.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.framesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetFramesPerSecond();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.framesPerSecond.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.framePrecision.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrSdfLayerGetFramePrecision();
  return SceneDescriptionFoundations.Layer.framePrecision.modify;
}

uint64_t SceneDescriptionFoundations.Layer.owner.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrSdfLayerCopyOwner();

  return String.init(_:)(v2)._countAndFlagsBits;
}

uint64_t (*SceneDescriptionFoundations.Layer.owner.modify(Swift::String *a1))(uint64_t *a1, char a2)
{
  a1[1]._countAndFlagsBits = *(v1 + 16);
  v3 = RIOPxrSdfLayerCopyOwner();
  *a1 = String.init(_:)(v3);
  return SceneDescriptionFoundations.Layer.owner.modify;
}

uint64_t SceneDescriptionFoundations.Layer.sessionOwner.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrSdfLayerCopySessionOwner();

  return String.init(_:)(v2)._countAndFlagsBits;
}

uint64_t key path setter for SceneDescriptionFoundations.Layer.documentation : SceneDescriptionFoundations.Layer(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(*a2 + 16);
  v9 = String.utf8CString.getter();
  a5(v8, v9 + 32);
}

uint64_t SceneDescriptionFoundations.Layer.documentation.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();

  a3(v5, v6 + 32);
}

uint64_t (*SceneDescriptionFoundations.Layer.sessionOwner.modify(Swift::String *a1))(uint64_t *a1, char a2)
{
  a1[1]._countAndFlagsBits = *(v1 + 16);
  v3 = RIOPxrSdfLayerCopySessionOwner();
  *a1 = String.init(_:)(v3);
  return SceneDescriptionFoundations.Layer.sessionOwner.modify;
}

uint64_t SceneDescriptionFoundations.Layer.documentation.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = String.utf8CString.getter();
  v9 = v8;
  v10 = a1[2];
  if (a2)
  {
    a3(v10, v8 + 32);
  }

  else
  {

    a3(v10, v9 + 32);
  }
}

uint64_t (*SceneDescriptionFoundations.Layer.hasOwnedSubLayers.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrSdfLayerGetHasOwnedSubLayers();
  return SceneDescriptionFoundations.Layer.hasOwnedSubLayers.modify;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0G0C27ReplicationMessagePublisherCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for RIOPxrSdfLayerRef(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for SceneDescriptionFoundations.Layer.ReplicationMessagePublisher();
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v10 + 1, 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        Hasher.init(_seed:)();
        lazy protocol witness table accessor for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef();
        _CFObject.hash(into:)();
        result = Hasher._finalize()();
        v5 = v17 + 64;
        v6 = -1 << *(v17 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
        *(*(v17 + 48) + 8 * v9) = v16;
        *(*(v17 + 56) + 8 * v9) = v15;
        ++*(v17 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for UUID();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a3 & 1);
    v23 = *v4;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = type metadata accessor for __RKEntityInteractionSpecification();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v15);

  return a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v17 = *v4;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for RIOPxrSdfLayerRef(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
      v26 = *v8;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      specialized _NativeDictionary.copy()();
      result = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * result);
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
    return result;
  }

  v28[(result >> 6) + 8] |= 1 << result;
  v30 = (v28[6] + 16 * result);
  *v30 = a5;
  v30[1] = a6;
  v31 = (v28[7] + 32 * result);
  *v31 = a1;
  v31[1] = a2;
  v31[2] = a3;
  v31[3] = a4;
  v32 = v28[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28[2] = v33;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v21 = *v8;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  return a2;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for __RKEntityInteractionSpecification();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v9 = *(a3 + 16);
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v6 = *(a3 + 16);
LABEL_9:
      RIOPxrSdfLayerReplicationReceive();
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed CFStringRef) -> (@unowned Unmanaged<CFStringRef>)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t keypath_get_19Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, Swift::String *a3@<X8>)
{
  v4 = a2(*(*a1 + 16));
  v6 = String.init(_:)(v4);
  result = v6._countAndFlagsBits;
  *a3 = v6;
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x26670D730]();
  if (v8)
  {
    v9 = *(a4 + 16);
    RIOPxrSdfLayerReplicationReceive();
  }
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef)
  {
    type metadata accessor for RIOPxrSdfLayerRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef);
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t ImportSession.getExtraAssetForTag(tag:)()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  String.utf8CString.getter();
  v3 = v2;
  ExtraAssetWithTag = RIOImportSessionGetExtraAssetWithTag();

  return ExtraAssetWithTag;
}

Swift::Bool __swiftcall ImportSession.setExtraAssetForTag(tag:assetRef:)(Swift::String tag, Swift::OpaquePointer assetRef)
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v4 = *(v2 + v3);
  String.utf8CString.getter();
  v5 = v4;
  v6 = RIOImportSessionSetExtraAssetWithTag();

  return v6;
}

Swift::Void __swiftcall ImportSession.removeExtraAssetForTag(tag:)(Swift::String tag)
{
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  String.utf8CString.getter();
  v4 = v3;
  RIOImportSessionRemoveExtraAssetWithTag();
}

uint64_t ImportSession.entity(at:)(uint64_t *a1)
{
  v3 = type metadata accessor for __EntityRef();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v10 = *(v1 + v9);
  EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
  if (EntityAtPrimPath)
  {
    type metadata accessor for Entity();
    v14[3] = MEMORY[0x277D841D8];
    v14[0] = EntityAtPrimPath;
    static __AssetRef.__fromCore(_:)();
    __swift_destroy_boxed_opaque_existential_0(v14);
    EntityAtPrimPath = static Entity.__fromCore(_:)();
    (*(v4 + 8))(v7, v3);
  }

  return EntityAtPrimPath;
}

Swift::Void __swiftcall ImportSession.queueAssetForLoad(_:)(Swift::OpaquePointer a1)
{
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  RIOImportSessionQueueAssetForLoad();
}

void ImportSession.registerAudioAsset(path:tag:asset:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = RIOPxrSdfAssetPathAssetPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  String.utf8CString.getter();
  RIOImportSessionRegisterAudioAsset();
}

uint64_t ImportSession.getCompatibilityFaultsByPrimPath(for:)(uint64_t a1)
{
  v38 = type metadata accessor for ImportSession.EvaluationFault(0);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  *&v54 = *(v50 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v36 - v13;
  v14 = swift_allocObject();
  v52 = v14;
  *(v14 + 16) = MEMORY[0x277D84F98];
  v36 = v14 + 16;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  v53 = a1;

  v41 = v1;
  v40 = v18;
  result = swift_beginAccess();
  v20 = 0;
  v21 = (v15 + 63) >> 6;
  v46 = v8 + 32;
  v45 = (v54 + 8);
  v39 = v56;
  v48 = v8;
  v44 = (v8 + 8);
  v43 = v8 + 16;
  v42 = v7;
  while (v17)
  {
LABEL_11:
    v25 = v47;
    v24 = v48;
    v26 = *(v53 + 48) + *(v48 + 72) * (__clz(__rbit64(v17)) | (v20 << 6));
    v51 = *(v48 + 16);
    v51(v47, v26, v7);
    (*(v24 + 32))(v11, v25, v7);
    v27 = v49;
    __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
    __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
    (*v45)(v27, v50);
    LODWORD(v27) = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
    v28 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() >> 32;
    __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
    *&v29 = __PAIR64__(v28, v27);
    *(&v29 + 1) = v30;
    v54 = v29;
    String.utf8CString.getter();

    VersionFromDeploymentTarget = RERealityFileWriterGetVersionFromDeploymentTarget();

    if (VersionFromDeploymentTarget)
    {
      v32 = *(v41 + v40);
      v56[2] = partial apply for closure #1 in ImportSession.getCompatibilityFaultsByPrimPath(for:);
      v56[3] = v52;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v56[0] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned RIOImportSessionFaultType, @unowned UnsafePointer<Int8>) -> ();
      v56[1] = &block_descriptor_14;
      v33 = _Block_copy(aBlock);
      v34 = v32;

      RIOImportSessionGatherFaultRecords();
      _Block_release(v33);

      v7 = v42;
    }

    else
    {
      v22 = v37;
      v7 = v42;
      v51(v37, v11, v42);
      swift_storeEnumTagMultiPayload();
      addFault #1 (_:_:) in ImportSession.getCompatibilityFaultsByPrimPath(for:)(47, 0xE100000000000000, v22, v52);
      outlined destroy of ImportSession.EvaluationFault(v22);
    }

    v17 &= v17 - 1;
    result = (*v44)(v11, v7);
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      swift_beginAccess();
      v35 = *(v52 + 16);

      return v35;
    }

    v17 = *(a1 + 56 + 8 * v23);
    ++v20;
    if (v17)
    {
      v20 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportSession.getAllExtraAssetTags()()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = RIOImportSessionCopyExtraAssetTags();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

char *ImportSession.__allocating_init<A>(contentsOf:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:)(v13, 0, a2, a3, a4);
  (*(v9 + 8))(a1, v8);
  return v14;
}

char *ImportSession.__allocating_init<A>(core:entityType:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ImportSession.init<A>(core:entityType:)(a1, a2);
}

uint64_t key path setter for ImportSession.deploymentTarget : ImportSession(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, &v11 - v6, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  outlined assign with take of __REAssetBundle.ExportOptions.DeploymentTarget?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t ImportSession.deploymentTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  return outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v1 + v3, a1, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
}

uint64_t ImportSession.deploymentTarget.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  outlined assign with take of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, v1 + v3);
  return swift_endAccess();
}

void ImportSession.register(builderGenerator:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  aBlock[4] = partial apply for closure #1 in ImportSession.register(builderGenerator:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  aBlock[3] = &block_descriptor_9;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v9);
}

uint64_t closure #1 in ImportSession.register(builderGenerator:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for Prim();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = a1;
    v9 = a3(v7);
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      ObjectType = swift_getObjectType();
      Builder.generateCore(primRef:)(v8, ObjectType, v12);
      Builder.generateOutputs()();
      v14 = *(v7 + 16);

      v15 = RIOPxrUsdObjectCopyPath();
      v16 = OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath;
      swift_beginAccess();
      v17 = *(v6 + v16);
      if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        swift_endAccess();
      }

      else
      {

        swift_endAccess();
        v21 = *(v7 + 16);
        v22 = RIOPxrUsdObjectCopyPath();
        swift_beginAccess();
        v23 = *(v6 + v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v6 + v16);
        *(v6 + v16) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v22, isUniquelyReferenced_nonNull_native);

        *(v6 + v16) = v42;
        swift_endAccess();
      }

      v25 = *(v7 + 16);
      v26 = RIOPxrUsdObjectCopyPath();

      swift_beginAccess();
      v28 = specialized Dictionary.subscript.modify(v41, v26);
      v29 = *v27;
      if (*v27)
      {
        v30 = v27;
        swift_unknownObjectRetain();
        v31 = swift_isUniquelyReferenced_nonNull_native();
        *v30 = v29;
        if ((v31 & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
          *v30 = v29;
        }

        v32 = v29[2];
        v33 = v29[3];
        v34 = v32 + 1;
        if (v32 >= v33 >> 1)
        {
          v40 = v32 + 1;
          v37 = v29;
          v38 = v29[2];
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v32 + 1, 1, v37);
          v32 = v38;
          v34 = v40;
          v29 = v39;
          *v30 = v39;
        }

        v29[2] = v34;
        v35 = &v29[2 * v32];
        v35[4] = v11;
        v35[5] = v12;
        (v28)(v41, 0);
      }

      else
      {
        (v28)(v41, 0);
      }

      swift_endAccess();

      v36 = Builder.core.getter(ObjectType, v12);
      swift_unknownObjectRelease();

      return v36;
    }

    else
    {

      return 0;
    }
  }

  return result;
}