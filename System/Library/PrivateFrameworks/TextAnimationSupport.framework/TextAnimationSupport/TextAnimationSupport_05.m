CGPoint __swiftcall Text.Effect.InteractionMetrics.displacedPoint(from:activeOrigin:)(CGPoint from, CGPoint activeOrigin)
{
  y = from.y;
  x = from.x;
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = activeOrigin.y;
    v8 = activeOrigin.x;
    v9 = 0;
    v10 = (v5 + 120);
    while (1)
    {
      if (v9 >= *(v5 + 16))
      {
        __break(1u);
        return from;
      }

      v11 = *(v10 - 9);
      v12 = *v10;
      v13 = *(v10 - 4);
      v14 = *(v10 - 2) + *(v10 - 3);
      v26.origin.x = v8;
      v26.origin.y = v7;
      v26.size.width = *v10;
      v26.size.height = v14;
      v25.x = x;
      v25.y = y;
      if (CGRectContainsPoint(v26, v25))
      {
        break;
      }

      ++v9;
      v8 = v8 + v12;
      v10 += 12;
      if (v6 == v9)
      {
        goto LABEL_6;
      }
    }

    v27.origin.x = v8;
    v27.origin.y = v7;
    v27.size.width = v12;
    v27.size.height = v14;
    v22 = x - CGRectGetMinX(v27);
    v28.origin.x = v8;
    v28.origin.y = v7;
    v28.size.width = v12;
    v28.size.height = v14;
    v20 = v22 / CGRectGetWidth(v28);
    if (v20 >= 0.0 && v20 <= 1.0)
    {
      x = v13 * v20 + x - v11 - v12 * v20;
      goto LABEL_8;
    }

    type metadata accessor for [Text.Effect.InteractionMetrics.Element](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_195CC8D00;
    _StringGuts.grow(_:)(38);

    v16 = 0x8000000195CDF220;
    v17 = 0xD000000000000011;
  }

  else
  {
LABEL_6:
    type metadata accessor for [Text.Effect.InteractionMetrics.Element](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_195CC8D00;
    _StringGuts.grow(_:)(38);

    v16 = 0x8000000195CDF240;
    v17 = 0xD00000000000001BLL;
  }

  v23 = v17;
  v24 = v16;
  v18 = StaticString.description.getter();
  MEMORY[0x19A8BD680](v18);

  MEMORY[0x19A8BD680](58, 0xE100000000000000);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v19);

  MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 32) = v23;
  *(v15 + 40) = v24;
  print(_:separator:terminator:)();

LABEL_8:
  from.x = x;
  from.y = y;
  return from;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.FlatPath.Elements(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + v3 + 32);
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Effect.FlatPath.Elements@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.FlatPath.Elements@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance Text.Effect.FlatPath.Elements(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.FlatPath.Elements()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t closure #1 in Text.Effect.FlatPath.init(_:)(__int128 *a1, uint64_t *a2, char **a3)
{
  v5 = *(a1 + 48);
  if (v5 <= 1)
  {
    v62 = *a1;
    if (*(a1 + 48))
    {
      v44 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
        *a3 = v44;
      }

      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      v48 = v47 + 1;
      v49 = v62;
      if (v47 >= v46 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v44);
        v49 = v62;
        v48 = v47 + 1;
        v44 = v57;
        *a3 = v57;
      }

      *(v44 + 2) = v48;
      *&v44[16 * v47 + 32] = v49;
      v19 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v19;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
        *a2 = result;
      }

      v22 = *(v19 + 16);
      v50 = *(v19 + 24);
      v23 = v22 + 1;
      if (v22 < v50 >> 1)
      {
        v24 = 2;
        goto LABEL_47;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v22 + 1, 1, v19);
      v19 = result;
      v24 = 2;
    }

    else
    {
      v25 = *a3;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        *a3 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v30 = v62;
      if (v28 >= v27 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
        v30 = v62;
        v29 = v28 + 1;
        v25 = v56;
        *a3 = v56;
      }

      *(v25 + 2) = v29;
      *&v25[16 * v28 + 32] = v30;
      v19 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v19;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
        *a2 = result;
      }

      v22 = *(v19 + 16);
      v31 = *(v19 + 24);
      v23 = v22 + 1;
      if (v22 < v31 >> 1)
      {
        v24 = 1;
        goto LABEL_47;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v22 + 1, 1, v19);
      v24 = 1;
      v19 = result;
    }

LABEL_53:
    *a2 = v19;
    goto LABEL_47;
  }

  if (v5 == 2)
  {
    v60 = a1[1];
    v63 = *a1;
    v32 = *a3;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v32;
    if ((v33 & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      *a3 = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    v36 = v35 + 1;
    v38 = v60;
    v37 = v63;
    if (v35 >= v34 >> 1)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
      v38 = v60;
      v37 = v63;
      v36 = v35 + 1;
      v32 = v51;
      *a3 = v51;
    }

    *(v32 + 2) = v36;
    *&v32[16 * v35 + 32] = v38;
    v39 = *a3;
    v41 = *(*a3 + 2);
    v40 = *(*a3 + 3);
    if (v41 >= v40 >> 1)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
      v37 = v63;
      v39 = v52;
      *a3 = v52;
    }

    *(v39 + 2) = v41 + 1;
    *&v39[16 * v41 + 32] = v37;
    v19 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v19;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
      *a2 = result;
    }

    v22 = *(v19 + 16);
    v42 = *(v19 + 24);
    v23 = v22 + 1;
    if (v22 < v42 >> 1)
    {
      v24 = 4;
      goto LABEL_47;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v22 + 1, 1, v19);
    v19 = result;
    v24 = 4;
    goto LABEL_53;
  }

  if (v5 != 3)
  {
    v19 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v19;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
      *a2 = result;
    }

    v22 = *(v19 + 16);
    v43 = *(v19 + 24);
    v23 = v22 + 1;
    if (v22 < v43 >> 1)
    {
      v24 = 0;
      goto LABEL_47;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v22 + 1, 1, v19);
    v19 = result;
    v24 = 0;
    goto LABEL_53;
  }

  v59 = a1[1];
  v61 = *a1;
  v58 = a1[2];
  v6 = *a3;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((v7 & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    *a3 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  v10 = v9 + 1;
  v12 = v59;
  v11 = v61;
  if (v9 >= v8 >> 1)
  {
    v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v12 = v59;
    v11 = v61;
    v10 = v9 + 1;
    v6 = v53;
    *a3 = v53;
  }

  *(v6 + 2) = v10;
  *&v6[16 * v9 + 32] = v12;
  v13 = *a3;
  v15 = *(*a3 + 2);
  v14 = *(*a3 + 3);
  if (v15 >= v14 >> 1)
  {
    v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
    v11 = v61;
    v13 = v54;
    *a3 = v54;
  }

  *(v13 + 2) = v15 + 1;
  *&v13[16 * v15 + 32] = v58;
  v16 = *a3;
  v18 = *(*a3 + 2);
  v17 = *(*a3 + 3);
  if (v18 >= v17 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    v11 = v61;
    v16 = v55;
    *a3 = v55;
  }

  *(v16 + 2) = v18 + 1;
  *&v16[16 * v18 + 32] = v11;
  v19 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v19;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
    *a2 = result;
  }

  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    v19 = result;
    v24 = 3;
    goto LABEL_53;
  }

  v24 = 3;
LABEL_47:
  *(v19 + 16) = v23;
  *(v19 + v22 + 32) = v24;
  return result;
}

void specialized Path.init(elements:points:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) != a2)
  {
    goto LABEL_44;
  }

  Path.init()();
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_31:
    *a4 = v17;
    *(a4 + 16) = v18;
    *(a4 + 32) = v19;
    return;
  }

  v9 = 0;
  v10 = (a1 + 32);
  v11 = a3 + 32;
  while (1)
  {
    v13 = *v10++;
    v12 = v13;
    if (v13 <= 1)
    {
      if (v12)
      {
        if (v9 >= a2)
        {
          goto LABEL_35;
        }

        Path.move(to:)(*(v11 + 16 * v9));
        v15 = __OFADD__(v9++, 1);
        if (v15)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Path.closeSubpath()();
      }

      goto LABEL_5;
    }

    if (v12 == 2)
    {
      if (v9 >= a2)
      {
        goto LABEL_34;
      }

      Path.addLine(to:)(*(v11 + 16 * v9));
      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        goto LABEL_39;
      }

      goto LABEL_5;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v9 >= a2)
    {
      goto LABEL_33;
    }

    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_36;
    }

    if (v16 >= a2)
    {
      goto LABEL_40;
    }

    Path.addQuadCurve(to:control:)(*(v11 + 16 * v16), *(v11 + 16 * v9));
    v15 = __OFADD__(v9, 2);
    v9 += 2;
    if (v15)
    {
      __break(1u);
      goto LABEL_31;
    }

LABEL_5:
    if (!--v8)
    {
      goto LABEL_31;
    }
  }

  if (v9 < a2)
  {
    if (v9 + 1 >= a2)
    {
      goto LABEL_37;
    }

    v14 = v9 + 2;
    if (__OFADD__(v9, 2))
    {
      goto LABEL_41;
    }

    if (v14 >= a2)
    {
      goto LABEL_42;
    }

    Path.addCurve(to:control1:control2:)(*(v11 + 16 * v14), *(v11 + 16 * v9), *(v11 + 16 * (v9 + 1)));
    v15 = __OFADD__(v9, 3);
    v9 += 3;
    if (v15)
    {
      goto LABEL_43;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
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
LABEL_43:
  __break(1u);
LABEL_44:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for Text.Effect.FlatPath.Element(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.FlatPath.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.FlatPath(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.FlatPath(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements()
{
  result = lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements;
  if (!lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements;
  if (!lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements;
  if (!lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements;
  if (!lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements);
  }

  return result;
}

void type metadata accessor for Range<Int>()
{
  if (!lazy cache variable for type metadata for Range<Int>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Int>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.FlatPath.Elements> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.FlatPath.Elements>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.FlatPath.Elements>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Text.Effect.FlatPath.Elements and conformance Text.Effect.FlatPath.Elements();
    v7 = a3(a1, &type metadata for Text.Effect.FlatPath.Elements, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Int>();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.FlatPath.Elements> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.FlatPath.Elements>(255, &lazy cache variable for type metadata for Slice<Text.Effect.FlatPath.Elements>, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.FlatPath.Element and conformance Text.Effect.FlatPath.Element()
{
  result = lazy protocol witness table cache variable for type Text.Effect.FlatPath.Element and conformance Text.Effect.FlatPath.Element;
  if (!lazy protocol witness table cache variable for type Text.Effect.FlatPath.Element and conformance Text.Effect.FlatPath.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FlatPath.Element and conformance Text.Effect.FlatPath.Element);
  }

  return result;
}

uint64_t specialized Collection.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  swift_beginAccess();
  if (*(*(v1 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v2, v3), (v4 & 1) != 0))
  {
    swift_endAccess();
    result = Text.Effect.Keyframes.subscript.getter(v2, v3, v1);
    if (result)
    {
      v6 = *(result + 16);

      return v6 == 0;
    }
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_10;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  swift_beginAccess();
  if (!*(*(v4 + 48) + 16))
  {
    goto LABEL_9;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_endAccess();
  result = Text.Effect.Keyframes.subscript.getter(v5, v6, v4);
  if (result)
  {
    v9 = *(result + 16);

    if (v3 <= v9)
    {
      return v3;
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1)
{
  v2 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_10;
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16))
  {
    goto LABEL_9;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_endAccess();
  result = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
  if (result)
  {
    v8 = *(result + 16);

    if (v2 < v8)
    {
      return v2;
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  swift_beginAccess();
  if (!*(*(v8 + 48) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v9, v10), (v11 & 1) == 0))
  {
LABEL_8:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_9;
  }

  swift_endAccess();
  result = Text.Effect.Keyframes.subscript.getter(v9, v10, v8);
  if (result)
  {
    v13 = *(result + 16);

    if ((a1 & 0x8000000000000000) == 0 && v13 >= a2)
    {
      type metadata accessor for Slice<Text.Effect.BaseContent>(0);
      result = _s20TextAnimationSupport21FragmentRangeSequence33_21E32AD09F0FD8D6EF845FC1439C8B25LLV8IteratorVWOcTm_0(v4, a3 + *(v14 + 40), type metadata accessor for Text.Effect.BaseContent);
      *a3 = a1;
      a3[1] = a2;
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *protocol witness for Strideable.distance(to:) in conformance Text.Effect.ClusterIndex@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Text.Effect.ClusterIndex@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *protocol witness for static Strideable._step(after:from:by:) in conformance Text.Effect.ClusterIndex(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.ClusterIndex()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.ClusterIndex()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.SubcomponentKeyPath()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  MEMORY[0x19A8BDE60](v2);
  MEMORY[0x19A8BDE60](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Text.Effect.SubcomponentKeyPath()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x19A8BDE60](*v0);
  MEMORY[0x19A8BDE60](v1);
  return MEMORY[0x19A8BDE60](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.SubcomponentKeyPath()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  MEMORY[0x19A8BDE60](v2);
  MEMORY[0x19A8BDE60](v3);
  return Hasher._finalize()();
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.SubcomponentKeyPath(void *result, void *a2)
{
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else
  {
    if (*a2 != *result)
    {
      return 0;
    }

    v2 = result[1];
    v3 = a2[1];
    if (!__OFSUB__(v3, v2))
    {
      if (v3 == v2)
      {
        v4 = result[2];
        v5 = a2[2];
        if (!__OFSUB__(v5, v4))
        {
          return (v5 == v4);
        }

        goto LABEL_10;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t Text.Effect.BaseContent.init(keyframes:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v69 = type metadata accessor for Text.Layout.Line();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6981010];
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v67 = v13;
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - v16;
  v68 = type metadata accessor for Text.Layout.Run();
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v12, MEMORY[0x1E69E7BE0]);
  v66 = v19;
  v58 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  *a4 = a1;
  a4[1] = a2;
  v57 = a4;
  a4[2] = a3;
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();

  v65 = v21;
  RangeSet.init()();
  v22 = Text.Effect.Keyframes.subscript.getter(a2, a3, a1);

  if (!v22)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v24 = v67;
  v63 = *(v22 + 16);
  if (v63)
  {
    v25 = 0;
    v61 = v22;
    v62 = v22 + 32;
    v70 = (v71 + 16);
    v26 = (v71 + 8);
    v27 = (v64 + 8);
    while (v25 < *(v22 + 16))
    {
      v64 = v25;
      v28 = *(v62 + 8 * v25);
      v71 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
      v29 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterOffset;
      v31 = *(v28 + 16);
      v30 = *(v28 + 24);

      if (v31 != v30)
      {
        v32 = *v70;
        while (1)
        {
          v33 = v69;
          v32(v9, v28 + v71, v69);
          Text.Layout.Line.subscript.getter();
          result = (*v26)(v9, v33);
          if (v31 < *(v28 + 16) || v31 >= *(v28 + 24))
          {
            break;
          }

          v35 = Text.Layout.Run.characterRange.getter();
          v37 = v36;
          result = (*v27)(v18, v68);
          v38 = *(v28 + v29);
          v39 = v35 + v38;
          if (__OFADD__(v35, v38))
          {
            goto LABEL_27;
          }

          v40 = __OFADD__(v37, v38);
          v41 = v37 + v38;
          if (v40)
          {
            goto LABEL_28;
          }

          if (v41 < v39)
          {
            goto LABEL_29;
          }

          v72[4] = v39;
          v72[5] = v41;
          if (__OFSUB__(v41, v39))
          {
            goto LABEL_30;
          }

          if (v41 != v39)
          {
            v42 = RangeSet._ranges.modify();
            RangeSet.Ranges._insert(contentsOf:)();
            v42(v72, 0);
          }

          if (++v31 == *(v28 + 24))
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        break;
      }

LABEL_4:
      v25 = v64 + 1;

      v24 = v67;
      v22 = v61;
      if (v63 == v25)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_20:

  v71 = type metadata accessor for Text.Effect.BaseContent(0);
  v43 = v57;
  (*(v58 + 16))(v57 + *(v71 + 24), v65, v66);
  v44 = v59;
  RangeSet.ranges.getter();
  (*(v60 + 16))(v54, v44, v24);
  _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_0(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  v45 = v56;
  dispatch thunk of Sequence.makeIterator()();
  v46 = *(v55 + 36);
  _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_0(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  v47 = 0;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v45 + v46) == v72[0])
    {
      break;
    }

    v48 = dispatch thunk of Collection.subscript.read();
    v50 = *v49;
    v51 = v49[1];
    v48(v72, 0);
    result = dispatch thunk of Collection.formIndex(after:)();
    v52 = v51 - v50;
    if (__OFSUB__(v51, v50))
    {
      goto LABEL_31;
    }

    v40 = __OFADD__(v47, v52);
    v47 += v52;
    v24 = v67;
    if (v40)
    {
      __break(1u);
      break;
    }
  }

  outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v45, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
  (*(v60 + 8))(v59, v24);
  result = (*(v58 + 8))(v65, v66);
  *(v43 + *(v71 + 28)) = v47;
  return result;
}

uint64_t Text.Effect.DrawableContent.init(fragment:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  Text.Effect.BaseContent.init(keyframes:key:)(v4, v5, v6, a2);
  v7 = type metadata accessor for Text.Effect.DrawableFragment();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

double Text.Effect.DrawableContent.subscript.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];

  Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(v5, v6, v7, a1, v10);
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = *&v11;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  return result;
}

uint64_t Text.Effect.DrawableContent.startIndex.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  swift_beginAccess();
  if (*(*(v2 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v1, v3), (v4 & 1) != 0))
  {
    swift_endAccess();
    return 0;
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

uint64_t Text.Effect.DrawableContent.endIndex.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  swift_beginAccess();
  v4 = *(v2 + 48);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
    swift_endAccess();
    return *(v7 + 16);
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Effect.DrawableContent<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();

  return MEMORY[0x1EEE69830](a1, a2, a3, a4, v8);
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Effect.DrawableContent<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();

  return MEMORY[0x1EEE69840](a1, a2, a3, a4, v8);
}

uint64_t protocol witness for Collection.startIndex.getter in conformance Text.Effect.DrawableContent<A>@<X0>(void *a1@<X8>)
{
  result = Text.Effect.DrawableContent.startIndex.getter();
  *a1 = 0;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Text.Effect.DrawableContent<A>@<X0>(uint64_t *a1@<X8>)
{
  result = Text.Effect.DrawableContent.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.DrawableContent<A>(uint64_t *a1, unint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x60uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 88) = Text.Effect.DrawableContent.subscript.read((v6 + 56), *a2, a3);
  v9 = *(v8 + 8);
  v10 = *(v8 + 48);
  v12 = *(v8 + 16);
  v11 = *(v8 + 32);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = v12;
  *(v7 + 32) = v11;
  *(v7 + 48) = v10;
  return protocol witness for Collection.subscript.read in conformance Text.Effect.DrawableContent<A>;
}

void (*Text.Effect.DrawableContent.subscript.read(uint64_t *a1, unint64_t a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  *a1 = v6;
  *(v6 + 56) = a3;
  Text.Effect.DrawableContent.subscript.getter(a2, v6);
  return Text.Effect.DrawableContent.subscript.read;
}

void Text.Effect.DrawableContent.subscript.read(void **a1)
{
  v1 = *a1;
  v2 = type metadata accessor for Text.Effect.DrawableFragment();
  (*(*(v2 - 8) + 8))(v1, v2);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance Text.Effect.DrawableContent<A>()
{
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance Text.Effect.DrawableContent<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for BidirectionalCollection.distance(from:to:) in conformance Text.Effect.DrawableContent<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance Text.Effect.DrawableContent<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Text.Effect.DrawableContent<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Effect.DrawableContent<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, unint64_t))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();
  return a4(&v9, a2, WitnessTable, v7);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Text.Effect.DrawableContent<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(type metadata accessor for IndexingIterator() + 36);
  Text.Effect.DrawableContent.startIndex.getter();
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance Text.Effect.DrawableContent<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.DrawableContent<A>(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t Text.Effect.BaseContent.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for Text.Layout.Run();
  v22 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Layout.RunSlice?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Layout.RunSlice();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Layout.Cluster();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Collection.first.getter(v25);
  v14 = v25[0];
  if (v25[0])
  {
    v21 = v1;
    v15 = *(v25[3] + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    if (*(v15 + 16))
    {
      v20[0] = v25[1];
      v20[1] = v25[2];
      v20[2] = v25[4];
      v20[3] = v25[5];
      v20[4] = v25[6];
      (*(v11 + 16))(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);
      specialized Collection.first.getter(v6);
      v16 = v23;
      if ((*(v23 + 48))(v6, 1, v7) != 1)
      {
        (*(v16 + 32))(v9, v6, v7);
        Text.Layout.RunSlice.run.getter();
        Text.Layout.Run.layoutDirection.getter();
        outlined consume of Text.Effect.BaseFragment?(v14);
        (*(v22 + 8))(v3, v21);
        (*(v16 + 8))(v9, v7);
        return (*(v11 + 8))(v13, v10);
      }

      (*(v11 + 8))(v13, v10);
      outlined consume of Text.Effect.BaseFragment?(v14);
      outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v6, type metadata accessor for Text.Layout.RunSlice?);
    }

    else
    {
      outlined consume of Text.Effect.BaseFragment?(v25[0]);
    }
  }

  v17 = *MEMORY[0x1E697E7D0];
  v18 = type metadata accessor for LayoutDirection();
  return (*(*(v18 - 8) + 104))(v24, v17, v18);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Text.Effect.BaseContent@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Effect.BaseContent(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance Text.Effect.BaseContent@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  swift_beginAccess();
  if (*(*(v4 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v3, v5), (v6 & 1) != 0))
  {
    result = swift_endAccess();
    *a1 = 0;
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Text.Effect.BaseContent@<X0>(void *a1@<X8>)
{
  result = Text.Effect.Keyframes.subscript.getter(v1[1], v1[2], *v1);
  if (result)
  {
    v4 = *(result + 16);

    *a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.BaseContent(uint64_t *a1, unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = Text.Effect.BaseContent.subscript.read((v4 + 56), *a2);
  v7 = *(v6 + 8);
  v8 = *(v6 + 48);
  v10 = *(v6 + 16);
  v9 = *(v6 + 32);
  *v5 = *v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = v10;
  *(v5 + 32) = v9;
  *(v5 + 48) = v8;
  return protocol witness for Collection.subscript.read in conformance Text.Effect.BaseContent;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.DrawableContent<A>(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 88))();

  free(v1);
}

void (*Text.Effect.BaseContent.subscript.read(uint64_t *a1, unint64_t a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];

  v10 = Text.Effect.Keyframes.subscript.getter(v8, v9, v7);
  if (!v10)
  {
    goto LABEL_15;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v11 = *(v10 + 16);
  if (v11 > a2)
  {
    v12 = (v10 + 32);
    v13 = *(v10 + 32 + 8 * a2);
    v14 = 0;
    if (!a2)
    {
LABEL_11:

      *v6 = v7;
      v6[1] = v8;
      v6[2] = v9;
      v6[3] = v13;
      v6[4] = a2;
      v6[5] = v11;
      v6[6] = v14;
      return Text.Effect.BaseContent.subscript.read;
    }

    v15 = a2;
    while (1)
    {
      v16 = *(*(*v12 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      ++v12;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void Text.Effect.BaseContent.subscript.read(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of Text.Effect.BaseFragment(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance Text.Effect.BaseContent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RandomAccessCollection<>.indices.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.BaseContent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3);
  if (a2 < 1)
  {
    if (v7 <= 0 && v7 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v6, a2);
    v9 = 0;
    goto LABEL_11;
  }

  if (v7 < 0 || v7 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v9 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v9;
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance Text.Effect.BaseContent@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance Text.Effect.BaseContent(unint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Text.Effect.BaseContent@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  _s20TextAnimationSupport21FragmentRangeSequence33_21E32AD09F0FD8D6EF845FC1439C8B25LLV8IteratorVWOcTm_0(v1, a1, type metadata accessor for Text.Effect.BaseContent);
  v4 = *v1;
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  swift_beginAccess();
  if (*(*(v4 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6, v5), (v7 & 1) != 0))
  {
    type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
    v9 = *(v8 + 36);
    swift_endAccess();
    *(a1 + v9) = 0;
    return outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v2, type metadata accessor for Text.Effect.BaseContent);
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.BaseContent()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v0, type metadata accessor for Text.Effect.BaseContent);
  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.ChunkIndex()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  MEMORY[0x19A8BDE60](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Text.Effect.ChunkIndex()
{
  v1 = v0[1];
  MEMORY[0x19A8BDE60](*v0);
  return MEMORY[0x19A8BDE60](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.ChunkIndex()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v1);
  MEMORY[0x19A8BDE60](v2);
  return Hasher._finalize()();
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.ChunkIndex(void *result, void *a2)
{
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else
  {
    if (*a2 != *result)
    {
      return 0;
    }

    v2 = result[1];
    v3 = a2[1];
    if (!__OFSUB__(v3, v2))
    {
      return (v3 == v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.ChunkCollection(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *v2 + 32 * v3;
    v5 = *(v4 + 48);
    *result = *(v4 + 32);
    *(result + 1) = v5;
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.ChunkCollection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.ChunkCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

void ClusterIndexSequence.Iterator.next()(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ClusterIndexSequence.Iterator(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (v1 + *(v6 + 36));
  v8 = *v7;
  v9 = (v1 + *(v6 + 32));
  v10 = *v9;
  if (*v7 >= *v9)
  {
    if (__OFSUB__(v10, v8))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v10 != v8 || v7[1] >= v9[1])
    {
      v11 = 0;
      v26 = 0;
      v13 = 0;
      v17 = 0;
      v8 = 0;
      v15 = 0;
      v18 = 0;
      v22 = 0;
      goto LABEL_21;
    }
  }

  _s20TextAnimationSupport21FragmentRangeSequence33_21E32AD09F0FD8D6EF845FC1439C8B25LLV8IteratorVWOcTm_0(v1, v5, type metadata accessor for ClusterIndexSequence.Iterator);
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[2];

  v28 = v12;
  v14 = Text.Effect.Keyframes.subscript.getter(v12, v13, v11);
  if (v14)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      v15 = *(v14 + 16);
      if (v8 >= v15)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v16 = (v14 + 32);
      v17 = *(v14 + 32 + 8 * v8);
      v18 = 0;
      if (!v8)
      {
LABEL_9:

        outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v5, type metadata accessor for Text.Effect.BaseContent);
        v22 = v7[1];
        v23 = v22 + 1;
        if (!__OFADD__(v22, 1))
        {
          v7[1] = v23;
          v24 = *(*(v17 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v21 = __OFADD__(v18, v24);
          v25 = v18 + v24;
          if (!v21)
          {
            if (v25 >= v18)
            {
              if (!__OFSUB__(v25, v23))
              {
                if (v25 == v23)
                {
                  if (__OFADD__(v8, 1))
                  {
LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

                  *v7 = v8 + 1;
                }

                v26 = v28;
LABEL_21:
                *a1 = v11;
                a1[1] = v26;
                a1[2] = v13;
                a1[3] = v17;
                a1[4] = v8;
                a1[5] = v15;
                a1[6] = v18;
                a1[7] = v22;
                return;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v19 = v8;
      while (1)
      {
        v20 = *(*(*v16 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v21 = __OFADD__(v18, v20);
        v18 += v20;
        if (v21)
        {
          break;
        }

        ++v16;
        if (!--v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_31:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double protocol witness for IteratorProtocol.next() in conformance ClusterIndexSequence.Iterator@<D0>(_OWORD *a1@<X8>)
{
  ClusterIndexSequence.Iterator.next()(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ClusterIndexSequence()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v0, type metadata accessor for ClusterIndexSequence);
  return v1;
}

void FragmentRangeSequence.Iterator.next()(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FragmentRangeSequence.Iterator(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (v1 + *(v6 + 36));
  v8 = *v7;
  v9 = (v1 + *(v6 + 32));
  v10 = *v9;
  if (*v7 >= *v9)
  {
    if (__OFSUB__(v10, v8))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v10 != v8 || v7[1] >= v9[1])
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v17 = 0;
      v8 = 0;
      v22 = 0;
      v18 = 0;
      v23 = 0;
      v24 = 0;
LABEL_32:
      *a1 = v28;
      a1[1] = v29;
      a1[2] = v30;
      a1[3] = v17;
      a1[4] = v8;
      a1[5] = v22;
      a1[6] = v18;
      a1[7] = v23;
      a1[8] = v24;
      return;
    }
  }

  _s20TextAnimationSupport21FragmentRangeSequence33_21E32AD09F0FD8D6EF845FC1439C8B25LLV8IteratorVWOcTm_0(v1, v5, type metadata accessor for FragmentRangeSequence.Iterator);
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[2];

  v35 = v12;
  v36 = v11;
  v14 = Text.Effect.Keyframes.subscript.getter(v12, v13, v11);
  if (v14)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      v15 = *(v14 + 16);
      if (v8 >= v15)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v16 = (v14 + 32);
      v17 = *(v14 + 32 + 8 * v8);
      v18 = 0;
      if (!v8)
      {
LABEL_9:
        v34 = v13;
        v22 = v15;

        outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v5, type metadata accessor for Text.Effect.BaseContent);
        if (!__OFSUB__(v10, v8))
        {
          if (v10 == v8)
          {
            v23 = v7[1];
            v24 = v9[1];
            if (v24 < v23)
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v25 = *(*(v17 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v21 = __OFADD__(v18, v25);
            v26 = v18 + v25;
            v27 = v21;
          }

          else
          {
            v31 = *(*(v17 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v26 = v18 + v31;
            v27 = __OFADD__(v18, v31);
            if (__OFADD__(v18, v31))
            {
              goto LABEL_42;
            }

            v23 = v7[1];
            if (v26 < v18 || v26 < v23)
            {
              goto LABEL_43;
            }

            v24 = v26;
          }

          v30 = v34;
          if (!v27)
          {
            if (v26 >= v18)
            {
              v7[1] = v26;
              if (!__OFADD__(v8, 1))
              {
                *v7 = v8 + 1;
                v29 = v35;
                v28 = v36;
                goto LABEL_32;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v19 = v8;
      while (1)
      {
        v20 = *(*(*v16 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v21 = __OFADD__(v18, v20);
        v18 += v20;
        if (v21)
        {
          break;
        }

        ++v16;
        if (!--v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_44:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 protocol witness for IteratorProtocol.next() in conformance FragmentRangeSequence.Iterator@<Q0>(uint64_t a1@<X8>)
{
  FragmentRangeSequence.Iterator.next()(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

int *protocol witness for Sequence.makeIterator() in conformance ClusterIndexSequence@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = (v3 + *(a1 + 20));
  v7 = *v6;
  v8 = v6[1];
  v9 = (v3 + *(a1 + 24));
  v10 = *v9;
  v11 = v9[1];
  outlined init with take of Text.Effect.BaseContent(v3, a3);
  result = a2(0);
  v13 = (a3 + result[5]);
  *v13 = v7;
  v13[1] = v8;
  v14 = (a3 + result[6]);
  *v14 = v10;
  v14[1] = v11;
  v15 = (a3 + result[7]);
  *v15 = v7;
  v15[1] = v8;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance FragmentRangeSequence()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(v0, type metadata accessor for FragmentRangeSequence);
  return v1;
}

uint64_t _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Text.Effect.ChunkCollection.init(content:)(uint64_t *a1)
{
  if (specialized Collection.isEmpty.getter())
  {
    v2 = 0;
LABEL_12:
    v16 = *a1;
    v17 = a1[1];
    v18 = a1[2];
    swift_beginAccess();
    if (*(*(v16 + 48) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      if (v19)
      {
        swift_endAccess();
        v20 = Text.Effect.Keyframes.subscript.getter(v17, v18, v16);
        if (v20)
        {
          v21 = *(v20 + 16);

          type metadata accessor for _ContiguousArrayStorage<Text.Effect.Chunk>();
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_195CC8D00;
          *(v22 + 32) = 0;
          *(v22 + 40) = 0;
          *(v22 + 48) = v21;
          *(v22 + 56) = v2;
          outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(a1, type metadata accessor for Text.Effect.BaseContent);
          return v22;
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    swift_endAccess();
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = Text.Effect.Keyframes.subscript.getter(v4, v5, *a1);
  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = *(v6 + 16);

  v8 = specialized RandomAccessCollection<>.index(before:)(v7);

  v9 = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
  if (v9)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= *(v9 + 16))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = (v9 + 32);
      v11 = *(v9 + 32 + 8 * v8);
      v12 = 0;
      if (!v8)
      {
LABEL_10:

        v15 = *(*(v11 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);

        v2 = v12 + v15;
        if (!__OFADD__(v12, v15))
        {
          if (v2 >= v12)
          {
            goto LABEL_12;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      while (1)
      {
        v13 = *(*(*v10 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v14 = __OFADD__(v12, v13);
        v12 += v13;
        if (v14)
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Text.Effect.Chunk>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Chunk>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Chunk>);
    }
  }
}

uint64_t outlined destroy of IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for Text.Effect.BaseContent()
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(319, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for Text.Effect.DrawableContent()
{
  result = type metadata accessor for Text.Effect.BaseContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex()
{
  result = lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier()
{
  result = lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Text.Effect.FragmentIdentifier> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(255, &lazy cache variable for type metadata for Range<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<Text.Effect.BaseContent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Text.Effect.BaseContent(255);
    v7 = lazy protocol witness table accessor for type ClusterIndexSequence.Iterator and conformance ClusterIndexSequence.Iterator(&lazy protocol witness table cache variable for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent, type metadata accessor for Text.Effect.BaseContent);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent()
{
  return lazy protocol witness table accessor for type ClusterIndexSequence.Iterator and conformance ClusterIndexSequence.Iterator(&lazy protocol witness table cache variable for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent, type metadata accessor for Text.Effect.BaseContent);
}

{
  return lazy protocol witness table accessor for type ClusterIndexSequence.Iterator and conformance ClusterIndexSequence.Iterator(&lazy protocol witness table cache variable for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent, type metadata accessor for Text.Effect.BaseContent);
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.BaseContent> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<Text.Effect.BaseContent>(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Text.Layout.RunSlice?()
{
  if (!lazy cache variable for type metadata for Text.Layout.RunSlice?)
  {
    type metadata accessor for Text.Layout.RunSlice();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Text.Layout.RunSlice?);
    }
  }
}

uint64_t outlined consume of Text.Effect.BaseFragment?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with take of Text.Effect.BaseContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.BaseContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s20TextAnimationSupport21FragmentRangeSequence33_21E32AD09F0FD8D6EF845FC1439C8B25LLV8IteratorVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.BaseContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.BaseContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for ClusterIndexSequence.Iterator()
{
  result = type metadata accessor for Text.Effect.BaseContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ClusterIndexSequence()
{
  result = type metadata accessor for Text.Effect.BaseContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.SubcomponentKeyPath(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.SubcomponentKeyPath(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.SubcomponentIndex and conformance Text.Effect.SubcomponentIndex()
{
  result = lazy protocol witness table cache variable for type Text.Effect.SubcomponentIndex and conformance Text.Effect.SubcomponentIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.SubcomponentIndex and conformance Text.Effect.SubcomponentIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.SubcomponentIndex and conformance Text.Effect.SubcomponentIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.SubcomponentIndex and conformance Text.Effect.SubcomponentIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.SubcomponentIndex and conformance Text.Effect.SubcomponentIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.SubcomponentIndex and conformance Text.Effect.SubcomponentIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.ChunkIndex and conformance Text.Effect.ChunkIndex()
{
  result = lazy protocol witness table cache variable for type Text.Effect.ChunkIndex and conformance Text.Effect.ChunkIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.ChunkIndex and conformance Text.Effect.ChunkIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ChunkIndex and conformance Text.Effect.ChunkIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.SubcomponentKeyPath and conformance Text.Effect.SubcomponentKeyPath()
{
  result = lazy protocol witness table cache variable for type Text.Effect.SubcomponentKeyPath and conformance Text.Effect.SubcomponentKeyPath;
  if (!lazy protocol witness table cache variable for type Text.Effect.SubcomponentKeyPath and conformance Text.Effect.SubcomponentKeyPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.SubcomponentKeyPath and conformance Text.Effect.SubcomponentKeyPath);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection()
{
  result = lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection;
  if (!lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection;
  if (!lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection;
  if (!lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection;
  if (!lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.ChunkCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(255, a2, lazy protocol witness table accessor for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection, &type metadata for Text.Effect.ChunkCollection, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.ChunkCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>.Ranges(255, &lazy cache variable for type metadata for Slice<Text.Effect.ChunkCollection>, lazy protocol witness table accessor for type Text.Effect.ChunkCollection and conformance Text.Effect.ChunkCollection, &type metadata for Text.Effect.ChunkCollection, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ClusterIndexSequence.Iterator and conformance ClusterIndexSequence.Iterator(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BloomTextEffect.LayoutState and conformance BloomTextEffect.LayoutState()
{
  result = lazy protocol witness table cache variable for type BloomTextEffect.LayoutState and conformance BloomTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type BloomTextEffect.LayoutState and conformance BloomTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect.LayoutState and conformance BloomTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomTextEffect.LayoutState and conformance BloomTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type BloomTextEffect.LayoutState and conformance BloomTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomTextEffect.LayoutState and conformance BloomTextEffect.LayoutState);
  }

  return result;
}

id closure #1 in BloomTextEffect.configuration(_:)(void *a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<WeightDeltaModifier>, lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier, &type metadata for WeightDeltaModifier, type metadata accessor for AnyDynamicFontModifier);
  v5 = swift_allocObject();
  v5[1] = a3;
  v5[2].n128_u64[0] = 0x408F400000000000;
  v6 = Text.Effect.Content.modifier(_:)(v5, a1, a2);

  return v6;
}

uint64_t closure #3 in BloomTextEffect.configuration(_:)(double *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  v55[0] = MEMORY[0x1E69E7CC8];
  closure #1 in closure #3 in BloomTextEffect.configuration(_:)(v55, a2);
  v11 = *(a2 + 16);
  v43[0] = *a2;
  v43[1] = v11;
  v44 = *(a2 + 32);
  v45 = *(a2 + 48);
  v39 = v43[0];
  v40 = v11;
  v41 = v44;
  v42 = v45;
  v12 = v55[0];
  outlined init with copy of Text.Effect.DrawableFragment<BloomTextEffect>(a2, &v46, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
  v13 = specialized static Text.Effect.stopMarkers(_:)(v43);
  v15 = Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(a3, v13, v14, 3, v12, 0.0);
  v17 = v16;

  v18 = *(v12 + 16);
  if (v18)
  {
    v38 = v7;
    v19 = v8;
    v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(v18, 0);
    v21 = specialized Sequence._copySequenceContents(initializing:)(&v46, v20 + 4, v18, v12);

    outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
    if (v21 != v18)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v8 = v19;
    v7 = v38;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *&v46 = v20;
  specialized MutableCollection<>.sort(by:)(&v46);
  v22 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v46);

  v46 = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  *&v50 = v15;
  *(&v50 + 1) = v17;
  v51 = v22;
  v23 = exp((v6 + -1.0) * -0.75);
  if (v23 < 0.0)
  {
    v23 = 0.0;
  }

  v52 = v8;
  v53 = v7;
  if (v23 <= 1.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  v54 = v9;
  v55[0] = v10;
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  *(v25 + 24) = v6;
  *(v25 + 32) = v8;
  *(v25 + 40) = v7;
  *(v25 + 48) = v9;
  *(v25 + 56) = v10;
  v26 = v49;
  *(v25 + 96) = v48;
  *(v25 + 112) = v26;
  *(v25 + 128) = v50;
  *(v25 + 144) = v51;
  v27 = v47;
  *(v25 + 64) = v46;
  *(v25 + 80) = v27;
  *(v25 + 152) = v24;
  v28 = swift_allocObject();
  v29 = v49;
  *(v28 + 48) = v48;
  *(v28 + 64) = v29;
  *(v28 + 80) = v50;
  v30 = v51;
  v31 = v47;
  *(v28 + 16) = v46;
  *(v28 + 32) = v31;
  *(v28 + 96) = v30;
  *(v28 + 104) = partial apply for closure #2 in closure #3 in BloomTextEffect.configuration(_:);
  *(v28 + 112) = v25;
  v32 = MEMORY[0x1E69E6F90];
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v28;
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v32);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_195CC8D00;
  *(v34 + 32) = inited;
  v35 = MEMORY[0x1E69E62F8];
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v52, &v39, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo, MEMORY[0x1E69E62F8], type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v53, &v39, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment, v35, type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v54, &v39, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming], type metadata accessor for Text.Effect.Timing.GlyphTiming, MEMORY[0x1E69E62F8], type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
  outlined init with copy of Text.Effect.ChunkCollection(v55, &v39);
  outlined init with copy of Text.Effect.PathInterpolator(&v46, &v39);
  v36 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v34);
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v34 + 32);
  return v36;
}

uint64_t closure #1 in closure #3 in BloomTextEffect.configuration(_:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[4];
  type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  swift_retain_n();
  v7 = Text.Effect.Keyframes.subscript.getter(v4, v6, v3);
  if (!v7)
  {
    goto LABEL_40;
  }

  if (v5 < 0)
  {
    goto LABEL_36;
  }

  v8 = *(v7 + 16);
  if (v5 >= v8)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = (v7 + 32);
  v10 = *(v7 + 32 + 8 * v5);
  v11 = 0;
  if (v5)
  {
    v12 = v5;
    while (1)
    {
      v13 = *(*(*v9 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      ++v9;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_8:

  v38[0] = v3;
  v38[1] = v4;
  v38[2] = v6;
  v38[3] = v10;
  v38[4] = v5;
  v38[5] = v8;
  v38[6] = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, isUniquelyReferenced_nonNull_native, 0.0);
  outlined destroy of Text.Effect.BaseFragment(v38);
  *a1 = v37[0];
  v16 = swift_allocObject();
  *(v16 + 16) = 2;
  v17 = Text.Effect.Keyframes.subscript.getter(v4, v16, v3);
  if (!v17)
  {
LABEL_40:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = *(v17 + 16);
  if (v5 >= v18)
  {
    goto LABEL_38;
  }

  v19 = *(v17 + 32 + 8 * v5);
  if (v5)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = *(*(*(v17 + 32 + 8 * v20) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v21, v23);
      v21 += v23;
      if (v14)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v5, v22))
      {
        goto LABEL_32;
      }

      ++v20;
      if (v5 == v22)
      {
        goto LABEL_18;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = 0;
LABEL_18:

  v37[0] = v3;
  v37[1] = v4;
  v37[2] = v16;
  v37[3] = v19;
  v37[4] = v5;
  v37[5] = v18;
  v37[6] = v21;

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v24, 1.0);
  outlined destroy of Text.Effect.BaseFragment(v37);
  *a1 = v36[0];
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  v26 = Text.Effect.Keyframes.subscript.getter(v4, v25, v3);
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = *(v26 + 16);
  if (v5 >= v27)
  {
    goto LABEL_39;
  }

  v28 = *(v26 + 32 + 8 * v5);
  if (v5)
  {
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v32 = *(*(*(v26 + 32 + 8 * v29) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v30, v32);
      v30 += v32;
      if (v14)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v5, v31))
      {
        goto LABEL_35;
      }

      ++v29;
      if (v5 == v31)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = 0;
LABEL_28:

  v36[0] = v3;
  v36[1] = v4;
  v36[2] = v25;
  v36[3] = v28;
  v36[4] = v5;
  v36[5] = v27;
  v36[6] = v30;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v33, -1.0);
  result = outlined destroy of Text.Effect.BaseFragment(v36);
  *a1 = v35;
  return result;
}

void closure #2 in closure #3 in BloomTextEffect.configuration(_:)(unint64_t a1, double *a2, uint64_t a3, void *a4, double a5)
{
  v10 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v44[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = *(a3 + 32);
  if (*(v14 + 16) <= a1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  outlined init with copy of Text.Effect.Timing.GlyphTiming(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1, &v44[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a2[5] - a2[4];
  v16 = *v13;
  v17 = 0.0;
  if (v15 >= 0.0)
  {
    if (v15 <= v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0.0;
    if (v16 >= 0.0)
    {
      goto LABEL_10;
    }
  }

  v18 = v13[1];
  v17 = 1.0;
  if (v16 + v18 > v15)
  {
    v17 = (v15 - v16) / v18;
  }

LABEL_10:
  v19 = *a2;
  if (__OFSUB__(*a2, a1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = a2[29];
  v20 = a2[30];
  v23 = a2[27];
  v22 = a2[28];
  v24 = a2[26];
  v25 = sin(v17 * -6.28318531) * (1.0 - (v17 + v17 + -1.0) * (v17 + v17 + -1.0));
  v26 = v17 * v25 * 0.3 + 1.0;
  if (*&v19 == a1)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0.0;
  }

  if (*&v19 == a1)
  {
    v28 = v22;
  }

  else
  {
    v23 = 0.0;
    v28 = 0.0;
  }

  if (*&v19 == a1)
  {
    v29 = v21;
  }

  else
  {
    v29 = 0.0;
  }

  if (*&v19 == a1)
  {
    v30 = v20;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = v23 - v29;
  v32 = v30 + v29;
  MidX = CGRectGetMidX(*&v27);
  v51 = *&v25;
  v52 = 0;
  v53 = 0;
  v54 = MidX;
  v55 = v23;
  v56 = v26;
  v57 = v26;
  v58 = 0x3FF0000000000000;
  v59 = 0;
  Text.Effect.TransformContext.record(target:for:spring:)(&v51, a1, v13 + *(v10 + 24), v46);
  Text.Effect.TransformContext.draw(state:keyPath:)(v46, 0, 0, 0, 1);
  if (*&v19 != a1)
  {
    outlined destroy of Text.Effect.Timing.GlyphTiming(v13);
    return;
  }

  v34 = *(a2 + 1);
  v47[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v47[1] = v34;
  v47[2] = a1;
  v47[3] = 0;
  v48 = 1;
  v49 = 0;
  v50 = 1;
  specialized Text.Effect.AttributeTracker.updatedValue<A>(for:)(v47, v44);
  v35 = a4[8];
  v36 = a1 - v35;
  if (__OFSUB__(a1, v35))
  {
    goto LABEL_33;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
    if (v36 < *(a4[9] + 16))
    {
      v37 = v44[0];
      v38 = v45;
      v39 = a2[17];
      type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
      v40 = Text.Effect.PathInterpolator.MapKeys.index(for:)(a4[10], v37);
      Text.Effect.PathInterpolator.Cluster.width(for:)(v40);
      v42 = v41;
      outlined destroy of Text.Effect.Timing.GlyphTiming(v13);
      a2[17] = (1.0 - a5) * v39 + v38 * v42 * a5;
      return;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance BloomTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized BloomTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BloomTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect();
  result = lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect();
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized Text.Effect.AttributeTracker.updatedValue<A>(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for [Text.Effect.Timing.GlyphTiming](0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  swift_beginAccess();
  if (*(*(v2 + 24) + 16) && (v12 = *(a1 + 16), v35[0] = *a1, v35[1] = v12, v35[2] = *(a1 + 32), v36 = *(a1 + 48), specialized __RawDictionaryStorage.find<A>(_:)(v35), (v13 & 1) != 0) && (type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v14 = swift_dynamicCastClass()) != 0))
  {
    outlined init with copy of Text.Effect.DrawableFragment<BloomTextEffect>(v14 + *(*v14 + 120), v11, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  }

  else
  {
    v15 = one-time initialization token for zero;

    if (v15 != -1)
    {
      swift_once();
    }

    v33 = xmmword_1EAEE98D0;
    v34[0] = unk_1EAEE98E0;
    *(v34 + 9) = unk_1EAEE98E9;
    v31 = static Text.Effect.DrawingState.zero;
    v32 = unk_1EAEE98C0;

    v16 = type metadata accessor for Spring();
    v17 = *(*(v16 - 8) + 56);
    v17(v7, 1, 1, v16);
    *v11 = 0u;
    *(v11 + 1) = 0u;
    __asm { FMOV            V1.2D, #1.0 }

    *(v11 + 2) = 0u;
    *(v11 + 3) = _Q1;
    *(v11 + 8) = 0x3FF0000000000000;
    v11[72] = 0;
    *(v11 + 5) = 0u;
    *(v11 + 6) = 0u;
    *(v11 + 7) = 0u;
    *(v11 + 8) = _Q1;
    *(v11 + 18) = 0x3FF0000000000000;
    v11[152] = 0;
    v23 = v34[0];
    *(v11 + 12) = v33;
    *(v11 + 13) = v23;
    *(v11 + 217) = *(v34 + 9);
    v24 = v32;
    *(v11 + 10) = v31;
    *(v11 + 11) = v24;
    v25 = v9[11];
    v17(&v11[v25], 1, 1, v16);
    v26 = &v11[v9[12]];
    v27 = &v11[v9[13]];
    outlined assign with take of Spring?(v7, &v11[v25]);
    *v26 = 0;
    v26[8] = 1;
    *v27 = 0;
    v27[8] = 1;
  }

  v28 = *(v11 + 8);
  a2[2] = *(v11 + 7);
  a2[3] = v28;
  *(a2 + 57) = *(v11 + 137);
  v29 = *(v11 + 6);
  *a2 = *(v11 + 5);
  a2[1] = v29;
  return outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v11);
}

double specialized BloomTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v19[0]) = 0;
  v18[8] = 0;
  v21 = xmmword_195CCC0E0;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v26 = xmmword_195CCC0F0;
  v27 = 0x3FB999999999999ALL;
  v28 = 3;
  v29 = xmmword_195CCB150;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = 0;
  v33 = xmmword_195CCB160;
  v34 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static BloomTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<BloomTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BloomTextEffect>, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD05BloomcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized BloomTextEffect.configuration(_:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  if (v2 >= v1 >> 1)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
  }

  v0[2] = v2 + 1;
  v3 = &v0[4 * v2];
  v3[4] = 1;
  v3[5] = closure #1 in BloomTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;

  v4 = v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 + 2, 1, v0);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[4 * v6];
  v7[4] = 2;
  v7[5] = closure #2 in BloomTextEffect.configuration(_:);
  v7[6] = 0;
  *(v7 + 56) = 1;

  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #3 in BloomTextEffect.configuration(_:);
  *(v8 + 24) = 0;
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[2 * v11];
  v12[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v12[5] = v8;
  return v4;
}

uint64_t outlined init with copy of Text.Effect.Timing.GlyphTiming(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Text.Effect.Timing.GlyphTiming(uint64_t a1)
{
  v2 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute()
{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute);
  }

  return result;
}

uint64_t outlined destroy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1)
{
  type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<BloomTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier()
{
  result = lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier;
  if (!lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier;
  if (!lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier;
  if (!lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WeightDeltaModifier and conformance WeightDeltaModifier);
  }

  return result;
}

void type metadata accessor for Text.Effect.DrawableFragment<BloomTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for BloomTextEffect.LayoutState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloomTextEffect.LayoutState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v7 + 3) >> 1, v10 < v8))
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v7);
    v10 = *(v7 + 3) >> 1;
  }

  v11 = *(v7 + 2);
  v12 = (v10 - v11);
  v13 = specialized Sequence._copySequenceContents(initializing:)(v24, &v7[8 * v11 + 32], v10 - v11, a1, a2, a3);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v13)
  {
    v14 = *(v7 + 2);
    v15 = __OFADD__(v14, v13);
    v16 = (v14 + v13);
    if (v15)
    {
      goto LABEL_15;
    }

    *(v7 + 2) = v16;
  }

  if (v13 == v12)
  {
LABEL_11:
    a3 = v3;
    v18 = *(v7 + 2);
    v26 = Text.Effect.VisualOrderCollection.Iterator.next()();
    if (v26.is_nil)
    {
LABEL_29:
      v3 = a3;
      goto LABEL_9;
    }

    a2 = v25;
    v3 = (v25 + v26.value);
    if (!__OFADD__(v25, v26.value))
    {
LABEL_17:
      v19 = *(v7 + 3);
      v20 = v19 >> 1;
      if ((v19 >> 1) < (v18 + 1))
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), (v18 + 1), 1, v7);
        v20 = *(v7 + 3) >> 1;
      }

      if (v18 <= v20)
      {
        v12 = v20;
      }

      else
      {
        v12 = v18;
      }

      v21 = (v12 - v18);
      for (i = v18 + 4; ; ++i)
      {
        if (!v21)
        {
          goto LABEL_16;
        }

        *&v7[8 * i] = v3;
        v17 = Text.Effect.VisualOrderCollection.Iterator.next()();
        if (v17.is_nil)
        {
          break;
        }

        --v21;
        v3 = (a2 + v17.value);
        if (__OFADD__(a2, v17.value))
        {
          __break(1u);
          return v17.value;
        }
      }

      *(v7 + 2) = i - 3;
      goto LABEL_29;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    *(v7 + 2) = v12;
    v18 = v12;
    goto LABEL_17;
  }

LABEL_9:

  *v3 = v7;
  return v17.value;
}

void specialized Collection._copyToContiguousArray()(uint64_t a1)
{
  v22 = type metadata accessor for Text.Layout.Line();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Text.Layout.Run();
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = v8 - v7;
  if (v8 < v7)
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v8, v7))
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v9)
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV3RunV_Tt1g5(v8 - v7, 0);
    if (v9 < 1)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v19[0] = v10;
    if (v7 != *(a1 + 24))
    {
      v11 = (v2 + 16);
      v12 = (v2 + 8);
      v13 = (v23 + 32);
      v14 = v19[0] + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v19[1] = v11;
      v20 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
      v15 = *v11;
      v16 = v8 - 1;
      while (1)
      {
        v17 = v22;
        v15(v4, a1 + v20, v22);
        Text.Layout.Line.subscript.getter();
        (*v12)(v4, v17);
        if (v7 < *(a1 + 16) || v7 >= *(a1 + 24))
        {
          break;
        }

        (*v13)(v14, v6, v21);
        if (v16 == v7)
        {
          goto LABEL_15;
        }

        ++v7;
        v14 += *(v23 + 72);
        if (v7 == *(a1 + 24))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_14:

    __break(1u);
LABEL_15:
  }

  else
  {
  }
}

void specialized Sequence._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = type metadata accessor for Text.Layout.Line();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Text.Layout.Run();
  v28 = *(v26 - 8);
  v11 = MEMORY[0x1EEE9AC00](v26);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 16);
  if (!a2 || !a3)
  {
LABEL_18:
    *a1 = a4;
    *(a1 + 8) = v14;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v24 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v25 = a3;
    v22 = a1;
    v23 = (v8 + 16);
    v15 = (v8 + 8);
    v16 = v27;
    v17 = (v28 + 32);
    a1 = 1;
    while (1)
    {
      v18 = v14 + a1 - 1;
      if (v18 == *(a4 + 24))
      {
        v14 += a1 - 1;
        a1 = v22;
        goto LABEL_18;
      }

      (*v23)(v10, a4 + v24, v16, v11);
      Text.Layout.Line.subscript.getter();
      (*v15)(v10, v16);
      if (v18 < *(a4 + 16) || v18 >= *(a4 + 24))
      {
        __break(1u);
        goto LABEL_19;
      }

      (*v17)(a2, v13, v26);
      if (v25 == a1)
      {
        break;
      }

      a2 += *(v28 + 72);
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v14 += a1;
    a1 = v22;
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t *specialized Sequence._copyContents(initializing:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Text.Effect.Keyframes.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 48);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

uint64_t specialized Collection.prefix(while:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    if (a4 <= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a4;
    }

    v9 = a3;
    while (1)
    {
      v11 = v9;
      result = a1(&v11);
      if (v4)
      {
        break;
      }

      if ((result & 1) == 0)
      {
        goto LABEL_12;
      }

      if (a4 < a3)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      if (v8 == v9)
      {
        goto LABEL_16;
      }

      if (a4 == ++v9)
      {
        v9 = a4;
LABEL_12:
        if (v9 < a3)
        {
          __break(1u);
        }

        return a3;
      }
    }
  }

  return a3;
}

Swift::Int_optional __swiftcall Text.Effect.VisualOrderCollection.Iterator.next()()
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 < v3)
  {
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v1 + 24 * v2;
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);
      v7 = *(v4 + 48);
      if (!v7)
      {
LABEL_12:
        v9 = v1 + 2;
        v13 = v1[2];
        v0 = v5 + v13;
        if (!__OFADD__(v5, v13))
        {
          v12 = __OFADD__(v13, 1);
          v11 = v13 + 1;
          if (!v12)
          {
            *v9 = v11;
            v12 = __OFSUB__(v6, v5);
            v5 = v6 - v5;
            if (!v12)
            {
LABEL_15:
              if (v11 < v5)
              {
                goto LABEL_18;
              }

              *v9 = 0;
              v5 = v0;
LABEL_17:
              v1[1] = v2 + 1;
              v0 = v5;
              goto LABEL_18;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      if (v7 != 1)
      {
        goto LABEL_17;
      }

      v8 = v6 - 1;
      if (!__OFSUB__(v6, 1))
      {
        v9 = v1 + 2;
        v10 = v1[2];
        v0 = v8 - v10;
        if (__OFSUB__(v8, v10))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        *v9 = v11;
        v12 = __OFSUB__(v6, v5);
        v5 = v6 - v5;
        if (!v12)
        {
          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v0 = 0;
LABEL_18:
  v14 = v2 >= v3;
LABEL_26:
  result.value = v0;
  result.is_nil = v14;
  return result;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance Text.Effect.VisualOrderCollection.Iterator@<X0>(uint64_t a1@<X8>)
{
  v3 = Text.Effect.VisualOrderCollection.Iterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

void protocol witness for Sequence.makeIterator() in conformance Text.Effect.VisualOrderCollection(void *a1@<X8>)
{
  v2 = *v1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v2;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.VisualOrderCollection()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

void *Text.Effect.Keyframes.validAnimation(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = 0;
  if (!specialized Set.contains(_:)(a1, *(a2 + 40)))
  {
    swift_beginAccess();
    v5 = *(a2 + 16);
    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
    {
      v4 = *(*(v5 + 56) + 8 * v6);
      v8 = v4;
    }

    else
    {
      v4 = 0;
    }

    swift_endAccess();
  }

  return v4;
}

void *Text.Effect.Keyframes.validTransform(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = 0;
  if (!specialized Set.contains(_:)(a1, *(a2 + 40)))
  {
    swift_beginAccess();
    v5 = *(a2 + 24);
    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
    {
      v4 = *(*(v5 + 56) + 8 * v6);
      v8 = v4;
    }

    else
    {
      v4 = 0;
    }

    swift_endAccess();
  }

  return v4;
}

void *Text.Effect.Keyframes.validFilter(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = 0;
  if (!specialized Set.contains(_:)(a1, *(a2 + 40)))
  {
    swift_beginAccess();
    v5 = *(a2 + 32);
    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
    {
      v4 = *(*(v5 + 56) + 8 * v6);
      v8 = v4;
    }

    else
    {
      v4 = 0;
    }

    swift_endAccess();
  }

  return v4;
}

uint64_t Text.Effect.PartialMap.insert(animation:)(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  v5 = *v1;
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(*&a1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id]), (v7 & 1) == 0))
  {
    v22 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v4, isUniquelyReferenced_nonNull_native);
    *v2 = v25;
    return 1;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  if (v8 == a1)
  {
    return 1;
  }

  v24 = v8;
  static os_log_type_t.fault.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  v9 = static Log.internalErrorsLog;
  type metadata accessor for (offset: Int, element: Text.Layout.Run)?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_195CC8CF0;
  v11 = v9;
  _StringGuts.grow(_:)(37);
  MEMORY[0x19A8BD680](0xD000000000000023, 0x8000000195CDF520);
  _print_unlocked<A, B>(_:_:)();
  v12 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v13;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  v14 = StaticString.description.getter();
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 72) = v14;
  *(v10 + 80) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v10 + 136) = v12;
  *(v10 + 144) = v13;
  *(v10 + 112) = v16;
  *(v10 + 120) = v17;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for Any?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_195CC8D00;
  _StringGuts.grow(_:)(38);

  _StringGuts.grow(_:)(37);
  MEMORY[0x19A8BD680](0xD000000000000023, 0x8000000195CDF520);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x19A8BD680](2108704, 0xE300000000000000);
  v19 = StaticString.description.getter();
  MEMORY[0x19A8BD680](v19);

  MEMORY[0x19A8BD680](58, 0xE100000000000000);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v20);

  MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
  *(v18 + 56) = v12;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Effect.Key()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](v1);
  (*(*v2 + 88))(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Text.Effect.Key(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x19A8BDE80](*v1);
  return (*(*v3 + 88))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Effect.Key()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](v1);
  (*(*v2 + 88))(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.Key(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return (*(**(a1 + 8) + 80))(a2[1]) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Text.Effect.KeyframeLayout.Flags@<X0>(_BYTE *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t Text.Layout.Cluster.xrange.getter()
{
  v1 = type metadata accessor for Text.Layout.RunSlice();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Layout.Cluster();
  lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (*&v25 == v24[0])
  {
    return result;
  }

  (*(*(v9 - 8) + 16))(v8, v0, v9);
  v11 = *(v6 + 36);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v8[v11] == v24[0])
  {
    result = outlined destroy of IndexingIterator<Text.Layout.Cluster>(v8, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = (v2 + 16);
  v13 = (v2 + 8);
  v14 = -INFINITY;
  v15 = INFINITY;
  do
  {
    while (1)
    {
      v16 = dispatch thunk of Collection.subscript.read();
      (*v12)(v4);
      v16(v24, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Text.Layout.RunSlice.typographicBounds.getter();
      (*v13)(v4, v1);
      v17 = v25;
      v18 = v27;
      v19 = v26 - v28;
      v20 = v28 + v29;
      v30.origin.x = v25;
      v30.origin.y = v26 - v28;
      v30.size.width = v27;
      v30.size.height = v28 + v29;
      MinX = CGRectGetMinX(v30);
      if (MinX < v15)
      {
        v15 = MinX;
      }

      v31.origin.x = v17;
      v31.origin.y = v19;
      v31.size.width = v18;
      v31.size.height = v20;
      MaxX = CGRectGetMaxX(v31);
      dispatch thunk of Collection.endIndex.getter();
      v23 = *&v8[v11];
      if (v14 > MaxX)
      {
        break;
      }

      v14 = MaxX;
      if (v23 == v24[0])
      {
        goto LABEL_10;
      }
    }
  }

  while (v23 != v24[0]);
  MaxX = v14;
LABEL_10:
  result = outlined destroy of IndexingIterator<Text.Layout.Cluster>(v8, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
  if (v15 > MaxX)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t closure #2 in Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v3 >= v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *a2;
  if (*a2 >= v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 32 + 8 * v3);
  v7 = *(a3 + 32 + 8 * v5);
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 == v7)
  {
    return v3 < v5;
  }

  return 0;
}

void closure #3 in Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(CGFloat *a1@<X0>, CGRect *a2@<X8>)
{
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.quantizedImageBounds.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  v22.origin.x = v13;
  v22.origin.y = v15;
  v22.size.width = v17;
  v22.size.height = v19;
  *a2 = CGRectUnion(v21, v22);
}

uint64_t Text.Effect.KeyframeLayout.Fragment.Storage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
  v2 = type metadata accessor for Text.Layout.Line();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage()
{
  result = type metadata singleton initialization cache for Text.Effect.KeyframeLayout.Fragment.Storage;
  if (!type metadata singleton initialization cache for Text.Effect.KeyframeLayout.Fragment.Storage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Text.Effect.KeyframeLayout.Fragment.Storage()
{
  type metadata accessor for Text.Layout.Line();
  if (v0 <= 0x3F)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(319, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.PartialMap(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.PartialMap(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Text.Effect.KeyframeLayout(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.KeyframeLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Key(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Key(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type Text.Effect.Key and conformance Text.Effect.Key()
{
  result = lazy protocol witness table cache variable for type Text.Effect.Key and conformance Text.Effect.Key;
  if (!lazy protocol witness table cache variable for type Text.Effect.Key and conformance Text.Effect.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Key and conformance Text.Effect.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Key and conformance Text.Effect.Key;
  if (!lazy protocol witness table cache variable for type Text.Effect.Key and conformance Text.Effect.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Key and conformance Text.Effect.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.KeyframeLayout> and conformance IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type IndexingIterator<Text.Effect.KeyframeLayout> and conformance IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Effect.KeyframeLayout> and conformance IndexingIterator<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.KeyframeLayout>, lazy protocol witness table accessor for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout, &type metadata for Text.Effect.KeyframeLayout, MEMORY[0x1E69E6CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexingIterator<Text.Effect.KeyframeLayout> and conformance IndexingIterator<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout()
{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout);
  }

  return result;
}

BOOL Text.Effect.KeyframeLayout.Fragment.isTooComplex.getter(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString) string];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = specialized RangeReplaceableCollection.filter(_:)(v2, v4);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5;
  }

  if (((v7 >> 60) & ((v5 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = 7;
  }

  v10 = v9 | (v8 << 16);
  v11 = String.UnicodeScalarView.distance(from:to:)(0xFuLL, v10, v5, v7);
  v12 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v12 = v2;
  }

  if (((v4 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = 7;
  }

  if (v11 / String.UnicodeScalarView.distance(from:to:)(0xFuLL, v13 | (v12 << 16), v2, v4) <= 0.9)
  {
    v15 = String.UnicodeScalarView.distance(from:to:)(0xFuLL, v10, v5, v7);

    return v15 > 500;
  }

  else
  {

    return 1;
  }
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Effect.KeyframeLayout.Fragment@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 >= *(*v2 + 16) && v3 < *(*v2 + 24))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Effect.KeyframeLayout.Fragment(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 >= *(*v1 + 16) && v2 < *(*v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.KeyframeLayout.Fragment(uint64_t *a1))(uint64_t a1)
{
  v3 = type metadata accessor for Text.Layout.Line();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  v7 = v6;
  *a1 = v6;
  v8 = type metadata accessor for Text.Layout.Run();
  a1[1] = v8;
  v9 = *(v8 - 8);
  a1[2] = v9;
  if (v5)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[3] = v10;
  (*(v4 + 16))(v7, *v1 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v3);
  Text.Layout.Line.subscript.getter();
  (*(v4 + 8))(v7, v3);
  return protocol witness for Collection.subscript.read in conformance Text.Effect.KeyframeLayout.Fragment;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.KeyframeLayout.Fragment(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *a1;
  (*(*(a1 + 16) + 8))(v1, *(a1 + 8));
  free(v1);

  free(v2);
}

uint64_t protocol witness for Collection.subscript.getter in conformance Text.Effect.KeyframeLayout.Fragment@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *v2;
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (v5 < v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *a1;
  if (*a1 < v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[1];
  if (v5 >= v8)
  {
    *a2 = v7;
    a2[1] = v8;
    a2[2] = result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance Text.Effect.KeyframeLayout.Fragment(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 24);
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
    a1[1] = v3;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Effect.KeyframeLayout.Fragment@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 >= *(*v3 + 16) && *(*v3 + 24) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.KeyframeLayout.Fragment@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Effect.KeyframeLayout.Fragment(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (v5 < *a2 || v4 < v6 || v3 < v6 || v5 < v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = (v4 - v3);
  if (__OFSUB__(v4, v3))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance Text.Effect.KeyframeLayout.Fragment@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*v2 + 24);
  if (*result >= *(*v2 + 16))
  {
    v6 = __OFSUB__(v3, v4);
    v5 = v3 - v4 < 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v5 != v6)
  {
    *a2 = v3 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance Text.Effect.KeyframeLayout.Fragment(uint64_t *result)
{
  v2 = *result;
  v3 = *(*v1 + 24);
  if (*result >= *(*v1 + 16))
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 != v5)
  {
    *result = v2 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance Text.Effect.KeyframeLayout.Fragment(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for Collection.count.getter in conformance Text.Effect.KeyframeLayout.Fragment()
{
  v2 = *(*v0 + 16);
  v1 = *(*v0 + 24);
  result = v1 - v2;
  if (v1 < v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v1, v2))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized flushTransformEffectRuns #1 () in static Text.Effect.KeyframeLayout.gather(keyframes:entry:from:attributedString:segmentation:map:id:)(void **a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v9 = type metadata accessor for Text.Layout.Line();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  swift_beginAccess();
  v16 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    if ((*(a2 + 16) & 1) == 0)
    {
      v18 = *(a2 + 8);
      v44 = *a2;
      v45 = v18;
      v43 = a2;
      v19 = *&v16[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
      v20 = a4;
      v21 = a3;
      v22 = *(v10 + 16);
      v22(v15, v20, v9);
      v22(v12, v15, v9);
      v23 = v21;
      v24 = v19;
      type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage();
      swift_allocObject();
      v25 = v16;
      v26 = v46;
      specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(v12, v44, v45, v26);

      (*(v10 + 8))(v15, v9);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v23;
      v28 = v47;
      *v23 = 0x8000000000000000;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        __break(1u);
        goto LABEL_15;
      }

      v35 = v30;
      if (v28[3] < v34)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
        v28 = v47;
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
        if ((v35 & 1) == (v36 & 1))
        {
          goto LABEL_9;
        }

        v29 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v29;
        specialized _NativeDictionary.copy()();
        v29 = v42;
        v28 = v47;
        *v23 = v47;
        if (v35)
        {
LABEL_11:
          v38 = v28[7] + 8 * v29;
          MEMORY[0x19A8BD720]();
          if (*(*v38 + 16) < *(*v38 + 24) >> 1)
          {
LABEL_12:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            v39 = v43;
            swift_beginAccess();
            *v39 = 0;
            *(v39 + 8) = 0;
            *(v39 + 16) = 1;
            v17 = specialized thunk for @callee_guaranteed () -> (@owned [Text.Effect.KeyframeLayout.Fragment]);
            goto LABEL_13;
          }

LABEL_15:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          goto LABEL_12;
        }

LABEL_10:
        v37 = v29;
        specialized _NativeDictionary._insert(at:key:value:)(v29, v24, MEMORY[0x1E69E7CC0], v28);
        v29 = v37;
        goto LABEL_11;
      }

LABEL_9:
      *v23 = v28;
      if (v35)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v17 = 0;
LABEL_13:
  swift_beginAccess();
  v40 = *a1;
  *a1 = 0;

  return _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v17);
}

uint64_t specialized RangeSet.insert(contentsOf:)()
{
  v0 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - v4;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v0, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  (*(v3 + 16))(v9, v5, v2);
  v10 = *(v7 + 44);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges();
  dispatch thunk of Collection.startIndex.getter();
  (*(v3 + 8))(v5, v2);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v9[v10] == v18[0])
    {
      return outlined destroy of IndexingIterator<Text.Layout.Cluster>(v9, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
    }

    v11 = dispatch thunk of Collection.subscript.read();
    v13 = *v12;
    v14 = v12[1];
    v11(v18, 0);
    result = dispatch thunk of Collection.formIndex(after:)();
    v17[0] = v13;
    v17[1] = v14;
    if (__OFSUB__(v14, v13))
    {
      break;
    }

    if (v14 != v13)
    {
      v16 = RangeSet._ranges.modify();
      RangeSet.Ranges._insert(contentsOf:)();
      v16(v18, 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.KeyframeLayout(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + 8 * v3 + 32);
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Effect.KeyframeLayout@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[8];
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = result;
    *(a2 + 24) = v5;
  }

  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.KeyframeLayout@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance Text.Effect.KeyframeLayout(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.KeyframeLayout()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, *(v0 + 8));

  return v1;
}

unint64_t lazy protocol witness table accessor for type Slice<Text.Effect.KeyframeLayout> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Text.Effect.KeyframeLayout> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Text.Effect.KeyframeLayout> and conformance Slice<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for Slice<Text.Effect.KeyframeLayout>, lazy protocol witness table accessor for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout, &type metadata for Text.Effect.KeyframeLayout, MEMORY[0x1E69E74D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Text.Effect.KeyframeLayout> and conformance Slice<A>);
  }

  return result;
}

uint64_t _sSny7SwiftUI4TextV0C16AnimationSupportE6EffectO18FragmentIdentifierVGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for Range<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.KeyframeLayout> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for Slice<Text.Effect.KeyframeLayout>, lazy protocol witness table accessor for type Text.Effect.KeyframeLayout and conformance Text.Effect.KeyframeLayout, &type metadata for Text.Effect.KeyframeLayout, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.VisualOrderCollection.Iterator and conformance Text.Effect.VisualOrderCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type Text.Effect.VisualOrderCollection.Iterator and conformance Text.Effect.VisualOrderCollection.Iterator;
  if (!lazy protocol witness table cache variable for type Text.Effect.VisualOrderCollection.Iterator and conformance Text.Effect.VisualOrderCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.VisualOrderCollection.Iterator and conformance Text.Effect.VisualOrderCollection.Iterator);
  }

  return result;
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x19A8BD690](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

__n128 specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t String.UnicodeScalarView.distance(from:to:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI4TextV0F16AnimationSupportE6EffectO14KeyframeLayoutV_Sis5NeverOTg503_s7d3UI4f5V0C16gh2E6i44O10PartialMapV8validate9keyframes4sizeyAF0g8j23H0V_So6CGSizeVtFSiAF0L6K16V8FragmentVXEfU_Tf1cn_nTf4x_nTm(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    do
    {
      v5 = *(*(*v4 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t __dst, char *__src, unint64_t *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 >= 8 && v8 < v7)
    {
      v17 = a5 + 32;
      while (1)
      {
        v18 = *v8;
        if ((*v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v19 = *(a5 + 16);
        if (v18 >= v19)
        {
          goto LABEL_60;
        }

        v20 = *v6;
        if (*v6 >= v19)
        {
          goto LABEL_62;
        }

        v21 = *(v17 + 8 * v18);
        v22 = *(v17 + 8 * v20);
        if (v21 < v22)
        {
          break;
        }

        if (v21 == v22 && v18 < v20)
        {
          break;
        }

        v18 = *v6;
        v24 = v9 == v6;
        v6 += 8;
        if (!v24)
        {
          goto LABEL_25;
        }

LABEL_26:
        v9 += 8;
        if (v6 >= v16 || v8 >= v7)
        {
          goto LABEL_28;
        }
      }

      v24 = v9 == v8;
      v8 += 8;
      if (v24)
      {
        goto LABEL_26;
      }

LABEL_25:
      *v9 = v18;
      goto LABEL_26;
    }

LABEL_28:
    v8 = v9;
    goto LABEL_54;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
LABEL_54:
    v35 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
    if (v8 != v6 || v8 >= &v6[v35 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v8, v6, 8 * (v35 >> 3));
    }

    return 1;
  }

  v25 = a5 + 32;
LABEL_35:
  v26 = (v8 - 8);
  --v7;
  v27 = v16;
  while (1)
  {
    v29 = *(v27 - 8);
    v27 -= 8;
    v28 = v29;
    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    v30 = *(a5 + 16);
    if (v28 >= v30)
    {
      goto LABEL_61;
    }

    v31 = *v26;
    if (*v26 >= v30)
    {
      goto LABEL_63;
    }

    v32 = *(v25 + 8 * v28);
    v33 = *(v25 + 8 * v31);
    if (v32 < v33 || (v32 == v33 ? (v34 = v28 >= v31) : (v34 = 1), !v34))
    {
      if (v7 + 1 != v8)
      {
        *v7 = v31;
      }

      if (v16 <= v6 || (v8 -= 8, v26 <= v9))
      {
        v8 = v26;
        goto LABEL_54;
      }

      goto LABEL_35;
    }

    if (v7 + 1 != v16)
    {
      *v7 = v28;
    }

    --v7;
    v16 = v27;
    if (v27 <= v6)
    {
      v16 = v27;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return __dst;
}

{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 >= 8 && v8 < v7)
    {
      v17 = a5 + 32;
      while (1)
      {
        v18 = *v8;
        if ((*v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v19 = *(a5 + 16);
        if (v18 >= v19)
        {
          goto LABEL_60;
        }

        v20 = *v6;
        if (*v6 >= v19)
        {
          goto LABEL_62;
        }

        v21 = *(v17 + 32 * v18);
        v22 = *(v17 + 32 * v20);
        if (v21 < v22)
        {
          break;
        }

        if (v21 == v22 && v18 < v20)
        {
          break;
        }

        v18 = *v6;
        v24 = v9 == v6;
        v6 += 8;
        if (!v24)
        {
          goto LABEL_25;
        }

LABEL_26:
        v9 += 8;
        if (v6 >= v16 || v8 >= v7)
        {
          goto LABEL_28;
        }
      }

      v24 = v9 == v8;
      v8 += 8;
      if (v24)
      {
        goto LABEL_26;
      }

LABEL_25:
      *v9 = v18;
      goto LABEL_26;
    }

LABEL_28:
    v8 = v9;
    goto LABEL_54;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
LABEL_54:
    v35 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
    if (v8 != v6 || v8 >= &v6[v35 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v8, v6, 8 * (v35 >> 3));
    }

    return 1;
  }

  v25 = a5 + 32;
LABEL_35:
  v26 = (v8 - 8);
  --v7;
  v27 = v16;
  while (1)
  {
    v29 = *(v27 - 8);
    v27 -= 8;
    v28 = v29;
    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    v30 = *(a5 + 16);
    if (v28 >= v30)
    {
      goto LABEL_61;
    }

    v31 = *v26;
    if (*v26 >= v30)
    {
      goto LABEL_63;
    }

    v32 = *(v25 + 32 * v28);
    v33 = *(v25 + 32 * v31);
    if (v32 < v33 || (v32 == v33 ? (v34 = v28 >= v31) : (v34 = 1), !v34))
    {
      if (v7 + 1 != v8)
      {
        *v7 = v31;
      }

      if (v16 <= v6 || (v8 -= 8, v26 <= v9))
      {
        v8 = v26;
        goto LABEL_54;
      }

      goto LABEL_35;
    }

    if (v7 + 1 != v16)
    {
      *v7 = v28;
    }

    --v7;
    v16 = v27;
    if (v27 <= v6)
    {
      v16 = v27;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return __dst;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      specialized _merge<A>(low:mid:high:buffer:by:)(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      specialized _merge<A>(low:mid:high:buffer:by:)(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  v103 = MEMORY[0x1E69E7CC0];
  if (v5 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_109:
    v90 = *a1;
    if (*a1)
    {

      specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v103, v90, a3, a5);
      if (v100)
      {
LABEL_111:

        goto LABEL_112;
      }

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_145;
  }

  v6 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v97 = MEMORY[0x1E69E7CC0];
  v95 = v6;
  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      v19 = v97;
      v14 = a5;
      goto LABEL_28;
    }

    v9 = *a3;
    v10 = *(*a3 + 8 * v8);
    v101 = *(*a3 + 8 * v7);
    v102 = v10;
    v11 = closure #2 in Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(&v102, &v101, a5);
    if (v100)
    {
      goto LABEL_112;
    }

    v12 = v7 + 2;
    if (v7 + 2 >= v5)
    {
      v14 = a5;
      goto LABEL_24;
    }

    v13 = *(v9 + 8 * v8);
    v14 = a5;
    v8 = v7 + 2;
    do
    {
      v15 = v13;
      v13 = *(v9 + 8 * v8);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_122;
      }

      v16 = *(a5 + 16);
      if (v13 >= v16)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
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
        goto LABEL_140;
      }

      if (v15 >= v16)
      {
        goto LABEL_124;
      }

      v17 = *(v95 + 8 * v13);
      v18 = *(v95 + 8 * v15);
      if (v17 < v18)
      {
        if ((v11 & 1) == 0)
        {
          v19 = v97;
          v6 = v95;
          goto LABEL_28;
        }
      }

      else if (v17 == v18)
      {
        if (((v11 ^ (v13 >= v15)) & 1) == 0)
        {
          v12 = v8--;
          goto LABEL_24;
        }
      }

      else if (v11)
      {
        v12 = v8--;
        v19 = v97;
        v6 = v95;
        goto LABEL_25;
      }

      ++v8;
    }

    while (v5 != v8);
    v8 = v5 - 1;
    v12 = v5;
LABEL_24:
    v19 = v97;
    v6 = v95;
    if (v11)
    {
LABEL_25:
      if (v12 >= v7)
      {
        if (v7 <= v8)
        {
          v8 = v12;
          v33 = v12 - 1;
          v34 = v7;
          while (1)
          {
            if (v34 != v33)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_143;
              }

              v36 = *(v35 + 8 * v34);
              *(v35 + 8 * v34) = *(v35 + 8 * v33);
              *(v35 + 8 * v33) = v36;
            }

            v31 = ++v34 < v33--;
            if (!v31)
            {
              goto LABEL_28;
            }
          }
        }

        goto LABEL_27;
      }

LABEL_140:
      __break(1u);
LABEL_141:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_142:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_143:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_144:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_145:
      result = swift_bridgeObjectRelease_n();
      __break(1u);
      return result;
    }

LABEL_27:
    v8 = v12;
LABEL_28:
    v20 = a3[1];
    if (v8 < v20)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_138;
        }

        if (v7 + a4 < v20)
        {
          v20 = v7 + a4;
        }

        if (v20 < v7)
        {
          goto LABEL_139;
        }

        if (v8 != v20)
        {
          break;
        }
      }
    }

LABEL_58:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    v94 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    }

    v38 = *(v19 + 2);
    v37 = *(v19 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v19);
    }

    *(v19 + 2) = v39;
    v40 = v19 + 32;
    v41 = &v19[16 * v38 + 32];
    *v41 = v7;
    *(v41 + 1) = v94;
    v103 = v19;
    v96 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    v97 = v19;
    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v19 + 4);
          v44 = *(v19 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_78:
          if (v46)
          {
            goto LABEL_127;
          }

          v59 = &v19[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_130;
          }

          v65 = &v40[16 * v42];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_134;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v69 = &v19[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_92:
        if (v64)
        {
          goto LABEL_129;
        }

        v72 = &v40[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_132;
        }

        if (v75 < v63)
        {
LABEL_3:
          v103 = v19;
          goto LABEL_4;
        }

LABEL_99:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v80 = *a3;
        if (!*a3)
        {
          goto LABEL_142;
        }

        v81 = &v40[16 * v42 - 16];
        v82 = *v81;
        v83 = v40;
        v84 = &v40[16 * v42];
        v85 = *(v84 + 1);
        v86 = v80 + 8 * *v81;
        v87 = (v80 + 8 * *v84);
        v88 = (v80 + 8 * v85);

        specialized _merge<A>(low:mid:high:buffer:by:)(v86, v87, v88, v96, a5);
        if (v100)
        {
          goto LABEL_111;
        }

        if (v85 < v82)
        {
          goto LABEL_119;
        }

        v19 = v97;
        v89 = *(v97 + 2);
        if (v42 > v89)
        {
          goto LABEL_120;
        }

        *v81 = v82;
        *(v81 + 1) = v85;
        if (v42 >= v89)
        {
          goto LABEL_121;
        }

        v100 = 0;
        v39 = v89 - 1;
        memmove(v84, v84 + 16, 16 * (v89 - 1 - v42));
        *(v97 + 2) = v89 - 1;
        v40 = v83;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[16 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_125;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_126;
      }

      v54 = &v19[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_128;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_131;
      }

      if (v58 >= v50)
      {
        v76 = &v40[16 * v42];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_135;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_4:
    v5 = a3[1];
    v7 = v94;
    v6 = v95;
    if (v94 >= v5)
    {
      goto LABEL_109;
    }
  }

  v21 = *a3;
  v22 = *(v14 + 16);
  v23 = *a3 + 8 * v8 - 8;
  v24 = v7 - v8;
LABEL_38:
  v25 = *(v21 + 8 * v8);
  v26 = v24;
  v27 = v23;
  while (v25 < v22)
  {
    v28 = *v27;
    if (*v27 >= v22)
    {
      goto LABEL_116;
    }

    v29 = *(v6 + 8 * v25);
    v30 = *(v6 + 8 * v28);
    if (v29 < v30 || (v29 == v30 ? (v31 = v25 < v28) : (v31 = 0), v31))
    {
      if (!v21)
      {
        goto LABEL_141;
      }

      *v27 = v25;
      v27[1] = v28;
      --v27;
      if (!__CFADD__(v26++, 1))
      {
        continue;
      }
    }

    ++v8;
    v23 += 8;
    --v24;
    if (v8 != v20)
    {
      goto LABEL_38;
    }

    v8 = v20;
    goto LABEL_58;
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_112:
  swift_bridgeObjectRelease_n();
}

{
  v5 = a3[1];
  v102 = MEMORY[0x1E69E7CC0];
  if (v5 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_110:
    v90 = *a1;
    if (*a1)
    {

      specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v102, v90, a3, a5);
      if (v99)
      {
LABEL_112:

        goto LABEL_113;
      }

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_146;
  }

  v93 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      v14 = a5;
      v15 = v93;
      goto LABEL_26;
    }

    v9 = *a3;
    v10 = *(*a3 + 8 * v8);
    v100 = *(*a3 + 8 * v6);
    v101 = v10;
    v11 = closure #3 in Text.Effect.Timing.Chunk.computeTimings(configuration:lineCoverage:spring:from:)(&v101, &v100, a5);
    if (v99)
    {
      goto LABEL_113;
    }

    v12 = v6 + 2;
    if (v6 + 2 >= v5)
    {
      goto LABEL_22;
    }

    v13 = *(v9 + 8 * v8);
    v14 = a5;
    v15 = v93;
    v8 = v6 + 2;
    while (1)
    {
      v16 = *(v9 + 8 * v8);
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_123;
      }

      v17 = *(a5 + 16);
      if (v16 >= v17)
      {
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
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
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_143:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_144:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_145:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_146:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (v13 >= v17)
      {
        goto LABEL_125;
      }

      v18 = *(v93 + 32 * v16);
      v19 = *(v93 + 32 * v13);
      if (v18 < v19)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_10;
      }

      if (v18 != v19)
      {
        if (v11)
        {
          v12 = v8--;
          goto LABEL_23;
        }

        goto LABEL_10;
      }

      if (((v11 ^ (v16 >= v13)) & 1) == 0)
      {
        break;
      }

LABEL_10:
      ++v8;
      v13 = v16;
      if (v5 == v8)
      {
        v8 = v5 - 1;
        v12 = v5;
LABEL_22:
        if ((v11 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    v12 = v8--;
    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v12 < v6)
    {
      goto LABEL_141;
    }

    if (v6 <= v8)
    {
      v8 = v12;
      v33 = v12 - 1;
      v34 = v6;
      v14 = a5;
      v15 = v93;
      while (1)
      {
        if (v34 != v33)
        {
          v36 = *a3;
          if (!*a3)
          {
            goto LABEL_144;
          }

          v35 = *(v36 + 8 * v34);
          *(v36 + 8 * v34) = *(v36 + 8 * v33);
          *(v36 + 8 * v33) = v35;
        }

        v31 = ++v34 < v33--;
        if (!v31)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v14 = a5;
    v15 = v93;
    v8 = v12;
LABEL_26:
    v20 = a3[1];
    if (v8 >= v20)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v8, v6))
    {
      goto LABEL_138;
    }

    if (v8 - v6 >= a4)
    {
      goto LABEL_57;
    }

    if (__OFADD__(v6, a4))
    {
      goto LABEL_139;
    }

    if (v6 + a4 < v20)
    {
      v20 = v6 + a4;
    }

    if (v20 < v6)
    {
      goto LABEL_140;
    }

    if (v8 == v20)
    {
LABEL_57:
      if (v8 < v6)
      {
        goto LABEL_137;
      }

      v95 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v38 = *(v7 + 2);
      v37 = *(v7 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v7);
      }

      *(v7 + 2) = v39;
      v40 = v7 + 32;
      v41 = &v7[16 * v38 + 32];
      *v41 = v6;
      *(v41 + 1) = v95;
      v102 = v7;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v43 = *(v7 + 4);
            v44 = *(v7 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_77:
            if (v46)
            {
              goto LABEL_128;
            }

            v59 = &v7[16 * v39];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_131;
            }

            v65 = &v40[16 * v42];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_135;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v39 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          v69 = &v7[16 * v39];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_91:
          if (v64)
          {
            goto LABEL_130;
          }

          v72 = &v40[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_133;
          }

          if (v75 < v63)
          {
LABEL_3:
            v102 = v7;
            goto LABEL_4;
          }

LABEL_98:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v80 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v81 = &v40[16 * v42 - 16];
          v82 = *v81;
          v83 = v42;
          v84 = &v40[16 * v42];
          v85 = *(v84 + 1);
          v86 = v80 + 8 * *v81;
          v87 = (v80 + 8 * *v84);
          v88 = (v80 + 8 * v85);

          specialized _merge<A>(low:mid:high:buffer:by:)(v86, v87, v88, v96, a5);
          if (v99)
          {
            goto LABEL_112;
          }

          if (v85 < v82)
          {
            goto LABEL_120;
          }

          v89 = *(v7 + 2);
          if (v83 > v89)
          {
            goto LABEL_121;
          }

          *v81 = v82;
          *(v81 + 1) = v85;
          if (v83 >= v89)
          {
            goto LABEL_122;
          }

          v99 = 0;
          v39 = v89 - 1;
          memmove(v84, v84 + 16, 16 * (v89 - 1 - v83));
          *(v7 + 2) = v89 - 1;
          v40 = v7 + 32;
          if (v89 <= 2)
          {
            goto LABEL_3;
          }
        }

        v47 = &v40[16 * v39];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_126;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_127;
        }

        v54 = &v7[16 * v39];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_129;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_132;
        }

        if (v58 >= v50)
        {
          v76 = &v40[16 * v42];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_136;
          }

          if (v45 < v79)
          {
            v42 = v39 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_77;
      }

LABEL_4:
      v5 = a3[1];
      v6 = v95;
      if (v95 >= v5)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  v21 = *a3;
  v22 = *(v14 + 16);
  v23 = *a3 + 8 * v8 - 8;
  v24 = v6 - v8;
LABEL_36:
  v25 = *(v21 + 8 * v8);
  v26 = (v15 + 32 * v25);
  v27 = v24;
  v28 = v23;
  while (v25 < v22)
  {
    v29 = *v28;
    if (*v28 >= v22)
    {
      goto LABEL_117;
    }

    v30 = *(v15 + 32 * v29);
    if (*v26 < v30 || (*v26 == v30 ? (v31 = v25 < v29) : (v31 = 0), v31))
    {
      if (!v21)
      {
        goto LABEL_142;
      }

      *v28 = v25;
      v28[1] = v29;
      --v28;
      if (!__CFADD__(v27++, 1))
      {
        continue;
      }
    }

    ++v8;
    v23 += 8;
    --v24;
    if (v8 != v20)
    {
      goto LABEL_36;
    }

    v8 = v20;
    goto LABEL_57;
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_113:
  swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = a5 + 32;
    v7 = *(a5 + 16);
    v8 = *a4 + 8 * a3 - 8;
    v9 = result - a3;
LABEL_5:
    v10 = *(v5 + 8 * a3);
    v11 = v9;
    v12 = v8;
    while (v10 < v7)
    {
      v13 = *v12;
      if (*v12 >= v7)
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v10);
      v15 = *(v6 + 8 * v13);
      if (v14 < v15 || (v14 == v15 ? (v16 = v10 < v13) : (v16 = 0), v16))
      {
        if (!v5)
        {
          goto LABEL_20;
        }

        *v12 = v10;
        v12[1] = v13;
        --v12;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      ++a3;
      v8 += 8;
      --v9;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = a5 + 32;
    v7 = *(a5 + 16);
    v8 = *a4 + 8 * a3 - 8;
    v9 = result - a3;
LABEL_5:
    v10 = *(v5 + 8 * a3);
    v11 = (v6 + 32 * v10);
    v12 = v9;
    v13 = v8;
    while (v10 < v7)
    {
      v14 = *v13;
      if (*v13 >= v7)
      {
        goto LABEL_19;
      }

      result = 32 * v14;
      v15 = *(v6 + 32 * v14);
      if (*v11 < v15 || (*v11 == v15 ? (v16 = v10 < v14) : (v16 = 0), v16))
      {
        if (!v5)
        {
          goto LABEL_20;
        }

        *v13 = v10;
        v13[1] = v14;
        --v13;
        if (!__CFADD__(v12++, 1))
        {
          continue;
        }
      }

      ++a3;
      v8 += 8;
      --v9;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

char *specialized Text.Effect.VisualOrderCollection.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = a1 + 32;
  v33 = a1 + 24;
  v5 = a1 + 40;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 >= v2)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
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

    if (v3 < 0)
    {
      goto LABEL_64;
    }

    v10 = v3 + 1;
    v1 = *(v4 + 8 * v3);
    if (v3 + 1 == v2)
    {
      break;
    }

    if (v3 + 1 >= v2)
    {
      goto LABEL_65;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_66;
    }

    v11 = *(v4 + 8 * v10);
    if (v7 == v11)
    {
      v12 = (v5 + 8 * v3);
      v13 = v3 + 1;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v15 = v14 - v10;
        if (__OFSUB__(v14, v10))
        {
          goto LABEL_58;
        }

        v16 = __OFADD__(v1, v15);
        v17 = v1 + v15;
        if (v16)
        {
          goto LABEL_59;
        }

        if (v17 != *v12)
        {
          break;
        }

        ++v13;
        ++v12;
        if (v14 == v2)
        {
          v10 = v2;
          goto LABEL_32;
        }
      }

      v10 = v13;
LABEL_32:
      if (v10 <= v3)
      {
        goto LABEL_68;
      }

      if (v10 < 1)
      {
        goto LABEL_69;
      }

      if (v10 > v2)
      {
        goto LABEL_70;
      }

      v26 = *(v33 + 8 * v10);
      v7 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_71;
      }

      if (v7 < v1)
      {
        goto LABEL_72;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v24 = *(v6 + 2);
      v27 = *(v6 + 3);
      v25 = v24 + 1;
      if (v24 >= v27 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v24 + 1, 1, v6);
      }

      v8 = 0;
    }

    else
    {
      if (__OFSUB__(v1, 1))
      {
        goto LABEL_67;
      }

      if (v1 - 1 == v11)
      {
        v18 = (v5 + 8 * v3);
        v19 = v3 + 1;
        while (1)
        {
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v21 = v20 - v10;
          if (__OFSUB__(v20, v10))
          {
            goto LABEL_61;
          }

          v16 = __OFSUB__(v1, v21);
          v22 = v1 - v21;
          if (v16)
          {
            goto LABEL_62;
          }

          if (v22 != *v18)
          {
            break;
          }

          ++v19;
          ++v18;
          if (v20 == v2)
          {
            v10 = v2;
            goto LABEL_43;
          }
        }

        v10 = v19;
LABEL_43:
        if (v10 <= v3)
        {
          goto LABEL_73;
        }

        if (v10 < 1)
        {
          goto LABEL_74;
        }

        if (v10 > v2)
        {
          goto LABEL_75;
        }

        v1 = *(v33 + 8 * v10);
        if (v7 < v1)
        {
          goto LABEL_76;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v24 = *(v6 + 2);
        v28 = *(v6 + 3);
        v25 = v24 + 1;
        v8 = 1;
        if (v24 >= v28 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v24 + 1, 1, v6);
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v24 = *(v6 + 2);
        v23 = *(v6 + 3);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v6);
        }

        v7 = 0;
        v8 = 2;
      }
    }

    *(v6 + 2) = v25;
    v9 = &v6[24 * v24];
    *(v9 + 4) = v1;
    *(v9 + 5) = v7;
    v9[48] = v8;
    v3 = v10;
    if (v10 == v2)
    {
      return v6;
    }
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_53;
  }

LABEL_77:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
LABEL_53:
  v30 = *(v6 + 2);
  v29 = *(v6 + 3);
  if (v30 >= v29 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v6);
  }

  *(v6 + 2) = v30 + 1;
  v31 = &v6[24 * v30];
  *(v31 + 4) = v1;
  *(v31 + 5) = 0;
  v31[48] = 2;
  return v6;
}

void *specialized Text.Effect.Keyframes.Storage.init(_:)(void *a1)
{
  v1[5] = MEMORY[0x1E69E7CD0];
  v1[6] = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v1[2] = a1[2];
  swift_beginAccess();
  v1[3] = a1[3];
  swift_beginAccess();
  v1[4] = a1[4];
  swift_beginAccess();
  v3 = a1[5];
  swift_beginAccess();
  v1[5] = v3;
  swift_beginAccess();
  v4 = a1[6];
  swift_beginAccess();
  v1[6] = v4;
  v1[7] = a1[7];

  return v1;
}

uint64_t specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(uint64_t a1, uint64_t a2, void (**a3)(char *), unint64_t *a4)
{
  v5 = v4;
  v110 = a4;
  v87 = *v4;
  v9 = type metadata accessor for Text.Layout.Run();
  v109 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Text.Layout.RunSlice();
  v103 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v101 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Layout.Cluster();
  v106 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v94 = v19;
  v93 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v85 - v20;
  if (a2 == a3)
  {
    goto LABEL_41;
  }

  v21 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
  v22 = type metadata accessor for Text.Layout.Line();
  v95 = *(v22 - 8);
  v23 = *(v95 + 16);
  v86 = v21;
  v107 = a1;
  v96 = v22;
  v23(v5 + v21, a1);
  v24 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString;
  *(v5 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString) = v110;
  v5[2] = a2;
  v5[3] = a3;
  if (a3 < a2)
  {
    goto LABEL_38;
  }

  if (a2 >= a3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v85 = v24;
  v97 = v5;
  v25 = *MEMORY[0x1E695F050];
  v26 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v28 = *(MEMORY[0x1E695F050] + 24);
  v29 = (*&v109 + 8);
  v30 = v110;
  v31 = 0.0;
  v91 = v25;
  v32 = v25;
  v90 = v26;
  v33 = v26;
  v89 = v27;
  v34 = v27;
  v88 = v28;
  v35 = v28;
  v36 = 0.0;
  v98 = a2;
  v37 = a2;
  v38 = 0.0;
  v39 = 0.0;
  v40 = a3;
  v41 = v107;
  do
  {
    v108 = v33;
    v109 = v34;
    v110 = *&v35;
    v42 = v37 + 1;
    v43 = v32;
    Text.Layout.Line.subscript.getter();
    Text.Layout.Run.typographicBounds.getter();
    (*v29)(v11, v9);
    v127.origin.x = v118;
    v44 = v120;
    v45 = v121;
    v127.origin.y = v119 - v121;
    v46 = v122;
    v127.size.height = v121 + v122;
    v124.origin.x = v43;
    v124.origin.y = v108;
    v124.size.width = v109;
    *&v124.size.height = v110;
    v127.size.width = v120;
    *&v32 = CGRectUnion(v124, v127);
    if (v39 <= v45)
    {
      v39 = v45;
    }

    if (v38 <= v46)
    {
      v38 = v46;
    }

    if (v36 <= v123)
    {
      v36 = v123;
    }

    v31 = v31 + v44;
    v37 = v42;
  }

  while (v40 != v42);
  a3 = v97;
  v47 = (v97 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
  *v47 = v32;
  v47[1] = v33;
  v47[2] = v34;
  v47[3] = v35;
  v48 = (a3 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
  *v48 = v39;
  v48[1] = v38;
  v48[2] = v36;
  v48[3] = v31;
  v92 = v40;
  Text.Layout.Line.characterRanges(runIndices:)();
  v49 = Text.Layout.Line.clusters(for:)();
  v50 = *(v49 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  if (v50)
  {
    v112 = MEMORY[0x1E69E7CC0];
    v104 = v50;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v52 = 0;
    v51 = v112;
    *&v109 = v49 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v9 = (v106 + 16);
    a3 = (v103 + 16);
    v53 = (v103 + 8);
    *&v108 = v106 + 8;
    v54 = v102;
    v103 = v106 + 16;
    v105 = v49;
    while (v52 < *(v49 + 16))
    {
      v110 = v51;
      v55 = *(v106 + 16);
      v55(v54, *&v109 + *(v106 + 72) * v52, v17);
      lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v111[0] == v111[4])
      {
        (**&v108)(v54, v17);
        v56 = 0.0;
      }

      else
      {
        v55(v16, v54, v17);
        v57 = *(v101 + 36);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (*&v16[v57] == v111[0])
        {
          v56 = INFINITY;
          MaxX = -INFINITY;
        }

        else
        {
          v59 = -INFINITY;
          v56 = INFINITY;
          v9 = v100;
          do
          {
            while (1)
            {
              v60 = dispatch thunk of Collection.subscript.read();
              (*a3)(v13);
              v60(v111, 0);
              dispatch thunk of Collection.formIndex(after:)();
              Text.Layout.RunSlice.typographicBounds.getter();
              (*v53)(v13, v9);
              v61 = v113;
              v62 = v115;
              v63 = v114 - v116;
              v64 = v116 + v117;
              v125.origin.x = v113;
              v125.origin.y = v114 - v116;
              v125.size.width = v115;
              v125.size.height = v116 + v117;
              MinX = CGRectGetMinX(v125);
              if (MinX < v56)
              {
                v56 = MinX;
              }

              v126.origin.x = v61;
              v126.origin.y = v63;
              v126.size.width = v62;
              v126.size.height = v64;
              MaxX = CGRectGetMaxX(v126);
              dispatch thunk of Collection.endIndex.getter();
              v66 = *&v16[v57];
              if (v59 > MaxX)
              {
                break;
              }

              v59 = MaxX;
              if (v66 == v111[0])
              {
                goto LABEL_26;
              }
            }
          }

          while (v66 != v111[0]);
          MaxX = v59;
        }

LABEL_26:
        outlined destroy of IndexingIterator<Text.Layout.Cluster>(v16, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
        v54 = v102;
        (**&v108)(v102, v17);
        if (v56 > MaxX)
        {
          goto LABEL_37;
        }
      }

      v51 = v110;
      v112 = v110;
      v68 = v110[2];
      v67 = v110[3];
      if (v68 >= v67 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
        v54 = v102;
        v51 = v112;
      }

      ++v52;
      *(v51 + 2) = v68 + 1;
      *&v51[8 * v68 + 32] = v56;
      v41 = v107;
      v49 = v105;
      v9 = v103;
      if (v52 == v104)
      {
        a3 = v97;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_31:
  *(a3 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) = v49;
  v69 = *(v49 + 16);
  if (!v69)
  {
    v70 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v9 = v51;
  v70 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v49 + 16), 0);
  if (specialized Sequence._copyContents(initializing:)(v111, (v70 + 32), v69, 0, v69) == v69)
  {
    v51 = v9;
LABEL_35:
    v112 = v70;
    v71 = v51;
    swift_bridgeObjectRetain_n();
    specialized MutableCollection<>.sort(by:)(&v112, v71);
    swift_bridgeObjectRelease_n();
    v72 = specialized Text.Effect.VisualOrderCollection.init(_:)(v112);
    v74 = v73;

    v76 = (a3 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder);
    *v76 = v72;
    v76[1] = v74;
    MEMORY[0x1EEE9AC00](v75);
    v83 = v41;
    specialized Sequence.reduce<A>(_:_:)(partial apply for closure #3 in Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:), v91, v90, v89, v88, (&v85 - 4), v98, v92);
    v77 = (a3 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_drawingBounds);
    *v77 = v78;
    v77[1] = v79;
    v77[2] = v80;
    v77[3] = v81;
    (*(v93 + 32))(a3 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v99, v94);
    *(a3 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterOffset) = 0;
    (*(v95 + 8))(v41, v96);
    return a3;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  v84 = 0;
  v83 = 401;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  swift_bridgeObjectRelease_n();

  (*(v95 + 8))(a3 + v86, v96);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2)
{
  v25 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v25);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a1;
    v19[1] = v2;
    v10 = 0;
    v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22[0] = v9;
          v22[1] = v21;
          v13 = v22 + v10;
        }

        else
        {
          v12 = v20;
          if ((v9 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter();
          }

          v13 = (v12 + v10);
        }

        if ((*v13 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v17 = (__clz(*v13 ^ 0xFF) - 24);
        if (v17 <= 2)
        {
          if (v17 != 1)
          {
            v15 = 2;
            goto LABEL_16;
          }

LABEL_15:
          v15 = 1;
          goto LABEL_16;
        }

        if (v17 == 3)
        {
          v15 = 3;
        }

        else
        {
          v15 = 4;
        }
      }

LABEL_16:
      Unicode.Scalar.properties.getter();
      v16 = Unicode.Scalar.Properties.isDiacritic.getter();
      (*v11)(v7, v25);
      if (v16)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v10 += v15;
      if (v10 >= v8)
      {
        return v23;
      }
    }
  }

  return 0;
}

uint64_t specialized Text.Effect.PartialMap.validate(id:keyframes:)(unint64_t a1, int64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout.Cluster();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16))
  {
    return 1;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v11 & 1) == 0)
  {
    return 1;
  }

  v77 = v7;
  v12 = *(*(a3 + 56) + 8 * v10);
  v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0xA0);
  v78 = v12;
  v14 = v12;
  v15 = v13();
  if (!*(a2 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v15), (v17 & 1) == 0))
  {

    return 2;
  }

  v18 = *(*(a2 + 56) + 16 * v16);

  v76 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x98))(v19);
  if (v76)
  {
    v73 = a1;
    a1 = *(v18 + 16);
    v72 = a2;
    if (a1)
    {
      v80 = v14;
      v82 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0);
      v20 = v82;
      v21 = *(v18 + 16);
      a2 = *(v82 + 16);
      v14 = 32;
      v22 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
      do
      {
        class_meths = v22[43].class_meths;
        v24 = *(*(*(v18 + v14) + class_meths) + 16);
        v82 = v20;
        v25 = *(v20 + 24);
        v26 = a2 + 1;
        if (a2 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), a2 + 1, 1);
          v22 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
          v20 = v82;
        }

        *(v20 + 16) = v26;
        *(v20 + 8 * a2 + 32) = v24;
        if (!v21)
        {
          __break(1u);
          goto LABEL_56;
        }

        --v21;
        v14 += 8;
        ++a2;
        --a1;
      }

      while (a1);
      v26 = v20;

      v14 = v80;
      a2 = v72;
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    v24 = v77;
    class_meths = v76 & 0xFFFFFFFFFFFFFF8;
    a1 = v73;
    if (v76 >> 62)
    {
LABEL_58:
      if (v76 >= 0)
      {
        v50 = class_meths;
      }

      else
      {
        v50 = v76;
      }

      v51 = class_meths;
      result = MEMORY[0x19A8BDCD0](v50);
      class_meths = v51;
      if (result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_19:
        v28 = 0;
        v29 = v76 & 0xC000000000000001;
        v30 = v76 + 32;
        v80 = v24 + 16;
        v79 = v24 + 8;
        v69 = v26;
        v64 = result;
        v65 = class_meths;
        v62 = v76 + 32;
        v63 = v76 & 0xC000000000000001;
        while (1)
        {
          if (v29)
          {
            v49 = v28;
            v31 = MEMORY[0x19A8BDB80](v28, v76);
            v33 = __OFADD__(v49, 1);
            v34 = v49 + 1;
            if (v33)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v28 >= *(class_meths + 16))
            {
              goto LABEL_74;
            }

            v31 = *(v30 + 8 * v28);
            v32 = v28;

            v33 = __OFADD__(v32, 1);
            v34 = v32 + 1;
            if (v33)
            {
LABEL_48:
              __break(1u);
LABEL_49:

              return 6;
            }
          }

          if (!*(a2 + 16))
          {
            break;
          }

          v67 = v34;

          v35 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v31);
          if ((v36 & 1) == 0)
          {

            goto LABEL_52;
          }

          v37 = *(*(a2 + 56) + 16 * v35);

          v38 = *(v37 + 16);
          v74 = v31;
          v75 = v37;
          if (v38)
          {
            v24 = v14;
            v82 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
            v39 = v82;
            v40 = *(v37 + 16);
            a2 = v37 + 32;
            a1 = *(v82 + 16);
            v41 = v26;
            v42 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
            while (1)
            {
              class_meths = v42[43].class_meths;
              v14 = *(*(*a2 + class_meths) + 16);
              v82 = v39;
              v43 = *(v39 + 24);
              v26 = a1 + 1;
              if (a1 >= v43 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), a1 + 1, 1);
                v42 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
                v41 = v69;
                v39 = v82;
              }

              *(v39 + 16) = v26;
              *(v39 + 8 * a1 + 32) = v14;
              if (!v40)
              {
                break;
              }

              --v40;
              a2 += 8;
              ++a1;
              if (!--v38)
              {
                v14 = v24;
                a2 = v72;
                v24 = v77;
                goto LABEL_33;
              }
            }

LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v39 = MEMORY[0x1E69E7CC0];
          a1 = *(MEMORY[0x1E69E7CC0] + 16);
          v41 = v26;
LABEL_33:
          if (a1 != *(v41 + 16))
          {

            return 4;
          }

          v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v39, v41);

          result = v75;
          if ((v26 & 1) == 0)
          {

            return 5;
          }

          v68 = *(v75 + 16);
          if (v68)
          {
            v44 = 0;
            v45 = v75 + 32;
            v66 = v75 + 32;
            while (v44 < *(result + 16))
            {
              v46 = *(v45 + 8 * v44);
              v70 = v44 + 1;
              v71 = v46;
              v47 = *(v46 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
              a1 = *(v47 + 16);

              v48 = 0;
              while (a1 != v48)
              {
                if (v48 >= *(v47 + 16))
                {
                  goto LABEL_57;
                }

                (*(v24 + 16))(v9, v47 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v48++, v6);
                v26 = lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
                dispatch thunk of Collection.startIndex.getter();
                dispatch thunk of Collection.endIndex.getter();
                (*(v24 + 8))(v9, v6);
                class_meths = v81;
                if (v82 == v81)
                {
                  goto LABEL_49;
                }
              }

              v44 = v70;
              result = v75;
              v45 = v66;
              if (v68 == v70)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_73;
          }

LABEL_44:

          result = v64;
          class_meths = v65;
          v28 = v67;
          a1 = v73;
          v26 = v69;
          v30 = v62;
          v29 = v63;
          if (v67 == v64)
          {
            goto LABEL_62;
          }
        }

LABEL_52:

        return 3;
      }
    }

LABEL_62:
  }

  v53 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0xA8))(v52);

  if (*(a2 + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v53), (v55 & 1) != 0))
  {
    v56 = *(*(a2 + 56) + 16 * v54);

    v57 = 0;
    v58 = *(v56 + 16);
    while (1)
    {
      if (v58 == v57)
      {

        return 0;
      }

      if (v57 >= *(v56 + 16))
      {
        break;
      }

      v59 = v57 + 1;

      v61 = Text.Effect.KeyframeLayout.Fragment.isTooComplex.getter(v60);

      v57 = v59;
      if (v61)
      {

        return 7;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: Text.Layout.Run)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (offset: Int, element: Text.Layout.Run)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (offset: Int, element: Text.Layout.Run)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (offset: Int, element: Text.Layout.Run)?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Layout.Run)?, type metadata accessor for (offset: Int, element: Text.Layout.Run), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of EnumeratedSequence<Text.Layout.Line>.Iterator(uint64_t a1)
{
  type metadata accessor for EnumeratedSequence<Text.Layout.Line>(0, &lazy cache variable for type metadata for EnumeratedSequence<Text.Layout.Line>.Iterator, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981050], MEMORY[0x1E69E6E40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges()
{
  result = lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

void type metadata accessor for Any?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Text.Effect.PartialMap.ValidationResult(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.PartialMap.ValidationResult(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.VisualOrderCollection.Run(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.VisualOrderCollection.Run(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.KeyframeLayout.Fragment> and conformance IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type IndexingIterator<Text.Effect.KeyframeLayout.Fragment> and conformance IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type IndexingIterator<Text.Effect.KeyframeLayout.Fragment> and conformance IndexingIterator<A>)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(255, &lazy cache variable for type metadata for IndexingIterator<Text.Effect.KeyframeLayout.Fragment>, lazy protocol witness table accessor for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment, &type metadata for Text.Effect.KeyframeLayout.Fragment, MEMORY[0x1E69E6CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexingIterator<Text.Effect.KeyframeLayout.Fragment> and conformance IndexingIterator<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment()
{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.KeyframeLayout.Fragment and conformance Text.Effect.KeyframeLayout.Fragment);
  }

  return result;
}