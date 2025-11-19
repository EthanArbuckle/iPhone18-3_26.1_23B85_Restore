BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.AttributeTracker.Key(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Text.Effect.AttributeTracker.Key.== infix(_:_:)(v5, v7);
}

uint64_t Text.Effect.AttributeTracker.Tracker.commitUpdates()()
{
  v1 = v0;
  *(v0 + 32) = 2 * (*(v0 + 32) == 1);
  v2 = *(v0 + 16);
  if (v2 < 1)
  {

    v19 = MEMORY[0x1E69E7CC8];
    *v1 = MEMORY[0x1E69E7CC8];

    v1[1] = v19;

    v1[3] = v19;
  }

  else
  {
    v3 = *(v0 + 8);
    if (v2 >= *(v3 + 16))
    {
      v10 = *(v0 + 8);
LABEL_19:

      *v0 = v10;
    }

    else
    {
      v4 = 1 << *(v3 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v3 + 64);
      v7 = (v4 + 63) >> 6;

      v9 = 0;
      v10 = v3;
      while (v6)
      {
LABEL_11:
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = v12 | (v9 << 6);
        v14 = *(v3 + 56);
        v15 = *(v3 + 48) + 56 * v13;
        v16 = *(v15 + 16);
        v21[0] = *v15;
        v21[1] = v16;
        v21[2] = *(v15 + 32);
        v22 = *(v15 + 48);
        result = (*(**(v14 + 8 * v13) + 88))(result);
        if (result)
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
          if (v17)
          {
            v20 = result;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v10 = *(v0 + 8);
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
            }

            specialized _NativeDictionary._delete(at:)(v20, v10);

            *(v0 + 8) = v10;
          }
        }
      }

      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v7)
        {

          goto LABEL_19;
        }

        v6 = *(v3 + 64 + 8 * v11);
        ++v9;
        if (v6)
        {
          v9 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Text.Effect.AttributeTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for Text.Effect.AttributeTracker.ValueBox()
{
  result = type metadata accessor for Text.Effect.AttributeTracker.Value();
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

void type metadata completion function for Text.Effect.AttributeTracker.Value()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Spring?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.AttributeTracker.Value(unsigned __int8 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(type metadata accessor for Spring() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v5 + 64);
  v13 = *(v5 + 80);
  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  if (v9)
  {
    v16 = 23;
  }

  else
  {
    v16 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v12 + v13;
  v18 = v12 + v14;
  if (v11 < a2)
  {
    v19 = ((v16 + v15 + ((v18 + ((v17 + (v17 & ~v13)) & ~v13)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v19 <= 3)
    {
      v20 = ((a2 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    v22 = v20 >= 2 ? v21 : 0;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = *&a1[v19];
        if (v23)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v22)
    {
      v23 = a1[v19];
      if (a1[v19])
      {
LABEL_26:
        v24 = (v23 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v25 = *a1;
        }

        else
        {
          v24 = 0;
          v25 = *a1;
        }

        return v11 + (v25 | v24) + 1;
      }
    }

    if (!v11)
    {
      return 0;
    }
  }

  if (v6 >= v10)
  {
    v28 = *(v5 + 48);

    return v28(a1, v6, AssociatedTypeWitness);
  }

  else
  {
    v26 = (*(v8 + 48))((v18 + ((v17 + (&a1[v17] & ~v13)) & ~v13)) & ~v14);
    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for Text.Effect.AttributeTracker.Value(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v33 = v7;
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(type metadata accessor for Spring() - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v7 + 80);
  v16 = v12 + v15;
  v17 = (v12 + v15 + ((v12 + v15) & ~v15)) & ~v15;
  v18 = *(v10 + 80);
  v19 = v12 + v18;
  v20 = (v19 + v17) & ~v18;
  if (v11)
  {
    v21 = *(v10 + 64);
  }

  else
  {
    v21 = *(v10 + 64) + 1;
  }

  v22 = ((v21 + v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 < a3)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v14 >= a2)
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v22] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v22] = 0;
    }

    else if (v9)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!a2)
    {
      return;
    }

LABEL_39:
    if (v8 >= v13)
    {
      v31 = *(v33 + 56);

      v31(a1, a2, v8, AssociatedTypeWitness);
    }

    else
    {
      v27 = ((v19 + ((v16 + (&a1[v16] & ~v15)) & ~v15)) & ~v18);
      if (v13 >= a2)
      {
        v32 = *(v10 + 56);

        v32(v27, (a2 + 1));
      }

      else
      {
        if (v21 <= 3)
        {
          v28 = ~(-1 << (8 * v21));
        }

        else
        {
          v28 = -1;
        }

        if (v21)
        {
          v29 = v28 & (~v13 + a2);
          if (v21 <= 3)
          {
            v30 = v21;
          }

          else
          {
            v30 = 4;
          }

          bzero(v27, v21);
          if (v30 > 2)
          {
            if (v30 == 3)
            {
              *v27 = v29;
              v27[2] = BYTE2(v29);
            }

            else
            {
              *v27 = v29;
            }
          }

          else if (v30 == 1)
          {
            *v27 = v29;
          }

          else
          {
            *v27 = v29;
          }
        }
      }
    }

    return;
  }

  v25 = ~v14 + a2;
  bzero(a1, v22);
  if (v22 <= 3)
  {
    v26 = (v25 >> 8) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v22 <= 3)
  {
    *a1 = v25;
    if (v9 > 1)
    {
LABEL_27:
      if (v9 == 2)
      {
        *&a1[v22] = v26;
      }

      else
      {
        *&a1[v22] = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v9 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v9)
  {
    a1[v22] = v26;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.AttributeTracker.Tracker(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.AttributeTracker.Tracker(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 120 * v3;
        v15 = (v14 + 120 * v6);
        if (120 * v3 < (120 * v6) || result >= v15 + 120 || v3 != v6)
        {
          result = memmove(result, v15, 0x78uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Text.Effect.InteractionMetrics() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v31 = a2 + 64;
    v30 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v34 = v3;
      v8 = v7;
      v9 = 56 * v6;
      v10 = *(v2 + 48) + 56 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = *(v10 + 32);
      v33 = *(v10 + 40);
      v16 = *(v10 + 48);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v11);
      MEMORY[0x19A8BDE60](v12);
      MEMORY[0x19A8BDE60](v14);
      if (v15 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x19A8BDE60](v13);
      }

      v7 = v8;
      if (v16)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x19A8BDE60](v33);
      }

      v3 = v34;
      result = Hasher._finalize()();
      v17 = result & v7;
      v2 = a2;
      if (v34 >= v30)
      {
        v4 = v31;
        if (v17 < v30)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v31;
        if (v17 >= v30)
        {
          goto LABEL_16;
        }
      }

      if (v34 >= v17)
      {
LABEL_16:
        v18 = *(a2 + 48);
        v19 = v18 + 56 * v34;
        v20 = (v18 + v9);
        if (56 * v34 < v9 || v19 >= v20 + 56 || v34 != v6)
        {
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[2];
          *(v19 + 48) = *(v20 + 6);
          *(v19 + 16) = v22;
          *(v19 + 32) = v23;
          *v19 = v21;
        }

        v24 = *(a2 + 56);
        v25 = (v24 + 8 * v34);
        v26 = (v24 + 8 * v6);
        if (v34 != v6 || v25 >= v26 + 1)
        {
          *v25 = *v26;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE60](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of TextEffectsAnimationController.Timing(&v34, v33))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 8 * v16;
      v18 = *(*(v2 + 48) + 8 * v16);
      v16 *= 120;
      v19 = *(v2 + 56) + v16;
      v21 = *(v19 + 80);
      v20 = *(v19 + 96);
      v22 = *(v19 + 64);
      v41 = *(v19 + 112);
      v39 = v21;
      v40 = v20;
      v38 = v22;
      v24 = *v19;
      v23 = *(v19 + 16);
      v25 = *(v19 + 48);
      v36 = *(v19 + 32);
      v37 = v25;
      v34 = v24;
      v35 = v23;
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v16;
      v27 = v34;
      v28 = v35;
      v29 = v37;
      *(v26 + 32) = v36;
      *(v26 + 48) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      v30 = v38;
      v31 = v39;
      v32 = v40;
      *(v26 + 112) = v41;
      *(v26 + 80) = v31;
      *(v26 + 96) = v32;
      *(v26 + 64) = v30;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>);
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.ClusterIndex, Int>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, CGFloat>(0, &lazy cache variable for type metadata for _DictionaryStorage<Double, Text.Effect.BaseFragment>);
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
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v17 *= 56;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 48);
        v26 = *(v20 + 32);
        *(*(v4 + 48) + v18) = v19;
        v27 = *(v4 + 56) + v17;
        *v27 = v21;
        *(v27 + 8) = v22;
        *(v27 + 16) = v23;
        *(v27 + 24) = v24;
        *(v27 + 32) = v26;
        *(v27 + 48) = v25;
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
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.GlyphIndex, Int>, lazy protocol witness table accessor for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex);
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.FragmentIdentifier, Int>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Text.Effect.AttributeTracker.Key, Text.Effect.AttributeTracker.AnyValue>();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *(v20 + 24);
        v22 = *(v20 + 32);
        v23 = *(v20 + 40);
        v24 = *(v20 + 48);
        v25 = *(*(v2 + 56) + v17);
        v26 = *(v4 + 48) + v19;
        v27 = *(v20 + 8);
        *v26 = *v20;
        *(v26 + 8) = v27;
        *(v26 + 24) = v21;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        *(v26 + 48) = v24;
        *(*(v4 + 56) + v17) = v25;
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
  v2 = type metadata accessor for Text.Effect.InteractionMetrics();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<TextRenderLayer.SegmentIdentifierKey, Text.Effect.InteractionMetrics>();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of Text.Effect.InteractionMetrics(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = outlined init with take of Text.Effect.InteractionMetrics(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Key, Text.Effect.KeyframeLayout>, lazy protocol witness table accessor for type Text.Effect.Key and conformance Text.Effect.Key);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
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
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, [Text.Effect.KeyframeLayout.Fragment]>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyLayoutState>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.FragmentIdentifier, Text.Effect.Drawable>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier);
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
  type metadata accessor for _DictionaryStorage<Int, CGFloat>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, CGFloat>);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.RelativeIdentifierKey, CGFloat>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, FragmentIdentifierOffsetMap.Entry>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Set<Int>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.BasePhaseConfiguration>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
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

void *specialized _NativeDictionary.copy()(unint64_t *a1, void (*a2)(void))
{
  v3 = v2;
  type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(0, a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextFilterEffect>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>);
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<UUID, TextRenderSurface>();
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v33;
        v21 = *(v33 + 72) * v19;
        v23 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v21, v31);
        v24 = *(*(v3 + 56) + 8 * v19);
        (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        *(*(v15 + 56) + 8 * v19) = v24;
        result = v24;
        v13 = v34;
      }

      while (v34);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v18 = *(v27 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextAnimator>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
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

id specialized _NativeDictionary.copy()(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.AttributeTracker.Key, Text.Effect.AttributeTracker.AnyValue>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.AttributeTracker.Key, Text.Effect.AttributeTracker.AnyValue>)
  {
    type metadata accessor for Text.Effect.AttributeTracker.AnyValue();
    lazy protocol witness table accessor for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.AttributeTracker.Key, Text.Effect.AttributeTracker.AnyValue>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key()
{
  result = lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key;
  if (!lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key;
  if (!lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Key and conformance Text.Effect.AttributeTracker.Key);
  }

  return result;
}

BOOL specialized static Text.Effect.AttributeTracker.Key.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = *(a2 + 8);
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 != v2)
  {
    return 0;
  }

  v4 = *(result + 16);
  v5 = *(a2 + 16);
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_21;
  }

  if (v5 != v4)
  {
    return 0;
  }

  if ((*(result + 32) & 1) == 0)
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    v6 = *(result + 24);
    v7 = *(a2 + 24);
    if (!__OFSUB__(v7, v6))
    {
      if (v7 != v6)
      {
        return 0;
      }

      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (*(result + 48))
  {
    return (*(a2 + 48) & 1) != 0;
  }

  if (*(a2 + 48))
  {
    return 0;
  }

  v8 = *(result + 40);
  v9 = *(a2 + 40);
  if (!__OFSUB__(v9, v8))
  {
    return v9 == v8;
  }

LABEL_23:
  __break(1u);
  return result;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>)
  {
    type metadata accessor for Text.Effect.AnyAnimationInfo();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyAnimationInfo>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<TextRenderLayer.SegmentIdentifierKey, Text.Effect.InteractionMetrics>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<TextRenderLayer.SegmentIdentifierKey, Text.Effect.InteractionMetrics>)
  {
    type metadata accessor for Text.Effect.InteractionMetrics();
    lazy protocol witness table accessor for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<TextRenderLayer.SegmentIdentifierKey, Text.Effect.InteractionMetrics>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.InteractionMetrics(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.InteractionMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Text.Effect.InteractionMetrics(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.InteractionMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextAnimator>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, TextAnimator>)
  {
    type metadata accessor for TextAnimator();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, TextAnimator>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>)
  {
    type metadata accessor for Text.Effect.AnyStateSnapshot();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyStateSnapshot>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextFilterEffect>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextFilterEffect>)
  {
    type metadata accessor for AnyTextFilterEffect();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextFilterEffect>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>)
  {
    type metadata accessor for AnyTextEffect();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextEffect>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>)
  {
    type metadata accessor for AnyTextAnimation();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, AnyTextAnimation>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, [Text.Effect.KeyframeLayout.Fragment]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, [Text.Effect.KeyframeLayout.Fragment]>)
  {
    type metadata accessor for Double?(255, &lazy cache variable for type metadata for [Text.Effect.KeyframeLayout.Fragment], &type metadata for Text.Effect.KeyframeLayout.Fragment, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, [Text.Effect.KeyframeLayout.Fragment]>);
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyLayoutState>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyLayoutState>)
  {
    type metadata accessor for Text.Effect.AnyLayoutState();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Text.Effect.AnyLayoutState>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Set<Int>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Set<Int>>)
  {
    type metadata accessor for Set<Int>();
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Set<Int>>);
    }
  }
}

void type metadata accessor for Set<Int>()
{
  if (!lazy cache variable for type metadata for Set<Int>)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<Int>);
    }
  }
}

uint64_t specialized Text.Effect.AttributeTracker.Tracker.deepCopy()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v11 >= v8)
    {

      *a4 = v10;
      *(a4 + 8) = v10;
      *(a4 + 16) = a2;
      *(a4 + 24) = a3;
      *(a4 + 32) = 0;
      return result;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = *(a1 + 56);
    v14 = *(a1 + 48) + 56 * v12;
    v15 = *(v14 + 16);
    v39 = *v14;
    v40 = v15;
    v41 = *(v14 + 32);
    v42 = *(v14 + 48);
    v16 = *(**(v13 + 8 * v12) + 80);

    v18 = v16(v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v10;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(&v39);
    v22 = v10[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v10[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v20;
        specialized _NativeDictionary.copy()();
        v20 = v32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(&v39);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    v10 = v38;
    if (v26)
    {
      *(v38[7] + 8 * v20) = v18;

      v9 = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v38[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v38[6] + 56 * v20;
      v29 = v40;
      *v28 = v39;
      *(v28 + 16) = v29;
      *(v28 + 32) = v41;
      *(v28 + 48) = v42;
      *(v38[7] + 8 * v20) = v18;

      v30 = v38[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v38[2] = v31;
      v9 = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.AttributeTracker.Key(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 49))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.AttributeTracker.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.AttributeTracker.Tracker.RestartPhase and conformance Text.Effect.AttributeTracker.Tracker.RestartPhase()
{
  result = lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Tracker.RestartPhase and conformance Text.Effect.AttributeTracker.Tracker.RestartPhase;
  if (!lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Tracker.RestartPhase and conformance Text.Effect.AttributeTracker.Tracker.RestartPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.AttributeTracker.Tracker.RestartPhase and conformance Text.Effect.AttributeTracker.Tracker.RestartPhase);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, TextEffectsAnimationController.Timing>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex()
{
  result = lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex;
  if (!lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.GlyphIndex and conformance Text.Effect.GlyphIndex);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<Int, CGFloat>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _DictionaryStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState()
{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState;
  if (!lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>);
    }
  }
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.Layout.DisplayList(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x200uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = v2[1];
    v9 = (*v2 + (v7 << 7));
    v10 = v9[2];
    v11 = v9[3];
    v12 = v9[5];
    *(result + 10) = v9[4];
    *(result + 11) = v12;
    *(result + 8) = v10;
    *(result + 9) = v11;
    v13 = v9[6];
    v14 = v9[7];
    v15 = v9[9];
    *(result + 14) = v9[8];
    *(result + 15) = v15;
    *(result + 12) = v13;
    *(result + 13) = v14;
    v21 = v9[9];
    v16 = v8 + *(result + 29);
    memmove(result, v9 + 2, 0x68uLL);
    *(v6 + 13) = v16;
    *(v6 + 7) = v21;
    v17 = *(v6 + 5);
    *(v6 + 20) = *(v6 + 4);
    *(v6 + 21) = v17;
    v18 = *(v6 + 7);
    *(v6 + 22) = *(v6 + 6);
    *(v6 + 23) = v18;
    v19 = *(v6 + 1);
    *(v6 + 16) = *v6;
    *(v6 + 17) = v19;
    v20 = *(v6 + 3);
    *(v6 + 18) = *(v6 + 2);
    *(v6 + 19) = v20;
    outlined init with copy of Text.Effect.DisplayInfo(v6 + 128, v6 + 384);
    return protocol witness for Collection.subscript.read in conformance Text.Effect.Layout.DisplayList;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.Layout.DisplayList(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of Text.Effect.DisplayInfo(*a1);

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Effect.Layout.DisplayList@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
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

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.Layout.DisplayList@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t type metadata accessor for Text.Effect.Layout.Fragment()
{
  result = type metadata singleton initialization cache for Text.Effect.Layout.Fragment;
  if (!type metadata singleton initialization cache for Text.Effect.Layout.Fragment)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Text.Effect.Layout.Fragment()
{
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_4(319, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.Layout.Fragment.Storage(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Text.Effect.Layout.Fragment.Storage(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList()
{
  result = lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList;
  if (!lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList;
  if (!lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList;
  if (!lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList;
  if (!lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList);
  }

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance Text.Effect.Layout.DisplayList@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.Layout.DisplayList()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, *(v0 + 8));

  return v1;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.Layout.DisplayList> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_4(255, a2, lazy protocol witness table accessor for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList, &type metadata for Text.Effect.Layout.DisplayList, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.Layout.DisplayList> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_4(255, &lazy cache variable for type metadata for Slice<Text.Effect.Layout.DisplayList>, lazy protocol witness table accessor for type Text.Effect.Layout.DisplayList and conformance Text.Effect.Layout.DisplayList, &type metadata for Text.Effect.Layout.DisplayList, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in JitterTextEffect.configuration(_:)(uint64_t a1, __int128 *a2)
{
  v3 = type metadata accessor for Text.Layout.Line();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Text.Layout.Run();
  v7 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = a2[1];
  v60 = *a2;
  v61 = v13;
  v62 = a2[2];
  v63 = *(a2 + 6);
  v49 = specialized static Text.Effect.ClusterTransformMap.byWords(fragment:)(&v60);
  v48 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  v55 = v15;
  *(v15 + 64) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 7;
  v16 = *(&v61 + 1);
  *&v59 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
  v17 = *(*(&v61 + 1) + 16);
  v18 = 0.0;
  v19 = v17 == *(*(&v61 + 1) + 24);
  v47 = v4;
  v46 = v7;
  if (v19)
  {
    v31 = 0.0;
    goto LABEL_4;
  }

  v56 = *(v4 + 16);
  v57 = (v4 + 16);
  v29 = (v4 + 8);
  v30 = (v7 + 8);
  v31 = 0.0;
LABEL_6:
  v32 = v17 + 1;
  while (1)
  {
    v17 = v32;
    v33 = v32 - 1;
    v56(v6, v16 + v59, v3);
    Text.Layout.Line.subscript.getter();
    result = (*v29)(v6, v3);
    if (v33 < *(v16 + 16) || v33 >= *(v16 + 24))
    {
      break;
    }

    v35 = Text.Layout.Run.font.getter();
    if (!v35)
    {
      (*v30)(v12, v58);
      if (v31 <= 0.0)
      {
        v31 = 0.0;
      }

LABEL_20:
      if (*(v16 + 24) == v17)
      {
LABEL_4:
        v20 = *(v16 + 16);
        if (v20 == v17)
        {
LABEL_5:
          v21 = swift_allocObject();
          v22 = v48;
          *(v21 + 16) = v49;
          *(v21 + 24) = v22;
          v23 = v55;
          *(v21 + 32) = v54;
          *(v21 + 40) = v23;
          *(v21 + 48) = v53;
          *(v21 + 56) = v31 * 0.2;
          v24 = v52;
          *(v21 + 64) = v50;
          *(v21 + 72) = v24;
          *(v21 + 80) = v18 * 0.3;
          *(v21 + 88) = v51;
          _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
          inited = swift_initStackObject();
          v59 = xmmword_195CC8D00;
          *(inited + 16) = xmmword_195CC8D00;
          *(inited + 32) = partial apply for closure #1 in closure #1 in JitterTextEffect.configuration(_:);
          *(inited + 40) = v21;
          _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>);
          v26 = swift_initStackObject();
          *(v26 + 16) = v59;
          *(v26 + 32) = inited;

          v27 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v26);
          swift_setDeallocating();
          outlined destroy of Text.Effect.Drawable(v26 + 32);

          return v27;
        }

        v57 = *(v47 + 16);
        v38 = (v47 + 8);
        v39 = (v46 + 8);
        v18 = 0.0;
        for (i = v20 + 1; ; ++i)
        {
          while (2)
          {
            v57(v6, v16 + v59, v3);
            Text.Layout.Line.subscript.getter();
            result = (*v38)(v6, v3);
            if (i - 1 < *(v16 + 16) || i - 1 >= *(v16 + 24))
            {
              goto LABEL_39;
            }

            v42 = Text.Layout.Run.font.getter();
            if (v42)
            {
              v43 = v42;
              Size = CTFontGetSize(v42);

              (*v39)(v9, v58);
              if (v18 > Size)
              {
                v19 = i++ == *(v16 + 24);
                if (v19)
                {
                  goto LABEL_5;
                }

                continue;
              }

              v18 = Size;
            }

            else
            {
              (*v39)(v9, v58);
              if (v18 <= 0.0)
              {
                v18 = 0.0;
              }
            }

            break;
          }

          if (*(v16 + 24) == i)
          {
            goto LABEL_5;
          }
        }
      }

      goto LABEL_6;
    }

    v36 = v35;
    v37 = CTFontGetSize(v35);

    (*v30)(v12, v58);
    if (v31 <= v37)
    {
      v31 = v37;
      goto LABEL_20;
    }

    v32 = v17 + 1;
    if (v17 == *(v16 + 24))
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in JitterTextEffect.configuration(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v20 = *(a2 + 64);
  v21 = *(a2 + 40) - *(a2 + 32);
  if (v21 >= 0.0)
  {
    v23 = v21 / v20;
    v22 = 0.0;
    if (v23 < 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0.0;
    v23 = 0.0 / v20;
    if (v23 < 0.0)
    {
      goto LABEL_8;
    }
  }

  if (v23 <= 1.0)
  {
    v22 = v23;
  }

  else
  {
    v22 = 1.0;
  }

LABEL_8:
  Text.Effect.ClusterTransformMap.subscript.getter(a3, a4, v52);
  if (v56)
  {
    if (__OFSUB__(*a2, a1))
    {
      __break(1u);
      return;
    }

    v24 = vdup_n_s32(*a2 == a1);
    v25.i64[0] = v24.u32[0];
    v25.i64[1] = v24.u32[1];
    v26 = vcltzq_s64(vshlq_n_s64(v25, 0x3FuLL));
    v27 = vandq_s8(*(a2 + 224), v26);
    v28 = vandq_s8(*(a2 + 208), v26);
    v29 = vandq_s8(*(a2 + 240), v26);
    v30 = v27;
  }

  else
  {
    v28 = v53;
    v30 = v54;
    v29 = v55;
  }

  v50 = v28;
  v51 = v30;
  v69 = v28;
  v70 = v30;
  v49 = v29;
  v71 = v29;
  swift_beginAccess();
  if (*(a5 + 16) != v22 || (swift_beginAccess(), (a6[4].i8[0] & 1) != 0) || (v31 = a6[2], v66 = a6[1], v67 = v31, v68 = a6[3], (static Text.Layout.TypographicBounds.== infix(_:_:)() & 1) == 0))
  {
    swift_beginAccess();
    a6[1] = v50;
    a6[2] = v51;
    a6[3] = v49;
    a6[4].i8[0] = 0;
    swift_beginAccess();
    *(a5 + 16) = v22;
    swift_beginAccess();
    v32 = 214013 * *(a8 + 16) + 2531011;
    *(a8 + 16) = v32;
    v33 = pow(v22, 0.75);
    v34 = sin(fabs(sqrt(v22)) + v33);
    v35 = (1.0 - v22) * v34 * ((1.0 - v22) * v34);
    swift_beginAccess();
    *(a7 + 16) = v35 * ((HIWORD(v32) * 0.0000152590219 + -0.5 + HIWORD(v32) * 0.0000152590219 + -0.5) * a9);
    swift_beginAccess();
    v36 = 214013 * v32 + 2531011;
    *(a8 + 16) = v36;
    swift_beginAccess();
    *(a11 + 16) = v35 * ((HIWORD(v36) * 0.0000152590219 + -0.5 + HIWORD(v36) * 0.0000152590219 + -0.5) * a10);
    swift_beginAccess();
    v37 = 214013 * v36 + 2531011;
    *(a8 + 16) = v37;
    v38 = v35 * ((HIWORD(v37) * 0.0000152590219 + -0.5 + HIWORD(v37) * 0.0000152590219 + -0.5) * 0.25);
    swift_beginAccess();
    *(a12 + 16) = v38;
  }

  *&v72.size.width = v51.i64[0];
  *&v72.origin.x = v50.i64[0];
  v72.origin.y = *&v50.i64[1] - *&v51.i64[1];
  v72.size.height = *&v51.i64[1] + *v49.i64;
  MidX = CGRectGetMidX(v72);
  *&v73.origin.x = v50.i64[0];
  *&v73.size.width = v51.i64[0];
  v73.origin.y = *&v50.i64[1] - *&v51.i64[1];
  v73.size.height = *&v51.i64[1] + *v49.i64;
  MinY = CGRectGetMinY(v73);
  swift_beginAccess();
  v41 = *(a12 + 16);
  swift_beginAccess();
  v42 = *(a7 + 16);
  swift_beginAccess();
  v43 = *(a11 + 16);
  *&v58 = 0;
  *(&v58 + 1) = v42;
  v59 = v43;
  v60 = v41;
  v61 = MidX;
  v62 = MinY;
  __asm { FMOV            V0.2D, #1.0 }

  v63 = _Q0;
  v64 = 0x3FF0000000000000;
  v65 = 1;
  Text.Effect.TransformContext.record(position:for:)(&v58, a1, v57);
  Text.Effect.TransformContext.draw(state:keyPath:)(v57, 0, 0, 0, 1);
}

unint64_t instantiation function for generic protocol witness table for JitterTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type JitterTextEffect and conformance JitterTextEffect();
  result = lazy protocol witness table accessor for type JitterTextEffect and conformance JitterTextEffect();
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized JitterTextEffect.configuration(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = partial apply for closure #1 in JitterTextEffect.configuration(_:);
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

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v7;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  result = v6(a1, v10, v12);
  *a4 = result;
  return result;
}

uint64_t Text.Effect.DisplayInfo.DrawOperation.resolve(_:fragment:displacement:in:)(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5)
{
  *&v329 = a2;
  *&v333 = a1;
  v351 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for EnvironmentValues();
  v331 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v330 = (v286 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v320 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v321 = v286 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = COERCE_DOUBLE(type metadata accessor for Text.Effect.PathInterpolator.Cluster(0));
  v14 = *(*&v13 - 8);
  v325 = v13;
  v326 = v14;
  MEMORY[0x1EEE9AC00](*&v13);
  *&v327 = v286 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v316);
  v17 = v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v298 = v286 - v19;
  type metadata accessor for (CGPoint, Text.Layout.RunSlice)(0, &lazy cache variable for type metadata for (CGPoint, Text.Layout.RunSlice), type metadata accessor for CGPoint, MEMORY[0x1E6981060]);
  v315 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v314 = v286 - v21;
  type metadata accessor for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>(0, &lazy cache variable for type metadata for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>, MEMORY[0x1E69E6AA0]);
  v291 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v290 = v286 - v23;
  type metadata accessor for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>(0, &lazy cache variable for type metadata for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator, MEMORY[0x1E69E6A98]);
  v293 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v324 = (v286 - v25);
  *&v328 = type metadata accessor for Text.Layout.RunSlice();
  v322 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  *&v334 = v286 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v313 = v286 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v289 = v286 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v288 = v286 - v32;
  v294 = type metadata accessor for Text.Layout.Cluster();
  v33 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v35 = v286 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v292 = v286 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a3;
  v40 = *(a3 + 1);
  v41 = a3[2];
  v42 = a3[3];
  v43 = *(a3 + 32);
  v295 = a3;
  v44 = *(a3 + 5);
  v317 = v39;
  v336[0] = v39;
  *&v336[1] = v40;
  v45 = v40;
  v323 = v41;
  v336[2] = v41;
  v336[3] = v42;
  LODWORD(v332) = v43;
  v337 = v43;
  v338 = v44;
  v46 = *(v5 + 176);
  v339[10] = *(v5 + 160);
  v339[11] = v46;
  v339[12] = *(v5 + 192);
  v340 = *(v5 + 208);
  v47 = *(v5 + 112);
  v339[6] = *(v5 + 96);
  v339[7] = v47;
  v48 = *(v5 + 144);
  v339[8] = *(v5 + 128);
  v339[9] = v48;
  v49 = *(v5 + 48);
  v339[2] = *(v5 + 32);
  v339[3] = v49;
  v50 = *(v5 + 80);
  v339[4] = *(v5 + 64);
  v339[5] = v50;
  v51 = *(v5 + 16);
  v339[0] = *v5;
  v339[1] = v51;
  v52 = _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOg(v339);
  v53 = destructiveProjectEnumData for Text.Effect.DisplayInfo.DrawOperation(v339);
  if (v52 > 1)
  {
    if (v52 != 2)
    {
      v116 = *(v53 + 8);
      *&v334 = *v53;
      *&v333 = v116;
      v117 = *(v53 + 24);
      *&v332 = *(v53 + 16);
      *&v329 = v117;
      v118 = *(v53 + 64);
      v119 = *(v53 + 72);
      v121 = *(v53 + 80);
      v120 = *(v53 + 88);
      v122 = *(v53 + 48) + a4;
      v123 = *(v53 + 56) + a5;
      v124 = *(v53 + 96);
      v125 = v317;

      v126 = Color.opacity(_:)();
      CGAffineTransformMakeTranslation(&t1, v119, v121);
      CGAffineTransformScale(&v341, &t1, v120, v124);
      v127 = *&v342[16];
      v128 = *&v342[24];
      v327 = *v342;
      v328 = v341;
      v129 = __sincos_stret(v118);
      t1.a = v129.__cosval;
      t1.b = v129.__sinval;
      t1.c = -v129.__sinval;
      t1.d = v129.__cosval;
      t1.tx = 0.0;
      t1.ty = 0.0;
      v341 = v328;
      *v342 = v327;
      *&v342[16] = v127;
      *&v342[24] = v128;
      CGAffineTransformConcat(&v335, &t1, &v341);
      t1 = v335;
      CGAffineTransformTranslate(&v341, &t1, -v119, -v121);
      *&t1.a = v341;
      *&t1.c = *v342;
      *&t1.tx = *&v342[16];
      CGAffineTransformTranslate(&v341, &t1, v122, v123);
      v130 = v341;
      v131 = *v342;
      v132 = *&v342[8];
      v133 = *&v342[16];
      v134 = *&v342[24];
      *&t1.a = v341;
      t1.c = *v342;
      t1.d = *&v342[8];
      t1.tx = *&v342[16];
      t1.ty = *&v342[24];
      if (CGAffineTransformIsIdentity(&t1))
      {
        v136 = v330;
        v135 = v331;
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v125 = v336[0];
        }

        else
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v259 = swift_allocObject();
          *(v259 + 104) = 0u;
          *(v259 + 120) = 0u;
          *(v259 + 136) = 0u;
          __asm { FMOV            V0.2D, #1.0 }

          *(v259 + 152) = _Q0;
          *(v259 + 168) = 0x3FF0000000000000;
          *(v259 + 176) = 0;
          *(v259 + 16) = *(v125 + 16);
          v261 = *(v125 + 40);
          v262 = *(v125 + 56);
          *(v259 + 24) = *(v125 + 24);
          *(v259 + 40) = v261;
          *(v259 + 56) = v262;
          *(v259 + 72) = *(v125 + 72);
          *&v328 = v126;
          v263 = *(v125 + 184);
          v264 = *(v125 + 192);
          v265 = v9;
          v266 = *(v125 + 200);
          v267 = *(v125 + 208);
          v268 = *(v125 + 216);
          *(v259 + 184) = v263;
          *(v259 + 192) = v264;
          *(v259 + 200) = v266;
          *(v259 + 208) = v267;
          *(v259 + 216) = v268;
          v269 = *(v125 + 96);
          *(v259 + 80) = *(v125 + 80);
          *(v259 + 96) = v269;

          v270 = v267;
          v9 = v265;
          outlined copy of Text.Effect.StopCollector?(v263, v264, v266, v270);

          v336[0] = v259;
          v125 = v259;
        }

        v136 = v330;
        v135 = v331;
        *&t1.a = v130;
        t1.c = v131;
        t1.d = v132;
        t1.tx = v133;
        t1.ty = v134;
        if (!CGAffineTransformIsIdentity(&t1))
        {
          v271 = *(v125 + 24);
          v272 = *(v125 + 40);
          *&t1.a = v130;
          t1.c = v131;
          t1.d = v132;
          t1.tx = v133;
          t1.ty = v134;
          v341 = v271;
          *v342 = v272;
          *&v342[16] = *(v125 + 56);
          CGAffineTransformConcat(&v335, &t1, &v341);
          v273 = *&v335.c;
          v274 = *&v335.tx;
          *(v125 + 24) = *&v335.a;
          *(v125 + 40) = v273;
          *(v125 + 56) = v274;
        }
      }

      Path.init(_:)();
      v333 = v341;
      v334 = *v342;
      v275 = v342[16];
      EnvironmentValues.init()();
      Color.resolve(in:)();
      v277 = v276;
      v279 = v278;
      v281 = v280;
      v283 = v282;
      (*(v135 + 8))(v136, v9);
      if ((*(v125 + 96) & 1) == 0)
      {
        v277 = *(v125 + 80);
        v279 = *(v125 + 84);
        v281 = *(v125 + 88);
        v283 = *(v125 + 92);
      }

      v284 = v334;
      *v17 = v333;
      *(v17 + 1) = v284;
      v17[32] = v275;
      *(v17 + 9) = v277;
      *(v17 + 10) = v279;
      *(v17 + 11) = v281;
      *(v17 + 12) = v283;
      swift_storeEnumTagMultiPayload();
      *&t1.a = v341;
      *&t1.c = *v342;
      LOBYTE(t1.tx) = v342[16];
      outlined init with copy of Path.Storage(&t1, &v335);
      Text.Effect.DrawingContext.Storage.append(_:)(v17);

      outlined destroy of Path(&v341);
      v89 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind;
      v90 = v17;
      goto LABEL_66;
    }
  }

  else
  {
    if (!v52)
    {
      v54 = *(v53 + 8);
      v55 = *(v53 + 16);
      v56 = *(v53 + 24);
      v312 = *(v53 + 32);
      v57 = *(v53 + 40);
      v58 = *(v53 + 48);
      v310 = v56;
      v311 = v57;
      v59 = *(v53 + 64);
      v308 = *(v53 + 56);
      v309 = v58;
      v60 = *(v53 + 76);
      v306 = *(v53 + 84);
      v307 = v60;
      v61 = v317;
      v62 = *(v317 + 72);
      v63 = v59 * v62;
      v305 = *(v53 + 92);

      v64 = v294;
      if (v63 != v62)
      {
        v61 = v317;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v65 = swift_allocObject();
          *(v65 + 24) = 0x3FF0000000000000;
          *(v65 + 32) = 0;
          *(v65 + 40) = 0;
          *(v65 + 48) = 0x3FF0000000000000;
          *(v65 + 56) = 0;
          *(v65 + 64) = 0;
          *(v65 + 80) = 0;
          *(v65 + 88) = 0;
          *(v65 + 72) = 0x3FF0000000000000;
          *(v65 + 96) = 1;
          *(v65 + 104) = 0u;
          *(v65 + 120) = 0u;
          *(v65 + 136) = 0u;
          __asm { FMOV            V1.2D, #1.0 }

          *(v65 + 152) = _Q1;
          *(v65 + 168) = 0x3FF0000000000000;
          *(v65 + 176) = 0;
          *(v65 + 184) = 0u;
          *(v65 + 200) = 0u;
          *(v65 + 216) = 0;
          v71 = v317;
          *(v65 + 16) = *(v317 + 16);
          v72 = *(v71 + 40);
          v73 = *(v71 + 56);
          *(v65 + 24) = *(v71 + 24);
          *(v65 + 40) = v72;
          *(v65 + 56) = v73;
          *(v65 + 72) = *(v71 + 72);
          v74 = *(v71 + 184);
          v75 = *(v71 + 192);
          v77 = *(v71 + 208);
          v330 = *(v71 + 200);
          v76 = v330;
          v331 = v74;
          v326 = *(v71 + 216);
          v78 = v326;
          *&v327 = v77;
          *(v65 + 184) = v74;
          *(v65 + 192) = v75;
          *(v65 + 200) = v76;
          *(v65 + 208) = v77;
          *(v65 + 216) = v78;
          LOBYTE(v74) = *(v71 + 96);
          *(v65 + 80) = *(v71 + 80);
          *(v65 + 96) = v74;

          outlined copy of Text.Effect.StopCollector?(v331, v75, v330, v327);
          v61 = v65;

          v336[0] = v65;
        }

        *(v61 + 72) = v63;
      }

      v79 = *(v329 + 48);
      _VF = __OFSUB__(v333, v79);
      v80 = v333 - v79;
      if (!_VF)
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v81 = *(*(v329 + 24) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
        if (v80 >= *(v81 + 16))
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        *&v333 = v61;
        v82 = *(v33 + 16);
        v82(v35, v81 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v80, v64);
        v83 = v292;
        v82(v292, v35, v64);
        v84 = *(v37 + 36);
        v85 = lazy protocol witness table accessor for type [CGPoint] and conformance [A](&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078]);
        dispatch thunk of Collection.startIndex.getter();
        (*(v33 + 8))(v35, v64);
        v86 = v83;
        dispatch thunk of Collection.endIndex.getter();
        v87 = v293;
        v88 = v324;
        if (*&v83[v84] == *&t1.a)
        {
LABEL_11:
          v89 = type metadata accessor for IndexingIterator<Text.Layout.Cluster>;
          v90 = v86;
LABEL_66:
          outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v90, v89);
        }

        v325 = v45;
        v326 = v42;
        *&v327 = v323;
        v303 = v55 + a5;
        v304 = v54 + a4;
        v331 = (v322 + 16);
        v323 = (v322 + 32);
        v302 = (v322 + 8);
        v300 = -v312;
        v301 = -v44;
        v299 = -v311;
        v286[1] = v85;
        v287 = v84;
        while (1)
        {
          v146 = dispatch thunk of Collection.subscript.read();
          v147 = v288;
          v148 = v328;
          v330 = *v331;
          v330(v288);
          v146(&t1, 0);
          dispatch thunk of Collection.formIndex(after:)();
          Text.Layout.RunSlice.pointSize.getter();
          v150 = v149;
          v151 = Text.Layout.RunSlice.positions.getter();
          v152 = v290;
          v153 = *(v291 + 52);
          v154 = *v323;
          (*v323)(&v290[v153], v147, v148);
          *v88 = v151;
          v88[1] = 0;
          v322 = v154;
          (v154)(v289, &v152[v153], v148);
          v155 = v88 + *(v87 + 52);
          lazy protocol witness table accessor for type [CGPoint] and conformance [A](&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
          dispatch thunk of Sequence.makeIterator()();
          v321 = *(v151 + 16);
          if (v321)
          {
            break;
          }

LABEL_33:
          v143 = v332;
LABEL_34:
          v87 = v293;
          v144 = v324;
          *(v324 + *(v293 + 56)) = 1;
          outlined destroy of Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator(v144);
          v86 = v292;
          dispatch thunk of Collection.endIndex.getter();
          v145 = *&v86[v287];
          LODWORD(v332) = v143;
          v88 = v144;
          if (v145 == *&t1.a)
          {
            goto LABEL_11;
          }
        }

        v320 = v155;
        v156 = 0;
        v296 = -(v44 * v150);
        v297 = v44 * v150;
        v157 = (v151 + 40);
        v319 = v150;
        v158 = v298;
        v318 = v151;
        while (v156 < *(v151 + 16))
        {
          v160 = *(v157 - 1);
          v161 = *v157;
          v324[1] = ++v156;
          type metadata accessor for IndexingIterator<Text.Layout.RunSlice>();
          v163 = *(v162 + 36);
          lazy protocol witness table accessor for type [CGPoint] and conformance [A](&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
          v164 = v320;
          v165 = v328;
          dispatch thunk of Collection.endIndex.getter();
          if (*&v164[v163] == *&t1.a)
          {
            goto LABEL_33;
          }

          v166 = v157;
          v167 = v158;
          v168 = dispatch thunk of Collection.subscript.read();
          v169 = v313;
          v330(v313);
          v168(&t1, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v170 = v314;
          v171 = *(v315 + 48);
          v172 = v169;
          v173 = v322;
          (v322)(&v314[v171], v172, v165);
          v173(v334, &v170[v171], v165);
          if (v332 & 1 | (v150 != v325))
          {
            CGAffineTransformMakeScale(&t1, v297, v296);
            tx = t1.tx;
            ty = t1.ty;
            v332 = *&t1.a;
            v329 = *&t1.c;
            v176 = v333;

            *&t1.a = v332;
            *&t1.c = v329;
            t1.tx = tx;
            t1.ty = ty;
            RBShapeGetFontQuantizationLevel();
            v179 = v295;
            v295[1] = v150;
            *(v179 + 2) = v177;
            *(v179 + 3) = v178;
            *(v179 + 32) = 0;
            v325 = v150;
          }

          else
          {
            v176 = v333;

            v178 = v326;
            v177 = v327;
          }

          t1.b = 0.0;
          t1.c = 0.0;
          t1.a = v44;
          t1.d = v301;
          t1.tx = v44 * v160;
          t1.ty = v44 * v161;
          v326 = v178;
          *&v327 = v177;
          RBShapeGetPredictedFontQuantizationError();
          v181 = v180 / v44;
          v183 = v182 / v44;
          v158 = v167;
          v184 = v166;
          if (v180 / v44 != 0.0 || (v185 = v176, v183 != 0.0))
          {
            v185 = v176;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Text.Effect.DrawingContext.Storage();
              v185 = swift_allocObject();
              *(v185 + 24) = 0x3FF0000000000000;
              *(v185 + 32) = 0;
              *(v185 + 40) = 0;
              *(v185 + 48) = 0x3FF0000000000000;
              *(v185 + 56) = 0;
              *(v185 + 64) = 0;
              *(v185 + 80) = 0;
              *(v185 + 88) = 0;
              *(v185 + 72) = 0x3FF0000000000000;
              *(v185 + 96) = 1;
              *(v185 + 104) = 0u;
              *(v185 + 120) = 0u;
              *(v185 + 136) = 0u;
              __asm { FMOV            V0.2D, #1.0 }

              *(v185 + 152) = _Q0;
              *(v185 + 168) = 0x3FF0000000000000;
              *(v185 + 176) = 0;
              *(v185 + 184) = 0u;
              *(v185 + 200) = 0u;
              *(v185 + 216) = 0;
              *(v185 + 16) = *(v176 + 16);
              v187 = *(v176 + 40);
              v188 = *(v176 + 56);
              *(v185 + 24) = *(v176 + 24);
              *(v185 + 40) = v187;
              *(v185 + 56) = v188;
              *(v185 + 72) = *(v176 + 72);
              v189 = *(v333 + 184);
              v190 = *(v333 + 192);
              v191 = *(v333 + 200);
              v192 = *(v333 + 208);
              v193 = *(v333 + 216);
              *(v185 + 184) = v189;
              *(v185 + 192) = v190;
              *(v185 + 200) = v191;
              *(v185 + 208) = v192;
              *(v185 + 216) = v193;
              v194 = *(v333 + 96);
              *(v185 + 80) = *(v333 + 80);
              *(v185 + 96) = v194;

              v195 = v190;
              v158 = v298;
              v196 = v192;
              v165 = v328;
              outlined copy of Text.Effect.StopCollector?(v189, v195, v191, v196);
            }

            v197 = *(v185 + 40);
            *&t1.a = *(v185 + 24);
            *&t1.c = v197;
            *&t1.tx = *(v185 + 56);
            CGAffineTransformTranslate(&v341, &t1, v181, v183);
            v198 = *v342;
            v199 = *&v342[16];
            *(v185 + 24) = v341;
            *(v185 + 40) = v198;
            *(v185 + 56) = v199;
          }

          v200 = *(v317 + 112);
          v201 = *(v317 + 120);
          v203 = *(v317 + 128);
          v202 = *(v317 + 136);
          v204 = *(v317 + 144);
          v205 = *(v317 + 152);
          v206 = *(v317 + 160);
          CGAffineTransformMakeTranslation(&t1, v202, v204);
          CGAffineTransformScale(&v341, &t1, v205, v206);
          v207 = *&v342[16];
          v208 = *&v342[24];
          v332 = v341;
          v329 = *v342;
          v209 = __sincos_stret(v203);
          t1.a = v209.__cosval;
          t1.b = v209.__sinval;
          t1.c = -v209.__sinval;
          t1.d = v209.__cosval;
          t1.tx = 0.0;
          t1.ty = 0.0;
          v341 = v332;
          *v342 = v329;
          *&v342[16] = v207;
          *&v342[24] = v208;
          CGAffineTransformConcat(&v335, &t1, &v341);
          t1 = v335;
          CGAffineTransformTranslate(&v341, &t1, -v202, -v204);
          *&t1.a = v341;
          *&t1.c = *v342;
          *&t1.tx = *&v342[16];
          CGAffineTransformTranslate(&v341, &t1, v200, v201);
          v210 = v341;
          v211 = *v342;
          v212 = *&v342[8];
          v213 = *&v342[16];
          v214 = *&v342[24];
          *&t1.a = v341;
          t1.c = *v342;
          t1.d = *&v342[8];
          t1.tx = *&v342[16];
          t1.ty = *&v342[24];
          if (!CGAffineTransformIsIdentity(&t1))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Text.Effect.DrawingContext.Storage();
              v215 = swift_allocObject();
              *(v215 + 24) = 0x3FF0000000000000;
              *(v215 + 32) = 0;
              *(v215 + 40) = 0;
              *(v215 + 48) = 0x3FF0000000000000;
              *(v215 + 56) = 0;
              *(v215 + 64) = 0;
              *(v215 + 80) = 0;
              *(v215 + 88) = 0;
              *(v215 + 72) = 0x3FF0000000000000;
              *(v215 + 96) = 1;
              *(v215 + 104) = 0u;
              *(v215 + 120) = 0u;
              *(v215 + 136) = 0u;
              __asm { FMOV            V0.2D, #1.0 }

              *(v215 + 152) = _Q0;
              *(v215 + 168) = 0x3FF0000000000000;
              *(v215 + 176) = 0;
              *(v215 + 184) = 0u;
              *(v215 + 200) = 0u;
              *(v215 + 216) = 0;
              *(v215 + 16) = *(v185 + 16);
              v217 = *(v185 + 40);
              v218 = *(v185 + 56);
              *(v215 + 24) = *(v185 + 24);
              *(v215 + 40) = v217;
              *(v215 + 56) = v218;
              *(v215 + 72) = *(v185 + 72);
              v219 = *(v185 + 184);
              v220 = *(v185 + 192);
              v221 = *(v185 + 200);
              v222 = *(v185 + 208);
              v223 = *(v185 + 216);
              *(v215 + 184) = v219;
              *(v215 + 192) = v220;
              *(v215 + 200) = v221;
              *(v215 + 208) = v222;
              *(v215 + 216) = v223;
              v224 = *(v185 + 96);
              *(v215 + 80) = *(v185 + 80);
              *(v215 + 96) = v224;

              v225 = v220;
              v165 = v328;
              v226 = v222;
              v158 = v298;
              outlined copy of Text.Effect.StopCollector?(v219, v225, v221, v226);

              v185 = v215;
            }

            *&t1.a = v210;
            t1.c = v211;
            t1.d = v212;
            t1.tx = v213;
            t1.ty = v214;
            if (!CGAffineTransformIsIdentity(&t1))
            {
              v227 = *(v185 + 24);
              v228 = *(v185 + 40);
              *&t1.a = v210;
              t1.c = v211;
              t1.d = v212;
              t1.tx = v213;
              t1.ty = v214;
              v341 = v227;
              *v342 = v228;
              *&v342[16] = *(v185 + 56);
              CGAffineTransformConcat(&v335, &t1, &v341);
              v229 = *&v335.c;
              v230 = *&v335.tx;
              *(v185 + 24) = *&v335.a;
              *(v185 + 40) = v229;
              *(v185 + 56) = v230;
            }
          }

          CGAffineTransformMakeTranslation(&t1, v312, v311);
          CGAffineTransformScale(&v341, &t1, v309, v308);
          v231 = *&v342[16];
          v232 = *&v342[24];
          v332 = v341;
          v329 = *v342;
          v233 = __sincos_stret(v310);
          t1.a = v233.__cosval;
          t1.b = v233.__sinval;
          t1.c = -v233.__sinval;
          t1.d = v233.__cosval;
          t1.tx = 0.0;
          t1.ty = 0.0;
          v341 = v332;
          *v342 = v329;
          *&v342[16] = v231;
          *&v342[24] = v232;
          CGAffineTransformConcat(&v335, &t1, &v341);
          t1 = v335;
          CGAffineTransformTranslate(&v341, &t1, v300, v299);
          *&t1.a = v341;
          *&t1.c = *v342;
          *&t1.tx = *&v342[16];
          CGAffineTransformTranslate(&v341, &t1, v304, v303);
          v234 = v341;
          v235 = *v342;
          v236 = *&v342[8];
          v237 = *&v342[16];
          v238 = *&v342[24];
          *&t1.a = v341;
          t1.c = *v342;
          t1.d = *&v342[8];
          t1.tx = *&v342[16];
          t1.ty = *&v342[24];
          if (!CGAffineTransformIsIdentity(&t1))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Text.Effect.DrawingContext.Storage();
              v239 = swift_allocObject();
              *(v239 + 24) = 0x3FF0000000000000;
              *(v239 + 32) = 0;
              *(v239 + 40) = 0;
              *(v239 + 48) = 0x3FF0000000000000;
              *(v239 + 56) = 0;
              *(v239 + 64) = 0;
              *(v239 + 80) = 0;
              *(v239 + 88) = 0;
              *(v239 + 72) = 0x3FF0000000000000;
              *(v239 + 96) = 1;
              *(v239 + 104) = 0u;
              *(v239 + 120) = 0u;
              *(v239 + 136) = 0u;
              __asm { FMOV            V0.2D, #1.0 }

              *(v239 + 152) = _Q0;
              *(v239 + 168) = 0x3FF0000000000000;
              *(v239 + 176) = 0;
              *(v239 + 184) = 0u;
              *(v239 + 200) = 0u;
              *(v239 + 216) = 0;
              *(v239 + 16) = *(v185 + 16);
              v241 = *(v185 + 40);
              v242 = *(v185 + 56);
              *(v239 + 24) = *(v185 + 24);
              *(v239 + 40) = v241;
              *(v239 + 56) = v242;
              *(v239 + 72) = *(v185 + 72);
              v243 = *(v185 + 184);
              v244 = *(v185 + 192);
              v245 = *(v185 + 200);
              v246 = *(v185 + 208);
              v247 = *(v185 + 216);
              *(v239 + 184) = v243;
              *(v239 + 192) = v244;
              *(v239 + 200) = v245;
              *(v239 + 208) = v246;
              *(v239 + 216) = v247;
              v248 = *(v185 + 96);
              *(v239 + 80) = *(v185 + 80);
              *(v239 + 96) = v248;

              v249 = v244;
              v165 = v328;
              v158 = v298;
              outlined copy of Text.Effect.StopCollector?(v243, v249, v245, v246);

              v185 = v239;
            }

            *&t1.a = v234;
            t1.c = v235;
            t1.d = v236;
            t1.tx = v237;
            t1.ty = v238;
            if (!CGAffineTransformIsIdentity(&t1))
            {
              v250 = *(v185 + 24);
              v251 = *(v185 + 40);
              *&t1.a = v234;
              t1.c = v235;
              t1.d = v236;
              t1.tx = v237;
              t1.ty = v238;
              v341 = v250;
              *v342 = v251;
              *&v342[16] = *(v185 + 56);
              CGAffineTransformConcat(&v335, &t1, &v341);
              v252 = *&v335.c;
              v253 = *&v335.tx;
              *(v185 + 24) = *&v335.a;
              *(v185 + 40) = v252;
              *(v185 + 56) = v253;
            }
          }

          type metadata accessor for (CGPoint, Text.Layout.RunSlice)(0, &lazy cache variable for type metadata for (Text.Layout.RunSlice, Color.Resolved?), MEMORY[0x1E6981060], type metadata accessor for Color.Resolved?);
          v255 = *(v254 + 48);
          (v330)(v158, v334, v165);
          v256 = v306;
          v257 = v307;
          v258 = v305;
          v150 = v319;
          if ((*(v185 + 96) & 1) == 0)
          {
            v258 = 0;
            v257 = *(v185 + 80);
            v256 = *(v185 + 88);
          }

          v159 = v158 + v255;
          *v159 = v257;
          *(v159 + 8) = v256;
          *(v159 + 16) = v258 & 1;
          swift_storeEnumTagMultiPayload();
          Text.Effect.DrawingContext.Storage.append(_:)(v158);
          outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v158, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
          (*v302)(v334, v165);

          LODWORD(v332) = 0;
          v143 = 0;
          v157 = v184 + 2;
          v151 = v318;
          if (v321 == v156)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_70;
    }

    t1 = *v53;
    v347 = *(v53 + 48);
    v91 = *(v53 + 64);
    v92 = *(v53 + 72);
    v93 = *(v53 + 80);
    v94 = *(v53 + 88);
    v95 = *(v53 + 96);
    v96 = *(v53 + 104);
    v97 = *(v53 + 128);
    *&v335.a = *(v53 + 112);
    *&v335.c = v97;
    v335.tx = *(v53 + 144);
    v98 = *(v53 + 152);
    LODWORD(v334) = *(v53 + 160);
    v99 = *(v53 + 164);
    v100 = *(v53 + 172);
    v101 = *(v53 + 180);
    v102 = *(v53 + 184);
    v331 = *(v53 + 192);
    *&v332 = v102;
    v330 = *(v53 + 200);
    v103 = *(v53 + 208);
    v348 = v91;
    v349 = v92;
    v350 = v93;
    v104 = v317;
    v105 = *(v317 + 72);

    if (v98 * v105 != v105)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v106 = swift_allocObject();
        *(v106 + 104) = 0u;
        *(v106 + 120) = 0u;
        *(v106 + 136) = 0u;
        __asm { FMOV            V0.2D, #1.0 }

        *(v106 + 152) = _Q0;
        *(v106 + 168) = 0x3FF0000000000000;
        *(v106 + 176) = 0;
        *(v106 + 16) = *(v104 + 16);
        v108 = *(v104 + 40);
        v109 = *(v104 + 56);
        *(v106 + 24) = *(v104 + 24);
        *(v106 + 40) = v108;
        *(v106 + 56) = v109;
        *(v106 + 72) = *(v104 + 72);
        *&v328 = *(v104 + 184);
        *&v329 = v93;
        v111 = *(v104 + 192);
        v110 = *(v104 + 200);
        v113 = *(v104 + 216);
        v323 = *(v104 + 208);
        v112 = v323;
        v324 = v110;
        v322 = v113;
        *(v106 + 184) = v328;
        *(v106 + 192) = v111;
        *(v106 + 200) = v110;
        *(v106 + 208) = v112;
        *(v106 + 216) = v113;
        v114 = *(v104 + 96);
        *(v106 + 80) = *(v104 + 80);
        *(v106 + 96) = v114;

        v115 = v111;
        v93 = v329;
        outlined copy of Text.Effect.StopCollector?(v328, v115, v324, v323);

        v336[0] = v106;
        v104 = v106;
      }

      *(v104 + 72) = v98 * v105;
    }

    Text.Effect.DrawingContext.foregroundColor.setter(v99, v100, v101 & 1);
    if ((v101 & 1) == 0)
    {
      Text.Effect.DrawingContext.foregroundColor.setter(v99, v100, v101 & 1);
    }

    if ((v103 & 1) == 0)
    {
      *&v341 = v94;
      *(&v341 + 1) = v95 + a4;
      *v342 = v96 + a5;
      *&v342[8] = *&v335.a;
      *&v342[24] = *&v335.c;
      v343 = v335.tx;
      v344 = v98;
      v345 = v334;
      v137 = v332;
      v138 = v332 - v91;
      if (!__OFSUB__(v332, v91))
      {
        if ((v138 & 0x8000000000000000) == 0)
        {
          if (v138 < *(v92 + 16))
          {
            v139 = v327;
            outlined init with copy of Text.Effect.PathInterpolator.Cluster(v92 + ((*(v326 + 80) + 32) & ~*(v326 + 80)) + *(v326 + 72) * v138, v327, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
            v140 = v331;
            if ((v331 & 0x8000000000000000) == 0)
            {
              v141 = *(v139 + *(*&v325 + 20));
              if (v331 < *(v141 + 16))
              {
                v142 = v321;
                outlined init with copy of Text.Effect.PathInterpolator.Cluster(v141 + ((v320[80] + 32) & ~v320[80]) + *(v320 + 9) * v331, v321, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
                Text.Effect.PathInterpolator.Glyph.resolve(keyPath:state:mapKeys:in:)(v137, v140, v330, &v341, v93, v336);
                outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v142, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
                v89 = type metadata accessor for Text.Effect.PathInterpolator.Cluster;
                v90 = v139;
                goto LABEL_66;
              }

LABEL_76:
              __break(1u);
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    *&v341 = v94;
    *(&v341 + 1) = v95 + a4;
    *v342 = v96 + a5;
    *&v342[8] = *&v335.a;
    *&v342[24] = *&v335.c;
    v343 = v335.tx;
    v344 = v98;
    v345 = v334;
    Text.Effect.PathInterpolator.resolve(_:state:in:)(v333, &v341, v336);
  }
}

void type metadata accessor for [CGPoint]()
{
  if (!lazy cache variable for type metadata for [CGPoint])
  {
    type metadata accessor for CGPoint(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CGPoint]);
    }
  }
}

void type metadata accessor for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for [CGPoint]();
    v9[0] = v6;
    v9[1] = type metadata accessor for Text.Layout.RunSlice();
    v9[2] = lazy protocol witness table accessor for type [CGPoint] and conformance [A](&lazy protocol witness table cache variable for type [CGPoint] and conformance [A], type metadata accessor for [CGPoint]);
    v9[3] = lazy protocol witness table accessor for type [CGPoint] and conformance [A](&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.PathInterpolator.Cluster(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for IndexingIterator<Text.Layout.RunSlice>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Layout.RunSlice>)
  {
    type metadata accessor for Text.Layout.RunSlice();
    lazy protocol witness table accessor for type [CGPoint] and conformance [A](&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060]);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.RunSlice>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [CGPoint] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for (CGPoint, Text.Layout.RunSlice)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator(uint64_t a1)
{
  type metadata accessor for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>(0, &lazy cache variable for type metadata for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator, MEMORY[0x1E69E6A98]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV7MapKeysO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.DisplayInfo.DrawOperation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 176) >> 9) & 0xFF000000 | (*(a1 + 160) >> 8);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for Text.Effect.DisplayInfo.DrawOperation(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 200) = 0;
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 208) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 209) = 1;
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
      result = 0.0;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 160) = (-a2 & 0xFFFFFF) << 8;
      *(a1 + 168) = 0;
      *(a1 + 176) = (-a2 << 9) & 0x1FE00000000;
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      return result;
    }

    *(a1 + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Text.Effect.DisplayInfo.DrawOperation(uint64_t result, char a2)
{
  v2 = *(result + 176) & 0x1FFFFFFFFLL;
  v3 = *(result + 208) & 1 | (a2 << 6);
  *(result + 160) &= 0xFFFFFFFF000000FFLL;
  *(result + 176) = v2;
  *(result + 208) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.DisplayInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.DisplayInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static CTFontRef.make(platformFont:)(const void *a1)
{
  v1 = CFGetTypeID(a1);
  if (v1 != CTFontGetTypeID())
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return swift_dynamicCastUnknownClassUnconditional();
}

void one-time initialization function for srgb(uint64_t a1, id *a2, CGColorSpaceRef *a3)
{
  v4 = *a2;
  v5 = CGColorSpaceCreateWithName(v4);

  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for clear(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v9 = type metadata accessor for Color.RGBColorSpace();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 104))(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814C8], v10);
  result = Color.Resolved.init(colorSpace:red:green:blue:opacity:)();
  *a2 = v14;
  *a3 = v15;
  *a4 = v16;
  *a5 = v17;
  return result;
}

unint64_t Color.Resolved.init(failableCGColor:)(void *a1)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = a1;
  v10 = CGColorGetColorSpace(v9);
  v11 = one-time initialization token for srgb;
  v12 = v10;
  v13 = v12;
  if (v11 == -1)
  {
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    swift_once();
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  v14 = static Color.Resolved.srgb;

  if (v13 == v14)
  {
LABEL_23:
    v35 = MEMORY[0x1E69814D8];
    goto LABEL_26;
  }

LABEL_4:
  v15 = one-time initialization token for srgbExtended;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = static Color.Resolved.srgbExtended;
  if (v13)
  {

    if (v16 == CopyByMatchingToColorSpace)
    {
      goto LABEL_23;
    }
  }

  v18 = one-time initialization token for displayP3;
  v19 = v16;
  if (v18 == -1)
  {
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_once();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v20 = static Color.Resolved.displayP3;

  if (v19 == v20)
  {
    v35 = MEMORY[0x1E69814E0];
    goto LABEL_26;
  }

LABEL_11:
  v21 = one-time initialization token for srgbLinear;
  v22 = v19;
  if (v21 != -1)
  {
    goto LABEL_36;
  }

  if (v13)
  {
    goto LABEL_13;
  }

LABEL_14:
  v24 = one-time initialization token for srgbExtendedLinear;
  v25 = v22;
  if (v24 == -1)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v26 = static Color.Resolved.srgbExtendedLinear;
    v27 = v25;

    if (v27 != v26)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v35 = MEMORY[0x1E69814C8];
LABEL_26:
      (*(v3 + 104))(v8, *v35, v2);
      CopyByMatchingToColorSpace = v9;
      v28 = CGColorRef.components.getter();
      if (!v28)
      {
        goto LABEL_27;
      }

LABEL_19:
      v22 = v28;
      (*(v3 + 16))(v5, v8, v2);
      v29 = *(v22 + 2);
      if (!v29)
      {
        break;
      }

      if (v29 == 1)
      {
        goto LABEL_34;
      }

      if (v29 >= 3)
      {

        CGColorGetAlpha(v9);
        Color.Resolved.init(colorSpace:red:green:blue:opacity:)();
        v31 = v30;
        v33 = v32;

        (*(v3 + 8))(v8, v2);
        return v31 | (v33 << 32);
      }

LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
      if (!v13)
      {
        goto LABEL_14;
      }

LABEL_13:
      v23 = static Color.Resolved.srgbLinear;

      if (v22 != v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = v25;
  swift_once();
  v25 = v36;
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_17:
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(CopyByMatchingToColorSpace, kCGRenderingIntentDefault, v9, 0);

  (*(v3 + 104))(v8, *MEMORY[0x1E69814D8], v2);
  if (CopyByMatchingToColorSpace)
  {
    v28 = CGColorRef.components.getter();
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_27:
  }

  (*(v3 + 8))(v8, v2);
  return 0;
}

uint64_t getEnumTagSinglePayload for Text.Effect.RenderSegmentation.StaticLines(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.RenderSegmentation.StaticLines(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Text.Effect.RenderSegmentation.Segment.characterRanges.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Text.Effect.Composition.Run(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(v2, v16, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of Text.Effect.RenderSegmentation.Effect(v16, v13, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      Text.Layout.Line.characterRanges(runIndices:)();
      v18 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
      v19 = v13;
    }

    else
    {
      outlined init with take of Text.Effect.RenderSegmentation.Effect(v16, v10, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v22 = &v10[*(v8 + 24)];
      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
      RangeSet.init()();
      v23 = *(v22 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v26 = *(v5 + 72);
        do
        {
          outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(v25, v7, type metadata accessor for Text.Effect.Composition.Run);
          Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(v22, a1);
          _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v7, type metadata accessor for Text.Effect.Composition.Operation);
          v25 += v26;
          --v24;
        }

        while (v24);
      }

      v18 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
      v19 = v10;
    }

    return _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v19, v18);
  }

  else
  {
    v20 = *(v16 + 1);
    v27[0] = *v16;
    v27[1] = v20;
    v27[2] = *(v16 + 2);
    v28 = *(v16 + 6);
    Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter();
    return outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v27);
  }
}

uint64_t Text.Effect.RenderSegmentation.StaticRuns.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence, type metadata accessor for RangeSet<>.IndexSequence);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v29 - v4;
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v29 - v10;
  v11 = type metadata accessor for Text.Layout.Line();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v16(v15, v1, v11, v13);
  v17 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  v18 = *(v7 + 16);
  v19 = v2 + *(v17 + 24);
  v20 = v29;
  v18(v29, v19, v6);
  (v16)(v32, v15, v11);
  v21 = v30;
  v18(v30, v20, v6);
  v22 = v31;
  RangeSet.ranges.getter();
  v23 = *(v7 + 8);
  v23(v21, v6);
  v23(v20, v6);
  (*(v12 + 8))(v15, v11);
  v24 = (v32 + *(type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator(0) + 20));
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
  v26 = *(v25 + 48);
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  result = (*(*(v27 - 8) + 32))(&v24[v26], v22, v27);
  *v24 = 0;
  *(v24 + 1) = 0;
  return result;
}

uint64_t specialized RangeSet<>.IndexSequence.Iterator.next()()
{
  v1 = *v0;
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v2 = 0;
  if (v1 >= RangeSet.Ranges.count.getter())
  {
    return v2;
  }

  result = RangeSet.Ranges.subscript.getter();
  v4 = v0[1];
  v2 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v0[1] = v5;
  result = RangeSet.Ranges.subscript.getter();
  if (!__OFSUB__(v7, v6))
  {
    if (v5 >= v7 - v6)
    {
      *v0 = v1 + 1;
      v0[1] = 0;
    }

    return v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Text.Effect.RenderSegmentation.Effect.identifiers.getter()
{
  v1 = type metadata accessor for Text.Effect.Composition.Run(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for Text.Effect.RenderSegmentation.Effect(0) + 24);
  v6 = MEMORY[0x1E69E7CD0];
  v13 = MEMORY[0x1E69E7CD0];
  v7 = *(v5 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(v9, v4, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Operation.appendIdentifiers(to:)(&v13);
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v4, type metadata accessor for Text.Effect.Composition.Operation);
      v9 += v10;
      --v8;
    }

    while (v8);
    return v13;
  }

  return v6;
}

uint64_t Text.Effect.RenderSegmentation.Segment.lineIndex.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(v1, v10, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of Text.Effect.RenderSegmentation.Effect(v10, v7, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v12 = *&v7[*(v5 + 28)];
      v13 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
      v14 = v7;
    }

    else
    {
      outlined init with take of Text.Effect.RenderSegmentation.Effect(v10, v4, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      v12 = *v4;
      v13 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
      v14 = v4;
    }

    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v14, v13);
  }

  else
  {
    v12 = *(v10 + 2);
  }

  return v12;
}

double Text.Effect.RenderSegmentation.Segment.boundingRect.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(v1, v7, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of Text.Effect.RenderSegmentation.Effect(v7, v4, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
      v9 = &v4[*(v2 + 32)];
      v10 = *(v9 + 1);
      v30 = *v9;
      v31 = v10;
      v11 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
      v12 = v4;
    }

    else
    {
      static os_log_type_t.fault.getter();
      if (one-time initialization token for internalErrorsLog != -1)
      {
        swift_once();
      }

      v14 = static Log.internalErrorsLog;
      type metadata accessor for _ContiguousArrayStorage<Text.Layout.Run>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_195CC8CF0;
      v16 = MEMORY[0x1E69E6158];
      *(v15 + 56) = MEMORY[0x1E69E6158];
      v17 = lazy protocol witness table accessor for type String and conformance String();
      *(v15 + 64) = v17;
      *(v15 + 32) = 0xD00000000000002ELL;
      *(v15 + 40) = 0x8000000195CE0530;
      v18 = v14;
      v19 = StaticString.description.getter();
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      *(v15 + 72) = v19;
      *(v15 + 80) = v20;
      v33 = 103;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v15 + 136) = v16;
      *(v15 + 144) = v17;
      *(v15 + 112) = v21;
      *(v15 + 120) = v22;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for _ContiguousArrayStorage<Int>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_195CC8D00;
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v33 = 0xD000000000000031;
      v34 = 0x8000000195CE0560;
      v24 = StaticString.description.getter();
      MEMORY[0x19A8BD680](v24);

      MEMORY[0x19A8BD680](58, 0xE100000000000000);
      v32 = 103;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x19A8BD680](v25);

      MEMORY[0x19A8BD680](0xD00000000000001CLL, 0x8000000195CDEE50);
      v26 = v33;
      v27 = v34;
      *(v23 + 56) = v16;
      *(v23 + 32) = v26;
      *(v23 + 40) = v27;
      print(_:separator:terminator:)();

      v28 = *(MEMORY[0x1E695F050] + 16);
      v30 = *MEMORY[0x1E695F050];
      v31 = v28;
      v11 = type metadata accessor for Text.Effect.RenderSegmentation.Segment;
      v12 = v7;
    }

    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v12, v11);
  }

  else
  {
    v13 = *(v7 + 40);
    v30 = *(v7 + 24);
    v31 = v13;
  }

  return *&v30;
}

uint64_t Text.Effect.RenderSegmentation.StaticLines.characterRanges.getter()
{
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
  RangeSet.init()();
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = *(type metadata accessor for Text.Layout.Line() - 8);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    outlined init with copy of Text.Effect.RenderSegmentation.StaticLines(v0, v10);
    v5 = *(v3 + 72);
    v6 = MEMORY[0x1E6981010];
    while (1)
    {
      result = Text.Layout.Line.characterRange.getter();
      if (__OFSUB__(v8, result))
      {
        break;
      }

      if (v8 != result)
      {
        type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BE0]);
        v9 = RangeSet._ranges.modify();
        type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v6, MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v9(v10, 0);
      }

      v4 += v5;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    outlined init with copy of Text.Effect.RenderSegmentation.StaticLines(v0, v10);
LABEL_8:
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.RenderSegmentation.StaticLines(uint64_t *a1, unint64_t *a2))(void *a1)
{
  v5 = type metadata accessor for Text.Layout.Line();
  *a1 = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  a1[1] = v6;
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v6 + 64));
  }

  a1[2] = result;
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(*v2 + 16))
  {
    (*(v7 + 16))(result, *v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v9, v5);
    return protocol witness for Collection.subscript.read in conformance Text.Effect.RenderSegmentation.StaticLines;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.RenderSegmentation.StaticLines(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Effect.RenderSegmentation.StaticLines@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 8);
    v5 = *(v2 + 16);
    *(a2 + 16) = result;
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
    *(a2 + 40) = *(v2 + 24);
    *(a2 + 56) = *(v2 + 40);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.RenderSegmentation.StaticLines@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance Text.Effect.RenderSegmentation.StaticLines@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 24);
  result = *(v1 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  return result;
}

size_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.RenderSegmentation.StaticLines()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);
  outlined destroy of Text.Effect.RenderSegmentation.StaticLines(v4);
  return v2;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.RenderSegmentation.StaticLines> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(255, a2, lazy protocol witness table accessor for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines, &type metadata for Text.Effect.RenderSegmentation.StaticLines, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.RenderSegmentation.StaticLines> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(255, &lazy cache variable for type metadata for Slice<Text.Effect.RenderSegmentation.StaticLines>, lazy protocol witness table accessor for type Text.Effect.RenderSegmentation.StaticLines and conformance Text.Effect.RenderSegmentation.StaticLines, &type metadata for Text.Effect.RenderSegmentation.StaticLines, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation()
{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation;
  if (!lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation);
  }

  return result;
}

void closure #1 in Text.Effect.RenderSegmentation.StaticRuns.init(line:glyphOrigin:runs:lineIndex:)(CGFloat *a1@<X0>, CGRect *a2@<X8>)
{
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.typographicBounds.getter();
  (*(v5 + 8))(v7, v4);
  *&v16.origin.x = v12[0];
  *&v16.size.width = v12[2];
  v16.origin.y = *&v12[1] - v13;
  v16.size.height = v13 + v14;
  v15.origin.x = v8;
  v15.origin.y = v9;
  v15.size.width = v10;
  v15.size.height = v11;
  *a2 = CGRectUnion(v15, v16);
}

double specialized RangeSet<>.reduce<A>(_:_:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31[-v15];
  type metadata accessor for IndexingIterator<RangeSet<Int>.Ranges>();
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  (*(v14 + 16))(v20, v16, v13);
  v21 = *(v18 + 44);
  lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges();
  dispatch thunk of Collection.startIndex.getter();
  (*(v14 + 8))(v16, v13);
  dispatch thunk of Collection.endIndex.getter();
  while (*&v20[v21] != v32[0])
  {
    v22 = dispatch thunk of Collection.subscript.read();
    v24 = *v23;
    v25 = v23[1];
    v22(v32, 0);
    dispatch thunk of Collection.formIndex(after:)();
    specialized Sequence.reduce<A>(_:_:)(a1, a3, a4, a5, a6, a2, v24, v25);
    a3 = v26;
    a4 = v27;
    a5 = v28;
    a6 = v29;
    dispatch thunk of Collection.endIndex.getter();
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v20, type metadata accessor for IndexingIterator<RangeSet<Int>.Ranges>);
  return a3;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance Text.Effect.RenderSegmentation.StaticRuns.Iterator@<X0>(uint64_t a1@<X8>)
{
  specialized RangeSet<>.IndexSequence.Iterator.next()();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    Text.Layout.Line.subscript.getter();
    v3 = 0;
  }

  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.RenderSegmentation.StaticRuns()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v0, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  return v1;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.RenderSegmentation(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  v5 = *(type metadata accessor for Text.Effect.RenderSegmentation.Segment(0) - 8);
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
    return protocol witness for Collection.subscript.read in conformance Text.Effect.RenderSegmentation;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.RenderSegmentation(uint64_t *a1)
{
  v1 = *a1;
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(*a1, type metadata accessor for Text.Effect.RenderSegmentation.Segment);

  free(v1);
}

size_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.RenderSegmentation()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.RenderSegmentation> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(255, a2, lazy protocol witness table accessor for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation, &type metadata for Text.Effect.RenderSegmentation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.RenderSegmentation> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(255, &lazy cache variable for type metadata for Slice<Text.Effect.RenderSegmentation>, lazy protocol witness table accessor for type Text.Effect.RenderSegmentation and conformance Text.Effect.RenderSegmentation, &type metadata for Text.Effect.RenderSegmentation, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

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
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x19A8BDCD0](v5);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ClusterIndexSequence(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClusterIndexSequence.Iterator(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v73 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(a1, v5, type metadata accessor for ClusterIndexSequence);
  v12 = *(v3 + 32);
  v13 = &v5[*(v3 + 28)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *&v5[v12];
  v17 = *&v5[v12 + 8];
  outlined init with take of Text.Effect.RenderSegmentation.Effect(v5, v11, type metadata accessor for Text.Effect.BaseContent);
  v18 = v15;
  v19 = 0;
  v20 = &v11[v7[7]];
  *v20 = v14;
  *(v20 + 1) = v15;
  v21 = &v11[v7[8]];
  *v21 = v16;
  *(v21 + 1) = v17;
  v66 = v17;
  v22 = v7[9];
  v69 = v11;
  v23 = &v11[v22];
  *v23 = v14;
  *(v23 + 1) = v15;
  v70 = v23;
  v71 = v16;
  v68 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; i += 64)
  {
    if (v14 >= v71)
    {
      if (__OFSUB__(v71, v14))
      {
        goto LABEL_48;
      }

      if (v71 != v14 || v18 >= v66)
      {
        break;
      }
    }

    v74 = v18;
    v25 = v73;
    outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(v69, v73, type metadata accessor for ClusterIndexSequence.Iterator);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    swift_beginAccess();
    v29 = *(v26 + 48);
    v30 = *(v29 + 16);

    if (!v30)
    {
      goto LABEL_52;
    }

    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
    if ((v32 & 1) == 0)
    {
      goto LABEL_52;
    }

    v33 = *(*(v29 + 56) + 16 * v31);
    swift_endAccess();
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    v34 = *(v33 + 16);
    if (v14 >= v34)
    {
      goto LABEL_42;
    }

    v35 = (v33 + 32);
    v36 = *(v33 + 32 + 8 * v14);
    v37 = 0;
    if (v14)
    {
      v38 = v14;
      while (1)
      {
        v39 = *(*(*v35 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v40 = __OFADD__(v37, v39);
        v37 += v39;
        if (v40)
        {
          break;
        }

        ++v35;
        if (!--v38)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
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
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_14:

    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v73, type metadata accessor for Text.Effect.BaseContent);
    v41 = v74;
    v42 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_43;
    }

    *(v70 + 1) = v42;
    v43 = *(*(v36 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
    v40 = __OFADD__(v37, v43);
    v44 = v37 + v43;
    if (v40)
    {
      goto LABEL_44;
    }

    if (v44 < v37)
    {
      goto LABEL_45;
    }

    if (__OFSUB__(v44, v42))
    {
      goto LABEL_46;
    }

    v72 = v27;
    v45 = v14;
    if (v44 == v42)
    {
      v45 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_49;
      }

      *v70 = v45;
    }

    if (!v19)
    {
      v46 = v68;
      v47 = *(v68 + 3);
      if (((v47 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_50;
      }

      v67 = v36;
      v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
      if (v48 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      type metadata accessor for _ContiguousArrayStorage<Text.Layout.Run>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex)>, type metadata accessor for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex), MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      v51 = _swift_stdlib_malloc_size(v50);
      v52 = v51 - 32;
      if (v51 < 32)
      {
        v52 = v51 + 31;
      }

      v53 = v52 >> 6;
      *(v50 + 2) = v49;
      *(v50 + 3) = 2 * (v52 >> 6);
      v54 = v50 + 32;
      v55 = *(v46 + 2);
      v56 = v46;
      v57 = *(v46 + 3) >> 1;
      if (v55)
      {
        v58 = v56 + 32;
        if (v50 != v56 || v54 >= &v58[64 * v57])
        {
          v65 = v52 >> 6;
          memmove(v50 + 32, v58, v57 << 6);
          v53 = v65;
        }

        *(v68 + 2) = 0;
      }

      i = &v54[64 * v57];
      v19 = (v53 & 0x7FFFFFFFFFFFFFFFLL) - v57;

      v68 = v50;
      v41 = v74;
      v36 = v67;
    }

    v40 = __OFSUB__(v19--, 1);
    if (v40)
    {
      goto LABEL_47;
    }

    v59 = v72;
    *i = v26;
    *(i + 1) = v59;
    *(i + 2) = v28;
    *(i + 3) = v36;
    *(i + 4) = v14;
    *(i + 5) = v34;
    *(i + 6) = v37;
    *(i + 7) = v41;
    v18 = v42;
    v14 = v45;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v69, type metadata accessor for ClusterIndexSequence.Iterator);
  result = v68;
  v61 = *(v68 + 3);
  if (v61 < 2)
  {
    return result;
  }

  v62 = v61 >> 1;
  v40 = __OFSUB__(v62, v19);
  v63 = v62 - v19;
  if (!v40)
  {
    result = v68;
    *(v68 + 2) = v63;
    return result;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for FragmentRangeSequence(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FragmentRangeSequence.Iterator(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(a1, v5, type metadata accessor for FragmentRangeSequence);
  v13 = *(v3 + 32);
  v14 = &v5[*(v3 + 28)];
  v16 = *v14;
  v15 = *(v14 + 1);
  v18 = *&v5[v13];
  v17 = *&v5[v13 + 8];
  outlined init with take of Text.Effect.RenderSegmentation.Effect(v5, v12, type metadata accessor for Text.Effect.BaseContent);
  v19 = v15;
  v20 = v17;
  v21 = 0;
  v22 = &v12[v7[7]];
  *v22 = v16;
  *(v22 + 1) = v15;
  v23 = &v12[v7[8]];
  *v23 = v18;
  *(v23 + 1) = v17;
  v24 = v7[9];
  v74 = v12;
  v25 = &v12[v24];
  v26 = MEMORY[0x1E69E7CC0];
  *v25 = v16;
  *(v25 + 1) = v15;
  v75 = v26;
  v76 = v17;
  v27 = v26 + 4;
  v72 = v25;
  v73 = v16;
  v69 = v9;
  v71 = v18;
  if (v16 < v18)
  {
LABEL_5:
    do
    {
      v79 = v19;
      outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(v74, v9, type metadata accessor for FragmentRangeSequence.Iterator);
      v29 = *v9;
      v28 = v9[1];
      v30 = v9[2];
      swift_beginAccess();
      v31 = *(v29 + 48);
      v32 = *(v31 + 16);

      if (!v32)
      {
        goto LABEL_68;
      }

      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v30);
      if ((v34 & 1) == 0)
      {
        goto LABEL_68;
      }

      v35 = *(*(v31 + 56) + 16 * v33);
      swift_endAccess();
      if (v73 < 0)
      {
        goto LABEL_55;
      }

      v78 = v28;
      v36 = *(v35 + 16);
      if (v16 >= v36)
      {
        goto LABEL_56;
      }

      v37 = v35 + 32;
      v38 = *(v35 + 32 + 8 * v16);
      if (v16)
      {
        v39 = 0;
        v40 = 0;
        while (1)
        {
          v41 = *(*(*(v37 + 8 * v39) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v49 = __OFADD__(v40, v41);
          v40 += v41;
          if (v49)
          {
            break;
          }

          if (__OFSUB__(v16, ++v39))
          {
            goto LABEL_54;
          }

          if (v16 == v39)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v40 = 0;
LABEL_16:

      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v9, type metadata accessor for Text.Effect.BaseContent);
      if (__OFSUB__(v18, v16))
      {
        goto LABEL_57;
      }

      v77 = v38;
      if (v18 == v16)
      {
        v20 = v76;
        v42 = v79;
        v43 = v72;
        if (v76 < v79)
        {
          goto LABEL_63;
        }

        v44 = *(*(v38 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v45 = v40 + v44;
        v46 = __OFADD__(v40, v44);
        v47 = v76;
      }

      else
      {
        v48 = *(*(v38 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v49 = __OFADD__(v40, v48);
        v45 = v40 + v48;
        v46 = __OFADD__(v40, v48);
        v20 = v76;
        v42 = v79;
        v43 = v72;
        if (v49)
        {
          goto LABEL_64;
        }

        if (v45 < v40 || v45 < v79)
        {
          goto LABEL_65;
        }

        v47 = v45;
      }

      if (v46)
      {
        goto LABEL_58;
      }

      if (v45 < v40)
      {
        goto LABEL_59;
      }

      *(v43 + 1) = v45;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_60;
      }

      *v43 = v16 + 1;
      if (!v21)
      {
        v51 = v75[3];
        if (((v51 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_66;
        }

        v70 = v47;
        v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
        if (v52 <= 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = v52;
        }

        type metadata accessor for _ContiguousArrayStorage<Text.Layout.Run>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)>, type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>), MEMORY[0x1E69E6F90]);
        v54 = swift_allocObject();
        v55 = _swift_stdlib_malloc_size(v54);
        v56 = v75;
        v57 = (v55 - 32) / 72;
        v54[2] = v53;
        v54[3] = 2 * v57;
        v58 = (v54 + 4);
        v59 = v56[3] >> 1;
        if (v56[2])
        {
          v60 = v56 + 4;
          if (v54 != v56 || v58 >= v60 + 72 * v59)
          {
            v68 = (v55 - 32) / 72;
            memmove(v54 + 4, v60, 72 * v59);
            v57 = v68;
            v56 = v75;
          }

          v56[2] = 0;
        }

        v27 = (v58 + 72 * v59);
        v21 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - v59;

        v75 = v54;
        v9 = v69;
        v47 = v70;
        v20 = v76;
        v42 = v79;
      }

      v49 = __OFSUB__(v21--, 1);
      if (v49)
      {
        goto LABEL_61;
      }

      v61 = v77;
      v62 = v78;
      *v27 = v29;
      v27[1] = v62;
      v27[2] = v30;
      v27[3] = v61;
      v27[4] = v16;
      v27[5] = v36;
      v27[6] = v40;
      v27[7] = v42;
      v27[8] = v47;
      v27 += 9;
      ++v16;
      v19 = v45;
      v18 = v71;
    }

    while (v16 < v71);
  }

  if (__OFSUB__(v18, v16))
  {
LABEL_62:
    __break(1u);
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
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v18 == v16 && v19 < v20)
  {
    goto LABEL_5;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v74, type metadata accessor for FragmentRangeSequence.Iterator);
  result = v75;
  v64 = v75[3];
  if (v64 >= 2)
  {
    v65 = v64 >> 1;
    v49 = __OFSUB__(v65, v21);
    v66 = v65 - v21;
    if (!v49)
    {
      v75[2] = v66;
      return result;
    }

    goto LABEL_67;
  }

  return result;
}

{
  v84 = type metadata accessor for Text.Layout.Run();
  v2 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v71 - v5;
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence, type metadata accessor for RangeSet<>.IndexSequence);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v71 - v7;
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v75 = *(v8 - 8);
  v10 = v75;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v71 - v13;
  v14 = type metadata accessor for Text.Layout.Line();
  v78 = *(v14 - 8);
  v15 = v78;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator(0) - 8;
  MEMORY[0x1EEE9AC00](v79);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v2 + 80);
  v72 = v2;
  v73 = v24;
  outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(a1, v21, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v25 = *(v15 + 16);
  v77 = v14;
  v25(v17, v21, v14);
  v26 = *(v10 + 2);
  v27 = v80;
  v26(v80, &v21[*(v19 + 32)], v9);
  v25(v23, v17, v14);
  v28 = v82;
  v26(v82, v27, v9);
  v29 = v83;
  RangeSet.ranges.getter();
  v30 = *(v75 + 1);
  v30(v28, v9);
  v30(v27, v9);
  (*(v78 + 8))(v17, v77);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v21, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v31 = *(v79 + 28);
  v77 = v23;
  v32 = &v23[v31];
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
  v34 = *(v33 + 48);
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v36 = v35;
  (*(*(v35 - 1) + 32))(&v32[v34], v29, v35);
  *v32 = 0;
  *(v32 + 1) = 0;
  v37 = RangeSet.Ranges.count.getter();
  v38 = MEMORY[0x1E69E7CC0];
  if (v37 >= 1)
  {
    v82 = 0;
    v83 = 0;
    v39 = 0;
    v40 = 0;
    v41 = v72;
    v74 = (v73 + 32) & ~v73;
    v75 = v32;
    v42 = MEMORY[0x1E69E7CC0] + v74;
    v79 = v72 + 32;
    v80 = v36;
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = RangeSet.Ranges.subscript.getter();
      if (__OFADD__(v85, v83))
      {
        break;
      }

      v45 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_43;
      }

      result = RangeSet.Ranges.subscript.getter();
      v46 = v86 - v85;
      if (__OFSUB__(v86, v85))
      {
        goto LABEL_44;
      }

      v47 = v45 < v46;
      if (v45 >= v46)
      {
        v48 = 0;
      }

      else
      {
        v48 = v45;
      }

      v83 = v48;
      if (v47)
      {
        v49 = v39;
      }

      else
      {
        v49 = v39 + 1;
      }

      v78 = v49;
      v50 = v82;
      if (!v47)
      {
        v50 = (v39 + 1);
      }

      v51 = v76;
      Text.Layout.Line.subscript.getter();
      v52 = *v79;
      result = (*v79)(v81, v51, v84);
      if (v40)
      {
        v38 = v43;
        v53 = __OFSUB__(v40--, 1);
        if (v53)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v54 = v43[3];
        v55 = v74;
        if (((v54 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v56 = v54 & 0xFFFFFFFFFFFFFFFELL;
        if (v56 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v56;
        }

        type metadata accessor for _ContiguousArrayStorage<Text.Layout.Run>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Run>, MEMORY[0x1E6981028], MEMORY[0x1E69E6F90]);
        v58 = *(v41 + 72);
        v38 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v38);
        if (!v58)
        {
          goto LABEL_47;
        }

        v59 = result - v55;
        if (result - v55 == 0x8000000000000000 && v58 == -1)
        {
          goto LABEL_48;
        }

        v61 = v59 / v58;
        v38[2] = v57;
        v38[3] = 2 * (v59 / v58);
        v62 = v38 + v55;
        v63 = v43[3] >> 1;
        v64 = v63 * v58;
        if (v43[2])
        {
          if (v38 < v43 || v62 >= v43 + v74 + v64)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v38 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v43[2] = 0;
        }

        v42 = &v62[v64];
        v65 = (v61 & 0x7FFFFFFFFFFFFFFFLL) - v63;

        v53 = __OFSUB__(v65, 1);
        v40 = v65 - 1;
        if (v53)
        {
          goto LABEL_45;
        }
      }

      v82 = v50;
      v52(v42, v81, v84);
      v42 += *(v41 + 72);
      v32 = v75;
      v66 = RangeSet.Ranges.count.getter();
      v39 = v78;
      v43 = v38;
      if (v78 >= v66)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = 0;
  v82 = 0;
  v83 = 0;
LABEL_38:
  v67 = v83;
  *v32 = v82;
  *(v32 + 1) = v67;
  result = _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(v77, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
  v68 = v38[3];
  if (v68 < 2)
  {
    return v38;
  }

  v69 = v68 >> 1;
  v53 = __OFSUB__(v69, v40);
  v70 = v69 - v40;
  if (!v53)
  {
    v38[2] = v70;
    return v38;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Text.Effect.RenderSegmentation.StaticRuns(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = result + 32;
    v29 = *(result + 16);
    while (1)
    {
      v8 = v7 + 24 * v3;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (v11)
      {
        if (v11 != 1)
        {
          ++v3;
          v13 = v9;
LABEL_18:
          if (v5)
          {
            goto LABEL_31;
          }

          goto LABEL_19;
        }

        v12 = v10 - 1;
        if (__OFSUB__(v10, 1))
        {
          goto LABEL_41;
        }

        v13 = v12 - v4;
        if (__OFSUB__(v12, v4))
        {
          goto LABEL_44;
        }

        v14 = __OFADD__(v4++, 1);
        if (v14)
        {
          goto LABEL_45;
        }

        v14 = __OFSUB__(v10, v9);
        v15 = v10 - v9;
        if (v14)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = v9 + v4;
        if (__OFADD__(v9, v4))
        {
          goto LABEL_42;
        }

        v14 = __OFADD__(v4++, 1);
        if (v14)
        {
          goto LABEL_43;
        }

        v14 = __OFSUB__(v10, v9);
        v15 = v10 - v9;
        if (v14)
        {
          goto LABEL_46;
        }
      }

      if (v4 < v15)
      {
        goto LABEL_18;
      }

      v4 = 0;
      ++v3;
      if (v5)
      {
        goto LABEL_31;
      }

LABEL_19:
      v16 = v2[3];
      if (((v16 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      type metadata accessor for _ContiguousArrayStorage<Int>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      v20 = _swift_stdlib_malloc_size(v19);
      v21 = v20 - 32;
      if (v20 < 32)
      {
        v21 = v20 - 25;
      }

      v22 = v21 >> 3;
      v19[2] = v18;
      v19[3] = 2 * (v21 >> 3);
      v23 = (v19 + 4);
      v24 = v2[3] >> 1;
      if (v2[2])
      {
        v25 = v2 + 4;
        if (v19 != v2 || v23 >= v25 + 8 * v24)
        {
          memmove(v19 + 4, v25, 8 * v24);
        }

        v2[2] = 0;
      }

      v6 = (v23 + 8 * v24);
      v5 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

      v2 = v19;
      v1 = v29;
LABEL_31:
      v14 = __OFSUB__(v5--, 1);
      if (v14)
      {
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
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return result;
      }

      *v6++ = v13;
      if (v3 >= v1)
      {
        goto LABEL_35;
      }
    }
  }

  v5 = 0;
LABEL_35:
  v26 = v2[3];
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v14 = __OFSUB__(v27, v5);
    v28 = v27 - v5;
    if (v14)
    {
      goto LABEL_48;
    }

    v2[2] = v28;
  }

  return v2;
}

uint64_t outlined init with take of Text.Effect.RenderSegmentation.Effect(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Text.Effect.RenderSegmentation.StaticLines.init(lines:glyphOrigins:lineIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CGFloat *a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v6 = type metadata accessor for Text.Layout.Line();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);

    do
    {
      v16(v9, v18, v6);
      Text.Layout.Line.typographicBounds.getter();
      v32.origin.x = v25;
      v32.size.width = v27;
      v32.origin.y = v26 - v28;
      v32.size.height = v28 + v29;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v31 = CGRectUnion(v30, v32);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      result = (*(v15 - 8))(v9, v6);
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  else
  {
  }

  v22 = v23;
  v21 = v24;
  *a4 = a1;
  *(a4 + 1) = v22;
  *(a4 + 2) = v21;
  a4[3] = x;
  a4[4] = y;
  a4[5] = width;
  a4[6] = height;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Text.Layout.Line();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t type metadata accessor for NSTextLineFragment()
{
  result = lazy cache variable for type metadata for NSTextLineFragment;
  if (!lazy cache variable for type metadata for NSTextLineFragment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextLineFragment);
  }

  return result;
}

uint64_t outlined destroy of RangeSet<Int><>.IndexSequence.Iterator(uint64_t a1)
{
  type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for IndexingIterator<RangeSet<Int>.Ranges>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<Int>.Ranges>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
    lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges();
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<RangeSet<Int>.Ranges>);
    }
  }
}

uint64_t outlined init with take of (offset: Int, element: Text.Layout.Run)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (offset: Int, element: Text.Layout.Run)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, type metadata accessor for TextLinesLayer, a3);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, type metadata accessor for TextRunsLayer, a3);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, type metadata accessor for StaticEffectLayer, a3);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, type metadata accessor for DynamicEffectLayer, a3);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    a4 = *v5 & 0xFFFFFFFFFFFFFF8;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  if (v8 < 0)
  {
    v15 = v8;
  }

  else
  {
    v15 = a4;
  }

  result = MEMORY[0x19A8BDCD0](v15);
  if (result < v6)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9)
  {
    if (v8 < 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = MEMORY[0x19A8BDCD0](v13);
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v14)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, 0, v4);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = a3;
  v7 = a2;
  v8 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  v10 = v8 >> 62;
  if (!(v8 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  if (v8 < 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = v5;
  }

  result = MEMORY[0x19A8BDCD0](v19);
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_29;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v9[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v10)
  {
    if (v8 < 0)
    {
      v18 = v8;
    }

    else
    {
      v18 = v5;
    }

    result = MEMORY[0x19A8BDCD0](v18);
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_30;
  }

  v5[2] = result + v11;
LABEL_20:
  if (v4 > 0)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

void type metadata completion function for Text.Effect.RenderSegmentation.StaticRuns.Iterator()
{
  type metadata accessor for Text.Layout.Line();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(319, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex)()
{
  if (!lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, cluster: Text.Effect.ClusterIndex));
    }
  }
}

void type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)()
{
  if (!lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>))
  {
    type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(255, &lazy cache variable for type metadata for Range<Text.Effect.ClusterIndex>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex, MEMORY[0x1E69E66A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>));
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t closure #1 in SomersaultTextEffect.configuration(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v10;
  v27[2] = *(a2 + 32);
  v28 = *(a2 + 48);
  v11 = specialized static Text.Effect.ClusterTransformMap.byWords(fragment:)(v27);
  v13 = v12;
  outlined init with copy of Text.Effect.DrawableFragment<SomersaultTextEffect>(a2, v25, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<SomersaultTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD010SomersaultcF0V_Tt2g5(a2, a3, 1, v25);
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = *a1;
  *(v14 + 32) = v6;
  *(v14 + 40) = v7;
  *(v14 + 48) = v8;
  *(v14 + 56) = v9;
  *(v14 + 64) = v11;
  *(v14 + 72) = v13;
  v15 = swift_allocObject();
  v16 = v25[3];
  *(v15 + 48) = v25[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = v25[4];
  v17 = v26;
  v18 = v25[1];
  *(v15 + 16) = v25[0];
  *(v15 + 32) = v18;
  *(v15 + 96) = v17;
  *(v15 + 104) = partial apply for closure #1 in closure #1 in SomersaultTextEffect.configuration(_:);
  *(v15 + 112) = v14;
  v19 = MEMORY[0x1E69E6F90];
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v15;
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v19);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_195CC8D00;
  *(v21 + 32) = inited;
  outlined init with copy of [Text.Effect.Timing.Fragment](&v29, v24, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
  outlined init with copy of [Text.Effect.Timing.Fragment](&v30, v24, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
  outlined init with copy of Text.Effect.Timing.GlyphTiming(&v31, v24, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
  outlined init with copy of Text.Effect.ChunkCollection(&v32, v24);
  v22 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v21);
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v21 + 32);
  return v22;
}

void closure #1 in closure #1 in SomersaultTextEffect.configuration(_:)(unint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v37.i64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = *(a3 + 32);
  if (*(v14 + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  outlined init with copy of Text.Effect.Timing.GlyphTiming(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1, v37.i64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v15 = a2[5] - a2[4];
  v16 = *v13;
  v17 = 0.0;
  if (v15 < 0.0)
  {
    v15 = 0.0;
    if (v16 >= 0.0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v18 = v13[1];
    if (v16 + v18 <= v15)
    {
      v17 = 6.28318531;
    }

    else
    {
      v17 = (v15 - v16) / v18 * 360.0 * 0.0174532925;
    }

    goto LABEL_11;
  }

  if (v15 > v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  Text.Effect.ClusterTransformMap.subscript.getter(a4, a5, v39);
  if ((v43 & 1) == 0)
  {
    v23 = v41;
    v24 = v40;
    v25 = v42;
LABEL_17:
    v37 = v24;
    v38 = v23;
    v26 = *&v24.i64[1] - *&v23.i64[1];
    v28 = *&v24.i64[1] - *&v23.i64[1];
    v29 = *&v23.i64[1] + v25;
    v27 = v29;
    MidX = CGRectGetMidX(*v24.i8);
    *&v53.origin.x = v37.i64[0];
    v53.origin.y = v26;
    *&v53.size.width = v38.i64[0];
    v53.size.height = v27;
    MinY = CGRectGetMinY(v53);
    v46 = 0;
    v45 = 0uLL;
    v47 = v17;
    v48 = MidX;
    v49 = MinY;
    __asm { FMOV            V0.2D, #1.0 }

    v50 = _Q0;
    v51 = 0x3FF0000000000000;
    v52 = 0;
    Text.Effect.TransformContext.record(target:for:spring:)(&v45, a1, v13 + *(v10 + 24), v44);
    Text.Effect.TransformContext.draw(state:keyPath:)(v44, 0, 0, 0, 1);
    outlined destroy of Text.Effect.Timing.GlyphTiming(v13);
    return;
  }

  v19 = *a2;
  if (!__OFSUB__(*a2, a1))
  {
    v20 = vdup_n_s32(*&v19 == a1);
    v21.i64[0] = v20.u32[0];
    v21.i64[1] = v20.u32[1];
    v22 = vcltzq_s64(vshlq_n_s64(v21, 0x3FuLL));
    v23 = vandq_s8(*(a2 + 28), v22);
    v24 = vandq_s8(*(a2 + 26), v22);
    if (*&v19 == a1)
    {
      v25 = a2[30];
    }

    else
    {
      v25 = 0.0;
    }

    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance SomersaultTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized SomersaultTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SomersaultTextEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect();
  result = lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect();
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  v6 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v6;
  v13 = *(a3 + 32);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  result = closure #1 in SomersaultTextEffect.configuration(_:)(v9, v10, v12);
  *a4 = result;
  return result;
}

{
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  v6 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v6;
  v13 = *(a3 + 32);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  result = closure #1 in ExplodeTextEffect.configuration(_:)(v9, v10, v12);
  *a4 = result;
  return result;
}

double specialized SomersaultTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableFragment<SomersaultTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[24] = 1;
  v18[16] = 0;
  v21 = xmmword_195CCE920;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v27 = 0;
  v28 = 0;
  v26 = 0x3F947AE147AE147BLL;
  v29 = 0;
  v30 = xmmword_195CCE930;
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = 0;
  v34 = xmmword_195CCB160;
  v35 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static SomersaultTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<SomersaultTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<SomersaultTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD010SomersaultcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

uint64_t specialized SomersaultTextEffect.configuration(_:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  if (v2 >= v1 >> 1)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
  }

  v0[2] = v2 + 1;
  v3 = &v0[2 * v2];
  v3[4] = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v3[5] = 0;
  return MEMORY[0x1E69E7CC0];
}

void type metadata accessor for Text.Effect.DrawableFragment<SomersaultTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SomersaultTextEffect and conformance SomersaultTextEffect();
    v7 = a3(a1, &type metadata for SomersaultTextEffect, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.DrawableFragment<SomersaultTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, ValueMetadata *, unint64_t))
{
  type metadata accessor for Text.Effect.DrawableFragment<SomersaultTextEffect>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI4TextV0F16AnimationSupportE6EffectO19SubcomponentKeyPathVG_So6CGRectVs5NeverOTg504_s20fg18Support07ExplodeA6i18V13configurationy7d74UI0A0VAAE0E0O13ConfigurationVy__ACGSSFAI8DrawableVAI6TimingV_AI0J8Fragmentz78__ACGAI19QuantizationContextVtcfU_yAI12ClusterIndexV_AI09TransformN0VztcfU_So6m5VAI19jkL6VXEfU_AK16TransformContextVTf1cn_n(void *a1, const void *a2)
{
  v5 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v2;
  v41 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v41;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v36 = a2;
  memcpy(v40, a2, 0x179uLL);
  if (v40[34])
  {
    v12 = v40[43];
    v13 = a1 + 9;
    while (1)
    {
      v14 = __OFSUB__(v9, v40[42]);
      v15 = v9 - v40[42];
      if (v14)
      {
        break;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v15 >= *(v12 + 16))
      {
        goto LABEL_17;
      }

      v16 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
      v18 = *(v16 - 8);
      v17 = v16 - 8;
      v19 = *(v18 + 80);
      v20 = *(v18 + 72);
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      v21 = *(v12 + ((v19 + 32) & ~v19) + v20 * v15 + *(v17 + 28));
      if (v10 >= *(v21 + 16))
      {
        goto LABEL_19;
      }

      v22 = v37;
      outlined init with copy of Text.Effect.PathInterpolator.Glyph(v21 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v10, v37, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
      outlined init with copy of Text.Effect.TransformContext(v40, &v39);
      Text.Effect.PathInterpolator.Glyph.bounds(for:)(v11);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      outlined destroy of Text.Effect.Timing.GlyphTiming(v22, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
      outlined destroy of Text.Effect.TransformContext(v40);
      v41 = v8;
      v32 = *(v8 + 16);
      v31 = *(v8 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v8 = v41;
      }

      *(v8 + 16) = v32 + 1;
      v33 = (v8 + 32 * v32);
      v33[4] = v24;
      v33[5] = v26;
      v33[6] = v28;
      v33[7] = v30;
      if (!--v7)
      {
        return v8;
      }

      v9 = *(v13 - 2);
      v10 = *(v13 - 1);
      v11 = *v13;
      memcpy(v40, v36, 0x179uLL);
      v12 = v40[43];
      v13 += 3;
      if (!v40[34])
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

LABEL_20:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD07StretchcF0V_Tt2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 16);
  v34 = *a1;
  v35 = v13;
  v36 = *(a1 + 32);
  v37 = *(a1 + 48);
  outlined init with copy of Text.Effect.DrawableFragment<ExplodeTextEffect>(a1, &v29, a4, a5, a6, type metadata accessor for Text.Effect.DrawableFragment);
  v14 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v34, isUniquelyReferenced_nonNull_native, 0.0);
  v16 = v29;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  outlined init with copy of Text.Effect.DrawableFragment<ExplodeTextEffect>(a1, &v29, a4, a5, a6, type metadata accessor for Text.Effect.DrawableFragment);

  v17 = specialized static Text.Effect.stopMarkers(_:)(&v34);
  v19 = v18;
  outlined destroy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(a1, a4, a5, a6, type metadata accessor for Text.Effect.DrawableFragment);
  v20 = Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(a2, v17, v19, a3, v16, 0.0);
  v22 = v21;

  v23 = *(v16 + 2);
  if (!v23)
  {

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(v23, 0);
  v25 = specialized Sequence._copySequenceContents(initializing:)(&v29, v24 + 4, v23, v16);

  outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
  if (v25 == v23)
  {

LABEL_5:
    v29 = v24;
    specialized MutableCollection<>.sort(by:)(&v29);

    result = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v29);
    v27 = v31;
    *a7 = v30;
    *(a7 + 16) = v27;
    *(a7 + 32) = v32;
    *(a7 + 48) = v33;
    *(a7 + 56) = 0;
    *(a7 + 64) = v20;
    *(a7 + 72) = v22;
    *(a7 + 80) = result;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF19SubcomponentKeyPathVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35[-v11];
  type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35[-v18];
  v36[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v37 = 0;
  v38 = a5;
  v39 = 0;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v42 = xmmword_1EAEE98D0;
  v43[0] = unk_1EAEE98E0;
  *(v43 + 9) = unk_1EAEE98E9;
  v40 = static Text.Effect.DrawingState.zero;
  v41 = unk_1EAEE98C0;
  v20 = type metadata accessor for Spring();
  v21 = *(*(v20 - 8) + 56);
  v21(v12, 1, 1, v20);
  v22 = a1[2];
  v23 = a1[3];
  v19[2] = v22;
  v19[3] = v23;
  v24 = *(a1 + 57);
  *(v19 + 57) = v24;
  v26 = *a1;
  v25 = a1[1];
  *v19 = *a1;
  v19[1] = v25;
  v19[7] = v22;
  v19[8] = v23;
  *(v19 + 137) = v24;
  v19[5] = v26;
  v19[6] = v25;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v43[0];
  *(v19 + 217) = *(v43 + 9);
  v19[12] = v29;
  v19[13] = v30;
  v19[10] = v27;
  v19[11] = v28;
  v31 = v14[11];
  v21(v19 + v31, 1, 1, v20);
  v32 = v19 + v14[12];
  v33 = v19 + v14[13];
  outlined assign with take of Spring?(v12, v19 + v31);
  *v32 = 0;
  v32[8] = 1;
  *v33 = 0;
  v33[8] = 1;
  outlined init with copy of Text.Effect.DrawableFragment<ExplodeTextEffect>(v19, v16, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  swift_beginAccess();
  specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v16, v36);
  swift_endAccess();
  return outlined destroy of Text.Effect.DrawableFragment<ScaleRippleTextEffect>(v19, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
}

uint64_t one-time initialization function for defaultSpring()
{
  v0 = type metadata accessor for Spring();
  __swift_allocate_value_buffer(v0, static ExplodeTextEffect.defaultSpring);
  __swift_project_value_buffer(v0, static ExplodeTextEffect.defaultSpring);
  return Spring.init(mass:stiffness:damping:allowOverDamping:)();
}

uint64_t closure #1 in ExplodeTextEffect.configuration(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  outlined init with copy of Text.Effect.DrawableFragment<ExplodeTextEffect>(a2, v23, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV_12quantization7optionsAhF16DrawableFragmentVy__xG_AF19QuantizationContextVAH7OptionsVtcAD0cF0RzlufCAD07StretchcF0V_Tt2g5Tm(a2, a3, 6, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, v23);
  v25 = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = *a1;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;
  v11 = *(a2 + 16);
  *(v10 + 64) = *a2;
  *(v10 + 80) = v11;
  *(v10 + 96) = *(a2 + 32);
  *(v10 + 112) = *(a2 + 48);
  v12 = swift_allocObject();
  v13 = v23[3];
  *(v12 + 48) = v23[2];
  *(v12 + 64) = v13;
  *(v12 + 80) = v23[4];
  v14 = v24;
  v15 = v23[1];
  *(v12 + 16) = v23[0];
  *(v12 + 32) = v15;
  *(v12 + 96) = v14;
  *(v12 + 104) = partial apply for closure #1 in closure #1 in ExplodeTextEffect.configuration(_:);
  *(v12 + 112) = v10;
  v16 = MEMORY[0x1E69E6F90];
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v12;
  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v16);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_195CC8D00;
  *(v18 + 32) = inited;
  outlined init with copy of Text.Effect.DrawableFragment<ExplodeTextEffect>(a2, v22, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.DrawableFragment);
  v19 = MEMORY[0x1E69E62F8];
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v25, v22, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo, MEMORY[0x1E69E62F8], type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v26, v22, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment, v19, type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>);
  outlined init with copy of [Text.Effect.Timing.GlyphTiming](&v27, v22, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphTiming], type metadata accessor for Text.Effect.Timing.GlyphTiming, MEMORY[0x1E69E62F8], _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0);
  outlined init with copy of Text.Effect.ChunkCollection(&v28, v22);
  v20 = specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v18);
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v18 + 32);
  return v20;
}

uint64_t closure #1 in closure #1 in ExplodeTextEffect.configuration(_:)(unint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v139 = a2;
  v13 = MEMORY[0x1E6981010];
  type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v137 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v136 = v116 - v16;
  type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v13, MEMORY[0x1E69E7BA8]);
  v18 = v17;
  v19 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v116 - v20;
  v22 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0) - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = *(a3 + 16);
  if (*(v26 + 16) <= a1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v27 = *(a3 + 32);
  if (*(v27 + 16) <= a1)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
    goto LABEL_18;
  }

  *&v144 = v19;
  v28 = v26 + 32 * a1;
  v9 = *(v28 + 32);
  v29 = *(v28 + 48);
  outlined init with copy of Text.Effect.PathInterpolator.Glyph(v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * a1, v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v30 = v139;
  v31 = v30[5] - v30[4];
  v32 = *v25;
  v135 = v18;
  if (v31 >= 0.0)
  {
    v138 = 0.0;
    if (v31 <= v32)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v31 = 0.0;
  v138 = 0.0;
  if (v32 < 0.0)
  {
LABEL_8:
    v138 = v31 - v32;
  }

LABEL_9:
  memcpy(v182, v139, 0x179uLL);

  v18 = Text.Effect.TransformContext.subcomponents(for:)(a1);
  a3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI4TextV0F16AnimationSupportE6EffectO19SubcomponentKeyPathVG_So6CGRectVs5NeverOTg504_s20fg18Support07ExplodeA6i18V13configurationy7d74UI0A0VAAE0E0O13ConfigurationVy__ACGSSFAI8DrawableVAI6TimingV_AI0J8Fragmentz78__ACGAI19QuantizationContextVtcfU_yAI12ClusterIndexV_AI09TransformN0VztcfU_So6m5VAI19jkL6VXEfU_AK16TransformContextVTf1cn_n(v18, v30);

  v33 = *MEMORY[0x1E695F050];
  v34 = *(MEMORY[0x1E695F050] + 8);
  v35 = *(MEMORY[0x1E695F050] + 16);
  v36 = *(MEMORY[0x1E695F050] + 24);
  v37 = *(a3 + 16);
  if (v37)
  {
    v18 = (a3 + 56);
    do
    {
      *&v33 = CGRectUnion(*&v33, *(v18 - 3));
      v18 += 4;
      --v37;
    }

    while (v37);
  }

  v8 = v36;
  v6 = v35;
  v5 = v34;
  v4 = v33;

  if (__OFSUB__(*&v182[0], a1))
  {
    goto LABEL_47;
  }

  v131 = v6;
  if (*&v182[0] == a1)
  {
    v6 = *(&v182[13] + 1);
    v38 = *&v182[13];
    v7 = *(&v182[14] + 1);
    v39 = *&v182[14];
    v40 = v182[15];
  }

  else
  {
    v40 = 0uLL;
    v38 = 0.0;
    v6 = 0.0;
    v39 = 0.0;
    v7 = 0.0;
  }

  v41 = v8;
  v116[1] = v29;
  v117 = v25;
  v128 = v39;
  v129 = v38;
  v178[0] = v38;
  v178[1] = v6;
  v178[2] = v39;
  v178[3] = v7;
  v143 = v40;
  v179 = v40;
  v18 = *(v139 + 34);
  v42 = *(v139 + 328);
  v149 = *(v139 + 312);
  v150 = v42;
  v151 = *(v139 + 344);
  v43 = *(v139 + 296);
  v147 = *(v139 + 280);
  v148 = v43;
  if (!v18)
  {
    goto LABEL_21;
  }

  a3 = *(&v182[16] + 1);
  v180[0] = v18;
  v44 = *(v139 + 280);
  *&v180[3] = *(v139 + 296);
  v45 = *(v139 + 328);
  *&v180[5] = *(v139 + 312);
  *&v180[7] = v45;
  *&v180[9] = *(v139 + 344);
  *&v180[1] = v44;
  outlined init with copy of Text.Effect.PathInterpolator(v180, v181);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  v47 = *(a3 + 16);
  v46 = *(a3 + 24);
  if (v47 >= v46 >> 1)
  {
    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, a3);
  }

  *(&v181[1] + 8) = v148;
  *(&v181[2] + 8) = v149;
  *(&v181[3] + 8) = v150;
  *(&v181[4] + 8) = v151;
  *(v181 + 8) = v147;
  *(&v181[5] + 8) = 0u;
  *(&v181[6] + 8) = 0u;
  *(&v181[7] + 8) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(&v181[8] + 8) = _Q0;
  *&v181[0] = v18;
  *(&v181[9] + 1) = 0x3FF0000000000000;
  LOBYTE(v181[10]) = 0;
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v181);
  *(a3 + 16) = v47 + 1;
  v53 = a3 + 216 * v47;
  v54 = v181[1];
  *(v53 + 32) = v181[0];
  *(v53 + 48) = v54;
  v55 = v181[2];
  v56 = v181[3];
  v57 = v181[5];
  *(v53 + 96) = v181[4];
  *(v53 + 112) = v57;
  *(v53 + 64) = v55;
  *(v53 + 80) = v56;
  v58 = v181[6];
  v59 = v181[7];
  v60 = v181[9];
  *(v53 + 160) = v181[8];
  *(v53 + 176) = v60;
  *(v53 + 128) = v58;
  *(v53 + 144) = v59;
  v61 = v181[10];
  v62 = v181[11];
  v63 = v181[12];
  *(v53 + 240) = v181[13];
  *(v53 + 208) = v62;
  *(v53 + 224) = v63;
  *(v53 + 192) = v61;
  *(v139 + 33) = a3;
  v41 = v8;
LABEL_21:
  v130 = v41;
  v132 = v5;
  v133 = v4;
  if (*(&v182[6] + 1))
  {
    type metadata accessor for Text.Effect.DrawableFragment<ExplodeTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteConfiguration<ExplodeTextEffect>, lazy protocol witness table accessor for type ExplodeTextEffect and conformance ExplodeTextEffect, &type metadata for ExplodeTextEffect, type metadata accessor for Text.Effect.ConcreteConfiguration);
    v64 = swift_dynamicCastClass();
    if (v64)
    {
      if ((*(v64 + 32) & 1) == 0)
      {
        v65 = *(v64 + 52);
        Color.Resolved.animatableData.getter();
        if ((v65 & 1) == 0)
        {
          Color.Resolved.animatableData.getter();
          LODWORD(v8) = v66;
          LODWORD(v142) = v67;
          LODWORD(v141) = v68;
          LODWORD(v140) = v69;
          if (one-time initialization token for color != -1)
          {
            swift_once();
          }

          v70 = v139 + 360;
          specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.color, v138);
          if (one-time initialization token for black != -1)
          {
            LODWORD(v134) = LODWORD(v8);
            HIDWORD(v8) = v71;
            swift_once();
            LODWORD(v8) = v134;
          }

          v181[0] = static Color.Resolved.black;
          Color.Resolved.animatableData.setter();
          *v70 = v181[0];
          v70[16] = 0;
        }
      }
    }
  }

  v134 = v21;
  v72 = v139;
  memcpy(v181, v139, 0x179uLL);
  v118 = Text.Effect.TransformContext.subcomponents(for:)(a1);
  v73 = *(v118 + 16);
  if (v73)
  {
    v122 = BYTE8(v181[3]);
    v120 = v7 + *&v143;
    v121 = v6 - v7;
    v74 = *(a4 + 24);
    v119 = v9 + -0.5 + v9 + -0.5;
    v126 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges;
    v127 = v74;
    v124 = (v15 + 8);
    v125 = (v15 + 16);
    a4 = v144 + 8;
    v75 = (v118 + 48);
    v123 = v9;
    do
    {
      a1 = *(v75 - 2);
      v15 = *(v75 - 1);
      v79 = *v75;
      memcpy(v180, v72, 0x179uLL);
      Text.Effect.TransformContext.subcomponentBounds(for:)(a1, v15, v79);
      v5 = v80;
      v4 = v81;
      v83 = v82;
      v6 = v84;
      v85 = v136;
      v86 = v137;
      (*v125)(v136, v127 + v126, v137);
      v21 = v134;
      RangeSet.ranges.getter();
      (*v124)(v85, v86);
      v18 = v135;
      v87 = RangeSet.Ranges.count.getter();
      v142 = v6;
      *&v143 = v4;
      if (v87 == 1)
      {
        RangeSet.Ranges.subscript.getter();
        RangeSet.Ranges.subscript.getter();
        a3 = v146 - v145;
        if (__OFSUB__(v146, v145))
        {
          __break(1u);
          goto LABEL_44;
        }

        (*a4)(v21, v18);
      }

      else
      {
        (*a4)(v21, v18);
        a3 = 0;
      }

      specialized ExplodeTextEffect.Target.amplitude(for:at:of:)(a3, v9);
      v89 = v88;
      v183.size.width = v128;
      v183.origin.x = v129;
      v183.size.height = v120;
      v183.origin.y = v121;
      Height = CGRectGetHeight(v183);
      if (one-time initialization token for z != -1)
      {
        swift_once();
      }

      v91 = static ExplodeTextEffect.Target.z;
      v92 = v138;
      specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.z, v138);
      *&v94 = exp(Height * 3.0 * (v89 * 1.5 + 0.25) * v93 / Height);
      v144 = v94;
      v140 = ExplodeTextEffect.Target.translation(for:at:of:)(v178, a3, v9, v92);
      v141 = v95;
      ExplodeTextEffect.Target.vibration(for:at:)(v178, v9, v92);
      v97 = v96;
      v99 = v98;
      v184.origin.x = v5;
      v184.size.height = v142;
      *&v184.origin.y = v143;
      v184.size.width = v83;
      v100 = v132;
      v101 = v133;
      v187.origin.x = v133;
      v187.origin.y = v132;
      v102 = v130;
      v103 = v131;
      v187.size.width = v131;
      v187.size.height = v130;
      v104 = ExplodeTextEffect.Target.subcomponentTranslation(for:in:)(v184, v187);
      v105 = *&v144 * (v140 + v97 + v104.width) + 0.0;
      v106 = *&v144 * (v141 + v99 + v104.height) + 0.0;
      v185.origin.x = v101;
      v185.origin.y = v100;
      v185.size.width = v103;
      v185.size.height = v102;
      v107 = CGRectGetMidX(v185) + v105;
      v186.origin.x = v101;
      v186.origin.y = v100;
      v186.size.width = v103;
      v7 = v106;
      v186.size.height = v102;
      v108 = v105;
      v8 = v107;
      v109 = CGRectGetMidY(v186) + v106;
      specialized ExplodeTextEffect.Target.amplitude(for:at:of:)(a3, v9);
      v111 = v119 * (v110 + 0.5) * 10.0;
      specialized ExplodeTextEffect.Timeline.value(at:)(v91, v92);
      v113 = v112 * v111;
      v114 = ExplodeTextEffect.Target.opacity(for:at:of:)(v178, a3, v9, v92);
      *&v168 = 0;
      *(&v168 + 1) = v108;
      v169 = v7;
      v170 = v113;
      v171 = v8;
      v172 = v109;
      v173 = v144;
      v174 = v144;
      v175 = v114;
      v176 = 0;
      if (v122)
      {
        _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF19SubcomponentKeyPathVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(&v168, v180[1], a1, v15, v79);
        v76 = 0;
        v77 = vdupq_lane_s64(v144, 0);
        v78 = 0;
        v72 = v139;
      }

      else
      {
        v72 = v139;
        memcpy(v177, v139, sizeof(v177));
        Text.Effect.TransformContext.cancelPosition(target:)(&v168, &v152);
        v108 = *(&v152 + 1);
        v78 = v152;
        v7 = v153;
        v113 = v154;
        v8 = v155;
        v109 = v156;
        v77 = v157;
        v114 = v158;
        v76 = v159;
      }

      v75 += 3;
      *&v160 = v78;
      *(&v160 + 1) = v108;
      v161 = v7;
      v162 = v113;
      v163 = v8;
      v164 = v109;
      v165 = v77;
      v166 = v114;
      v167 = v76;
      Text.Effect.TransformContext.draw(state:keyPath:)(&v160, a1, v15, v79, 0);
      --v73;
      v9 = v123;
    }

    while (v73);
  }

  return outlined destroy of Text.Effect.Timing.GlyphTiming(v117, type metadata accessor for Text.Effect.Timing.GlyphTiming);
}

uint64_t specialized ExplodeTextEffect.Timeline.value(at:)(uint64_t result, double a2)
{
  if (*(result + 16))
  {
    v2 = result + 64;
    v3 = *(result + 16);
    while (1)
    {
      v4 = *(v2 - 16);
      if (v4 >= a2)
      {
        break;
      }

      a2 = a2 - v4;
      v2 += 40;
      if (!--v3)
      {
        return result;
      }
    }

    v5 = *(v2 - 8);
    v6 = a2 / v4;

    v5(v7, v6);
  }

  return result;
}

double ExplodeTextEffect.Target.translation(for:at:of:)(CGFloat *a1, uint64_t a2, double a3, double a4)
{
  v15.origin.x = *a1;
  v15.size.width = a1[2];
  v7 = a1[3];
  v15.origin.y = a1[1] - v7;
  v15.size.height = v7 + a1[4];
  Height = CGRectGetHeight(v15);
  specialized ExplodeTextEffect.Target.amplitude(for:at:of:)(a2, a3);
  v10 = v9;
  if (one-time initialization token for x != -1)
  {
    swift_once();
  }

  specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.x, a4);
  if (one-time initialization token for y != -1)
  {
    v14 = v11;
    swift_once();
    v11 = v14;
  }

  v12 = (1.0 - v10) * ((a3 + -0.5 + a3 + -0.5) * (Height * 3.0) * v11);
  specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.y, a4);
  return v12;
}

uint64_t ExplodeTextEffect.Target.vibration(for:at:)(CGFloat *a1, double a2, double a3)
{
  if (one-time initialization token for vibration != -1)
  {
    swift_once();
  }

  specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.vibration, a3);
  v14.origin.x = *a1;
  v14.size.width = a1[2];
  v5 = a1[3];
  v14.origin.y = a1[1] - v5;
  v14.size.height = v5 + a1[4];
  CGRectGetHeight(v14);
  result = Double.hashValue.getter();
  if (__OFADD__(result, 123))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = result + 123;
  v13 = 0xDA3E39CB94B95BDBLL;
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE6random2in5usingxSnyxG_qd__ztSGRd__lFZSd_20TextAnimationSupport07ExplodeI6EffectV11PCG32RandomVTt2g5(&v12, 0.0, 1.0);
  result = Double.hashValue.getter();
  if (__OFADD__(result, 123))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result + 123;
  v13 = 0xDA3E39CB94B95BDBLL;
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE6random2in5usingxSnyxG_qd__ztSGRd__lFZSd_20TextAnimationSupport07ExplodeI6EffectV11PCG32RandomVTt2g5(&v12, 0.0, 1.0);
  result = Double.hashValue.getter();
  if (__OFADD__(result, 123))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result + 123;
  v13 = 0xDA3E39CB94B95BDBLL;
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE6random2in5usingxSnyxG_qd__ztSGRd__lFZSd_20TextAnimationSupport07ExplodeI6EffectV11PCG32RandomVTt2g5(&v12, 0.0, 1.0);
  result = Double.hashValue.getter();
  if (!__OFADD__(result, 123))
  {
    v12 = result + 123;
    v13 = 0xDA3E39CB94B95BDBLL;
    result = _sSBss17FixedWidthInteger14RawSignificandRpzrlE6random2in5usingxSnyxG_qd__ztSGRd__lFZSd_20TextAnimationSupport07ExplodeI6EffectV11PCG32RandomVTt2g5(&v12, 0.0, 1.0);
    __asm { FMOV            V1.2D, #-1.0 }

    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

CGSize __swiftcall ExplodeTextEffect.Target.subcomponentTranslation(for:in:)(__C::CGRect a1, __C::CGRect in)
{
  y = a1.origin.y;
  x = a1.origin.x;
  v4 = 0.0;
  if (v34 >= 2.38333333)
  {
    v15 = 0.0;
  }

  else
  {
    height = in.size.height;
    width = in.size.width;
    v7 = in.origin.y;
    v8 = a1.size.height;
    v9 = a1.size.width;
    v10 = in.origin.x;
    MidX = CGRectGetMidX(a1);
    v35.origin.x = v10;
    v35.origin.y = v7;
    v35.size.width = width;
    v35.size.height = height;
    v31 = CGRectGetMidX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = v9;
    v36.size.height = v8;
    MidY = CGRectGetMidY(v36);
    rect = v10;
    v37.origin.x = v10;
    v30 = v7;
    v37.origin.y = v7;
    v12 = width;
    v37.size.width = width;
    v13 = height;
    v37.size.height = height;
    v14 = CGRectGetMidY(v37);
    if (vabdd_f64(MidX, v31) < 0.001)
    {
      v15 = 0.0;
      v4 = 0.0;
    }

    else
    {
      v15 = 0.0;
      v4 = 0.0;
      if (vabdd_f64(MidY, v14) >= 0.001)
      {
        v16 = MidX - v31;
        v17 = MidY - v14;
        v18 = sqrt(v16 * v16 + v17 * v17);
        v38.origin.x = rect;
        v38.origin.y = v30;
        v19 = v12;
        v38.size.width = v12;
        v20 = v13;
        v38.size.height = v13;
        v21 = CGRectGetWidth(v38);
        if (one-time initialization token for x != -1)
        {
          swift_once();
        }

        v22 = v16 / v18;
        v23 = v17 / v18;
        specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.x, v34);
        v25 = v21 * v24 * 0.4;
        v39.origin.x = rect;
        v39.origin.y = v30;
        v39.size.width = v19;
        v39.size.height = v20;
        v26 = CGRectGetHeight(v39);
        if (one-time initialization token for y != -1)
        {
          swift_once();
        }

        v4 = v22 * v25;
        specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.y, v34);
        v15 = v23 * (v26 * v27);
      }
    }
  }

  v28 = v4;
  result.height = v15;
  result.width = v28;
  return result;
}

double ExplodeTextEffect.Target.opacity(for:at:of:)(CGFloat *a1, uint64_t a2, double a3, double a4)
{
  specialized ExplodeTextEffect.Target.amplitude(for:at:of:)(a2, a3);
  v7 = v6;
  v24.origin.x = *a1;
  v24.size.width = a1[2];
  v8 = a1[3];
  v24.origin.y = a1[1] - v8;
  v24.size.height = v8 + a1[4];
  Height = CGRectGetHeight(v24);
  v10 = (v7 * 1.5 + 0.25) * (Height * 3.0);
  if (one-time initialization token for z != -1)
  {
    swift_once();
  }

  specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.z, a4);
  v12 = exp(v10 * v11 / Height);
  if (v12 >= 4.0)
  {
    v15 = v12 + -4.0;
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 * 0.5;
    if (v15 <= 2.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1.0;
    }

    if (one-time initialization token for alpha != -1)
    {
      swift_once();
    }

    specialized ExplodeTextEffect.Timeline.value(at:)(static ExplodeTextEffect.Target.alpha, a4);
    v20 = 1.0 - v18 * v18;
    if (v20 < 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 1.0 - v18 * v18;
    }

    if (v20 <= 1.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1.0;
    }

    return v22 * v19;
  }

  else
  {
    if (one-time initialization token for alpha != -1)
    {
      swift_once();
    }

    v13 = static ExplodeTextEffect.Target.alpha;

    specialized ExplodeTextEffect.Timeline.value(at:)(v13, a4);
  }

  return result;
}

double one-time initialization function for alpha()
{
  v0 = type metadata accessor for UnitCurve();
  v1 = *(v0 - 8);
  v26 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ExplodeTextEffect.Timeline<Double>.Keyframe>, type metadata accessor for ExplodeTextEffect.Timeline<Double>.Keyframe, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_195CCE9D0;
  v27 = 0x3FF0000000000000;
  v28 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v8 = v29;
  *(v7 + 32) = v30;
  *(v7 + 40) = v8;
  v25 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 48) = 0x3FEB333333333333;
  *(v7 + 56) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 64) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v24 = *(v1 + 16);
  v19 = v3;
  v24(v3, v6, v0);
  v27 = 0;
  v28 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v23 = *(v1 + 8);
  v20 = v0;
  v23(v6, v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  v11 = *(v1 + 32);
  v21 = v1 + 32;
  v22 = v11;
  v11(v10 + v9, v3, v0);
  v12 = v29;
  *(v7 + 72) = v30;
  *(v7 + 80) = v12;
  *(v7 + 88) = 0x3FEF74BC6A7EF9DBLL;
  *(v7 + 96) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 104) = v10;
  v27 = 0;
  v28 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v13 = v29;
  *(v7 + 112) = v30;
  *(v7 + 120) = v13;
  *(v7 + 128) = 0x3FE6E147AE147AE1;
  *(v7 + 136) = v25;
  *(v7 + 144) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v15 = v19;
  v14 = v20;
  v24(v19, v6, v20);
  v27 = 0x3FF0000000000000;
  v28 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v23(v6, v14);
  v16 = swift_allocObject();
  v22(v16 + v9, v15, v14);
  v18 = v29;
  result = v30;
  *(v7 + 152) = v30;
  *(v7 + 160) = v18;
  *(v7 + 168) = 0x3FBDB22D0E560419;
  *(v7 + 176) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 184) = v16;
  static ExplodeTextEffect.Target.alpha = v7;
  return result;
}

double one-time initialization function for color()
{
  v0 = type metadata accessor for UnitCurve();
  v1 = *(v0 - 8);
  v26 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ExplodeTextEffect.Timeline<Double>.Keyframe>, type metadata accessor for ExplodeTextEffect.Timeline<Double>.Keyframe, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_195CCE9D0;
  v27 = 0;
  v28 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v8 = v29;
  *(v7 + 32) = v30;
  *(v7 + 40) = v8;
  v25 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 48) = 0x3FE8000000000000;
  *(v7 + 56) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 64) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v24 = *(v1 + 16);
  v19 = v3;
  v24(v3, v6, v0);
  v27 = 0x3FF0000000000000;
  v28 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v23 = *(v1 + 8);
  v20 = v0;
  v23(v6, v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  v11 = *(v1 + 32);
  v21 = v1 + 32;
  v22 = v11;
  v11(v10 + v9, v3, v0);
  v12 = v29;
  *(v7 + 72) = v30;
  *(v7 + 80) = v12;
  *(v7 + 88) = 0x3FEF74BC6A7EF9DBLL;
  *(v7 + 96) = partial apply for implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:);
  *(v7 + 104) = v10;
  v27 = 0x3FF0000000000000;
  v28 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v13 = v29;
  *(v7 + 112) = v30;
  *(v7 + 120) = v13;
  *(v7 + 128) = 0x3FE6E147AE147AE1;
  *(v7 + 136) = v25;
  *(v7 + 144) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v15 = v19;
  v14 = v20;
  v24(v19, v6, v20);
  v27 = 0;
  v28 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v23(v6, v14);
  v16 = swift_allocObject();
  v22(v16 + v9, v15, v14);
  v18 = v29;
  result = v30;
  *(v7 + 152) = v30;
  *(v7 + 160) = v18;
  *(v7 + 168) = 0x3FBDB22D0E560419;
  *(v7 + 176) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 184) = v16;
  static ExplodeTextEffect.Target.color = v7;
  return result;
}

double one-time initialization function for vibration()
{
  v0 = type metadata accessor for UnitCurve();
  v1 = *(v0 - 8);
  v25 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ExplodeTextEffect.Timeline<Double>.Keyframe>, type metadata accessor for ExplodeTextEffect.Timeline<Double>.Keyframe, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_195CCE9D0;
  v26 = 0;
  v27 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v8 = v28;
  *(v7 + 32) = v29;
  *(v7 + 40) = v8;
  v24 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 48) = 0x3FC999999999999ALL;
  *(v7 + 56) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 64) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v23 = *(v1 + 16);
  v23(v3, v6, v0);
  v26 = 0x3FF0000000000000;
  v27 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v22 = *(v1 + 8);
  v19 = v0;
  v22(v6, v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  v11 = *(v1 + 32);
  v20 = v3;
  v21 = v11;
  v11(v10 + v9, v3, v0);
  v12 = v28;
  *(v7 + 72) = v29;
  *(v7 + 80) = v12;
  *(v7 + 88) = 0x3FE083126E978D50;
  *(v7 + 96) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 104) = v10;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v13 = v19;
  v23(v3, v6, v19);
  v26 = 0;
  v27 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v22(v6, v13);
  v14 = swift_allocObject();
  v21(v14 + v9, v20, v13);
  v15 = v28;
  *(v7 + 112) = v29;
  *(v7 + 120) = v15;
  *(v7 + 128) = 0x3FE10E5604189375;
  *(v7 + 136) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 144) = v14;
  v26 = 0;
  v27 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v17 = v28;
  result = v29;
  *(v7 + 152) = v29;
  *(v7 + 160) = v17;
  *(v7 + 168) = 0x3FF11EB851EB851FLL;
  *(v7 + 176) = v24;
  *(v7 + 184) = 0;
  static ExplodeTextEffect.Target.vibration = v7;
  return result;
}

double one-time initialization function for x()
{
  v0 = type metadata accessor for UnitCurve();
  v1 = *(v0 - 8);
  v29 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ExplodeTextEffect.Timeline<Double>.Keyframe>, type metadata accessor for ExplodeTextEffect.Timeline<Double>.Keyframe, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_195CCE9E0;
  v30 = 0;
  v31 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v8 = v32;
  *(v7 + 32) = v33;
  *(v7 + 40) = v8;
  v28 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 48) = 0x3FCDD2F1A9FBE76DLL;
  *(v7 + 56) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 64) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v27 = *(v1 + 16);
  v24 = v6;
  v27(v3, v6, v0);
  v30 = 0xBFA999999999999ALL;
  v31 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v26 = *(v1 + 8);
  v23 = v0;
  v26(v6, v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  v25 = *(v1 + 32);
  v22 = v3;
  v25(v10 + v9, v3, v0);
  v11 = v32;
  *(v7 + 72) = v33;
  *(v7 + 80) = v11;
  *(v7 + 88) = 0x3FCDD2F1A9FBE76DLL;
  *(v7 + 96) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 104) = v10;
  v30 = 0xBFA999999999999ALL;
  v31 = 0xBFA999999999999ALL;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v12 = v32;
  *(v7 + 112) = v33;
  *(v7 + 120) = v12;
  v13 = v28;
  *(v7 + 128) = 0x3FD0000000000000;
  *(v7 + 136) = v13;
  *(v7 + 144) = 0;
  v14 = v24;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v15 = v23;
  v27(v3, v14, v23);
  v31 = 0xBFA999999999999ALL;
  v30 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v26(v14, v15);
  v16 = swift_allocObject();
  v25(v16 + v9, v22, v15);
  v17 = v32;
  *(v7 + 152) = v33;
  *(v7 + 160) = v17;
  *(v7 + 168) = 0x3FF1DB22D0E56042;
  *(v7 + 176) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 184) = v16;
  v30 = 0x3FF0000000000000;
  v31 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v18 = v32;
  *(v7 + 192) = v33;
  *(v7 + 200) = v18;
  v19 = v28;
  *(v7 + 208) = 0x3FD54FDF3B645A1DLL;
  *(v7 + 216) = v19;
  *(v7 + 224) = 0;
  v30 = 0;
  v31 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v21 = v32;
  result = v33;
  *(v7 + 232) = v33;
  *(v7 + 240) = v21;
  *(v7 + 248) = 0x3FD883126E978D50;
  *(v7 + 256) = v19;
  *(v7 + 264) = 0;
  static ExplodeTextEffect.Target.x = v7;
  return result;
}

double one-time initialization function for y()
{
  v0 = type metadata accessor for UnitCurve();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV05GlyphG0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ExplodeTextEffect.Timeline<Double>.Keyframe>, type metadata accessor for ExplodeTextEffect.Timeline<Double>.Keyframe, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_195CCE9F0;
  v57 = 0;
  v58 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v8 = v59;
  *(v7 + 32) = v60;
  *(v7 + 40) = v8;
  v47 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 48) = 0x3FCDD2F1A9FBE76DLL;
  *(v7 + 56) = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  *(v7 + 64) = 0;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v9 = *(v1 + 16);
  v50 = v1 + 16;
  v51 = v9;
  v9(v3, v6, v0);
  v57 = 0xBFB999999999999ALL;
  v58 = 0;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v53 = *(v1 + 8);
  v54 = v1 + 8;
  v53(v6, v0);
  v56 = *(v1 + 80);
  v10 = (v56 + 16) & ~v56;
  v11 = swift_allocObject();
  v12 = *(v1 + 32);
  v48 = v3;
  v49 = v12;
  v52 = v1 + 32;
  v12(v11 + v10, v3, v0);
  v13 = v59;
  *(v7 + 72) = v60;
  *(v7 + 80) = v13;
  *(v7 + 88) = 0x3FCDD2F1A9FBE76DLL;
  *(v7 + 96) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 104) = v11;
  v57 = 0xBFB999999999999ALL;
  v58 = 0xBFB999999999999ALL;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v14 = v59;
  *(v7 + 112) = v60;
  *(v7 + 120) = v14;
  v15 = v47;
  *(v7 + 128) = 0x3FD0000000000000;
  *(v7 + 136) = v15;
  *(v7 + 144) = 0;
  v16 = v6;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v17 = v6;
  v18 = v51;
  v51(v3, v17, v0);
  v58 = 0xBFB999999999999ALL;
  v57 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v19 = v0;
  v20 = v53;
  v53(v16, v0);
  v46 = v10;
  v21 = swift_allocObject();
  v22 = v21 + v10;
  v23 = v48;
  v24 = v49;
  v49(v22, v48, v19);
  v25 = v59;
  *(v7 + 152) = v60;
  *(v7 + 160) = v25;
  *(v7 + 168) = 0x3FD76C8B43958106;
  *(v7 + 176) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 184) = v21;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v18(v23, v16, v19);
  v57 = 0xBFE0000000000000;
  v58 = 0x3FF0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v20(v16, v19);
  v26 = v46;
  v27 = swift_allocObject();
  v28 = v27 + v26;
  v29 = v48;
  v24(v28, v48, v19);
  v30 = v59;
  *(v7 + 192) = v60;
  *(v7 + 200) = v30;
  *(v7 + 208) = 0x3FD21CAC083126E9;
  *(v7 + 216) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 224) = v27;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v31 = v51;
  v51(v29, v16, v19);
  v57 = 0x3FC999999999999ALL;
  v58 = 0xBFE0000000000000;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v53(v16, v19);
  v32 = v46;
  v33 = swift_allocObject();
  v34 = v48;
  v35 = v49;
  v49(v33 + v32, v48, v19);
  v36 = v59;
  *(v7 + 232) = v60;
  *(v7 + 240) = v36;
  *(v7 + 248) = 0x3FCDD2F1A9FBE76DLL;
  *(v7 + 256) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 264) = v33;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v45 = v16;
  v31(v34, v16, v19);
  v58 = 0x3FC999999999999ALL;
  v57 = 0xBFE3333333333333;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v53(v16, v19);
  v37 = swift_allocObject();
  v38 = v34;
  v35(v37 + v32, v34, v19);
  v39 = v59;
  *(v7 + 272) = v60;
  *(v7 + 280) = v39;
  *(v7 + 288) = 0x3FCDD2F1A9FBE76DLL;
  *(v7 + 296) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 304) = v37;
  v57 = 0xBFE3333333333333;
  v58 = 0xBFE3333333333333;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v40 = v59;
  *(v7 + 312) = v60;
  *(v7 + 320) = v40;
  *(v7 + 328) = 0x3FE6E978D4FDF3B6;
  *(v7 + 336) = v47;
  *(v7 + 344) = 0;
  v41 = v45;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v51(v38, v41, v19);
  v57 = 0;
  v58 = 0xBFE3333333333333;
  dispatch thunk of Animatable.animatableData.getter();
  dispatch thunk of Animatable.animatableData.getter();
  v53(v41, v19);
  v42 = swift_allocObject();
  v49(v42 + v32, v38, v19);
  v44 = v59;
  result = v60;
  *(v7 + 352) = v60;
  *(v7 + 360) = v44;
  *(v7 + 368) = 0x3FBDB22D0E560419;
  *(v7 + 376) = implicit closure #2 in implicit closure #1 in ExplodeTextEffect.Timeline.Keyframe.init(from:to:duration:curve:)partial apply;
  *(v7 + 384) = v42;
  static ExplodeTextEffect.Target.y = v7;
  return result;
}