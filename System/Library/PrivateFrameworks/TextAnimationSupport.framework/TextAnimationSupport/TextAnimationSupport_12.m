uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, unint64_t *a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t))
{
  v7 = v6;
  v9 = *v6;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v34 = a2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      Hasher.init(_seed:)();
      a6(v24);
      result = Hasher._finalize()();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_31;
    }

    v33 = 1 << *(v9 + 32);
    v7 = v6;
    if (v33 >= 64)
    {
      bzero((v9 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_31:
  *v7 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v7 = *v4;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(0, a3, a4, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
  v32 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v22);
      result = Hasher._finalize()();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(0, a3, a4, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
        v24 = v23;
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v22);
      result = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
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

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = v19[7] + 120 * result;
    v22 = *a1;
    v23 = *(a1 + 16);
    v24 = *(a1 + 48);
    *(v21 + 32) = *(a1 + 32);
    *(v21 + 48) = v24;
    *v21 = v22;
    *(v21 + 16) = v23;
    v25 = *(a1 + 64);
    v26 = *(a1 + 80);
    v27 = *(a1 + 96);
    *(v21 + 112) = *(a1 + 112);
    *(v21 + 80) = v26;
    *(v21 + 96) = v27;
    *(v21 + 64) = v25;
    v28 = v19[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v19[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 120 * result;

  return outlined assign with take of TextEffectsAnimationController.Timing(a1, v20);
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>, type metadata accessor for Text.Effect.AnyAnimationInfo);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    v20 = v19[6] + 56 * result;
    v21 = *(a2 + 16);
    *v20 = *a2;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a2 + 32);
    *(v20 + 48) = *(a2 + 48);
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>, type metadata accessor for AnyTextAnimation);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>, type metadata accessor for AnyTextEffect);
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568]);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>, type metadata accessor for Text.Effect.AnyStateSnapshot);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, TextAnimator>, type metadata accessor for TextAnimator);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    v21 = v19[7] + 56 * result;
    v22 = *a1;
    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    *(v21 + 48) = *(a1 + 48);
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    *v21 = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 56 * result;

  return outlined assign with take of Text.Effect.BaseFragment(a1, v20);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for Text.Effect.InteractionMetrics() - 8) + 72) * v10;

    return outlined assign with take of Text.Effect.InteractionMetrics(a1, v18);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    *v24 = a1;
    *(v24 + 8) = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = v23[7] + 16 * v13;
  *v27 = a1;
  *(v27 + 8) = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
  if (v22 >= v20 && (a3 & 1) != 0)
  {
LABEL_8:
    v25 = *v10;
    if (v21)
    {
      *(v25[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a2;
    *(v25[7] + 8 * result) = a1;
    v26 = v25[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v19)
    {
      v25[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  if (v22 >= v20 && (a3 & 1) == 0)
  {
    v23 = result;
    a4();
    result = v23;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1, a5, a6);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v21 & 1) == (v24 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    specialized _NativeDictionary.copy()();
    result = v19;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a1;
    v22[1] = a2;
    *(v21[7] + 8 * result) = a4;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    specialized _NativeDictionary.copy()();
    result = v21;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = (v23[7] + 24 * result);
      *v24 = a1;
      v24[1] = a2;
      v24[2] = a3;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedStringKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 120 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  v6 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v6;
  *(v4 + 112) = *(a3 + 112);
  v7 = *(a3 + 96);
  *(v4 + 80) = *(a3 + 80);
  *(v4 + 96) = v7;
  *(v4 + 64) = *(a3 + 64);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Text.Effect.InteractionMetrics();
  result = outlined init with take of Text.Effect.InteractionMetrics(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
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

uint64_t specialized TextFilterEffect.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v49) = a8;
  v50 = a7;
  v52 = a5;
  v53 = a6;
  v54 = a1;
  v16 = *v12;
  v17 = *(*(*v12 + 128) + 8);
  v18 = *(*v12 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = v43 - v20;
  v21 = type metadata accessor for Text.Effect.DrawableContent();
  v44 = *(v21 - 8);
  v45 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v43 - v22;
  v24 = *(v16 + 152);
  type metadata accessor for Text.Effect.AttributeTracker();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E7CC8];
  *(v25 + 16) = MEMORY[0x1E69E7CC8];
  *(v25 + 24) = v26;
  *(v25 + 32) = 0;
  *(v25 + 40) = v26;
  *(v25 + 48) = 0;
  *(v25 + 56) = MEMORY[0x1E69E7CD0];
  v55 = v12;
  *&v12[v24] = v25;
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  v27 = (*(v17 + 128))(v18, v17);
  v28 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v27);
  v29 = Text.Effect.Keyframes.subscript.getter(a2, v28, a11);
  if (!v29)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v30 = v29;
  v43[2] = a9;
  v51 = a12;
  Text.Effect.BaseContext.content<A>(for:key:)(v18, a2, v28, a9, a10, a11, a12, v18, v17);
  v31 = *(v17 + 136);
  v32 = v46;
  v33 = v50;
  v50 = v18;
  v31(v23, a3, a4, v52, v53, v33, v49 & 1);
  (*(v47 + 4))(&v55[*(*v55 + 144)], v32, v48);
  v34 = *(v30 + 16);
  if (v34)
  {
    v43[1] = v28;
    v46 = a11;
    v47 = v23;
    v48 = a3;
    v49 = a4;
    v56 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    v35 = v56;
    v36 = *(v30 + 16);
    v37 = *(v56 + 16);
    v38 = 32;
    v39 = v50;
    while (1)
    {
      v40 = *(*(*(v30 + v38) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v56 = v35;
      v41 = *(v35 + 24);
      if (v37 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v37 + 1, 1);
        v35 = v56;
      }

      *(v35 + 16) = v37 + 1;
      *(v35 + 8 * v37 + 32) = v40;
      if (!v36)
      {
        break;
      }

      --v36;
      v38 += 8;
      ++v37;
      if (!--v34)
      {

        (*(*(v39 - 8) + 8))(v54, v39);
        (*(v44 + 8))(v47, v45);

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  (*(*(v50 - 8) + 8))(v54);
  (*(v44 + 8))(v23, v45);
  v35 = MEMORY[0x1E69E7CC0];
LABEL_10:
  result = v55;
  *(v55 + 2) = v35;
  return result;
}

uint64_t specialized TextFilterEffect.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for TextFilterEffect.AnimationInfo();
  swift_allocObject();
  return specialized TextFilterEffect.AnimationInfo.init(effect:identifier:from:to:variant:duration:context:)(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11, a12);
}

uint64_t specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v37 = a7;
  v40 = a6;
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v39 = a1;
  v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0xE8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
  v18 = *&v11[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  if (*(*(a11 + 80) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v18), (v19 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    v28 = v18;
    v33 = a9;
    swift_endAccess();
    (*(v14 + 16))(v16, &v11[*((*MEMORY[0x1E69E7D40] & *v11) + 0xF8)], v13);
    v32 = *&v11[v17];
    v20 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(a2);
    v30 = v21;
    v31 = v20;
    v22 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v35);
    v29 = v23;

    v24 = v38;

    v25 = specialized TextFilterEffect.AnimationInfo.__allocating_init(effect:identifier:from:to:variant:duration:context:)(v16, v32, v31, v30, v22, v29, v40, v37 & 1, v24, v33, a10, a11);
    if (v39)
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a11 + 80);
      *(a11 + 80) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v28, isUniquelyReferenced_nonNull_native);
      *(a11 + 80) = v41;
      swift_endAccess();
    }
  }

  type metadata accessor for TextFilterEffect.AnimationInfo();
  result = swift_dynamicCastClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized TextFilterEffect.defaultDrawingState.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  type metadata accessor for Text.Effect.ConcreteLayoutState();
  v4 = (*(v3 + 128))(a1, v3);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v4);
}

uint64_t outlined assign with take of Text.Effect.InteractionMetrics(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.InteractionMetrics();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<[Path?]>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[Path?]>)
  {
    type metadata accessor for _ContiguousArrayStorage<[Path]>(255, &lazy cache variable for type metadata for [Path?], &lazy cache variable for type metadata for Path?, MEMORY[0x1E69E6720], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[Path?]>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<[Path]>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _ss23_ContiguousArrayStorageCySiGMaTm_0(255, a3, MEMORY[0x1E6980F80], a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void Text.Effect.BaseFragment.typographicBounds(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Text.Layout.Line();
  v73 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Layout.RunSlice();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Text.Layout.Cluster();
  v74 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v80 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 48);
  v20 = __OFSUB__(a1, v19);
  v21 = a1 - v19;
  if (v20)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v22 = v10;
  v23 = a2 - v19;
  if (__OFSUB__(a2, v19))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v23 < v21)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v21 < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  v71 = *(v3 + 24);
  v24 = *(v71 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
  v25 = *(v24 + 16);
  if (v25 < v21 || v25 < v23)
  {
    goto LABEL_54;
  }

  if (v21 != v23)
  {
    v69 = v7;
    v70 = a3;
    v33 = v74;
    v79 = v24 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v78 = v74 + 16;
    v77 = v74 + 8;
    v83 = (v22 + 16);
    v34 = (v22 + 8);
    v68[1] = v24;

    LODWORD(v84) = 1;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v76 = v23;
    while (v21 < v23)
    {
      v35 = *(v33 + 72);
      v82 = v21;
      v36 = v79 + v35 * v21;
      v37 = *(v33 + 16);
      v38 = v80;
      v37(v80, v36, v16);
      v37(v15, v38, v16);
      v39 = *(v81 + 36);
      lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
      dispatch thunk of Collection.startIndex.getter();
      (*(v33 + 8))(v38, v16);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v15[v39] != v88[0])
      {
        v85 = v32;
        v75 = v31;
        v86 = v29;
        v87 = v28;
        v40 = dispatch thunk of Collection.subscript.read();
        v41 = *v83;
        (*v83)(v12);
        v40(v88, 0);
        dispatch thunk of Collection.formIndex(after:)();
        Text.Layout.RunSlice.typographicBounds.getter();
        v42 = *v34;
        (*v34)(v12, v9);
        v43 = v89;
        v45 = v91;
        v44 = v92;
        v46 = v90 - v92;
        v47 = v93;
        v95.origin.x = v89;
        v95.origin.y = v90 - v92;
        v95.size.width = v91;
        v95.size.height = v92 + v93;
        MinX = CGRectGetMinX(v95);
        v96.origin.x = v43;
        v96.origin.y = v46;
        v96.size.width = v45;
        v96.size.height = v44 + v47;
        MaxX = CGRectGetMaxX(v96);
        if (MinX > MaxX)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          break;
        }

        if (LOBYTE(v84))
        {
          v31 = MinX;
          v32 = MaxX;
        }

        else
        {
          v31 = v75;
          if (MinX < v75)
          {
            v31 = MinX;
          }

          v32 = v85;
          if (MaxX >= v85)
          {
            v32 = MaxX;
          }

          if (v31 > v32)
          {
            goto LABEL_48;
          }
        }

        if (v30 <= v44)
        {
          v30 = v44;
        }

        v29 = v86;
        if (v86 <= v47)
        {
          v29 = v47;
        }

        while (1)
        {
          v28 = v87;
          if (v87 <= v94)
          {
            v28 = v94;
          }

          dispatch thunk of Collection.endIndex.getter();
          if (*&v15[v39] == v88[0])
          {
            break;
          }

          v85 = v32;
          v84 = v30;
          v86 = v29;
          v87 = v28;
          v50 = dispatch thunk of Collection.subscript.read();
          v41(v12);
          v50(v88, 0);
          dispatch thunk of Collection.formIndex(after:)();
          Text.Layout.RunSlice.typographicBounds.getter();
          v42(v12, v9);
          v51 = v89;
          v52 = v91;
          v53 = v92;
          v54 = v90 - v92;
          v55 = v93;
          v97.origin.x = v89;
          v97.origin.y = v90 - v92;
          v97.size.width = v91;
          v97.size.height = v92 + v93;
          v56 = CGRectGetMinX(v97);
          v98.origin.x = v51;
          v98.origin.y = v54;
          v98.size.width = v52;
          v98.size.height = v53 + v55;
          v57 = CGRectGetMaxX(v98);
          if (v56 > v57)
          {
            goto LABEL_47;
          }

          if (v56 < v31)
          {
            v31 = v56;
          }

          v32 = v85;
          if (v57 >= v85)
          {
            v32 = v57;
          }

          v30 = v84;
          if (v31 > v32)
          {
            goto LABEL_48;
          }

          if (v84 <= v53)
          {
            v30 = v53;
          }

          v29 = v86;
          if (v86 <= v55)
          {
            v29 = v55;
          }
        }

        LODWORD(v84) = 0;
        v33 = v74;
      }

      v21 = v82 + 1;
      outlined destroy of IndexingIterator<Text.Layout.Cluster>(v15);
      v23 = v76;
      if (v21 == v76)
      {

        a3 = v70;
        v7 = v69;
        v27 = LOBYTE(v84);
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v27 = 1;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
LABEL_43:
  v58 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
  v59 = v73;
  v60 = *(v73 + 16);
  v61 = v71;
  v62 = v72;
  v60(v72, v71 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v7, v17);
  Text.Layout.Line.origin.getter();
  v64 = v63;
  v65 = *(v59 + 8);
  v65(v62, v7);
  if (v27)
  {
    (v60)(v62, v61 + v58, v7);
    Text.Layout.Line.origin.getter();
    v31 = v66;
    v65(v62, v7);
    v67 = 0.0;
  }

  else
  {
    v67 = v32 - v31;
  }

  *a3 = v31;
  *(a3 + 8) = v64;
  *(a3 + 16) = v67;
  *(a3 + 24) = v30;
  *(a3 + 32) = v29;
  *(a3 + 40) = v28;
}

uint64_t Text.Effect.DrawableFragment.init(keyframes:key:fragment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = Text.Effect.Keyframes.subscript.getter(a2, a3, a1);
  if (!v10)
  {
    goto LABEL_12;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v11 = *(v10 + 16);
  if (v11 > a4)
  {
    v12 = (v10 + 32);
    v13 = *(v10 + 32 + 8 * a4);
    v14 = 0;
    if (!a4)
    {
LABEL_8:

      *a5 = a1;
      a5[1] = a2;
      a5[2] = a3;
      a5[3] = v13;
      a5[4] = a4;
      a5[5] = v11;
      a5[6] = v14;
      return result;
    }

    v15 = a4;
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
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Text.Effect.BaseFragment.onlyEmojis.getter()
{
  v1 = type metadata accessor for Text.Layout.Run();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Text.Layout.RunSlice();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Layout.Cluster();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = *(*(v0 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
  v19 = *(v18 + 16);
  if (!v19)
  {
    return 1;
  }

  v44 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v43 = v13 + 16;
  v49 = "port.TextFilterEffect";
  v51 = (v5 + 16);
  v52 = v53 + 1;
  v53 = (v5 + 8);
  v45 = (v13 + 8);

  v21 = 0;
  v40 = v13;
  v41 = v9;
  v46 = result;
  v47 = v17;
  v39 = v19;
  while (2)
  {
    if (v21 < *(result + 16))
    {
      v22 = v44 + *(v13 + 72) * v21;
      v23 = *(v13 + 16);
      v24 = v21;
      v23(v17, v22, v12);
      v42 = v24 + 1;
      v23(v48, v17, v12);
      v25 = MEMORY[0x1E6981078];
      lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
      dispatch thunk of Sequence.makeIterator()();
      v26 = *(v9 + 36);
      lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, v25);
      v50 = v26;
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter();
        if (*&v11[v26] == v55[0])
        {
          break;
        }

        v27 = dispatch thunk of Collection.subscript.read();
        (*v51)(v7);
        v27(v55, 0);
        dispatch thunk of Collection.formIndex(after:)();
        Text.Layout.RunSlice.run.getter();
        v28 = Text.Layout.Run.font.getter();
        if (!v28)
        {

          (*v52)(v3, v54);
          (*v53)(v7, v4);
          goto LABEL_13;
        }

        v29 = v28;
        v30 = v11;
        v31 = v12;
        v32 = v7;
        v33 = v3;
        v34 = v4;
        v35 = CTFontCopyPostScriptName(v28);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v4 = v34;
        v3 = v33;
        v7 = v32;
        v12 = v31;
        v11 = v30;
        v36._object = (v49 | 0x8000000000000000);
        v36._countAndFlagsBits = 0xD000000000000010;
        v37 = String.hasPrefix(_:)(v36);

        v26 = v50;

        (*v52)(v3, v54);
        (*v53)(v7, v4);
        if (!v37)
        {

LABEL_13:
          outlined destroy of IndexingIterator<Text.Layout.Cluster>(v11);
          (*v45)(v47, v12);
          return 0;
        }
      }

      outlined destroy of IndexingIterator<Text.Layout.Cluster>(v11);
      v17 = v47;
      (*v45)(v47, v12);
      v13 = v40;
      v9 = v41;
      v21 = v42;
      result = v46;
      if (v42 != v39)
      {
        continue;
      }

      return 1;
    }

    break;
  }

  __break(1u);
  return result;
}

double Text.Effect.DrawableFragment.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  v7 = specialized Text.Effect.Key.key<A>(for:state:)(*(a2 + 16), a1, v5);
  v9 = v8;

  Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(v10, v7, v9, v6, v13);
  v11 = v13[1];
  *a3 = v13[0];
  *(a3 + 16) = v11;
  result = *&v14;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  return result;
}

double Text.Effect.DrawableFragment.lineBreakingFragment.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v5 + 120))(v4, v5, v8);
  v11 = Text.Effect.DrawableFragment.subscript.getter(v10, a1, v15);
  (*(v7 + 8))(v10, AssociatedTypeWitness, v11);
  v12 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v12;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  return result;
}

uint64_t Text.Effect.DrawableFragment.range.getter()
{
  result = *(v0 + 48);
  v2 = *(*(*(v0 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
  if (__OFADD__(result, v2))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result + v2 < result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void Text.Effect.DrawableFragment.typographicBounds(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (v2 >= a1)
  {
    Text.Effect.BaseFragment.typographicBounds(for:)(a1, v2, v5);
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
    a2[2] = v5[2];
    return;
  }

  __break(1u);
}

uint64_t Text.Effect.DrawableFragment.baseWritingDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Text.Layout.Line();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(v1 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v3, v5);
  Text.Layout.Line.baseWritingDirection.getter(a1);
  return (*(v4 + 8))(v7, v3);
}

double Text.Effect.DrawableFragment.defaultDrawingFragment.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v5 + 128))(v4, v5, v8);
  v11 = Text.Effect.DrawableFragment.subscript.getter(v10, a1, v15);
  (*(v7 + 8))(v10, AssociatedTypeWitness, v11);
  v12 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v12;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  return result;
}

void Text.Layout.Cluster.typographicBounds(with:)(uint64_t a1@<X0>, double *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v3 = type metadata accessor for Text.Layout.RunSlice();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v11 - 8) + 16))(v10, v2, v11);
  v12 = *(v8 + 44);
  lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  MinX = 0.0;
  v17 = 0.0;
  v43 = *&v10[v12];
  v42 = v51[0];
  if (v43 == v51[0])
  {
LABEL_2:
    outlined destroy of IndexingIterator<Text.Layout.Cluster>(v10);
    Text.Layout.Line.origin.getter();
    v19 = v18;
    if (v43 == v42)
    {
      Text.Layout.Line.origin.getter();
      MinX = v20;
      v21 = 0.0;
    }

    else
    {
      v21 = v17 - MinX;
    }

    v39 = v45;
    *v45 = MinX;
    *(v39 + 1) = v19;
    v39[2] = v21;
    v39[3] = v15;
    v39[4] = v14;
    v39[5] = v13;
    return;
  }

  v22 = dispatch thunk of Collection.subscript.read();
  v41 = *(v4 + 16);
  v41(v6);
  v22(v51, 0);
  dispatch thunk of Collection.formIndex(after:)();
  Text.Layout.RunSlice.typographicBounds.getter();
  v23 = *(v4 + 8);
  v46 = v4 + 8;
  v23(v6, v3);
  v24 = v41;
  v25 = v52;
  v27 = v54;
  v26 = v55;
  v28 = v53 - v55;
  v29 = v56;
  v58.origin.x = v52;
  v58.origin.y = v53 - v55;
  v58.size.width = v54;
  v58.size.height = v55 + v56;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = v25;
  v59.origin.y = v28;
  v59.size.width = v27;
  v59.size.height = v26 + v29;
  MaxX = CGRectGetMaxX(v59);
  if (MinX <= MaxX)
  {
    v17 = MaxX;
    if (v26 < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v26;
    }

    if (v29 < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v29;
    }

    if (v57 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v57;
    }

    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*&v10[v12] == v51[0])
      {
        goto LABEL_2;
      }

      v50 = v17;
      v47 = v15;
      v48 = v14;
      v49 = v13;
      v31 = dispatch thunk of Collection.subscript.read();
      v24(v6);
      v31(v51, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Text.Layout.RunSlice.typographicBounds.getter();
      v23(v6, v3);
      v32 = v52;
      v33 = v54;
      v34 = v55;
      v35 = v53 - v55;
      v36 = v56;
      v60.origin.x = v52;
      v60.origin.y = v53 - v55;
      v60.size.width = v54;
      v60.size.height = v55 + v56;
      v37 = CGRectGetMinX(v60);
      v61.origin.x = v32;
      v61.origin.y = v35;
      v61.size.width = v33;
      v17 = v50;
      v61.size.height = v34 + v36;
      v38 = CGRectGetMaxX(v61);
      if (v37 > v38)
      {
        break;
      }

      if (v37 < MinX)
      {
        MinX = v37;
      }

      if (v17 <= v38)
      {
        v17 = v38;
      }

      if (MinX > v17)
      {
        goto LABEL_31;
      }

      v15 = v47;
      if (v47 <= v34)
      {
        v15 = v34;
      }

      v14 = v48;
      if (v48 <= v36)
      {
        v14 = v36;
      }

      v13 = v49;
      if (v49 <= v57)
      {
        v13 = v57;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

BOOL Text.Effect.BaseFragment.coversAllParagraphs.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  swift_beginAccess();
  v4 = *(v2 + 48);
  v7 = *(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v3), (v6 & 1) != 0) && (*(*(v4 + 56) + 16 * v5 + 8) & 2) == 0;
  swift_endAccess();
  return v7;
}

uint64_t outlined destroy of IndexingIterator<Text.Layout.Cluster>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Text.Effect.BaseFragment.glyphRanges(for:)(uint64_t a1)
{
  v62 = type metadata accessor for Text.Layout.Line();
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v63 = v44 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v57 = v44 - v14;
  v56 = type metadata accessor for Text.Layout.RunSlice();
  v15 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Layout.Cluster();
  v18 = lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  v19 = dispatch thunk of Collection.count.getter();
  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
    return v20;
  }

  v65 = MEMORY[0x1E69E7CC0];
  v50 = v19;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  v54 = v65;
  v49 = v17;
  v48 = v18;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = *(v61 + 24);
    v66[0] = v23;
    v47 = (v15 + 16);
    v46 = (v5 + 16);
    v60 = (v59 + 2);
    v61 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v58 = (v5 + 32);
    ++v59;
    v24 = (v5 + 8);
    v45 = (v15 + 8);
    v44[1] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44[0] = a1;
    while (1)
    {
      v25 = __OFADD__(v22, 1);
      v26 = v22 + 1;
      if (v25)
      {
        break;
      }

      v51 = v26;
      v27 = dispatch thunk of Collection.subscript.read();
      (*v47)(v55);
      v27(v64, 0);
      v28 = Text.Layout.RunSlice.indices.getter();
      v52 = v29;
      v53 = v28;
      v30 = v57;
      Text.Layout.RunSlice.run.getter();
      (*v46)(v63, v30, v4);
      v31 = *(v23 + 16);

      v32 = 0;
      while (1)
      {
        if (v31 == *(v23 + 24))
        {
          outlined destroy of Text.Effect.KeyframeLayout.Fragment(v66);
          v36 = *v24;
          (*v24)(v63, v4);
          goto LABEL_18;
        }

        v33 = v62;
        (*v60)(v3, v23 + v61, v62);
        Text.Layout.Line.subscript.getter();
        result = (*v59)(v3, v33);
        if (v31 < *(v23 + 16) || v31 >= *(v23 + 24))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          break;
        }

        ++v31;
        (*v58)(v10, v7, v4);
        lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028]);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v35 = dispatch thunk of Collection.distance(from:to:)();
        result = (*v24)(v10, v4);
        v25 = __OFADD__(v32, v35);
        v32 += v35;
        if (v25)
        {
          goto LABEL_26;
        }
      }

      outlined destroy of Text.Effect.KeyframeLayout.Fragment(v66);
      v36 = *v24;
      (*v24)(v63, v4);
      v36(v7, v4);
LABEL_18:
      v36(v57, v4);
      result = (*v45)(v55, v56);
      v37 = v53 + v32;
      if (__OFADD__(v53, v32))
      {
        goto LABEL_28;
      }

      v25 = __OFADD__(v52, v32);
      v38 = v52 + v32;
      if (v25)
      {
        goto LABEL_29;
      }

      if (v38 < v37)
      {
        goto LABEL_30;
      }

      v39 = v54;
      v65 = v54;
      v41 = *(v54 + 16);
      v40 = *(v54 + 24);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v54 = v41 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v42 = v54;
        v39 = v65;
      }

      *(v39 + 16) = v42;
      v54 = v39;
      v43 = v39 + 16 * v41;
      *(v43 + 32) = v37;
      *(v43 + 40) = v38;
      result = dispatch thunk of Collection.formIndex(after:)();
      v22 = v51;
      if (v51 == v50)
      {
        return v54;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Text.Effect.BaseFragment.glyphIndices(for:)(uint64_t a1)
{
  result = Text.Effect.BaseFragment.glyphRanges(for:)(a1);
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      v6 = (v2 + 32 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      if (*v6 != v7)
      {
        if (v7 < v8)
        {
          goto LABEL_19;
        }

        if (v8 >= v7)
        {
          goto LABEL_20;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
          v5 = result;
        }

        v9 = *(v5 + 16);
        do
        {
          v10 = *(v5 + 24);
          if (v9 >= v10 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 + 1, 1, v5);
            v5 = result;
          }

          *(v5 + 16) = v9 + 1;
          *(v5 + 8 * v9++ + 32) = v8++;
        }

        while (v7 != v8);
      }

      if (++v4 == v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t type metadata instantiation function for Text.Effect.DrawableFragment()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t lazy protocol witness table accessor for type Text.Layout.Cluster and conformance Text.Layout.Cluster(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextV0C16AnimationSupportE6EffectO7StopKeyO3key_AF0G9CollectorV7SegmentV7segmentShyAF12ClusterIndexVG7indicestSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall Text.Effect.StopCollector.flushSegment()()
{
  v1 = v0;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    v4 = v0[2];

    outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v3, v2);
    v5 = specialized Text.Effect.StopSegment.init(segment:)(v2);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v9 = v1[3];
      v32 = *(v9 + 2);
      v31 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_32:
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
      }

      *(v9 + 2) = v11 + 1;
      v12 = &v9[16 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v8;

      v13 = 0;
      v1[3] = v9;
      v33 = v4;
      v14 = v4 + 56;
      v15 = 1 << *(v4 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v4 + 56);
      v18 = (v15 + 63) >> 6;
      while (1)
      {
        if (!v17)
        {
          while (1)
          {
            v4 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v4 >= v18)
            {

              v3 = v31;
              goto LABEL_27;
            }

            v17 = *(v14 + 8 * v4);
            ++v13;
            if (v17)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v4 = v13;
LABEL_16:
        v7 = *(*(v33 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v17)))));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v1[4];
        v8 = v34;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        v22 = v8[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_30;
        }

        v9 = v21;
        if (v8[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v8 = &v34;
            v30 = v20;
            specialized _NativeDictionary.copy()();
            v20 = v30;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
          v8 = v34;
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
          if ((v9 & 1) != (v26 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }
        }

        v17 &= v17 - 1;
        v27 = v34;
        if (v9)
        {
          *(v34[7] + 8 * v20) = v32;
        }

        else
        {
          v34[(v20 >> 6) + 8] |= 1 << v20;
          *(v27[6] + 8 * v20) = v7;
          *(v27[7] + 8 * v20) = v32;
          v28 = v27[2];
          v24 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v24)
          {
            goto LABEL_31;
          }

          v27[2] = v29;
        }

        v1[4] = v27;
        v13 = v4;
      }
    }

LABEL_27:
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v3, v2);
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.StopCollector.Segment(void (**a1)(void **a1), unint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xC0uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    v7 = (*v2 + 96 * v6);
    v8 = v7[2];
    v9 = v7[3];
    *(result + 1) = v9;
    v10 = v7[4];
    v11 = v7[5];
    v12 = v7[6];
    v13 = v7[7];
    *(result + 4) = v12;
    *(result + 5) = v13;
    *(result + 2) = v10;
    *(result + 3) = v11;
    *result = v8;
    *(result + 8) = v10;
    *(result + 9) = v11;
    *(result + 10) = v12;
    *(result + 11) = v13;
    *(result + 6) = v8;
    *(result + 7) = v9;
    return protocol witness for Collection.subscript.read in conformance Text.Effect.StopCollector.Segment;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.StopCollector.Segment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.StopMarkerCollector.Segment(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + 16 * v3 + 32);
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.StopCollector.Segment@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, void, void)@<X5>, uint64_t a5@<X8>)
{
  result = a4(*a1, a2, *a3, *v5);
  *a5 = result;
  *(a5 + 8) = v8 & 1;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.StopMarkerCollector.Segment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

Swift::Void __swiftcall Text.Effect.StopMarkerCollector.flushSegment()()
{
  v1 = v0;
  if (v0[1])
  {
    v25 = *v0;
    v27 = v0[2];

    v2 = specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(v26);
    if (v2)
    {
      v3 = v2;
      v4 = v1[3];
      v5 = *(v4 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_33;
      }

      while (1)
      {
        v7 = *(v4 + 2);
        v6 = *(v4 + 3);
        if (v7 >= v6 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
        }

        *(v4 + 2) = v7 + 1;
        *&v4[8 * v7 + 32] = v3;
        v1[3] = v4;
        v8 = *(v27 + 16);
        if (!v8)
        {
          break;
        }

        v9 = 0;
        while (1)
        {
          if (v9 >= *(v27 + 16))
          {
            goto LABEL_31;
          }

          v10 = v27 + 32 + 16 * v9;
          v4 = *v10;
          v11 = *(v10 + 8);
          if (*v10 != v11)
          {
            break;
          }

LABEL_8:
          if (++v9 == v8)
          {
            goto LABEL_26;
          }
        }

        if (v11 < v4)
        {
          goto LABEL_32;
        }

        while (v4 < v11)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v1[4];
          v3 = v28;
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
          v15 = v3[2];
          v16 = (v14 & 1) == 0;
          v17 = __OFADD__(v15, v16);
          v18 = v15 + v16;
          if (v17)
          {
            goto LABEL_29;
          }

          v19 = v14;
          if (v3[3] < v18)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
            v3 = v28;
            v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
            if ((v19 & 1) != (v20 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

LABEL_21:
            v21 = v28;
            if (v19)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_21;
          }

          v3 = &v28;
          v24 = v13;
          specialized _NativeDictionary.copy()();
          v13 = v24;
          v21 = v28;
          if (v19)
          {
LABEL_13:
            *(v21[7] + 8 * v13) = v5;
            goto LABEL_14;
          }

LABEL_22:
          v21[(v13 >> 6) + 8] |= 1 << v13;
          *(v21[6] + 8 * v13) = v4;
          *(v21[7] + 8 * v13) = v5;
          v22 = v21[2];
          v17 = __OFADD__(v22, 1);
          v23 = v22 + 1;
          if (v17)
          {
            goto LABEL_30;
          }

          v21[2] = v23;
LABEL_14:
          ++v4;
          v1[4] = v21;
          if (v11 == v4)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 + 1, 1, v4);
      }
    }

LABEL_26:
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v25, v26);
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
}

uint64_t specialized init(base:glyphRanges:) in Cluster #1 in static Text.Effect.stopMarkers(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for Text.Layout.RunSlice();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Text.Layout.Cluster();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 16);
  v31 = a1;
  v15(v9, a1, v6, v12);
  (v15)(v14, v9, v6);
  v16 = *(v11 + 44);
  lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  dispatch thunk of Collection.startIndex.getter();
  v30[0] = *(v7 + 8);
  v30[1] = v7 + 8;
  (v30[0])(v9, v6);
  v17 = (v33 + 16);
  v18 = (v33 + 8);
  v19 = INFINITY;
  v20 = -INFINITY;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v14[v16] == v34[0])
    {
      break;
    }

    v21 = dispatch thunk of Collection.subscript.read();
    (*v17)(v5);
    v21(v34, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Text.Layout.RunSlice.typographicBounds.getter();
    (*v18)(v5, v3);
    v22 = v35;
    v23 = v37;
    v24 = v36 - v38;
    v25 = v38 + v39;
    v40.origin.x = v35;
    v40.origin.y = v36 - v38;
    v40.size.width = v37;
    v40.size.height = v38 + v39;
    MinX = CGRectGetMinX(v40);
    if (MinX < v19)
    {
      v19 = MinX;
    }

    v41.origin.x = v22;
    v41.origin.y = v24;
    v41.size.width = v23;
    v41.size.height = v25;
    MaxX = CGRectGetMaxX(v41);
    if (v20 <= MaxX)
    {
      v20 = MaxX;
    }
  }

  result = outlined destroy of IndexingIterator<Text.Layout.Cluster>(v14);
  if (v19 > v20)
  {
    __break(1u);
  }

  else
  {
    v29 = v31;
    Text.Layout.Cluster.stopKey.getter();
    (v30[0])(v29, v6);
    return v32;
  }

  return result;
}

uint64_t specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 < 2)
  {

    return 0;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO19StopMarkerCollectorV7SegmentV7ElementV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(v21, (v3 + 32), v2, a1);

  if (v4 == v2)
  {

    v21[0] = v3;
    specialized MutableCollection<>.sort(by:)(v21);
    v5 = *(v21[0] + 2);
    if (v5)
    {
      v6 = 0;
      v7 = (v21[0] + 56);
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = *(v7 - 3);
        v9 = *(v7 - 2);
        if (!v6)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v12 = *(v8 + 2);
          v11 = *(v8 + 3);
          if (v12 >= v11 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
          }

          *(v8 + 2) = v12 + 1;
          *&v8[8 * v12 + 32] = v10;
        }

        v13 = v6 + 1;
        if (v6 + 1 < v2)
        {
          v14 = *(v7 - 1);
          v15 = *v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v17 = *(v8 + 2);
          v16 = *(v8 + 3);
          if (v17 >= v16 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
          }

          *(v8 + 2) = v17 + 1;
          *&v8[8 * v17 + 32] = ((v10 + v9) * 0.5 + (v14 + v15) * 0.5) * 0.5;
        }

        if (v2 - 1 == v6)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v19 = *(v8 + 2);
          v18 = *(v8 + 3);
          if (v19 >= v18 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
          }

          *(v8 + 2) = v19 + 1;
          *&v8[8 * v19 + 32] = v9;
        }

        v7 += 2;
        v6 = v13;
      }

      while (v5 != v13);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    return v8;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t specialized static Text.Effect.stopMarkers(_:)(uint64_t a1)
{
  v200 = type metadata accessor for Text.Layout.Line();
  v197 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v3 = &v173 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v173 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v201 = &v173 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v194 = &v173 - v14;
  v193 = type metadata accessor for Text.Layout.RunSlice();
  v15 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Text.Layout.Cluster();
  MEMORY[0x1EEE9AC00](v186);
  v180 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v173 - v20;
  v22 = *(a1 + 24);
  v209 = v22;
  v23 = *(v22 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v208 = MEMORY[0x1E69E7CC0];
    v178 = v23;
    v177 = v19;

    v174 = v24;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v26 = v178;
    v27 = v177;
    v28 = 0;
    v29 = v208;
    v176 = v178 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v175 = v177 + 16;
    v199 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v184 = (v15 + 16);
    v183 = (v5 + 16);
    v198 = (v197 + 2);
    ++v197;
    v196 = (v5 + 32);
    v30 = (v5 + 8);
    v182 = (v15 + 8);
    v173 = (v177 + 8);
    v31 = v186;
    v187 = v21;
    do
    {
      if (v28 >= *(v26 + 16))
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v181 = v29;
      v32 = *(v27 + 72);
      v179 = v28;
      v33 = *(v27 + 16);
      v33(v21, v176 + v32 * v28, v31);
      v33(v180, v21, v31);
      v34 = lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
      v35 = dispatch thunk of Collection.count.getter();
      if (v35)
      {
        v207 = MEMORY[0x1E69E7CC0];
        v188 = v35;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
        *&v195 = v207;
        dispatch thunk of Collection.startIndex.getter();
        if (v188 < 0)
        {
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v36 = 0;
        v185 = v34;
        do
        {
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_162;
          }

          v189 = v38;
          v39 = dispatch thunk of Collection.subscript.read();
          (*v184)(v192);
          v39(&v202, 0);
          v191 = Text.Layout.RunSlice.indices.getter();
          v190 = v40;
          v41 = v194;
          Text.Layout.RunSlice.run.getter();
          (*v183)(v201, v41, v4);
          v42 = *(v22 + 16);

          v43 = 0;
          while (1)
          {
            if (v42 == *(v22 + 24))
            {
              outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v209);
              v47 = *v30;
              (*v30)(v201, v4);
              goto LABEL_21;
            }

            v44 = v200;
            (*v198)(v3, v22 + v199, v200);
            Text.Layout.Line.subscript.getter();
            (*v197)(v3, v44);
            if (v42 < *(v22 + 16) || v42 >= *(v22 + 24))
            {
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:

              Text.Effect.StopMarkerCollector.flushSegment()();
              v169 = v205;
              outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v202, v203);
              return v169;
            }

            lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028]);
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            ++v42;
            (*v196)(v10, v7, v4);
            lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(&lazy protocol witness table cache variable for type Text.Layout.Run and conformance Text.Layout.Run, MEMORY[0x1E6981028]);
            dispatch thunk of Collection.startIndex.getter();
            dispatch thunk of Collection.endIndex.getter();
            v46 = dispatch thunk of Collection.distance(from:to:)();
            (*v30)(v10, v4);
            v37 = __OFADD__(v43, v46);
            v43 += v46;
            if (v37)
            {
              goto LABEL_155;
            }
          }

          outlined destroy of Text.Effect.KeyframeLayout.Fragment(&v209);
          v47 = *v30;
          (*v30)(v201, v4);
          v47(v7, v4);
LABEL_21:
          v47(v194, v4);
          (*v182)(v192, v193);
          v48 = v191 + v43;
          if (__OFADD__(v191, v43))
          {
            goto LABEL_163;
          }

          v37 = __OFADD__(v190, v43);
          v49 = v190 + v43;
          if (v37)
          {
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
            goto LABEL_169;
          }

          if (v49 < v48)
          {
            goto LABEL_165;
          }

          v50 = v195;
          v207 = v195;
          v52 = *(v195 + 16);
          v51 = *(v195 + 24);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            *&v195 = v52 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
            v53 = v195;
            v50 = v207;
          }

          *(v50 + 16) = v53;
          *&v195 = v50;
          v54 = v50 + 16 * v52;
          *(v54 + 32) = v48;
          *(v54 + 40) = v49;
          v21 = v187;
          v31 = v186;
          dispatch thunk of Collection.formIndex(after:)();
          v36 = v189;
        }

        while (v189 != v188);
        v55 = v195;
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      *&v195 = specialized init(base:glyphRanges:) in Cluster #1 in static Text.Effect.stopMarkers(_:)(v180, v55);
      v57 = v56;
      v59 = v58;
      v61 = v60;
      (*v173)(v21, v31);
      v29 = v181;
      v208 = v181;
      v63 = *(v181 + 16);
      v62 = *(v181 + 24);
      if (v63 >= v62 >> 1)
      {
        LODWORD(v191) = v61;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
        LOBYTE(v61) = v191;
        v29 = v208;
      }

      *(v29 + 16) = v63 + 1;
      v64 = v29 + 32 * v63;
      *(v64 + 32) = v195;
      v28 = v179 + 1;
      *(v64 + 40) = v57;
      *(v64 + 48) = v59;
      *(v64 + 56) = v61;
      v27 = v177;
      v21 = v187;
      v26 = v178;
    }

    while (v28 != v174);
    v171 = v29;

    v172 = v171;
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v172 = MEMORY[0x1E69E7CC0];
  }

  v202 = 0;
  v203 = 0;
  v204 = 0;
  v205 = v25;
  v206 = MEMORY[0x1E69E7CC8];
  v65 = *(v172 + 16);
  if (!v65)
  {
    goto LABEL_156;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v196 = v25;
  v197 = (v172 + 32);
  v181 = v172;
  v192 = v65;
  while (1)
  {
    if (v70 >= *(v172 + 16))
    {
      goto LABEL_170;
    }

    v71 = &v197[4 * v70];
    v72 = *(v71 + 24);
    v201 = v67;
    if (v72 == 2)
    {
      break;
    }

    v113 = *(v71 + 1);
    v200 = *v71;
    v195 = v113;
    if (!v66 || ((v69 ^ v72) & 1) != 0)
    {
      if (!v66)
      {
        swift_bridgeObjectRetain_n();
        goto LABEL_135;
      }

      swift_bridgeObjectRetain_n();

      v115 = specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(v114);
      v116 = v66;
      if (!v115)
      {
        outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v68, v66);
        goto LABEL_135;
      }

      v117 = v115;
      v199 = v116;
      v118 = *(v196 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194 = v70;
      v193 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v118 + 1, 1, v196);
      }

      v121 = *(v196 + 2);
      v120 = *(v196 + 3);
      if (v121 >= v120 >> 1)
      {
        v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v196);
      }

      v122 = v196;
      *(v196 + 2) = v121 + 1;
      *&v122[8 * v121 + 32] = v117;
      v205 = v122;
      if (*(v67 + 2))
      {
        v123 = *(v67 + 2);
        v191 = v72;
        v124 = 0;
        v198 = (v67 + 32);
        while (1)
        {
          if (v124 >= *(v67 + 2))
          {
            goto LABEL_168;
          }

          v125 = &v198[2 * v124];
          v126 = *v125;
          v127 = v125[1];
          if (*v125 != v127)
          {
            break;
          }

LABEL_95:
          ++v124;
          v67 = v201;
          if (v124 == v123)
          {
            outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v193, v199);
            v65 = v192;
            v70 = v194;
            LOBYTE(v72) = v191;
            goto LABEL_135;
          }
        }

        if (v127 < v126)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        while (2)
        {
          if (v126 >= v127)
          {
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          v128 = v206;
          v129 = swift_isUniquelyReferenced_nonNull_native();
          v208 = v128;
          v130 = specialized __RawDictionaryStorage.find<A>(_:)(v126);
          v132 = *(v128 + 16);
          v133 = (v131 & 1) == 0;
          v37 = __OFADD__(v132, v133);
          v134 = v132 + v133;
          if (v37)
          {
            goto LABEL_160;
          }

          v135 = v131;
          if (*(v128 + 24) >= v134)
          {
            if (v129)
            {
              v136 = v128;
              goto LABEL_109;
            }

            v190 = v130;
            type metadata accessor for _DictionaryStorage<Text.Effect.GlyphIndex, Int>();
            v140 = static _DictionaryStorage.copy(original:)();
            v136 = v140;
            if (*(v128 + 16))
            {
              v141 = (v140 + 64);
              v142 = v128 + 64;
              v143 = ((1 << *(v136 + 32)) + 63) >> 6;
              if (v136 != v128 || v141 >= v142 + 8 * v143)
              {
                memmove(v141, (v128 + 64), 8 * v143);
              }

              v144 = 0;
              *(v136 + 16) = *(v128 + 16);
              v145 = 1 << *(v128 + 32);
              if (v145 < 64)
              {
                v146 = ~(-1 << v145);
              }

              else
              {
                v146 = -1;
              }

              v147 = v146 & *(v128 + 64);
              for (i = (v145 + 63) >> 6; v147; *(*(v136 + 56) + 8 * v150) = v153)
              {
                v149 = __clz(__rbit64(v147));
                v147 &= v147 - 1;
                v150 = v149 | (v144 << 6);
LABEL_126:
                v153 = *(*(v128 + 56) + 8 * v150);
                *(*(v136 + 48) + 8 * v150) = *(*(v128 + 48) + 8 * v150);
              }

              v151 = v144;
              while (1)
              {
                v144 = v151 + 1;
                if (__OFADD__(v151, 1))
                {
                  goto LABEL_179;
                }

                if (v144 >= i)
                {
                  break;
                }

                v152 = *(v142 + 8 * v144);
                ++v151;
                if (v152)
                {
                  v147 = (v152 - 1) & v152;
                  v150 = __clz(__rbit64(v152)) | (v144 << 6);
                  goto LABEL_126;
                }
              }
            }

            v130 = v190;
            if (v135)
            {
              goto LABEL_100;
            }

LABEL_110:
            *(v136 + 8 * (v130 >> 6) + 64) |= 1 << v130;
            *(*(v136 + 48) + 8 * v130) = v126;
            *(*(v136 + 56) + 8 * v130) = v118;
            v138 = *(v136 + 16);
            v37 = __OFADD__(v138, 1);
            v139 = v138 + 1;
            if (v37)
            {
              goto LABEL_166;
            }

            *(v136 + 16) = v139;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v134, v129);
            v136 = v208;
            v130 = specialized __RawDictionaryStorage.find<A>(_:)(v126);
            if ((v135 & 1) != (v137 & 1))
            {
              goto LABEL_180;
            }

LABEL_109:
            if ((v135 & 1) == 0)
            {
              goto LABEL_110;
            }

LABEL_100:
            *(*(v136 + 56) + 8 * v130) = v118;
          }

          ++v126;
          v206 = v136;
          if (v126 == v127)
          {
            goto LABEL_95;
          }

          continue;
        }
      }

      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v193, v199);
      v65 = v192;
      v70 = v194;
LABEL_135:
      v68 = v72 & 1;
      v202 = v68;
      v66 = MEMORY[0x1E69E7CC0];
      v203 = MEMORY[0x1E69E7CC0];
      v204 = MEMORY[0x1E69E7CC0];
      v67 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v154 = v68;
    v155 = v70;

    v156 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
    }

    v158 = *(v66 + 2);
    v157 = *(v66 + 3);
    if (v158 >= v157 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1, v66);
    }

    *(v66 + 2) = v158 + 1;
    *&v66[16 * v158 + 32] = v195;
    v159 = *(v200 + 16);
    v160 = *(v67 + 2);
    v161 = v160 + v159;
    if (__OFADD__(v160, v159))
    {
      goto LABEL_174;
    }

    v162 = swift_isUniquelyReferenced_nonNull_native();
    if (v162 && (v163 = *(v67 + 3) >> 1, v163 >= v161))
    {
      v164 = v67;
    }

    else
    {
      if (v160 <= v161)
      {
        v165 = v160 + v159;
      }

      else
      {
        v165 = v160;
      }

      v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v162, v165, 1, v67);
      v163 = *(v164 + 3) >> 1;
    }

    if (*(v200 + 16))
    {
      v166 = *(v164 + 2);
      if (v163 - v166 < v159)
      {
        goto LABEL_176;
      }

      memcpy(&v164[16 * v166 + 32], (v200 + 32), 16 * v159);

      if (v159)
      {
        v167 = *(v164 + 2);
        v37 = __OFADD__(v167, v159);
        v168 = v167 + v159;
        if (v37)
        {
          goto LABEL_177;
        }

        *(v164 + 2) = v168;
      }
    }

    else
    {

      if (v159)
      {
        goto LABEL_175;
      }
    }

    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v154, v156);
    v69 = v154;
    v68 = v154 & 1;
    v202 = v68;
    v203 = v66;
    v204 = v164;
    v67 = v164;
    v172 = v181;
    v70 = v155;
LABEL_38:
    if (++v70 == v65)
    {
      goto LABEL_156;
    }
  }

  if (!v66)
  {
LABEL_37:
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    goto LABEL_38;
  }

  v74 = specialized Text.Effect.StopMarkerCollection.Segment.init(_:)(v73);
  v75 = v66;
  if (!v74)
  {
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v68, v66);
    v172 = v181;
    goto LABEL_37;
  }

  v76 = v74;
  v199 = v75;
  v77 = *(v196 + 2);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v194 = v70;
  v193 = v68;
  if ((v78 & 1) == 0)
  {
    v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77 + 1, 1, v196);
  }

  v80 = *(v196 + 2);
  v79 = *(v196 + 3);
  if (v80 >= v79 >> 1)
  {
    v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v196);
  }

  v81 = v196;
  *(v196 + 2) = v80 + 1;
  *&v81[8 * v80 + 32] = v76;
  v205 = v81;
  v82 = *(v67 + 2);
  if (!v82)
  {
LABEL_130:
    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v193, v199);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v172 = v181;
    v65 = v192;
    v70 = v194;
    goto LABEL_38;
  }

  v83 = 0;
  v200 = (v67 + 32);
  while (1)
  {
    if (v83 >= *(v67 + 2))
    {
      goto LABEL_167;
    }

    v84 = (v200 + 16 * v83);
    v85 = *v84;
    v86 = v84[1];
    if (*v84 != v86)
    {
      break;
    }

LABEL_49:
    ++v83;
    v67 = v201;
    if (v83 == v82)
    {
      goto LABEL_130;
    }
  }

  if (v86 < v85)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  while (2)
  {
    if (v85 >= v86)
    {
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v87 = v206;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v208 = v87;
    v89 = specialized __RawDictionaryStorage.find<A>(_:)(v85);
    v91 = *(v87 + 16);
    v92 = (v90 & 1) == 0;
    v37 = __OFADD__(v91, v92);
    v93 = v91 + v92;
    if (v37)
    {
      goto LABEL_158;
    }

    v94 = v90;
    if (*(v87 + 24) < v93)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v93, v88);
      v95 = v208;
      v89 = specialized __RawDictionaryStorage.find<A>(_:)(v85);
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_180;
      }

LABEL_63:
      if ((v94 & 1) == 0)
      {
LABEL_64:
        *(v95 + 8 * (v89 >> 6) + 64) |= 1 << v89;
        *(*(v95 + 48) + 8 * v89) = v85;
        *(*(v95 + 56) + 8 * v89) = v77;
        v97 = *(v95 + 16);
        v37 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v37)
        {
          goto LABEL_161;
        }

        *(v95 + 16) = v98;
        goto LABEL_55;
      }

LABEL_54:
      *(*(v95 + 56) + 8 * v89) = v77;
LABEL_55:
      ++v85;
      v206 = v95;
      if (v85 == v86)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  if (v88)
  {
    v95 = v87;
    goto LABEL_63;
  }

  v198 = v89;
  type metadata accessor for _DictionaryStorage<Text.Effect.GlyphIndex, Int>();
  v99 = static _DictionaryStorage.copy(original:)();
  v95 = v99;
  if (!*(v87 + 16))
  {
LABEL_82:

    v89 = v198;
    if ((v94 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_54;
  }

  v100 = (v99 + 64);
  v101 = v87 + 64;
  v102 = ((1 << *(v95 + 32)) + 63) >> 6;
  if (v95 != v87 || v100 >= v101 + 8 * v102)
  {
    memmove(v100, (v87 + 64), 8 * v102);
  }

  v103 = 0;
  *(v95 + 16) = *(v87 + 16);
  v104 = 1 << *(v87 + 32);
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  else
  {
    v105 = -1;
  }

  v106 = v105 & *(v87 + 64);
  for (j = (v104 + 63) >> 6; v106; *(*(v95 + 56) + 8 * v109) = v112)
  {
    v108 = __clz(__rbit64(v106));
    v106 &= v106 - 1;
    v109 = v108 | (v103 << 6);
LABEL_80:
    v112 = *(*(v87 + 56) + 8 * v109);
    *(*(v95 + 48) + 8 * v109) = *(*(v87 + 48) + 8 * v109);
  }

  v110 = v103;
  while (1)
  {
    v103 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      break;
    }

    if (v103 >= j)
    {
      goto LABEL_82;
    }

    v111 = *(v101 + 8 * v103);
    ++v110;
    if (v111)
    {
      v106 = (v111 - 1) & v111;
      v109 = __clz(__rbit64(v111)) | (v103 << 6);
      goto LABEL_80;
    }
  }

LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Text.Effect.StopSegment.init(segment:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 < 2)
  {

    return 0;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO13StopCollectorV7SegmentV7ElementV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(v146, v3 + 32, v2, a1);

  if (v4 != v2)
  {
    goto LABEL_68;
  }

  v146[0] = v3;
  specialized MutableCollection<>.sort(by:)(v146);
  v3 = v146[0];
  v5 = *(v146[0] + 2);
  if (v5)
  {
    v6 = 0;
    v7 = -v5;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 1;
    while (1)
    {
      v139 = *&v3[v6 + 48];
      v141 = *&v3[v6 + 32];
      v135 = *&v3[v6 + 80];
      v137 = *&v3[v6 + 64];
      v12 = *&v3[v6 + 96];
      v13 = v3[v6 + 104];
      v15 = *&v3[v6 + 112];
      v14 = *&v3[v6 + 120];
      if (v6)
      {
        if (v9 < v2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v17 = *(v8 + 2);
        v16 = *(v8 + 3);
        if (v17 >= v16 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
        }

        *(v8 + 2) = v17 + 1;
        v18 = &v8[88 * v17];
        *(v18 + 2) = v141;
        *(v18 + 3) = v139;
        *(v18 + 4) = v137;
        *(v18 + 5) = v135;
        *(v18 + 12) = v12;
        v18[104] = v13;
        v19 = *(v146 + 3);
        *(v18 + 105) = v146[0];
        *(v18 + 27) = v19;
        *(v18 + 14) = v15;
        if (v9 < v2)
        {
LABEL_16:
          v20 = &v3[v6];
          v21 = (v15 + v14) * 0.5;
          v22 = (*&v3[v6 + 208] + *&v3[v6 + 216]) * 0.5;
          if (v22 - v21 <= 0.0)
          {
            goto LABEL_69;
          }

          v23 = v20[12].f64[0];
          v111 = v20[8];
          v117 = v20[9];
          v123 = v20[10];
          v129 = v20[11];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v25 = *(v8 + 2);
          v24 = *(v8 + 3);
          if (v25 >= v24 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v8);
          }

          v26 = (v21 + v22) * 0.5;
          v27 = (v26 - v21) / (v22 - v21);
          *(v8 + 2) = v25 + 1;
          v28 = &v8[88 * v25];
          *(v28 + 2) = vaddq_f64(v141, vmulq_n_f64(vsubq_f64(v111, v141), v27));
          *(v28 + 3) = vaddq_f64(v139, vmulq_n_f64(vsubq_f64(v117, v139), v27));
          *(v28 + 4) = vaddq_f64(v137, vmulq_n_f64(vsubq_f64(v123, v137), v27));
          *(v28 + 5) = vaddq_f64(v135, vmulq_n_f64(vsubq_f64(v129, v135), v27));
          *(v28 + 12) = v12 + (v23 - v12) * v27;
          v28[104] = v13;
          v29 = *(v146 + 3);
          *(v28 + 105) = v146[0];
          *(v28 + 27) = v29;
          *(v28 + 14) = v26;
          if (v2 != v9)
          {
            goto LABEL_6;
          }

LABEL_22:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v31 = *(v8 + 2);
          v30 = *(v8 + 3);
          if (v31 >= v30 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v8);
          }

          *(v8 + 2) = v31 + 1;
          v10 = &v8[88 * v31];
          *(v10 + 2) = v141;
          *(v10 + 3) = v139;
          *(v10 + 4) = v137;
          *(v10 + 5) = v135;
          *(v10 + 12) = v12;
          v10[104] = v13;
          v11 = *(v146 + 3);
          *(v10 + 105) = v146[0];
          *(v10 + 27) = v11;
          *(v10 + 14) = v14;
          goto LABEL_6;
        }
      }

      if (v2 == v9)
      {
        goto LABEL_22;
      }

LABEL_6:
      ++v9;
      v6 += 96;
      if (v7 + v9 == 1)
      {
        goto LABEL_28;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v32 = *(v8 + 2);
  if (!v32)
  {
    return v8;
  }

  v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v35 = 1;
  v106 = vdupq_n_s64(0x3FD554C985F06F69uLL);
  v105 = vdupq_n_s64(0x3FE5559B3D07C84BuLL);
  while (1)
  {
    v136 = *&v8[v33 + 32];
    v138 = *&v8[v33 + 48];
    v140 = *&v8[v33 + 64];
    v142 = *&v8[v33 + 80];
    v36 = *&v8[v33 + 96];
    v37 = v8[v33 + 104];
    LODWORD(v145) = *&v8[v33 + 105];
    *(&v145 + 3) = *&v8[v33 + 108];
    v38 = *&v8[v33 + 112];
    LODWORD(v146[0]) = v145;
    *(v146 + 3) = *(&v145 + 3);
    if (!v33)
    {
      break;
    }

    if (v32 != v35)
    {
      v67 = *(v8 + 2);
      if (v35 - 2 >= v67)
      {
        goto LABEL_65;
      }

      if (v35 >= v67)
      {
        goto LABEL_67;
      }

      v68 = *&v8[v33 + 24];
      v69 = *&v8[v33 + 8];
      v70 = *&v8[v33 + 184];
      v71 = *&v8[v33 + 200];
      v107 = *&v8[v33 + 120];
      v108 = *&v8[v33 - 56];
      v109 = *&v8[v33 + 136];
      v110 = *&v8[v33 - 40];
      v114 = *&v8[v33 + 152];
      v120 = *&v8[v33 - 24];
      v126 = *&v8[v33 + 168];
      v132 = *&v8[v33 - 8];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
      }

      v73 = *(v34 + 2);
      v72 = *(v34 + 3);
      v74 = v72 >> 1;
      v75 = v73 + 1;
      if (v72 >> 1 <= v73)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v34);
        v72 = *(v34 + 3);
        v74 = v72 >> 1;
      }

      v76 = 1.0 / (v71 - v68);
      v77 = (v70 - v69) * v76;
      v78 = (v38 - v68) * 0.3333;
      v79 = vmulq_n_f64(vsubq_f64(v107, v108), v76);
      v81 = v136;
      v80 = v138;
      v82 = vmulq_n_f64(vsubq_f64(v109, v110), v76);
      v83 = vmulq_n_f64(vsubq_f64(v114, v120), v76);
      v84 = v140;
      v85 = vmulq_n_f64(vsubq_f64(v126, v132), v76);
      v86 = v142;
      *(v34 + 2) = v75;
      v87 = &v34[88 * v73];
      *(v87 + 2) = vsubq_f64(v136, vmulq_n_f64(v79, v78));
      *(v87 + 3) = vsubq_f64(v138, vmulq_n_f64(v82, v78));
      *(v87 + 4) = vsubq_f64(v140, vmulq_n_f64(v83, v78));
      *(v87 + 5) = vsubq_f64(v142, vmulq_n_f64(v85, v78));
      *(v87 + 12) = v36 - v78 * v77;
      v87[104] = v37;
      *(v87 + 105) = *v143;
      *(v87 + 27) = *&v143[3];
      *(v87 + 14) = v38 - v78;
      v88 = v73 + 2;
      if (v74 < (v73 + 2))
      {
        v127 = v82;
        v133 = v79;
        v115 = v85;
        v121 = v83;
        v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 2, 1, v34);
        v85 = v115;
        v83 = v121;
        v82 = v127;
        v79 = v133;
        v81 = v136;
        v80 = v138;
        v84 = v140;
        v86 = v142;
        v34 = v102;
      }

      *(v34 + 2) = v88;
      v89 = &v34[88 * v75];
      *(v89 + 2) = v81;
      *(v89 + 3) = v80;
      *(v89 + 4) = v84;
      *(v89 + 5) = v86;
      *(v89 + 12) = v36;
      v89[104] = v37;
      v90 = *(v146 + 3);
      *(v89 + 105) = v146[0];
      *(v89 + 27) = v90;
      *(v89 + 14) = v38;
      v91 = *(v34 + 3);
      v3 = (v73 + 3);
      if ((v73 + 3) > (v91 >> 1))
      {
        v128 = v82;
        v134 = v79;
        v116 = v85;
        v122 = v83;
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v73 + 3, 1, v34);
        v85 = v116;
        v83 = v122;
        v82 = v128;
        v79 = v134;
        v81 = v136;
        v80 = v138;
        v84 = v140;
        v86 = v142;
        v34 = v103;
      }

      v92 = (v71 - v38) * 0.3333;
      v93 = vaddq_f64(v81, vmulq_n_f64(v79, v92));
      v94 = vaddq_f64(v80, vmulq_n_f64(v82, v92));
      v95 = vaddq_f64(v84, vmulq_n_f64(v83, v92));
      v96 = vaddq_f64(v86, vmulq_n_f64(v85, v92));
      v97 = v36 + v92 * v77;
      v66 = v38 + v92;
      *(v34 + 2) = v3;
      v64 = &v34[88 * v88];
      *(v64 + 2) = v93;
      *(v64 + 3) = v94;
      *(v64 + 4) = v95;
      *(v64 + 5) = v96;
      *(v64 + 12) = v97;
      v64[104] = v37;
      v65 = *&v144[3];
      *(v64 + 105) = *v144;
      goto LABEL_60;
    }

    if (v35 - 2 >= *(v8 + 2))
    {
      goto LABEL_66;
    }

    v39 = *&v8[v33 + 8];
    v40 = v8[v33 + 16];
    v41 = *&v8[v33 + 24];
    v124 = *&v8[v33 - 40];
    v130 = *&v8[v33 - 56];
    v112 = *&v8[v33 - 8];
    v118 = *&v8[v33 - 24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    }

    v43 = v140;
    v42 = v142;
    v45 = v136;
    v44 = v138;
    v47 = *(v34 + 2);
    v46 = *(v34 + 3);
    v48 = v46 >> 1;
    v3 = (v47 + 1);
    if (v46 >> 1 <= v47)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v34);
      v45 = v136;
      v44 = v138;
      v43 = v140;
      v42 = v142;
      v34 = v100;
      v46 = *(v100 + 3);
      v48 = v46 >> 1;
    }

    *(v34 + 2) = v3;
    v49 = &v34[88 * v47];
    *(v49 + 2) = vaddq_f64(v130, vmulq_f64(vsubq_f64(v45, v130), v105));
    *(v49 + 3) = vaddq_f64(v124, vmulq_f64(vsubq_f64(v44, v124), v105));
    *(v49 + 4) = vaddq_f64(v118, vmulq_f64(vsubq_f64(v43, v118), v105));
    *(v49 + 5) = vaddq_f64(v112, vmulq_f64(vsubq_f64(v42, v112), v105));
    *(v49 + 12) = v39 + (v36 - v39) * 0.6667;
    v49[104] = v40;
    *(v49 + 105) = *v144;
    *(v49 + 27) = *&v144[3];
    *(v49 + 14) = v41 + (v38 - v41) * 0.6667;
    if (v48 < (v47 + 2))
    {
      v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 2, 1, v34);
      v45 = v136;
      v44 = v138;
      v43 = v140;
      v42 = v142;
      v34 = v101;
    }

    *(v34 + 2) = v47 + 2;
    v50 = &v34[88 * v3];
    *(v50 + 2) = v45;
    *(v50 + 3) = v44;
    *(v50 + 4) = v43;
    *(v50 + 5) = v42;
    *(v50 + 12) = v36;
    v50[104] = v37;
    v51 = *(v146 + 3);
    *(v50 + 105) = v146[0];
    *(v50 + 27) = v51;
    *(v50 + 14) = v38;
    if (v32 == v35)
    {
LABEL_62:

      return v8;
    }

LABEL_61:
    v33 += 88;
    ++v35;
  }

  if (v35 < *(v8 + 2))
  {
    v52 = *(v8 + 23);
    v53 = *(v8 + 25);
    v113 = *(v8 + 120);
    v119 = *(v8 + 136);
    v125 = *(v8 + 152);
    v131 = *(v8 + 168);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    }

    v55 = *(v34 + 2);
    v54 = *(v34 + 3);
    v56 = v54 >> 1;
    v3 = (v55 + 1);
    v58 = v140;
    v57 = v142;
    v60 = v136;
    v59 = v138;
    if (v54 >> 1 <= v55)
    {
      v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v34);
      v60 = v136;
      v59 = v138;
      v58 = v140;
      v57 = v142;
      v34 = v98;
      v54 = *(v98 + 3);
      v56 = v54 >> 1;
    }

    *(v34 + 2) = v3;
    v61 = &v34[88 * v55];
    *(v61 + 2) = v60;
    *(v61 + 3) = v59;
    *(v61 + 4) = v58;
    *(v61 + 5) = v57;
    *(v61 + 12) = v36;
    v61[104] = v37;
    v62 = *(v146 + 3);
    *(v61 + 105) = v146[0];
    *(v61 + 27) = v62;
    *(v61 + 14) = v38;
    v63 = v55 + 2;
    if (v56 < v63)
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v63, 1, v34);
      v60 = v136;
      v59 = v138;
      v58 = v140;
      v57 = v142;
      v34 = v99;
    }

    *(v34 + 2) = v63;
    v64 = &v34[88 * v3];
    *(v64 + 2) = vaddq_f64(v60, vmulq_f64(vsubq_f64(v113, v60), v106));
    *(v64 + 3) = vaddq_f64(v59, vmulq_f64(vsubq_f64(v119, v59), v106));
    *(v64 + 4) = vaddq_f64(v58, vmulq_f64(vsubq_f64(v125, v58), v106));
    *(v64 + 5) = vaddq_f64(v57, vmulq_f64(vsubq_f64(v131, v57), v106));
    *(v64 + 12) = v36 + (v52 - v36) * 0.3333;
    v64[104] = v37;
    v65 = *&v144[3];
    *(v64 + 105) = *v144;
    v66 = v38 + (v53 - v38) * 0.3333;
LABEL_60:
    *(v64 + 27) = v65;
    *(v64 + 14) = v66;
    if (v32 == v35)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

void specialized Text.Effect.StopSegment.cubicWeightsAndStates(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, long double a4@<D0>)
{
  v5 = 3 * a1;
  if ((a1 * 3) >> 64 != (3 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(a2 + 16);
  if (v5 >= v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5 + 1;
  if (v5 + 1 >= v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v5 + 2;
  if (v5 + 2 >= v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v5 + 3;
  if (v5 + 3 < v6)
  {
    v10 = a2 + 32 + 264 * a1;
    v35 = *(v10 + 16);
    v36 = *v10;
    v33 = *(v10 + 48);
    v34 = *(v10 + 32);
    v11 = *(v10 + 64);
    v12 = *(v10 + 72);
    v13 = a2 + 32 + 88 * v7;
    v31 = *(v13 + 16);
    v32 = *v13;
    v29 = *(v13 + 48);
    v30 = *(v13 + 32);
    v14 = *(v13 + 64);
    v15 = *(v13 + 72);
    v16 = a2 + 32 + 88 * v8;
    v17 = *(v16 + 72);
    v18 = *(v16 + 64);
    v19 = a2 + 32 + 88 * v9;
    v37 = *(v19 + 64);
    v20 = 1.0 - a4;
    v21 = *(v19 + 72);
    v23 = pow(1.0 - a4, 3.0);
    v24 = pow(a4, 3.0);
    *a3 = v23;
    *(a3 + 8) = v20 * v20 * 3.0 * a4;
    *(a3 + 16) = a4 * a4 * (v20 * 3.0);
    *(a3 + 24) = v24;
    *(a3 + 32) = v36;
    *(a3 + 48) = v35;
    *(a3 + 64) = v34;
    *(a3 + 80) = v33;
    *(a3 + 96) = v11;
    *(a3 + 104) = v12;
    *(a3 + 112) = v32;
    *(a3 + 128) = v31;
    *(a3 + 144) = v30;
    *(a3 + 160) = v29;
    *(a3 + 176) = v14;
    *(a3 + 184) = v15;
    v25 = *(v16 + 16);
    *(a3 + 192) = *v16;
    *(a3 + 208) = v25;
    v26 = *(v16 + 48);
    *(a3 + 224) = *(v16 + 32);
    *(a3 + 240) = v26;
    *(a3 + 256) = v18;
    *(a3 + 264) = v17;
    v27 = *(v19 + 16);
    *(a3 + 272) = *v19;
    *(a3 + 288) = v27;
    v28 = *(v19 + 48);
    *(a3 + 304) = *(v19 + 32);
    *(a3 + 320) = v28;
    *(a3 + 336) = v37;
    *(a3 + 344) = v21;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for Text.Effect.Stop(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Stop(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 88) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.StopKey and conformance Text.Effect.StopKey()
{
  result = lazy protocol witness table cache variable for type Text.Effect.StopKey and conformance Text.Effect.StopKey;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopKey and conformance Text.Effect.StopKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopKey and conformance Text.Effect.StopKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment()
{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.StopCollector.Segment> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, a2, lazy protocol witness table accessor for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment, &type metadata for Text.Effect.StopCollector.Segment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.StopCollector.Segment> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, &lazy cache variable for type metadata for Slice<Text.Effect.StopCollector.Segment>, lazy protocol witness table accessor for type Text.Effect.StopCollector.Segment and conformance Text.Effect.StopCollector.Segment, &type metadata for Text.Effect.StopCollector.Segment, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Text.Layout.Run and conformance Text.Layout.Run(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _DictionaryStorage<Text.Effect.GlyphIndex, Int>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.GlyphIndex, Int>)
  {
    lazy protocol witness table accessor for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.GlyphIndex, Int>);
    }
  }
}

uint64_t getEnumTagSinglePayload for Cluster #1 in static Text.Effect.stopMarkers(_:)(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Cluster #1 in static Text.Effect.stopMarkers(_:)(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Text.Effect.StopCollector(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.StopCollector(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment()
{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment;
  if (!lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.StopMarkerCollector.Segment> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, a2, lazy protocol witness table accessor for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment, &type metadata for Text.Effect.StopMarkerCollector.Segment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.StopMarkerCollector.Segment> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.StopCollector.Segment>(255, &lazy cache variable for type metadata for Slice<Text.Effect.StopMarkerCollector.Segment>, lazy protocol witness table accessor for type Text.Effect.StopMarkerCollector.Segment and conformance Text.Effect.StopMarkerCollector.Segment, &type metadata for Text.Effect.StopMarkerCollector.Segment, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata instantiation function for Text.Effect.Configuration()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *Text.Effect.Configuration.drawable(for:timing:quantization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Text.Effect.DrawableFragment();
  FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
  if (!MEMORY[0x19A8BD7C0](a5, FunctionTypeMetadata3))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v8 = a5 + 40;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    result = Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_23;
    }

    v28 = v7 + 1;
    v12 = a5;
    v13 = *(v8 - 8);
    v14 = *(a1 + 16);
    v32[0] = *a1;
    v32[1] = v14;
    v32[2] = *(a1 + 32);
    v33 = *(a1 + 48);
    v15 = *(a3 + 16);
    v30[0] = *a3;
    v30[1] = v15;
    v31 = *(a3 + 32);

    result = v13(&v29, a2, v32, v30);
    v16 = v29;
    v17 = *(v29 + 16);
    v18 = *(v9 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v20 = *(v9 + 3) >> 1, v20 >= v19))
    {
      if (*(v16 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v21, 1, v9);
      v9 = result;
      v20 = *(result + 3) >> 1;
      if (*(v16 + 16))
      {
LABEL_16:
        if (v20 - *(v9 + 2) < v17)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v22 = *(v9 + 2);
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_27;
          }

          *(v9 + 2) = v24;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_4:

    a5 = v12;
    ++v7;
    v8 += 16;
    if (v28 == MEMORY[0x19A8BD7C0](v12, FunctionTypeMetadata3))
    {
      return v9;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  __break(1u);
LABEL_23:
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

uint64_t Text.Effect.Configuration.updateContent(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Effect.Configuration.StyleModifier();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v23 = a3;
  v10 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x19A8BD5B0](v21, v10, WitnessTable);
  v12 = v21[0];
  v23 = v21[0];

  v14 = MEMORY[0x19A8BD7C0](v13, v6);
  v20[1] = v12;

  if (!v14)
  {
  }

  v16 = (v7 + 16);
  v17 = (v7 + 8);
  while (!__OFSUB__(v14--, 1))
  {
    v22 = v14;
    swift_getWitnessTable();
    v19 = protocol witness for Collection.subscript.read in conformance [A](v21, &v22, v10);
    (*v16)(v9);
    (v19)(v21, 0);
    Text.Effect.Configuration.StyleModifier.updateContent(_:for:)(a1, a2, v6);
    result = (*v17)(v9, v6);
    if (!v14)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t Text.Effect.Configuration.StyleModifier.updateContent(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v30 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v4, a3, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ()();
    v17 = *&v15[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v9 + 32))(v11, v15, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v18 = *a1;
      v19 = v17(*a1, a1[1], a1[2]);
      v21 = v20;
      v31 = v22;

      result = (*(v9 + 8))(v11, AssociatedTypeWitness);
      *a1 = v19;
      a1[1] = v21;
      a1[2] = v31;
    }

    else
    {
      (*(v9 + 8))(v11, AssociatedTypeWitness);
    }
  }

  else
  {
    v24 = *a1;
    v25 = (*v15)(a2, *a1, a1[1], a1[2]);
    v27 = v26;
    v29 = v28;

    *a1 = v25;
    a1[1] = v27;
    a1[2] = v29;
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance [A](void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = Array.subscript.read(v7, *a2, *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance [A];
}

void protocol witness for Collection.subscript.read in conformance [A](void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*Array.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  IsNativeType = Array._hoistableIsNativeTypeChecked()();
  Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return Array.subscript.read;
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return Array.subscript.read;
  }

  __break(1u);
  return result;
}

void Array.subscript.read(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

unint64_t type metadata completion function for Text.Effect.Configuration.StyleModifier()
{
  result = type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Configuration.StyleModifier(unsigned __int8 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = ((*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 == 16 || ((*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFF0)
  {
    v5 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void storeEnumTagSinglePayload for Text.Effect.Configuration.StyleModifier(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 == 16 || ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFF0)
  {
    v7 = 16;
  }

  v8 = v7 | 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 255;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v13 = (v12 >> 8) + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v13;
      }

      else
      {
        *&a1[v8] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v13;
  }
}

uint64_t specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #1 in GradientBlurTextEffect.apply(to:fragment:timing:state:context:in:)(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for GraphicsContext.Shading();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  GraphicsContext.opacity.setter();
  v21 = a2;
  v22 = a8;
  GraphicsContext.clipToLayer(opacity:options:content:)();
  CGRect.outset(by:)(a2, a2, a2, a2, a3, a4, a5, a6);
  Path.init(_:)();
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_195CC8D70;
  *(v18 + 32) = static Color.red.getter();
  *(v18 + 40) = static Color.green.getter();
  MEMORY[0x19A8BD450](v18);
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  CGRectGetMinX(v24);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  CGRectGetMinY(v25);
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  CGRectGetMaxX(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxY(v27);
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t closure #1 in closure #1 in GradientBlurTextEffect.apply(to:fragment:timing:state:context:in:)()
{
  v0 = type metadata accessor for GraphicsContext.Filter();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GraphicsContext.Filter.blur(radius:options:)();
  GraphicsContext.addFilter(_:options:)();
  (*(v1 + 8))(v3, v0);
  return GraphicsContext.draw(displayList:)();
}

unint64_t instantiation function for generic protocol witness table for GradientBlurTextEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GradientBlurTextEffect and conformance GradientBlurTextEffect();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized GradientBlurTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v10 = GraphicsContext.displayList.getter();
  [v10 deviceScale];
  v12 = v11;

  [v9 setDeviceScale_];
  v13 = v9;
  GraphicsContext.environment.getter();
  v35 = GraphicsContext.init(displayList:environment:)();
  v14 = *(a1 + 8);
  v15 = *a1;
  v16 = *(a1 + 32);
  v36[0] = *(a1 + 16);
  v36[1] = v16;
  v36[2] = *(a1 + 48);
  v17 = *(v14 + 16);
  if (v17)
  {
    v18 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = *(v5 + 72);
    v20 = *(v14 + 16);
    do
    {
      Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v36, 0, 0, 1, &v35, v15);
      v18 += v19;
      --v20;
    }

    while (v20);
  }

  v21 = [v13 moveContents];
  v22 = v21;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (v17)
  {
    v27 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);
    do
    {
      outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v27, v7);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(v36);
      v39.origin.x = v29;
      v39.origin.y = v30;
      v39.size.width = v31;
      v39.size.height = v32;
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v38 = CGRectUnion(v37, v39);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
      v21 = outlined destroy of Text.Effect.ResolvedDrawing.Operation(v7);
      v27 += v28;
      --v17;
    }

    while (v17);
  }

  *(&v34 - 8) = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  *(&v34 - 7) = a2;
  *(&v34 - 6) = v22;
  *(&v34 - 5) = x;
  *(&v34 - 4) = y;
  *(&v34 - 3) = width;
  *(&v34 - 2) = height;
  GraphicsContext.drawLayer(content:)();
  GraphicsContext.draw(displayList:)();

  swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState()
{
  result = lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallTextEffect.LayoutState and conformance SmallTextEffect.LayoutState);
  }

  return result;
}

id closure #1 in SmallTextEffect.configuration(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AnyDynamicAttributeModifier<TextScaleAttributeModifier>();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x3FE6666666666666;
  v7 = Text.Effect.Content.modifier(_:)(v6, a1, a2, a3);

  return v7;
}

uint64_t closure #2 in SmallTextEffect.configuration(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v83 = *a1;
  v5 = *(a1 + 3);
  v61 = *(a1 + 4);
  v62 = *(a1 + 2);
  v60 = *(a1 + 5);
  v6 = *(a2 + 16);
  v73 = *a2;
  v74 = v6;
  v75 = *(a2 + 32);
  v76 = *(a2 + 48);
  v7 = *(&v73 + 1);
  type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<SmallTextEffect>, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = v75;
  swift_retain_n();
  v66 = v7;
  v68 = v73;
  v10 = Text.Effect.Keyframes.subscript.getter(v7, v8, v73);
  if (!v10)
  {
    goto LABEL_49;
  }

  if ((v75 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v11 = *(v10 + 16);
  if (v75 >= v11)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v63 = a3;
  v12 = (v10 + 32);
  v13 = *(v10 + 32 + 8 * v75);
  v14 = 0;
  if (v75)
  {
    v15 = v75;
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
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_8:

  v7 = v73;
  v85[0] = v73;
  v85[1] = v66;
  v85[2] = v8;
  v85[3] = v13;
  v85[4] = v75;
  v85[5] = v11;
  v85[6] = v14;
  outlined init with copy of Text.Effect.BaseFragment(v85, &v77);
  v18 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v77 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v85, isUniquelyReferenced_nonNull_native, 0.0);
  outlined destroy of Text.Effect.BaseFragment(v85);
  v20 = v77;
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  v22 = Text.Effect.Keyframes.subscript.getter(v66, v21, v68);
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v9 >= v23)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v59 = v5;
    v24 = *(v22 + 32 + 8 * v9);
    if (v9)
    {
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v28 = *(*(*(v22 + 32 + 8 * v25) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v17 = __OFADD__(v26, v28);
        v26 += v28;
        if (v17)
        {
          goto LABEL_38;
        }

        if (__OFSUB__(v9, v27))
        {
          goto LABEL_39;
        }

        ++v25;
        if (v9 == v27)
        {
          goto LABEL_18;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v26 = 0;
LABEL_18:

    v84[0] = v68;
    v84[1] = v66;
    v84[2] = v21;
    v84[3] = v24;
    v84[4] = v9;
    v84[5] = v23;
    v84[6] = v26;
    outlined init with copy of Text.Effect.BaseFragment(v84, &v77);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, v29, 1.0);
    outlined destroy of Text.Effect.BaseFragment(v84);
    v30 = v77;
    v69 = v73;
    v70 = v74;
    v71 = v75;
    v72 = v76;
    outlined init with copy of Text.Effect.DrawableFragment<SmallTextEffect>(a2, &v77, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SmallTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);

    v31 = specialized static Text.Effect.stopMarkers(_:)(&v73);
    v33 = Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(v63, v31, v32, 10, v30, 0.0);
    v35 = v34;

    v36 = *(v30 + 16);
    if (v36)
    {
      v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(v36, 0);
      v37 = specialized Sequence._copySequenceContents(initializing:)(&v77, v7 + 4, v36, v30);

      outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
      if (v37 != v36)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v77 = v7;
    v7 = 0;
    specialized MutableCollection<>.sort(by:)(&v77);

    v38 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v77);
    v77 = v69;
    v78 = v70;
    v79 = v71;
    v80 = v72;
    *&v81 = v33;
    *(&v81 + 1) = v35;
    v82 = v38;
    if ((*(&v75 + 1) & 0x8000000000000000) != 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (*(&v75 + 1) != 1 || !Text.Effect.BaseFragment.coversAllParagraphs.getter())
    {
      v45 = 0;
      v64 = 0u;
      v65 = 0u;
      v58 = 0u;
      v67 = 0u;
      goto LABEL_35;
    }

    v58 = *(*(&v74 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v64 = *(*(&v74 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v39 = swift_allocObject();
    *(v39 + 16) = 1;
    v40 = Text.Effect.Keyframes.subscript.getter(v66, v39, v68);
    if (v40)
    {
      if (v9 >= *(v40 + 16))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v7 = *(v40 + 32 + 8 * v9);
      if (v9)
      {
        v41 = 0;
        v42 = 0;
        while (1)
        {
          v43 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          v44 = *(*(*(v40 + 32 + 8 * v41) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v17 = __OFADD__(v42, v44);
          v42 += v44;
          if (v17)
          {
            goto LABEL_41;
          }

          if (__OFSUB__(v9, v43))
          {
            goto LABEL_42;
          }

          ++v41;
          if (v9 == v43)
          {
            goto LABEL_33;
          }
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_33:

      v65 = *(v7 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
      v67 = *(v7 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
      v45 = 1;
LABEL_35:

      v86 = v62;
      v87 = v59;
      v88 = v61;
      v89 = v60;
      v46 = swift_allocObject();
      *(v46 + 16) = v83;
      *(v46 + 32) = v62;
      *(v46 + 40) = v59;
      *(v46 + 48) = v61;
      *(v46 + 56) = v60;
      *(v46 + 64) = v45;
      *(v46 + 88) = v58;
      *(v46 + 72) = v64;
      *(v46 + 120) = v65;
      *(v46 + 104) = v67;
      v47 = v80;
      *(v46 + 168) = v79;
      *(v46 + 184) = v47;
      *(v46 + 200) = v81;
      *(v46 + 216) = v82;
      v48 = v78;
      *(v46 + 136) = v77;
      *(v46 + 152) = v48;
      v49 = swift_allocObject();
      v50 = v80;
      *(v49 + 48) = v79;
      *(v49 + 64) = v50;
      *(v49 + 80) = v81;
      v51 = v82;
      v52 = v78;
      *(v49 + 16) = v77;
      *(v49 + 32) = v52;
      *(v49 + 96) = v51;
      *(v49 + 104) = partial apply for closure #2 in closure #2 in SmallTextEffect.configuration(_:);
      *(v49 + 112) = v46;
      v53 = MEMORY[0x1E69E6F90];
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195CC8D00;
      *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
      *(inited + 40) = v49;
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v53);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_195CC8D00;
      *(v55 + 32) = inited;
      outlined init with copy of [Text.Effect.Timing.Fragment](&v86, &v69, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v87, &v69, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
      outlined init with copy of Text.Effect.Timing.GlyphTiming(&v88, &v69, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
      outlined init with copy of Text.Effect.ChunkCollection(&v89, &v69);
      outlined init with copy of Text.Effect.PathInterpolator(&v77, &v69);
      v56 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v55);
      swift_setDeallocating();
      outlined destroy of Text.Effect.Drawable(v55 + 32);
      return v56;
    }
  }

LABEL_49:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #2 in SmallTextEffect.configuration(_:)(unint64_t a1, uint64_t a2, void *a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v24 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*(a3[2] + 16) <= a1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = a3[4];
  if (*(v28 + 16) <= a1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v65 = a8;
  outlined init with copy of Text.Effect.Timing.GlyphTiming(v28 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * a1, &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v29 = *(a2 + 40) - *(a2 + 32);
  v30 = *v27;
  v31 = a11;
  v32 = 0.0;
  if (v29 < 0.0)
  {
    v29 = 0.0;
    if (v30 >= 0.0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v33 = v27[1];
    v32 = 1.0;
    if (v30 + v33 > v29)
    {
      v32 = (v29 - v30) / v33;
    }

    goto LABEL_10;
  }

  if (v29 > v30)
  {
    goto LABEL_8;
  }

LABEL_10:
  v94 = specialized SmallTextEffect.target(at:)(v32);
  v96 = 0u;
  v97 = 0;
  v95 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v98 = _Q0;
  v99 = 0x3FF0000000000000;
  v100 = 0;
  a3 = v86;
  Text.Effect.TransformContext.update(target:for:spring:)(&v94, a1, (v27 + *(v24 + 24)), v86);
  v39 = *v86;
  a11 = 0.0;
  if (*v86 < 0.0)
  {
    v39 = 0.0;
  }

  if (v39 > 1.0)
  {
    v39 = 1.0;
  }

  v66 = v39;
  if (a4)
  {
    a11 = Text.Effect.Metrics.offsetForCenterAlignment(other:t:)(a9, a10, v31, a12, v66, a5, a6);
  }

  v88 = *v86;
  v89 = a11;
  v90 = *&v86[3];
  v91 = *&v86[5];
  v92 = *&v86[7];
  v93 = v87;
  v12 = *(a2 + 272);
  v40 = *(a2 + 328);
  v83 = *(a2 + 312);
  v84 = v40;
  v85 = *(a2 + 344);
  v41 = *(a2 + 296);
  v81 = *(a2 + 280);
  v82 = v41;
  if (!v12)
  {
    goto LABEL_21;
  }

  v24 = *(a2 + 264);
  v75 = v12;
  v42 = *(a2 + 280);
  v77 = *(a2 + 296);
  v43 = *(a2 + 328);
  v78 = *(a2 + 312);
  v79 = v43;
  v80 = *(a2 + 344);
  v76 = v42;
  outlined init with copy of Text.Effect.PathInterpolator(&v75, v67);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v45 = *(v24 + 16);
    v44 = *(v24 + 24);
    if (v45 >= v44 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v24);
    }

    *(&v67[1] + 8) = v82;
    *(&v67[2] + 8) = v83;
    *(&v67[3] + 8) = v84;
    *(&v67[4] + 8) = v85;
    *(v67 + 8) = v81;
    *(&v67[5] + 8) = *v86;
    v46 = *(a3 + 3);
    LOBYTE(v71) = *(a3 + 72);
    v47 = *(a3 + 7);
    v48 = *(a3 + 5);
    v68 = v46;
    v69 = v48;
    v70 = v47;
    *&v67[0] = v12;
    *(&v67[6] + 1) = a11;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v67);
    *(v24 + 16) = v45 + 1;
    v49 = v24 + 216 * v45;
    v50 = v67[1];
    *(v49 + 32) = v67[0];
    *(v49 + 48) = v50;
    v51 = v67[2];
    v52 = v67[3];
    v53 = v67[5];
    *(v49 + 96) = v67[4];
    *(v49 + 112) = v53;
    *(v49 + 64) = v51;
    *(v49 + 80) = v52;
    v54 = v67[6];
    v55 = v68;
    v56 = v70;
    *(v49 + 160) = v69;
    *(v49 + 176) = v56;
    *(v49 + 128) = v54;
    *(v49 + 144) = v55;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    *(v49 + 240) = v74;
    *(v49 + 208) = v58;
    *(v49 + 224) = v59;
    *(v49 + 192) = v57;
    *(a2 + 264) = v24;
LABEL_21:
    v24 = a2;
    Text.Effect.TransformContext.draw(state:keyPath:)(&v88, 0, 0, 0, 1);
    if (!__OFSUB__(*a2, a1))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
  }

  if (*a2 != a1)
  {
    return outlined destroy of Text.Effect.Timing.GlyphTiming(v27);
  }

  v60 = v66;
  Text.Effect.PathInterpolator.width(for:at:)(a1, v66);
  *(a2 + 136) = v61;
  Text.Effect.PathInterpolator.width(for:at:)(a1, v60);
  v63 = v62;
  result = outlined destroy of Text.Effect.Timing.GlyphTiming(v27);
  *(a2 + 136) = v63;
  return result;
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance SmallTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized SmallTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SmallTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect();
  result = lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect();
  *(a1 + 16) = result;
  return result;
}

double specialized SmallTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v19[0]) = 0;
  v18[8] = 1;
  v21 = xmmword_195CCC0E0;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = xmmword_195CCB160;
  v36 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static SmallTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<SmallTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SmallTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD05SmallcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized SmallTextEffect.configuration(_:)()
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
  v3[5] = closure #1 in SmallTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in SmallTextEffect.configuration(_:);
  *(v4 + 24) = 0;
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[2 * v7];
  v8[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v8[5] = v4;
  return v0;
}

double specialized SmallTextEffect.target(at:)(double a1)
{
  v1 = 0.0;
  if (a1 >= 0.0)
  {
    if (a1 >= 0.1)
    {
      v1 = 1.0;
      if (a1 >= 0.95)
      {
        v1 = 0.0;
        if (a1 < 1.0)
        {
          v4 = (a1 + -0.95) / 0.05;
          v5 = v4 * 6.0 * ((1.0 - v4) * (1.0 - v4)) + pow(1.0 - v4, 3.0) - (1.0 - v4) * (v4 * v4 * 3.0);
          return v5 + pow(v4, 3.0) * 0.0;
        }
      }
    }

    else
    {
      v2 = a1 / 0.1;
      v3 = (1.0 - a1 / 0.1) * (v2 * v2 * 6.0) + pow(1.0 - a1 / 0.1, 3.0) * 0.0 - v2 * 3.0 * ((1.0 - a1 / 0.1) * (1.0 - a1 / 0.1));
      return pow(v2, 3.0) + v3;
    }
  }

  return v1;
}

void type metadata accessor for AnyDynamicAttributeModifier<TextScaleAttributeModifier>()
{
  if (!lazy cache variable for type metadata for AnyDynamicAttributeModifier<TextScaleAttributeModifier>)
  {
    v0 = type metadata accessor for AnyDynamicAttributeModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyDynamicAttributeModifier<TextScaleAttributeModifier>);
    }
  }
}

void type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect();
    v7 = a3(a1, &type metadata for SmallTextEffect, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<SmallTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, ValueMetadata *, unint64_t))
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<SmallTextEffect>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

NSAttributedString_optional __swiftcall Text.Effect.Content.resolveIfModified()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = v1;
    }

    else
    {
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = MEMORY[0x19A8BDCD0](v18);
    v7 = v3 >> 62;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (v7)
  {
    if (v3 < 0)
    {
      v20 = v3;
    }

    else
    {
      v20 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x19A8BDCD0](v20))
    {
      goto LABEL_5;
    }

LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_5:
  [v5 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString();
  swift_dynamicCast();
  v8 = v31;
  if (v7)
  {
    if (v3 < 0)
    {
      v19 = v3;
    }

    else
    {
      v19 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = MEMORY[0x19A8BDCD0](v19);
  }

  else
  {
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = &off_1E744B000;
  isEscapingClosureAtFileLocation = &unk_195CCA000;
  if (!v9)
  {
    goto LABEL_13;
  }

  v22 = [v5 length];
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v4;
  v12[4] = v3;
  v12[5] = v8;
  v13 = swift_allocObject();
  v24 = partial apply for closure #1 in Text.Effect.Content.resolveIfModified();
  *(v13 + 16) = partial apply for closure #1 in Text.Effect.Content.resolveIfModified();
  *(v13 + 24) = v12;
  v29 = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v30 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v28 = &block_descriptor_3;
  v14 = _Block_copy(&aBlock);
  v10 = v5;

  v15 = v8;

  [(SEL *)v10 enumerateAttributesInRange:0 options:v22 usingBlock:0x100000, v14];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  isEscapingClosureAtFileLocation = &unk_195CCA000;
  v10 = &off_1E744B000;
  if (v6)
  {
    while (1)
    {
      if (one-time initialization token for kitFont != -1)
      {
LABEL_25:
        swift_once();
      }

      v23 = static NSAttributedStringKey.kitFont;
      v16 = [v5 v10[376]];
      v6 = swift_allocObject();
      v6[2] = v5;
      v6[3] = v4;
      v6[4] = v3;
      v6[5] = v8;
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #2 in Text.Effect.Content.resolveIfModified();
      *(v17 + 24) = v6;
      v29 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v30 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v26 = *(isEscapingClosureAtFileLocation + 2272);
      v27 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v28 = &block_descriptor_14_0;
      isEscapingClosureAtFileLocation = _Block_copy(&aBlock);
      v10 = v30;
      v5 = v5;

      v8 = v8;

      [v5 enumerateAttribute:v23 inRange:0 options:v16 usingBlock:{0, isEscapingClosureAtFileLocation}];
      _Block_release(isEscapingClosureAtFileLocation);
      v3 = swift_isEscapingClosureAtFileLocation();

      _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v24);

      if ((v3 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_13:
      v24 = 0;
      if (!v6)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v24);
  }

LABEL_31:
  v21 = v8;
  result.is_nil = v1;
  result.value.super.isa = v21;
  return result;
}

uint64_t type metadata completion function for AnyDynamicAttributeModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AnyDynamicAttributeModifier.__deallocating_deinit()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for NSMutableAttributedString()
{
  result = lazy cache variable for type metadata for NSMutableAttributedString;
  if (!lazy cache variable for type metadata for NSMutableAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableAttributedString);
  }

  return result;
}

void closure #1 in Text.Effect.Content.resolveIfModified()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v17 = a1;
  if (a7 >> 62)
  {
    if (a7 < 0)
    {
      v15 = a7;
    }

    else
    {
      v15 = a7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = MEMORY[0x19A8BDCD0](v15);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  v12 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x19A8BDB80](i, a7);
    }

    else
    {
      v14 = *(a7 + 8 * i + 32);
    }

    (*(*v14 + 80))(&v17);
  }

LABEL_15:
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a8 setAttributes:isa range:{a2, a3}];
}

void closure #2 in Text.Effect.Content.resolveIfModified()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  type metadata accessor for CTFontRef(0);
  type metadata accessor for Any?();
  v10 = Optional._bridgeToObjectiveC()();
  v11 = static CTFontRef.make(platformFont:)(v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = specialized Text.Effect.Content.resolveFont(_:context:)(v11, a6);
    if (one-time initialization token for kitFont != -1)
    {
      swift_once();
    }

    [a8 addAttribute:static NSAttributedStringKey.kitFont value:? range:?];
  }
}

id Text.Effect.Content.modifier(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;

  MEMORY[0x19A8BD720](v4);
  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3;
}

id Text.Effect.Content.modifier(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;

  MEMORY[0x19A8BD720](v5);
  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WeightDeltaModifier()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x19A8BDE80](*&v4);
  specialized ClosedRange<>.hash(into:)(v1, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WeightDeltaModifier()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&v1);

  return specialized ClosedRange<>.hash(into:)(v2, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WeightDeltaModifier()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x19A8BDE80](*&v4);
  specialized ClosedRange<>.hash(into:)(v1, v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance WeightDeltaModifier(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

void TextScaleAttributeModifier.modify(attributes:)(double a1)
{
  v2 = *MEMORY[0x1E69DB720];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = MEMORY[0x1E69E6158];
  v5[0] = v3;
  v5[1] = v4;
  specialized Dictionary.subscript.setter(v5, v2);
  if (one-time initialization token for _textScaleRatio != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x1E69E7DE0];
  *v5 = a1;
  specialized Dictionary.subscript.setter(v5, static NSAttributedStringKey._textScaleRatio);
  if (one-time initialization token for _textScaleStaticWeightMatching != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x1E69E6370];
  LOBYTE(v5[0]) = 0;
  specialized Dictionary.subscript.setter(v5, static NSAttributedStringKey._textScaleStaticWeightMatching);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t specialized ClosedRange<>.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x19A8BDE80](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x19A8BDE80](*&v3);
}

void specialized WeightDeltaModifier.modify(descriptor:in:)(CTFontDescriptorRef *a1, double a2, double a3, double a4)
{
  v8 = *a1;
  v9 = CTFontCreateWithFontDescriptor(*a1, 0.0, 0);
  CTFontGetWeight();
  v11 = (v10 + 1.0) * 500.0 + a2;
  if (v11 < a3)
  {
    v11 = a3;
  }

  if (v11 > a4)
  {
    v11 = a4;
  }

  v12 = (v11 + -500.0) / 500.0;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, [String : CGFloat])>, type metadata accessor for (String, [String : CGFloat]));
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, CGFloat)>, type metadata accessor for (String, CGFloat));
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_195CC8D00;
  *(v20 + 32) = v16;
  v21 = v20 + 32;
  *(v20 + 40) = v18;
  *(v20 + 48) = v12;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v20);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Any)(v21, type metadata accessor for (String, CGFloat));
  *(inited + 48) = v22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Any)(inited + 32, type metadata accessor for (String, [String : CGFloat]));
  type metadata accessor for [String : CGFloat]();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v8, isa);

  *a1 = CopyWithAttributes;
}

CTFontDescriptorRef specialized Text.Effect.Content.resolveFont(_:context:)(const __CTFont *a1, uint64_t a2)
{
  result = CTFontCopyFontDescriptor(a1);
  v5 = result;
  v21 = result;
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x19A8BDCD0](v20);
    v6 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8BDB80](i, a2);
    }

    else
    {
      v8 = *(a2 + 8 * i + 32);
    }

    (*(*v8 + 80))(&v21);
  }

  v5 = v21;
LABEL_10:
  v9 = CTFontCreateWithFontDescriptor(v5, 0.0, 0);
  result = CTFontCopyDefaultCascadeListForLanguages(a1, 0);
  if (result)
  {
    v10 = result;
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, type metadata accessor for (CFStringRef, Any));
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195CC8D00;
    v12 = *MEMORY[0x1E6965678];
    *(inited + 32) = *MEMORY[0x1E6965678];
    type metadata accessor for CFArrayRef(0);
    *(inited + 64) = v13;
    *(inited + 40) = v10;
    v14 = v12;
    v15 = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, Any)(inited + 32, type metadata accessor for (CFStringRef, Any));
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = CTFontDescriptorCreateWithAttributes(isa);

    v18 = v17;
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v9, 0.0, 0, v18);

    return CopyWithAttributes;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for WeightDeltaModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(CFStringRef, Any)>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (String, CGFloat)()
{
  if (!lazy cache variable for type metadata for (String, CGFloat))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, CGFloat));
    }
  }
}

uint64_t outlined destroy of (CFStringRef, Any)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x1E69E7CC0];
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(a1, v5, type metadata accessor for Text.Effect.BaseContent);
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(v5, v8, type metadata accessor for Text.Effect.BaseContent);
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  swift_beginAccess();
  if (*(*(v9 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v10, v11), (v12 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of Text.Effect.BaseContent(v5, type metadata accessor for Text.Effect.BaseContent);
    v13 = *v8;
    v14 = v8[1];
    v40 = v8;
    v15 = v8[2];
    swift_beginAccess();
    v16 = *(v13 + 48);
    if (*(v16 + 16))
    {
      v1 = 0;
      do
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = *(*(v16 + 56) + 16 * v17);
        swift_endAccess();
        if (*(v19 + 16) == v1)
        {
          goto LABEL_23;
        }

        swift_beginAccess();
        v20 = *(v13 + 48);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_30;
        }

        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v23 & 1) == 0)
        {
          goto LABEL_30;
        }

        v24 = *(*(v20 + 56) + 16 * v22);
        swift_endAccess();
        if (v1 >= *(v24 + 16))
        {
          goto LABEL_25;
        }

        v25 = *(v24 + 32 + 8 * v1);
        if (v1)
        {
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v28 = *(*(*(v24 + 32 + 8 * v26) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v29 = __OFADD__(v27, v28);
            v27 += v28;
            if (v29)
            {
              break;
            }

            if (v1 == ++v26)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          swift_endAccess();
          __break(1u);
LABEL_28:
          swift_endAccess();
          __break(1u);
          goto LABEL_29;
        }

        v27 = 0;
LABEL_16:
        swift_beginAccess();
        v30 = *(*(v13 + 48) + 16);

        if (!v30)
        {
          goto LABEL_27;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v31 & 1) == 0)
        {
          goto LABEL_27;
        }

        swift_endAccess();
        swift_beginAccess();
        v32 = *(v13 + 48);
        if (!*(v32 + 16))
        {
          goto LABEL_28;
        }

        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        if ((v34 & 1) == 0)
        {
          goto LABEL_28;
        }

        v35 = *(*(v32 + 56) + 16 * v33);
        swift_endAccess();
        if (v1 >= *(v35 + 16))
        {
          goto LABEL_26;
        }

        ++v1;
        v36 = *(v25 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder);
        v37 = *(v25 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder + 8);

        specialized Array.append<A>(contentsOf:)(v36, v37, v27);
        swift_beginAccess();
        v16 = *(v13 + 48);
      }

      while (*(v16 + 16));
    }

    swift_endAccess();
    __break(1u);
LABEL_23:
    v38 = v40;
    *(v40 + *(v41 + 36)) = v1;
    outlined destroy of Text.Effect.BaseContent(v38, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
    return v42;
  }

  else
  {
LABEL_29:
    swift_endAccess();
    __break(1u);
LABEL_30:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ScaleRippleTextEffect.configuration(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(a2, v17, type metadata accessor for Text.Effect.DrawableFragment<ScaleRippleTextEffect>);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD011ScaleRipplecF0V_Tt2g5(a2, a3, 1, v17);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v9 = v17[3];
  v10 = v17[4];
  *(v8 + 48) = v17[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = v10;
  v11 = v18;
  v12 = v17[1];
  *(v8 + 16) = v17[0];
  *(v8 + 32) = v12;
  *(v8 + 96) = v11;
  *(v8 + 104) = partial apply for closure #1 in closure #1 in ScaleRippleTextEffect.configuration(_:);
  *(v8 + 112) = v7;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v8;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_195CC8D00;
  *(v14 + 32) = inited;

  v15 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v14);
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v14 + 32);
  return v15;
}

void closure #1 in closure #1 in ScaleRippleTextEffect.configuration(_:)(unint64_t a1, double *a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3 + 16 * a1;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = a2[5] - a2[4];
  v8 = 0.0;
  if (v7 < 0.0)
  {
    if (v5 >= 0.0)
    {
      goto LABEL_10;
    }

    v8 = 1.0;
    v7 = 0.0;
    if (v5 + v6 <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = (v7 - v5) / v6;
    goto LABEL_10;
  }

  if (v7 > v5)
  {
    v8 = 1.0;
    if (v5 + v6 > v7)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v9 = *a2;
  if (__OFSUB__(*a2, a1))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = a2[29];
  v11 = a2[28];
  v12 = a2[26];
  if (*&v9 == a1)
  {
    v13 = a2[27];
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
  }

  if (*&v9 == a1)
  {
    v14 = a2[30];
  }

  else
  {
    v11 = 0.0;
    v10 = 0.0;
    v14 = 0.0;
  }

  v15 = v13 - v10;
  v16 = v14 + v10;
  MidX = CGRectGetMidX(*&v12);
  v18 = exp(v8 * -4.0) * 0.3;
  memset(v20, 0, sizeof(v20));
  v21 = MidX;
  v22 = v13;
  v23 = sin(v8 * 13.6) * v18 + 1.0;
  v24 = v23;
  v25 = 0x3FF0000000000000;
  v26 = 0;
  Text.Effect.TransformContext.record(position:for:)(v20, a1, v19);
  Text.Effect.TransformContext.draw(state:keyPath:)(v19, 0, 0, 0, 1);
}

char *protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance ScaleRippleTextEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, char a3@<W6>, void *a4@<X8>)
{
  v8 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(a1, v10, type metadata accessor for Text.Effect.BaseContent);
  result = specialized ScaleRippleTextEffect.Timing.init(content:duration:)(v10, a2, a3 & 1);
  *a4 = v12;
  a4[1] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ScaleRippleTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect();
  result = lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect();
  *(a1 + 16) = result;
  return result;
}

char *specialized ScaleRippleTextEffect.Timing.init(content:duration:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = specialized Sequence.flatMap<A>(_:)(a1);
  v14 = *(v13 + 16);
  v15 = (v14 - 1) * 0.05 + 1.16666667;
  if (a3)
  {
    v16 = (v14 - 1) * 0.05 + 1.16666667;
  }

  else
  {
    v16 = *&a2;
  }

  Text.Effect.BaseContent.layoutDirection.getter(v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E7D0], v6);
  v17 = static LayoutDirection.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v12, v6);
  if (v14)
  {
    v30 = a1;
    v19 = v16 * 0.05 / v15;
    v31 = MEMORY[0x1E69E7CC0];
    v20 = v16 * 1.16666667 / v15;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v22 = 0;
    v23 = v31;
    v24 = *(v13 + 16);
    while (!v24)
    {
LABEL_11:
      v25 = 0;
LABEL_12:
      if ((v17 & 1) == 0)
      {
        v25 = v14 + ~v25;
      }

      v31 = v23;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v23 = v31;
      }

      ++v22;
      *(v23 + 16) = v27 + 1;
      v28 = v23 + 16 * v27;
      *(v28 + 32) = v19 * v25;
      *(v28 + 40) = v20;
      if (v22 == v14)
      {
        outlined destroy of Text.Effect.BaseContent(v30, type metadata accessor for Text.Effect.BaseContent);

        return v23;
      }
    }

    v25 = 0;
    while (*(v13 + 16) != v25)
    {
      if (*(v13 + 32 + 8 * v25) == v22)
      {
        goto LABEL_12;
      }

      if (v24 == ++v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    outlined destroy of Text.Effect.BaseContent(a1, type metadata accessor for Text.Effect.BaseContent);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized ScaleRippleTextEffect.configuration(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = partial apply for closure #1 in ScaleRippleTextEffect.configuration(_:);
  *(v0 + 24) = 0;
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  v1[2] = v3 + 1;
  v4 = &v1[2 * v3];
  v4[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v4[5] = v0;
  return MEMORY[0x1E69E7CC0];
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v13[2] = *(a2 + 32);
  v14 = *(a2 + 48);
  v10 = *(a3 + 16);
  v15[0] = *a3;
  v15[1] = v10;
  v16 = *(a3 + 32);
  v12[0] = v7;
  v12[1] = v8;
  result = v6(v12, v13, v15);
  *a4 = result;
  return result;
}

void type metadata accessor for Text.Effect.DrawableFragment<ScaleRippleTextEffect>()
{
  if (!lazy cache variable for type metadata for Text.Effect.DrawableFragment<ScaleRippleTextEffect>)
  {
    lazy protocol witness table accessor for type ScaleRippleTextEffect and conformance ScaleRippleTextEffect();
    v0 = type metadata accessor for Text.Effect.DrawableFragment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ScaleRippleTextEffect>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Text.Effect.BaseContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Effect.TransformContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 256);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.TransformContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 377) = 1;
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
      *(result + 256) = (a2 - 1);
      return result;
    }

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(uint64_t a1, uint64_t a2, double a3)
{
  v68 = a1;
  v6 = type metadata accessor for Spring();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Spring?, Spring?)();
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v22 = *a2 * *a2 + *(a2 + 8) * *(a2 + 8) + *(a2 + 16) * *(a2 + 16) + *(a2 + 24) * *(a2 + 24) + *(a2 + 32) * *(a2 + 32) + *(a2 + 40) * *(a2 + 40) + *(a2 + 48) * *(a2 + 48) + *(a2 + 56) * *(a2 + 56) + *(a2 + 64) * *(a2 + 64);
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v69 = v23;
  v24 = *(v23 + 44);
  outlined init with copy of Spring?(v3 + v24, v21);
  v70 = v7;
  v25 = *(v7 + 48);
  v26 = v25(v21, 1, v6);
  outlined destroy of Spring?(v21);
  if (v26 == 1)
  {
    v27 = *(v3 + 128);
    *&v74[32] = *(v3 + 112);
    *&v74[48] = v27;
    *&v74[57] = *(v3 + 137);
    v28 = *(v3 + 96);
    *v74 = *(v3 + 80);
    *&v74[16] = v28;
    result = specialized static Text.Effect.DrawingState.== infix(_:_:)(v74, a2);
    if ((result & 1) != 0 || (v30 = vmulq_f64(*&v74[8], *&v74[8]), v31 = *v74 * *v74 + v30.f64[0] + v30.f64[1], v32 = vmulq_f64(*&v74[24], *&v74[24]), v33 = v31 + v32.f64[0] + v32.f64[1], v34 = vmulq_f64(*&v74[40], *&v74[40]), v35 = v33 + v34.f64[0] + v34.f64[1], v36 = vmulq_f64(*&v74[56], *&v74[56]), vabdd_f64(v22, v35 + v36.f64[0] + v36.f64[1]) <= 0.001))
    {
      v49 = v3 + *(v69 + 52);
      *v49 = 0;
      *(v49 + 8) = 1;
      return result;
    }
  }

  v37 = vmulq_f64(*(v3 + 8), *(v3 + 8));
  v38 = *v3 * *v3 + v37.f64[0] + v37.f64[1];
  v39 = vmulq_f64(*(v3 + 24), *(v3 + 24));
  v40 = v38 + v39.f64[0] + v39.f64[1];
  v41 = vmulq_f64(*(v3 + 40), *(v3 + 40));
  v42 = v40 + v41.f64[0] + v41.f64[1];
  v43 = vmulq_f64(*(v3 + 56), *(v3 + 56));
  v44 = v68;
  if (vabdd_f64(v22, v42 + v43.f64[0] + v43.f64[1]) > 0.001)
  {
    goto LABEL_12;
  }

  v63 = v24;
  v45 = v3 + v24;
  v46 = v67;
  outlined init with copy of Spring?(v45, v67);
  v47 = v70;
  (*(v70 + 16))(v16, v44, v6);
  (*(v47 + 56))(v16, 0, 1, v6);
  v48 = *(v66 + 48);
  outlined init with copy of Spring?(v46, v11);
  outlined init with copy of Spring?(v16, &v11[v48]);
  if (v25(v11, 1, v6) == 1)
  {
    outlined destroy of Spring?(v16);
    outlined destroy of Spring?(v46);
    if (v25(&v11[v48], 1, v6) == 1)
    {
      return outlined destroy of Spring?(v11);
    }

    goto LABEL_11;
  }

  v50 = v65;
  outlined init with copy of Spring?(v11, v65);
  if (v25(&v11[v48], 1, v6) == 1)
  {
    outlined destroy of Spring?(v16);
    outlined destroy of Spring?(v67);
    (*(v70 + 8))(v50, v6);
LABEL_11:
    outlined destroy of Text.Effect.PathInterpolator.Glyph(v11, type metadata accessor for (Spring?, Spring?));
    v44 = v68;
    v24 = v63;
LABEL_12:
    v51 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v51;
    *(v3 + 57) = *(a2 + 57);
    v52 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v52;
    v53 = *(v3 + 128);
    v72[2] = *(v3 + 112);
    v73[0] = v53;
    *(v73 + 9) = *(v3 + 137);
    v54 = *(v3 + 80);
    v72[1] = *(v3 + 96);
    v72[0] = v54;
    specialized static Text.Effect.DrawingState.- infix(_:_:)(a2, v72, v71);
    lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState();
    v55 = v3;
    Spring.settlingDuration<A>(target:initialVelocity:epsilon:)();
    v57 = v3 + *(v69 + 52);
    *v57 = v56 + a3;
    *(v57 + 8) = 0;
    outlined destroy of Spring?(v3 + v24);
    v58 = v70;
    (*(v70 + 16))(v55 + v24, v44, v6);
    return (*(v58 + 56))(v55 + v24, 0, 1, v6);
  }

  v59 = v70;
  v60 = v64;
  (*(v70 + 32))(v64, &v11[v48], v6);
  lazy protocol witness table accessor for type Spring and conformance Spring();
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v59 + 8);
  v62(v60, v6);
  outlined destroy of Spring?(v16);
  outlined destroy of Spring?(v67);
  v62(v50, v6);
  v44 = v68;
  result = outlined destroy of Spring?(v11);
  v24 = v63;
  if ((v61 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(uint64_t a1, double a2, double a3)
{
  v47 = a1;
  v6 = type metadata accessor for Spring();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Spring?, Spring?)();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = a2 * a2;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v48 = v24;
  v25 = *(v24 + 44);
  outlined init with copy of Spring?(v3 + v25, v22);
  v49 = v7;
  v26 = *(v7 + 48);
  v27 = v26(v22, 1, v6);
  result = outlined destroy of Spring?(v22);
  if (v27 == 1)
  {
    v29 = v3[1];
    if (v29 == a2 || vabdd_f64(v23, v29 * v29) <= 0.001)
    {
      v34 = v3 + *(v48 + 52);
      *v34 = 0;
      v34[8] = 1;
      return result;
    }
  }

  v30 = v47;
  if (vabdd_f64(v23, *v3 * *v3) > 0.001)
  {
    goto LABEL_12;
  }

  outlined init with copy of Spring?(v3 + v25, v19);
  v31 = v49;
  (*(v49 + 16))(v16, v30, v6);
  (*(v31 + 56))(v16, 0, 1, v6);
  v32 = *(v10 + 48);
  v33 = v45;
  outlined init with copy of Spring?(v19, v45);
  outlined init with copy of Spring?(v16, v33 + v32);
  if (v26(v33, 1, v6) == 1)
  {
    outlined destroy of Spring?(v16);
    outlined destroy of Spring?(v19);
    if (v26((v33 + v32), 1, v6) == 1)
    {
      return outlined destroy of Spring?(v33);
    }

    goto LABEL_11;
  }

  outlined init with copy of Spring?(v33, v46);
  if (v26((v33 + v32), 1, v6) == 1)
  {
    outlined destroy of Spring?(v16);
    outlined destroy of Spring?(v19);
    (*(v49 + 8))(v46, v6);
LABEL_11:
    outlined destroy of Text.Effect.PathInterpolator.Glyph(v33, type metadata accessor for (Spring?, Spring?));
LABEL_12:
    *v3 = a2;
    v50 = a2 - v3[1];
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v35 = v3;
    Spring.settlingDuration<A>(target:initialVelocity:epsilon:)();
    v37 = (v3 + *(v48 + 52));
    *v37 = v36 + a3;
    *(v37 + 8) = 0;
    outlined destroy of Spring?(v3 + v25);
    v38 = v49;
    (*(v49 + 16))(v35 + v25, v30, v6);
    return (*(v38 + 56))(v35 + v25, 0, 1, v6);
  }

  v39 = v49;
  v40 = v44;
  (*(v49 + 32))(v44, v33 + v32, v6);
  lazy protocol witness table accessor for type Spring and conformance Spring();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v39 + 8);
  v42(v40, v6);
  outlined destroy of Spring?(v16);
  outlined destroy of Spring?(v19);
  v42(v46, v6);
  v30 = v47;
  result = outlined destroy of Spring?(v33);
  if ((v41 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(uint64_t a1, uint64_t a2)
{
  return specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(a1, a2, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
}

{
  return specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(a1, a2, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.WidthMultiplierAttribute>);
}

uint64_t specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, unint64_t *a6)
{
  v11 = v6;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a3, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = *(a2 + 16);
  v77[0] = *a2;
  v77[1] = v21;
  v77[2] = *(a2 + 32);
  v78 = *(a2 + 48);
  if (!*(v11[1] + 16))
  {
    goto LABEL_6;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v77);
  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a6, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.ValueBox);
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    goto LABEL_6;
  }

  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v23 + *(*v23 + 120), v17, a3, a4, a5);
  v24 = &v17[*(v15 + 48)];
  if (v24[8])
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v17, a3, a4, a5);
LABEL_6:
    v25 = 1;
    goto LABEL_7;
  }

  v64 = *v24;
  v65 = &v17[*(v15 + 52)];
  v66 = *v65;
  v67 = v65[8];
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v17, a3, a4, a5);
  v25 = (v67 & 1) != 0 || v66 <= v64;
LABEL_7:
  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(a1, v20, a3, a4, a5);
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a6, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.ValueBox);
  v26 = swift_allocObject();
  v27 = v26 + *(*v26 + 120);
  v75 = a3;
  outlined init with take of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v20, v27, a3, a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v11[1];
  v29 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v77, isUniquelyReferenced_nonNull_native);
  v11[1] = v76;
  v30 = a1;
  v31 = a1 + *(v15 + 48);
  v32 = *v31;
  v33 = *(v31 + 8);
  if (v33 & 1) != 0 || (v34 = (v30 + *(v15 + 52)), (v34[1]))
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    return _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v30, v75, a4, a5);
  }

  v45 = v32;
  v46 = *v34;
  if ((v25 ^ (*v34 > v32)))
  {
    return _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v30, v75, a4, a5);
  }

  if (v25)
  {
    v26 = 0;
    v51 = v30;
    goto LABEL_27;
  }

LABEL_10:
  v35 = v11[2];
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
    goto LABEL_44;
  }

  v74 = v32;
  v11[2] = v37;
  v26 = *(&v77[0] + 1);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v11[3];
  v39 = v76;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
  v41 = v39[2];
  v42 = (v40 & 1) == 0;
  v36 = __OFADD__(v41, v42);
  v43 = v41 + v42;
  if (v36)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LOBYTE(v20) = v40;
  if (v39[3] >= v43)
  {
    if ((v38 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, v38);
    v39 = v76;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if ((v20 & 1) != (v44 & 1))
    {
      goto LABEL_32;
    }
  }

  v11[3] = v39;
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_19:
  v20 = v29;
  specialized _NativeDictionary._insert(at:key:value:)(v29, v26, 0, v39);
  v29 = v20;
LABEL_20:
  while (1)
  {
    v48 = v39[7];
    v49 = *(v48 + 8 * v29);
    v36 = __OFSUB__(v49, 1);
    v50 = v49 - 1;
    if (!v36)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v71 = v29;
    specialized _NativeDictionary.copy()();
    v29 = v71;
    v39 = v76;
    v11[3] = v76;
    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(v48 + 8 * v29) = v50;
  if (v33)
  {
    v26 = specialized thunk for @callee_guaranteed () -> (@unowned Int);
    v51 = v30;
    goto LABEL_33;
  }

  v45 = v74;
  v51 = v30;
  v52 = (v30 + *(v15 + 52));
  v46 = *v52;
  v26 = specialized thunk for @callee_guaranteed () -> (@unowned Int);
  if (v52[1])
  {
    goto LABEL_33;
  }

LABEL_27:
  if (v46 > v45)
  {
    v53 = v11[2];
    v36 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v55 = v51;
      v11[2] = v54;
      v15 = *(&v77[0] + 1);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v11[3];
      v57 = v76;
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      v59 = v57[2];
      v60 = (v58 & 1) == 0;
      v36 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (!v36)
      {
        LOBYTE(v20) = v58;
        if (v57[3] >= v61)
        {
          if ((v56 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v56);
          v57 = v76;
          v51 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
          if ((v20 & 1) != (v62 & 1))
          {
LABEL_32:
            v51 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_33;
          }
        }

        while (1)
        {
          v30 = v75;
          v11[3] = v57;
          if ((v20 & 1) == 0)
          {
            v11 = v51;
            specialized _NativeDictionary._insert(at:key:value:)(v51, v15, 0, v57);
            v51 = v11;
          }

          v68 = v57[7];
          v69 = *(v68 + 8 * v51);
          v36 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (!v36)
          {
            break;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          v72 = v51;
          specialized _NativeDictionary.copy()();
          v51 = v72;
          v55 = v30;
          v57 = v76;
        }

        *(v68 + 8 * v51) = v70;
        v51 = v55;
        v63 = v30;
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_33:
  v63 = v75;
LABEL_42:
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v51, v63, a4, a5);
  return _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v26);
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32[-v7];
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32[-v14];
  v33[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = 0;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v39 = xmmword_1EAEE98D0;
  v40[0] = unk_1EAEE98E0;
  *(v40 + 9) = unk_1EAEE98E9;
  v37 = static Text.Effect.DrawingState.zero;
  v38 = unk_1EAEE98C0;
  v16 = type metadata accessor for Spring();
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);
  v18 = a1[2];
  v19 = a1[3];
  v15[2] = v18;
  v15[3] = v19;
  v20 = *(a1 + 57);
  *(v15 + 57) = v20;
  v22 = *a1;
  v21 = a1[1];
  *v15 = *a1;
  v15[1] = v21;
  v15[7] = v18;
  v15[8] = v19;
  *(v15 + 137) = v20;
  v15[5] = v22;
  v15[6] = v21;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40[0];
  *(v15 + 217) = *(v40 + 9);
  v15[12] = v25;
  v15[13] = v26;
  v15[10] = v23;
  v15[11] = v24;
  v27 = v10[11];
  v17(v15 + v27, 1, 1, v16);
  v28 = v10[13];
  v29 = v15 + v10[12];
  v30 = v15 + v28;
  outlined assign with take of Spring?(v8, v15 + v27);
  *v29 = 0;
  v29[8] = 1;
  *v30 = 0;
  v30[8] = 1;
  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v15, v12, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  swift_beginAccess();
  specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v12, v33, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
  swift_endAccess();
  return _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v15, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
}

unint64_t specialized Text.Effect.AttributeTracker.Tracker.ensureEntry<A>(for:value:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v32 - v11);
  v13 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v13;
  v38[2] = *(a1 + 32);
  v39 = *(a1 + 48);
  if (!*(*v3 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v15 & 1) == 0))
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v36 = xmmword_1EAEE98D0;
    v37[0] = unk_1EAEE98E0;
    *(v37 + 9) = unk_1EAEE98E9;
    v34 = static Text.Effect.DrawingState.zero;
    v35 = unk_1EAEE98C0;
    v16 = type metadata accessor for Spring();
    v17 = *(*(v16 - 8) + 56);
    v17(v8, 1, 1, v16);
    v18 = a2[2];
    v19 = a2[3];
    v12[2] = v18;
    v12[3] = v19;
    v20 = *(a2 + 57);
    *(v12 + 57) = v20;
    v22 = *a2;
    v21 = a2[1];
    *v12 = *a2;
    v12[1] = v21;
    v12[7] = v18;
    v12[8] = v19;
    *(v12 + 137) = v20;
    v12[5] = v22;
    v12[6] = v21;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37[0];
    *(v12 + 217) = *(v37 + 9);
    v12[12] = v25;
    v12[13] = v26;
    v12[10] = v23;
    v12[11] = v24;
    v27 = v10[11];
    v17(v12 + v27, 1, 1, v16);
    v28 = v12 + v10[12];
    v29 = v12 + v10[13];
    outlined assign with take of Spring?(v8, v12 + v27);
    *v28 = 0;
    v28[8] = 1;
    *v29 = 0;
    v29[8] = 1;
    type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox);
    v30 = swift_allocObject();
    outlined init with take of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v12, v30 + *(*v30 + 120), &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v38, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
  }

  return result;
}

uint64_t Text.Effect.TransformContext.subcomponents(for:)(uint64_t a1)
{
  v46 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?, type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v41 - v16);
  v19 = *(v1 + 320);
  v18 = *(v1 + 336);
  v20 = *(v1 + 304);
  v51[1] = *(v1 + 288);
  v51[2] = v20;
  v51[3] = v19;
  v52 = v18;
  v53 = *(v1 + 352);
  v51[0] = *(v1 + 272);
  if (*&v51[0])
  {
    v21 = a1 - v52;
    if (__OFSUB__(a1, v52))
    {
      goto LABEL_25;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v22 = *(&v52 + 1);
      if (v21 < *(*(&v52 + 1) + 16))
      {
        v23 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
        v24 = *(v22 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)) + *(*(v23 - 8) + 72) * v21 + *(v23 + 20));
        outlined init with copy of Text.Effect.TransformContext.DrawingMode(v51, v50);
        v48 = (v10 + 56);
        v47 = (v10 + 48);
        v49 = v24;

        v25 = 0;
        v26 = MEMORY[0x1E69E7CC0];
        v45 = v4;
        v44 = v7;
        for (i = v14; ; v14 = i)
        {
          v27 = *(v49 + 16);
          if (v25 == v27)
          {
            v28 = 1;
          }

          else
          {
            if (v25 >= v27)
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            v29 = v49 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25;
            v30 = *(v9 + 48);
            v31 = v41;
            *v41 = v25;
            outlined init with copy of Text.Effect.PathInterpolator.Glyph(v29, v31 + v30);
            outlined init with take of Text.Effect.PathInterpolator.Glyph(v31, v14, type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
            v28 = 0;
            ++v25;
          }

          (*v48)(v14, v28, 1, v9);
          outlined init with take of (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?(v14, v17);
          if ((*v47)(v17, 1, v9) == 1)
          {

            outlined destroy of Text.Effect.TransformContext.DrawingMode(v51);
            return v26;
          }

          v32 = *v17;
          outlined init with take of Text.Effect.PathInterpolator.Glyph(v17 + *(v9 + 48), v7, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
          outlined init with copy of Text.Effect.PathInterpolator.Glyph(v7, v4);
          if (swift_getEnumCaseMultiPayload() - 3 >= 2)
          {
            outlined destroy of Text.Effect.PathInterpolator.Glyph(v4, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
            v33 = 1;
          }

          else
          {
            v33 = *(*v4 + 16);

            if (!v33)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
          }

          v34 = 0;
          v35 = *(v26 + 2);
          v36 = 24 * v35;
          do
          {
            v37 = *(v26 + 3);
            v38 = v35 + 1;
            if (v35 >= v37 >> 1)
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v35 + 1, 1, v26);
            }

            *(v26 + 2) = v38;
            v39 = &v26[v36];
            *(v39 + 5) = v32;
            *(v39 + 6) = v34;
            *(v39 + 4) = a1;
            v36 += 24;
            v35 = v38;
            ++v34;
          }

          while (v33 != v34);
LABEL_6:
          v7 = v44;
          outlined destroy of Text.Effect.PathInterpolator.Glyph(v44, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
          v4 = v45;
        }
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Text.Effect.TransformContext.subcomponentBounds(for:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v3[34])
  {
    goto LABEL_13;
  }

  v11 = v3[42];
  v12 = __OFSUB__(a1, v11);
  v13 = a1 - v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v3[43];
  if (v13 >= *(v14 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  v17 = *(v15 - 8);
  v16 = v15 - 8;
  v18 = *(v17 + 80);
  v19 = *(v17 + 72);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v20 = *(v14 + ((v18 + 32) & ~v18) + v19 * v13 + *(v16 + 28));
    if (*(v20 + 16) > a2)
    {
      outlined init with copy of Text.Effect.PathInterpolator.Glyph(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2, v10);
      Text.Effect.PathInterpolator.Glyph.bounds(for:)(a3);
      return outlined destroy of Text.Effect.PathInterpolator.Glyph(v10, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 Text.Effect.TransformContext.record(target:for:spring:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v121 = a3;
  v10 = &v142;
  v11 = a1[3];
  v148 = a1[2];
  v149[0] = v11;
  *(v149 + 9) = *(a1 + 57);
  v12 = a1[1];
  v146 = *a1;
  v147 = v12;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v117 - v14;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v23 = v117 - v22;
  if (__OFSUB__(*v6, a2))
  {
    __break(1u);
LABEL_47:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
LABEL_12:
    v37 = *(v10 + 2);
    v36 = *(v10 + 3);
    if (v37 >= v36 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v10);
    }

    v38 = v124[0];
    *(v5 + 24) = v124[1];
    v39 = v124[3];
    *(v5 + 40) = v124[2];
    *(v5 + 56) = v39;
    *(v5 + 72) = v124[4];
    *(v5 + 8) = v38;
    v40 = *a1;
    *(v5 + 104) = a1[1];
    v41 = a1[3];
    *(v5 + 120) = a1[2];
    *(v5 + 136) = v41;
    *(v5 + 145) = *(a1 + 57);
    *(v5 + 88) = v40;
    *&v133[0] = a2;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v133);
    *(v10 + 2) = v37 + 1;
    v31 = &v10[216 * v37];
    goto LABEL_15;
  }

  v5 = v133;
  if (*v6 != a2)
  {
    a2 = *(v6 + 272);
    v32 = *(v6 + 328);
    v124[2] = *(v6 + 312);
    v124[3] = v32;
    v124[4] = *(v6 + 344);
    v33 = *(v6 + 296);
    v124[0] = *(v6 + 280);
    v124[1] = v33;
    if (!a2)
    {
      v61 = a1[3];
      v144 = a1[2];
      v145[0] = v61;
      *(v145 + 9) = *(a1 + 57);
      v53 = *a1;
      v52 = a1[1];
      goto LABEL_45;
    }

    v10 = *(v6 + 264);
    *&v122[0] = a2;
    v34 = *(v6 + 280);
    *(&v122[1] + 8) = *(v6 + 296);
    v35 = *(v6 + 328);
    *(&v122[2] + 8) = *(v6 + 312);
    *(&v122[3] + 8) = v35;
    *(&v122[4] + 8) = *(v6 + 344);
    *(v122 + 8) = v34;
    outlined init with copy of Text.Effect.PathInterpolator(v122, v133);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

  if (*(v6 + 16))
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(a1, *(v6 + 8), a2);
    v24 = *(v6 + 272);
    v25 = *(v6 + 328);
    v124[2] = *(v6 + 312);
    v124[3] = v25;
    v124[4] = *(v6 + 344);
    v26 = *(v6 + 296);
    v124[0] = *(v6 + 280);
    v124[1] = v26;
    if (!v24)
    {
      v144 = v148;
      v145[0] = v149[0];
      *(v145 + 9) = *(v149 + 9);
      goto LABEL_16;
    }

    v10 = *(v6 + 264);
    *&v122[0] = v24;
    v27 = *(v6 + 280);
    *(&v122[1] + 8) = *(v6 + 296);
    v28 = *(v6 + 328);
    *(&v122[2] + 8) = *(v6 + 312);
    *(&v122[3] + 8) = v28;
    *(&v122[4] + 8) = *(v6 + 344);
    *(v122 + 8) = v27;
    outlined init with copy of Text.Effect.PathInterpolator(v122, v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v30 = *(v10 + 2);
    v29 = *(v10 + 3);
    if (v30 >= v29 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v10);
    }

    *(&v133[1] + 8) = v124[1];
    *(&v133[2] + 8) = v124[2];
    *(&v133[3] + 8) = v124[3];
    *(&v133[4] + 8) = v124[4];
    *(v133 + 8) = v124[0];
    *(&v133[6] + 8) = v147;
    *(&v133[7] + 8) = v148;
    *(&v133[8] + 8) = v149[0];
    *(&v133[9] + 1) = *(v149 + 9);
    *(&v133[5] + 8) = v146;
    *&v133[0] = v24;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v133);
    *(v10 + 2) = v30 + 1;
    v31 = &v10[216 * v30];
LABEL_15:
    v42 = v133[1];
    *(v31 + 2) = v133[0];
    *(v31 + 3) = v42;
    v43 = v133[2];
    v44 = v133[3];
    v45 = v133[5];
    *(v31 + 6) = v133[4];
    *(v31 + 7) = v45;
    *(v31 + 4) = v43;
    *(v31 + 5) = v44;
    v46 = v133[6];
    v47 = v133[7];
    v48 = v133[9];
    *(v31 + 10) = v133[8];
    *(v31 + 11) = v48;
    *(v31 + 8) = v46;
    *(v31 + 9) = v47;
    v49 = v133[10];
    v50 = v133[11];
    v51 = v133[12];
    v31[240] = v133[13];
    *(v31 + 13) = v50;
    *(v31 + 14) = v51;
    *(v31 + 12) = v49;
    *(v6 + 264) = v10;
    *(v145 + 9) = *(v149 + 9);
    v145[0] = v149[0];
    v144 = v148;
LABEL_16:
    v53 = v146;
    v52 = v147;
    goto LABEL_45;
  }

  if (*(v6 + 56))
  {
    v118 = v21;
    v119 = v20;
    v120 = v19;
    v54 = *(v6 + 256);
    v55 = *(v6 + 8);
    if (*(v6 + 40) - *(v6 + 24) < 0.0)
    {
      v56 = 0.0;
    }

    else
    {
      v56 = *(v6 + 40) - *(v6 + 24);
    }

    v138[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v138[1] = v55;
    v138[2] = a2;
    v138[3] = 0;
    v139 = 1;
    v140 = 0;
    v141 = 1;
    v134[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v134[1] = v55;
    v134[2] = a2;
    v134[3] = 0;
    v135 = 1;
    v136 = 0;
    v137 = 1;
    v57 = a1[3];
    v122[2] = a1[2];
    v122[3] = v57;
    *(&v122[3] + 9) = *(a1 + 57);
    v58 = a1[1];
    v122[0] = *a1;
    v122[1] = v58;
    swift_beginAccess();
    v117[1] = v54;
    if (*(*(v54 + 16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v138), (v59 & 1) != 0) && (type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v60 = swift_dynamicCastClass()) != 0))
    {
      outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v60 + *(*v60 + 120), v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    }

    else
    {
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v133[2] = xmmword_1EAEE98D0;
      v133[3] = unk_1EAEE98E0;
      *(&v133[3] + 9) = unk_1EAEE98E9;
      v133[0] = static Text.Effect.DrawingState.zero;
      v133[1] = unk_1EAEE98C0;
      v62 = type metadata accessor for Spring();
      v63 = *(*(v62 - 8) + 56);
      v63(v15, 1, 1, v62);
      v64 = v63;
      *v23 = 0u;
      *(v23 + 1) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v23 + 2) = 0u;
      *(v23 + 3) = _Q1;
      *(v23 + 8) = 0x3FF0000000000000;
      v23[72] = 0;
      *(v23 + 5) = 0u;
      *(v23 + 6) = 0u;
      *(v23 + 7) = 0u;
      *(v23 + 8) = _Q1;
      *(v23 + 18) = 0x3FF0000000000000;
      v23[152] = 0;
      v70 = v133[3];
      *(v23 + 12) = v133[2];
      *(v23 + 13) = v70;
      *(v23 + 217) = *(&v133[3] + 9);
      v71 = v133[1];
      *(v23 + 10) = v133[0];
      *(v23 + 11) = v71;
      v72 = v120;
      v73 = *(v120 + 44);
      v64(&v23[v73], 1, 1, v62);
      v74 = &v23[*(v72 + 48)];
      v75 = &v23[*(v72 + 52)];
      outlined assign with take of Spring?(v15, &v23[v73]);
      *v74 = 0;
      v74[8] = 1;
      *v75 = 0;
      v75[8] = 1;
    }

    swift_endAccess();
    v76 = v121;
    if (Spring.isValid.getter())
    {
      v77 = a1[2];
      *(v23 + 7) = v77;
      *(v23 + 2) = v77;
      *(v23 + 24) = 0;
      *(v23 + 25) = 0;
      v133[2] = v122[2];
      v133[3] = v122[3];
      *(&v133[3] + 9) = *(&v122[3] + 9);
      v133[0] = v122[0];
      v133[1] = v122[1];
      specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v76, v133, v56);
      v78 = &v23[*(v120 + 48)];
      lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState();
      Spring.update<A>(value:velocity:target:deltaTime:)();
      *v78 = v56;
      v78[8] = 0;
    }

    else
    {
      v127 = v122[2];
      v128[0] = v122[3];
      *(v128 + 9) = *(&v122[3] + 9);
      v125 = v122[0];
      v126 = v122[1];
      v124[2] = v122[2];
      v124[3] = v122[3];
      *(&v124[3] + 9) = *(&v122[3] + 9);
      v124[0] = v122[0];
      v124[1] = v122[1];
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v133[2] = xmmword_1EAEE98D0;
      v133[3] = unk_1EAEE98E0;
      *(&v133[3] + 9) = unk_1EAEE98E9;
      v133[0] = static Text.Effect.DrawingState.zero;
      v133[1] = unk_1EAEE98C0;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
      v79 = type metadata accessor for Spring();
      v80 = *(v79 - 8);
      (*(v80 + 16))(v15, v76, v79);
      v81 = *(v80 + 56);
      v81(v15, 0, 1, v79);
      v82 = v128[0];
      *(v23 + 2) = v127;
      *(v23 + 3) = v82;
      *(v23 + 57) = *(v128 + 9);
      v83 = v126;
      *v23 = v125;
      *(v23 + 1) = v83;
      v84 = v124[3];
      *(v23 + 7) = v124[2];
      *(v23 + 8) = v84;
      *(v23 + 137) = *(&v124[3] + 9);
      v85 = v124[1];
      *(v23 + 5) = v124[0];
      *(v23 + 6) = v85;
      v86 = v133[3];
      *(v23 + 12) = v133[2];
      *(v23 + 13) = v86;
      *(v23 + 217) = *(&v133[3] + 9);
      v87 = v133[1];
      *(v23 + 10) = v133[0];
      *(v23 + 11) = v87;
      v88 = v120;
      v89 = *(v120 + 44);
      v81(&v23[v89], 1, 1, v79);
      v90 = &v23[*(v88 + 48)];
      v91 = &v23[*(v88 + 52)];
      outlined assign with take of Spring?(v15, &v23[v89]);
      *v90 = 0;
      v90[8] = 1;
      *v91 = 0;
      v91[8] = 1;
    }

    v92 = v119;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v23, v119, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v93 = v118;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v92, v118, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    swift_beginAccess();
    specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v93, v134, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
    swift_endAccess();
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v92, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v94 = *(v23 + 8);
    v131 = *(v23 + 7);
    v132[0] = v94;
    *(v132 + 9) = *(v23 + 137);
    v95 = *(v23 + 6);
    v129 = *(v23 + 5);
    v130 = v95;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  }

  else
  {
    memcpy(v133, v6, 0x179uLL);
    Text.Effect.TransformContext.cancelPosition(target:)(a1, &v129);
  }

  v96 = *(v6 + 272);
  v97 = *(v6 + 328);
  v127 = *(v6 + 312);
  v128[0] = v97;
  v128[1] = *(v6 + 344);
  v98 = *(v6 + 296);
  v125 = *(v6 + 280);
  v126 = v98;
  if (v96)
  {
    v99 = *(v6 + 264);
    *&v124[0] = v96;
    v100 = *(v6 + 280);
    *(&v124[1] + 8) = *(v6 + 296);
    v101 = *(v6 + 328);
    *(&v124[2] + 8) = *(v6 + 312);
    *(&v124[3] + 8) = v101;
    *(&v124[4] + 8) = *(v6 + 344);
    *(v124 + 8) = v100;
    outlined init with copy of Text.Effect.PathInterpolator(v124, v122);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 2) + 1, 1, v99);
    }

    v103 = *(v99 + 2);
    v102 = *(v99 + 3);
    if (v103 >= v102 >> 1)
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v99);
    }

    *(&v122[1] + 8) = v126;
    *(&v122[2] + 8) = v127;
    *(&v122[3] + 8) = v128[0];
    *(&v122[4] + 8) = v128[1];
    *(v122 + 8) = v125;
    *(&v122[6] + 8) = v130;
    *(&v122[7] + 8) = v131;
    *(&v122[8] + 8) = v132[0];
    *(&v122[9] + 1) = *(v132 + 9);
    *(&v122[5] + 8) = v129;
    *&v122[0] = v96;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v122);
    *(v99 + 2) = v103 + 1;
    v104 = &v99[216 * v103];
    v105 = v122[1];
    *(v104 + 2) = v122[0];
    *(v104 + 3) = v105;
    v106 = v122[2];
    v107 = v122[3];
    v108 = v122[5];
    *(v104 + 6) = v122[4];
    *(v104 + 7) = v108;
    *(v104 + 4) = v106;
    *(v104 + 5) = v107;
    v109 = v122[6];
    v110 = v122[7];
    v111 = v122[9];
    *(v104 + 10) = v122[8];
    *(v104 + 11) = v111;
    *(v104 + 8) = v109;
    *(v104 + 9) = v110;
    v112 = v122[10];
    v113 = v122[11];
    v114 = v122[12];
    v104[240] = v123;
    *(v104 + 13) = v113;
    *(v104 + 14) = v114;
    *(v104 + 12) = v112;
    *(v6 + 264) = v99;
    *(v145 + 9) = *(v132 + 9);
    v145[0] = v132[0];
    v144 = v131;
  }

  else
  {
    v144 = v131;
    v145[0] = v132[0];
    *(v145 + 9) = *(v132 + 9);
  }

  v53 = v129;
  v52 = v130;
LABEL_45:
  v143 = v52;
  v142 = v53;
  v115 = v145[0];
  *(a4 + 32) = v144;
  *(a4 + 48) = v115;
  *(a4 + 57) = *(v145 + 9);
  result = v143;
  *a4 = v142;
  *(a4 + 16) = result;
  return result;
}

__n128 Text.Effect.TransformContext.update(target:for:spring:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1[3];
  v100 = a1[2];
  v101[0] = v10;
  *(v101 + 9) = *(a1 + 57);
  v11 = a1[1];
  v98 = *a1;
  v99 = v11;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v71 - v13;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v71 - v21;
  if (__OFSUB__(*v4, a2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*v4 != a2)
  {
    v23 = a1[3];
    v96 = a1[2];
    v97[0] = v23;
    *(v97 + 9) = *(a1 + 57);
    v25 = *a1;
    v24 = a1[1];
LABEL_6:
    v94 = v25;
    v95 = v24;
    goto LABEL_7;
  }

  if (*(v4 + 16))
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(a1, *(v4 + 8), a2);
    v96 = v100;
    v97[0] = v101[0];
    *(v97 + 9) = *(v101 + 9);
    v25 = v98;
    v24 = v99;
    goto LABEL_6;
  }

  if ((*(v4 + 56) & 1) == 0)
  {
    memcpy(v85, v4, 0x179uLL);
    Text.Effect.TransformContext.cancelPosition(target:)(a1, &v94);
    goto LABEL_7;
  }

  v75 = v18;
  v76 = a3;
  v72 = v20;
  v74 = v19;
  v28 = *(v4 + 256);
  v29 = *(v4 + 8);
  if (*(v4 + 40) - *(v4 + 24) < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(v4 + 40) - *(v4 + 24);
  }

  v90[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v90[1] = v29;
  v90[2] = a2;
  v90[3] = 0;
  v91 = 1;
  v92 = 0;
  v93 = 1;
  v86[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v86[1] = v29;
  v86[2] = a2;
  a2 = &v81;
  v86[3] = 0;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v30 = a1[3];
  v83 = a1[2];
  v84[0] = v30;
  *(v84 + 9) = *(a1 + 57);
  v31 = a1[1];
  v81 = *a1;
  v82 = v31;
  swift_beginAccess();
  v73 = v28;
  v32 = *(v28 + 16);
  a3 = &static Text.Effect.DrawingState.zero;
  if (!*(v32 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v90), (v33 & 1) == 0) || (type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v34 = swift_dynamicCastClass()) == 0))
  {
    if (one-time initialization token for zero == -1)
    {
LABEL_18:
      v36 = a3[3];
      v85[2] = a3[2];
      v85[3] = v36;
      *(a2 + 137) = *(a3 + 57);
      v37 = a3[1];
      v85[0] = *a3;
      v85[1] = v37;
      v38 = type metadata accessor for Spring();
      v39 = *(*(v38 - 8) + 56);
      v39(v14, 1, 1, v38);
      v40 = v39;
      *v22 = 0u;
      *(v22 + 1) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v22 + 2) = 0u;
      *(v22 + 3) = _Q1;
      *(v22 + 8) = 0x3FF0000000000000;
      v22[72] = 0;
      *(v22 + 5) = 0u;
      *(v22 + 6) = 0u;
      *(v22 + 7) = 0u;
      *(v22 + 8) = _Q1;
      *(v22 + 18) = 0x3FF0000000000000;
      v22[152] = 0;
      v46 = v85[3];
      *(v22 + 12) = v85[2];
      *(v22 + 13) = v46;
      *(v22 + 217) = *(a2 + 137);
      v47 = v85[1];
      *(v22 + 10) = v85[0];
      *(v22 + 11) = v47;
      v48 = v75;
      v49 = *(v75 + 44);
      v40(&v22[v49], 1, 1, v38);
      v50 = &v22[*(v48 + 48)];
      v51 = &v22[*(v48 + 52)];
      outlined assign with take of Spring?(v14, &v22[v49]);
      *v50 = 0;
      v50[8] = 1;
      *v51 = 0;
      v51[8] = 1;
      v35 = v72;
      goto LABEL_19;
    }

LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v34 + *(*v34 + 120), v22, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  v35 = v72;
LABEL_19:
  swift_endAccess();
  v52 = v76;
  if (Spring.isValid.getter())
  {
    v53 = a1[2];
    *(v22 + 7) = v53;
    *(v22 + 2) = v53;
    *(v22 + 24) = 0;
    *(v22 + 25) = 0;
    v85[2] = v83;
    v85[3] = v84[0];
    *(&v85[3] + 9) = *(v84 + 9);
    v85[0] = v81;
    v85[1] = v82;
    specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v52, v85, v5);
    v54 = &v22[*(v75 + 48)];
    lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState();
    Spring.update<A>(value:velocity:target:deltaTime:)();
    *v54 = v5;
    v54[8] = 0;
  }

  else
  {
    v79 = v83;
    v80[0] = v84[0];
    *(v80 + 9) = *(v84 + 9);
    v77 = v81;
    v78 = v82;
    v96 = v83;
    v97[0] = v84[0];
    *(v97 + 9) = *(v84 + 9);
    v94 = v81;
    v95 = v82;
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v85[2] = xmmword_1EAEE98D0;
    v85[3] = unk_1EAEE98E0;
    *(&v85[3] + 9) = unk_1EAEE98E9;
    v85[0] = static Text.Effect.DrawingState.zero;
    v85[1] = unk_1EAEE98C0;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v22, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v55 = type metadata accessor for Spring();
    v56 = *(v55 - 8);
    (*(v56 + 16))(v14, v76, v55);
    v57 = *(v56 + 56);
    v57(v14, 0, 1, v55);
    v58 = v80[0];
    *(v22 + 2) = v79;
    *(v22 + 3) = v58;
    *(v22 + 57) = *(v80 + 9);
    v59 = v78;
    *v22 = v77;
    *(v22 + 1) = v59;
    v60 = v97[0];
    *(v22 + 7) = v96;
    *(v22 + 8) = v60;
    *(v22 + 137) = *(v97 + 9);
    v61 = v95;
    *(v22 + 5) = v94;
    *(v22 + 6) = v61;
    v62 = v85[3];
    *(v22 + 12) = v85[2];
    *(v22 + 13) = v62;
    *(v22 + 217) = *(&v85[3] + 9);
    v63 = v85[1];
    *(v22 + 10) = v85[0];
    *(v22 + 11) = v63;
    v64 = v75;
    v65 = *(v75 + 44);
    v57(&v22[v65], 1, 1, v55);
    v66 = &v22[*(v64 + 48)];
    v67 = &v22[*(v64 + 52)];
    outlined assign with take of Spring?(v14, &v22[v65]);
    *v66 = 0;
    v66[8] = 1;
    *v67 = 0;
    v67[8] = 1;
  }

  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v22, v35, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  v68 = v74;
  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v35, v74, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  swift_beginAccess();
  specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v68, v86, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
  swift_endAccess();
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v35, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  v69 = *(v22 + 8);
  v96 = *(v22 + 7);
  v97[0] = v69;
  *(v97 + 9) = *(v22 + 137);
  v70 = *(v22 + 6);
  v94 = *(v22 + 5);
  v95 = v70;
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v22, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
LABEL_7:
  v26 = v97[0];
  *(a4 + 32) = v96;
  *(a4 + 48) = v26;
  *(a4 + 57) = *(v97 + 9);
  result = v95;
  *a4 = v94;
  *(a4 + 16) = result;
  return result;
}

void Text.Effect.TransformContext.cancelPosition(target:)(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v73 = a2;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v66 - v5;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v77 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v66 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  v13 = type metadata accessor for Spring();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  if (v2[7])
  {
    __break(1u);
  }

  else
  {
    if (v2[5] - v2[6] < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v2[5] - v2[6];
    }

    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(v2 + 32);
    v25 = *v2;
    v24 = *(v2 + 1);
    v98[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v98[1] = v24;
    *&v98[2] = v25;
    v98[3] = 0;
    v99 = 1;
    v100 = 0;
    v101 = 1;
    v90[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v90[1] = v24;
    *&v90[2] = v25;
    v90[3] = 0;
    v91 = 1;
    v92 = 0;
    v93 = 1;
    swift_beginAccess();
    specialized Text.Effect.AttributeTracker.Tracker.ensureEntry<A>(for:value:)(v90, a1);
    swift_endAccess();
    Spring.init(mass:stiffness:damping:allowOverDamping:)();
    v26 = Spring.settlingDuration.getter();
    MEMORY[0x19A8BD3C0](v26);
    Spring.dampingRatio.getter();
    Spring.init(response:dampingRatio:)();
    v69 = *(v14 + 8);
    v70 = v14 + 8;
    v69(v16, v13);
    v86 = 0u;
    v87 = 0u;
    *&v88 = v21;
    *(&v88 + 1) = v22;
    __asm { FMOV            V0.2D, #1.0 }

    v68 = _Q0;
    v89[0] = _Q0;
    *&v89[1] = 0x3FF0000000000000;
    BYTE8(v89[1]) = 0;
    swift_beginAccess();
    v71 = v23;
    v32 = *(*(v23 + 16) + 16);
    v76 = v19;
    v67 = v14;
    if (v32 && (specialized __RawDictionaryStorage.find<A>(_:)(v98), (v33 & 1) != 0) && (type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v34 = swift_dynamicCastClass()) != 0))
    {
      outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v34 + *(*v34 + 120), v12, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    }

    else
    {
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v96 = xmmword_1EAEE98D0;
      v97[0] = unk_1EAEE98E0;
      *(v97 + 9) = unk_1EAEE98E9;
      v94 = static Text.Effect.DrawingState.zero;
      v95 = unk_1EAEE98C0;
      v35 = *(v14 + 56);
      v36 = v75;
      v35(v75, 1, 1, v13);
      *v12 = 0u;
      *(v12 + 1) = 0u;
      v37 = v68;
      *(v12 + 2) = 0u;
      *(v12 + 3) = v37;
      *(v12 + 8) = 0x3FF0000000000000;
      v12[72] = 0;
      *(v12 + 5) = 0u;
      *(v12 + 6) = 0u;
      *(v12 + 7) = 0u;
      *(v12 + 8) = v37;
      *(v12 + 18) = 0x3FF0000000000000;
      v12[152] = 0;
      v38 = v97[0];
      *(v12 + 12) = v96;
      *(v12 + 13) = v38;
      *(v12 + 217) = *(v97 + 9);
      v39 = v95;
      *(v12 + 10) = v94;
      *(v12 + 11) = v39;
      v40 = v77;
      v41 = *(v77 + 44);
      v35(&v12[v41], 1, 1, v13);
      v42 = &v12[*(v40 + 48)];
      v43 = &v12[*(v40 + 52)];
      outlined assign with take of Spring?(v36, &v12[v41]);
      *v42 = 0;
      v42[8] = 1;
      *v43 = 0;
      v43[8] = 1;
      v19 = v76;
    }

    swift_endAccess();
    if (Spring.isValid.getter())
    {
      *(v12 + 14) = v21;
      *(v12 + 15) = v22;
      *(v12 + 4) = v21;
      *(v12 + 5) = v22;
      *(v12 + 24) = 0;
      *(v12 + 25) = 0;
      v96 = v88;
      v97[0] = v89[0];
      *(v97 + 9) = *(v89 + 9);
      v94 = v86;
      v95 = v87;
      specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v19, &v94, v20);
      v44 = &v12[*(v77 + 48)];
      lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState();
      Spring.update<A>(value:velocity:target:deltaTime:)();
      *v44 = v20;
      v44[8] = 0;
      v45 = v13;
    }

    else
    {
      v80 = v88;
      v81[0] = v89[0];
      *(v81 + 9) = *(v89 + 9);
      v78 = v86;
      v79 = v87;
      v84 = v88;
      v85[0] = v89[0];
      *(v85 + 9) = *(v89 + 9);
      v82 = v86;
      v83 = v87;
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v96 = xmmword_1EAEE98D0;
      v97[0] = unk_1EAEE98E0;
      *(v97 + 9) = unk_1EAEE98E9;
      v94 = static Text.Effect.DrawingState.zero;
      v95 = unk_1EAEE98C0;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v12, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
      v46 = v67;
      v47 = v75;
      (*(v67 + 16))(v75, v19, v13);
      v48 = *(v46 + 56);
      v48(v47, 0, 1, v13);
      v49 = v81[0];
      *(v12 + 2) = v80;
      *(v12 + 3) = v49;
      *(v12 + 57) = *(v81 + 9);
      v50 = v79;
      *v12 = v78;
      *(v12 + 1) = v50;
      v51 = v85[0];
      *(v12 + 7) = v84;
      *(v12 + 8) = v51;
      *(v12 + 137) = *(v85 + 9);
      v52 = v83;
      *(v12 + 5) = v82;
      *(v12 + 6) = v52;
      v53 = v97[0];
      *(v12 + 12) = v96;
      *(v12 + 13) = v53;
      *(v12 + 217) = *(v97 + 9);
      v54 = v95;
      *(v12 + 10) = v94;
      *(v12 + 11) = v54;
      v55 = v77;
      v56 = *(v77 + 44);
      v48(&v12[v56], 1, 1, v13);
      v57 = &v12[*(v55 + 48)];
      v58 = &v12[*(v55 + 52)];
      outlined assign with take of Spring?(v47, &v12[v56]);
      *v57 = 0;
      v57[8] = 1;
      *v58 = 0;
      v58[8] = 1;
      v45 = v13;
    }

    v59 = v72;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v12, v72, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v60 = v74;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v59, v74, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    swift_beginAccess();
    specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v60, v90, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
    swift_endAccess();
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v59, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v69(v76, v45);
    v61 = *(v12 + 8);
    v84 = *(v12 + 7);
    v85[0] = v61;
    *(v85 + 9) = *(v12 + 137);
    v62 = *(v12 + 6);
    v82 = *(v12 + 5);
    v83 = v62;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v12, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v63 = v85[0];
    v64 = v73;
    v73[2] = v84;
    v64[3] = v63;
    *(v64 + 57) = *(v85 + 9);
    v65 = v83;
    *v64 = v82;
    v64[1] = v65;
  }
}

__n128 Text.Effect.TransformContext.draw(state:keyPath:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *(v5 + 280);
  v63 = *(v5 + 296);
  v8 = *(v5 + 328);
  v64 = *(v5 + 312);
  v65 = v8;
  v66 = *(v5 + 344);
  v9 = *(v5 + 272);
  v62 = v7;
  if (v9)
  {
    v11 = *(v5 + 280);
    v58 = *(v5 + 296);
    v12 = *(v5 + 328);
    v59 = *(v5 + 312);
    v60 = v12;
    v61 = *(v5 + 344);
    v48 = *(v5 + 368);
    v49 = *(v5 + 360);
    v13 = *(v5 + 376);
    v14 = *(v5 + 264);
    v56 = v9;
    v57 = v11;
    outlined init with copy of Text.Effect.PathInterpolator(&v56, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *&v53[24] = v63;
    *&v53[40] = v64;
    *&v53[56] = v65;
    *&v53[72] = v66;
    *&v53[8] = v62;
    v17 = *a1;
    *&v53[104] = a1[1];
    v18 = a1[3];
    *&v53[120] = a1[2];
    *&v53[136] = v18;
    *&v53[145] = *(a1 + 57);
    *&v53[88] = v17;
    *v53 = v9;
    *&v53[164] = v49;
    *&v53[172] = v48;
    v53[180] = v13;
    *&v53[184] = a2;
    *&v54 = a3;
    *(&v54 + 1) = a4;
    v55 = a5 & 1;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi0_(v53);
    *(v14 + 2) = v16 + 1;
    v19 = &v14[216 * v16];
    v20 = *&v53[16];
    *(v19 + 2) = *v53;
    *(v19 + 3) = v20;
    v21 = *&v53[32];
    v22 = *&v53[48];
    v23 = *&v53[80];
    *(v19 + 6) = *&v53[64];
    *(v19 + 7) = v23;
    *(v19 + 4) = v21;
    *(v19 + 5) = v22;
    v24 = *&v53[96];
    v25 = *&v53[112];
    v26 = *&v53[144];
    *(v19 + 10) = *&v53[128];
    *(v19 + 11) = v26;
    *(v19 + 8) = v24;
    *(v19 + 9) = v25;
    result = *&v53[160];
    v28 = *&v53[176];
    v29 = v54;
    v19[240] = v55;
    *(v19 + 13) = v28;
    *(v19 + 14) = v29;
    *(v19 + 12) = result;
    *(v5 + 264) = v14;
  }

  else
  {
    v30 = *(v5 + 360);
    v31 = *(v5 + 368);
    v32 = *(v5 + 376);
    v33 = *(v5 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
    }

    v36 = a1[3];
    *&v53[32] = a1[2];
    *&v53[48] = v36;
    *&v53[57] = *(a1 + 57);
    v37 = a1[1];
    *v53 = *a1;
    *&v53[16] = v37;
    LOBYTE(v56) = v32;
    *&v53[76] = v30;
    *&v53[84] = v31;
    v53[92] = v32;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi_(v53);
    *(v33 + 2) = v35 + 1;
    v38 = &v33[216 * v35];
    v39 = *&v53[16];
    *(v38 + 2) = *v53;
    *(v38 + 3) = v39;
    v40 = *&v53[32];
    v41 = *&v53[48];
    v42 = *&v53[80];
    *(v38 + 6) = *&v53[64];
    *(v38 + 7) = v42;
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    v43 = *&v53[96];
    v44 = *&v53[112];
    v45 = *&v53[144];
    *(v38 + 10) = *&v53[128];
    *(v38 + 11) = v45;
    *(v38 + 8) = v43;
    *(v38 + 9) = v44;
    result = *&v53[160];
    v46 = *&v53[176];
    v47 = v54;
    v38[240] = v55;
    *(v38 + 13) = v46;
    *(v38 + 14) = v47;
    *(v38 + 12) = result;
    *(v5 + 264) = v33;
  }

  return result;
}

__n128 Text.Effect.TransformContext.record(position:for:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1[3];
  v82 = a1[2];
  v83[0] = v9;
  *(v83 + 9) = *(a1 + 57);
  v10 = a1[1];
  v80 = *a1;
  v81 = v10;
  if (__OFSUB__(*v3, a2))
  {
    __break(1u);
LABEL_22:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = v65;
  if (*v3 == a2)
  {
    if (v3[56])
    {
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(a1, *(v3 + 1), a2);
      v73 = v82;
      v74[0] = v83[0];
      *(v74 + 9) = *(v83 + 9);
      v71 = v80;
      v72 = v81;
    }

    else
    {
      memcpy(__dst, v3, 0x179uLL);
      Text.Effect.TransformContext.cancelPosition(target:)(a1, &v71);
    }

    v38 = *(v3 + 34);
    v39 = (v3 + 280);
    v40 = *(v3 + 328);
    v68 = *(v3 + 312);
    v69 = v40;
    v70 = *(v3 + 344);
    v41 = *(v3 + 296);
    v66 = *(v3 + 280);
    v67 = v41;
    if (v38)
    {
      v42 = *(v3 + 33);
      *&v65[0] = v38;
      v43 = *v39;
      *(&v65[1] + 8) = *(v4 + 296);
      v44 = *(v4 + 328);
      *(&v65[2] + 8) = *(v4 + 312);
      *(&v65[3] + 8) = v44;
      *(&v65[4] + 8) = *(v4 + 344);
      *(v65 + 8) = v43;
      outlined init with copy of Text.Effect.PathInterpolator(v65, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
      }

      v46 = *(v42 + 2);
      v45 = *(v42 + 3);
      if (v46 >= v45 >> 1)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v42);
      }

      *&v61[24] = v67;
      *&v61[40] = v68;
      *&v61[56] = v69;
      *&v61[72] = v70;
      *&v61[8] = v66;
      *&v61[104] = v72;
      *&v61[120] = v73;
      *&v61[136] = v74[0];
      *&v61[145] = *(v74 + 9);
      *&v61[88] = v71;
      *v61 = v38;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v61);
      *(v42 + 2) = v46 + 1;
      v47 = &v42[216 * v46];
      v48 = *&v61[16];
      *(v47 + 2) = *v61;
      *(v47 + 3) = v48;
      v49 = *&v61[32];
      v50 = *&v61[48];
      v51 = *&v61[80];
      *(v47 + 6) = *&v61[64];
      *(v47 + 7) = v51;
      *(v47 + 4) = v49;
      *(v47 + 5) = v50;
      v52 = *&v61[96];
      v53 = *&v61[112];
      v54 = *&v61[144];
      *(v47 + 10) = *&v61[128];
      *(v47 + 11) = v54;
      *(v47 + 8) = v52;
      *(v47 + 9) = v53;
      v55 = *&v61[160];
      v56 = v62;
      v57 = v63;
      v47[240] = v64;
      *(v47 + 13) = v56;
      *(v47 + 14) = v57;
      *(v47 + 12) = v55;
      *(v4 + 33) = v42;
      *(v79 + 9) = *(v74 + 9);
      v78 = v73;
      v79[0] = v74[0];
    }

    else
    {
      v78 = v73;
      v79[0] = v74[0];
      *(v79 + 9) = *(v74 + 9);
    }

    v36 = v71;
    v35 = v72;
    goto LABEL_20;
  }

  v6 = *(v3 + 34);
  v11 = (v3 + 280);
  v12 = *(v3 + 328);
  v65[2] = *(v3 + 312);
  v65[3] = v12;
  v65[4] = *(v3 + 344);
  v13 = *(v3 + 296);
  v65[0] = *(v3 + 280);
  v65[1] = v13;
  if (!v6)
  {
    v58 = a1[3];
    v78 = a1[2];
    v79[0] = v58;
    *(v79 + 9) = *(a1 + 57);
    v36 = *a1;
    v35 = a1[1];
    goto LABEL_20;
  }

  v7 = a1;
  v3 = *(v3 + 33);
  *v61 = v6;
  v14 = *v11;
  v15 = *(v4 + 312);
  v16 = *(v4 + 328);
  *&v61[24] = *(v4 + 296);
  *&v61[40] = v15;
  v17 = *(v4 + 344);
  *&v61[56] = v16;
  *&v61[72] = v17;
  *&v61[8] = v14;
  outlined init with copy of Text.Effect.PathInterpolator(v61, __dst);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v3);
  }

  v20 = *v5;
  *(&__dst[1] + 8) = v5[1];
  v21 = v5[3];
  *(&__dst[2] + 8) = v5[2];
  *(&__dst[3] + 8) = v21;
  *(&__dst[4] + 8) = v5[4];
  *(__dst + 8) = v20;
  v22 = *v7;
  *(&__dst[6] + 8) = v7[1];
  v23 = v7[3];
  *(&__dst[7] + 8) = v7[2];
  *(&__dst[8] + 8) = v23;
  *(&__dst[9] + 1) = *(v7 + 57);
  *(&__dst[5] + 8) = v22;
  *&__dst[0] = v6;
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(__dst);
  *(v3 + 2) = v19 + 1;
  v24 = &v3[216 * v19];
  v25 = __dst[1];
  *(v24 + 2) = __dst[0];
  *(v24 + 3) = v25;
  v26 = __dst[2];
  v27 = __dst[3];
  v28 = __dst[5];
  *(v24 + 6) = __dst[4];
  *(v24 + 7) = v28;
  *(v24 + 4) = v26;
  *(v24 + 5) = v27;
  v29 = __dst[6];
  v30 = __dst[7];
  v31 = __dst[9];
  *(v24 + 10) = __dst[8];
  *(v24 + 11) = v31;
  *(v24 + 8) = v29;
  *(v24 + 9) = v30;
  v32 = __dst[10];
  v33 = __dst[11];
  v34 = __dst[12];
  v24[240] = __dst[13];
  *(v24 + 13) = v33;
  *(v24 + 14) = v34;
  *(v24 + 12) = v32;
  *(v4 + 33) = v3;
  *(v79 + 9) = *(v83 + 9);
  v78 = v82;
  v79[0] = v83[0];
  v36 = v80;
  v35 = v81;
LABEL_20:
  v76 = v36;
  v77 = v35;
  v59 = v79[0];
  *(a3 + 32) = v78;
  *(a3 + 48) = v59;
  *(a3 + 57) = *(v79 + 9);
  result = v77;
  *a3 = v76;
  *(a3 + 16) = result;
  return result;
}

void type metadata accessor for (Spring?, Spring?)()
{
  if (!lazy cache variable for type metadata for (Spring?, Spring?))
  {
    type metadata accessor for Spring?(255, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spring?, Spring?));
    }
  }
}

uint64_t outlined init with copy of Spring?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Spring?(uint64_t a1)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Text.Effect.PathInterpolator.Glyph(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Spring and conformance Spring()
{
  result = lazy protocol witness table cache variable for type Spring and conformance Spring;
  if (!lazy protocol witness table cache variable for type Spring and conformance Spring)
  {
    type metadata accessor for Spring();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spring and conformance Spring);
  }

  return result;
}

uint64_t outlined init with copy of Text.Effect.PathInterpolator.Glyph(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph))
  {
    type metadata accessor for Text.Effect.PathInterpolator.Glyph(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
    }
  }
}

void type metadata accessor for Spring?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with take of Text.Effect.PathInterpolator.Glyph(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?, type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a3, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with take of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a3, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a2, a3, a4, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Effect.TransformContext.DrawingMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.TransformContext.DrawingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Text.Effect.TransformContext.DrawingMode(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void Text.Effect.PathInterpolator.width(for:at:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[8];
  v10 = __OFSUB__(a1, v9);
  v11 = a1 - v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v2[9];
  if (v11 >= *(v12 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v8, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
  v13 = Text.Effect.PathInterpolator.MapKeys.index(for:)(v2[10], a2);
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(*&v8[*(v5 + 24)] + 16);
  if (v13 >= v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 + 1 < v14)
  {
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v8, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    return;
  }

LABEL_13:
  __break(1u);
}

void Text.Effect.PathInterpolator.resolve(_:state:in:)(void (*a1)(char *, char *, uint64_t), double *a2, uint64_t a3)
{
  v7 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[8];
  v16 = __OFSUB__(a1, v15);
  v17 = a1 - v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v3[9];
  if (v17 >= *(v18 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17, v14, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
  v19 = *&v14[*(v11 + 20)];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v3[10];
    v22 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v23 = *(v8 + 72);
    do
    {
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v22, v10, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
      Text.Effect.PathInterpolator.Glyph.resolve(cluster:state:mapKeys:in:)(a1, a2, v21, a3);
      outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v10, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v14, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
}

uint64_t Text.Layout.Cluster.stopKey.getter()
{
  v28 = type metadata accessor for Text.Layout.Run();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Text.Layout.RunSlice();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v10 - 8) + 16))(v9, v0, v10);
  v11 = *(v7 + 44);
  lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v9[v11] != v29[0])
  {
    v23 = "nary8{_NSRange=QQ}16^B32";
    v25 = (v3 + 16);
    v26 = (v1 + 8);
    v14 = v24;
    do
    {
      v15 = dispatch thunk of Collection.subscript.read();
      v16 = v27;
      (*v25)(v5);
      v15(v29, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Text.Layout.RunSlice.run.getter();
      (*(v3 + 8))(v5, v16);
      v17 = Text.Layout.Run.font.getter();
      if (v17)
      {
        v18 = v17;
        v19 = CTFontCopyPostScriptName(v17);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v20._countAndFlagsBits = 0x696261724146532ELL;
        v20._object = 0xE900000000000063;
        if (String.hasPrefix(_:)(v20))
        {

          (*v26)(v24, v28);
          v12 = 0;
          goto LABEL_3;
        }

        v21._object = (v23 | 0x8000000000000000);
        v21._countAndFlagsBits = 0xD000000000000012;
        v22 = String.hasPrefix(_:)(v21);

        v14 = v24;
        (*v26)(v24, v28);
        if (v22)
        {
          v12 = 1;
          goto LABEL_3;
        }
      }

      else
      {
        (*v26)(v14, v28);
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v9[v11] != v29[0]);
  }

  v12 = 2;
LABEL_3:
  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v9, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
  return v12;
}

uint64_t Text.Effect.PathInterpolator.Glyph.bounds(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Text.Layout.RunSlice();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v46[0].a - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v2, v10, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (!result)
    {
      (*(v5 + 32))(v7, v10, v4);
      Text.Layout.RunSlice.quantizedImageBounds.getter();
      return (*(v5 + 8))(v7, v4);
    }

    if (result == 1)
    {
      v12 = v10[3];
      v49 = v10[2];
      v50 = v12;
      v13 = v10[1];
      v47 = *v10;
      v48 = v13;
      if (*(*(&v50 + 1) + 16))
      {
        v14 = *(*(&v50 + 1) + 32);
        v15 = *(*(&v50 + 1) + 48);
        v56 = *(*(&v50 + 1) + 64);
        v54 = v14;
        v55 = v15;
        v16 = *(*(&v50 + 1) + 32);
        v59 = v56;
        v57 = v16;
        v58 = v15;
        outlined init with copy of Path.Storage(&v57, v46);
        Path.boundingRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        outlined destroy of Path(&v54);
        v46[0].a = 1.0;
        v46[0].b = 0.0;
        v46[0].c = 0.0;
        v46[0].d = -1.0;
        *&v46[0].tx = v49;
LABEL_16:
        v60.origin.x = v18;
        v60.origin.y = v20;
        v60.size.width = v22;
        v60.size.height = v24;
        CGRectApplyAffineTransform(v60, v46);
        return outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v47);
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v43 = v10[5];
    v51 = v10[4];
    v52 = v43;
    v53 = v10[6];
    v44 = v10[1];
    v47 = *v10;
    v48 = v44;
    v45 = v10[3];
    v49 = v10[2];
    v50 = v45;
LABEL_18:
    v61.origin.x = *(&v51 + 1);
    *&v61.origin.y = v52;
    *&v61.size.height = v53;
    v46[0].a = 1.0;
    v46[0].b = 0.0;
    v46[0].c = 0.0;
    v46[0].d = -1.0;
    *&v46[0].tx = v49;
    CGRectApplyAffineTransform(v61, v46);
    return outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v47);
  }

  if (result == 3)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(*v10 + 16) > a1)
      {
        v31 = (*v10 + (a1 << 6));
        v32 = v31[2];
        v33 = v31[3];
        v34 = v31[5];
        v49 = v31[4];
        v50 = v34;
        v47 = v32;
        v48 = v33;
        outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v47, v46);

        if (*(*(&v50 + 1) + 16))
        {
          v35 = v49;
          v36 = *(*(&v50 + 1) + 32);
          v37 = *(*(&v50 + 1) + 48);
          v56 = *(*(&v50 + 1) + 64);
          v54 = v36;
          v55 = v37;
          v38 = *(*(&v50 + 1) + 32);
          v59 = v56;
          v57 = v38;
          v58 = v37;
          outlined init with copy of Path.Storage(&v57, v46);
          Path.boundingRect.getter();
          v18 = v39;
          v20 = v40;
          v22 = v41;
          v24 = v42;
          outlined destroy of Path(&v54);
          v46[0].a = 1.0;
          v46[0].b = 0.0;
          v46[0].c = 0.0;
          v46[0].d = -1.0;
          *&v46[0].tx = v35;
          goto LABEL_16;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (result != 4)
  {
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (*(*v10 + 16) > a1)
  {
    v25 = (*v10 + 112 * a1);
    v26 = v25[2];
    v27 = v25[4];
    v48 = v25[3];
    v49 = v27;
    v47 = v26;
    v28 = v25[5];
    v29 = v25[6];
    v30 = v25[8];
    v52 = v25[7];
    v53 = v30;
    v50 = v28;
    v51 = v29;
    outlined init with copy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v47, v46);

    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:)(uint64_t a1, uint64_t a2, long double a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, double *a8)
{
  v39 = *MEMORY[0x1E69E9840];
  specialized Text.Effect.StopSegment.cubicWeightsAndStates(at:)(a2, a5, &v33, a3);
  memcpy(__dst, v37, sizeof(__dst));
  Text.Effect.CubicStates.applying(weights:)(&v33, v33, v34, v35, v36);
  v12 = Text.Effect.PathInterpolator.MapKeys.index(for:)(a6, v33);
  v14 = a1 * a7;
  if ((a1 * a7) >> 64 != (a1 * a7) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = __OFADD__(v14, v12);
  v16 = v14 + v12;
  if (v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(a8 + 8);
  if (a7 != 1)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      v19 = *(v17 + 16);
      if (v16 < v19)
      {
        if (v16 + 1 < v19)
        {
          v18 = vaddq_f64(*(v17 + 32 + 16 * v16), vmulq_n_f64(vsubq_f64(*(v17 + 32 + 16 * (v16 + 1)), *(v17 + 32 + 16 * v16)), v13));
          goto LABEL_11;
        }

LABEL_18:
        __break(1u);
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= *(v17 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = *(v17 + 16 * v16 + 32);
LABEL_11:
  v29 = v18;
  v20 = a8[4];
  v21 = a8[5];
  v22 = v37[0];
  v23 = v37[1];
  CGAffineTransformMakeTranslation(&t1, v37[0], v37[1]);
  CGAffineTransformScale(&t2, &t1, v37[2], v37[3]);
  tx = t2.tx;
  ty = t2.ty;
  v27 = *&t2.c;
  v28 = *&t2.a;
  v26 = __sincos_stret(v36);
  t1.a = v26.__cosval;
  t1.b = v26.__sinval;
  t1.c = -v26.__sinval;
  t1.d = v26.__cosval;
  t1.tx = 0.0;
  t1.ty = 0.0;
  *&t2.a = v28;
  *&t2.c = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  CGAffineTransformTranslate(&t2, &t1, -v22, -v23);
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, v34, v35);
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = -1.0;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  CGPointApplyAffineTransform(v29, &t1);
}

unint64_t Text.Effect.PathInterpolator.MapKeys.index(for:)(unint64_t result, double a2)
{
  switch(result)
  {
    case 0uLL:
      return result;
    case 1uLL:
      return 0;
    case 2uLL:
      if (a2 <= -1.0)
      {
        return 0;
      }

      return a2 >= 0.0;
  }

  v2 = *(result + 16);
  if (!v2)
  {
    return v2 - 1;
  }

  v3 = 0;
  v4 = *(result + 16);
  while (1)
  {
    v5 = v4 >> 1;
    v6 = v3 + (v4 >> 1);
    if (__OFADD__(v3, v4 >> 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v6 >= v2)
    {
      goto LABEL_25;
    }

    if (*(result + 32 + 8 * v6) < a2)
    {
      break;
    }

LABEL_9:
    v4 = v5;
    if (v5 <= 0)
    {
      goto LABEL_16;
    }
  }

  v3 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    v5 = v4 + ~v5;
    goto LABEL_9;
  }

  __break(1u);
LABEL_16:
  if (v3 == v2)
  {
    return v2 - 1;
  }

  if (v3)
  {
    result = v3 - 1;
    if (!__OFSUB__(v3, 1))
    {
      if (result < v2)
      {
        if (v3 < v2)
        {
          return result;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

unint64_t Text.Effect.PathInterpolator.PathGlyph.path(state:mapKeys:)@<X0>(double *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = Text.Effect.PathInterpolator.MapKeys.index(for:)(a2, *a1);
  if (a2 - 1 < 2 || a2 && *(a2 + 16) != 1)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v4 + 56);
      v9 = *(v8 + 16);
      if (result < v9)
      {
        v10 = v8 + 32;
        v11 = v8 + 32 + 40 * result;
        v12 = *v11;
        v13 = *(v11 + 16);
        v43 = *(v11 + 32);
        v41 = v12;
        v42 = v13;
        v14 = result + 1;
        if (result + 1 < v9)
        {
          v15 = (v10 + 40 * v14);
          v16 = *v15;
          v17 = v15[1];
          v40 = *(v15 + 32);
          v38 = v16;
          v39 = v17;
          v18 = *(*(v4 + 48) + 16);
          if (result < v18)
          {
            if (v14 < v18)
            {
              outlined init with copy of Path(&v41, &v35);
              outlined init with copy of Path(&v38, &v35);
              Path.mix(with:by:)();
              if (v31 == 255)
              {
                v27 = v30;
                v28 = v29;
                outlined destroy of Path(&v38);
                v20 = -1;
                v19 = &v41;
              }

              else
              {
                v35 = v29;
                v36 = v30;
                v37 = v31;
                v19 = &v32;
                Path.dilatedGlyphPath(with:)();
                _sypSgWOhTm_2(&v29, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
                Path.offsetBy(dx:dy:)();
                v27 = v33[1];
                v28 = v33[0];
                v20 = v34;
                outlined destroy of Path(&v38);
                outlined destroy of Path(&v41);
              }

              goto LABEL_16;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result >= *(*(v4 + 48) + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = *(v4 + 56);
  if (result < *(v21 + 16))
  {
    v22 = v21 + 40 * result;
    v23 = *(v22 + 32);
    v24 = *(v22 + 48);
    v40 = *(v22 + 64);
    v38 = v23;
    v39 = v24;
    v25 = *(v22 + 64);
    v26 = *(v22 + 48);
    v41 = *(v22 + 32);
    v42 = v26;
    v43 = v25;
    outlined init with copy of Path.Storage(&v41, &v35);
    v19 = v33;
    Path.dilatedGlyphPath(with:)();
    outlined destroy of Path(&v38);
    Path.offsetBy(dx:dy:)();
    v27 = v36;
    v28 = v35;
    v20 = v37;
LABEL_16:
    result = outlined destroy of Path(v19);
    *a3 = v28;
    *(a3 + 16) = v27;
    *(a3 + 32) = v20;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t Text.Effect.PathInterpolator.Interpolated.resolve(state:mapKeys:in:)(double *a1, unint64_t a2, uint64_t *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = Text.Effect.PathInterpolator.MapKeys.index(for:)(a2, *a1);
  v11 = v10;
  v13 = v12;
  v14 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 < *((*&v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(*&v14 + 8 * v10 + 32);
        goto LABEL_5;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = MEMORY[0x19A8BDB80](v10);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_5:
  v16 = v15;
  v17 = *(v3 + 1);
  v18 = *(v17 + 16);
  if (v11 >= v18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v11 + 1 >= v18)
  {
    goto LABEL_23;
  }

  v19 = v17 + 32;
  v20 = (v19 + 16 * v11);
  v21 = (v19 + 16 * (v11 + 1));
  v22 = v3[2] + *v20 + v13 * (*v21 - *v20);
  v76 = v3[3] - (v20[1] + v13 * (v21[1] - v20[1]));
  v23 = *a3;
  v24 = a1[4];
  v25 = a1[5];
  CGAffineTransformMakeTranslation(&t1, v24, v25);
  CGAffineTransformScale(&t2, &t1, a1[6], a1[7]);
  tx = t2.tx;
  ty = t2.ty;
  v75 = *&t2.a;
  v74 = *&t2.c;
  v28 = a1[3];

  v29 = __sincos_stret(v28);
  t1.a = v29.__cosval;
  t1.b = v29.__sinval;
  t1.c = -v29.__sinval;
  t1.d = v29.__cosval;
  t1.tx = 0.0;
  t1.ty = 0.0;
  *&t2.a = v75;
  *&t2.c = v74;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v77, &t1, &t2);
  t1 = v77;
  CGAffineTransformTranslate(&t2, &t1, -v24, -v25);
  v30 = a1[1];
  v31 = a1[2];
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, v30, v31);
  a = t2.a;
  b = t2.b;
  c = t2.c;
  d = t2.d;
  v37 = t2.tx;
  v36 = t2.ty;
  t1 = t2;
  if (!CGAffineTransformIsIdentity(&t1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v38 = swift_allocObject();
      *(v38 + 24) = 0x3FF0000000000000;
      *(v38 + 32) = 0;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0x3FF0000000000000;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      *(v38 + 80) = 0;
      *(v38 + 88) = 0;
      *(v38 + 72) = 0x3FF0000000000000;
      *(v38 + 96) = 1;
      *(v38 + 104) = 0u;
      *(v38 + 120) = 0u;
      *(v38 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v38 + 152) = _Q1;
      *(v38 + 168) = 0x3FF0000000000000;
      *(v38 + 176) = 0;
      *(v38 + 184) = 0u;
      *(v38 + 200) = 0u;
      *(v38 + 216) = 0;
      *(v38 + 16) = *(v23 + 16);
      v44 = *(v23 + 40);
      v45 = *(v23 + 56);
      *(v38 + 24) = *(v23 + 24);
      *(v38 + 40) = v44;
      *(v38 + 56) = v45;
      *(v38 + 72) = *(v23 + 72);
      v46 = *(v23 + 184);
      v47 = *(v23 + 192);
      v48 = *(v23 + 200);
      v49 = *(v23 + 208);
      v50 = *(v23 + 216);
      *(v38 + 184) = v46;
      *(v38 + 192) = v47;
      *(v38 + 200) = v48;
      *(v38 + 208) = v49;
      *(v38 + 216) = v50;
      v51 = *(v23 + 96);
      *(v38 + 80) = *(v23 + 80);
      *(v38 + 96) = v51;

      outlined copy of Text.Effect.StopCollector?(v46, v47, v48, v49);

      v23 = v38;
    }

    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v37;
    t1.ty = v36;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      v52 = *(v23 + 24);
      v53 = *(v23 + 40);
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v37;
      t1.ty = v36;
      *&t2.a = v52;
      *&t2.c = v53;
      *&t2.tx = *(v23 + 56);
      CGAffineTransformConcat(&v77, &t1, &t2);
      v54 = *&v77.c;
      v55 = *&v77.tx;
      *(v23 + 24) = *&v77.a;
      *(v23 + 40) = v54;
      *(v23 + 56) = v55;
    }
  }

  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  v56 = v76;
  t1.tx = v22;
  t1.ty = v76;
  if (!CGAffineTransformIsIdentity(&t1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v57 = swift_allocObject();
      *(v57 + 24) = 0x3FF0000000000000;
      *(v57 + 32) = 0;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0x3FF0000000000000;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      *(v57 + 80) = 0;
      *(v57 + 88) = 0;
      *(v57 + 72) = 0x3FF0000000000000;
      *(v57 + 96) = 1;
      *(v57 + 104) = 0u;
      *(v57 + 120) = 0u;
      *(v57 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v57 + 152) = _Q1;
      *(v57 + 168) = 0x3FF0000000000000;
      *(v57 + 176) = 0;
      *(v57 + 184) = 0u;
      *(v57 + 200) = 0u;
      *(v57 + 216) = 0;
      *(v57 + 16) = *(v23 + 16);
      v59 = *(v23 + 40);
      v60 = *(v23 + 56);
      *(v57 + 24) = *(v23 + 24);
      *(v57 + 40) = v59;
      *(v57 + 56) = v60;
      *(v57 + 72) = *(v23 + 72);
      v61 = *(v23 + 184);
      v62 = *(v23 + 192);
      v63 = *(v23 + 200);
      v64 = *(v23 + 208);
      v65 = *(v23 + 216);
      *(v57 + 184) = v61;
      *(v57 + 192) = v62;
      *(v57 + 200) = v63;
      *(v57 + 208) = v64;
      *(v57 + 216) = v65;
      v66 = *(v23 + 96);
      *(v57 + 80) = *(v23 + 80);
      *(v57 + 96) = v66;

      outlined copy of Text.Effect.StopCollector?(v61, v62, v63, v64);

      v23 = v57;
    }

    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = v22;
    t1.ty = v56;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      v67 = *(v23 + 24);
      v68 = *(v23 + 40);
      t1.a = 1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = 1.0;
      t1.tx = v22;
      t1.ty = v56;
      *&t2.a = v67;
      *&t2.c = v68;
      *&t2.tx = *(v23 + 56);
      CGAffineTransformConcat(&v77, &t1, &t2);
      v69 = *&v77.c;
      v70 = *&v77.tx;
      *(v23 + 24) = *&v77.a;
      *(v23 + 40) = v69;
      *(v23 + 56) = v70;
    }
  }

  v71 = v13;
  *v9 = v16;
  v9[2] = v71;
  swift_storeEnumTagMultiPayload();
  v72 = v16;
  Text.Effect.DrawingContext.Storage.append(_:)(v9);

  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v9, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
}

uint64_t Text.Effect.PathInterpolator.Glyph.resolve(cluster:state:mapKeys:in:)(void (*a1)(char *, char *, uint64_t), double *a2, unint64_t a3, uint64_t a4)
{
  v332 = a1;
  v384 = *MEMORY[0x1E69E9840];
  v7 = COERCE_DOUBLE(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0));
  v338 = *(*&v7 - 8);
  v339 = v7;
  MEMORY[0x1EEE9AC00](*&v7);
  v346 = &v323 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v344);
  v331 = &v323 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  *&v345 = &v323 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v323 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v323 - v16;
  type metadata accessor for (CGPoint, Text.Layout.RunSlice)();
  v337 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v336 = &v323 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss12Zip2SequenceVySaySo7CGPointVG7SwiftUI4TextV6LayoutV8RunSliceVGMaTm_0(0, &lazy cache variable for type metadata for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>, MEMORY[0x1E69E6AA0]);
  v340 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v347 = &v323 - v21;
  _ss12Zip2SequenceVySaySo7CGPointVG7SwiftUI4TextV6LayoutV8RunSliceVGMaTm_0(0, &lazy cache variable for type metadata for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator, MEMORY[0x1E69E6A98]);
  v329 = v22;
  MEMORY[0x1EEE9AC00](v22);
  *&v341 = &v323 - v23;
  v334 = type metadata accessor for Text.Layout.RunSlice();
  *&v342 = *(v334 - 8);
  MEMORY[0x1EEE9AC00](v334);
  *&v352.x = &v323 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  *&v335 = &v323 - v26;
  MEMORY[0x1EEE9AC00](v27);
  *&v330 = &v323 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v328 = &v323 - v30;
  v31 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v323 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a4;
  v34 = *(a4 + 8);
  v36 = *(a4 + 16);
  v37 = *(a4 + 24);
  v38 = *(a4 + 32);
  v333 = a4;
  tx = *(a4 + 40);
  v363[0] = v35;
  v326 = v36;
  *&v327 = v34;
  v363[1] = v34;
  v363[2] = v36;
  v325 = v37;
  v363[3] = v37;
  v364 = v38;
  v365 = tx;
  v343 = a2;
  v40 = *(v35 + 72);
  v41 = a2[8] * v40;

  v349 = a3;
  *&v351 = v17;
  LODWORD(v350) = v38;
  if (v41 == v40)
  {
    v42 = v348;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v43 = swift_allocObject();
      *(v43 + 24) = 0x3FF0000000000000;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0x3FF0000000000000;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      *(v43 + 80) = 0;
      *(v43 + 88) = 0;
      *(v43 + 72) = 0x3FF0000000000000;
      *(v43 + 96) = 1;
      *(v43 + 104) = 0u;
      *(v43 + 120) = 0u;
      *(v43 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v43 + 152) = _Q1;
      *(v43 + 168) = 0x3FF0000000000000;
      *(v43 + 176) = 0;
      *(v43 + 184) = 0u;
      *(v43 + 200) = 0u;
      *(v43 + 216) = 0;
      *(v43 + 16) = *(v35 + 16);
      v49 = *(v35 + 40);
      v50 = *(v35 + 56);
      *(v43 + 24) = *(v35 + 24);
      *(v43 + 40) = v49;
      *(v43 + 56) = v50;
      *(v43 + 72) = *(v35 + 72);
      v51 = *(v35 + 184);
      v52 = *(v35 + 192);
      v53 = *(v35 + 200);
      v54 = *(v35 + 208);
      v324 = v14;
      v55 = *(v35 + 216);
      *(v43 + 184) = v51;
      *(v43 + 192) = v52;
      *(v43 + 200) = v53;
      *(v43 + 208) = v54;
      *(v43 + 216) = v55;
      v56 = *(v35 + 96);
      *(v43 + 80) = *(v35 + 80);
      *(v43 + 96) = v56;

      v57 = v53;
      a3 = v349;
      v14 = v324;
      outlined copy of Text.Effect.StopCollector?(v51, v52, v57, v54);

      v363[0] = v43;
      v35 = v43;
    }

    v42 = v348;
    *(v35 + 72) = v41;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v42, v33, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v340 = v35;
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v309 = *(v33 + 1);
        v355 = *v33;
        v356 = v309;
        v310 = *(v33 + 3);
        v357[0] = *(v33 + 2);
        v357[1] = v310;
        Text.Effect.PathInterpolator.Interpolated.resolve(state:mapKeys:in:)(v343, a3, v363);
        outlined destroy of Text.Effect.PathInterpolator.Interpolated(&v355);
      }

      v61 = *v33;
      *&v345 = *(*v33 + 16);
      if (v345)
      {
        if (*(*&v61 + 16))
        {
          v62 = 0;
          v343 = (*&v61 + 32);
          *&v341 = v349 + 1;
          v339 = v61;
          do
          {
            v63 = &v343[14 * v62];
            v64 = *v63;
            v65 = *(v63 + 2);
            *&v358.c = *(v63 + 1);
            *&v358.tx = v65;
            *&v358.a = v64;
            v66 = *(v63 + 3);
            v67 = *(v63 + 4);
            v68 = *(v63 + 6);
            v361 = *(v63 + 5);
            v362 = v68;
            v359 = v66;
            v360 = v67;
            v69 = *(v35 + 208);
            if (v69)
            {
              v71 = *(v35 + 184);
              v70 = *(v35 + 192);
              v72 = *(v35 + 200);
              v33 = *(v35 + 216);
              if (*(v33 + 2) && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(v332), (v74 & 1) != 0))
              {
                v75 = *(*(v33 + 7) + 8 * v73);
                if ((v75 & 0x8000000000000000) != 0)
                {
                  goto LABEL_147;
                }

                if (v75 >= *(v69 + 16))
                {
                  goto LABEL_148;
                }

                v76 = v69 + 16 * v75;
                v77 = *(v76 + 32);
                v78 = *(v76 + 40);
                outlined copy of Text.Effect.StopCollector?(v71, v70, v72, v69);
                *&v342 = v77;

                v348 = v78;

                outlined init with copy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v358, &v355);
                outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v71, v70);

                v79 = v341;
                if (v349 >= 3)
                {
                  v79 = *(v349 + 16);
                }

                v80 = *(&v362 + 1);
                v81 = *(*(&v362 + 1) + 16);
                v371 = MEMORY[0x1E69E7CC0];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
                v82 = v371;
                v347 = v81;
                if (v81)
                {
                  v83 = 0;
                  tx = v358.tx;
                  ty = v358.ty;
                  v85 = (v80 + 40);
                  v346 = v80;
                  while (v83 < *(v80 + 16))
                  {
                    specialized Text.Effect.StopSegment.cubicWeightsAndStates(at:)(*(v85 - 1), v348, &v355, *v85);
                    memcpy(&v383, v357, 0x139uLL);
                    Text.Effect.CubicStates.applying(weights:)(&v374, *&v355, *(&v355 + 1), *&v356, *(&v356 + 1));
                    v86 = Text.Effect.PathInterpolator.MapKeys.index(for:)(v349, v374.a);
                    v88 = v83 * v79;
                    if ((v83 * v79) >> 64 != (v83 * v79) >> 63)
                    {
                      goto LABEL_131;
                    }

                    _VF = __OFADD__(v88, v86);
                    v89 = v88 + v86;
                    if (_VF)
                    {
                      goto LABEL_132;
                    }

                    if (v79 == 1)
                    {
                      if ((v89 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_133;
                      }

                      if (v89 >= *(v360 + 16))
                      {
                        goto LABEL_135;
                      }

                      v90 = *(v360 + 16 * v89 + 32);
                    }

                    else
                    {
                      if ((v89 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_134;
                      }

                      v91 = *(v360 + 16);
                      if (v89 >= v91)
                      {
                        goto LABEL_136;
                      }

                      if (v89 + 1 >= v91)
                      {
                        goto LABEL_137;
                      }

                      v90 = vaddq_f64(*(v360 + 32 + 16 * v89), vmulq_n_f64(vsubq_f64(*(v360 + 32 + 16 * (v89 + 1)), *(v360 + 32 + 16 * v89)), v87));
                    }

                    v352 = v90;
                    v92 = v374.tx;
                    v93 = v374.ty;
                    CGAffineTransformMakeTranslation(&v355, v374.tx, v374.ty);
                    CGAffineTransformScale(&v354, &v355, v375, v376);
                    v94 = v354.tx;
                    v95 = v354.ty;
                    v350 = *&v354.c;
                    v351 = *&v354.a;
                    v96 = __sincos_stret(v374.d);
                    *&v355 = v96.__cosval;
                    *(&v355 + 1) = *&v96.__sinval;
                    *&v356 = -v96.__sinval;
                    *(&v356 + 1) = *&v96.__cosval;
                    v357[0] = 0uLL;
                    *&v354.a = v351;
                    *&v354.c = v350;
                    v354.tx = v94;
                    v354.ty = v95;
                    CGAffineTransformConcat(&v353, &v355, &v354);
                    v355 = *&v353.a;
                    v356 = *&v353.c;
                    v357[0] = *&v353.tx;
                    CGAffineTransformTranslate(&v354, &v355, -v92, -v93);
                    v355 = *&v354.a;
                    v356 = *&v354.c;
                    v357[0] = *&v354.tx;
                    CGAffineTransformTranslate(&v354, &v355, v374.b, v374.c);
                    *&v356 = 0;
                    v355 = 0x3FF0000000000000uLL;
                    *(&v356 + 1) = 0xBFF0000000000000;
                    *v357 = tx;
                    *(v357 + 1) = ty;
                    CGAffineTransformConcat(&v353, &v355, &v354);
                    v355 = *&v353.a;
                    v356 = *&v353.c;
                    v357[0] = *&v353.tx;
                    v99 = CGPointApplyAffineTransform(v352, &v355);
                    y = v99.y;
                    x = v99.x;
                    v371 = v82;
                    v101 = *(v82 + 16);
                    v100 = *(v82 + 24);
                    if (v101 >= v100 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
                      y = v99.y;
                      x = v99.x;
                      v82 = v371;
                    }

                    ++v83;
                    *(v82 + 16) = v101 + 1;
                    v102 = v82 + 16 * v101;
                    *(v102 + 32) = x;
                    *(v102 + 40) = y;
                    v85 += 2;
                    v80 = v346;
                    if (v347 == v83)
                    {
                      goto LABEL_40;
                    }
                  }

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
                  goto LABEL_139;
                }

LABEL_40:

                v103 = *(&v359 + 1);
                a_low = LODWORD(v358.a);
                a_high = HIDWORD(v358.a);
                LODWORD(v350) = LODWORD(v358.b);
                b_high = HIDWORD(v358.b);

                specialized Path.init(elements:points:)(v107, v103, v82, v372);

                Path.dilatedGlyphPath(with:)();
                v351 = v377;
                v352 = v378;
                v108 = v379;
                outlined destroy of Path(v372);
                v35 = v340;
                if (*(v340 + 96))
                {
                  v109 = v350;
                }

                else
                {
                  v109 = *(v340 + 88);
                  b_high = *(v340 + 92);
                  a_low = *(v340 + 80);
                  a_high = *(v340 + 84);
                }

                v110 = v331;
                v111 = v352;
                *v331 = v351;
                *(v110 + 16) = v111;
                *(v110 + 32) = v108;
                *(v110 + 36) = a_low;
                *(v110 + 40) = a_high;
                *(v110 + 44) = v109;
                *(v110 + 48) = b_high;
                swift_storeEnumTagMultiPayload();
                v380 = v377;
                v381 = v378;
                v382 = v379;
                outlined init with copy of Path.Storage(&v380, &v355);
                v33 = v35;
                Text.Effect.DrawingContext.Storage.append(_:)(v110);
                outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v358);
                outlined destroy of Path(&v377);
                outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v110, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
                v61 = v339;
              }

              else
              {
                outlined copy of Text.Effect.StopCollector?(v71, v70, v72, v69);
                outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v71, v70);

                v35 = v340;
              }
            }

            if (++v62 == v345)
            {
              goto LABEL_111;
            }
          }

          while (v62 < *(*&v61 + 16));
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_111:
    }

    v211 = *v33;
    v212 = *(*v33 + 16);
    if (!v212)
    {
      goto LABEL_111;
    }

    v213 = *v343;
    v348 = (v212 - 1);
    v214 = 32;
    v336 = v211;
    v337 = a3 - 1;
    __asm { FMOV            V0.2D, #1.0 }

    v335 = _Q0;
    while (1)
    {
      v347 = v214;
      v216 = &v211[v214];
      v217 = *v216;
      v218 = *(v216 + 1);
      v219 = *(v216 + 3);
      v357[0] = *(v216 + 2);
      v357[1] = v219;
      v355 = v217;
      v356 = v218;
      v220 = v219;
      v221 = Text.Effect.PathInterpolator.MapKeys.index(for:)(a3, v213);
      if (v337 < 2 || a3 && *(a3 + 16) != 1)
      {
        if ((v221 & 0x8000000000000000) != 0)
        {
          goto LABEL_138;
        }

        v222 = *(*(&v220 + 1) + 16);
        if (v221 >= v222)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
        }

        v223 = *(&v220 + 1) + 32 + 40 * v221;
        v224 = *v223;
        v225 = *(v223 + 16);
        LOBYTE(v354.tx) = *(v223 + 32);
        *&v354.a = v224;
        *&v354.c = v225;
        v226 = v221 + 1;
        if (v221 + 1 >= v222)
        {
          goto LABEL_140;
        }

        v227 = *(&v220 + 1) + 32 + 40 * v226;
        v228 = *v227;
        v229 = *(v227 + 16);
        LOBYTE(v353.tx) = *(v227 + 32);
        *&v353.a = v228;
        *&v353.c = v229;
        v230 = *(v220 + 16);
        if (v221 >= v230)
        {
          goto LABEL_141;
        }

        if (v226 >= v230)
        {
          goto LABEL_142;
        }

        outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v355, &v383);
        outlined init with copy of Path(&v354, &v383);
        outlined init with copy of Path(&v353, &v383);
        Path.mix(with:by:)();
        if (v370 == 255)
        {
          outlined destroy of Path(&v353);
          outlined destroy of Path(&v354);
          outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v355);
          v295 = v348;
          if (!v348)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        }

        v377 = v369[0];
        v378 = v369[1];
        v379 = v370;
        v231 = &v371;
        Path.dilatedGlyphPath(with:)();
        _sypSgWOhTm_2(v369, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
        Path.offsetBy(dx:dy:)();
        v350 = v372[0];
        v351 = v372[1];
        LODWORD(v352.x) = v373;
        outlined destroy of Path(&v353);
        outlined destroy of Path(&v354);
      }

      else
      {
        if ((v221 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        if (v221 >= *(v220 + 16))
        {
          goto LABEL_145;
        }

        if (v221 >= *(*(&v220 + 1) + 16))
        {
          goto LABEL_146;
        }

        v232 = *(&v220 + 1) + 40 * v221;
        v233 = *(v232 + 32);
        v234 = *(v232 + 48);
        v382 = *(v232 + 64);
        v380 = v233;
        v381 = v234;
        outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v355, &v383);
        outlined init with copy of Path(&v380, &v383);
        v231 = v366;
        Path.dilatedGlyphPath(with:)();
        outlined destroy of Path(&v380);
        Path.offsetBy(dx:dy:)();
        v350 = *&v366[40];
        v351 = v367;
        LODWORD(v352.x) = v368;
      }

      outlined destroy of Path(v231);
      v235 = v343;
      v236 = v343[4];
      v237 = v343[5];
      CGAffineTransformMakeTranslation(&v383, v236, v237);
      CGAffineTransformScale(&v358, &v383, v235[6], v235[7]);
      v238 = v358.tx;
      v239 = v358.ty;
      v341 = *&v358.c;
      v342 = *&v358.a;
      v240 = v235[3];

      v241 = __sincos_stret(v240);
      v383.a = v241.__cosval;
      v383.b = v241.__sinval;
      v383.c = -v241.__sinval;
      v383.d = v241.__cosval;
      v383.tx = 0.0;
      v383.ty = 0.0;
      *&v358.a = v342;
      *&v358.c = v341;
      v358.tx = v238;
      v358.ty = v239;
      CGAffineTransformConcat(&v374, &v383, &v358);
      v383 = v374;
      CGAffineTransformTranslate(&v358, &v383, -v236, -v237);
      v242 = v235[1];
      v243 = v235[2];
      v383 = v358;
      CGAffineTransformTranslate(&v358, &v383, v242, v243);
      a = v358.a;
      b = v358.b;
      c = v358.c;
      d = v358.d;
      v248 = v358.tx;
      v249 = v358.ty;
      v383 = v358;
      v250 = v35;
      if (!CGAffineTransformIsIdentity(&v383))
      {
        v250 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v250 = swift_allocObject();
          *(v250 + 24) = 0x3FF0000000000000;
          *(v250 + 32) = 0;
          *(v250 + 40) = 0;
          *(v250 + 48) = 0x3FF0000000000000;
          *(v250 + 56) = 0;
          *(v250 + 64) = 0;
          *(v250 + 80) = 0;
          *(v250 + 88) = 0;
          *(v250 + 72) = 0x3FF0000000000000;
          *(v250 + 96) = 1;
          *(v250 + 104) = 0u;
          *(v250 + 120) = 0u;
          *(v250 + 136) = 0u;
          *(v250 + 152) = v335;
          *(v250 + 168) = 0x3FF0000000000000;
          *(v250 + 176) = 0;
          *(v250 + 184) = 0u;
          *(v250 + 200) = 0u;
          *(v250 + 216) = 0;
          *(v250 + 16) = *(v35 + 16);
          v251 = *(v35 + 40);
          v252 = *(v35 + 56);
          *(v250 + 24) = *(v35 + 24);
          *(v250 + 40) = v251;
          *(v250 + 56) = v252;
          *(v250 + 72) = *(v35 + 72);
          v253 = *(v35 + 184);
          v254 = *(v35 + 192);
          v255 = *(v35 + 200);
          v256 = *(v35 + 208);
          v257 = *(v35 + 216);
          *(v250 + 184) = v253;
          *(v250 + 192) = v254;
          *(v250 + 200) = v255;
          *(v250 + 208) = v256;
          *(v250 + 216) = v257;
          v258 = *(v35 + 96);
          *(v250 + 80) = *(v35 + 80);
          *(v250 + 96) = v258;

          outlined copy of Text.Effect.StopCollector?(v253, v254, v255, v256);
        }

        v383.a = a;
        v383.b = b;
        v383.c = c;
        v383.d = d;
        v383.tx = v248;
        v383.ty = v249;
        if (!CGAffineTransformIsIdentity(&v383))
        {
          v259 = *(v250 + 24);
          v260 = *(v250 + 40);
          v383.a = a;
          v383.b = b;
          v383.c = c;
          v383.d = d;
          v383.tx = v248;
          v383.ty = v249;
          *&v358.a = v259;
          *&v358.c = v260;
          *&v358.tx = *(v250 + 56);
          CGAffineTransformConcat(&v374, &v383, &v358);
          v261 = *&v374.c;
          v262 = *&v374.tx;
          *(v250 + 24) = *&v374.a;
          *(v250 + 40) = v261;
          *(v250 + 56) = v262;
        }
      }

      v263 = v357[0];
      v383.b = 0.0;
      v383.c = 0.0;
      v383.a = 1.0;
      v383.d = -1.0;
      *&v383.tx = v357[0];
      if (!CGAffineTransformIsIdentity(&v383))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v264 = swift_allocObject();
          *(v264 + 24) = 0x3FF0000000000000;
          *(v264 + 32) = 0;
          *(v264 + 40) = 0;
          *(v264 + 48) = 0x3FF0000000000000;
          *(v264 + 56) = 0;
          *(v264 + 64) = 0;
          *(v264 + 80) = 0;
          *(v264 + 88) = 0;
          *(v264 + 72) = 0x3FF0000000000000;
          *(v264 + 96) = 1;
          *(v264 + 104) = 0u;
          *(v264 + 120) = 0u;
          *(v264 + 136) = 0u;
          *(v264 + 152) = v335;
          *(v264 + 168) = 0x3FF0000000000000;
          *(v264 + 176) = 0;
          *(v264 + 184) = 0u;
          *(v264 + 200) = 0u;
          *(v264 + 216) = 0;
          *(v264 + 16) = *(v250 + 16);
          v265 = *(v250 + 40);
          v266 = *(v250 + 56);
          *(v264 + 24) = *(v250 + 24);
          *(v264 + 40) = v265;
          *(v264 + 56) = v266;
          *(v264 + 72) = *(v250 + 72);
          v267 = *(v250 + 184);
          v268 = *(v250 + 192);
          v269 = *(v250 + 200);
          v270 = *(v250 + 208);
          v271 = *(v250 + 216);
          *(v264 + 184) = v267;
          *(v264 + 192) = v268;
          *(v264 + 200) = v269;
          *(v264 + 208) = v270;
          *(v264 + 216) = v271;
          v272 = *(v250 + 96);
          *(v264 + 80) = *(v250 + 80);
          *(v264 + 96) = v272;

          outlined copy of Text.Effect.StopCollector?(v267, v268, v269, v270);

          v250 = v264;
        }

        v383.b = 0.0;
        v383.c = 0.0;
        v383.a = 1.0;
        v383.d = -1.0;
        *&v383.tx = v263;
        if (!CGAffineTransformIsIdentity(&v383))
        {
          v273 = *(v250 + 24);
          v274 = *(v250 + 40);
          v383.b = 0.0;
          v383.c = 0.0;
          v383.a = 1.0;
          v383.d = -1.0;
          *&v383.tx = v263;
          *&v358.a = v273;
          *&v358.c = v274;
          *&v358.tx = *(v250 + 56);
          CGAffineTransformConcat(&v374, &v383, &v358);
          v275 = *&v374.c;
          v276 = *&v374.tx;
          *(v250 + 24) = *&v374.a;
          *(v250 + 40) = v275;
          *(v250 + 56) = v276;
        }
      }

      if (*(v250 + 96))
      {
        v277 = v355;
      }

      else
      {
        v277 = *(v250 + 80);
      }

      v278 = v345;
      v279 = v351;
      *v345 = v350;
      *(v278 + 16) = v279;
      x_low = LOBYTE(v352.x);
      *(v278 + 32) = LOBYTE(v352.x);
      *(v278 + 36) = v277;
      swift_storeEnumTagMultiPayload();
      v281 = *(v250 + 16);
      v282 = v278;
      v283 = v346;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v282, v346, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      v284 = v339;
      v285 = *(v250 + 24);
      v286 = *(v250 + 40);
      v287 = *(v250 + 56);
      *(v283 + *(*&v339 + 20)) = *(v250 + 72);
      v288 = (v283 + *(*&v284 + 24));
      *v288 = v285;
      v288[1] = v286;
      v288[2] = v287;
      swift_beginAccess();
      v289 = *(v281 + 16);
      v290 = v350;
      v291 = v351;
      outlined copy of Path.Storage(v350, *(&v350 + 1), v351, *(&v351 + 1), x_low);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v281 + 16) = v289;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v289 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v289[2] + 1, 1, v289);
        *(v281 + 16) = v289;
      }

      v294 = v289[2];
      v293 = v289[3];
      if (v294 >= v293 >> 1)
      {
        v289 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v293 > 1, v294 + 1, 1, v289);
      }

      v289[2] = v294 + 1;
      outlined init with take of Text.Effect.ResolvedDrawing.Operation(v346, v289 + ((*(v338 + 80) + 32) & ~*(v338 + 80)) + *(v338 + 72) * v294, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      *(v281 + 16) = v289;
      swift_endAccess();
      outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v355);
      outlined consume of Path.Storage(v290, *(&v290 + 1), v291, *(&v291 + 1), LOBYTE(v352.x));
      outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v345, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);

      v35 = v340;
      a3 = v349;
      v211 = v336;
      v295 = v348;
      if (!v348)
      {
        goto LABEL_111;
      }

LABEL_110:
      v348 = (v295 - 1);
      v214 = (v347 + 64);
    }
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_47:
    v112 = v342;
    v113 = v342 + 32;
    v114 = *(v342 + 32);
    v115 = v328;
    v116 = v334;
    v114(v328, v33, v334);
    v117 = Text.Layout.RunSlice.positions.getter();
    v118 = *(v340 + 52);
    v119 = v112 + 16;
    v120 = *(v112 + 16);
    v121 = v347;
    v348 = v120;
    v349 = v119;
    (v120)(&v347[v118], v115, v116);
    v122 = v341;
    *v341 = v117;
    *(v122 + 8) = 0;
    v338 = v113;
    v332 = v114;
    v114(*&v330, &v121[v118], v116);
    v123 = v117;
    v124 = v122 + *(v329 + 52);
    lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
    dispatch thunk of Sequence.makeIterator()();
    v331 = *(v123 + 16);
    if (v331)
    {
      v125 = 0;
      v339 = *&v327;
      v340 = v326;
      v330 = -tx;
      *&v342 = v342 + 8;
      v126 = (v123 + 40);
      __asm { FMOV            V0.2D, #1.0 }

      v327 = _Q0;
      while (1)
      {
        if (v125 >= *(v123 + 16))
        {
          goto LABEL_143;
        }

        v128 = *(v126 - 1);
        v129 = *v126;
        v346 = v126;
        v347 = v125 + 1;
        *(v341 + 8) = v125 + 1;
        type metadata accessor for IndexingIterator<Text.Layout.RunSlice>();
        v131 = *(v130 + 36);
        lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
        dispatch thunk of Collection.endIndex.getter();
        if (*(v124 + v131) == *&v358.a)
        {
          break;
        }

        v132 = v124;
        v133 = v123;
        v134 = dispatch thunk of Collection.subscript.read();
        v135 = v335;
        v348(v335);
        v134(&v358, 0);
        v136 = v132;
        dispatch thunk of Collection.formIndex(after:)();
        v137 = v336;
        v138 = *(v337 + 48);
        v139 = v332;
        v332(&v336[v138], v135, v116);
        v139(*&v352.x, &v137[v138], v116);
        v140 = *(v35 + 24);
        v141 = *(v35 + 56);
        *&v383.c = *(v35 + 40);
        *&v383.tx = v141;
        *&v383.a = v140;
        Text.Layout.RunSlice.pointSize.getter();
        if ((v350 & 1) != 0 || v142 != v339)
        {
          v143 = v142;
          CGAffineTransformMakeScale(&v358, tx * v142, -(tx * v142));
          RBShapeGetFontQuantizationLevel();
          v144 = v333;
          *(v333 + 8) = v143;
          *(v144 + 16) = v145;
          v339 = v143;
          v340 = v145;
          *(v144 + 24) = v146;
          *(v144 + 32) = 0;
        }

        v358.b = 0.0;
        v358.c = 0.0;
        v358.a = tx;
        v358.d = v330;
        v358.tx = tx * v128;
        v358.ty = tx * v129;
        RBShapeGetPredictedFontQuantizationError();
        v148 = v147 / tx;
        v150 = v149 / tx;
        v123 = v133;
        v124 = v136;
        if (v147 / tx != 0.0 || v150 != 0.0)
        {
          v35 = v363[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            v151 = swift_allocObject();
            *(v151 + 24) = 0x3FF0000000000000;
            *(v151 + 32) = 0;
            *(v151 + 40) = 0;
            *(v151 + 48) = 0x3FF0000000000000;
            *(v151 + 56) = 0;
            *(v151 + 64) = 0;
            *(v151 + 80) = 0;
            *(v151 + 88) = 0;
            *(v151 + 72) = 0x3FF0000000000000;
            *(v151 + 96) = 1;
            *(v151 + 104) = 0u;
            *(v151 + 120) = 0u;
            *(v151 + 136) = 0u;
            *(v151 + 152) = v327;
            *(v151 + 168) = 0x3FF0000000000000;
            *(v151 + 176) = 0;
            *(v151 + 184) = 0u;
            *(v151 + 200) = 0u;
            *(v151 + 216) = 0;
            *(v151 + 16) = *(v35 + 16);
            v152 = *(v35 + 40);
            v153 = *(v35 + 56);
            *(v151 + 24) = *(v35 + 24);
            *(v151 + 40) = v152;
            *(v151 + 56) = v153;
            *(v151 + 72) = *(v35 + 72);
            v154 = *(v35 + 184);
            v155 = *(v35 + 192);
            v156 = *(v35 + 200);
            v157 = *(v35 + 208);
            v158 = *(v35 + 216);
            *(v151 + 184) = v154;
            *(v151 + 192) = v155;
            *(v151 + 200) = v156;
            *(v151 + 208) = v157;
            *(v151 + 216) = v158;
            v159 = *(v35 + 96);
            *(v151 + 80) = *(v35 + 80);
            *(v151 + 96) = v159;

            v160 = v155;
            v116 = v334;
            outlined copy of Text.Effect.StopCollector?(v154, v160, v156, v157);

            v363[0] = v151;
            v35 = v151;
          }

          v161 = *(v35 + 40);
          *&v358.a = *(v35 + 24);
          *&v358.c = v161;
          *&v358.tx = *(v35 + 56);
          CGAffineTransformTranslate(&v374, &v358, v148, v150);
          v162 = *&v374.c;
          v163 = *&v374.tx;
          *(v35 + 24) = *&v374.a;
          *(v35 + 40) = v162;
          *(v35 + 56) = v163;
        }

        v164 = v343;
        v165 = v343[4];
        v166 = v343[5];
        CGAffineTransformMakeTranslation(&v358, v165, v166);
        CGAffineTransformScale(&v374, &v358, v164[6], v164[7]);
        v167 = v374.tx;
        v168 = v374.ty;
        v350 = *&v374.a;
        v345 = *&v374.c;
        v169 = __sincos_stret(v164[3]);
        v358.a = v169.__cosval;
        v358.b = v169.__sinval;
        v358.c = -v169.__sinval;
        v358.d = v169.__cosval;
        v358.tx = 0.0;
        v358.ty = 0.0;
        *&v374.a = v350;
        *&v374.c = v345;
        v374.tx = v167;
        v374.ty = v168;
        CGAffineTransformConcat(&v354, &v358, &v374);
        v358 = v354;
        CGAffineTransformTranslate(&v374, &v358, -v165, -v166);
        v170 = v164[1];
        v171 = v164[2];
        v358 = v374;
        CGAffineTransformTranslate(&v374, &v358, v170, v171);
        v172 = v374.a;
        v173 = v374.b;
        v174 = v374.c;
        v175 = v374.d;
        v176 = v374.tx;
        v177 = v374.ty;
        v358 = v374;
        if (!CGAffineTransformIsIdentity(&v358))
        {
          v35 = v363[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            v178 = swift_allocObject();
            *(v178 + 24) = 0x3FF0000000000000;
            *(v178 + 32) = 0;
            *(v178 + 40) = 0;
            *(v178 + 48) = 0x3FF0000000000000;
            *(v178 + 56) = 0;
            *(v178 + 64) = 0;
            *(v178 + 80) = 0;
            *(v178 + 88) = 0;
            *(v178 + 72) = 0x3FF0000000000000;
            *(v178 + 96) = 1;
            *(v178 + 104) = 0u;
            *(v178 + 120) = 0u;
            *(v178 + 136) = 0u;
            *(v178 + 152) = v327;
            *(v178 + 168) = 0x3FF0000000000000;
            *(v178 + 176) = 0;
            *(v178 + 184) = 0u;
            *(v178 + 200) = 0u;
            *(v178 + 216) = 0;
            *(v178 + 16) = *(v35 + 16);
            v179 = *(v35 + 40);
            v180 = *(v35 + 56);
            *(v178 + 24) = *(v35 + 24);
            *(v178 + 40) = v179;
            *(v178 + 56) = v180;
            *(v178 + 72) = *(v35 + 72);
            v181 = *(v35 + 184);
            v182 = *(v35 + 192);
            v183 = *(v35 + 200);
            v184 = *(v35 + 208);
            v185 = *(v35 + 216);
            *(v178 + 184) = v181;
            *(v178 + 192) = v182;
            *(v178 + 200) = v183;
            *(v178 + 208) = v184;
            *(v178 + 216) = v185;
            v186 = *(v35 + 96);
            *(v178 + 80) = *(v35 + 80);
            *(v178 + 96) = v186;

            v187 = v183;
            v116 = v334;
            outlined copy of Text.Effect.StopCollector?(v181, v182, v187, v184);

            v363[0] = v178;
            v35 = v178;
          }

          v358.a = v172;
          v358.b = v173;
          v358.c = v174;
          v358.d = v175;
          v358.tx = v176;
          v358.ty = v177;
          if (!CGAffineTransformIsIdentity(&v358))
          {
            v188 = *(v35 + 24);
            v189 = *(v35 + 40);
            v358.a = v172;
            v358.b = v173;
            v358.c = v174;
            v358.d = v175;
            v358.tx = v176;
            v358.ty = v177;
            *&v374.a = v188;
            *&v374.c = v189;
            *&v374.tx = *(v35 + 56);
            CGAffineTransformConcat(&v354, &v358, &v374);
            v190 = *&v354.c;
            v191 = *&v354.tx;
            *(v35 + 24) = *&v354.a;
            *(v35 + 40) = v190;
            *(v35 + 56) = v191;
          }
        }

        type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)();
        v193 = *(v192 + 48);
        (v348)(v351, *&v352.x, v116);
        v194 = *(v35 + 96);
        v195 = 0uLL;
        if ((v194 & 1) == 0)
        {
          v195 = *(v35 + 80);
        }

        v196 = v351;
        v197 = v351 + v193;
        *v197 = v195;
        *(v197 + 16) = v194;
        swift_storeEnumTagMultiPayload();
        Text.Effect.DrawingContext.Storage.append(_:)(v196);
        outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v196, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
        v198 = *(v35 + 24);
        v199 = *(v35 + 40);
        v357[0] = *(v35 + 56);
        v355 = v198;
        v356 = v199;
        if (static CGAffineTransform.== infix(_:_:)())
        {
          v200 = *v342;
          (*v342)(*&v352.x, v116);
        }

        else
        {
          v201 = v363[0];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v200 = *v342;
            (*v342)(*&v352.x, v116);
            v35 = v363[0];
          }

          else
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            v35 = swift_allocObject();
            *(v35 + 24) = 0x3FF0000000000000;
            *(v35 + 32) = 0;
            *(v35 + 40) = 0;
            *(v35 + 48) = 0x3FF0000000000000;
            *(v35 + 56) = 0;
            *(v35 + 64) = 0;
            *(v35 + 80) = 0;
            *(v35 + 88) = 0;
            *(v35 + 72) = 0x3FF0000000000000;
            *(v35 + 96) = 1;
            *(v35 + 104) = 0u;
            *(v35 + 120) = 0u;
            *(v35 + 136) = 0u;
            *(v35 + 152) = v327;
            *(v35 + 168) = 0x3FF0000000000000;
            *(v35 + 176) = 0;
            *(v35 + 184) = 0u;
            *(v35 + 200) = 0u;
            *(v35 + 216) = 0;
            *(v35 + 16) = *(v201 + 16);
            v202 = *(v201 + 40);
            v203 = *(v201 + 56);
            *(v35 + 24) = *(v201 + 24);
            *(v35 + 40) = v202;
            *(v35 + 56) = v203;
            *(v35 + 72) = *(v201 + 72);
            v204 = *(v201 + 184);
            v205 = *(v201 + 192);
            v206 = *(v201 + 200);
            v207 = *(v201 + 208);
            v208 = *(v201 + 216);
            *(v35 + 184) = v204;
            *(v35 + 192) = v205;
            *(v35 + 200) = v206;
            *(v35 + 208) = v207;
            *(v35 + 216) = v208;
            v209 = *(v201 + 96);
            *(v35 + 80) = *(v201 + 80);
            *(v35 + 96) = v209;

            v210 = v206;
            v116 = v334;
            outlined copy of Text.Effect.StopCollector?(v204, v205, v210, v207);
            v200 = *v342;
            (*v342)(*&v352.x, v116);

            v363[0] = v35;
          }

          *(v35 + 24) = *&v383.a;
          *(v35 + 40) = *&v383.c;
          *(v35 + 56) = *&v383.tx;
        }

        v125 = v347;
        LODWORD(v350) = 0;
        v126 = (v346 + 16);
        if (v331 == v347)
        {
          goto LABEL_123;
        }
      }

      v200 = *v342;
LABEL_123:
      v200(v328, v116);
    }

    else
    {
      (*(v342 + 8))(v328, v116);
    }

    v311 = v341;
    *(v341 + *(v329 + 56)) = 1;
    outlined destroy of Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator(v311);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v59 = *(v33 + 1);
    v355 = *v33;
    v356 = v59;
    v60 = *(v33 + 3);
    v357[0] = *(v33 + 2);
    v357[1] = v60;
    specialized Text.Effect.PathInterpolator.PathGlyph.resolve(cluster:state:mapKeys:in:)(v343, a3, v363);
    outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v355);
  }

  else
  {
    v297 = *(v33 + 5);
    v357[2] = *(v33 + 4);
    v357[3] = v297;
    v357[4] = *(v33 + 6);
    v298 = *(v33 + 1);
    v355 = *v33;
    v356 = v298;
    v299 = *(v33 + 3);
    v357[0] = *(v33 + 2);
    v357[1] = v299;
    v300 = *(v35 + 208);
    if (v300)
    {
      v324 = v14;
      v302 = *(v35 + 184);
      v301 = *(v35 + 192);
      v303 = *(v35 + 200);
      v304 = *(v35 + 216);
      if (!*(v304 + 16) || (v305 = specialized __RawDictionaryStorage.find<A>(_:)(v332), (v306 & 1) == 0))
      {
        outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v302, v301);

        outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v355);
        outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v302, v301);
      }

      v307 = *(*(v304 + 56) + 8 * v305);
      if ((v307 & 0x8000000000000000) != 0)
      {
        goto LABEL_149;
      }

      if (v307 >= *(v300 + 16))
      {
        goto LABEL_150;
      }

      v352 = *(v300 + 16 * v307 + 32);
      outlined copy of Text.Effect.StopCollector?(v302, v301, v303, v300);

      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v302, v301);

      MEMORY[0x1EEE9AC00](v308);
      *(&v323 - 3) = v352;
      *(&v323 - 4) = v313;
      *(&v323 - 3) = v312;
      *(&v323 - 2) = &v355;
      v316 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(0, v314, v315, closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:)partial apply);

      v317 = *(&v357[1] + 1);

      specialized Path.init(elements:points:)(v318, v317, v316, &v374);

      Path.dilatedGlyphPath(with:)();
      v351 = *&v358.a;
      v352 = *&v358.c;
      tx_low = LOBYTE(v358.tx);
      outlined destroy of Path(&v374);
      if (*(v35 + 96))
      {
        v320 = v355;
      }

      else
      {
        v320 = *(v35 + 80);
      }

      v321 = v324;
      v322 = v352;
      *v324 = v351;
      *(v321 + 16) = v322;
      *(v321 + 32) = tx_low;
      *(v321 + 36) = v320;
      swift_storeEnumTagMultiPayload();
      *&v383.a = *&v358.a;
      *&v383.c = *&v358.c;
      LOBYTE(v383.tx) = LOBYTE(v358.tx);
      outlined init with copy of Path.Storage(&v383, &v354);
      Text.Effect.DrawingContext.Storage.append(_:)(v321);
      outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v355);
      outlined destroy of Path(&v358);
      outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v321, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
    }

    else
    {
      outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v355);
    }
  }
}

uint64_t Text.Effect.PathInterpolator.Glyph.resolve(keyPath:state:mapKeys:in:)(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, unint64_t a5, uint64_t a6)
{
  *&v252 = a3;
  *&v248 = a1;
  v268 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v246 = &v242 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v247 = (&v242 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v249 = &v242 - v15;
  *&v253 = type metadata accessor for Text.Layout.RunSlice();
  *&v251 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v250 = &v242 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v242 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a6 + 24);
  v22 = *(a6 + 32);
  v23 = *(a6 + 40);
  v263 = *a6;
  v20 = v263;
  v264 = *(a6 + 8);
  v265 = v21;
  v266 = v22;
  v267 = v23;
  v24 = *(v263 + 72);
  v25 = a4[8] * v24;

  v26 = v20;
  if (v25 != v24)
  {
    v245 = v6;
    v26 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v26 = swift_allocObject();
      *(v26 + 24) = 0x3FF0000000000000;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0x3FF0000000000000;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      *(v26 + 80) = 0;
      *(v26 + 88) = 0;
      *(v26 + 72) = 0x3FF0000000000000;
      *(v26 + 96) = 1;
      *(v26 + 104) = 0u;
      *(v26 + 120) = 0u;
      *(v26 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v26 + 152) = _Q1;
      *(v26 + 168) = 0x3FF0000000000000;
      *(v26 + 176) = 0;
      *(v26 + 184) = 0u;
      *(v26 + 200) = 0u;
      *(v26 + 216) = 0;
      *(v26 + 16) = *(v20 + 16);
      v32 = *(v20 + 40);
      v33 = *(v20 + 56);
      *(v26 + 24) = *(v20 + 24);
      *(v26 + 40) = v32;
      *(v26 + 56) = v33;
      *(v26 + 72) = *(v20 + 72);
      v242 = a5;
      v243 = a4;
      v35 = *(v20 + 184);
      v34 = *(v20 + 192);
      v244 = v10;
      v37 = *(v20 + 200);
      v36 = *(v20 + 208);
      v38 = *(v20 + 216);
      *(v26 + 184) = v35;
      *(v26 + 192) = v34;
      *(v26 + 200) = v37;
      *(v26 + 208) = v36;
      *(v26 + 216) = v38;
      v39 = *(v20 + 96);
      *(v26 + 80) = *(v20 + 80);
      *(v26 + 96) = v39;

      v40 = v35;
      v41 = v34;
      a5 = v242;
      a4 = v243;
      v42 = v36;
      v10 = v244;
      outlined copy of Text.Effect.StopCollector?(v40, v41, v37, v42);

      v263 = v26;
    }

    *(v26 + 72) = v25;
    v6 = v245;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v6, v19, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v164 = *v19;
      v165 = *(v20 + 112);
      v166 = *(v20 + 120);
      v167 = *(v20 + 128);
      v168 = *(v20 + 136);
      v169 = *(v20 + 144);
      v170 = *(v20 + 152);
      v171 = *(v20 + 160);
      CGAffineTransformMakeTranslation(&v254, v168, v169);
      CGAffineTransformScale(&v262, &v254, v170, v171);
      tx = v262.tx;
      ty = v262.ty;
      v253 = *&v262.a;
      v251 = *&v262.c;
      v174 = __sincos_stret(v167);
      v254.a = v174.__cosval;
      v254.b = v174.__sinval;
      v254.c = -v174.__sinval;
      v254.d = v174.__cosval;
      v254.tx = 0.0;
      v254.ty = 0.0;
      *&v262.a = v253;
      *&v262.c = v251;
      v262.tx = tx;
      v262.ty = ty;
      CGAffineTransformConcat(&v260, &v254, &v262);
      v254 = v260;
      CGAffineTransformTranslate(&v262, &v254, -v168, -v169);
      v254 = v262;
      CGAffineTransformTranslate(&v262, &v254, v165, v166);
      a = v262.a;
      b = v262.b;
      c = v262.c;
      d = v262.d;
      v179 = v262.tx;
      v180 = v262.ty;
      v254 = v262;
      if (!CGAffineTransformIsIdentity(&v254))
      {
        v181 = v263;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v182 = swift_allocObject();
          *(v182 + 24) = 0x3FF0000000000000;
          *(v182 + 32) = 0;
          *(v182 + 40) = 0;
          *(v182 + 48) = 0x3FF0000000000000;
          *(v182 + 56) = 0;
          *(v182 + 64) = 0;
          *(v182 + 80) = 0;
          *(v182 + 88) = 0;
          *(v182 + 72) = 0x3FF0000000000000;
          *(v182 + 96) = 1;
          *(v182 + 104) = 0u;
          *(v182 + 120) = 0u;
          *(v182 + 136) = 0u;
          __asm { FMOV            V1.2D, #1.0 }

          *(v182 + 152) = _Q1;
          *(v182 + 168) = 0x3FF0000000000000;
          *(v182 + 176) = 0;
          *(v182 + 184) = 0u;
          *(v182 + 200) = 0u;
          *(v182 + 216) = 0;
          *(v182 + 16) = *(v181 + 16);
          v184 = *(v181 + 40);
          v185 = *(v181 + 56);
          *(v182 + 24) = *(v181 + 24);
          *(v182 + 40) = v184;
          *(v182 + 56) = v185;
          *(v182 + 72) = *(v181 + 72);
          v242 = a5;
          v243 = a4;
          v186 = v181;
          v187 = *(v181 + 184);
          v188 = *(v181 + 192);
          v189 = *(v186 + 200);
          v190 = *(v186 + 208);
          v191 = *(v186 + 216);
          *(v182 + 184) = v187;
          *(v182 + 192) = v188;
          *(v182 + 200) = v189;
          *(v182 + 208) = v190;
          *(v182 + 216) = v191;
          v192 = *(v186 + 96);
          *(v182 + 80) = *(v186 + 80);
          *(v182 + 96) = v192;

          v193 = v187;
          a5 = v242;
          a4 = v243;
          outlined copy of Text.Effect.StopCollector?(v193, v188, v189, v190);

          v263 = v182;
          v181 = v182;
        }

        v254.a = a;
        v254.b = b;
        v254.c = c;
        v254.d = d;
        v254.tx = v179;
        v254.ty = v180;
        if (!CGAffineTransformIsIdentity(&v254))
        {
          v194 = *(v181 + 24);
          v195 = *(v181 + 40);
          v254.a = a;
          v254.b = b;
          v254.c = c;
          v254.d = d;
          v254.tx = v179;
          v254.ty = v180;
          *&v262.a = v194;
          *&v262.c = v195;
          *&v262.tx = *(v181 + 56);
          CGAffineTransformConcat(&v260, &v254, &v262);
          v196 = *&v260.c;
          v197 = *&v260.tx;
          *(v181 + 24) = *&v260.a;
          *(v181 + 40) = v196;
          *(v181 + 56) = v197;
        }
      }

      if ((v252 & 0x8000000000000000) == 0)
      {
        if (*(v164 + 16) > v252)
        {
          v198 = (v164 + (v252 << 6));
          v199 = v198[2];
          v200 = v198[3];
          v201 = v198[5];
          *&v254.tx = v198[4];
          v255 = v201;
          *&v254.a = v199;
          *&v254.c = v200;
          outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v254, &v262);

LABEL_44:
          specialized Text.Effect.PathInterpolator.PathGlyph.resolve(cluster:state:mapKeys:in:)(a4, a5, &v263);
          outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v254);
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v215 = v19[1];
        *&v254.a = *v19;
        *&v254.c = v215;
        v216 = v19[3];
        *&v254.tx = v19[2];
        v255 = v216;
        Text.Effect.PathInterpolator.Interpolated.resolve(state:mapKeys:in:)(a4, a5, &v263);
        outlined destroy of Text.Effect.PathInterpolator.Interpolated(&v254);
      }

      if ((v252 & 0x8000000000000000) == 0)
      {
        if (*(*v19 + 16) > v252)
        {
          v80 = (*v19 + 112 * v252);
          v81 = v80[2];
          v82 = v80[4];
          *&v254.c = v80[3];
          *&v254.tx = v82;
          *&v254.a = v81;
          v83 = v80[5];
          v84 = v80[6];
          v85 = v80[8];
          v257 = v80[7];
          v258 = v85;
          v255 = v83;
          v256 = v84;
          outlined init with copy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v254, &v262);

          v86 = *(v26 + 208);
          if (v86)
          {
            v244 = v10;
            v88 = *(v26 + 184);
            v87 = *(v26 + 192);
            v89 = *(v26 + 200);
            v90 = *(v26 + 216);
            if (*(v90 + 16))
            {
              v91 = specialized __RawDictionaryStorage.find<A>(_:)(v248);
              if (v92)
              {
                v93 = *(*(v90 + 56) + 8 * v91);
                if ((v93 & 0x8000000000000000) == 0)
                {
                  if (v93 < *(v86 + 16))
                  {
                    v253 = *(v86 + 16 * v93 + 32);
                    outlined copy of Text.Effect.StopCollector?(v88, v87, v89, v86);
                    *&v252 = v253;

                    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v88, v87);

                    v245 = v26;
                    v230 = *(&v255 + 1);
                    a_low = LODWORD(v254.a);
                    a_high = HIDWORD(v254.a);
                    LODWORD(v250) = HIDWORD(v254.b);
                    LODWORD(v251) = LODWORD(v254.b);
                    MEMORY[0x1EEE9AC00](v94);
                    *(&v242 - 3) = v253;
                    *(&v242 - 4) = a5;
                    *(&v242 - 3) = v233;
                    *(&v242 - 2) = &v254;
                    v236 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(0, v234, v235, partial apply for closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:));

                    specialized Path.init(elements:points:)(v237, v230, v236, &v259);

                    Path.dilatedGlyphPath(with:)();
                    v252 = *&v260.a;
                    v253 = *&v260.c;
                    tx_low = LOBYTE(v260.tx);
                    outlined destroy of Path(&v259);
                    if (*(v245 + 96))
                    {
                      v228 = v246;
                      v239 = v251;
                      v240 = v250;
                    }

                    else
                    {
                      v239 = *(v245 + 88);
                      v240 = *(v245 + 92);
                      a_low = *(v245 + 80);
                      a_high = *(v245 + 84);
                      v228 = v246;
                    }

                    v241 = v253;
                    *v228 = v252;
                    *(v228 + 16) = v241;
                    *(v228 + 32) = tx_low;
                    *(v228 + 36) = a_low;
                    *(v228 + 40) = a_high;
                    *(v228 + 44) = v239;
                    *(v228 + 48) = v240;
                    goto LABEL_65;
                  }

LABEL_73:
                  __break(1u);
                }

LABEL_72:
                __break(1u);
                goto LABEL_73;
              }
            }

            outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v88, v87);

            outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v254);
            v218 = v88;
            v219 = v87;
            goto LABEL_56;
          }

LABEL_52:
          outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v254);
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (!EnumCaseMultiPayload)
  {
    v96 = v250;
    v95 = v251;
    (*(v251 + 32))(v250, v19, v253);
    v97 = *(v20 + 112);
    v98 = *(v20 + 120);
    v99 = *(v20 + 128);
    v100 = *(v20 + 136);
    v101 = *(v20 + 144);
    v102 = *(v20 + 152);
    v103 = *(v20 + 160);
    CGAffineTransformMakeTranslation(&v254, v100, v101);
    CGAffineTransformScale(&v262, &v254, v102, v103);
    v104 = v262.tx;
    v105 = v262.ty;
    v252 = *&v262.a;
    v248 = *&v262.c;
    v106 = __sincos_stret(v99);
    v254.a = v106.__cosval;
    v254.b = v106.__sinval;
    v254.c = -v106.__sinval;
    v254.d = v106.__cosval;
    v254.tx = 0.0;
    v254.ty = 0.0;
    *&v262.a = v252;
    *&v262.c = v248;
    v262.tx = v104;
    v262.ty = v105;
    CGAffineTransformConcat(&v260, &v254, &v262);
    v254 = v260;
    CGAffineTransformTranslate(&v262, &v254, -v100, -v101);
    v254 = v262;
    CGAffineTransformTranslate(&v262, &v254, v97, v98);
    v107 = v262.a;
    v108 = v262.b;
    v109 = v262.c;
    v110 = v262.d;
    v111 = v262.tx;
    v112 = v262.ty;
    v254 = v262;
    if (!CGAffineTransformIsIdentity(&v254))
    {
      v26 = v263;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v113 = swift_allocObject();
        *(v113 + 24) = 0x3FF0000000000000;
        *(v113 + 32) = 0;
        *(v113 + 40) = 0;
        *(v113 + 48) = 0x3FF0000000000000;
        *(v113 + 56) = 0;
        *(v113 + 64) = 0;
        *(v113 + 80) = 0;
        *(v113 + 88) = 0;
        *(v113 + 72) = 0x3FF0000000000000;
        *(v113 + 96) = 1;
        *(v113 + 104) = 0u;
        *(v113 + 120) = 0u;
        *(v113 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v113 + 152) = _Q1;
        *(v113 + 168) = 0x3FF0000000000000;
        *(v113 + 176) = 0;
        *(v113 + 184) = 0u;
        *(v113 + 200) = 0u;
        *(v113 + 216) = 0;
        *(v113 + 16) = *(v26 + 16);
        v115 = *(v26 + 40);
        v116 = *(v26 + 56);
        *(v113 + 24) = *(v26 + 24);
        *(v113 + 40) = v115;
        *(v113 + 56) = v116;
        *(v113 + 72) = *(v26 + 72);
        v243 = a4;
        v117 = *(v26 + 184);
        v118 = *(v26 + 192);
        v119 = v26;
        v120 = *(v26 + 200);
        v121 = *(v119 + 208);
        v122 = *(v119 + 216);
        *(v113 + 184) = v117;
        *(v113 + 192) = v118;
        *(v113 + 200) = v120;
        *(v113 + 208) = v121;
        *(v113 + 216) = v122;
        v123 = *(v119 + 96);
        *(v113 + 80) = *(v119 + 80);
        *(v113 + 96) = v123;

        v124 = v117;
        a4 = v243;
        v96 = v250;
        outlined copy of Text.Effect.StopCollector?(v124, v118, v120, v121);
        v95 = v251;

        v263 = v113;
        v26 = v113;
      }

      v254.a = v107;
      v254.b = v108;
      v254.c = v109;
      v254.d = v110;
      v254.tx = v111;
      v254.ty = v112;
      if (!CGAffineTransformIsIdentity(&v254))
      {
        v125 = *(v26 + 24);
        v126 = *(v26 + 40);
        v254.a = v107;
        v254.b = v108;
        v254.c = v109;
        v254.d = v110;
        v254.tx = v111;
        v254.ty = v112;
        *&v262.a = v125;
        *&v262.c = v126;
        *&v262.tx = *(v26 + 56);
        CGAffineTransformConcat(&v260, &v254, &v262);
        v127 = *&v260.c;
        v128 = *&v260.tx;
        *(v26 + 24) = *&v260.a;
        *(v26 + 40) = v127;
        *(v26 + 56) = v128;
      }
    }

    v129 = a4[4];
    v130 = a4[5];
    CGAffineTransformMakeTranslation(&v254, v129, v130);
    CGAffineTransformScale(&v262, &v254, a4[6], a4[7]);
    v131 = v262.tx;
    v132 = v262.ty;
    v252 = *&v262.a;
    v248 = *&v262.c;
    v133 = __sincos_stret(a4[3]);
    v254.a = v133.__cosval;
    v254.b = v133.__sinval;
    v254.c = -v133.__sinval;
    v254.d = v133.__cosval;
    v254.tx = 0.0;
    v254.ty = 0.0;
    *&v262.a = v252;
    *&v262.c = v248;
    v262.tx = v131;
    v262.ty = v132;
    CGAffineTransformConcat(&v260, &v254, &v262);
    v254 = v260;
    CGAffineTransformTranslate(&v262, &v254, -v129, -v130);
    v134 = a4[1];
    v135 = a4[2];
    v254 = v262;
    CGAffineTransformTranslate(&v262, &v254, v134, v135);
    v136 = v262.a;
    v137 = v262.b;
    v138 = v262.c;
    v139 = v262.d;
    v140 = v262.tx;
    v141 = v262.ty;
    v254 = v262;
    IsIdentity = CGAffineTransformIsIdentity(&v254);
    v143 = v249;
    if (!IsIdentity)
    {
      v26 = v263;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v144 = swift_allocObject();
        *(v144 + 24) = 0x3FF0000000000000;
        *(v144 + 32) = 0;
        *(v144 + 40) = 0;
        *(v144 + 48) = 0x3FF0000000000000;
        *(v144 + 56) = 0;
        *(v144 + 64) = 0;
        *(v144 + 80) = 0;
        *(v144 + 88) = 0;
        *(v144 + 72) = 0x3FF0000000000000;
        *(v144 + 96) = 1;
        *(v144 + 104) = 0u;
        *(v144 + 120) = 0u;
        *(v144 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v144 + 152) = _Q1;
        *(v144 + 168) = 0x3FF0000000000000;
        *(v144 + 176) = 0;
        *(v144 + 184) = 0u;
        *(v144 + 200) = 0u;
        *(v144 + 216) = 0;
        *(v144 + 16) = *(v26 + 16);
        v146 = *(v26 + 40);
        v147 = *(v26 + 56);
        *(v144 + 24) = *(v26 + 24);
        *(v144 + 40) = v146;
        *(v144 + 56) = v147;
        *(v144 + 72) = *(v26 + 72);
        v148 = *(v26 + 184);
        v149 = *(v26 + 192);
        v150 = v26;
        v151 = *(v26 + 200);
        v152 = *(v150 + 208);
        v153 = *(v150 + 216);
        *(v144 + 184) = v148;
        *(v144 + 192) = v149;
        *(v144 + 200) = v151;
        *(v144 + 208) = v152;
        *(v144 + 216) = v153;
        v154 = *(v150 + 96);
        *(v144 + 80) = *(v150 + 80);
        *(v144 + 96) = v154;

        v155 = v148;
        v143 = v249;
        v96 = v250;
        outlined copy of Text.Effect.StopCollector?(v155, v149, v151, v152);
        v95 = v251;

        v263 = v144;
        v26 = v144;
      }

      v254.a = v136;
      v254.b = v137;
      v254.c = v138;
      v254.d = v139;
      v254.tx = v140;
      v254.ty = v141;
      if (!CGAffineTransformIsIdentity(&v254))
      {
        v156 = *(v26 + 24);
        v157 = *(v26 + 40);
        v254.a = v136;
        v254.b = v137;
        v254.c = v138;
        v254.d = v139;
        v254.tx = v140;
        v254.ty = v141;
        *&v262.a = v156;
        *&v262.c = v157;
        *&v262.tx = *(v26 + 56);
        CGAffineTransformConcat(&v260, &v254, &v262);
        v158 = *&v260.c;
        v159 = *&v260.tx;
        *(v26 + 24) = *&v260.a;
        *(v26 + 40) = v158;
        *(v26 + 56) = v159;
      }
    }

    type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)();
    v161 = v143 + *(v160 + 48);
    (*(v95 + 16))(v143, v96, v253);
    v162 = *(v26 + 96);
    v163 = 0uLL;
    if ((v162 & 1) == 0)
    {
      v163 = *(v26 + 80);
    }

    *v161 = v163;
    *(v161 + 16) = v162;
    swift_storeEnumTagMultiPayload();
    Text.Effect.DrawingContext.Storage.append(_:)(v143);
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v143, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
    (*(v95 + 8))(v96, v253);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v44 = v19[1];
    *&v254.a = *v19;
    *&v254.c = v44;
    v45 = v19[3];
    *&v254.tx = v19[2];
    v255 = v45;
    v46 = *(v20 + 112);
    v47 = *(v20 + 120);
    v48 = *(v20 + 128);
    v49 = *(v20 + 136);
    v50 = *(v20 + 144);
    v51 = *(v20 + 152);
    v52 = *(v20 + 160);
    CGAffineTransformMakeTranslation(&v262, v49, v50);
    CGAffineTransformScale(&v260, &v262, v51, v52);
    v53 = v260.tx;
    v54 = v260.ty;
    v252 = *&v260.c;
    v253 = *&v260.a;
    v55 = __sincos_stret(v48);
    v262.a = v55.__cosval;
    v262.b = v55.__sinval;
    v262.c = -v55.__sinval;
    v262.d = v55.__cosval;
    v262.tx = 0.0;
    v262.ty = 0.0;
    *&v260.a = v253;
    *&v260.c = v252;
    v260.tx = v53;
    v260.ty = v54;
    CGAffineTransformConcat(&v259, &v262, &v260);
    v262 = v259;
    CGAffineTransformTranslate(&v260, &v262, -v49, -v50);
    v262 = v260;
    CGAffineTransformTranslate(&v260, &v262, v46, v47);
    v56 = v260.a;
    v57 = v260.b;
    v58 = v260.c;
    v59 = v260.d;
    v60 = v260.tx;
    v61 = v260.ty;
    v262 = v260;
    if (!CGAffineTransformIsIdentity(&v262))
    {
      v62 = v263;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v63 = swift_allocObject();
        *(v63 + 24) = 0x3FF0000000000000;
        *(v63 + 32) = 0;
        *(v63 + 40) = 0;
        *(v63 + 48) = 0x3FF0000000000000;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        *(v63 + 80) = 0;
        *(v63 + 88) = 0;
        *(v63 + 72) = 0x3FF0000000000000;
        *(v63 + 96) = 1;
        *(v63 + 104) = 0u;
        *(v63 + 120) = 0u;
        *(v63 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v63 + 152) = _Q1;
        *(v63 + 168) = 0x3FF0000000000000;
        *(v63 + 176) = 0;
        *(v63 + 184) = 0u;
        *(v63 + 200) = 0u;
        *(v63 + 216) = 0;
        *(v63 + 16) = *(v62 + 16);
        v65 = *(v62 + 40);
        v66 = *(v62 + 56);
        *(v63 + 24) = *(v62 + 24);
        *(v63 + 40) = v65;
        *(v63 + 56) = v66;
        *(v63 + 72) = *(v62 + 72);
        v67 = a4;
        v68 = *(v62 + 184);
        v69 = *(v62 + 192);
        v242 = a5;
        v70 = v62;
        v71 = *(v62 + 200);
        v72 = *(v70 + 208);
        v73 = *(v70 + 216);
        *(v63 + 184) = v68;
        *(v63 + 192) = v69;
        *(v63 + 200) = v71;
        *(v63 + 208) = v72;
        *(v63 + 216) = v73;
        v74 = *(v70 + 96);
        *(v63 + 80) = *(v70 + 80);
        *(v63 + 96) = v74;

        v75 = v68;
        a4 = v67;
        outlined copy of Text.Effect.StopCollector?(v75, v69, v71, v72);
        a5 = v242;

        v263 = v63;
        v62 = v63;
      }

      v262.a = v56;
      v262.b = v57;
      v262.c = v58;
      v262.d = v59;
      v262.tx = v60;
      v262.ty = v61;
      if (!CGAffineTransformIsIdentity(&v262))
      {
        v76 = *(v62 + 24);
        v77 = *(v62 + 40);
        v262.a = v56;
        v262.b = v57;
        v262.c = v58;
        v262.d = v59;
        v262.tx = v60;
        v262.ty = v61;
        *&v260.a = v76;
        *&v260.c = v77;
        *&v260.tx = *(v62 + 56);
        CGAffineTransformConcat(&v259, &v262, &v260);
        v78 = *&v259.c;
        v79 = *&v259.tx;
        *(v62 + 24) = *&v259.a;
        *(v62 + 40) = v78;
        *(v62 + 56) = v79;
      }
    }

    goto LABEL_44;
  }

  v202 = v19[5];
  v256 = v19[4];
  v257 = v202;
  v258 = v19[6];
  v203 = v19[1];
  *&v254.a = *v19;
  *&v254.c = v203;
  v204 = v19[3];
  *&v254.tx = v19[2];
  v255 = v204;
  v205 = *(v26 + 208);
  if (!v205)
  {
    goto LABEL_52;
  }

  v206 = a5;
  v208 = *(v26 + 184);
  v207 = *(v26 + 192);
  v209 = *(v26 + 200);
  v210 = *(v26 + 216);
  if (*(v210 + 16))
  {
    v211 = specialized __RawDictionaryStorage.find<A>(_:)(v248);
    if (v212)
    {
      v244 = v10;
      v213 = *(*(v210 + 56) + 8 * v211);
      if ((v213 & 0x8000000000000000) == 0)
      {
        v245 = v26;
        if (v213 < *(v205 + 16))
        {
          v253 = *(v205 + 16 * v213 + 32);
          outlined copy of Text.Effect.StopCollector?(v208, v207, v209, v205);

          outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v208, v207);

          MEMORY[0x1EEE9AC00](v214);
          *(&v242 - 3) = v253;
          *(&v242 - 4) = v206;
          *(&v242 - 3) = v220;
          *(&v242 - 2) = &v254;
          v223 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(0, v221, v222, closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:)partial apply);

          v224 = *(&v255 + 1);

          specialized Path.init(elements:points:)(v225, v224, v223, &v259);

          Path.dilatedGlyphPath(with:)();
          v252 = *&v260.a;
          v253 = *&v260.c;
          v226 = LOBYTE(v260.tx);
          outlined destroy of Path(&v259);
          if (*(v245 + 96))
          {
            v227 = *&v254.a;
          }

          else
          {
            v227 = *(v245 + 80);
          }

          v228 = v247;
          v229 = v253;
          *v247 = v252;
          *(v228 + 16) = v229;
          *(v228 + 32) = v226;
          *(v228 + 36) = v227;
LABEL_65:
          swift_storeEnumTagMultiPayload();
          *&v262.a = *&v260.a;
          *&v262.c = *&v260.c;
          LOBYTE(v262.tx) = LOBYTE(v260.tx);
          outlined init with copy of Path.Storage(&v262, &v261);
          Text.Effect.DrawingContext.Storage.append(_:)(v228);
          outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v254);
          outlined destroy of Path(&v260);
          outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v228, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
        }

        goto LABEL_71;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }
  }

  outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v208, v207);

  outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v254);
  v218 = v208;
  v219 = v207;
LABEL_56:
  outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v218, v219);
}

uint64_t Text.Effect.PathInterpolator.Cluster.width(for:)(unint64_t a1)
{
  result = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(*(v1 + *(result + 24)) + 16);
  if (v4 <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 + 1 >= v4)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v2[1] + 16);
  v5 = __OFADD__(*v2, v4);
  v6 = *v2 + v4;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= *v2 && v3 < v6)
  {
    *a2 = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v1[1] + 16);
  v4 = __OFADD__(*v1, v3);
  v5 = *v1 + v3;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= *v1 && v2 < v5)
  {
    *result = v2;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance Text.Effect.PathInterpolator.Fragment(void *a1@<X8>)
{
  v2 = *(v1[1] + 16);
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1 + v2;
  }
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.PathInterpolator.Fragment(void (**a1)(uint64_t *a1), void *a2))(uint64_t *a1)
{
  v5 = *(type metadata accessor for Text.Effect.PathInterpolator.Cluster(0) - 8);
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2 - *v2;
  if (__OFSUB__(*a2, *v2))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v2[1];
  if (v7 < *(v8 + 16))
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    return protocol witness for Collection.subscript.read in conformance Text.Effect.PathInterpolator.Fragment;
  }

LABEL_10:
  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(*a1, type metadata accessor for Text.Effect.PathInterpolator.Cluster);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance Text.Effect.PathInterpolator.Fragment@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = v2[1];
  v6 = *(result + 16);
  v7 = *v2 + v6;
  if (__OFADD__(*v2, v6))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = *a1;
  if (*a1 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = a1[1];
  if (v7 >= v9)
  {
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v5;
    a2[3] = result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance Text.Effect.PathInterpolator.Fragment(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1[1] + 16);
  v4 = __OFADD__(*v1, v3);
  v5 = *v1 + v3;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 >= v2)
  {
    *a1 = v2;
    a1[1] = v5;
    return;
  }

  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance Text.Effect.PathInterpolator.Fragment()
{
  v1 = *v0;
  v2 = *(v0[1] + 16);
  v3 = __OFADD__(*v0, v2);
  v4 = *v0 + v2;
  if (v3)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v4, v1))
  {
    return v4 == v1;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v3[1] + 16);
  v6 = __OFADD__(*v3, v5);
  v7 = *v3 + v5;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= *v3 && v7 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *result, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2[1] + 16);
  v5 = __OFADD__(*v2, v4);
  v6 = *v2 + v4;
  if (v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *result;
  v8 = *a2;
  if (v6 < *a2 || v8 < v3 || v7 < v3 || v6 < v7)
  {
    goto LABEL_15;
  }

  result = (v8 - v7);
  if (__OFSUB__(v8, v7))
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2[1] + 16);
  v4 = *v2 + v3;
  if (__OFADD__(*v2, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    if (*result >= *v2 && v5 < v4)
    {
      *a2 = v5 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *result)
{
  v2 = *(v1[1] + 16);
  v3 = *v1 + v2;
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    if (*result >= *v1 && v4 < v3)
    {
      *result = v4 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v2;
}

uint64_t protocol witness for Collection.count.getter in conformance Text.Effect.PathInterpolator.Fragment()
{
  v1 = *v0;
  v2 = *(v0[1] + 16);
  v3 = __OFADD__(*v0, v2);
  v4 = *v0 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v4 - v1;
  if (v4 < v1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(v4, v1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

int64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.PathInterpolator.Fragment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1]);

  return v1;
}

uint64_t Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  v585 = a4;
  v530 = a3;
  v521 = a2;
  v9 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  v538 = *(v9 - 8);
  v539 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v543 = &v506 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v528 = &v506 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v519 = &v506 - v14;
  v579 = type metadata accessor for CGPathFillRule();
  v613 = *(v579 - 8);
  MEMORY[0x1EEE9AC00](v579);
  v578 = &v506 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v599 = *(v600 - 8);
  MEMORY[0x1EEE9AC00](v600);
  v17 = &v506 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v506 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v525 = (&v506 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v524 = (&v506 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v514 = (&v506 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v515 = (&v506 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v526 = &v506 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v532 = &v506 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v520 = (&v506 - v34);
  v536 = type metadata accessor for Text.Layout.Run();
  v612 = *(v536 - 8);
  MEMORY[0x1EEE9AC00](v536);
  v531 = &v506 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v584 = &v506 - v37;
  v607 = type metadata accessor for Text.Layout.RunSlice();
  v560 = *(v607 - 8);
  MEMORY[0x1EEE9AC00](v607);
  v592 = &v506 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v518 = &v506 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v594 = &v506 - v42;
  v43 = type metadata accessor for Text.Layout.Cluster();
  v549 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v544 = &v506 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v529 = &v506 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v610 = &v506 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v603 = &v506 - v50;
  v617 = type metadata accessor for Text.Layout.Line();
  v615 = *(v617 - 8);
  v51 = MEMORY[0x1EEE9AC00](v617);
  v616 = &v506 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a1;
  v53 = *(a1 + 8);
  v565 = *(a1 + 16);
  v566 = v53;
  LODWORD(v609) = *(a1 + 24);
  v51.n128_u64[0] = *(a1 + 32);
  v589 = v51;
  *&v630 = specialized _copyCollectionToContiguousArray<A>(_:)(a5);
  specialized MutableCollection<>.sort(by:)(&v630);
  v55 = 0.0;
  v56 = v630;
  v622 = *(v630 + 16);
  if (!v622)
  {
LABEL_455:
    __break(1u);
LABEL_456:
    __break(1u);
LABEL_457:
    __break(1u);
LABEL_458:
    __break(1u);
LABEL_459:
    __break(1u);
    goto LABEL_460;
  }

  v57 = 0;
  if (*(v630 + 32) != a6)
  {
    while (v622 - 1 != v57)
    {
      v58 = *(v630 + 40 + 8 * v57++);
      if (v58 == a6)
      {
        goto LABEL_5;
      }
    }

LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    __break(1u);
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
    goto LABEL_438;
  }

LABEL_5:
  v512 = 0;
  v597 = v57;
  v593 = v20;
  v595 = v17;
  *&v630 = MEMORY[0x1E69E7CC0];
  v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v622, 0));
  v59 = 0;
  v608 = v630;
  v602 = v43;
  v596 = v56;
  v618 = a5;
  do
  {
    if (v59 >= *(v56 + 16))
    {
      goto LABEL_404;
    }

    if (!*(a5 + 16))
    {
      goto LABEL_405;
    }

    v55 = COERCE_DOUBLE(specialized __RawDictionaryStorage.find<A>(_:)(*(v56 + 8 * v59 + 32)));
    if ((v60 & 1) == 0)
    {
      goto LABEL_406;
    }

    v61 = (*(a5 + 56) + 56 * *&v55);
    v62 = *v61;
    v63 = *(v61 + 1);
    v64 = *(v61 + 2);
    v65 = *(v61 + 3);
    v66 = *(v61 + 5);
    v621 = *(v61 + 4);
    v620 = v66;
    v619 = v61[6];
    v67 = v608;
    *&v630 = v608;
    v69 = *(v608 + 16);
    v68 = *(v608 + 24);

    v55 = COERCE_DOUBLE();
    if (v69 >= v68 >> 1)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1));
      v67 = v630;
    }

    ++v59;
    *(v67 + 16) = v69 + 1;
    v608 = v67;
    v70 = (v67 + 32 + 56 * v69);
    *v70 = v62;
    *(v70 + 1) = v63;
    *(v70 + 2) = v64;
    *(v70 + 3) = v65;
    v71 = v620;
    *(v70 + 4) = v621;
    *(v70 + 5) = v71;
    v70[6] = v619;
    v56 = v596;
    a5 = v618;
  }

  while (v622 != v59);
  v522 = v67 + 32;
  *&v630 = MEMORY[0x1E69E7CC0];
  v555 = v69 + 1;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69 + 1, 0);
  v72 = v630;
  v620 = v69;
  v73 = v69 + 1;
  v74 = 56;
  v75 = v608;
  do
  {
    v76 = *(*(v75 + v74) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    *&v630 = v72;
    v78 = *(v72 + 16);
    v77 = *(v72 + 24);
    v55 = COERCE_DOUBLE();
    if (v78 >= v77 >> 1)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1));
      v72 = v630;
    }

    *(v72 + 16) = v78 + 1;
    v79 = v72 + 32;
    *(v72 + 32 + 8 * v78) = v76;
    v74 += 56;
    --v73;
  }

  while (v73);
  if (v597 > v78)
  {
    goto LABEL_458;
  }

  v80 = *(*(v79 + 8 * v597) + 16);
  v81 = v78 + 1;
  v82 = 32;
  v83 = v620;
  while (v81)
  {
    v84 = *(*(v72 + v82) + 16);
    v82 += 8;
    --v81;
    if (v84 != v80)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
    }
  }

  v548 = v80;
  v556 = v79;
  v542 = v72;
  *&v630 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)(v555);
  v621 = *(v615 + 16);
  v85 = (v615 + 8);
  v86 = v83 + 1;
  v87 = (v75 + 56);
  do
  {
    v88 = v616;
    v89 = v617;
    (v621)(v616, *v87 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v617);

    Text.Layout.Line.origin.getter();
    v91 = v90;
    (*v85)(v88, v89);

    v92 = v630;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 16) + 1, 1);
      v92 = v630;
    }

    v94 = *(v92 + 16);
    v93 = *(v92 + 24);
    v95 = v622;
    if (v94 >= v93 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
      v92 = v630;
    }

    *(v92 + 16) = v94 + 1;
    *(v92 + 32 + 8 * v94) = v91;
    v87 += 7;
    --v86;
  }

  while (v86);
  if (!v548)
  {
    v577 = v92;

    v502 = 0;
    v564 = MEMORY[0x1E69E7CC0];
    v503 = v608;
    goto LABEL_394;
  }

  v546 = v92 + 32;
  v527 = 0;
  v516 = 0;
  v517 = 0;
  v96 = 0;
  v537 = (v522 + 56 * v597);
  v617 = v549 + 16;
  v614 = (v549 + 8);
  v606 = (v560 + 16);
  v545 = -v589.n128_f64[0];
  v554 = v95 - 1;
  v535 = (v612 + 8);
  v590 = (v560 + 32);
  v547 = (v560 + 8);
  v510 = v521 + 32;
  v523 = v585 & 6;
  v553 = *MEMORY[0x1E695EEB8];
  v551 = (v613 + 8);
  v552 = (v613 + 104);
  v509 = 40 * v597;
  v540 = v620 + 1;
  v550 = (v608 + 32);
  v533 = (v542 + 32);
  v577 = v92;
  v620 = v92 + 32;
  v564 = MEMORY[0x1E69E7CC0];
  v97 = v602;
LABEL_31:
  v558 = v96 + 1;
  v625 = MEMORY[0x1E69E7CC0];
  v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v555));
  v100 = v550;
  v101 = v540;
  do
  {
    v102 = *v100;
    v103 = v100[1];
    v104 = v100[2];
    v670 = *(v100 + 6);
    v669[1] = v103;
    v669[2] = v104;
    v669[0] = v102;
    v105 = v96 + v670;
    if (__OFADD__(v96, v670))
    {
      goto LABEL_398;
    }

    if (__OFADD__(v105, 1))
    {
      goto LABEL_399;
    }

    if (v105 + 1 < v105)
    {
      goto LABEL_400;
    }

    outlined init with copy of Text.Effect.BaseFragment(v669, &v624);
    Text.Effect.BaseFragment.typographicBounds(for:)(v105, v105 + 1, v626);
    outlined destroy of Text.Effect.BaseFragment(v669);
    v106 = v626[2];
    v107 = v625;
    v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
    if ((LOBYTE(v55) & 1) == 0)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1));
      v107 = v625;
    }

    v109 = v107[2];
    v108 = v107[3];
    if (v109 >= v108 >> 1)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1));
      v107 = v625;
    }

    v107[2] = v109 + 1;
    v107[v109 + 4] = v106;
    v100 = (v100 + 56);
    --v101;
  }

  while (v101);
  v557 = v107;
  v110 = v597;
  v111 = *(v556 + 8 * v597);
  if (v96 >= *(v111 + 16))
  {
    goto LABEL_450;
  }

  v613 = (*(v549 + 80) + 32) & ~*(v549 + 80);
  v112 = *(v549 + 16);
  v612 = *(v549 + 72) * v96;
  v113 = v603;
  v616 = v112;
  v55 = COERCE_DOUBLE((v112)(v603, v111 + v613 + v612, v97));
  if (v110 >= *(v608 + 16))
  {
    goto LABEL_451;
  }

  v114 = *v537;
  v115 = v537[1];
  v116 = v537[2];
  v668 = *(v537 + 6);
  v667[1] = v115;
  v667[2] = v116;
  v667[0] = v114;
  outlined init with copy of Text.Effect.BaseFragment(v667, &v624);
  v568 = Text.Effect.BaseFragment.glyphIndices(for:)(v113);
  outlined destroy of Text.Effect.BaseFragment(v667);
  v117 = (v585 & 1) == 0 || Text.Layout.Cluster.stopKey.getter() == 2;
  v118 = v622;
  if ((v585 & 2) == 0 && v117)
  {

    (v616)(v544, v603, v97);
    lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
    v119 = dispatch thunk of Collection.count.getter();
    if (v119)
    {
      v120 = v119;
      v625 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)(v119);
      v55 = COERCE_DOUBLE(dispatch thunk of Collection.startIndex.getter());
      v121 = v595;
      if (v120 < 0)
      {
        goto LABEL_459;
      }

      do
      {
        v476 = dispatch thunk of Collection.subscript.read();
        (*v606)(v121);
        v476(&v624, 0);
        swift_storeEnumTagMultiPayload();
        v155 = v625;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v155[2] + 1, 1);
          v155 = v625;
        }

        v478 = v155[2];
        v477 = v155[3];
        if (v478 >= v477 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v477 > 1, v478 + 1, 1);
          v155 = v625;
        }

        v155[2] = v478 + 1;
        v121 = v595;
        outlined init with take of Text.Effect.ResolvedDrawing.Operation(v595, v155 + ((*(v599 + 80) + 32) & ~*(v599 + 80)) + *(v599 + 72) * v478, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
        dispatch thunk of Collection.formIndex(after:)();
        --v120;
      }

      while (v120);
    }

    else
    {
      v155 = MEMORY[0x1E69E7CC0];
    }

    v480 = v543;
    v479 = v544;
    (v616)(v543, v544, v97);
    v481 = v539;
    *&v480[*(v539 + 20)] = v155;
    Text.Layout.Cluster.xrange.getter();
    v483 = v482;
    v485 = v484;
    v486 = *v614;
    (*v614)(v479, v97);
    v487 = &v480[*(v481 + 28)];
    *v487 = v483;
    *(v487 + 1) = v485;
    *&v480[*(v481 + 24)] = v557;
    v472 = v564;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v472[2] + 1, 1, v472);
    }

    v474 = v472[2];
    v488 = v472[3];
    v475 = v474 + 1;
    if (v474 >= v488 >> 1)
    {
      v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v488 > 1, v474 + 1, 1, v472);
    }

    v486();
    v98 = v543;
    goto LABEL_30;
  }

  v122 = *(v542 + 16);
  if (v122)
  {
    *&v624.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v122);
    v123 = v533;
    v124 = v122;
    do
    {
      v125 = *v123;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v96, 1, *v123);
      v126 = v125 + v613 + v612;
      v127 = v610;
      (v616)(v610, v126, v97);
      v128 = Text.Layout.Cluster.paths.getter();
      (*v614)(v127, v97);
      a = v624.a;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&a + 16) + 1, 1);
        a = v624.a;
      }

      v131 = *(*&a + 16);
      v130 = *(*&a + 24);
      if (v131 >= v130 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1);
        a = v624.a;
      }

      *(*&a + 16) = v131 + 1;
      *(*&a + 8 * v131 + 32) = v128;
      ++v123;
      --v124;
    }

    while (v124);
    v619 = a;
    v118 = v622;
  }

  else
  {
    v619 = MEMORY[0x1E69E7CC0];
  }

  v132 = *(v556 + 8 * v597);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v96, 1, v132);
  v133 = v132 + v613 + v612;
  v134 = v610;
  (v616)(v610, v133, v97);
  v575 = Text.Layout.Cluster.glyphSlices.getter();
  v598 = *v614;
  (v598)(v134, v97);
  v135 = *(v608 + 16);
  if (v135)
  {
    v625 = MEMORY[0x1E69E7CC0];
    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v135));
    v136 = v550;
    while (1)
    {
      v137 = *v136;
      v138 = v136[1];
      v139 = v136[2];
      v666 = *(v136 + 6);
      v665[1] = v138;
      v665[2] = v139;
      v665[0] = v137;
      v140 = v96 + v666;
      if (__OFADD__(v96, v666))
      {
        break;
      }

      if (__OFADD__(v140, 1))
      {
        goto LABEL_413;
      }

      if (v140 + 1 < v140)
      {
        goto LABEL_414;
      }

      outlined init with copy of Text.Effect.BaseFragment(v665, &v624);
      Text.Effect.BaseFragment.typographicBounds(for:)(v140, v140 + 1, v627);
      outlined destroy of Text.Effect.BaseFragment(v665);
      v141 = v625;
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if (LOBYTE(v55))
      {
        v142 = v619;
        v143 = v141;
      }

      else
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1));
        v143 = v625;
        v142 = v619;
      }

      v145 = v143[2];
      v144 = v143[3];
      if (v145 >= v144 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1));
        v142 = v619;
        v143 = v625;
      }

      v146 = v627[0];
      v143[2] = v145 + 1;
      v143[v145 + 4] = v146;
      v136 = (v136 + 56);
      --v135;
      v118 = v622;
      if (!v135)
      {
        goto LABEL_72;
      }
    }

LABEL_412:
    __break(1u);
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
LABEL_415:
    __break(1u);
LABEL_416:
    __break(1u);
LABEL_417:
    __break(1u);
LABEL_418:
    __break(1u);
LABEL_419:
    __break(1u);
LABEL_420:
    __break(1u);
LABEL_421:
    __break(1u);
LABEL_422:
    __break(1u);
LABEL_423:
    __break(1u);
LABEL_424:
    __break(1u);
    goto LABEL_425;
  }

  v143 = MEMORY[0x1E69E7CC0];
  v142 = v619;
LABEL_72:
  v567 = v143;
  if (v122)
  {
    *&v624.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v122);
    v147 = v533;
    do
    {
      v148 = *v147;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v96, 1, *v147);
      v149 = v148 + v613 + v612;
      v150 = v610;
      (v616)(v610, v149, v97);
      v151 = Text.Layout.Cluster.positions.getter();
      (v598)(v150, v97);
      v152 = v624.a;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v55 = v152;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v152 + 16) + 1, 1);
        v55 = v624.a;
      }

      v154 = *(*&v55 + 16);
      v153 = *(*&v55 + 24);
      if (v154 >= v153 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v154 + 1, 1);
        v55 = v624.a;
      }

      *(*&v55 + 16) = v154 + 1;
      *(*&v55 + 8 * v154 + 32) = v151;
      ++v147;
      --v122;
    }

    while (v122);
    v118 = v622;
    v142 = v619;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v156 = *(v575 + 16);
  v157 = *(*&v142 + 16);
  v611 = *&v142 + 32;
  v158 = 32;
  while (v157)
  {
    v159 = *(*(*&v142 + v158) + 16);
    v158 += 8;
    --v157;
    if (v159 != v156)
    {

      (v616)(v529, v603, v97);
      lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
      v160 = dispatch thunk of Collection.count.getter();
      if (v160)
      {
        v161 = v160;
        v625 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)(v160);
        v55 = COERCE_DOUBLE(dispatch thunk of Collection.startIndex.getter());
        v162 = v593;
        if (v161 < 0)
        {
          goto LABEL_467;
        }

        do
        {
          v489 = dispatch thunk of Collection.subscript.read();
          (*v606)(v162);
          v489(&v624, 0);
          swift_storeEnumTagMultiPayload();
          v462 = v625;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v462[2] + 1, 1);
            v462 = v625;
          }

          v491 = v462[2];
          v490 = v462[3];
          if (v491 >= v490 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v490 > 1, v491 + 1, 1);
            v462 = v625;
          }

          v462[2] = v491 + 1;
          v162 = v593;
          outlined init with take of Text.Effect.ResolvedDrawing.Operation(v593, v462 + ((*(v599 + 80) + 32) & ~*(v599 + 80)) + *(v599 + 72) * v491, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
          dispatch thunk of Collection.formIndex(after:)();
          --v161;
        }

        while (v161);
      }

      else
      {
        v462 = MEMORY[0x1E69E7CC0];
      }

      v493 = v528;
      v492 = v529;
      (v616)(v528, v529, v97);
      v494 = v539;
      *&v493[*(v539 + 20)] = v462;
      Text.Layout.Cluster.xrange.getter();
      v496 = v495;
      v498 = v497;
      (v598)(v492, v97);
      v499 = &v493[*(v494 + 28)];
      *v499 = v496;
      *(v499 + 1) = v498;
      *&v493[*(v494 + 24)] = v557;
      v472 = v564;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v472[2] + 1, 1, v472);
      }

      v474 = v472[2];
      v500 = v472[3];
      v475 = v474 + 1;
      if (v474 >= v500 >> 1)
      {
        v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v500 > 1, v474 + 1, 1, v472);
      }

      v598();
      v98 = v528;
      goto LABEL_30;
    }
  }

  v576 = v55;
  if (!v156)
  {

    v461 = MEMORY[0x1E69E7CC0];
    goto LABEL_369;
  }

  if (one-time initialization token for black != -1)
  {
    v501 = v156;
    swift_once();
    v156 = v501;
    v55 = v576;
  }

  v163 = 0;
  v591 = (*(v560 + 80) + 32) & ~*(v560 + 80);
  v559 = v575 + v591;
  v570 = *&v55 + 32;
  v621 = (v567 + 4);
  v164 = v609 ^ 1;
  v511 = v568 + 32;
  v588 = MEMORY[0x1E69E7CC0];
  v618 = v96;
  v541 = v156;
  while (1)
  {
    if (v163 == v156)
    {
      goto LABEL_441;
    }

    v167 = v163;
    if (v163 >= *(v575 + 16))
    {
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      __break(1u);
LABEL_451:
      __break(1u);
LABEL_452:
      __break(1u);
LABEL_453:
      __break(1u);
LABEL_454:
      __break(1u);
      goto LABEL_455;
    }

    v563 = static Color.Resolved.black;
    v601 = DWORD1(static Color.Resolved.black);
    v168 = HIDWORD(static Color.Resolved.black);
    v562 = DWORD2(static Color.Resolved.black);
    v604.f64[0] = *(v560 + 72);
    v169 = *(v560 + 16);
    v574 = *&v604.f64[0] * v163;
    *&v605.f64[0] = v169;
    v169(v594, v559 + *&v604.f64[0] * v163, v607);
    if (one-time initialization token for kitForegroundColor != -1)
    {
      swift_once();
    }

    Text.Layout.RunSlice.subscript.getter();
    v615 = v167;
    if (*&v624.d)
    {
      type metadata accessor for NSObject();
      v55 = COERCE_DOUBLE(swift_dynamicCast());
      v171 = v619;
      if (LOBYTE(v55))
      {
        v172 = v625;
        v173 = CGColorForCoreColor(v625, v170);
        if (v173)
        {
          v174 = v173;
          v175 = v527;
          if (v527 && (type metadata accessor for CGColorRef(0), lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef), v176 = v175, v177 = static _CFObject.== infix(_:_:)(), v176, v118 = v622, (v177 & 1) != 0))
          {

            v601 = HIDWORD(v517);
            v562 = v516;
            v563 = v517;
            v168 = HIDWORD(v516);
            v171 = v619;
          }

          else
          {
            v178 = v174;
            v179 = Color.Resolved.init(failableCGColor:)(v178);
            v609 = v178;
            if (v181)
            {
              if (one-time initialization token for clear != -1)
              {
                swift_once();
              }

              v183 = static Color.Resolved.clear;
              v182 = *algn_1EAEE982C;
              v184 = dword_1EAEE9830;
              v561 = dword_1EAEE9834;

              v185 = v561;
            }

            else
            {
              v183 = v179;
              v184 = v180;

              v182 = HIDWORD(v183);
              v185 = HIDWORD(v184);
            }

            v562 = v184;
            v563 = v183;
            v601 = v182;
            v527 = v174;
            v516 = v184 | (v185 << 32);
            v517 = v183 | (v182 << 32);
            v171 = v619;
            v168 = v185;
          }

          v167 = v615;
        }

        else
        {
        }
      }
    }

    else
    {
      v55 = COERCE_DOUBLE(_sypSgWOhTm_2(&v624, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8));
      v171 = v619;
    }

    if (v597 >= *(*&v171 + 16))
    {
      goto LABEL_443;
    }

    v561 = v168;
    v186 = *(v611 + 8 * v597);
    if (v167 >= *(v186 + 16))
    {
      goto LABEL_444;
    }

    if (v597 >= *(*&v576 + 16))
    {
      goto LABEL_445;
    }

    v187 = *(v570 + 8 * v597);
    if (v167 >= *(v187 + 16))
    {
      goto LABEL_446;
    }

    if (v597 >= *(v577 + 16))
    {
      goto LABEL_447;
    }

    v609 = 40 * v167;
    v188 = v186 + 40 * v167;
    v189 = *(v188 + 32);
    v190 = *(v188 + 40);
    v191 = *(v188 + 48);
    v192 = *(v188 + 56);
    v193 = *(v188 + 64);
    v586 = *(v187 + 16 * v167 + 32);
    v194 = *(v546 + 8 * v597);
    v580 = v189;
    v581 = v190;
    v582 = v191;
    v583 = v192;
    v587 = v193;
    outlined copy of Path?(v189, v190, v191, v192, v193);
    Text.Layout.RunSlice.pointSize.getter();
    if ((v164 & (v54 == v195)) != 1)
    {
      v54 = v195;
      CGAffineTransformMakeScale(&v624, v589.n128_f64[0] * v195, -(v589.n128_f64[0] * v195));
      RBShapeGetFontQuantizationLevel();
      v565 = v197;
      v566 = v196;
    }

    v624.b = 0.0;
    v624.c = 0.0;
    *&v624.a = v589.n128_u64[0];
    v624.d = v545;
    *&v624.tx = vmulq_n_f64(v586, v589.n128_f64[0]);
    v55 = COERCE_DOUBLE(RBShapeGetPredictedFontQuantizationError());
    v200 = v570;
    v201 = *(v570 + 8 * v597);
    if (v167 >= *(v201 + 16))
    {
      goto LABEL_448;
    }

    v202 = v567;
    if (v597 >= v567[2])
    {
      goto LABEL_449;
    }

    v569 = v167 + 1;
    v203 = v586.f64[0] + v198 / v589.n128_f64[0];
    v204 = v194 + v199 / v589.n128_f64[0];
    v205 = *(v201 + 16 * v167 + 32) - v621[v597];
    *&v624.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v118);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v202);
    v206 = v554;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v554, 1, v202);
    v207 = v577;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v577);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v206, 1, v207);
    v208 = v576;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, *&v576);
    v55 = COERCE_DOUBLE(specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v206, 1, *&v208));
    v209 = 0;
    do
    {
      v210 = *(v200 + 8 * v209);
      if (v167 >= *(v210 + 16))
      {
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
        goto LABEL_412;
      }

      v211 = *(v620 + 8 * v209);
      v212 = v621[v209];
      v213 = v210 + 16 * v167;
      v214 = *(v213 + 32);
      v215 = *(v213 + 40);
      v216 = v624.a;
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if ((LOBYTE(v55) & 1) == 0)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v216 + 16) + 1, 1));
        v216 = v624.a;
      }

      v218 = *(*&v216 + 16);
      v217 = *(*&v216 + 24);
      if (v218 >= v217 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v217 > 1), v218 + 1, 1));
        v216 = v624.a;
      }

      ++v209;
      *(*&v216 + 16) = v218 + 1;
      v219 = (*&v216 + 32 + 16 * v218);
      *v219 = v214 - v212 - v205;
      v219[1] = -(v215 - v211);
    }

    while (v118 != v209);
    v586.f64[0] = v216;
    if (v118 == 1)
    {
      break;
    }

    if (v587 != 255)
    {
      v534 = *&v216 + 32;
      v660 = v580;
      v661 = v581;
      v662 = v582;
      v663 = v583;
      v664 = v587;
      v55 = COERCE_DOUBLE(outlined copy of Path.Storage(v580, v581, v582, v583, v587));
      v220 = 0;
      v221 = v597;
      while (v118 != v220)
      {
        if (v221 != v220)
        {
          if (v220 >= *(*&v619 + 16))
          {
            goto LABEL_428;
          }

          v222 = *(v611 + 8 * v220);
          if (v167 >= *(v222 + 16))
          {
            goto LABEL_429;
          }

          v223 = (v222 + v609);
          v224 = v223[64];
          if (v224 == 255 || (v226 = *(v223 + 6), v225 = *(v223 + 7), v228 = *(v223 + 4), v227 = *(v223 + 5), v655 = v228, v656 = v227, v657 = v226, v658 = v225, v659 = v224, outlined copy of Path.Storage(v228, v227, v226, v225, v224), v229 = Path.canMix(with:)(), v230 = v228, v167 = v615, v55 = COERCE_DOUBLE(outlined consume of Path?(v230, v227, v226, v225, v224)), v221 = v597, (v229 & 1) == 0))
          {
            outlined consume of Path?(v580, v581, v582, v583, v587);
            v231 = v584;
            v97 = v602;
            if ((v585 & 8) != 0)
            {
              goto LABEL_219;
            }

            goto LABEL_222;
          }
        }

        if (v118 == ++v220)
        {
          outlined consume of Path?(v580, v581, v582, v583, v587);
          v97 = v602;
          goto LABEL_159;
        }
      }

      goto LABEL_415;
    }

    v236 = 0;
    do
    {
      if (v118 == v236)
      {
        goto LABEL_420;
      }

      if (v597 != v236)
      {
        if (v236 >= *(*&v619 + 16))
        {
          goto LABEL_430;
        }

        v237 = *(v611 + 8 * v236);
        if (v167 >= *(v237 + 16))
        {
          goto LABEL_431;
        }

        v231 = v584;
        if (*(v237 + v609 + 64) != 255)
        {
          if ((v585 & 8) != 0)
          {
            goto LABEL_219;
          }

LABEL_222:

          (*&v605.f64[0])(v532, v559 + v574, v607);
          swift_storeEnumTagMultiPayload();
          v294 = v588;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v294 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v294[2] + 1, 1, v294);
          }

          v234 = v294[2];
          v295 = v294[3];
          v588 = v294;
          v235 = v234 + 1;
          if (v234 >= v295 >> 1)
          {
            v588 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v295 > 1, v234 + 1, 1, v588);
          }

          outlined consume of Path?(v580, v581, v582, v583, v587);
          (*v547)(v594, v607);
          v165 = v532;
          goto LABEL_94;
        }
      }

      ++v236;
    }

    while (v118 != v236);
    outlined copy of Path?(v580, v581, v582, v583, 0xFFu);
    v231 = v584;
    if ((v585 & 8) == 0)
    {
      goto LABEL_222;
    }

LABEL_219:
    Text.Layout.RunSlice.run.getter();
    v291 = Text.Layout.Run.font.getter();
    if (v291)
    {
      v292 = v291;
      v293 = CTFontCopyVariation(v291);

      (*v535)(v231, v536);
      if (v293)
      {

        goto LABEL_222;
      }
    }

    else
    {
      (*v535)(v231, v536);
    }

    *&v624.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v118);
    v296 = v542;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v542);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v554, 1, v296);
    v297 = v591 + v574;
    v298 = v533;
    v299 = v118;
    v300 = v607;
    v301 = v592;
    do
    {
      v302 = *v298;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v96, 1, *v298);
      v303 = v610;
      (v616)(v610, v302 + v613 + v612, v97);
      v304 = Text.Layout.Cluster.glyphSlices.getter();
      (v598)(v303, v97);
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v615, 1, v304);
      (*&v605.f64[0])(v301, v304 + v297, v300);

      v305 = v624.a;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v305 + 16) + 1, 1);
        v305 = v624.a;
      }

      v307 = *(*&v305 + 16);
      v306 = *(*&v305 + 24);
      v308 = v592;
      if (v307 >= v306 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v306 > 1, v307 + 1, 1);
        v308 = v592;
        v305 = v624.a;
      }

      *(*&v305 + 16) = v307 + 1;
      v309 = *&v305 + v591;
      v310 = *&v305 + v591 + v307 * *&v604.f64[0];
      v301 = v308;
      v300 = v607;
      v55 = COERCE_DOUBLE((*v590)(v310, v308, v607));
      v624.a = v305;
      ++v298;
      --v299;
    }

    while (v299);
    if (v597 >= *(*&v305 + 16))
    {
      goto LABEL_468;
    }

    v311 = v309 + *&v604.f64[0] * v597;
    v312 = v518;
    v313 = v607;
    (*&v605.f64[0])(v518, v311, v607);
    Text.Layout.RunSlice.quantizedImageBounds.getter();
    v315 = v314;
    v317 = v316;
    v319 = v318;
    v321 = v320;
    v322 = *v547;
    (*v547)(v312, v313);
    specialized Text.Effect.PathInterpolator.Interpolated.init(position:slices:relativePositions:bounds:displayScale:)(*&v305, *&v586.f64[0], v628, v203, v204, v315, v317, v319, v321, v589.n128_f64[0]);
    v323 = v628[1];
    v324 = v520;
    *v520 = v628[0];
    v324[1] = v323;
    v325 = v628[3];
    v324[2] = v628[2];
    v324[3] = v325;
    swift_storeEnumTagMultiPayload();
    v326 = v588;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v326 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v326[2] + 1, 1, v326);
    }

    v118 = v622;
    v234 = v326[2];
    v327 = v326[3];
    v588 = v326;
    v235 = v234 + 1;
    if (v234 >= v327 >> 1)
    {
      v588 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v327 > 1, v234 + 1, 1, v588);
    }

    outlined consume of Path?(v580, v581, v582, v583, v587);
    (v322)(v594, v607);
    v165 = v520;
LABEL_94:
    v166 = v588;
    v588[2] = v235;
    v55 = COERCE_DOUBLE(outlined init with take of Text.Effect.ResolvedDrawing.Operation(v165, v166 + ((*(v599 + 80) + 32) & ~*(v599 + 80)) + *(v599 + 72) * v234, type metadata accessor for Text.Effect.PathInterpolator.Glyph));
    v164 = 1;
    v156 = v541;
    v163 = v569;
    if (v569 == v541)
    {

      LODWORD(v609) = 0;
      v461 = v588;
LABEL_369:

      v463 = v610;
      v464 = v616;
      (v616)(v610, v603, v97);
      v465 = v519;
      v464(v519, v463, v97);
      v466 = v539;
      *&v465[*(v539 + 20)] = v461;
      Text.Layout.Cluster.xrange.getter();
      v468 = v467;
      v470 = v469;
      (v598)(v463, v97);
      v471 = &v465[*(v466 + 28)];
      *v471 = v468;
      *(v471 + 1) = v470;
      *&v465[*(v466 + 24)] = v557;
      v472 = v564;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v472[2] + 1, 1, v472);
      }

      v474 = v472[2];
      v473 = v472[3];
      v475 = v474 + 1;
      if (v474 >= v473 >> 1)
      {
        v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v473 > 1, v474 + 1, 1, v472);
      }

      v598();
      v98 = v519;
LABEL_30:
      v472[2] = v475;
      v99 = (*(v538 + 80) + 32) & ~*(v538 + 80);
      v564 = v472;
      outlined init with take of Text.Effect.ResolvedDrawing.Operation(v98, v472 + v99 + *(v538 + 72) * v474, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
      v96 = v558;
      if (v558 != v548)
      {
        goto LABEL_31;
      }

      v503 = v608;
      v502 = v527;
LABEL_394:
      v55 = COERCE_DOUBLE();
      if (v597 < *(v503 + 16))
      {
        v504 = *(v522 + 56 * v597 + 48);

        return v504;
      }

LABEL_466:
      __break(1u);
LABEL_467:
      __break(1u);
LABEL_468:
      __break(1u);
LABEL_469:
      __break(1u);
      goto LABEL_470;
    }
  }

  if (v587 == 255)
  {

    (*&v605.f64[0])(v526, v559 + v574, v607);
    swift_storeEnumTagMultiPayload();
    v232 = v588;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v232[2] + 1, 1, v232);
    }

    v234 = v232[2];
    v233 = v232[3];
    v588 = v232;
    v235 = v234 + 1;
    if (v234 >= v233 >> 1)
    {
      v588 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v233 > 1, v234 + 1, 1, v588);
    }

    (*v547)();
    v165 = v526;
    goto LABEL_94;
  }

  v534 = *&v216 + 32;
LABEL_159:
  v238 = v531;
  Text.Layout.RunSlice.run.getter();
  v55 = COERCE_DOUBLE((*v535)(v238, v536));
  if ((v585 & 1) == 0)
  {
    goto LABEL_197;
  }

  if (v167 >= *(v568 + 16))
  {
LABEL_460:
    __break(1u);
LABEL_461:
    __break(1u);
LABEL_462:
    __break(1u);
LABEL_463:
    __break(1u);
LABEL_464:
    __break(1u);
LABEL_465:
    __break(1u);
    goto LABEL_466;
  }

  if (!*(v530 + 16) || (v55 = COERCE_DOUBLE(specialized __RawDictionaryStorage.find<A>(_:)(*(v511 + 8 * v167))), (v239 & 1) == 0))
  {
LABEL_197:
    *&v624.a = MEMORY[0x1E69E7CC0];
    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v118));
    v268 = 0;
    while (v118 != v268)
    {
      if (v268 >= *(*&v619 + 16))
      {
        goto LABEL_402;
      }

      v269 = *(v611 + 8 * v268);
      if (v167 >= *(v269 + 16))
      {
        goto LABEL_403;
      }

      v270 = (v269 + v609);
      v271 = v270[64];
      if (v271 == 255)
      {
        goto LABEL_481;
      }

      v272 = *(v270 + 4);
      v273 = *(v270 + 5);
      v274 = *(v270 + 6);
      v275 = *(v270 + 7);
      v276 = v624.a;
      outlined copy of Path.Storage(v272, v273, v274, v275, v270[64]);
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if ((LOBYTE(v55) & 1) == 0)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v276 + 16) + 1, 1));
        v276 = v624.a;
      }

      v277 = v601;
      v279 = *(*&v276 + 16);
      v278 = *(*&v276 + 24);
      if (v279 >= v278 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v278 > 1), v279 + 1, 1));
        v277 = v601;
        v276 = v624.a;
      }

      ++v268;
      *(*&v276 + 16) = v279 + 1;
      v280 = *&v276 + 40 * v279;
      *(v280 + 32) = v272;
      *(v280 + 40) = v273;
      *(v280 + 48) = v274;
      *(v280 + 56) = v275;
      *(v280 + 64) = v271;
      v118 = v622;
      v97 = v602;
      v167 = v615;
      if (v622 == v268)
      {
        *&v630 = __PAIR64__(v277, v563);
        *(&v630 + 1) = __PAIR64__(v561, v562);
        v631 = 0uLL;
        *&v632 = v203;
        *(&v632 + 1) = v204;
        *&v633 = v586.f64[0];
        *(&v633 + 1) = v276;
        if (v523 == 6)
        {
          v281 = Text.Effect.PathInterpolator.PathGlyph.split()();
          outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v630);
          *v524 = v281;
          swift_storeEnumTagMultiPayload();
          v282 = v588;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v618;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v282 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v282[2] + 1, 1, v282);
          }

          v234 = v282[2];
          v284 = v282[3];
          v588 = v282;
          v235 = v234 + 1;
          if (v234 >= v284 >> 1)
          {
            v588 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v284 > 1, v234 + 1, 1, v588);
          }

          outlined consume of Path?(v580, v581, v582, v583, v587);
          (*v547)(v594, v607);
          v165 = v524;
        }

        else
        {
          v285 = v631;
          v286 = v525;
          *v525 = v630;
          v286[1] = v285;
          v287 = v633;
          v286[2] = v632;
          v286[3] = v287;
          swift_storeEnumTagMultiPayload();
          v288 = v588;
          v289 = swift_isUniquelyReferenced_nonNull_native();
          v96 = v618;
          if ((v289 & 1) == 0)
          {
            v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v288[2] + 1, 1, v288);
          }

          v234 = v288[2];
          v290 = v288[3];
          v588 = v288;
          v235 = v234 + 1;
          if (v234 >= v290 >> 1)
          {
            v588 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v290 > 1, v234 + 1, 1, v588);
          }

          outlined consume of Path?(v580, v581, v582, v583, v587);
          (*v547)(v594, v607);
          v165 = v525;
        }

        goto LABEL_94;
      }
    }

    goto LABEL_401;
  }

  v240 = *(*(v530 + 56) + 8 * *&v55);
  if ((v240 & 0x8000000000000000) != 0)
  {
    goto LABEL_469;
  }

  if (v240 < *(v521 + 16))
  {
    v513 = *(v510 + 8 * v240);
    if (v523 != 6)
    {
      *&v624.a = MEMORY[0x1E69E7CC0];

      v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v118));
      v328 = 0;
      while (v118 != v328)
      {
        if (v328 >= *(*&v619 + 16))
        {
          goto LABEL_436;
        }

        v329 = *(v611 + 8 * v328);
        if (v167 >= *(v329 + 16))
        {
          goto LABEL_437;
        }

        v330 = (v329 + v609);
        v331 = v330[64];
        if (v331 == 255)
        {
          goto LABEL_488;
        }

        v332 = *(v330 + 6);
        v333 = *(v330 + 7);
        v334 = *(v330 + 5);
        v650 = *(v330 + 4);
        v335 = v650;
        v651 = v334;
        v652 = v332;
        v653 = v333;
        v654 = v331;
        v625 = MEMORY[0x1E69E7CC0];
        v623 = MEMORY[0x1E69E7CC0];
        MEMORY[0x1EEE9AC00](*&v55);
        outlined copy of Path.Storage(v335, v334, v332, v333, v331);
        Path.forEach(_:)();
        outlined consume of Path?(v335, v334, v332, v333, v331);
        v336 = v623;
        v337 = v625;
        v338 = v625[2];
        v339 = v624.a;
        v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
        if ((LOBYTE(v55) & 1) == 0)
        {
          v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v339 + 16) + 1, 1));
          v339 = v624.a;
        }

        v118 = v622;
        v341 = *(*&v339 + 16);
        v340 = *(*&v339 + 24);
        if (v341 >= v340 >> 1)
        {
          v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v340 > 1), v341 + 1, 1));
          v339 = v624.a;
        }

        ++v328;
        *(*&v339 + 16) = v341 + 1;
        v342 = *&v339;
        v343 = *&v339 + 32;
        v344 = (v343 + 24 * v341);
        *v344 = v336;
        v344[1] = v338;
        v344[2] = v337;
        v167 = v615;
        if (v118 == v328)
        {
          v574 = v342;
          if (v597 > v341)
          {
            goto LABEL_473;
          }

          v508 = (v343 + 24 * v597);
          v345 = *(*(v508 + 2) + 16);
          *&v55 = v118 * v345;
          if ((v118 * v345) >> 64 == (v118 * v345) >> 63)
          {
            v55 = COERCE_DOUBLE(_sSa9repeating5countSayxGx_SitcfCSo7CGPointV_Tt1g5(*&v55, 0.0, 0.0));
            v346 = *&v55;
            v347 = 0;
            v348 = v534;
            while (v347 != v118)
            {
              if (v345)
              {
                if (v347 >= *(*&v586.f64[0] + 16))
                {
                  goto LABEL_456;
                }

                if (v347 < *(v574 + 16))
                {
                  v350 = 0;
                  while (1)
                  {
                    v351 = v350 * v118;
                    if ((v350 * v118) >> 64 != (v350 * v118) >> 63)
                    {
                      goto LABEL_407;
                    }

                    v352 = v347 + v351;
                    if (__OFADD__(v347, v351))
                    {
                      goto LABEL_408;
                    }

                    v353 = *(v343 + 24 * v347 + 16);
                    if (v350 >= *(v353 + 16))
                    {
                      goto LABEL_409;
                    }

                    v354 = v348;
                    v355 = *(v348 + 16 * v347);
                    v604 = *(v353 + 16 * v350 + 32);
                    v605 = v355;
                    v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                    if (LOBYTE(v55))
                    {
                      if ((v352 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_410;
                      }
                    }

                    else
                    {
                      v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(v346));
                      v346 = *&v55;
                      if ((v352 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_410;
                      }
                    }

                    if (v352 >= *(v346 + 16))
                    {
                      goto LABEL_411;
                    }

                    v348 = v354;
                    ++v350;
                    *(v346 + 16 * v352 + 32) = vaddq_f64(v605, v604);
                    if (v345 == v350)
                    {
                      goto LABEL_251;
                    }
                  }
                }

                goto LABEL_457;
              }

LABEL_251:
              ++v347;
              v349 = v615;
              if (v347 == v118)
              {
                v421 = v508[2];
                v422 = *(*&v421 + 16);
                if (v422)
                {
                  *&v624.a = MEMORY[0x1E69E7CC0];

                  v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v422));
                  v423 = 0;
                  v424 = *(v513 + 16);
                  v571 = *&v421 + 32;
                  v425 = v513 + 32;
                  v572 = v424 - 2;
                  v426 = v619;
                  v605.f64[0] = v421;
                  *&v604.f64[0] = v422;
                  v573 = v424;
                  while (v423 < *(*&v421 + 16))
                  {
                    v427 = 1.0;
                    if (v424)
                    {
                      v428 = 0;
                      v429 = v203 + *(v571 + 16 * v423);
                      v430 = *(v513 + 16);
                      v431 = v424;
                      while (1)
                      {
                        v432 = v431 >> 1;
                        v433 = v428 + (v431 >> 1);
                        if (__OFADD__(v428, v431 >> 1))
                        {
                          goto LABEL_426;
                        }

                        if (v433 >= v430)
                        {
                          goto LABEL_427;
                        }

                        if (*(v425 + 8 * v433) < v429)
                        {
                          v428 = v433 + 1;
                          if (__OFADD__(v433, 1))
                          {
                            goto LABEL_432;
                          }

                          v432 = v431 + ~v432;
                        }

                        v431 = v432;
                        if (v432 <= 0)
                        {
                          if (v428 == v424)
                          {
                            break;
                          }

                          if (!v428)
                          {
                            v434 = 0;
                            v427 = 0.0;
                            goto LABEL_345;
                          }

                          v434 = v428 - 1;
                          if (__OFSUB__(v428, 1))
                          {
                            goto LABEL_477;
                          }

                          if (v434 < v430)
                          {
                            if (__OFADD__(v434, 1))
                            {
                              goto LABEL_479;
                            }

                            if (v428 < v430)
                            {
                              v427 = (v429 - *(v425 + 8 * v434)) / (*(v425 + 8 * v428) - *(v425 + 8 * v434));
                              goto LABEL_345;
                            }

                            goto LABEL_480;
                          }

                          goto LABEL_478;
                        }
                      }
                    }

                    v434 = v572;
LABEL_345:
                    v435 = v624.a;
                    v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                    if ((LOBYTE(v55) & 1) == 0)
                    {
                      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v435 + 16) + 1, 1));
                      v426 = v619;
                      v435 = v624.a;
                    }

                    v437 = *(*&v435 + 16);
                    v436 = *(*&v435 + 24);
                    if (v437 >= v436 >> 1)
                    {
                      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v436 > 1), v437 + 1, 1));
                      v426 = v619;
                      v435 = v624.a;
                    }

                    ++v423;
                    *(*&v435 + 16) = v437 + 1;
                    v438 = *&v435 + 16 * v437;
                    *(v438 + 32) = v434;
                    *(v438 + 40) = v427;
                    v421 = v605.f64[0];
                    v424 = v573;
                    if (v423 == *&v604.f64[0])
                    {
                      v55 = COERCE_DOUBLE();
                      v349 = v615;
                      goto LABEL_353;
                    }
                  }

                  goto LABEL_461;
                }

                v435 = MEMORY[0x1E69E7CC0];
                v426 = v619;
LABEL_353:
                if (!*(*&v426 + 16))
                {
                  goto LABEL_486;
                }

                if (v349 >= *(*v611 + 16))
                {
                  goto LABEL_487;
                }

                v439 = (*v611 + v609);
                v440 = v439[64];
                if (v440 != 255)
                {
                  v442 = *(v439 + 6);
                  v441 = *(v439 + 7);
                  v443 = *(v439 + 4);
                  v444 = *(v439 + 5);
                  v645 = v443;
                  v646 = v444;
                  v647 = v442;
                  v648 = v441;
                  v649 = v440;
                  outlined copy of Path.Storage(v443, v444, v442, v441, v440);

                  Path.boundingRect.getter();
                  v446 = v445;
                  v448 = v447;
                  v450 = v449;
                  v452 = v451;
                  outlined consume of Path?(v443, v444, v442, v441, v440);
                  v453 = *v508;
                  v454 = *(v508 + 1);

                  v455 = v514;
                  v456 = v601;
                  *v514 = v563;
                  v455[1] = v456;
                  v457 = v561;
                  v455[2] = v562;
                  v455[3] = v457;
                  *(v455 + 2) = 0;
                  *(v455 + 3) = 0;
                  *(v455 + 4) = v203;
                  *(v455 + 5) = v204;
                  *(v455 + 6) = v453;
                  *(v455 + 7) = v454;
                  *(v455 + 8) = v346;
                  *(v455 + 9) = v446;
                  *(v455 + 10) = v448;
                  *(v455 + 11) = v450;
                  *(v455 + 12) = v452;
                  *(v455 + 13) = v435;
                  swift_storeEnumTagMultiPayload();
                  v458 = v588;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v458 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v458[2] + 1, 1, v458);
                  }

                  v97 = v602;
                  v96 = v618;
                  v234 = v458[2];
                  v459 = v458[3];
                  v588 = v458;
                  v235 = v234 + 1;
                  if (v234 >= v459 >> 1)
                  {
                    v588 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v459 > 1, v234 + 1, 1, v588);
                  }

                  outlined consume of Path?(v580, v581, v582, v583, v587);
                  (*v547)(v594, v607);
                  v165 = v514;
                  goto LABEL_94;
                }

                goto LABEL_490;
              }
            }

            goto LABEL_454;
          }

          goto LABEL_474;
        }
      }

      goto LABEL_435;
    }

    *&v624.a = MEMORY[0x1E69E7CC0];

    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v118));
    v241 = 0.0;
    v242 = v619;
    while (*&v241 != v118)
    {
      if (*&v241 >= *(*&v242 + 16))
      {
        goto LABEL_439;
      }

      v243 = *(v611 + 8 * *&v241);
      if (v167 >= *(v243 + 16))
      {
        goto LABEL_440;
      }

      v605.f64[0] = v241;
      v244 = (v243 + v609);
      v245 = v244[64];
      if (v245 == 255)
      {
        goto LABEL_489;
      }

      v246 = v97;
      v247 = *(v244 + 5);
      v250 = *(v244 + 6);
      v249 = *(v244 + 7);
      v640 = *(v244 + 4);
      v248 = v640;
      v641 = v247;
      v642 = v250;
      v643 = v249;
      v644 = v245;
      (*v552)(v578, v553, v579);
      v571 = v248;
      v572 = v247;
      v573 = v250;
      v574 = v249;
      LODWORD(v604.f64[0]) = v245;
      outlined copy of Path.Storage(v248, v247, v250, v249, v245);
      v251 = Path.cgPath.getter();
      v252 = CGPathRef.componentsSeparated(using:)();

      if (v252 >> 62)
      {
        if (v252 < 0)
        {
          v267 = v252;
        }

        else
        {
          v267 = v252 & 0xFFFFFFFFFFFFFF8;
        }

        v253 = MEMORY[0x19A8BDCD0](v267);
      }

      else
      {
        v253 = *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v97 = v246;
      v96 = v618;
      if (v253)
      {
        v625 = MEMORY[0x1E69E7CC0];
        v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v253));
        if (v253 < 0)
        {
          goto LABEL_452;
        }

        v254 = 0;
        do
        {
          if ((v252 & 0xC000000000000001) != 0)
          {
            MEMORY[0x19A8BDB80](v254, v252);
          }

          else
          {
            v255 = *(v252 + 8 * v254 + 32);
          }

          Path.init(_:)();
          v256 = v625;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v256[2] + 1, 1);
            v256 = v625;
          }

          v258 = v256[2];
          v257 = v256[3];
          if (v258 >= v257 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v257 > 1), v258 + 1, 1);
            v256 = v625;
          }

          ++v254;
          v256[2] = v258 + 1;
          v259 = &v256[5 * v258];
          v260 = v628[4];
          v261 = v628[5];
          v259[64] = v629;
          *(v259 + 2) = v260;
          *(v259 + 3) = v261;
          v96 = v618;
        }

        while (v253 != v254);

        outlined consume of Path?(v571, v572, v573, v574, LOBYTE(v604.f64[0]));
        (*v551)(v578, v579);
        v97 = v602;
        v167 = v615;
      }

      else
      {

        outlined consume of Path?(v571, v572, v573, v574, LOBYTE(v604.f64[0]));
        (*v551)(v578, v579);
        v256 = MEMORY[0x1E69E7CC0];
      }

      v262 = v624.a;
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if ((LOBYTE(v55) & 1) == 0)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v262 + 16) + 1, 1));
        v262 = v624.a;
      }

      v242 = v619;
      v263 = v605.f64[0];
      v265 = *(*&v262 + 16);
      v264 = *(*&v262 + 24);
      if (v265 >= v264 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v264 > 1), v265 + 1, 1));
        v263 = v605.f64[0];
        v242 = v619;
        v262 = v624.a;
      }

      *&v241 = *&v263 + 1;
      *(*&v262 + 16) = v265 + 1;
      v266 = *&v262 + 32;
      *(*&v262 + 32 + 8 * v265) = v256;
      if (*&v241 == v118)
      {
        v356 = *(*&v262 + 32);
        v357 = v597;
        if (v597 >= *(v356 + 16))
        {
          goto LABEL_475;
        }

        v358 = v356 + v509;
        v359 = *(v358 + 32);
        v360 = *(v358 + 48);
        v639 = *(v358 + 64);
        v638[0] = v359;
        v638[1] = v360;
        v361 = *(v358 + 32);
        v362 = *(v358 + 48);
        v672 = *(v358 + 64);
        v671[0] = v361;
        v671[1] = v362;
        outlined init with copy of Path.Storage(v671, &v624);
        Path.boundingRect.getter();
        v364 = v363;
        v366 = v365;
        v368 = v367;
        v370 = v369;
        v55 = COERCE_DOUBLE(outlined destroy of Path(v638));
        if (v357 >= *(*&v262 + 16))
        {
          goto LABEL_476;
        }

        v371 = v588;
        v508 = *(*(v266 + 8 * v357) + 16);
        if (!v508)
        {

          v373 = MEMORY[0x1E69E7CC0];
LABEL_361:

          *v515 = v373;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v371 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v371[2] + 1, 1, v371);
          }

          v234 = v371[2];
          v460 = v371[3];
          v588 = v371;
          v235 = v234 + 1;
          if (v234 >= v460 >> 1)
          {
            v588 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v460 > 1, v234 + 1, 1, v588);
          }

          outlined consume of Path?(v580, v581, v582, v583, v587);
          (*v547)(v594, v607);
          v165 = v515;
          goto LABEL_94;
        }

        v372 = 0;
        v507 = v513 + 32;
        v373 = MEMORY[0x1E69E7CC0];
LABEL_271:
        v374 = *(v266 + 8 * v597);
        if (v372 < *(v374 + 16))
        {
          v574 = v266;
          v609 = 40 * v372;
          v375 = v374 + 40 * v372;
          v376 = *(v375 + 32);
          v377 = *(v375 + 48);
          v637 = *(v375 + 64);
          v636[0] = v376;
          v636[1] = v377;
          v625 = MEMORY[0x1E69E7CC0];
          v623 = MEMORY[0x1E69E7CC0];
          MEMORY[0x1EEE9AC00](*&v55);
          v379 = v378[8];
          v378[40] = v378[7];
          v378[41] = v379;
          v673[32] = v637;
          outlined init with copy of Path.Storage(v673, &v624);
          Path.forEach(_:)();
          outlined destroy of Path(v636);
          *&v604.f64[0] = v625;
          v380 = v625[2];
          *&v55 = v118 * v380;
          if ((v118 * v380) >> 64 != (v118 * v380) >> 63)
          {
            goto LABEL_463;
          }

          v615 = v625[2];
          v573 = v373;
          v381 = v372;
          v572 = v372 + 1;
          v571 = v623;
          v55 = COERCE_DOUBLE(_sSa9repeating5countSayxGx_SitcfCSo7CGPointV_Tt1g5(*&v55, 0.0, 0.0));
          v605.f64[0] = v55;
          v382 = 0;
LABEL_274:
          v383 = v382;
          v384 = v382;
          while (v384 < v118)
          {
            v382 = v384 + 1;
            if (__OFADD__(v384, 1))
            {
              goto LABEL_417;
            }

            if (v384 >= *(*&v262 + 16))
            {
              goto LABEL_418;
            }

            v385 = *(*&v262 + 8 * v384 + 32);
            if (v381 >= *(v385 + 16))
            {
              goto LABEL_419;
            }

            v386 = (v385 + v609);
            v387 = *(v386 + 2);
            v388 = *(v386 + 3);
            v635 = v386[64];
            v634[0] = v387;
            v634[1] = v388;
            v625 = MEMORY[0x1E69E7CC0];
            v623 = MEMORY[0x1E69E7CC0];
            MEMORY[0x1EEE9AC00](*&v55);
            v390 = v389[5];
            v389[43] = v389[4];
            v389[44] = v390;
            v674[32] = v635;
            outlined init with copy of Path.Storage(v674, &v624);
            Path.forEach(_:)();
            outlined destroy of Path(v634);
            v391 = v625;
            v55 = COERCE_DOUBLE();
            if (v615)
            {
              v118 = v622;
              if (v383 >= *(*&v586.f64[0] + 16))
              {
                goto LABEL_464;
              }

              if (v615 <= *&v391[1].f64[0])
              {
                v392 = v605.f64[0];
                v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                if ((LOBYTE(v55) & 1) == 0)
                {
                  v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(*&v392));
                  v392 = v55;
                }

                v393 = 0;
                v394 = v534;
                v395 = v615;
                while (1)
                {
                  v396 = v393 * v118;
                  if ((v393 * v118) >> 64 != (v393 * v118) >> 63)
                  {
                    goto LABEL_421;
                  }

                  v397 = __OFADD__(v383, v396);
                  v398 = v383 + v396;
                  if (v397)
                  {
                    goto LABEL_422;
                  }

                  if ((v398 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_423;
                  }

                  if (v398 >= *(*&v392 + 16))
                  {
                    goto LABEL_424;
                  }

                  *(*&v392 + 32 + 16 * v398) = vaddq_f64(*(v394 + 16 * v383), v391[v393++ + 2]);
                  if (v395 == v393)
                  {
                    v605.f64[0] = v392;
                    v55 = COERCE_DOUBLE();
                    if (v382 != v118)
                    {
                      goto LABEL_274;
                    }

                    *&v624.a = MEMORY[0x1E69E7CC0];
                    v405 = v615;
                    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v615));
                    v406 = v405;
                    v407 = 0;
                    v408 = *(v513 + 16);
                    v409 = *&v604.f64[0] + 32;
                    v609 = v408 - 2;
                    while (v407 != v406)
                    {
                      if (v407 >= *(*&v604.f64[0] + 16))
                      {
                        goto LABEL_472;
                      }

                      v410 = 1.0;
                      if (v408)
                      {
                        v411 = 0;
                        v412 = v203 + *(v409 + 16 * v407);
                        v413 = *(v513 + 16);
                        v414 = v408;
                        while (1)
                        {
                          v415 = v414 >> 1;
                          v416 = v411 + (v414 >> 1);
                          if (__OFADD__(v411, v414 >> 1))
                          {
                            goto LABEL_433;
                          }

                          if (v416 >= v413)
                          {
                            goto LABEL_434;
                          }

                          if (*(v507 + 8 * v416) < v412)
                          {
                            v411 = v416 + 1;
                            if (__OFADD__(v416, 1))
                            {
                              goto LABEL_453;
                            }

                            v415 = v414 + ~v415;
                          }

                          v414 = v415;
                          if (v415 <= 0)
                          {
                            if (v411 == v408)
                            {
                              break;
                            }

                            if (!v411)
                            {
                              v417 = 0;
                              v410 = 0.0;
                              goto LABEL_319;
                            }

                            v417 = v411 - 1;
                            if (__OFSUB__(v411, 1))
                            {
                              goto LABEL_482;
                            }

                            if (v417 < v413)
                            {
                              if (__OFADD__(v417, 1))
                              {
                                goto LABEL_484;
                              }

                              if (v411 < v413)
                              {
                                v410 = (v412 - *(v507 + 8 * v417)) / (*(v507 + 8 * v411) - *(v507 + 8 * v417));
                                goto LABEL_319;
                              }

                              goto LABEL_485;
                            }

                            goto LABEL_483;
                          }
                        }
                      }

                      v417 = v609;
LABEL_319:
                      v399 = v624.a;
                      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                      if ((LOBYTE(v55) & 1) == 0)
                      {
                        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v399 + 16) + 1, 1));
                        v399 = v624.a;
                      }

                      v406 = v615;
                      v419 = *(*&v399 + 16);
                      v418 = *(*&v399 + 24);
                      if (v419 >= v418 >> 1)
                      {
                        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v418 > 1), v419 + 1, 1));
                        v406 = v615;
                        v399 = v624.a;
                      }

                      ++v407;
                      *(*&v399 + 16) = v419 + 1;
                      v420 = *&v399 + 16 * v419;
                      *(v420 + 32) = v417;
                      *(v420 + 40) = v410;
                      v96 = v618;
                      if (v407 == v406)
                      {

                        goto LABEL_294;
                      }
                    }

                    goto LABEL_471;
                  }
                }
              }

              goto LABEL_465;
            }

            v55 = COERCE_DOUBLE();
            ++v384;
            v118 = v622;
            if (v382 == v622)
            {

              v399 = MEMORY[0x1E69E7CC0];
LABEL_294:
              v373 = v573;
              v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
              v97 = v602;
              if ((LOBYTE(v55) & 1) == 0)
              {
                v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v373 + 16) + 1, 1, v373));
                v373 = *&v55;
              }

              v401 = *(v373 + 16);
              v400 = *(v373 + 24);
              v402 = v601;
              v403 = v615;
              if (v401 >= v400 >> 1)
              {
                v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v400 > 1), v401 + 1, 1, v373));
                v403 = v615;
                v402 = v601;
                v373 = *&v55;
              }

              *(v373 + 16) = v401 + 1;
              v404 = v373 + 112 * v401;
              *(v404 + 32) = v563;
              *(v404 + 36) = v402;
              *(v404 + 40) = v562;
              *(v404 + 44) = v561;
              *(v404 + 48) = 0;
              *(v404 + 56) = 0;
              *(v404 + 64) = v203;
              *(v404 + 72) = v204;
              *(v404 + 80) = v571;
              *(v404 + 88) = v403;
              *(v404 + 96) = v605.f64[0];
              *(v404 + 104) = v364;
              *(v404 + 112) = v366;
              *(v404 + 120) = v368;
              *(v404 + 128) = v370;
              v372 = v572;
              *(v404 + 136) = v399;
              v371 = v588;
              v266 = v574;
              if (v372 == v508)
              {

                goto LABEL_361;
              }

              goto LABEL_271;
            }
          }

          goto LABEL_416;
        }

        goto LABEL_462;
      }
    }

LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
    goto LABEL_442;
  }

LABEL_470:
  __break(1u);
LABEL_471:
  __break(1u);
LABEL_472:
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
LABEL_482:
  __break(1u);
LABEL_483:
  __break(1u);
LABEL_484:
  __break(1u);
LABEL_485:
  __break(1u);
LABEL_486:
  __break(1u);
LABEL_487:
  __break(1u);
LABEL_488:
  __break(1u);
LABEL_489:
  __break(1u);
LABEL_490:
  __break(1u);

  __break(1u);
  return result;
}

void *Text.Layout.Cluster.paths.getter()
{
  v25 = type metadata accessor for Text.Layout.RunSlice();
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v8 - 8) + 16))(v7, v0, v8);
  v9 = *(v5 + 44);
  lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v7[v9] == v26[0])
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_3:
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v7, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
    return v10;
  }

  v24 = (v1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v23 = (v1 + 8);
  while (1)
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v13 = v25;
    (*v24)(v3);
    v12(v26, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v14 = Text.Layout.RunSlice.paths.getter();
    result = (*v23)(v3, v13);
    v15 = *(v14 + 16);
    v16 = v10[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v17 <= v10[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v18, 1, v10);
      v10 = result;
      if (*(v14 + 16))
      {
LABEL_16:
        if ((v10[3] >> 1) - v10[2] < v15)
        {
          goto LABEL_22;
        }

        _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80], MEMORY[0x1E69E6720]);
        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_23;
          }

          v10[2] = v21;
        }

        goto LABEL_6;
      }
    }

    if (v15)
    {
      goto LABEL_21;
    }

LABEL_6:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v9] == v26[0])
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t Text.Layout.Cluster.glyphSlices.getter()
{
  v1 = type metadata accessor for Text.Layout.RunSlice();
  v43 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v35 - v8;
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v13 - 8) + 16))(v12, v0, v13);
  v14 = *(v10 + 44);
  v15 = lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v16 = MEMORY[0x1E69E7CC0];
  if (*&v12[v14] == v48[0])
  {
LABEL_2:
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v12, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
    return v16;
  }

  else
  {
    v45 = (v43 + 32);
    v46 = (v43 + 16);
    v35 = v12;
    v36 = (v43 + 8);
    v38 = v13;
    v39 = v6;
    v37 = v14;
    v40 = v15;
    while (1)
    {
      v42 = v16;
      v19 = dispatch thunk of Collection.subscript.read();
      v20 = v41;
      v44 = *v46;
      v44(v41);
      v19(v48, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v21 = *v45;
      (*v45)(v6, v20, v1);
      lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
      result = dispatch thunk of Collection.count.getter();
      if (result)
      {
        v22 = result;
        v47 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result & ~(result >> 63), 0);
        v23 = v47;
        result = dispatch thunk of Collection.startIndex.getter();
        if (v22 < 0)
        {
          goto LABEL_28;
        }

        do
        {
          v24 = dispatch thunk of Collection.subscript.read();
          v44(v3);
          v24(v48, 0);
          v47 = v23;
          v25 = v6;
          v27 = *(v23 + 16);
          v26 = *(v23 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
            v23 = v47;
          }

          *(v23 + 16) = v27 + 1;
          v21((v23 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27), v3, v1);
          result = dispatch thunk of Collection.formIndex(after:)();
          --v22;
          v6 = v25;
        }

        while (v22);
        v12 = v35;
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v28 = *(v23 + 16);
      v16 = v42;
      v29 = v42[2];
      v30 = v29 + v28;
      if (__OFADD__(v29, v28))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v30 > v16[3] >> 1)
      {
        if (v29 <= v30)
        {
          v31 = v29 + v28;
        }

        else
        {
          v31 = v29;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v31, 1, v16);
        v16 = result;
      }

      v6 = v39;
      if (*(v23 + 16))
      {
        if ((v16[3] >> 1) - v16[2] < v28)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        v18 = v37;
        if (v28)
        {
          v32 = v16[2];
          v33 = __OFADD__(v32, v28);
          v34 = v32 + v28;
          if (v33)
          {
            goto LABEL_30;
          }

          v16[2] = v34;
        }
      }

      else
      {

        v18 = v37;
        if (v28)
        {
          goto LABEL_27;
        }
      }

      (*v36)(v6, v1);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v12[v18] == v48[0])
      {
        goto LABEL_2;
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
  }

  return result;
}

char *Text.Layout.Cluster.positions.getter()
{
  v26 = type metadata accessor for Text.Layout.RunSlice();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v8 - 8) + 16))(v7, v0, v8);
  v9 = *(v5 + 44);
  lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v7[v9] == v27[0])
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_3:
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v7, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
    return v10;
  }

  v24 = (v1 + 8);
  v25 = (v1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v13 = v26;
    (*v25)(v3);
    v12(v27, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v14 = Text.Layout.RunSlice.positions.getter();
    result = (*v24)(v3, v13);
    v15 = *(v14 + 16);
    v16 = *(v10 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v17 <= *(v10 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v18, 1, v10);
      v10 = result;
      if (*(v14 + 16))
      {
LABEL_16:
        v19 = *(v10 + 2);
        if ((*(v10 + 3) >> 1) - v19 < v15)
        {
          goto LABEL_22;
        }

        memcpy(&v10[16 * v19 + 32], (v14 + 32), 16 * v15);

        if (v15)
        {
          v20 = *(v10 + 2);
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v22;
        }

        goto LABEL_6;
      }
    }

    if (v15)
    {
      goto LABEL_21;
    }

LABEL_6:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v9] == v27[0])
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t Text.Effect.PathInterpolator.PathGlyph.split()()
{
  v1 = type metadata accessor for CGPathFillRule();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v30 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v30)
    {
      goto LABEL_24;
    }

LABEL_27:

    _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.PathInterpolator.PathGlyph>, &type metadata for Text.Effect.PathInterpolator.PathGlyph, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    v37 = *v0;
    v38 = *(v0 + 16);
    *(v36 + 16) = xmmword_195CC8D00;
    *(v36 + 32) = v37;
    v39 = *(v0 + 32);
    v40 = *(v0 + 48);
    *(v36 + 48) = v38;
    *(v36 + 64) = v39;
    *(v36 + 80) = v40;
    outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(v0, &v81);
    return v36;
  }

  v66 = v0;
  v77 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = 0;
  v8 = v77;
  v74 = v5 + 32;
  LODWORD(v73) = *MEMORY[0x1E695EEB8];
  v10 = *(v2 + 104);
  v9 = v2 + 104;
  v71 = v1;
  v72 = v10;
  v67 = (v9 - 96);
  v68 = v6;
  v69 = v4;
  v70 = v9;
  do
  {
    v75 = v8;
    v76 = v7;
    v11 = (v74 + 40 * v7);
    v12 = *v11;
    v13 = v11[1];
    v92 = *(v11 + 32);
    v90 = v12;
    v91 = v13;
    (v72)(v4, v73, v1);
    v93[0] = v90;
    v93[1] = v91;
    v94 = v92;
    outlined init with copy of Path.Storage(v93, &v81);
    v14 = Path.cgPath.getter();
    v15 = CGPathRef.componentsSeparated(using:)();

    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v26 = v15;
      }

      else
      {
        v26 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = MEMORY[0x19A8BDCD0](v26);
      if (!v16)
      {
LABEL_18:

        outlined destroy of Path(&v90);
        v4 = v69;
        v1 = v71;
        (*v67)(v69, v71);
        v19 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_18;
      }
    }

    *&v81 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      goto LABEL_45;
    }

    v18 = 0;
    v19 = v81;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8BDB80](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      Path.init(_:)();
      *&v81 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v19 = v81;
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      v23 = v19 + 40 * v22;
      v24 = v84;
      v25 = v85;
      *(v23 + 64) = v86;
      *(v23 + 32) = v24;
      *(v23 + 48) = v25;
    }

    while (v16 != v18);
    v4 = v69;
    v1 = v71;
    (*v67)(v69, v71);
    outlined destroy of Path(&v90);

LABEL_19:
    v8 = v75;
    v27 = v76;
    v77 = v75;
    v29 = *(v75 + 16);
    v28 = *(v75 + 24);
    v30 = v29 + 1;
    v31 = v68;
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v8 = v77;
    }

    v7 = v27 + 1;
    *(v8 + 16) = v30;
    *(v8 + 8 * v29 + 32) = v19;
  }

  while (v7 != v31);
  v0 = v66;
LABEL_24:
  v32 = *(v8 + 32);
  v70 = v8 + 32;
  v33 = *(v32 + 16);
  v34 = 32;
  while (v30)
  {
    v35 = *(*(v8 + v34) + 16);
    v34 += 8;
    --v30;
    if (v35 != v33)
    {
      goto LABEL_27;
    }
  }

  if (!v33)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v80 = MEMORY[0x1E69E7CC0];
  v75 = v8;
  v71 = v33;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
  v41 = 0;
  v36 = v80;
  v72 = *(v75 + 16);
  v42 = *v0;
  v88 = *(v0 + 16);
  v89 = v42;
  v87 = *(v0 + 32);
  v43 = *(v0 + 48);
  v69 = v43;
  while (1)
  {
    v44 = v72;
    v74 = v41;
    if (v72)
    {
      break;
    }

    v59 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v78 = v88;
    v79 = v87;
    v81 = v89;
    v82 = v88;
    v83 = v87;
    v80 = v36;
    v61 = *(v36 + 16);
    v60 = *(v36 + 24);

    if (v61 >= v60 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
      v36 = v80;
    }

    v41 = v74 + 1;
    *(v36 + 16) = v61 + 1;
    v62 = v36 + (v61 << 6);
    v63 = v81;
    v64 = v83;
    *(v62 + 48) = v82;
    *(v62 + 64) = v64;
    *(v62 + 32) = v63;
    *(v62 + 80) = v43;
    *(v62 + 88) = v59;
    if (v41 == v71)
    {

      return v36;
    }
  }

  v73 = v36;
  *&v81 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
  v45 = v74;
  v46 = v81;
  v76 = 40 * v74;
  v47 = v70;
  while (v45 < *(*v47 + 16))
  {
    v48 = *v47 + v76;
    v49 = *(v48 + 32);
    v50 = *(v48 + 40);
    v52 = *(v48 + 48);
    v51 = *(v48 + 56);
    v53 = *(v48 + 64);
    v54 = v46;
    result = outlined copy of Path.Storage(v49, v50, v52, v51, v53);
    v46 = v54;
    *&v81 = v54;
    v55 = *(v54 + 16);
    v56 = *(v46 + 24);
    v57 = v55 + 1;
    if (v55 >= v56 >> 1)
    {
      v68 = v55 + 1;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v55 + 1, 1);
      v57 = v68;
      v45 = v74;
      v46 = v81;
    }

    *(v46 + 16) = v57;
    v58 = v46 + 40 * v55;
    *(v58 + 32) = v49;
    *(v58 + 40) = v50;
    *(v58 + 48) = v52;
    *(v58 + 56) = v51;
    *(v58 + 64) = v53;
    v47 += 8;
    if (!--v44)
    {
      v59 = v46;
      v36 = v73;
      v43 = v69;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

char *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(char *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, void, double))
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v7 = result;
  v31 = *(a3 + 16);
  if (v31 >= v4)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = *(a3 + 16);
  }

  v37 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v4 < 0)
  {
    goto LABEL_41;
  }

  v30 = a3;
  v34 = v8;
  v35 = v7;
  if (v8)
  {
    if (a2 < v7)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v9 = (a3 + 40);
    v10 = v31;
    v11 = v8;
    v12 = v7;
    while (a2 != v12)
    {
      if (v12 >= a2)
      {
        goto LABEL_34;
      }

      if (!v10)
      {
        goto LABEL_35;
      }

      result = a4(v12, *(v9 - 1), *v9);
      v16 = *(v37 + 16);
      v15 = *(v37 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = v13;
        v19 = v14;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v14 = v19;
        v13 = v18;
      }

      *(v37 + 16) = v16 + 1;
      v17 = v37 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v9 += 2;
      --v10;
      ++v12;
      if (!--v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = v7;
LABEL_17:
  if (v12 == a2)
  {
    return v37;
  }

  if (a2 >= v35)
  {
    v20 = 0;
    v32 = &v12[-a2];
    if (v12 <= a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = v12;
    }

    v33 = v21 - v12;
    v22 = (v30 + 16 * v34 + 40);
    while (v12 >= v35)
    {
      if (v33 == v20)
      {
        goto LABEL_37;
      }

      if (v31 - v34 == v20)
      {
        return v37;
      }

      if (v34 + v20 >= v31)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v34 + v20, 1))
      {
        goto LABEL_39;
      }

      result = a4(&v12[v20], *(v22 - 1), *v22);
      v26 = *(v37 + 16);
      v25 = *(v37 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v23;
        v29 = v24;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v24 = v29;
        v23 = v28;
      }

      *(v37 + 16) = v26 + 1;
      v27 = v37 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      ++v20;
      v22 += 2;
      if (!&v32[v20])
      {
        return v37;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t specialized Text.Effect.PathInterpolator.Interpolated.init(position:slices:relativePositions:bounds:displayScale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>)
{
  v49 = a9;
  v47 = a2;
  v48 = a3;
  v17 = type metadata accessor for EnvironmentValues();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = type metadata accessor for Text.Layout.RunSlice();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v55 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v25 = *(v23 + 64);
    v50 = v22;
    v51 = a1;
    v26 = a1 + ((v25 + 32) & ~v25);
    v27 = (v23 - 8);
    v52 = *(v23 + 56);
    v53 = v24;
    v28 = v22;
    do
    {
      v29 = v23;
      v53(v21, v26, v18);
      v30 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
      [v30 setDeviceScale_];
      if (!*(Text.Layout.RunSlice.positions.getter() + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v31 = v30;
      EnvironmentValues.init()();
      v54 = GraphicsContext.init(displayList:environment:)();
      GraphicsContext.translateBy(x:y:)();
      GraphicsContext.draw(_:options:)();
      [v31 moveContents];

      (*v27)(v21, v18);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v26 += v52;
      --v28;
      v23 = v29;
    }

    while (v28);

    v32 = v55;
    v33 = v50;
    v34 = v50 - 1;
    if (v50 == 1)
    {

      v43 = MEMORY[0x1E69E7CC0];
LABEL_17:
      v44 = v48;
      *v48 = v43;
      *(v44 + 1) = v47;
      v44[2] = a4;
      v44[3] = a5;
      v44[4] = a6;
      v44[5] = a7;
      v45 = v49;
      v44[6] = a8;
      v44[7] = v45;
      return result;
    }

    v55 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v32 & 0xC000000000000001) != 0 || (v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10), v33 <= v35) && v35 >= 2 && (v33 - 2) < v35)
    {
      v36 = objc_opt_self();
      v37 = 0;
      do
      {
        v40 = v37 + 1;
        if ((v32 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x19A8BDB80]();
          v39 = MEMORY[0x19A8BDB80](v40, v32);
        }

        else
        {
          v41 = v32 + 8 * v37;
          v38 = *(v41 + 32);
          v39 = *(v41 + 40);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        [v36 newInterpolatorWithFrom:v38 to:v39 options:0];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v37 = v40;
      }

      while (v34 != v40);

      v43 = v55;
      goto LABEL_17;
    }

LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 == 2)
  {
    if (a1 == &outlined read-only object #1 of Text.Effect.PathInterpolator.MapKeys.init(_:) || *&qword_1F0A2BCC0 == *(a1 + 32) && *&qword_1F0A2BCC8 == *(a1 + 40))
    {

      return 1;
    }
  }

  else if (v2 == 1 && (a1 == &outlined read-only object #0 of Text.Effect.PathInterpolator.MapKeys.init(_:) || *(a1 + 32) == 0.0))
  {

    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(&outlined read-only object #2 of Text.Effect.PathInterpolator.MapKeys.init(_:), a1))
  {

    return 2;
  }

  return v1;
}

unint64_t specialized Text.Effect.PathInterpolator.PathGlyph.resolve(cluster:state:mapKeys:in:)(double *a1, unint64_t a2, uint64_t *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Text.Effect.PathInterpolator.PathGlyph.path(state:mapKeys:)(a1, a2, v82);
  v11 = v83;
  if (v83 != 255)
  {
    v12 = v82[0];
    v13 = v82[1];
    v14 = v82[2];
    v15 = v82[3];
    v16 = *a3;
    v17 = a1[4];
    v18 = a1[5];
    CGAffineTransformMakeTranslation(&t1, v17, v18);
    CGAffineTransformScale(&t2, &t1, a1[6], a1[7]);
    tx = t2.tx;
    ty = t2.ty;
    v78 = *&t2.a;
    v77 = *&t2.c;
    v21 = a1[3];

    v22 = __sincos_stret(v21);
    t1.a = v22.__cosval;
    t1.b = v22.__sinval;
    t1.c = -v22.__sinval;
    t1.d = v22.__cosval;
    t1.tx = 0.0;
    t1.ty = 0.0;
    *&t2.c = v77;
    *&t2.a = v78;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v79, &t1, &t2);
    t1 = v79;
    CGAffineTransformTranslate(&t2, &t1, -v17, -v18);
    v23 = a1[1];
    v24 = a1[2];
    t1 = t2;
    CGAffineTransformTranslate(&t2, &t1, v23, v24);
    a = t2.a;
    b = t2.b;
    c = t2.c;
    d = t2.d;
    v29 = t2.tx;
    v30 = t2.ty;
    t1 = t2;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v31 = swift_allocObject();
        *(v31 + 24) = 0x3FF0000000000000;
        *(v31 + 32) = 0;
        *(v31 + 40) = 0;
        *(v31 + 48) = 0x3FF0000000000000;
        *(v31 + 56) = 0;
        *(v31 + 64) = 0;
        *(v31 + 80) = 0;
        *(v31 + 88) = 0;
        *(v31 + 72) = 0x3FF0000000000000;
        *(v31 + 96) = 1;
        *(v31 + 104) = 0u;
        *(v31 + 120) = 0u;
        *(v31 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v31 + 152) = _Q1;
        *(v31 + 168) = 0x3FF0000000000000;
        *(v31 + 176) = 0;
        *(v31 + 184) = 0u;
        *(v31 + 200) = 0u;
        *(v31 + 216) = 0;
        *(v31 + 16) = *(v16 + 16);
        v37 = *(v16 + 40);
        v38 = *(v16 + 56);
        *(v31 + 24) = *(v16 + 24);
        *(v31 + 40) = v37;
        *(v31 + 56) = v38;
        *(v31 + 72) = *(v16 + 72);
        v75 = v15;
        LODWORD(v78) = v11;
        v39 = *(v16 + 184);
        v40 = *(v16 + 192);
        *&v77 = v12;
        v74 = v3;
        v41 = v13;
        v42 = *(v16 + 200);
        v43 = *(v16 + 208);
        v76 = v14;
        v44 = *(v16 + 216);
        *(v31 + 184) = v39;
        *(v31 + 192) = v40;
        *(v31 + 200) = v42;
        *(v31 + 208) = v43;
        *(v31 + 216) = v44;
        v45 = *(v16 + 96);
        *(v31 + 80) = *(v16 + 80);
        *(v31 + 96) = v45;

        v46 = v39;
        v15 = v75;
        v11 = v78;
        v47 = v42;
        v12 = v77;
        v48 = v43;
        v13 = v41;
        v3 = v74;
        v14 = v76;
        outlined copy of Text.Effect.StopCollector?(v46, v40, v47, v48);

        v16 = v31;
      }

      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v29;
      t1.ty = v30;
      if (!CGAffineTransformIsIdentity(&t1))
      {
        v49 = *(v16 + 24);
        v50 = *(v16 + 40);
        t1.a = a;
        t1.b = b;
        t1.c = c;
        t1.d = d;
        t1.tx = v29;
        t1.ty = v30;
        *&t2.a = v49;
        *&t2.c = v50;
        *&t2.tx = *(v16 + 56);
        CGAffineTransformConcat(&v79, &t1, &t2);
        v51 = *&v79.c;
        v52 = *&v79.tx;
        *(v16 + 24) = *&v79.a;
        *(v16 + 40) = v51;
        *(v16 + 56) = v52;
      }
    }

    v53 = v3[4];
    v54 = v3[5];
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = -1.0;
    t1.tx = v53;
    t1.ty = v54;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v14;
      v75 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v56 = swift_allocObject();
        *(v56 + 24) = 0x3FF0000000000000;
        *(v56 + 32) = 0;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0x3FF0000000000000;
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        *(v56 + 80) = 0;
        *(v56 + 88) = 0;
        *(v56 + 72) = 0x3FF0000000000000;
        *(v56 + 96) = 1;
        *(v56 + 104) = 0u;
        *(v56 + 120) = 0u;
        *(v56 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v56 + 152) = _Q1;
        *(v56 + 168) = 0x3FF0000000000000;
        *(v56 + 176) = 0;
        *(v56 + 184) = 0u;
        *(v56 + 200) = 0u;
        *(v56 + 216) = 0;
        *(v56 + 16) = *(v16 + 16);
        v58 = *(v16 + 40);
        v59 = *(v16 + 56);
        *(v56 + 24) = *(v16 + 24);
        *(v56 + 40) = v58;
        *(v56 + 56) = v59;
        *(v56 + 72) = *(v16 + 72);
        v60 = *(v16 + 184);
        v61 = *(v16 + 192);
        LODWORD(v78) = v11;
        *&v77 = v12;
        v62 = *(v16 + 200);
        v63 = *(v16 + 208);
        v74 = v3;
        v64 = v13;
        v65 = *(v16 + 216);
        *(v56 + 184) = v60;
        *(v56 + 192) = v61;
        *(v56 + 200) = v62;
        *(v56 + 208) = v63;
        *(v56 + 216) = v65;
        v66 = *(v16 + 96);
        *(v56 + 80) = *(v16 + 80);
        *(v56 + 96) = v66;

        LOBYTE(v11) = v78;
        v67 = v63;
        v12 = v77;
        v13 = v64;
        v3 = v74;
        outlined copy of Text.Effect.StopCollector?(v60, v61, v62, v67);

        v16 = v56;
      }

      t1.a = 1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = -1.0;
      t1.tx = v53;
      t1.ty = v54;
      if (!CGAffineTransformIsIdentity(&t1))
      {
        v68 = *(v16 + 24);
        v69 = *(v16 + 40);
        t1.a = 1.0;
        t1.b = 0.0;
        t1.c = 0.0;
        t1.d = -1.0;
        t1.tx = v53;
        t1.ty = v54;
        *&t2.a = v68;
        *&t2.c = v69;
        *&t2.tx = *(v16 + 56);
        CGAffineTransformConcat(&v79, &t1, &t2);
        v70 = *&v79.c;
        v71 = *&v79.tx;
        *(v16 + 24) = *&v79.a;
        *(v16 + 40) = v70;
        *(v16 + 56) = v71;
      }

      v14 = v76;
      v15 = v75;
    }

    if (*(v16 + 96))
    {
      v72 = *v3;
    }

    else
    {
      v72 = *(v16 + 80);
    }

    *v9 = v12;
    *(v9 + 1) = v13;
    *(v9 + 2) = v14;
    *(v9 + 3) = v15;
    v9[32] = v11;
    *(v9 + 36) = v72;
    swift_storeEnumTagMultiPayload();
    outlined copy of Path.Storage(v12, v13, v14, v15, v11);
    Text.Effect.DrawingContext.Storage.append(_:)(v9);
    _sypSgWOhTm_2(v82, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v9, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  }

  return result;
}

uint64_t _sypSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (CGPoint, Text.Layout.RunSlice)()
{
  if (!lazy cache variable for type metadata for (CGPoint, Text.Layout.RunSlice))
  {
    type metadata accessor for CGPoint(255);
    type metadata accessor for Text.Layout.RunSlice();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CGPoint, Text.Layout.RunSlice));
    }
  }
}

unint64_t lazy protocol witness table accessor for type [CGPoint] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CGPoint] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CGPoint] and conformance [A])
  {
    type metadata accessor for [CGPoint](255, &lazy cache variable for type metadata for [CGPoint], type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CGPoint] and conformance [A]);
  }

  return result;
}

void _ss12Zip2SequenceVySaySo7CGPointVG7SwiftUI4TextV6LayoutV8RunSliceVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for [CGPoint](255, &lazy cache variable for type metadata for [CGPoint], type metadata accessor for CGPoint);
    v9[0] = v6;
    v9[1] = type metadata accessor for Text.Layout.RunSlice();
    v9[2] = lazy protocol witness table accessor for type [CGPoint] and conformance [A]();
    v9[3] = lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.PathGlyph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.PathGlyph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.SmoothPathGlyph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.SmoothPathGlyph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.Interpolated(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.Interpolated(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Text.Effect.PathInterpolator.Glyph()
{
  type metadata accessor for Text.Layout.RunSlice();
  if (v0 <= 0x3F)
  {
    _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.PathGlyph], &type metadata for Text.Effect.PathInterpolator.PathGlyph, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.SmoothPathGlyph], &type metadata for Text.Effect.PathInterpolator.SmoothPathGlyph, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Text.Effect.PathInterpolator.Cluster()
{
  type metadata accessor for Text.Layout.Cluster();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [CGPoint](319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.Glyph], type metadata accessor for Text.Effect.PathInterpolator.Glyph);
    if (v1 <= 0x3F)
    {
      _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.Metrics], &type metadata for Text.Effect.PathInterpolator.Metrics, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        _sSNy12CoreGraphics7CGFloatVGMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [CGPoint](uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with take of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined copy of Path.Storage(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(unint64_t *a1, void (*a2)(uint64_t))
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

void _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.MapKeys(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.MapKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Text.Effect.PathInterpolator.MapKeys(void *result, int a2)
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

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.PathInterpolator.Fragment> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, a2, lazy protocol witness table accessor for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment, &type metadata for Text.Effect.PathInterpolator.Fragment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment()
{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

void _sSNy12CoreGraphics7CGFloatVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type Range<Text.Effect.ClusterIndex> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for Range<Text.Effect.ClusterIndex>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.PathInterpolator.Fragment> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for Slice<Text.Effect.PathInterpolator.Fragment>, lazy protocol witness table accessor for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment, &type metadata for Text.Effect.PathInterpolator.Fragment, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState()
{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState);
  }

  return result;
}

id closure #1 in ShakeHorizontalTextEffect.configuration(_:)(void *a1, uint64_t a2)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<WeightDeltaModifier>, lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier, &type metadata for WeightDeltaModifier, type metadata accessor for AnyDynamicFontModifier);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_195CD1880;
  *(v4 + 32) = 0x408F400000000000;
  v5 = Text.Effect.Content.modifier(_:)(v4, a1, a2);

  return v5;
}

uint64_t closure #2 in ShakeHorizontalTextEffect.configuration(_:)(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v84 = a3;
  *&v88 = type metadata accessor for Text.Layout.Line();
  v83 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Text.Layout.Run();
  v74 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v80 = *(a1 + 5);
  v81 = v7;
  v10 = *(a2 + 1);
  v94 = *a2;
  v95 = v10;
  v96 = *(a2 + 2);
  v82 = a2;
  v97 = a2[6];
  v11 = *(&v94 + 1);
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = v94;
  v14 = v96;
  swift_retain_n();
  v15 = v11;
  v16 = Text.Effect.Keyframes.subscript.getter(v11, v12, v13);
  if (!v16)
  {
    goto LABEL_50;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v79 = v9;
  v17 = *(v16 + 16);
  if (v14 >= v17)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v78 = v8;
  v18 = (v16 + 32);
  v11 = *(v16 + 32 + 8 * v14);
  v19 = 0;
  if (v14)
  {
    v20 = v14;
    while (1)
    {
      v21 = *(*(*v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v22 = __OFADD__(v19, v21);
      v19 += v21;
      if (v22)
      {
        break;
      }

      ++v18;
      if (!--v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_8:

  v104[0] = v13;
  v104[1] = v15;
  v104[2] = v12;
  v104[3] = v11;
  v104[4] = v14;
  v104[5] = v17;
  v104[6] = v19;
  outlined init with copy of Text.Effect.BaseFragment(v104, v103);
  v23 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103[0] = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v104, isUniquelyReferenced_nonNull_native, 0.0);
  outlined destroy of Text.Effect.BaseFragment(v104);
  v25 = v103[0];
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  v26 = Text.Effect.Keyframes.subscript.getter(v15, v11, v13);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v14 >= v27)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v28 = *(v26 + 32 + 8 * v14);
    if (v14)
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
        v22 = __OFADD__(v30, v32);
        v30 += v32;
        if (v22)
        {
          goto LABEL_43;
        }

        if (__OFSUB__(v14, v31))
        {
          goto LABEL_44;
        }

        ++v29;
        if (v14 == v31)
        {
          goto LABEL_18;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v30 = 0;
LABEL_18:

    v103[0] = v13;
    v103[1] = v15;
    v103[2] = v11;
    v103[3] = v28;
    v103[4] = v14;
    v103[5] = v27;
    v103[6] = v30;
    outlined init with copy of Text.Effect.BaseFragment(v103, &v98);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v25;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, v33, 1.0);
    outlined destroy of Text.Effect.BaseFragment(v103);
    v34 = v98;
    v90 = v94;
    v91 = v95;
    v92 = v96;
    v93 = v97;
    outlined init with copy of Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>(v82, &v98, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);

    v35 = specialized static Text.Effect.stopMarkers(_:)(&v94);
    v37 = Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(v84, v35, v36, 3, v34, 0.0);
    v77 = v38;

    v39 = *(v34 + 16);
    if (v39)
    {
      v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(*(v34 + 16), 0);
      v40 = specialized Sequence._copySequenceContents(initializing:)(&v98, (v11 + 32), v39, v34);
      v84 = *(&v99 + 1);
      v76 = v100;

      outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
      if (v40 != v39)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v76 = v37;
    *&v98 = v11;
    specialized MutableCollection<>.sort(by:)(&v98);

    v75 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v98);
    v98 = v90;
    v99 = v91;
    v100 = v92;
    v101 = v93;
    v41 = *(&v95 + 1);
    v42 = *(*(&v95 + 1) + 16);
    v43 = 0.0;
    if (v42 == *(*(&v95 + 1) + 24))
    {
LABEL_23:
      v44 = v43 * 0.25;
      specialized ShakeHorizontalTextEffect.xrange(for:)(v82);
      v46 = v45;
      v48 = v47;
      v50 = v80;
      v49 = v81;
      v51 = v47 - v45;
      v52 = v78;
      v53 = v79;
      v105 = v81;
      v106 = v78;
      v107[0] = v79;
      *&v90 = v80;
      v54 = swift_allocObject();
      *(v54 + 16) = v102;
      *(v54 + 32) = v49;
      *(v54 + 40) = v52;
      *(v54 + 48) = v53;
      *(v54 + 56) = v50;
      *(v54 + 64) = v44;
      *(v54 + 72) = v51;
      *(v54 + 80) = v46;
      *(v54 + 88) = v48;
      v55 = swift_allocObject();
      v56 = v99;
      *(v55 + 16) = v98;
      *(v55 + 32) = v56;
      *(v55 + 48) = v100;
      *(v55 + 64) = v101;
      *(v55 + 72) = 0;
      v57 = v77;
      *(v55 + 80) = v76;
      *(v55 + 88) = v57;
      *(v55 + 96) = v75;
      *(v55 + 104) = partial apply for closure #2 in closure #2 in ShakeHorizontalTextEffect.configuration(_:);
      *(v55 + 112) = v54;
      v58 = MEMORY[0x1E69E6F90];
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v88 = xmmword_195CC8D00;
      *(inited + 16) = xmmword_195CC8D00;
      *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
      *(inited + 40) = v55;
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v58);
      v60 = swift_initStackObject();
      *(v60 + 16) = v88;
      *(v60 + 32) = inited;
      outlined init with copy of [Text.Effect.Timing.Fragment](&v105, v89, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v106, v89, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
      outlined init with copy of Text.Effect.Timing.GlyphTiming(v107, v89, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
      outlined init with copy of Text.Effect.ChunkCollection(&v90, v89);
      v61 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v60);
      swift_setDeallocating();
      outlined destroy of Text.Effect.Drawable(v60 + 32);
      return v61;
    }

    v63 = v83;
    v83 = *(v83 + 16);
    v84 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v64 = (v63 + 8);
    v65 = (v74 + 8);
    v66 = v88;
    v67 = v42 + 1;
    while (1)
    {
      while (1)
      {
        v68 = v87;
        (v83)(v87, v41 + v84, v66);
        v11 = v86;
        Text.Layout.Line.subscript.getter();
        (*v64)(v68, v66);
        if (v67 - 1 < *(v41 + 16) || v67 - 1 >= *(v41 + 24))
        {
          goto LABEL_45;
        }

        v70 = Text.Layout.Run.font.getter();
        if (v70)
        {
          break;
        }

        (*v65)(v11, v85);
        if (v43 <= 0.0)
        {
          v43 = 0.0;
        }

LABEL_39:
        if (*(v41 + 24) == v67)
        {
          goto LABEL_23;
        }

        ++v67;
      }

      v71 = v70;
      Size = CTFontGetSize(v70);

      (*v65)(v11, v85);
      if (v43 <= Size)
      {
        v43 = Size;
        goto LABEL_39;
      }

      if (v67++ == *(v41 + 24))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_50:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

void closure #2 in closure #2 in ShakeHorizontalTextEffect.configuration(_:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 64);
  v17 = *(a2 + 40) - *(a2 + 32);
  if (v17 >= 0.0)
  {
    v19 = v17 / v16;
    v18 = 0.0;
    if (v19 < 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0 / v16;
    if (v19 < 0.0)
    {
      goto LABEL_8;
    }
  }

  if (v19 <= 1.0)
  {
    v18 = v19;
  }

  else
  {
    v18 = 1.0;
  }

LABEL_8:
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = *(a3 + 32);
  if (*(v20 + 16) <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  outlined init with copy of Text.Effect.Timing.GlyphTiming(v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a1, v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v21 = 0.0;
  if (v18 < 1.0)
  {
    v22 = sin(v18 * -6.0 * 3.0);
    v21 = pow(2.71828183, -v18) * v22;
  }

  if (!__OFSUB__(*a2, a1))
  {
    v23 = *(a2 + 232);
    v25 = *(a2 + 216);
    v24 = *(a2 + 224);
    v26 = *(a2 + 208);
    v27 = 0.0;
    if (*a2 == a1)
    {
      v28 = *(a2 + 240);
    }

    else
    {
      v26 = 0.0;
      v25 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      v28 = 0.0;
    }

    v29 = v25 - v23;
    v30 = v28 + v23;
    MidX = CGRectGetMidX(*&v26);
    if (a5 <= 0.0)
    {
      v33 = 0.5;
    }

    else
    {
      v32 = (MidX - a6) / a5;
      if (v32 >= 0.0)
      {
        if (v32 <= 1.0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 1.0;
        }

        if (v18 >= 1.0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v34 = sin(v18 * -6.0 * 3.0);
        v27 = pow(2.71828183, -v18) * v34;
        if (v27 > 0.0)
        {
          v35 = (1.0 - v33) * v27;
LABEL_30:
          *v42 = v35;
          *(v42 + 1) = v21 * a4;
          memset(&v42[1], 0, 32);
          __asm { FMOV            V0.2D, #1.0 }

          v42[3] = _Q0;
          v43 = 0x3FF0000000000000;
          v44 = 0;
          Text.Effect.TransformContext.record(target:for:spring:)(v42, a1, &v15[*(v12 + 24)], v41);
          Text.Effect.TransformContext.draw(state:keyPath:)(v41, 0, 0, 0, 1);
          outlined destroy of Text.Effect.Timing.GlyphTiming(v15);
          return;
        }

LABEL_29:
        v35 = fabs(v27) * v33;
        goto LABEL_30;
      }

      v33 = 0.0;
    }

    if (v18 >= 1.0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_34:
  __break(1u);
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance ShakeHorizontalTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized ShakeHorizontalTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ShakeHorizontalTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect();
  result = lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect();
  *(a1 + 16) = result;
  return result;
}

double specialized ShakeHorizontalTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[24] = 1;
  v18[16] = 1;
  v21 = xmmword_195CCCD40;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = xmmword_195CCB160;
  v36 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static ShakeHorizontalTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD015ShakeHorizontalcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized ShakeHorizontalTextEffect.configuration(_:)()
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
  v3[5] = closure #1 in ShakeHorizontalTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in ShakeHorizontalTextEffect.configuration(_:);
  *(v4 + 24) = 0;
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[2 * v7];
  v8[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v8[5] = v4;
  return v0;
}

uint64_t *specialized ShakeHorizontalTextEffect.xrange(for:)(uint64_t *result)
{
  v1 = result[5];
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    outlined init with copy of Text.Effect.Keyframes(&v25, v21);

LABEL_45:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = 0;
    v4 = *result;
    v3 = result[1];
    v5 = result[2];
    v6 = -INFINITY;
    v7 = INFINITY;
    while (v1 != v2)
    {
      if (v2 >= v1)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_35;
      }

      v25 = v4;
      swift_beginAccess();
      v8 = *(v4 + 48);
      if (!*(v8 + 16))
      {
        goto LABEL_44;
      }

      outlined init with copy of Text.Effect.Keyframes(&v25, v21);

      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
      if ((v10 & 1) == 0)
      {
        goto LABEL_45;
      }

      v11 = *(*(v8 + 56) + 16 * v9);
      swift_endAccess();
      v12 = *(v11 + 16);
      if (v2 >= v12)
      {
        goto LABEL_36;
      }

      v13 = *(v11 + 32 + 8 * v2);
      if (v2)
      {
        v14 = 0;
        v15 = 0;
        while ((v2 & ~(v2 >> 63)) != v14)
        {
          v16 = *(*(*(v11 + 32 + 8 * v14) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v17 = __OFADD__(v15, v16);
          v15 += v16;
          if (v17)
          {
            goto LABEL_32;
          }

          if (v2 == ++v14)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_32:
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
        goto LABEL_42;
      }

      v15 = 0;
LABEL_17:
      v26[0] = v25;
      v26[1] = v3;
      v26[2] = v5;
      v26[3] = v13;
      v26[4] = v2;
      v26[5] = v12;
      v26[6] = v15;
      v18 = *(*(v13 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v19 = v15 + v18;
      if (__OFADD__(v15, v18))
      {
        goto LABEL_37;
      }

      if (v19 < v15)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v19, v15))
      {
        goto LABEL_39;
      }

      ++v2;

      if (v19 != v15)
      {
        while (v15 < v19)
        {
          Text.Effect.BaseFragment.typographicBounds(for:)(v15, v15 + 1, v22);
          *&v27.origin.x = v22[0];
          *&v27.size.width = v22[2];
          v27.origin.y = *&v22[1] - v23;
          v27.size.height = v23 + v24;
          MidX = CGRectGetMidX(v27);
          if (__OFSUB__(v19, v15 + 1))
          {
            goto LABEL_41;
          }

          if (v6 <= MidX)
          {
            v6 = MidX;
          }

          if (MidX < v7)
          {
            v7 = MidX;
          }

          ++v15;
          if (!--v18)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_40;
      }

LABEL_3:
      result = outlined destroy of Text.Effect.BaseFragment(v26);
      if (__OFSUB__(v1, v2))
      {
        goto LABEL_33;
      }
    }

    if (v7 > v6)
    {
      goto LABEL_43;
    }
  }

  return result;
}

void type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with copy of Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, a3, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t GraphicsContext.draw(_:foregroundColor:options:)()
{
  return MEMORY[0x1EEDDF1B0]();
}

{
  return MEMORY[0x1EEDDF1B8]();
}

uint64_t GraphicsContext.draw(_:options:)()
{
  return MEMORY[0x1EEDDF1E8]();
}

{
  return MEMORY[0x1EEDDF1F8]();
}

uint64_t Path.init(_:)()
{
  return MEMORY[0x1EEDE3018]();
}

{
  return MEMORY[0x1EEDE3020]();
}

uint64_t Text.Layout.Line.characterRanges(runIndices:)()
{
  return MEMORY[0x1EEDE32F0]();
}

{
  return MEMORY[0x1EEDE32F8]();
}

uint64_t Text.Layout.Line.clusters(for:)()
{
  return MEMORY[0x1EEDE3330]();
}

{
  return MEMORY[0x1EEDE3338]();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return MEMORY[0x1EEDE3D78]();
}

{
  return MEMORY[0x1EEDE3D90]();
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}