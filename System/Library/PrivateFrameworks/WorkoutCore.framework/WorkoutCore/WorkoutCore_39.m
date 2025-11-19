unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x277CC9578], &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
}

{
  v4 = type metadata accessor for Station.Mood();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for Date() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

{
  v43 = type metadata accessor for Station.Mood();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

{
  v43 = type metadata accessor for Station.Mood();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
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

LABEL_4:
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
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
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

LABEL_4:
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
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
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

LABEL_4:
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
    while (1)
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
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Date() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(v43, v44);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 8 * a1);
            v35 = (v33 + 8 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2, void (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    a3();
    do
    {
      v11 = *(a2 + 40);
      v24 = *(*(a2 + 48) + 16 * v7);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = result & v9;
      if (v4 >= v10)
      {
        if (v12 >= v10 && v4 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 16 * v4);
          v17 = (v15 + 16 * v7);
          if (v4 != v7 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v4);
          v20 = (v18 + 8 * v7);
          if (v4 != v7 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v10 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t specialized WorkoutManagedConfigurationsStore.init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a6;
  v18[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  *(a5 + 136) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore16ExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a5 + 144) = -1;
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  outlined init with copy of BackgroundAssertionManagerProtocol(a1, a5 + 16);
  outlined init with copy of BackgroundAssertionManagerProtocol(a2, a5 + 56);
  outlined init with copy of BackgroundAssertionManagerProtocol(v18, a5 + 96);
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:a5 selector:sel_handleSignificantTimeChangeNotification name:a4 object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:a5 selector:sel_handleCalendarDayChangedNotification name:*MEMORY[0x277CBE580] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm_17(a2);
  __swift_destroy_boxed_opaque_existential_1Tm_17(a1);
  __swift_destroy_boxed_opaque_existential_1Tm_17(v18);
  return a5;
}

uint64_t specialized WorkoutManagedConfigurationsStore.__allocating_init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutManagedConfigurationsStore();
  v17 = swift_allocObject();
  (*(v13 + 16))(v16, a3, a6);
  return specialized WorkoutManagedConfigurationsStore.init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(a1, a2, v16, a4, v17, a6, a7);
}

uint64_t _s10Foundation4UUIDVSgWOhTm_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 24);

  return closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(a1, a2, v7, v9, v2 + v6, v8);
}

uint64_t partial apply for closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 24);

  return closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v6, v9, v0 + v2, v7, v8, v5);
}

uint64_t outlined init with copy of BackgroundAssertionManagerProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id TargetZone.alertSpokenStringForSingleThreshold(formattingManager:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v6 = 0x277CCA000uLL;
  if (v5 > 4)
  {
    if (v5 - 5 >= 2)
    {
      return TargetZone.PrimaryType.displayString(activityType:)(a2);
    }

    result = swift_beginAccess();
    v20 = *(v2 + 24);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v20 > -9.22337204e18)
      {
        if (v20 < 9.22337204e18)
        {
          v21 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = a2;
          v23 = v22;
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v25 = [objc_opt_self() bundleForClass_];
          v26 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
          v27 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_20B4282E0;
          v33 = MEMORY[0x277D837D0];
          *(v32 + 56) = MEMORY[0x277D837D0];
          v34 = lazy protocol witness table accessor for type String and conformance String();
          *(v32 + 32) = v21;
          *(v32 + 40) = v23;
          v35 = v71;
          *(v32 + 96) = v33;
          *(v32 + 104) = v34;
          *(v32 + 64) = v34;
          *(v32 + 72) = v29;
          v6 = 0x277CCA000;
          *(v32 + 80) = v31;
LABEL_17:
          v47 = String.init(format:_:)();
          v73 = v48;
          v74 = v47;
LABEL_21:
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          v72 = swift_getObjCClassFromMetadata();
          v50 = *(v6 + 2264);
          v69 = objc_opt_self();
          v51 = [v69 &selRef:v72 decodeIntegerForKey:? + 3];
          v52 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B468380);
          v53 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v54 = [v51 localizedStringForKey:v52 value:0 table:v53];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_20B423A90;
          v75 = 0x3030202010101uLL >> (8 * *(v3 + 16));
          v56 = TargetZone.PrimaryType.displayString(activityType:)(v35);
          v58 = v57;
          v59 = MEMORY[0x277D837D0];
          *(v55 + 56) = MEMORY[0x277D837D0];
          v60 = lazy protocol witness table accessor for type String and conformance String();
          *(v55 + 64) = v60;
          *(v55 + 32) = v56;
          *(v55 + 40) = v58;
          v61 = String.init(format:_:)();
          v63 = v62;

          v64 = [v69 bundleForClass_];
          v65 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
          v66 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_20B4282E0;
          *(v68 + 56) = v59;
          *(v68 + 64) = v60;
          *(v68 + 32) = v61;
          *(v68 + 40) = v63;
          *(v68 + 96) = v59;
          *(v68 + 104) = v60;
          *(v68 + 72) = v74;
          *(v68 + 80) = v73;
          v49 = String.init(format:_:)();

          return v49;
        }

        goto LABEL_27;
      }

      goto LABEL_25;
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
    goto LABEL_28;
  }

  if (v5 >= 3)
  {
    result = swift_beginAccess();
    v36 = *(v2 + 24);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v36 > -9.22337204e18)
      {
        if (v36 < 9.22337204e18)
        {
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v38;
          v40 = a2;
          v41 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a2);
          v43 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_20B4282E0;
          v45 = MEMORY[0x277D837D0];
          *(v44 + 56) = MEMORY[0x277D837D0];
          v46 = lazy protocol witness table accessor for type String and conformance String();
          *(v44 + 32) = v37;
          *(v44 + 40) = v39;
          *(v44 + 96) = v45;
          *(v44 + 104) = v46;
          *(v44 + 64) = v46;
          *(v44 + 72) = v41;
          v35 = v40;
          *(v44 + 80) = v43;
          v6 = 0x277CCA000;
          goto LABEL_17;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v8 = FIUIDistanceTypeForActivityType();
  v9 = [objc_opt_self() meterUnit];
  swift_beginAccess();
  v10 = [objc_opt_self() quantityWithUnit:v9 doubleValue:*(v3 + 24)];

  v11 = MEMORY[0x20F2E8410](v8);
  if (v11 == 4)
  {
LABEL_6:
    v16 = [a1 localizedPaceAndUnitWithDistance:v10 overDuration:v11 paceFormat:v8 distanceType:3 unitStyle:2 decimalTrimmingMode:1.0];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v19;
      v74 = v18;

LABEL_20:
      v35 = a2;
      goto LABEL_21;
    }

LABEL_19:

    v73 = 0xE000000000000000;
    v74 = 0;
    goto LABEL_20;
  }

  result = [a1 unitManager];
  if (result)
  {
    v13 = result;
    [result paceWithDistance:v10 overDuration:v11 paceFormat:v8 distanceType:1.0];
    v15 = v14;

    v6 = 0x277CCA000uLL;
    if (v15 <= 0.0)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

LABEL_29:
  __break(1u);
  return result;
}

id TargetZone.alertSpokenStringForMultiThreshold(formattingManager:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x277D837D0];
  if (v5 > 4)
  {
    if (v5 - 5 >= 2)
    {
      return TargetZone.PrimaryType.displayString(activityType:)(a2);
    }

    result = swift_beginAccess();
    v13 = *(v2 + 24);
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v14 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = v15;
          result = swift_beginAccess();
          v16 = *(v3 + 32);
          if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v16 > -9.22337204e18)
            {
              if (v16 < 9.22337204e18)
              {
                v96 = v14;
                v100 = v3;
                v101 = a2;
                v17 = dispatch thunk of CustomStringConvertible.description.getter();
                v19 = v18;
                type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                v21 = [objc_opt_self() bundleForClass_];
                v22 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
                v23 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL);
                v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

                v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v27 = v26;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v28 = swift_allocObject();
                *(v28 + 16) = xmmword_20B4282E0;
                *(v28 + 56) = v6;
                v29 = lazy protocol witness table accessor for type String and conformance String();
                *(v28 + 32) = v17;
                *(v28 + 40) = v19;
                *(v28 + 96) = v6;
                *(v28 + 104) = v29;
                *(v28 + 64) = v29;
                *(v28 + 72) = v25;
                *(v28 + 80) = v27;
                v30 = 0x277CCA000;
LABEL_20:
                v95 = String.init(format:_:)();
                v45 = v44;
                v46 = v6;
LABEL_38:
                type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
                v94 = swift_getObjCClassFromMetadata();
                v68 = *(v30 + 2264);
                v93 = objc_opt_self();
                v69 = [v93 bundleForClass_];
                v70 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B4683C0);
                v71 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v72 = [v69 localizedStringForKey:v70 value:0 table:v71];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v73 = swift_allocObject();
                *(v73 + 16) = xmmword_20B4282E0;
                *(v73 + 56) = v46;
                v74 = lazy protocol witness table accessor for type String and conformance String();
                *(v73 + 32) = v96;
                *(v73 + 40) = v98;
                *(v73 + 96) = v46;
                *(v73 + 104) = v74;
                *(v73 + 64) = v74;
                *(v73 + 72) = v95;
                *(v73 + 80) = v45;
                v75 = String.init(format:_:)();
                v97 = v76;
                v99 = v75;

                v77 = [v93 bundleForClass_];
                v78 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B4683E0);
                v79 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v81 = swift_allocObject();
                *(v81 + 16) = xmmword_20B423A90;
                v102 = 0x3030202010101uLL >> (8 * *(v100 + 16));
                v82 = TargetZone.PrimaryType.displayString(activityType:)(v101);
                *(v81 + 56) = v46;
                *(v81 + 64) = v74;
                *(v81 + 32) = v82;
                *(v81 + 40) = v83;
                v84 = String.init(format:_:)();
                v86 = v85;

                v87 = [v93 bundleForClass_];
                v88 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
                v89 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v90 = [v87 localizedStringForKey:v88 value:0 table:v89];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v91 = swift_allocObject();
                *(v91 + 16) = xmmword_20B4282E0;
                *(v91 + 56) = v46;
                *(v91 + 64) = v74;
                *(v91 + 32) = v84;
                *(v91 + 40) = v86;
                *(v91 + 96) = v46;
                *(v91 + 104) = v74;
                *(v91 + 72) = v99;
                *(v91 + 80) = v97;
                v92 = String.init(format:_:)();

                return v92;
              }

              goto LABEL_51;
            }

            goto LABEL_49;
          }

          goto LABEL_47;
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

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
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v100 = v2;
  v101 = a2;
  if (v5 >= 3)
  {
    result = swift_beginAccess();
    v31 = *(v2 + 24);
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v31 > -9.22337204e18)
      {
        if (v31 < 9.22337204e18)
        {
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          result = swift_beginAccess();
          v35 = *(v3 + 32);
          if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v35 > -9.22337204e18)
            {
              if (v35 < 9.22337204e18)
              {
                v96 = v32;
                v98 = v34;
                v36 = dispatch thunk of CustomStringConvertible.description.getter();
                v38 = v37;
                v39 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a2);
                v41 = v40;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v42 = swift_allocObject();
                *(v42 + 16) = xmmword_20B4282E0;
                *(v42 + 56) = v6;
                v43 = lazy protocol witness table accessor for type String and conformance String();
                *(v42 + 32) = v36;
                *(v42 + 40) = v38;
                *(v42 + 96) = v6;
                *(v42 + 104) = v43;
                *(v42 + 64) = v43;
                *(v42 + 72) = v39;
                *(v42 + 80) = v41;
                v30 = 0x277CCA000uLL;
                goto LABEL_20;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            goto LABEL_50;
          }

          goto LABEL_48;
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v8 = FIUIDistanceTypeForActivityType();
  v9 = objc_opt_self();
  v10 = [v9 meterUnit];
  if (v8 == 2)
  {
    v11 = (v3 + 24);
  }

  else
  {
    v11 = (v3 + 32);
  }

  swift_beginAccess();
  v47 = *v11;
  v48 = objc_opt_self();
  v49 = [v48 quantityWithUnit:v10 doubleValue:v47];

  v50 = MEMORY[0x20F2E8410](v8);
  if (v50 == 4)
  {
    goto LABEL_25;
  }

  v51 = v3;
  result = [a1 unitManager];
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v52 = result;
  [result paceWithDistance:v49 overDuration:v50 paceFormat:v8 distanceType:1.0];
  v54 = v53;

  v3 = v51;
  if (v54 <= 0.0)
  {
LABEL_27:

    v96 = 0;
    v98 = 0xE000000000000000;
    goto LABEL_28;
  }

LABEL_25:
  v55 = [a1 localizedPaceStringWithDistance:v49 overDuration:v50 paceFormat:3 unitStyle:2 decimalTrimmingMode:v8 distanceType:1.0];
  if (!v55)
  {
    goto LABEL_27;
  }

  v56 = v55;
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v57;

LABEL_28:
  v58 = [v9 meterUnit];
  if (v8 == 2)
  {
    v59 = (v3 + 32);
  }

  else
  {
    v59 = (v3 + 24);
  }

  swift_beginAccess();
  v60 = [v48 quantityWithUnit:v58 doubleValue:*v59];

  v61 = MEMORY[0x20F2E8410](v8);
  if (v61 == 4)
  {
LABEL_34:
    v65 = [a1 localizedPaceAndUnitWithDistance:v60 overDuration:v61 paceFormat:v8 distanceType:3 unitStyle:2 decimalTrimmingMode:1.0];
    if (v65)
    {
      v66 = v65;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v67;

LABEL_37:
      v46 = MEMORY[0x277D837D0];
      v30 = 0x277CCA000uLL;
      goto LABEL_38;
    }

LABEL_36:

    v95 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_37;
  }

  result = [a1 unitManager];
  if (result)
  {
    v62 = result;
    [result paceWithDistance:v60 overDuration:v61 paceFormat:v8 distanceType:1.0];
    v64 = v63;

    if (v64 <= 0.0)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_54:
  __break(1u);
  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t WorkoutDeviceAirPodsScanner.activeHRMDevice.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t WorkoutDeviceAirPodsScanner.__deallocating_deinit()
{
  WorkoutDeviceAirPodsScanner.deactivate()();
  v1 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner_audioAccessoryToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(v0 + v1) = -1;
  }

  v3 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner__activeHRMDevice;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMd, &_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutDeviceAirPodsScanner()
{
  result = type metadata singleton initialization cache for WorkoutDeviceAirPodsScanner;
  if (!type metadata singleton initialization cache for WorkoutDeviceAirPodsScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutDeviceAirPodsScanner()
{
  type metadata accessor for Published<AudioAccessoryDevice?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

Swift::Void __swiftcall WorkoutDeviceAirPodsScanner.deactivate()()
{
  [*(v0 + 16) invalidate];
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.devices);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v2, "WorkoutDeviceAirPodsScanner invalidated", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }
}

void WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v12 = partial apply for closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor();
  v13 = v2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice?, @unowned AAHRMDeviceHIDAbstraction) -> ();
  v11 = &block_descriptor_18_5;
  v3 = _Block_copy(&v8);
  v4 = v1;

  [v4 setActiveHRMDeviceChangedHandler_];
  _Block_release(v3);

  v5 = *(v0 + 16);
  v12 = closure #2 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor();
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v11 = &block_descriptor_21_2;
  v6 = _Block_copy(&v8);
  v7 = v5;
  [v7 activateWithCompletion_];
  _Block_release(v6);
}

uint64_t closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a3;
    v19 = v6;
    v20 = v18;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v15;
    *v21 = a1;
    v22 = v15;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Received device: %@ from AASystemStateMonitor - aaActiveHRMDeviceChangedHandler", v20, 0xCu);
    outlined destroy of NSObject?(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    v23 = v20;
    v6 = v19;
    a3 = v30;
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue();
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor();
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_27_2;
  v26 = _Block_copy(aBlock);
  v27 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v26);
  _Block_release(v26);

  (*(v6 + 8))(v9, v5);
  return (*(v31 + 8))(v13, v32);
}

uint64_t closure #1 in closure #1 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a2;
    return static Published.subscript.setter();
  }

  return result;
}

void closure #2 in WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()(NSObject *a1)
{
  if (!a1)
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v11, "WorkoutDeviceAirPodsScanner activated", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.devices);
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, oslog, v5, "Failed to activate WorkoutDeviceAirPodsScanner: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner_audioAccessoryToken;
  swift_beginAccess();
  if (*(v0 + v2) == -1)
  {
    type metadata accessor for OS_dispatch_queue();
    v3 = static OS_dispatch_queue.main.getter();
    v4 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification();
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    aBlock[3] = &block_descriptor_69;
    v5 = _Block_copy(aBlock);

    swift_beginAccess();
    notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", (v1 + v2), v3, v5);
    swift_endAccess();
    _Block_release(v5);
  }
}

uint64_t closure #1 in WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification()()
{
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.devices);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "AudioAccessory daemon restarted, re-subscribing to device changes", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    WorkoutDeviceAirPodsScanner.handleDaemonRestart()();
  }

  return result;
}

void WorkoutDeviceAirPodsScanner.handleDaemonRestart()()
{
  v1 = v0;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.devices);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Creating new AASystemStateMonitor after daemon restart", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  [*(v1 + 16) invalidate];
  v6 = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
  v7 = *(v1 + 16);
  *(v1 + 16) = v6;

  WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()();
}

void type metadata accessor for Published<AudioAccessoryDevice?>()
{
  if (!lazy cache variable for type metadata for Published<AudioAccessoryDevice?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo20AudioAccessoryDeviceCSgMd, &_sSo20AudioAccessoryDeviceCSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<AudioAccessoryDevice?>);
    }
  }
}

uint64_t key path getter for WorkoutDeviceAirPodsScanner.activeHRMDevice : WorkoutDeviceAirPodsScanner@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutDeviceAirPodsScanner.activeHRMDevice : WorkoutDeviceAirPodsScanner(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

id MirroredWidgetAttributes.ContentState.activityType.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(MEMORY[0x277D0A810]);

  return [v3 initWithActivityTypeIdentifier:v1 isIndoor:v2];
}

uint64_t MirroredWidgetAttributes.ContentState.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MirroredWidgetAttributes.ContentState.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MirroredWidgetAttributes.ContentState.isPaused.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  _s10Foundation4DateVSgWOcTm_6(v0 + *(v5 + 28), v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = type metadata accessor for Date();
  v7 = 1;
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + *(v5 + 32));
  }

  _s10Foundation4DateVSgWOhTm_12(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v7;
}

uint64_t MirroredWidgetAttributes.ContentState.isSuspendedUntilHRAvailable.setter(char a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.elapsedTime.setter(double a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  if (*(v1 + v3[10]) == 1)
  {
    v4 = ceil(*(v1 + v3[9]));
    v5 = v1 + v3[6];
    Date.addingTimeInterval(_:)();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t MirroredWidgetAttributes.ContentState.isComplete.setter(char a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.workoutActive.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  _s10Foundation4DateVSgWOcTm_6(v0 + v5[7], v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = type metadata accessor for Date();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + v5[8]);
    _s10Foundation4DateVSgWOhTm_12(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v0 + v5[10]) ^ 1;
    }
  }

  else
  {
    _s10Foundation4DateVSgWOhTm_12(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t MirroredWidgetAttributes.ContentState.segmentIndex.setter(uint64_t a1)
{
  result = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 48));
}

uint64_t MirroredWidgetAttributes.ContentState.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void *MirroredWidgetAttributes.ContentState.notification.getter()
{
  v1 = *(v0 + *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 52));
  v2 = v1;
  return v1;
}

void MirroredWidgetAttributes.ContentState.notification.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MirroredWidgetAttributes.ContentState(0) + 52);

  *(v1 + v3) = a1;
}

uint64_t _s10Foundation4DateVSgWOcTm_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOdTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t MirroredWidgetAttributes.ContentState.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - v4;
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(194);
  MEMORY[0x20F2E6D80](0xD000000000000031, 0x800000020B4684F0);
  v6 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v7 = v6[6];
  v8 = type metadata accessor for Date();
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v9);

  MEMORY[0x20F2E6D80](0xD00000000000001CLL, 0x800000020B468530);
  v10 = v0 + v6[7];
  v11 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v11);

  MEMORY[0x20F2E6D80](0xD00000000000001FLL, 0x800000020B468550);
  if (*(v1 + v6[8]))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v1 + v6[8]))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v12, v13);

  MEMORY[0x20F2E6D80](0x657370616C65202CLL, 0xEF203A656D695464);
  v14 = *(v1 + v6[9]);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x746144646E65202CLL, 0xEB00000000203A65);
  if (*(v1 + v6[10]) == 1)
  {
    Date.addingTimeInterval(_:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(*(v8 - 8) + 56))(v5, v15, 1, v8);
  v16 = Optional.description.getter();
  v18 = v17;
  _s10Foundation4DateVSgWOhTm_12(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x20F2E6D80](v16, v18);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B468570);
  v35 = *(v1 + v6[11]);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v19);

  MEMORY[0x20F2E6D80](0x63697274656D202CLL, 0xEB00000000203A73);
  v20 = *(v1 + v6[12]);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v35 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = v35;
      v23 = (v20 + 56);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v35 = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);

        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v27 + 1;
        v28 = v22 + 16 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        v23 += 9;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v22 = 0;
  }

  v35 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
  v29 = Optional.description.getter();
  v31 = v30;

  MEMORY[0x20F2E6D80](v29, v31);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B468590);
  v35 = *(v1 + v6[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
  v32 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v32);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v36;
}

id MirroredWidgetAttributes.ContentState.init(publisher:notification:workoutUUID:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v130 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v146 = &v115 - v8;
  v144 = type metadata accessor for DateInterval();
  v126 = *(v144 - 8);
  v9 = *(v126 + 64);
  v10 = MEMORY[0x28223BE20](v144);
  v140 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v143 = &v115 - v13;
  MEMORY[0x28223BE20](v12);
  v145 = &v115 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v129 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v125 = &v115 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v134 = &v115 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v115 - v23;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v120 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v142 = &v115 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v141 = &v115 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v115 - v35;
  MEMORY[0x28223BE20](v34);
  v137 = &v115 - v37;
  v38 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v39 = v38[7];
  v136 = v26;
  v40 = *(v26 + 56);
  v127 = v39;
  v41 = v40;
  v40(a4 + v39, 1, 1, v25);
  *(a4 + v38[10]) = 0;
  v119 = v38[12];
  *(a4 + v119) = 0;
  v122 = v38[13];
  *(a4 + v122) = 0;
  v135 = v38;
  v42 = v38[14];
  v43 = type metadata accessor for UUID();
  v44 = *(*(v43 - 8) + 56);
  v128 = v42;
  v44(a4 + v42, 1, 1, v43);
  v138 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher;
  v45 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v46 = v147;
  if (v147)
  {
    v47 = [v147 effectiveTypeIdentifier];
  }

  else
  {
    v47 = 3000;
  }

  *a4 = v47;
  v48 = *&a1[v138];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49 = v147;
  v132 = v36;
  if (v147)
  {
    v50 = [v147 isIndoor];
  }

  else
  {
    v50 = 0;
  }

  *(a4 + 8) = v50;
  Date.init()();
  v51 = *&a1[v138];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v52 = v136;
  v53 = v136 + 48;
  v54 = *(v136 + 48);
  v55 = v54(v24, 1, v25);
  v124 = v53;
  v123 = v54;
  if (v55 == 1)
  {
    v56 = v132;
    (*(v52 + 16))();
    if (v54(v24, 1, v25) != 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v56 = v132;
    (*(v52 + 32))(v132, v24, v25);
  }

  v57 = *&a1[v138];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v58 = v147;
  v59 = v134;
  v41(v134, 1, 1, v25);
  v60 = v135[6];
  v61 = v137;
  v62 = static Date.> infix(_:_:)();
  v133 = v25;
  if (v62)
  {
    v118 = v60;
    v121 = v58;
    v63 = *(v52 + 16);
    v63(v141, v56, v25);
    v64 = v121;
    v63(v142, v61, v25);
    DateInterval.init(start:end:)();
    v65 = v64[2];
    if (v65)
    {
      v116 = a1;
      v117 = a4;
      v66 = *(v126 + 16);
      v67 = v64 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
      v141 = *(v126 + 72);
      v142 = v66;
      v68 = (v126 + 8);
      v69 = (v126 + 48);
      v139 = (v126 + 32);
      v70 = 0.0;
      v71 = v143;
      do
      {
        v72 = v144;
        (v142)(v71, v67, v144);
        DateInterval.intersection(with:)();
        v73 = v146;
        v74 = *v68;
        (*v68)(v71, v72);
        if ((*v69)(v73, 1, v72) == 1)
        {
          _s10Foundation4DateVSgWOhTm_12(v73, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        }

        else
        {
          v75 = v140;
          (*v139)(v140, v73, v72);
          DateInterval.duration.getter();
          v77 = v76;
          v74(v75, v72);
          v70 = v70 + v77;
        }

        v67 += v141;
        --v65;
      }

      while (v65);

      v78 = v131;
      v56 = v132;
      a4 = v117;
      a1 = v116;
      v59 = v134;
    }

    else
    {

      v78 = v131;
    }

    v79 = v125;
    _s10Foundation4DateVSgWOcTm_6(v59, v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v80 = v133;
    v81 = v123(v79, 1, v133);
    v82 = v136;
    v83 = v144;
    if (v81 == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v79, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v84 = v120;
      (*(v136 + 32))(v120, v79, v80);
      Date.timeIntervalSince(_:)();
      (*(v82 + 8))(v84, v80);
    }

    Date.addingTimeInterval(_:)();
    (*(v126 + 8))(v145, v83);
    _s10Foundation4DateVSgWOhTm_12(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v78 = v131;

    _s10Foundation4DateVSgWOhTm_12(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v52 + 16))(a4 + v60, v56, v25);
  }

  v85 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v86 = v135;
  *(a4 + v135[9]) = v147;
  v87 = v138;
  v88 = *&a1[v138];
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v129;
  static Published.subscript.getter();

  _s10Foundation4DateVSgWOdTm_2(v89, a4 + v127, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v90 = *&a1[v87];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a4 + v86[8]) = (v147 & 4) != 0;
  v91 = *&a1[v87];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a4 + v86[11]) = v147;
  outlined assign with copy of UUID?(v78, a4 + v128);
  v92 = *&a1[v87];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v93 = a1;
  v94 = v147;
  v95 = *&v93[v87];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v96 = v147;
  if (!v147)
  {

    _s10Foundation4DateVSgWOhTm_12(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v111 = *(v136 + 8);
    v112 = v133;
    v111(v56, v133);
    return (v111)(v137, v112);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v97 = static UserDevicesBehaviors.shared;
  v98 = UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter();

  v99 = v137;
  if (v98 != 2 && (v98 & 1) != 0)
  {
    v100 = [objc_opt_self() processInfo];
    v101 = [v100 isLowPowerModeEnabled];

    if ((v101 & 1) == 0)
    {
      if (!v94)
      {
        goto LABEL_34;
      }

      result = FIWorkoutMirroringSetting();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v103 = result;
      v104 = [result integerValue];

      if (v104 == 1)
      {
LABEL_34:
        v105 = MirroredWidgetAttributes.ContentState.metrics(from:for:)(v93, v96);
        *(a4 + v119) = v105;
      }
    }
  }

  v106 = v130;
  if (v130)
  {
    MirroredWidgetAttributes.ContentState.stringify(notification:for:)(v130, v96);
    v108 = v107;

    _s10Foundation4DateVSgWOhTm_12(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v109 = *(v136 + 8);
    v110 = v133;
    v109(v56, v133);
    result = (v109)(v99, v110);
    *(a4 + v122) = v108;
  }

  else
  {

    _s10Foundation4DateVSgWOhTm_12(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v113 = *(v136 + 8);
    v114 = v133;
    v113(v56, v133);
    return (v113)(v99, v114);
  }

  return result;
}

uint64_t MirroredWidgetAttributes.ContentState.metrics(from:for:)(uint64_t a1, unint64_t a2)
{
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - v5;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (one-time initialization token for formattingManager != -1)
    {
      swift_once();
    }

    v54 = static WorkoutCoreInjector.formattingManager;
    v7 = FIActivityMoveModeUserDefault();
    v8 = FIDeviceSupportsElevationGain();
    v9 = [objc_allocWithZone(MEMORY[0x277D0A820]) initWithMetricsVersion:101 activityType:a2 activityMoveMode:v7 deviceSupportsElevationMetrics:v8 deviceSupportsGroundElevationMetrics:FIDeviceSupportsGroundElevation()];
    v52 = v9;
    v53 = a2;
    if (!v9)
    {
      break;
    }

    result = [v9 defaultEnabledMetrics];
    if (!result)
    {
      goto LABEL_61;
    }

    v11 = result;
    type metadata accessor for NSNumber();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
      v51 = v6;
      if (!v13)
      {
LABEL_26:
        v15 = MEMORY[0x277D84F90];
LABEL_27:

        v58 = v15;

        v6 = v51;
        v22 = *(v15 + 2);
        if (v22)
        {
          goto LABEL_28;
        }

LABEL_31:

        goto LABEL_33;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = v6;
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    a2 = v12 & 0xC000000000000001;
    v6 = (v12 & 0xFFFFFFFFFFFFFF8);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a2)
      {
        v16 = MEMORY[0x20F2E7A20](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = [v16 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      *&v15[8 * v21 + 32] = v19;
      ++v14;
      if (v18 == v13)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v15 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v22 = *(MEMORY[0x277D84F90] + 16);
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_28:
  v23 = 0;
  while (*&v15[8 * v23 + 32] != 3)
  {
    if (v22 == ++v23)
    {
      goto LABEL_31;
    }
  }

  specialized Array.remove(at:)(v23);
LABEL_33:
  v24 = *(v55 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v56[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = type metadata accessor for Date();
    v26 = (*(*(v25 - 8) + 48))(v6, 1, v25);
    _s10Foundation4DateVSgWOhTm_12(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v26 == 1)
    {
      v27 = v58;
      v28 = *(v58 + 16);
      if (v28)
      {
        v29 = -v28;
        v30 = 4;
        while (*(v58 + 8 * v30) != 5)
        {
          ++v30;
          if (v29 + v30 == 4)
          {
            goto LABEL_44;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          v27 = result;
        }

        if ((v30 - 4) >= *(v27 + 16))
        {
          __break(1u);
LABEL_61:
          __break(1u);
          return result;
        }

        *(v27 + 8 * v30) = 40;
        v58 = v27;
      }
    }
  }

LABEL_44:
  v31 = *(v58 + 16);
  v51 = v58;
  if (v31)
  {
    v32 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher;
    v33 = MEMORY[0x277D84F90];
    v34 = (v58 + 32);
    v35 = v53;
    do
    {
      v41 = *v34++;
      v40 = v41;
      v42 = MetricsPublisher.doubleValue(for:)(v41);
      if (v42 > 0.0)
      {
        v43 = v42;
        if (v40 == 5)
        {
          v44 = *(v55 + v32);
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v35 = v53;

          v45 = LOBYTE(v56[0]);
        }

        else
        {
          v45 = 0;
        }

        MetricValue.init(metricType:value:isStale:formattingManager:activityType:)(v40, v45, v54, v35, v56, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
        }

        v47 = *(v33 + 2);
        v46 = *(v33 + 3);
        if (v47 >= v46 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v33);
        }

        *(v33 + 2) = v47 + 1;
        v36 = &v33[72 * v47];
        *(v36 + 2) = v56[0];
        v37 = v56[1];
        v38 = v56[2];
        v39 = v56[3];
        v36[96] = v57;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        *(v36 + 3) = v37;
      }

      --v31;
    }

    while (v31);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  if (*(v33 + 2) >= 5uLL)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v33, (v33 + 32), 0, 9uLL);
    v49 = v48;

    v33 = v49;
  }

  return v33;
}

void MirroredWidgetAttributes.ContentState.stringify(notification:for:)(uint64_t a1, void *a2)
{
  v192 = a2;
  v186 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v3 = *(v186 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v186);
  v185 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v184 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v184);
  v183 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v182 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v12 = *(v181 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v181);
  v180 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v179 = &v164 - v17;
  MEMORY[0x28223BE20](v16);
  v178 = &v164 - v18;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    if (one-time initialization token for formattingManager != -1)
    {
      swift_once();
    }

    v172 = static WorkoutCoreInjector.formattingManager;
    v205[0] = MEMORY[0x277D84F90];
    v19 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v20 = *(a1 + v19);
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v163 = *(a1 + v19);
      }

      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v168 = a1;
    v22 = v172;
    if (!v21)
    {
      break;
    }

    v23 = v20 & 0xC000000000000001;
    v193 = v20 & 0xFFFFFFFFFFFFFF8;
    v167 = "isSuspendedUntilHRAvailable";
    v177 = *MEMORY[0x277D84688];
    v175 = (v6 + 8);
    v176 = (v6 + 104);
    v173 = (v3 + 1);
    v174 = (v12 + 8);
    v190 = v172;

    v12 = 0;
    a1 = MEMORY[0x277D84F90];
    v166 = xmmword_20B4465B0;
    v188 = v21;
    v189 = v20;
    v191 = v20 & 0xC000000000000001;
    while (v23)
    {
      v24 = MEMORY[0x20F2E7A20](v12, v20);
      v25 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_66;
      }

LABEL_16:
      swift_beginAccess();
      switch(*(v24 + 16))
      {
        case 1:
        case 9:
        case 0xA:
        case 0xD:
          swift_beginAccess();
          if (*(v24 + 48))
          {
            goto LABEL_8;
          }

          v27 = *(v24 + 40);
          v28 = v190;
          v29 = FIUIDistanceTypeForActivityType();
          v30 = [v28 unitManager];
          if (!v30)
          {
            goto LABEL_73;
          }

          v31 = v30;
          v194 = v25;
          v32 = [v30 paceDistanceUnitForDistanceType_];

          v33 = MEMORY[0x20F2E8410](v29);
          v34 = [v28 localizedDistinguishingPaceUnitStringWithMetricType:8 distanceType:v29 distanceUnit:v32 paceFormat:v33 abbreviated:1 multiline:0];
          v187 = v24;
          if (v34)
          {
            v35 = v34;
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;
          }

          else
          {
            v36 = 0;
            v38 = 0;
          }

          v107 = [objc_opt_self() meterUnit];
          v108 = v27;
          v109 = [objc_opt_self() quantityWithUnit:v107 doubleValue:v27];

          v110 = [v28 localizedPaceStringWithDistance:v109 overDuration:v33 paceFormat:v29 distanceType:1.0];
          if (!v110)
          {
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v111;

          v197 = v36;
          v198 = v38;
          v199 = v6;
          v200 = v112;
          v201 = 0u;
          v202 = 0u;
          v203 = 0;

          outlined destroy of MetricValue(&v197);
          type metadata accessor for WorkoutNotificationUnit();
          v113 = swift_allocObject();
          *(v113 + 32) = 0;
          *(v113 + 40) = 0;
          *(v113 + 24) = 0;
          *(v113 + 48) = 1;
          *(v113 + 64) = 0;
          *(v113 + 72) = 0;
          *(v113 + 56) = 0;
          *(v113 + 16) = 9;
          swift_beginAccess();
          *(v113 + 24) = v6;
          *(v113 + 32) = v112;
          swift_beginAccess();
          *(v113 + 40) = v108;
          *(v113 + 48) = 0;
          swift_beginAccess();
          *(v113 + 64) = 0;
          *(v113 + 56) = 0;
          swift_beginAccess();
          v114 = *(v113 + 72);
          v115 = v192;
          *(v113 + 72) = v192;
          v116 = v115;

          v3 = v205;
          MEMORY[0x20F2E6F30]();
          if (*((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v155 = *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_62;
        case 2:
        case 0xB:
          swift_beginAccess();
          if (*(v24 + 48))
          {
            goto LABEL_8;
          }

          v194 = v25;
          v171 = *(v24 + 40);
          v195 = *&v171;
          v170 = v190;
          static Locale.autoupdatingCurrent.getter();
          v169 = lazy protocol witness table accessor for type Double and conformance Double();
          v54 = v180;
          FloatingPointFormatStyle.init(locale:)();
          v56 = v183;
          v55 = v184;
          (*v176)(v183, v177, v184);
          v57 = v179;
          v58 = v181;
          MEMORY[0x20F2E4420](v56, 0, 1, v181);
          (*v175)(v56, v55);
          v59 = *v174;
          (*v174)(v54, v58);
          v60 = v185;
          static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
          v61 = v178;
          MEMORY[0x20F2E4430](v60, v58);
          (*v173)(v60, v186);
          v59(v57, v58);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
          BinaryFloatingPoint.formatted<A>(_:)();
          v59(v61, v58);
          v62 = v197;
          v63 = v198;
          v64 = [objc_opt_self() localizedShortPowerUnitString];
          if (v64)
          {
            v65 = v64;
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;
          }

          else
          {

            v66 = 0;
            v68 = 0;
          }

          v170 = v66;
          v197 = v66;
          v198 = v68;
          v199 = v62;
          v200 = v63;
          type metadata accessor for WorkoutNotificationUnit();
          v201 = 0u;
          v202 = 0u;
          v203 = 0;
          v120 = swift_allocObject();
          v169 = v63;
          v121 = v120;
          *(v120 + 32) = 0;
          v122 = v68;
          *(v120 + 40) = 0;
          v123 = (v120 + 40);
          *(v120 + 24) = 0;
          v124 = (v120 + 24);
          *(v120 + 48) = 1;
          *(v120 + 64) = 0;
          *(v120 + 72) = 0;
          v6 = v120 + 72;
          *(v120 + 56) = 0;
          v125 = (v120 + 56);
          *(v120 + 16) = 2;
          swift_beginAccess();
          *v124 = v62;
          *(v121 + 32) = v169;
          swift_beginAccess();
          *v123 = v171;
          *(v121 + 48) = 0;
          swift_beginAccess();
          *v125 = v170;
          *(v121 + 64) = v122;

          outlined destroy of MetricValue(&v197);
          swift_beginAccess();
          v119 = *v6;
          *v6 = 0;
          goto LABEL_60;
        case 4:
          swift_beginAccess();
          if (*(v24 + 48))
          {
            goto LABEL_8;
          }

          v194 = v25;
          v171 = *(v24 + 40);
          v92 = v171;
          v93 = v190;
          v94 = FIUIDistanceTypeForActivityType();
          v95 = [v93 localizedShortUnitStringForDistanceUnit:objc_msgSend(v93 textCase:{sel_naturalScaleUnitForDistanceInMeters_distanceType_, v94, v92), 1}];
          if (v95)
          {
            v96 = v95;
            v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;
          }

          else
          {
            v97 = 0;
            v99 = 0;
          }

          v129 = [v93 localizedCompactNaturalScaleStringWithDistanceInMeters:v94 distanceType:0 unitStyle:0 usedUnit:v92];
          if (!v129)
          {
            goto LABEL_76;
          }

          v130 = v129;
          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v170 = v131;
          v133 = v132;

          v197 = v97;
          v198 = v99;
          v199 = v131;
          v200 = v133;
          type metadata accessor for WorkoutNotificationUnit();
          v201 = 0u;
          v202 = 0u;
          v203 = 0;
          v134 = swift_allocObject();
          *(v134 + 32) = 0;
          v169 = v97;
          *(v134 + 40) = 0;
          v6 = v134 + 40;
          *(v134 + 24) = 0;
          *(v134 + 48) = 1;
          *(v134 + 64) = 0;
          *(v134 + 72) = 0;
          *(v134 + 56) = 0;
          *(v134 + 16) = 4;
          swift_beginAccess();
          *(v134 + 24) = v170;
          *(v134 + 32) = v133;
          swift_beginAccess();
          *(v134 + 40) = v171;
          *(v134 + 48) = 0;
          swift_beginAccess();
          *(v134 + 56) = v169;
          *(v134 + 64) = v99;

          outlined destroy of MetricValue(&v197);
          swift_beginAccess();
          v135 = *(v134 + 72);
          *(v134 + 72) = 0;

          v3 = v205;
          MEMORY[0x20F2E6F30]();
          if (*((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v156 = *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_62;
        case 5:
          swift_beginAccess();
          if (*(v24 + 48))
          {
            goto LABEL_8;
          }

          v100 = *(v24 + 40);
          v101 = v190;
          v102 = [v101 localizedShortTypeDistinguishingUnitStringForEnergyType:3 workoutSectionType:1 multiline:0];
          if (v102)
          {
            v103 = v102;
            v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v106 = v105;
          }

          else
          {
            v104 = 0;
            v106 = 0;
          }

          v194 = v25;
          v136 = [v101 localizedStringWithEnergyInCalories:3 energyType:0 unitStyle:v100];
          if (!v136)
          {
            goto LABEL_75;
          }

          v137 = v136;
          v171 = v100;
          v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v140 = v139;

          v197 = v104;
          v198 = v106;
          v199 = v138;
          v200 = v140;
          v201 = 0u;
          v202 = 0u;
          v203 = 0;
          v141 = [v101 unitManager];
          if (!v141)
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
            return;
          }

          v142 = v141;
          v143 = [v141 userActiveEnergyBurnedUnit];

          v144 = [v143 unitString];
          v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v147 = v146;

          v195 = v145;
          v196 = v147;
          lazy protocol witness table accessor for type String and conformance String();
          v148 = StringProtocol.localizedUppercase.getter();
          v169 = v149;
          v170 = v148;

          v6 = v199;
          v150 = v200;

          outlined destroy of MetricValue(&v197);
          type metadata accessor for WorkoutNotificationUnit();
          v151 = swift_allocObject();
          *(v151 + 32) = 0;
          *(v151 + 40) = 0;
          *(v151 + 24) = 0;
          *(v151 + 48) = 1;
          *(v151 + 64) = 0;
          *(v151 + 72) = 0;
          v127 = (v151 + 72);
          *(v151 + 56) = 0;
          *(v151 + 16) = 5;
          swift_beginAccess();
          *(v151 + 24) = v6;
          *(v151 + 32) = v150;
          swift_beginAccess();
          *(v151 + 40) = v171;
          *(v151 + 48) = 0;
          swift_beginAccess();
          v152 = v169;
          *(v151 + 56) = v170;
          *(v151 + 64) = v152;
LABEL_59:
          swift_beginAccess();
          v119 = *v127;
          *v127 = 0;
LABEL_60:

          v3 = v205;
          MEMORY[0x20F2E6F30]();
          if (*((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v154 = *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

LABEL_62:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a1 = v205[0];
          v21 = v188;
          v20 = v189;
          v23 = v191;
          v25 = v194;
LABEL_9:
          ++v12;
          if (v25 == v21)
          {

            v22 = v172;
            goto LABEL_65;
          }

          break;
        case 6:
        case 8:
        case 0xC:
        case 0xE:
        case 0xF:
        case 0x10:

          v3 = v205;
          MEMORY[0x20F2E6F30](v26);
          if (*((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v153 = *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v23 = v191;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a1 = v205[0];
          goto LABEL_9;
        case 7:
          swift_beginAccess();
          if (*(v24 + 48))
          {
            goto LABEL_8;
          }

          v194 = v25;
          v69 = *(v24 + 40);
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v71 = objc_opt_self();
          v170 = v190;
          v72 = [v71 bundleForClass_];
          v73 = MEMORY[0x20F2E6C00](0xD000000000000016, v167 | 0x8000000000000000);
          v74 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v75 = [v72 localizedStringForKey:v73 value:0 table:v74];

          v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v165 = v76;

          v171 = v69;
          v195 = *&v69;
          static Locale.autoupdatingCurrent.getter();
          v164 = lazy protocol witness table accessor for type Double and conformance Double();
          v77 = v180;
          FloatingPointFormatStyle.init(locale:)();
          v79 = v183;
          v78 = v184;
          (*v176)(v183, v177, v184);
          v80 = v179;
          v81 = v181;
          MEMORY[0x20F2E4420](v79, 0, 1, v181);
          (*v175)(v79, v78);
          v82 = *v174;
          (*v174)(v77, v81);
          v83 = v185;
          static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
          v84 = v178;
          MEMORY[0x20F2E4430](v83, v81);
          (*v173)(v83, v186);
          v82(v80, v81);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
          BinaryFloatingPoint.formatted<A>(_:)();
          v85 = v170;

          v82(v84, v81);
          v86 = v197;
          v87 = v198;
          v198 = 0;
          v197 = 0;
          v199 = v86;
          v200 = v87;
          v201 = v166;
          *&v202 = v169;
          *(&v202 + 1) = v165;
          v203 = 0;

          v88 = [v85 localizedHeartRateUnitString];
          if (v88)
          {
            v89 = v88;
            v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v169 = v91;
            v170 = v90;

            outlined destroy of MetricValue(&v197);
          }

          else
          {
            outlined destroy of MetricValue(&v197);
            v169 = 0;
            v170 = 0;
          }

          type metadata accessor for WorkoutNotificationUnit();
          v126 = swift_allocObject();
          *(v126 + 32) = 0;
          *(v126 + 40) = 0;
          *(v126 + 24) = 0;
          *(v126 + 48) = 1;
          *(v126 + 64) = 0;
          *(v126 + 72) = 0;
          v127 = (v126 + 72);
          *(v126 + 56) = 0;
          v6 = v126 + 56;
          *(v126 + 16) = 7;
          swift_beginAccess();
          *(v126 + 24) = v86;
          *(v126 + 32) = v87;
          swift_beginAccess();
          *(v126 + 40) = v171;
          *(v126 + 48) = 0;
          swift_beginAccess();
          v128 = v169;
          *(v126 + 56) = v170;
          *(v126 + 64) = v128;
          goto LABEL_59;
        default:
          swift_beginAccess();
          if (*(v24 + 48))
          {
LABEL_8:

            goto LABEL_9;
          }

          v194 = v25;
          v171 = *(v24 + 40);
          v195 = *&v171;
          v170 = v190;
          static Locale.autoupdatingCurrent.getter();
          v169 = lazy protocol witness table accessor for type Double and conformance Double();
          v39 = v180;
          FloatingPointFormatStyle.init(locale:)();
          v41 = v183;
          v40 = v184;
          (*v176)(v183, v177, v184);
          v42 = v179;
          v43 = v181;
          MEMORY[0x20F2E4420](v41, 0, 1, v181);
          (*v175)(v41, v40);
          v44 = *v174;
          (*v174)(v39, v43);
          v45 = v185;
          static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
          v46 = v178;
          MEMORY[0x20F2E4430](v45, v43);
          (*v173)(v45, v186);
          v44(v42, v43);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
          BinaryFloatingPoint.formatted<A>(_:)();
          v44(v46, v43);
          v47 = v197;
          v48 = v198;
          v49 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
          if (v49)
          {
            v50 = v49;
            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;
          }

          else
          {

            v51 = 0;
            v53 = 0;
          }

          v169 = v51;
          v170 = v53;
          v197 = v51;
          v198 = v53;
          v199 = v47;
          v200 = v48;
          type metadata accessor for WorkoutNotificationUnit();
          v201 = 0u;
          v202 = 0u;
          v203 = 0;
          v117 = swift_allocObject();
          *(v117 + 32) = 0;
          *(v117 + 40) = 0;
          *(v117 + 24) = 0;
          v6 = v117 + 24;
          *(v117 + 48) = 1;
          *(v117 + 16) = 0;
          *(v117 + 64) = 0;
          *(v117 + 72) = 0;
          *(v117 + 56) = 0;
          swift_beginAccess();
          *(v117 + 24) = v47;
          *(v117 + 32) = v48;
          swift_beginAccess();
          *(v117 + 40) = v171;
          *(v117 + 48) = 0;
          swift_beginAccess();
          v118 = v170;
          *(v117 + 56) = v169;
          *(v117 + 64) = v118;

          outlined destroy of MetricValue(&v197);
          swift_beginAccess();
          v119 = *(v117 + 72);
          *(v117 + 72) = 0;
          goto LABEL_60;
      }
    }

    if (v12 >= *(v193 + 16))
    {
      goto LABEL_67;
    }

    v24 = *(v20 + 8 * v12 + 32);

    v25 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_16;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v157 = v172;
  a1 = MEMORY[0x277D84F90];
LABEL_65:
  v158 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  v159 = v168;
  swift_beginAccess();
  v160 = *(v159 + v158);
  v161 = type metadata accessor for WorkoutNotification();
  v162 = objc_allocWithZone(v161);
  static Date.now.getter();
  v162[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = v160;
  *&v162[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = a1;
  *&v162[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = 0;
  v204.receiver = v162;
  v204.super_class = v161;
  objc_msgSendSuper2(&v204, sel_init);
}

BOOL MirroredWidgetAttributes.ContentState.visuallyDistinct(from:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v115 = *(v3 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3);
  v111 = &v98[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v98[-v8];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v114 = &v98[-v10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v117 = &v98[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v98[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v98[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v116 = &v98[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v98[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v29);
  v32 = &v98[-v31];
  if (*v1 != *a1)
  {
    return 1;
  }

  if (*(v1 + 8) != *(a1 + 8))
  {
    return 1;
  }

  v109 = v22;
  v105 = v19;
  v107 = v30;
  v33 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v34 = *(v33 + 24);
  v35 = _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v110 = v1;
  v106 = v34;
  v108 = v35;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  v102 = v3;
  v103 = v33;
  v36 = *(v33 + 28);
  v37 = *(v27 + 48);
  _s10Foundation4DateVSgWOcTm_6(v110 + v36, v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v104 = a1;
  _s10Foundation4DateVSgWOcTm_6(a1 + v36, &v32[v37], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = v12;
  v39 = *(v12 + 48);
  if (v39(v32, 1, v11) == 1)
  {
    v40 = v39(&v32[v37], 1, v11);
    v41 = v109;
    if (v40 != 1)
    {
      goto LABEL_9;
    }

    v100 = v39;
    v101 = v38;
    _s10Foundation4DateVSgWOhTm_12(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v42 = v110;
  }

  else
  {
    _s10Foundation4DateVSgWOcTm_6(v32, v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v43 = v37;
    v44 = v39(&v32[v37], 1, v11);
    v41 = v109;
    if (v44 == 1)
    {
      (*(v38 + 8))(v26, v11);
      goto LABEL_9;
    }

    v100 = v39;
    v48 = v117;
    (*(v38 + 32))(v117, &v32[v43], v11);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50 = v38;
    v42 = v110;
    v99 = v49;
    v101 = v50;
    v51 = *(v50 + 8);
    v51(v48, v11);
    v51(v26, v11);
    _s10Foundation4DateVSgWOhTm_12(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v99 & 1) == 0)
    {
      return 1;
    }
  }

  v52 = v103;
  if (*(v42 + v103[8]) != *(v104 + v103[8]))
  {
    return 1;
  }

  if (*(v42 + v103[10]) == 1)
  {
    v54 = ceil(*(v42 + v103[9]));
    v55 = v116;
    Date.addingTimeInterval(_:)();
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v116;
  }

  v57 = v101;
  v58 = *(v101 + 56);
  v59 = 1;
  v58(v55, v56, 1, v11);
  if (*(v104 + v52[10]) == 1)
  {
    v60 = ceil(*(v104 + v52[9]));
    Date.addingTimeInterval(_:)();
    v59 = 0;
  }

  v58(v41, v59, 1, v11);
  v61 = *(v27 + 48);
  v32 = v107;
  _s10Foundation4DateVSgWOcTm_6(v55, v107, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _s10Foundation4DateVSgWOcTm_6(v41, &v32[v61], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v62 = v100;
  if (v100(v32, 1, v11) == 1)
  {
    _s10Foundation4DateVSgWOhTm_12(v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_12(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v62(&v32[v61], 1, v11) == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v63 = v110;
LABEL_26:
      v70 = v103;
      v69 = v104;
      if (*(v63 + v103[11]) != *(v104 + v103[11]))
      {
        return 1;
      }

      v71 = v63;
      v72 = v103[12];
      v73 = *(v63 + v72);
      v74 = *(v104 + v72);
      if (v73)
      {
        v75 = v102;
        if (!v74)
        {
          return 1;
        }

        v76 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore11MetricValueV_Tt1g5(v73, v74);
        v69 = v104;
        if ((v76 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        v75 = v102;
        if (v74)
        {
          return 1;
        }
      }

      v77 = v70[13];
      v78 = *(v63 + v77);
      v79 = *(v69 + v77);
      if (v78)
      {
        if (!v79)
        {
          return 1;
        }

        type metadata accessor for WorkoutNotification();
        v80 = v79;
        v81 = v78;
        v82 = static NSObject.== infix(_:_:)();
        v71 = v110;
        v83 = v82;

        if ((v83 & 1) == 0)
        {
          return 1;
        }
      }

      else if (v79)
      {
        return 1;
      }

      v84 = v103[14];
      v85 = *(v113 + 48);
      v86 = v71 + v84;
      v87 = v114;
      _s10Foundation4DateVSgWOcTm_6(v86, v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v88 = v104 + v84;
      v89 = v87;
      _s10Foundation4DateVSgWOcTm_6(v88, &v87[v85], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v90 = *(v115 + 48);
      if (v90(v87, 1, v75) == 1)
      {
        if (v90(&v87[v85], 1, v75) == 1)
        {
          _s10Foundation4DateVSgWOhTm_12(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          return 0;
        }
      }

      else
      {
        v91 = v87;
        v92 = v112;
        _s10Foundation4DateVSgWOcTm_6(v91, v112, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v90((v89 + v85), 1, v75) != 1)
        {
          v93 = v115;
          v94 = v89 + v85;
          v95 = v111;
          (*(v115 + 32))(v111, v94, v75);
          _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v96 = dispatch thunk of static Equatable.== infix(_:_:)();
          v97 = *(v93 + 8);
          v97(v95, v75);
          v97(v92, v75);
          _s10Foundation4DateVSgWOhTm_12(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          return (v96 & 1) == 0;
        }

        (*(v115 + 8))(v92, v75);
      }

      v45 = &_s10Foundation4UUIDVSg_ADtMd;
      v46 = &_s10Foundation4UUIDVSg_ADtMR;
      v47 = v89;
      goto LABEL_10;
    }
  }

  else
  {
    v64 = v105;
    _s10Foundation4DateVSgWOcTm_6(v32, v105, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v62(&v32[v61], 1, v11) != 1)
    {
      v65 = v117;
      (*(v57 + 32))(v117, &v32[v61], v11);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = v110;
      v67 = v66;
      v68 = *(v57 + 8);
      v68(v65, v11);
      _s10Foundation4DateVSgWOhTm_12(v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      _s10Foundation4DateVSgWOhTm_12(v116, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v68(v64, v11);
      _s10Foundation4DateVSgWOhTm_12(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v67 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_26;
    }

    _s10Foundation4DateVSgWOhTm_12(v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_12(v116, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v57 + 8))(v64, v11);
  }

LABEL_9:
  v45 = &_s10Foundation4DateVSg_ADtMd;
  v46 = &_s10Foundation4DateVSg_ADtMR;
  v47 = v32;
LABEL_10:
  _s10Foundation4DateVSgWOhTm_12(v47, v45, v46);
  return 1;
}

unint64_t MirroredWidgetAttributes.ContentState.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x726F6F646E497369;
    v7 = 0x7461447472617473;
    v8 = 0xD00000000000001BLL;
    if (a1 == 3)
    {
      v8 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7363697274656DLL;
    v2 = 0x6163696669746F6ELL;
    if (a1 != 9)
    {
      v2 = 0x5574756F6B726F77;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x5464657370616C65;
    v4 = 0x656C706D6F437369;
    if (a1 != 6)
    {
      v4 = 0x49746E656D676573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredWidgetAttributes.ContentState.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredWidgetAttributes.ContentState.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MirroredWidgetAttributes.ContentState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MirroredWidgetAttributes.ContentState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredWidgetAttributes.ContentState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MirroredWidgetAttributes.ContentState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MirroredWidgetAttributes.ContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = *v3;
  v22 = 0;
  type metadata accessor for HKWorkoutActivityType(0);
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type HKWorkoutActivityType and conformance HKWorkoutActivityType, type metadata accessor for HKWorkoutActivityType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 8);
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
    v13 = v12[6];
    LOBYTE(v23) = 2;
    type metadata accessor for Date();
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[7];
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + v12[8]);
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + v12[9]);
    LOBYTE(v23) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + v12[10]);
    LOBYTE(v23) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v12[11]);
    LOBYTE(v23) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + v12[12]);
    v22 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    lazy protocol witness table accessor for type [MetricValue] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricValue] and conformance <A> [A], lazy protocol witness table accessor for type MetricValue and conformance MetricValue);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v3 + v12[13]);
    v22 = 9;
    type metadata accessor for WorkoutNotification();
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification, type metadata accessor for WorkoutNotification);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v12[14];
    LOBYTE(v23) = 10;
    type metadata accessor for UUID();
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void MirroredWidgetAttributes.ContentState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v29 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - v17;
  MEMORY[0x20F2E7FF0](*v1);
  Hasher._combine(_:)(*(v1 + 8));
  v19 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v20 = v19[6];
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  _s10Foundation4DateVSgWOcTm_6(v2 + v19[7], v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v11 + 8))(v14, v10);
  }

  Hasher._combine(_:)(*(v2 + v19[8]));
  v21 = *(v2 + v19[9]);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v21);
  Hasher._combine(_:)(*(v2 + v19[10]));
  MEMORY[0x20F2E7FF0](*(v2 + v19[11]));
  v22 = *(v2 + v19[12]);
  v23 = v31;
  if (v22)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v22);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v24 = *(v2 + v19[13]);
  if (v24)
  {
    Hasher._combine(_:)(1u);
    v25 = v24;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v26 = v30;
  _s10Foundation4DateVSgWOcTm_6(v2 + v19[14], v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = v32;
  if ((*(v23 + 48))(v26, 1, v32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v28 = v29;
    (*(v23 + 32))(v29, v26, v27);
    Hasher._combine(_:)(1u);
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v23 + 8))(v28, v27);
  }
}

Swift::Int MirroredWidgetAttributes.ContentState.hashValue.getter()
{
  Hasher.init(_seed:)();
  MirroredWidgetAttributes.ContentState.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t MirroredWidgetAttributes.ContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = v42 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV12ContentStateV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v42 - v16;
  v18 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v10 + 56);
  v54 = *(v20 + 28);
  v23(&v22[v54], 1, 1, v9);
  v24 = *(v18 + 56);
  v25 = type metadata accessor for UUID();
  v26 = *(*(v25 - 8) + 56);
  v52 = v24;
  v55 = v22;
  v26(&v22[v24], 1, 1, v25);
  v28 = a1[3];
  v27 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys();
  v50 = v17;
  v29 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    v32 = v54;
    v31 = v55;
    __swift_destroy_boxed_opaque_existential_1(v53);
    _s10Foundation4DateVSgWOhTm_12(v31 + v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    return _s10Foundation4DateVSgWOhTm_12(v31 + v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v30 = v13;
    v42[1] = v25;
    v43 = v10;
    v44 = v18;
    v51 = v9;
    type metadata accessor for HKWorkoutActivityType(0);
    v56 = 0;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type HKWorkoutActivityType and conformance HKWorkoutActivityType, type metadata accessor for HKWorkoutActivityType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = v55;
    *v55 = v57;
    LOBYTE(v57) = 1;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v54;
    *(v33 + 8) = v34 & 1;
    LOBYTE(v57) = 2;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v36 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v43 + 32))(v33 + v44[6], v30, v36);
    LOBYTE(v57) = 3;
    v37 = v47;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v44;
    _s10Foundation4DateVSgWOdTm_2(v37, v33 + v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(v57) = 4;
    *(v33 + v38[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v57) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v33 + v38[9]) = v39;
    LOBYTE(v57) = 6;
    *(v33 + v38[10]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v57) = 7;
    *(v33 + v38[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    v56 = 8;
    lazy protocol witness table accessor for type [MetricValue] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricValue] and conformance <A> [A], lazy protocol witness table accessor for type MetricValue and conformance MetricValue);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v33 + v44[12]) = v57;
    type metadata accessor for WorkoutNotification();
    v56 = 9;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification, type metadata accessor for WorkoutNotification);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v55 + v44[13]) = v57;
    LOBYTE(v57) = 10;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v48 + 8))(v50, v49);
    v40 = v55;
    _s10Foundation4DateVSgWOdTm_2(v46, v55 + v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of MirroredWidgetAttributes.ContentState(v40, v45);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return outlined destroy of MirroredWidgetAttributes.ContentState(v40);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredWidgetAttributes.ContentState()
{
  Hasher.init(_seed:)();
  MirroredWidgetAttributes.ContentState.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredWidgetAttributes.ContentState()
{
  Hasher.init(_seed:)();
  MirroredWidgetAttributes.ContentState.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t MirroredWidgetAttributes.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MirroredWidgetAttributes.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MirroredWidgetAttributes.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredWidgetAttributes.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredWidgetAttributes.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MirroredWidgetAttributes.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredWidgetAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MirroredWidgetAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MirroredWidgetAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t MirroredWidgetAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MirroredWidgetAttributes(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of MirroredWidgetAttributes(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MirroredWidgetAttributes(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24MirroredWidgetAttributesV10CodingKeys33_D6F77751502224CFB4DD4458B6953F02LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVSgWOhTm_12(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL specialized static MirroredWidgetAttributes.ContentState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v62 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v65 = v10;
  v26 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  v27 = *(v26 + 24);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v63 = v4;
  v64 = v26;
  v28 = *(v26 + 28);
  v29 = *(v22 + 48);
  _s10Foundation4DateVSgWOcTm_6(a1 + v28, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _s10Foundation4DateVSgWOcTm_6(a2 + v28, &v25[v29], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = *(v14 + 48);
  if (v30(v25, 1, v13) == 1)
  {
    v31 = v30(&v25[v29], 1, v13);
    v32 = v65;
    if (v31 == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_12;
    }

LABEL_9:
    v34 = &_s10Foundation4DateVSg_ADtMd;
    v35 = &_s10Foundation4DateVSg_ADtMR;
    v36 = v25;
LABEL_10:
    _s10Foundation4DateVSgWOhTm_12(v36, v34, v35);
    return 0;
  }

  _s10Foundation4DateVSgWOcTm_6(v25, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v62 = v29;
  v33 = v30(&v25[v29], 1, v13);
  v32 = v65;
  if (v33 == 1)
  {
    (*(v14 + 8))(v21, v13);
    goto LABEL_9;
  }

  (*(v14 + 32))(v17, &v25[v62], v13);
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v14 + 8);
  v38(v17, v13);
  v38(v21, v13);
  _s10Foundation4DateVSgWOhTm_12(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v39 = v64;
  if (*(a1 + v64[8]) != *(a2 + v64[8]) || *(a1 + v64[9]) != *(a2 + v64[9]) || *(a1 + v64[10]) != *(a2 + v64[10]) || *(a1 + v64[11]) != *(a2 + v64[11]))
  {
    return 0;
  }

  v40 = v64[12];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41)
  {
    if (!v42 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore11MetricValueV_Tt1g5(v41, v42) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = v39[13];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    type metadata accessor for WorkoutNotification();
    v46 = v45;
    v47 = v44;
    v48 = static NSObject.== infix(_:_:)();

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v50 = v39[14];
  v51 = *(v32 + 48);
  v52 = a1 + v50;
  v53 = v68;
  _s10Foundation4DateVSgWOcTm_6(v52, v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4DateVSgWOcTm_6(a2 + v50, v53 + v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v54 = v69;
  v55 = *(v69 + 48);
  v56 = v63;
  if (v55(v53, 1, v63) == 1)
  {
    if (v55(v53 + v51, 1, v56) == 1)
    {
      _s10Foundation4DateVSgWOhTm_12(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return 1;
    }

    goto LABEL_33;
  }

  v57 = v67;
  _s10Foundation4DateVSgWOcTm_6(v53, v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v55(v53 + v51, 1, v56) == 1)
  {
    (*(v54 + 8))(v57, v56);
LABEL_33:
    v34 = &_s10Foundation4UUIDVSg_ADtMd;
    v35 = &_s10Foundation4UUIDVSg_ADtMR;
    v36 = v53;
    goto LABEL_10;
  }

  v58 = v53 + v51;
  v59 = v66;
  (*(v54 + 32))(v66, v58, v56);
  _s10Foundation4DateVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v54 + 8);
  v61(v59, v56);
  v61(v57, v56);
  _s10Foundation4DateVSgWOhTm_12(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (v60 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState.CodingKeys and conformance MirroredWidgetAttributes.ContentState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricValue and conformance MetricValue()
{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MetricValue] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MirroredWidgetAttributes.ContentState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MirroredWidgetAttributes.ContentState(uint64_t a1)
{
  v2 = type metadata accessor for MirroredWidgetAttributes.ContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredWidgetAttributes.CodingKeys and conformance MirroredWidgetAttributes.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for MirroredWidgetAttributes.ContentState(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of MirroredWidgetAttributes(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MirroredWidgetAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for MirroredWidgetAttributes()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for MirroredWidgetAttributes.ContentState()
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [MetricValue]?();
        if (v3 <= 0x3F)
        {
          _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for WorkoutNotification?, type metadata accessor for WorkoutNotification);
          if (v4 <= 0x3F)
          {
            _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [MetricValue]?()
{
  if (!lazy cache variable for type metadata for [MetricValue]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore11MetricValueVGMd, &_sSay11WorkoutCore11MetricValueVGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [MetricValue]?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MirroredWidgetAttributes.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MirroredWidgetAttributes.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredWidgetAttributes.ContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredWidgetAttributes.ContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized MirroredWidgetAttributes.ContentState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000020B4685B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6F646E497369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020B454860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000020B4685D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEC0000007865646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5574756F6B726F77 && a2 == 0xEB00000000444955)
  {

    return 10;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackArtworkStore.ArtworkStoreError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackArtworkStore.ArtworkStoreError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t static MediaPlaybackArtworkStore.shared.getter()
{
  type metadata accessor for MediaPlaybackArtworkStore();

  return swift_initStaticObject();
}

uint64_t MediaPlaybackArtworkStore.storeArtwork(for:)(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.storeArtwork(for:), 0, 0);
}

uint64_t MediaPlaybackArtworkStore.storeArtwork(for:)()
{
  if (one-time initialization token for mediaPlayback != -1)
  {
LABEL_45:
    swift_once();
  }

  v1 = v0[27];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[MediaPlaybackArtworkStore] storing artwork for %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v10 = v0[27];

  v11 = MSSuggestion.legacyIntent.getter();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 mediaContainer];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 artwork];

      if (v15)
      {
LABEL_7:
        v0[29] = v15;
        if ([v15 _requiresRetrieval])
        {
          v0[2] = v0;
          v0[7] = v0 + 26;
          v0[3] = MediaPlaybackArtworkStore.storeArtwork(for:);
          v16 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
          v0[10] = MEMORY[0x277D85DD0];
          v0[11] = 1107296256;
          v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
          v0[13] = &block_descriptor_70;
          v0[14] = v16;
          [v15 _retrieveImageDataWithReply_];

          return MEMORY[0x282200938](v0 + 2);
        }

        v37 = [v15 _imageData];
        if (v37)
        {
          v38 = v37;
          v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v0[34] = v39;
          v0[35] = v41;
          v42 = swift_task_alloc();
          v0[36] = v42;
          *v42 = v0;
          v42[1] = MediaPlaybackArtworkStore.storeArtwork(for:);
          v43 = v0[27];
          v44 = v0[28];

          return MediaPlaybackArtworkStore.saveImage(data:for:)(v39, v41, v43);
        }

        v20 = v0[29];
        lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
        swift_allocError();
        v51 = 1;
        goto LABEL_49;
      }
    }

    else
    {
    }
  }

  v17 = v0[27];
  v18 = *MEMORY[0x277D27F90];
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (v19)
  {
    v20 = v19;
    MSPlayMediaAppIntent.intentAction.getter();
    _sSo8LNActionCMaTm_0(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
    if (swift_dynamicCast())
    {
      v21 = v0[25];
      v22 = [v21 parameters];
      _sSo8LNActionCMaTm_0(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = v20;
      v57 = v0;
      v55 = v21;
      if (v23 >> 62)
      {
        v24 = __CocoaSet.count.getter();
        if (v24)
        {
LABEL_16:
          v25 = 0;
          v26 = 0xEB00000000797469;
          while (1)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x20F2E7A20](v25, v23);
            }

            else
            {
              if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v27 = *(v23 + 8 * v25 + 32);
            }

            v28 = v27;
            v29 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v0 = v26;
            v30 = [v27 identifier];
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            if (v31 == 0x746E456F69647561 && v33 == v0)
            {
              break;
            }

            v26 = v0;
            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v35)
            {
              goto LABEL_35;
            }

            ++v25;
            if (v29 == v24)
            {
              goto LABEL_47;
            }
          }

LABEL_35:

          v45 = [v28 value];
          v0 = v57;
          if (v45)
          {
            v46 = v45;
            v47 = [v45 displayRepresentation];

            if (v47)
            {
              v48 = [v47 image];
              if (v48)
              {
                v49 = v48;
                v15 = [v48 inImage];

                if (v15)
                {

                  goto LABEL_7;
                }
              }

              else
              {
              }
            }
          }

          lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
          swift_allocError();
          *v52 = 1;
          swift_willThrow();

          goto LABEL_50;
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_16;
        }
      }

LABEL_47:

      v20 = v56;
      v0 = v57;
    }

    lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
    swift_allocError();
    v51 = 4;
LABEL_49:
    *v50 = v51;
    swift_willThrow();

    goto LABEL_50;
  }

  lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
  swift_allocError();
  *v36 = 4;
  swift_willThrow();
LABEL_50:
  v53 = v0[1];

  return v53();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  else
  {
    v3 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = [*(v0 + 208) _imageData];
    if (v2)
    {
      v3 = v2;
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      *(v0 + 248) = v4;
      *(v0 + 256) = v6;
      v7 = swift_task_alloc();
      *(v0 + 264) = v7;
      *v7 = v0;
      v7[1] = MediaPlaybackArtworkStore.storeArtwork(for:);
      v8 = *(v0 + 216);
      v9 = *(v0 + 224);

      return MediaPlaybackArtworkStore.saveImage(data:for:)(v4, v6, v8);
    }
  }

  v11 = *(v0 + 232);
  lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;

  v6 = v2[32];
  v7 = v2[31];
  if (v0)
  {
    v3[40] = v7;
    v3[41] = v6;
    v3[39] = v0;
    v8 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  else
  {
    v3[37] = v7;
    v3[38] = v6;
    v8 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 288);
  v5 = *v1;

  v6 = v2[35];
  v7 = v2[34];
  if (v0)
  {
    v3[40] = v7;
    v3[41] = v6;
    v3[39] = v0;
    v8 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  else
  {
    v3[37] = v7;
    v3[38] = v6;
    v8 = MediaPlaybackArtworkStore.storeArtwork(for:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  outlined consume of Data._Representation(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  v3 = v0[30];
  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  outlined consume of Data._Representation(v1, v2);
  v3 = *(v0 + 312);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t MediaPlaybackArtworkStore.artwork(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.artwork(for:), 0, 0);
}

uint64_t MediaPlaybackArtworkStore.artwork(for:)()
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[MediaPlaybackArtworkStore] loading artwork for %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = MediaPlaybackArtworkStore.artwork(for:);
  v11 = v0[2];
  v12 = v0[3];

  return MediaPlaybackArtworkStore.loadImage(for:)(v11);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  outlined copy of Data._Representation(v1, v2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [objc_opt_self() imageWithImageData_];

  outlined consume of Data._Representation(v1, v2);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[6];
  v10 = v0[7];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v6;
    *v13 = v6;
    v14 = v6;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[MediaPlaybackArtworkStore] loaded INImage: %@", v12, 0xCu);
    outlined destroy of NSObject?(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  outlined consume of Data._Representation(v11, v10);

  v15 = v0[1];

  return v15(v6);
}

{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[MediaPlaybackArtworkStore] error loading image: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t MediaPlaybackArtworkStore.artwork(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 40);
  v8 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = v2;

  if (v2)
  {
    v6 = MediaPlaybackArtworkStore.artwork(for:);
  }

  else
  {
    v6 = MediaPlaybackArtworkStore.artwork(for:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(uint64_t a1)
{
  v157 = *MEMORY[0x277D85DE8];
  v154 = type metadata accessor for URL();
  v142 = *(v154 - 8);
  v2 = *(v142 + 64);
  v3 = MEMORY[0x28223BE20](v154);
  v143 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v146 = &v137 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v150 = &v137 - v8;
  MEMORY[0x28223BE20](v7);
  v149 = &v137 - v9;
  v151 = type metadata accessor for Insecure.SHA1();
  v10 = *(v151 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v151 - 1);
  v147 = (&v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = type metadata accessor for Insecure.SHA1Digest();
  v13 = *(v145 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v145);
  v148 = (&v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = type metadata accessor for String.Encoding();
  v16 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v19 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v25 = (v17 + 8);
  *&v144 = v10 + 8;
  v141 = (v13 + 8);
  v155 = a1;

  v26 = 0;
  v153 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v26;
    if (!v23)
    {
      break;
    }

LABEL_8:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = (v155[6] + ((v26 << 10) | (16 * v28)));
    v30 = *v29;
    v31 = v29[1];

    static String.Encoding.utf8.getter();
    v32 = String.data(using:allowLossyConversion:)();
    v34 = v33;
    (*v25)(v19, v152);
    if (v34 >> 60 == 15)
    {
    }

    else
    {
      v140 = lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598]);
      dispatch thunk of HashFunction.init()();
      v35 = v34 >> 62;
      if ((v34 >> 62) > 1)
      {
        if (v35 != 2)
        {
          *(&v156 + 6) = 0;
          *&v156 = 0;
          goto LABEL_32;
        }

        v36 = *(v32 + 24);
        *&v139 = *(v32 + 16);
        v138 = v36;

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v137 = v37;
          v37 = __DataStorage._offset.getter();
          v38 = v139;
          if (__OFSUB__(v139, v37))
          {
            goto LABEL_68;
          }

          v137 += v139 - v37;
        }

        else
        {
          v137 = 0;
          v38 = v139;
        }

        *&v139 = v138 - v38;
        if (__OFSUB__(v138, v38))
        {
          goto LABEL_67;
        }

        v41 = MEMORY[0x20F2E42A0](v37);
        v42 = v139;
        if (v41 < v139)
        {
          v42 = v41;
        }

        v43 = &v158;
      }

      else
      {
        if (!v35)
        {
          *&v156 = v32;
          WORD4(v156) = v34;
          BYTE10(v156) = BYTE2(v34);
          BYTE11(v156) = BYTE3(v34);
          BYTE12(v156) = BYTE4(v34);
          BYTE13(v156) = BYTE5(v34);
          goto LABEL_32;
        }

        v138 = v32;
        *&v139 = (v32 >> 32) - v32;
        if (v32 >> 32 < v32)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
        }

        v39 = __DataStorage._bytes.getter();
        if (v39)
        {
          v137 = v39;
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v138, v40))
          {
            goto LABEL_69;
          }

          v138 = v138 - v40 + v137;
        }

        else
        {
          v138 = 0;
        }

        v44 = MEMORY[0x20F2E42A0]();
        v42 = v139;
        if (v44 < v139)
        {
          v42 = v44;
        }

        v43 = &v159;
      }

      v45 = v42 + *(v43 - 32);
LABEL_32:
      v46 = v147;
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data?(v32, v34);
      dispatch thunk of HashFunction.finalize()();
      (*v144)(v46, v151);
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1Digest and conformance Insecure.SHA1Digest, MEMORY[0x277CC5578]);
      v47 = Digest.hexString.getter();
      v140 = v48;

      outlined consume of Data?(v32, v34);
      (*v141)(v148, v145);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v153 + 2) + 1, 1, v153);
      }

      v50 = *(v153 + 2);
      v49 = *(v153 + 3);
      if (v50 >= v49 >> 1)
      {
        v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v153);
      }

      v51 = v153;
      *(v153 + 2) = v50 + 1;
      v52 = &v51[16 * v50];
      v53 = v140;
      *(v52 + 4) = v47;
      *(v52 + 5) = v53;
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v27;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  if (one-time initialization token for mediaPlayback == -1)
  {
    goto LABEL_38;
  }

LABEL_65:
  swift_once();
LABEL_38:
  v54 = type metadata accessor for Logger();
  v55 = __swift_project_value_buffer(v54, static WOLog.mediaPlayback);
  v56 = v153;

  v152 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v150;
  if (v59)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v156 = v62;
    *v61 = 136315138;
    v63 = MEMORY[0x20F2E6F70](v56, MEMORY[0x277D837D0]);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v156);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_20AEA4000, v57, v58, "[MediaPlaybackArtworkStore] Clearing unused artwork, configured hashes: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x20F2E9420](v62, -1, -1);
    MEMORY[0x20F2E9420](v61, -1, -1);
  }

  v66 = v154;
  v67 = v149;
  MediaPlaybackArtworkStore.directoryURL()(v149);
  v155 = 0;
  v145 = objc_opt_self();
  v77 = [v145 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v79 = MEMORY[0x20F2E6C00](countAndFlagsBits);

  *&v156 = 0;
  v80 = [v77 contentsOfDirectoryAtPath:v79 error:&v156];

  v81 = v156;
  if (v80)
  {
    v82 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v81;

    v138 = v82;
    v86 = *(v82 + 16);
    if (v86)
    {
      v148 = (v142 + 16);
      v151 = (v142 + 8);
      v87 = (v138 + 40);
      *&v85 = 136315138;
      v144 = v85;
      *&v85 = 136315394;
      v139 = v85;
      do
      {
        v94 = *(v87 - 1);
        v93 = *v87;
        *&v156 = v94;
        *(&v156 + 1) = v93;
        MEMORY[0x28223BE20](v84);
        *(&v137 - 2) = &v156;

        v95 = v155;
        v96 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_2, (&v137 - 4), v153);
        v155 = v95;
        if (v96)
        {

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v97, v98))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *&v156 = v89;
            *v88 = v144;
            v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v93, &v156);

            *(v88 + 4) = v90;
            _os_log_impl(&dword_20AEA4000, v97, v98, "[MediaPlaybackArtworkStore] configured, not deleting: %s", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v89);
            v91 = v89;
            v60 = v150;
            MEMORY[0x20F2E9420](v91, -1, -1);
            v92 = v88;
            v66 = v154;
            MEMORY[0x20F2E9420](v92, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          URL.appendingPathComponent(_:)();

          v99 = v146;
          v147 = *v148;
          (v147)(v146, v60, v66);
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            *&v156 = v103;
            *v102 = v144;
            lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
            v104 = dispatch thunk of CustomStringConvertible.description.getter();
            v106 = v105;
            v107 = *v151;
            (*v151)(v99, v154);
            v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v156);
            v60 = v150;

            *(v102 + 4) = v108;
            _os_log_impl(&dword_20AEA4000, v100, v101, "[MediaPlaybackArtworkStore] not configured, deleting: %s", v102, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v103);
            v109 = v103;
            v66 = v154;
            MEMORY[0x20F2E9420](v109, -1, -1);
            MEMORY[0x20F2E9420](v102, -1, -1);
          }

          else
          {

            v107 = *v151;
            (*v151)(v99, v66);
          }

          v110 = [v145 defaultManager];
          URL._bridgeToObjectiveC()(v111);
          v113 = v112;
          *&v156 = 0;
          v114 = [v110 removeItemAtURL:v112 error:&v156];

          v115 = v156;
          if (v114)
          {
            v84 = (v107)(v60, v66);
          }

          else
          {
            v116 = v115;
            v117 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v155 = 0;
            v118 = v143;
            (v147)(v143, v60, v66);
            v119 = v117;
            v120 = Logger.logObject.getter();
            v121 = v60;
            v122 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v120, v122))
            {
              v123 = swift_slowAlloc();
              v124 = v107;
              v141 = v107;
              v125 = v123;
              v140 = swift_slowAlloc();
              v126 = v118;
              v147 = swift_slowAlloc();
              *&v156 = v147;
              *v125 = v139;
              lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
              v127 = dispatch thunk of CustomStringConvertible.description.getter();
              v129 = v128;
              v124(v126, v154);
              v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v156);

              *(v125 + 4) = v130;
              *(v125 + 12) = 2112;
              v131 = v117;
              v132 = _swift_stdlib_bridgeErrorToNSError();
              *(v125 + 14) = v132;
              v133 = v140;
              *v140 = v132;
              _os_log_impl(&dword_20AEA4000, v120, v122, "[MediaPlaybackArtworkStore] Error removing item %s: %@", v125, 0x16u);
              outlined destroy of NSObject?(v133);
              v66 = v154;
              MEMORY[0x20F2E9420](v133, -1, -1);
              v134 = v147;
              __swift_destroy_boxed_opaque_existential_0(v147);
              MEMORY[0x20F2E9420](v134, -1, -1);
              MEMORY[0x20F2E9420](v125, -1, -1);

              v60 = v150;
              v84 = v141(v150, v66);
            }

            else
            {

              v107(v118, v66);
              v84 = (v107)(v121, v66);
              v60 = v121;
            }
          }
        }

        v87 += 2;
        --v86;
      }

      while (v86);
    }

    (*(v142 + 8))(v149, v66);
  }

  else
  {
    v136 = v156;

    v155 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v142 + 8))(v67, v66);
    v68 = v155;
    v69 = v155;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      v74 = v155;
      v75 = v155;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v76;
      *v73 = v76;
      _os_log_impl(&dword_20AEA4000, v70, v71, "[MediaPlaybackArtworkStore] Error while clearing unused artwork: %@", v72, 0xCu);
      outlined destroy of NSObject?(v73);
      MEMORY[0x20F2E9420](v73, -1, -1);
      MEMORY[0x20F2E9420](v72, -1, -1);
    }

    else
    {
    }
  }

  v135 = *MEMORY[0x277D85DE8];
}

uint64_t String.sha1Hash()()
{
  v0 = type metadata accessor for Insecure.SHA1();
  v19 = *(v0 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Insecure.SHA1Digest();
  v20 = *(v4 - 8);
  v21 = v4;
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  result = 0;
  if (v15 >> 60 != 15)
  {
    lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598]);
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v13, v15);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, v15);
    outlined consume of Data?(v13, v15);
    dispatch thunk of HashFunction.finalize()();
    (*(v19 + 8))(v3, v0);
    lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1Digest and conformance Insecure.SHA1Digest, MEMORY[0x277CC5578]);
    v17 = v21;
    v18 = Digest.hexString.getter();
    outlined consume of Data?(v13, v15);
    (*(v20 + 8))(v7, v17);
    return v18;
  }

  return result;
}

uint64_t MediaPlaybackArtworkStore.saveImage(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.saveImage(data:for:), 0, 0);
}

uint64_t MediaPlaybackArtworkStore.saveImage(data:for:)()
{
  v70 = v0;
  v1 = *(v0 + 40);
  MediaPlaybackArtworkStore.makeDirectoryIfNecessary()();
  MediaPlaybackArtworkStore.fileURL(for:)(*(v0 + 32), *(v0 + 80));
  v3 = *(v0 + 80);
  v4 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v6 = MEMORY[0x20F2E6C00](countAndFlagsBits);

  v7 = [v4 fileExistsAtPath:v6 isDirectory:0];

  if (v7)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.mediaPlayback);
    (*(v10 + 16))(v9, v8, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 48);
    if (v15)
    {
      v67 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v69[0] = v21;
      *v20 = 136315138;
      v22 = URL.absoluteString.getter();
      v24 = v23;
      v25 = *(v18 + 8);
      v25(v17, v19);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v69);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_20AEA4000, v13, v14, "[MediaPlaybackArtworkStore] image file already exists at %s, not overwriting", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);

      v25(v67, v19);
    }

    else
    {

      v40 = *(v18 + 8);
      v40(v17, v19);
      v40(v16, v19);
    }

    v42 = *(v0 + 72);
    v41 = *(v0 + 80);
    v43 = *(v0 + 64);

    v44 = *(v0 + 8);

    return v44();
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 72);
  v28 = *(v0 + 80);
  v29 = *(v0 + 48);
  v30 = *(v0 + 56);
  v32 = *(v0 + 16);
  v31 = *(v0 + 24);
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static WOLog.mediaPlayback);
  (*(v30 + 16))(v27, v28, v29);
  outlined copy of Data._Representation(v32, v31);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 24);
    v37 = swift_slowAlloc();
    result = swift_slowAlloc();
    v68 = result;
    v69[0] = result;
    *v37 = 134218242;
    v38 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v39 = 0;
        goto LABEL_26;
      }

      v49 = *(*(v0 + 16) + 16);
      v50 = *(*(v0 + 16) + 24);
      v51 = __OFSUB__(v50, v49);
      v39 = v50 - v49;
      if (!v51)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v39 = *(v0 + 30);
LABEL_26:
      v54 = *(v0 + 72);
      v56 = *(v0 + 48);
      v55 = *(v0 + 56);
      v57 = *(v0 + 16);
      v58 = *(v0 + 24);
      *(v37 + 4) = v39;
      outlined consume of Data._Representation(v57, v58);
      *(v37 + 12) = 2080;
      v59 = URL.absoluteString.getter();
      v61 = v60;
      v48 = *(v55 + 8);
      v48(v54, v56);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v69);

      *(v37 + 14) = v62;
      _os_log_impl(&dword_20AEA4000, v34, v35, "[MediaPlaybackArtworkStore] attempting to write data of length %ld to %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x20F2E9420](v68, -1, -1);
      MEMORY[0x20F2E9420](v37, -1, -1);

      goto LABEL_27;
    }

    v52 = *(v0 + 16);
    v53 = *(v0 + 20);
    v51 = __OFSUB__(v53, v52);
    LODWORD(v39) = v53 - v52;
    if (v51)
    {
      __break(1u);
      return result;
    }

    v39 = v39;
    goto LABEL_26;
  }

  v45 = *(v0 + 72);
  v46 = *(v0 + 48);
  v47 = *(v0 + 56);
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  v48 = *(v47 + 8);
  v48(v45, v46);
LABEL_27:
  *(v0 + 88) = v48;
  v63 = swift_task_alloc();
  *(v0 + 96) = v63;
  *v63 = v0;
  v63[1] = MediaPlaybackArtworkStore.saveImage(data:for:);
  v64 = *(v0 + 80);
  v65 = *(v0 + 16);
  v66 = *(v0 + 24);

  return Data.asyncWrite(to:options:)(v64, 1, v65, v66);
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = MediaPlaybackArtworkStore.saveImage(data:for:);
  }

  else
  {
    v3 = MediaPlaybackArtworkStore.saveImage(data:for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 56) + 8;
  (*(v0 + 88))(*(v0 + 80), *(v0 + 48));
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 56) + 8;
  (*(v0 + 88))(*(v0 + 80), *(v0 + 48));
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t Data.asyncWrite(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](Data.asyncWrite(to:options:), 0, 0);
}

uint64_t Data.asyncWrite(to:options:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v19 = v0[3];
  v8 = v0[2];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  (*(v3 + 16))(v2, v8, v6);
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v7;
  *(v11 + 5) = v5;
  (*(v3 + 32))(&v11[v10], v2, v6);
  *&v11[(v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v19;
  outlined copy of Data._Representation(v7, v5);
  v12 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in Data.asyncWrite(to:options:), v11);
  v0[11] = v12;
  v13 = *(MEMORY[0x277D857C8] + 4);
  v14 = swift_task_alloc();
  v0[12] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v14 = v0;
  v14[1] = Data.asyncWrite(to:options:);
  v16 = MEMORY[0x277D84950];
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v15, v12, v17, v15, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);

    v5 = Data.asyncWrite(to:options:);
  }

  else
  {
    v5 = Data.asyncWrite(to:options:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t MediaPlaybackArtworkStore.loadImage(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackArtworkStore.loadImage(for:), 0, 0);
}

uint64_t MediaPlaybackArtworkStore.loadImage(for:)()
{
  v25 = v0;
  MediaPlaybackArtworkStore.fileURL(for:)(*(v0 + 16), *(v0 + 72));
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
  v6 = *(v4 + 16);
  *(v0 + 88) = v6;
  *(v0 + 96) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 64);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v13 = 136315138;
    v21 = URL.absoluteString.getter();
    v23 = v6;
    v15 = v14;
    v16 = *(v12 + 8);
    v16(v10, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v15, &v24);
    v6 = v23;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[MediaPlaybackArtworkStore] attempting to read data from %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {

    v16 = *(v12 + 8);
    v16(v10, v11);
  }

  *(v0 + 104) = v16;
  v6(*(v0 + 56), *(v0 + 72), *(v0 + 32));
  v18 = swift_task_alloc();
  *(v0 + 112) = v18;
  *v18 = v0;
  v18[1] = MediaPlaybackArtworkStore.loadImage(for:);
  v19 = *(v0 + 56);

  return specialized Data.init(contentsOf:options:)(v19, 1);
}

{
  v44 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  (*(v0 + 88))(*(v0 + 48), *(v0 + 72), *(v0 + 32));
  outlined copy of Data._Representation(v1, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  if (v7)
  {
    v9 = swift_slowAlloc();
    result = swift_slowAlloc();
    v42 = result;
    v43 = result;
    *v9 = 134218242;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v19 = *(*(v0 + 120) + 16);
      v20 = *(*(v0 + 120) + 24);
      v21 = __OFSUB__(v20, v19);
      v12 = v20 - v19;
      if (!v21)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v12 = *(v0 + 134);
LABEL_13:
      v24 = *(v0 + 120);
      v25 = *(v0 + 128);
      v26 = *(v0 + 104);
      v41 = *(v0 + 72);
      v28 = *(v0 + 40);
      v27 = *(v0 + 48);
      v29 = *(v0 + 32);
      *(v9 + 4) = v12;
      outlined consume of Data._Representation(v24, v25);
      *(v9 + 12) = 2080;
      v30 = URL.absoluteString.getter();
      v32 = v31;
      v26(v27, v29);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v43);

      *(v9 + 14) = v33;
      _os_log_impl(&dword_20AEA4000, v5, v6, "[MediaPlaybackArtworkStore] read data of length %ld from %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x20F2E9420](v42, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);

      v26(v41, v29);
      goto LABEL_14;
    }

    v22 = *(v0 + 120);
    v23 = *(v0 + 124);
    v21 = __OFSUB__(v23, v22);
    LODWORD(v12) = v23 - v22;
    if (v21)
    {
      __break(1u);
      return result;
    }

    v12 = v12;
    goto LABEL_13;
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 104);
  v15 = *(v0 + 72);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 32);

  outlined consume of Data._Representation(v13, v8);
  v14(v16, v18);
  v14(v15, v18);
LABEL_14:
  v35 = *(v0 + 64);
  v34 = *(v0 + 72);
  v37 = *(v0 + 48);
  v36 = *(v0 + 56);

  v38 = *(v0 + 8);
  v39 = *(v0 + 120);
  v40 = *(v0 + 128);

  return v38(v39, v40);
}

{
  v1 = *(v0 + 40) + 8;
  (*(v0 + 104))(*(v0 + 72), *(v0 + 32));
  v2 = *(v0 + 136);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t MediaPlaybackArtworkStore.loadImage(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = MediaPlaybackArtworkStore.loadImage(for:);
  }

  else
  {
    v6 = MediaPlaybackArtworkStore.loadImage(for:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t MediaPlaybackArtworkStore.makeDirectoryIfNecessary()()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MediaPlaybackArtworkStore.directoryURL()(v5);
  if (!v0)
  {
    v7 = objc_opt_self();
    v8 = [v7 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v10 = MEMORY[0x20F2E6C00](countAndFlagsBits);

    v11 = [v8 fileExistsAtPath:v10 isDirectory:0];

    if (v11)
    {
      result = (*(v2 + 8))(v5, v1);
    }

    else
    {
      v12 = [v7 defaultManager];
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      v21[0] = 0;
      v16 = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v21];

      if (v16)
      {
        v17 = *(v2 + 8);
        v18 = v21[0];
        result = v17(v5, v1);
      }

      else
      {
        v19 = v21[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        result = (*(v2 + 8))(v5, v1);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MediaPlaybackArtworkStore.directoryURL()@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 URLsForDirectory:9 inDomains:1];

  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v16 + 16))
  {
    (*(v7 + 16))(v11, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v13, v11, v6);
    v19[2] = 0xD000000000000019;
    v19[3] = 0x800000020B446CF0;
    (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v13, v6);
  }

  else
  {

    lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
    swift_allocError();
    *v18 = 2;
    return swift_willThrow();
  }
}

uint64_t MediaPlaybackArtworkStore.fileURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v21 = *(v9 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 identifier];
  if (v13 && (v14 = v13, static String._unconditionallyBridgeFromObjectiveC(_:)(), v14, v15 = String.sha1Hash()(), v17 = v16, , v17))
  {
    MediaPlaybackArtworkStore.directoryURL()(v12);
    if (!v2)
    {
      v22 = v15;
      v23 = v17;
      (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)();
      (*(v5 + 8))(v8, v4);
      (*(v21 + 8))(v12, v9);
    }
  }

  else
  {
    lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError();
    swift_allocError();
    *v19 = 3;
    return swift_willThrow();
  }
}

uint64_t closure #1 in Data.init(contentsOf:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in Data.init(contentsOf:options:), 0, 0);
}

uint64_t closure #1 in Data.init(contentsOf:options:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = Data.init(contentsOf:options:)();
  v4 = v0[2];
  *v4 = v3;
  v4[1] = v5;
  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in Data.asyncWrite(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](closure #1 in Data.asyncWrite(to:options:), 0, 0);
}

uint64_t closure #1 in Data.asyncWrite(to:options:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  Data.write(to:options:)();
  v5 = v0[1];

  return v5();
}

uint64_t dispatch thunk of MediaPlaybackArtworkStore.artwork(for:)(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MediaPlaybackArtworkStore.artwork(for:);

  return v8(a1);
}

{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackArtworkStore.ArtworkStoreError and conformance MediaPlaybackArtworkStore.ArtworkStoreError);
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
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

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x20F2E42A0]();
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Data.asyncWrite(to:options:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in Data.asyncWrite(to:options:);

  return closure #1 in Data.asyncWrite(to:options:)(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t partial apply for closure #1 in Data.asyncWrite(to:options:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo8LNActionCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t specialized Data.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized Data.init(contentsOf:options:), 0, 0);
}

uint64_t specialized Data.init(contentsOf:options:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v3 + 16))(v1, v7, v5);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v3 + 32))(v10 + v9, v1, v5);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v11 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10Foundation4DataV_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in Data.init(contentsOf:options:), v10);
  v0[11] = v11;
  v12 = *(MEMORY[0x277D857C8] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v13 = v0;
  v13[1] = specialized Data.init(contentsOf:options:);
  v15 = MEMORY[0x277CC9318];
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v11, v15, v14, v16);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = specialized Data.init(contentsOf:options:);
  }

  else
  {
    v4 = specialized Data.init(contentsOf:options:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  (*(v0[7] + 8))(v0[4], v0[6]);
  v3 = v0[2];
  v4 = v0[3];

  v5 = v0[1];

  return v5(v3, v4);
}

{
  v1 = v0[9];
  v2 = v0[10];
  (*(v0[7] + 8))(v0[4], v0[6]);

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t partial apply for closure #1 in Data.init(contentsOf:options:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in Data.init(contentsOf:options:);

  return closure #1 in Data.init(contentsOf:options:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t getEnumTagSinglePayload for MediaPlaybackArtworkStore.ArtworkStoreError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlaybackArtworkStore.ArtworkStoreError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t FIUIWorkoutActivityType.supportsPacer.getter()
{
  v1 = [v0 isIndoor];
  v2 = [v0 effectiveTypeIdentifier];
  if (v1)
  {
    LOBYTE(v4) = v2 == 37 || v2 == 71;
  }

  else if ((v2 - 13) >= 0x3B)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x400000001000001uLL >> (v2 - 13);
  }

  return v4 & 1;
}

uint64_t FIUIWorkoutActivityType.supportsRepeatIndicatorInIntervals.getter()
{
  if ([v0 isPoolSwimming])
  {
    v1 = 1;
  }

  else
  {
    v3[3] = &type metadata for WorkoutFeatures;
    v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v3[0]) = 9;
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1 & 1;
}

id FIUIWorkoutActivityType.usesPedometer.getter()
{
  [v0 effectiveTypeIdentifier];
  result = _HKWorkoutDistanceTypeForActivityType();
  if (result)
  {
    v2 = result;
    v3 = [result identifier];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = *MEMORY[0x277CCCB40];
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return (v10 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc FIUIWorkoutActivityType.supportsSegments.getter(void *a1)
{
  v1 = a1;
  if ([v1 isPartOfMultiSport])
  {

    v2 = 0;
  }

  else if ([v1 effectiveTypeIdentifier] == 46)
  {
    v4[3] = &type metadata for WorkoutFeatures;
    v4[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v4[0]) = 8;
    v2 = isFeatureEnabled(_:)();

    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {

    v2 = 1;
  }

  return v2 & 1;
}

uint64_t FIUIWorkoutActivityType.supportsSegments.getter()
{
  if ([v0 isPartOfMultiSport])
  {
    v1 = 0;
  }

  else if ([v0 effectiveTypeIdentifier] == 46)
  {
    v3[3] = &type metadata for WorkoutFeatures;
    v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v3[0]) = 8;
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t @objc FIUIWorkoutActivityType.supportsTrackRunning.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 effectiveTypeIdentifier];
  if ((v2 == 37 || v2 == 71) && ![v1 isIndoor])
  {
    v4 = [v1 isPartOfMultiSport];

    return v4 ^ 1;
  }

  else
  {

    return 0;
  }
}

uint64_t FIUIWorkoutActivityType.supportsTrackRunning.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((v1 == 71 || v1 == 37) && ([v0 isIndoor] & 1) == 0)
  {
    return [v0 isPartOfMultiSport] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t @objc FIUIWorkoutActivityType.supportsRaceRoute.getter(void *a1)
{
  v1 = a1;
  if (FIIsActivePairedDeviceSatellitePaired() || ((v2 = [v1 effectiveTypeIdentifier], (v2 - 13) <= 0x3A) ? (v3 = ((1 << (v2 - 13)) & 0x400000001000001) == 0) : (v3 = 1), v3 || objc_msgSend(v1, sel_isIndoor)))
  {

    return 0;
  }

  else
  {
    v5 = [v1 isPartOfMultiSport];

    return v5 ^ 1;
  }
}

uint64_t FIUIWorkoutActivityType.supportsRaceRoute.getter()
{
  if (FIIsActivePairedDeviceSatellitePaired())
  {
    return 0;
  }

  v1 = [v0 effectiveTypeIdentifier];
  v2 = (v1 - 13) > 0x3A || ((1 << (v1 - 13)) & 0x400000001000001) == 0;
  if (v2 || ([v0 isIndoor] & 1) != 0)
  {
    return 0;
  }

  else
  {
    return [v0 isPartOfMultiSport] ^ 1;
  }
}

uint64_t @objc FIUIWorkoutActivityType.supportsLocationPositionTracking.getter(void *a1)
{
  v6[3] = &type metadata for WorkoutFeatures;
  v6[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v6[0]) = 4;
  v2 = a1;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v3)
  {
    [v2 effectiveTypeIdentifier];
    [v2 isIndoor];
    [v2 swimmingLocationType];
    IsRouteable = _HKWorkoutActivityTypeIsRouteable();
  }

  else
  {
    IsRouteable = 0;
  }

  return IsRouteable;
}

uint64_t FIUIWorkoutActivityType.supportsLocationPositionTracking.getter()
{
  v3[3] = &type metadata for WorkoutFeatures;
  v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v3[0]) = 4;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v3);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  [v0 effectiveTypeIdentifier];
  [v0 isIndoor];
  [v0 swimmingLocationType];
  return _HKWorkoutActivityTypeIsRouteable();
}

uint64_t @objc FIUIWorkoutActivityType.supportsCustomRouteAlerts.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.supportsCustomRouteAlerts.getter();

  return v2 & 1;
}

id FIUIWorkoutActivityType.supportsCustomRouteAlerts.getter()
{
  v1 = type metadata accessor for WorkoutKitFeatures();
  v6[3] = v1;
  v6[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FB0], v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v1)
  {
    result = [v0 supportsLocationPositionTracking];
    if (!result)
    {
      return result;
    }

    v4 = [v0 effectiveTypeIdentifier];
    v5 = (v4 - 13) > 0x3A || ((1 << (v4 - 13)) & 0x400008001000001) == 0;
    if (!v5 && ([v0 isIndoor] & 1) == 0)
    {
      return ([v0 isPartOfMultiSport] ^ 1);
    }
  }

  return 0;
}

uint64_t FIUIWorkoutActivityType.supportsPacerAlerts.getter()
{
  v1 = [v0 isIndoor];
  v2 = [v0 effectiveTypeIdentifier];
  if (v1)
  {
    if (v2 != 37 && v2 != 71)
    {
      return 0;
    }
  }

  else if ((v2 - 13) > 0x3A || ((1 << (v2 - 13)) & 0x400000001000001) == 0)
  {
    return 0;
  }

  return [v0 isPartOfMultiSport] ^ 1;
}

uint64_t @objc FIUIWorkoutActivityType.supportsMirroredWorkouts.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.supportsMirroredWorkouts.getter();

  return v2 & 1;
}

uint64_t FIUIWorkoutActivityType.supportsMirroredWorkouts.getter()
{
  if (FIIsActivePairedDeviceSatellitePaired())
  {
    v1 = 0;
  }

  else
  {
    v5[3] = &type metadata for WorkoutFeatures;
    v5[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v5[0]) = 15;
    v2 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v5);
    if ((v2 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
    {
      v3 = [v0 effectiveTypeIdentifier];
      if (v3 >= 0x38)
      {
        v1 = 1;
      }

      else
      {
        v1 = 0x1F9FFFFFFFFFFFuLL >> v3;
      }
    }

    else
    {
      v1 = [v0 effectiveTypeIdentifier] == 13;
    }
  }

  return v1 & 1;
}

void _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06SinglecD0V_Tt3g5Tm(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for WorkoutGoal();
  v65 = *(v22 - 8);
  v66 = v22;
  v23 = *(v65 + 64);
  MEMORY[0x28223BE20](v22);
  v61 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(0);
  v25 = [v7 goalTypeIdentifier];
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v40 = [v7 value];
      if (v40)
      {
        v41 = v40;
        v56 = a5;
        v42 = v67;
        HKQuantity.durationMeasurement.getter();
        if (v42)
        {

          return;
        }

        v47 = [v7 requiredDistance];
        if (v47)
        {
          v48 = v47;
          HKQuantity.lengthMeasurement.getter();

          v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
          v32 = v61;
          (*(v60 + 32))();
          (*(v58 + 32))(&v32[v53], v16, v59);
          v33 = MEMORY[0x277CE3F58];
        }

        else
        {
          v49 = v59;
          Measurement.value.getter();
          v51 = v50;
          v52 = Measurement.unit.getter();

          (*(v58 + 8))(v16, v49);
          v32 = v61;
          *v61 = v51;
          *(v32 + 1) = v52;
          v33 = MEMORY[0x277CE3F68];
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

    if (v25 == 3)
    {
      v34 = [v7 value];
      if (v34)
      {
        v27 = v34;
        v56 = a5;
        v35 = v67;
        HKQuantity.energyMeasurement.getter();
        if (!v35)
        {
          Measurement.value.getter();
          v45 = v44;
          v46 = Measurement.unit.getter();

          (*(v57 + 8))(v12, v9);
          v32 = v61;
          *v61 = v45;
          *(v32 + 1) = v46;
          v33 = MEMORY[0x277CE3F70];
          goto LABEL_23;
        }

LABEL_11:

        return;
      }

      goto LABEL_17;
    }

LABEL_12:
    v36 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, MEMORY[0x277CE4010]);
    swift_allocError();
    v38 = v37;
    v39 = MEMORY[0x277CE4000];
LABEL_18:
    (*(*(v36 - 8) + 104))(v38, *v39, v36);
    swift_willThrow();
    return;
  }

  if (!v25)
  {
    (*(v65 + 104))(a5, *MEMORY[0x277CE3F60], v66);
    return;
  }

  if (v25 != 1)
  {
    goto LABEL_12;
  }

  v26 = [v7 value];
  if (!v26)
  {
LABEL_17:
    v36 = type metadata accessor for GoalValidationError();
    lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0]);
    swift_allocError();
    v38 = v43;
    v39 = MEMORY[0x277CE40A8];
    goto LABEL_18;
  }

  v27 = v26;
  v56 = a5;
  v28 = v67;
  HKQuantity.lengthMeasurement.getter();
  if (v28)
  {
    goto LABEL_11;
  }

  Measurement.value.getter();
  v30 = v29;
  v31 = Measurement.unit.getter();

  (*(v60 + 8))(v21, v17);
  v32 = v61;
  *v61 = v30;
  *(v32 + 1) = v31;
  v33 = MEMORY[0x277CE3F78];
LABEL_23:
  v55 = v65;
  v54 = v66;
  (*(v65 + 104))(v32, *v33, v66);
  WorkoutGoal.validate<A>(for:location:swimmingLocation:kind:)();
  (*(v55 + 32))(v56, v32, v54);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of Measurement<NSUnitPower>?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    _sSo8NSObjectCSgWOhTm_14(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t LiveWorkoutContextManager.momentCoordinator.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  return swift_unknownObjectRetain();
}

uint64_t one-time initialization function for progressMomentPeriod()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  __swift_allocate_value_buffer(v0, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
  __swift_project_value_buffer(v0, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
  v1 = [objc_opt_self() minutes];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  return Measurement.init(value:unit:)();
}

uint64_t closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(unint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = *a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = a2;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v8);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), v10);
}

uint64_t closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), 0, 0);
}

uint64_t closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)()
{
  v1 = *(v0 + 80);
  if (*(v0 + 72) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
      *(v0 + 88) = *(Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
      v4 = *(v3 + 8);
      v5 = Strong;
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v7 = *(v4 + 248);
      v20 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      *(v0 + 96) = v9;
      *v9 = v0;
      v9[1] = closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:);
      v10 = 1;
      v11 = 1;
LABEL_6:

      return v20(v10, v11, ObjectType, v4);
    }
  }

  else
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
      *(v0 + 104) = *(v12 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
      v4 = *(v13 + 8);
      v14 = v12;
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v15 = *(v4 + 248);
      v20 = (v15 + *v15);
      v16 = v15[1];
      v17 = swift_task_alloc();
      *(v0 + 112) = v17;
      *v17 = v0;
      v17[1] = closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:);
      v11 = *(v0 + 72);
      v10 = 0;
      goto LABEL_6;
    }
  }

  **(v0 + 64) = 1;
  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), 0, 0);
}

{
  **(v0 + 64) = 0;
  return (*(v0 + 8))();
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:), 0, 0);
}

char *LiveWorkoutContextManager.__allocating_init(workout:lastKnownLocation:activityRingProgressMonitor:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:momentCoordinator:)(void *a1, void *a2, void *a3, void *a4, char *a5, char *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v109 = a8;
  v111 = a7;
  v113 = a6;
  v115 = a5;
  v105 = a4;
  v102 = a3;
  v118 = a2;
  v114 = type metadata accessor for WorkoutGoal();
  v112 = *(v114 - 8);
  v10 = *(v112 + 64);
  v11 = MEMORY[0x28223BE20](v114);
  v93 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v97 = v88 - v14;
  MEMORY[0x28223BE20](v13);
  v110 = v88 - v15;
  v16 = type metadata accessor for InferenceClient();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v92 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v88 - v21;
  v23 = type metadata accessor for FitnessIntelligenceConnection();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v94 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v88 - v28;
  v30 = [a1 sessionActivity];
  v31 = [v30 activityType];

  v95 = [v31 workoutActivityType];
  v32 = [a1 sessionActivity];
  v33 = [v32 configuration];

  v117 = LiveWorkoutConfiguration.currentGoal.getter();
  v34 = [a1 sessionActivity];
  v35 = [v34 dataProvider];

  v101 = [v35 splitProvider];
  swift_unknownObjectRelease();
  v36 = [a1 sessionActivity];
  v100 = [v36 isMachineWorkout];

  v103 = v24;
  v37 = *(v24 + 16);
  v107 = v29;
  v91 = v24 + 16;
  v90 = v37;
  v37(v29, v115, v23);
  v104 = v17;
  v38 = *(v17 + 16);
  v116 = v16;
  v89 = v38;
  v88[1] = (v17 + 16);
  v38(v22, v113, v16);
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v111, &v121);
  v39 = [a1 sessionActivity];
  v40 = [a1 sessionActivity];
  v41 = [v40 analyticsIdentifier];

  v88[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v42;

  v98 = type metadata accessor for LiveWorkoutContextManager();
  v43 = objc_allocWithZone(v98);
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastProgressMomentElapsedTime] = 0;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastBreakthroughCheckElapsedTime] = 0;
  v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused] = 0;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier] = *MEMORY[0x277D767B0];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v44 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v44 = MEMORY[0x277D84FA0];
  }

  v45 = v116;
  v46 = v118;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables] = v44;
  v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated] = 0;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_distanceSampler] = 0;
  v47 = v105;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_unitManager] = v105;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workout] = a1;
  v48 = v95;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityType] = v95;
  v105 = v47;
  v99 = a1;
  v49 = v48;
  v50 = [v49 effectiveTypeIdentifier];
  v51 = [v49 location];
  v52 = v97;
  _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06SinglecD0V_Tt3g5Tm(v50, v51, 0, MEMORY[0x277CE3F38], v97);
  v108 = v22;
  v106 = v23;
  v53 = v112;
  v54 = v110;
  v55 = v114;
  (*(v112 + 32))(v110, v52, v114);
  v56 = [v39 configuration];
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_liveWorkoutConfiguration] = v56;
  v57 = v109;
  v95 = v49;
  if (v109)
  {
    swift_unknownObjectRetain();

    v59 = v57;
    v60 = v100;
  }

  else
  {
    v61 = v93;
    (*(v53 + 16))(v93, v54, v55);
    v90(v94, v107, v106);
    v97 = v39;
    v62 = v92;
    v89(v92, v22, v45);
    outlined init with copy of WorkoutBuddyAvailabilityProviding(&v121, &v120);
    v63 = type metadata accessor for WorkoutVoiceMomentCoordinator(0);
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v66 = v46;
    v67 = v97;
    v68 = v46;
    v69 = v105;
    v70 = v49;
    v71 = v61;
    v60 = v100;
    v72 = v62;
    v39 = v97;
    v59 = specialized WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(v70, v68, v71, v100, v69, v94, v72, &v120, v67, v88[0], v96);

    a9 = lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
    v118 = v66;
  }

  v73 = &v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator];
  *v73 = v59;
  v73[1] = a9;
  v74 = v102;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor] = v102;
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_splitProvider] = v101;
  v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isMachineWorkout] = v60;
  outlined init with copy of WorkoutBuddyAvailabilityProviding(&v121, &v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workoutVoiceAvailabilityProvider]);
  *&v43[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_sessionActivity] = v39;
  v119.receiver = v43;
  v119.super_class = v98;
  v75 = v39;
  v76 = v74;
  swift_unknownObjectRetain();
  v77 = objc_msgSendSuper2(&v119, sel_init);
  v78 = *&v77[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor];
  v79 = v77;
  v80 = v78;
  specialized ActivityRingProgressMonitor.addProgressObserver(_:)(v79, v80);

  v81 = v122;
  v82 = v123;
  __swift_project_boxed_opaque_existential_1(&v121, v122);
  v120 = (*(v82 + 16))(v81, v82);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm_18(v111);
  v83 = *(v104 + 8);
  v84 = v116;
  v83(v113, v116);
  v85 = *(v103 + 8);
  v86 = v106;
  v85(v115, v106);
  (*(v112 + 8))(v110, v114);
  v83(v108, v84);
  v85(v107, v86);
  __swift_destroy_boxed_opaque_existential_1Tm_18(&v121);
  return v79;
}

uint64_t outlined init with copy of WorkoutBuddyAvailabilityProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LiveWorkoutContextManager.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_delegate + 8] = a2;
  swift_unknownObjectWeakAssign();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setDelegate(_:), v10);
}

uint64_t closure #1 in LiveWorkoutContextManager.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setDelegate(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setDelegate(_:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 152);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = closure #1 in LiveWorkoutContextManager.setDelegate(_:);
  v9 = v0[3];
  v8 = v0[4];

  return v11(v9, v8, ObjectType, v2);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t LiveWorkoutContextManager.setAlertDelegate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:), v8);
}

uint64_t closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[4] = *v1;
  v2 = v1[1];
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v3 = *(v2 + 160);
  v2 += 160;
  v0[7] = v3;
  v0[8] = v2 & 0xFFFFFFFFFFFFLL | 0xDBC6000000000000;
  v4 = *(v2 - 152);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:), v6, v5);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  (*(v0 + 56))(*(v0 + 24), *(v0 + 48), *(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t LiveWorkoutContextManager.setMetricsPublisher(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  v10 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:), v8);
}

uint64_t closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 168);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:);
  v8 = v0[3];

  return v10(v8, ObjectType, v2);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t LiveWorkoutContextManager.updateWorkoutStartDate(date:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  (*(v4 + 32))(&v12[v11], &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v13 = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), v12);
}

uint64_t closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[4] = *v1;
  v2 = v1[1];
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v0[7] = *(v2 + 264);
  v0[8] = (v2 + 264) & 0xFFFFFFFFFFFFLL | 0x7E01000000000000;
  v3 = *(v2 + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), v5, v4);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  (*(v0 + 56))(*(v0 + 24), *(v0 + 48), *(v0 + 40));

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_distanceSampler);
  *(v0 + 72) = v1;
  if (v1)
  {
    return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:), v1, 0);
  }

  else
  {
    return (*(v0 + 8))();
  }
}

{
  v1 = v0[9];
  DistanceSampler.updateStartDate(_:)(v0[3]);
  v2 = v0[1];

  return v2();
}

Swift::Void __swiftcall LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(Swift::Bool isGeneratingOutro, Swift::Bool workoutWasEnded)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
  swift_beginAccess();
  v10 = *&v2[v9];
  *&v2[v9] = MEMORY[0x277D84FA0];

  specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
  if (!workoutWasEnded)
  {
    [*&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workout] removeStateObserver_];
    v11 = *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_sessionActivity];
    [v11 removeSessionDataObserver_];
    [v11 removeSplitsUpdateObserver_];
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v2;
  *(v13 + 40) = isGeneratingOutro;
  *(v13 + 41) = workoutWasEnded;
  v14 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v13);
}

uint64_t closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 32) = a5;
  *(v6 + 16) = a4;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v10 = (*(v2 + 272) + **(v2 + 272));
  v5 = *(*(v2 + 272) + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);
  v7 = *(v0 + 33);
  v8 = *(v0 + 32);

  return v10(v8, v7, ObjectType, v2);
}

uint64_t LiveWorkoutContextManager.generateIntroMomentWhenReady()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_workoutVoiceAvailabilityProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();

  return v8(v2, v3);
}

{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[5] = *v1;
  v2 = v1[1];
  v0[6] = v2;
  ObjectType = swift_getObjectType();
  v0[7] = ObjectType;
  v4 = *(v2 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();

  return v8(ObjectType, v2);
}

{
  if (*(v0 + 120) == 1)
  {
    v29 = *(v0 + 48);
    outlined consume of WorkoutVoiceAvailabilityProvider.State(*(v0 + 32));
    v1 = *(v29 + 248);
    v28 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = 1;
    v8 = 2;
LABEL_9:

    return v28(v7, v8, v4, v5);
  }

  if (*(v0 + 32) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.workoutVoice);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Workout Buddy is not available but recoverable, holding off on generating intro moment", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v30 = *(v0 + 48);

    v13 = *(v30 + 248);
    v28 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v15[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v16 = *(v0 + 40);
    v7 = 0;
    v8 = 1;
    goto LABEL_9;
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.workoutVoice);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20AEA4000, v19, v20, "Starting workout with buddy not available, falling back to Siri", v21, 2u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  v22 = *(v0 + 48);

  v31 = (*(v22 + 256) + **(v22 + 256));
  v23 = *(*(v22 + 256) + 4);
  v24 = swift_task_alloc();
  *(v0 + 104) = v24;
  *v24 = v0;
  v24[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 40);

  return v31(1, v25, v26);
}

{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v11 = *v0;

  v6 = *(v4 + 184);
  v4 += 184;
  *(v1 + 80) = v6;
  *(v1 + 88) = v4 & 0xFFFFFFFFFFFFLL | 0x486000000000000;
  v7 = *(v4 - 176);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), v9, v8);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 48));
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(*v0 + 96);
  v4 = *v0;

  outlined consume of WorkoutVoiceAvailabilityProvider.State(1uLL);
  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

{
  v11 = v0[6];
  v1 = v0[2];
  LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(0, 0);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) = 1;
  v2 = *(v11 + 248);
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = LiveWorkoutContextManager.generateIntroMomentWhenReady();
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  return (v10)(0, v7, v5, v6);
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 32);
  v5 = *v0;

  outlined consume of WorkoutVoiceAvailabilityProvider.State(v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t LiveWorkoutContextManager.generateIntroMomentWhenReady()(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

uint64_t LiveWorkoutContextManager.generateIntroMomentWhenReady()(char a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.generateIntroMomentWhenReady(), 0, 0);
}

Swift::Void __swiftcall LiveWorkoutContextManager.generateOutroMoment(for:)(NLWorkout *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v56 - v6;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.workoutVoice);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Updating Workout State with final HKWorkout Details", v11, 2u);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v12 = [(NLWorkout *)a1 endReason];
  if (v12 <= 0xA && ((1 << v12) & 0x638) != 0)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "User is starting another workout. Skipping Outro", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    v16 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
    swift_beginAccess();
    v17 = *&v2[v16];
    *&v2[v16] = MEMORY[0x277D84FA0];

    specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v2;
    *(v19 + 40) = 256;
    v20 = v2;
    v21 = &closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;
LABEL_10:
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, v21, v19);
    goto LABEL_11;
  }

  v22 = [(NLWorkout *)a1 hkWorkout];
  if (!v22)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20AEA4000, v49, v50, "Did not get an HKWorkout object. Skipping Outro", v51, 2u);
      MEMORY[0x20F2E9420](v51, -1, -1);
    }

    v52 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
    swift_beginAccess();
    v53 = *&v2[v52];
    *&v2[v52] = MEMORY[0x277D84FA0];

    specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
    v54 = type metadata accessor for TaskPriority();
    (*(*(v54 - 8) + 56))(v7, 1, 1, v54);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v2;
    *(v19 + 40) = 256;
    v55 = v2;
    v21 = &closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;
    goto LABEL_10;
  }

  v23 = v22;
  v24 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_cancellables;
  swift_beginAccess();
  v25 = *&v2[v24];
  *&v2[v24] = MEMORY[0x277D84FA0];

  specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(v2, *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityRingProgressMonitor]);
  v26 = type metadata accessor for TaskPriority();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v56[1] = v27 + 56;
  v57 = v28;
  v28(v7, 1, 1, v26);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v2;
  *(v29 + 40) = 257;
  v30 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply, v29);

  v31 = [(HKWorkout *)v23 totalDistance];
  v32 = 0.0;
  if (v31)
  {
    v33 = v31;
    v34 = [objc_opt_self() meterUnit];
    [(HKQuantity *)v33 doubleValueForUnit:v34];
    v36 = v35;

    if (v36 != 0.0)
    {
      [(HKWorkout *)v23 duration];
      v32 = v37 / v36;
    }
  }

  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = [objc_opt_self() sharedApplication];
  v40 = MEMORY[0x20F2E6C00](0xD000000000000021, 0x800000020B468760);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  *(v42 + 24) = v41;
  aBlock[4] = partial apply for closure #1 in LiveWorkoutContextManager.generateOutroMoment(for:);
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_71;
  v43 = _Block_copy(aBlock);

  v44 = [v39 beginBackgroundTaskWithName:v40 expirationHandler:v43];
  _Block_release(v43);

  *&v30[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier] = v44;
  v57(v7, 1, 1, v26);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = v45;
  *(v46 + 40) = v23;
  *(v46 + 48) = v32;
  v47 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), v46);
  swift_beginAccess();
  v48 = *(v38 + 16);
  *(v38 + 16) = v47;

LABEL_11:
}

void closure #1 in LiveWorkoutContextManager.generateOutroMoment(for:)(uint64_t a1)
{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Outro Moment background task expired", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 16);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x20F2E7170](v6, MEMORY[0x277D84F78] + 8, v8, MEMORY[0x277D84950]);
  }

  v9 = [objc_opt_self() sharedApplication];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = MEMORY[0x277D767B0];
  if (Strong)
  {
    v12 = *&Strong[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier];
  }

  else
  {
    v12 = *MEMORY[0x277D767B0];
  }

  [v9 endBackgroundTask_];

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    *&v13[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier] = *v11;
  }
}

uint64_t closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a1;
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

uint64_t closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[29];
    v4 = v0[30];
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[26];
    v8 = v0[12];
    v9 = Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
    v0[31] = *(Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
    v69 = *(v9 + 8);
    v0[32] = v69;
    v10 = Strong;
    swift_unknownObjectRetain();

    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = [v8 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);
    v14(v3, 0, 1, v13);
    v14(v6, 1, 1, v13);
    v15 = [v8 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14(v5, 0, 1, v13);
    [v8 duration];
    v16 = [objc_opt_self() seconds];
    type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    Measurement.init(value:unit:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v68 = *(*(v17 - 8) + 56);
    v68(v7, 0, 1, v17);
    v18 = [v8 totalDistance];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_opt_self() meterUnit];
      [v19 doubleValueForUnit_];
    }

    v31 = v0[24];
    v32 = v0[21];
    v33 = v0[22];
    v34 = v0[20];
    v61 = v0[19];
    v62 = v0[18];
    v63 = v0[17];
    v64 = v0[16];
    v35 = v0[13];
    v65 = v0[12];
    v66 = v0[25];
    v36 = [objc_opt_self() meters];
    type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    Measurement.init(value:unit:)();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v67 = *(*(v37 - 8) + 56);
    v67(v31, 0, 1, v37);
    type metadata accessor for UnitPace();
    static UnitPace.secondsPerMeter.getter();
    Measurement.init(value:unit:)();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
    v39 = *(*(v38 - 8) + 56);
    v39(v33, 0, 1, v38);
    static UnitPace.secondsPerMeter.getter();
    Measurement.init(value:unit:)();
    v39(v32, 0, 1, v38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
    (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    v42 = *(*(v41 - 8) + 56);
    v42(v61, 1, 1, v41);
    v42(v62, 1, 1, v41);
    v42(v63, 1, 1, v41);
    v42(v64, 1, 1, v41);
    v68(v66, 1, 1, v17);
    v43 = [v65 metadata];
    if (v43)
    {
      v44 = v43;
      v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v45 = 0;
    }

    v46 = v0[23];
    v47 = v0[15];
    v48 = v0[12];
    v0[33] = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v45, 0xD00000000000002CLL, 0x800000020B456CA0);

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
    v67(v46, 1, 1, v37);
    v50 = [v48 metadata];
    if (v50)
    {
      v51 = v50;
      v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v52 = 0;
    }

    v0[34] = v52;
    v53 = v0[14];
    v0[35] = swift_getObjectType();
    v54 = type metadata accessor for HKActivitySummaryRepresentable();
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
    v55 = *(v69 + 8);
    v56 = dispatch thunk of Actor.unownedExecutor.getter();
    v58 = v57;
    v59 = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);
    goto LABEL_15;
  }

  v21 = v0[11];
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    v0[38] = objc_opt_self();
    type metadata accessor for MainActor();
    v0[39] = static MainActor.shared.getter();
    v56 = dispatch thunk of Actor.unownedExecutor.getter();
    v58 = v60;
    v59 = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);
LABEL_15:

    return MEMORY[0x2822009F8](v59, v56, v58);
  }

  v23 = v22 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
  v0[36] = *(v22 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v24 = *(v23 + 8);
  v25 = v22;
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v27 = *(v24 + 224);
  v70 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  v0[37] = v29;
  *v29 = v0;
  v29[1] = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);

  return v70(ObjectType, v24);
}

{
  v1 = v0[33];
  v18 = v0[29];
  v19 = v0[30];
  v16 = v0[27];
  v17 = v0[28];
  v2 = v0[25];
  v14 = v0[24];
  v15 = v0[26];
  v3 = v0[23];
  v12 = v0[22];
  v13 = v0[21];
  v10 = v0[19];
  v11 = v0[20];
  v9 = v0[18];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v19, 0, v18, v17, v16, v15, v14, v12, v13, v11, v10, v9, v4, v5, v2, v1, v7, v3, v0[34], 0, v6, v0[35], v0[32]);
  swift_unknownObjectRelease();

  _sSo8NSObjectCSgWOhTm_14(v6, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v9, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v10, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
    v0[36] = *(Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
    v4 = *(v3 + 8);
    v5 = Strong;
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = *(v4 + 224);
    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[37] = v9;
    *v9 = v0;
    v9[1] = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);

    return v13(ObjectType, v4);
  }

  else
  {
    v0[38] = objc_opt_self();
    type metadata accessor for MainActor();
    v0[39] = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), v12, v11);
  }
}

{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

{
  *(v0 + 304) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 312) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), v2, v1);
}

{
  v2 = v0[38];
  v1 = v0[39];

  v0[40] = [v2 sharedApplication];

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier];
  }

  else
  {
    v3 = *MEMORY[0x277D767B0];
  }

  v4 = v0[40];
  v5 = v0[29];
  v6 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v23 = v0[14];
  [v4 endBackgroundTask_];

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall LiveWorkoutContextManager.cancelAnyPendingAnnouncements()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements(), v6);
}

uint64_t closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v8 = (*(v2 + 288) + **(v2 + 288));
  v5 = *(*(v2 + 288) + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements();

  return v8(ObjectType, v2);
}

Swift::Void __swiftcall LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  *(v8 + 40) = a1;
  v9 = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:), v8);
}

uint64_t closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v2 + 296) + **(v2 + 296));
  v5 = *(*(v2 + 296) + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:);
  v7 = *(v0 + 32);

  return v9(v7, ObjectType, v2);
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id LiveWorkoutContextManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveWorkoutContextManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveWorkoutContextManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LiveWorkoutContextManager.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v126 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v121 = *(v3 - 8);
  v4 = *(v121 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v122 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v123 = &v121 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v121 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v121 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v121 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v23 = *(*(v22 - 8) + 64);
  result = MEMORY[0x28223BE20](v22 - 8);
  v125 = &v121 - v25;
  if (a2 > 7)
  {
    if (a2 > 11)
    {
      switch(a2)
      {
        case 12:
          result = [v126 powerProvider];
          if (!result)
          {
            return result;
          }

          v77 = result;
          [result averagePower];
          if (v78 == 0.0)
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
            v80 = v123;
            (*(*(v79 - 8) + 56))(v123, 1, 1, v79);
          }

          else
          {
            [v77 averagePower];
            v99 = [objc_opt_self() watts];
            type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
            v80 = v123;
            Measurement.init(value:unit:)();
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
            (*(*(v100 - 8) + 56))(v80, 0, 1, v100);
          }

          v101 = v125;
          v102 = v121;
          v103 = v122;
          static TaskPriority.userInitiated.getter();
          v104 = type metadata accessor for TaskPriority();
          (*(*(v104 - 8) + 56))(v101, 0, 1, v104);
          outlined init with copy of Measurement<NSUnitPower>?(v80, v103, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
          v105 = (*(v102 + 80) + 40) & ~*(v102 + 80);
          v106 = swift_allocObject();
          v106[2] = 0;
          v106[3] = 0;
          v107 = v124;
          v106[4] = v124;
          outlined init with take of Measurement<NSUnitPower>?(v103, v106 + v105);
          v108 = v107;
          _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v101, &async function pointer to partial apply for closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v106);
          swift_unknownObjectRelease();

          _sSo8NSObjectCSgWOhTm_14(v101, &_sScPSgMd, &_sScPSgMR);
          v92 = v80;
          v90 = &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd;
          v91 = &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR;
          return _sSo8NSObjectCSgWOhTm_14(v92, v90, v91);
        case 37:
          [objc_msgSend(v126 heartRateProvider)];
          v86 = v129;
          swift_unknownObjectRelease();
          v36 = v125;
          static TaskPriority.userInitiated.getter();
          v87 = type metadata accessor for TaskPriority();
          (*(*(v87 - 8) + 56))(v36, 0, 1, v87);
          v38 = swift_allocObject();
          v38[2] = 0;
          v38[3] = 0;
          v88 = v124;
          v38[4] = v124;
          v38[5] = v86;
          v89 = v88;
          v41 = &async function pointer to partial apply for closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
          break;
        case 40:
          [objc_msgSend(v126 heartRateProvider)];
          v35 = v128;
          swift_unknownObjectRelease();
          v36 = v125;
          static TaskPriority.userInitiated.getter();
          v37 = type metadata accessor for TaskPriority();
          (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
          v38 = swift_allocObject();
          v38[2] = 0;
          v38[3] = 0;
          v39 = v124;
          v38[4] = v124;
          v38[5] = v35;
          v40 = v39;
          v41 = &async function pointer to partial apply for closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
          break;
        default:
          return result;
      }

      goto LABEL_36;
    }

    if (a2 == 8)
    {
      v67 = [v126 paceProvider];
      v68 = 0.0;
      if (v67)
      {
        v69 = v67;
        v70 = [v67 isPaceAvailable];
        v30 = v125;
        if (v70 && ([v69 averagePaceInMetersPerSecond], v71 != 0.0))
        {
          [v69 averagePaceInMetersPerSecond];
          v110 = v109;
          swift_unknownObjectRelease();
          v68 = 1.0 / v110;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v30 = v125;
      }

      v111 = v124;
      static TaskPriority.userInitiated.getter();
      v112 = type metadata accessor for TaskPriority();
      (*(*(v112 - 8) + 56))(v30, 0, 1, v112);
      v113 = swift_allocObject();
      *(v113 + 16) = 0;
      *(v113 + 24) = 0;
      *(v113 + 32) = v111;
      *(v113 + 40) = v68;
      v114 = v111;
      v115 = &async function pointer to partial apply for specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
      goto LABEL_48;
    }

    if (a2 == 10)
    {
      v47 = swift_allocBox();
      v49 = v48;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
      v51 = *(*(v50 - 8) + 56);
      v51(v49, 1, 1, v50);
      v52 = [v126 elevationProvider];
      if (v52)
      {
        v53 = [v52 elevationGain];
        swift_unknownObjectRelease();
        if (v53)
        {
          v54 = [objc_opt_self() meterUnit];
          [v53 doubleValueForUnit_];

          v55 = [objc_opt_self() meters];
          type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
          Measurement.init(value:unit:)();
          v51(v10, 0, 1, v50);
          outlined assign with take of Measurement<NSUnitLength>?(v10, v49);
        }
      }

      v56 = v125;
      static TaskPriority.userInitiated.getter();
      v57 = type metadata accessor for TaskPriority();
      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
      v58 = swift_allocObject();
      v58[2] = 0;
      v58[3] = 0;
      v59 = v124;
      v58[4] = v124;
      v58[5] = v47;
      v60 = v59;

      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v56, &async function pointer to partial apply for closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v58);

      _sSo8NSObjectCSgWOhTm_14(v56, &_sScPSgMd, &_sScPSgMR);
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          if (a2 != 5)
          {
            return result;
          }

          v26 = v126;
          [objc_msgSend(v126 heartRateProvider)];
          v27 = v127;
          swift_unknownObjectRelease();
          [objc_msgSend(v26 heartRateProvider)];
          v28 = v128;
          swift_unknownObjectRelease();
          v29 = [v26 heartRateProvider];
          v30 = v125;
          static TaskPriority.userInitiated.getter();
          v31 = type metadata accessor for TaskPriority();
          (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
          v32 = swift_allocObject();
          v32[2] = 0;
          v32[3] = 0;
          v33 = v124;
          v32[4] = v124;
          v32[5] = v29;
          v32[6] = v27;
          v32[7] = v28;
          v34 = v33;
          swift_unknownObjectRetain();
          _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v32);
          swift_unknownObjectRelease();
          goto LABEL_49;
        }

        v81 = [v126 paceProvider];
        v82 = 0.0;
        if (v81)
        {
          v83 = v81;
          v84 = [v81 isPaceAvailable];
          v30 = v125;
          if (v84 && ([v83 currentPaceInMetersPerSecond], v85 != 0.0))
          {
            [v83 currentPaceInMetersPerSecond];
            v117 = v116;
            swift_unknownObjectRelease();
            v82 = 1.0 / v117;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v30 = v125;
        }

        v118 = v124;
        static TaskPriority.userInitiated.getter();
        v119 = type metadata accessor for TaskPriority();
        (*(*(v119 - 8) + 56))(v30, 0, 1, v119);
        v113 = swift_allocObject();
        *(v113 + 16) = 0;
        *(v113 + 24) = 0;
        *(v113 + 32) = v118;
        *(v113 + 40) = v82;
        v120 = v118;
        v115 = &async function pointer to partial apply for specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
LABEL_48:
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v30, v115, v113);
LABEL_49:

        v90 = &_sScPSgMd;
        v91 = &_sScPSgMR;
        v92 = v30;
        return _sSo8NSObjectCSgWOhTm_14(v92, v90, v91);
      }

      [objc_msgSend(v126 elapsedTimeProvider)];
      v73 = v72;
      swift_unknownObjectRelease();
      v36 = v125;
      static TaskPriority.userInitiated.getter();
      v74 = type metadata accessor for TaskPriority();
      (*(*(v74 - 8) + 56))(v36, 0, 1, v74);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v75 = v124;
      v38[4] = v124;
      v38[5] = v73;
      v76 = v75;
      v41 = &async function pointer to partial apply for closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
LABEL_36:
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v36, v41, v38);

      v90 = &_sScPSgMd;
      v91 = &_sScPSgMR;
      v92 = v36;
      return _sSo8NSObjectCSgWOhTm_14(v92, v90, v91);
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      [objc_msgSend(v126 energyBurnProvider)];
      v43 = v42;
      swift_unknownObjectRelease();
      v36 = v125;
      static TaskPriority.userInitiated.getter();
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v36, 0, 1, v44);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v45 = v124;
      v38[4] = v124;
      v38[5] = v43;
      v46 = v45;
      v41 = &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
      goto LABEL_36;
    }

    v61 = v126;
    [objc_msgSend(v126 distanceProvider)];
    v63 = v62;
    swift_unknownObjectRelease();
    v64 = [objc_msgSend(v61 distanceProvider)];
    swift_unknownObjectRelease();
    if (v64)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = *(v16 + 32);
      v65(v14, v19, v15);
      (*(v16 + 56))(v14, 0, 1, v15);
      v65(v21, v14, v15);
      v66 = v125;
    }

    else
    {
      (*(v16 + 56))(v14, 1, 1, v15);
      static Date.now.getter();
      v93 = (*(v16 + 48))(v14, 1, v15);
      v66 = v125;
      if (v93 != 1)
      {
        _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    static TaskPriority.userInitiated.getter();
    v94 = type metadata accessor for TaskPriority();
    (*(*(v94 - 8) + 56))(v66, 0, 1, v94);
    (*(v16 + 16))(v19, v21, v15);
    v95 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    v96 = swift_allocObject();
    *(v96 + 2) = 0;
    *(v96 + 3) = 0;
    v97 = v124;
    *(v96 + 4) = v124;
    *(v96 + 5) = v63;
    (*(v16 + 32))(&v96[v95], v19, v15);
    v98 = v97;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v66, &async function pointer to partial apply for closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v96);

    _sSo8NSObjectCSgWOhTm_14(v66, &_sScPSgMd, &_sScPSgMR);
    return (*(v16 + 8))(v21, v15);
  }

  return result;
}