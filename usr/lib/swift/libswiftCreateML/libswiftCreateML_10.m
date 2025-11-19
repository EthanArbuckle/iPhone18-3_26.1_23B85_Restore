uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt a1, uint64_t a2, char a3, unint64_t a4, unsigned __int8 a5)
{
  v8 = a2;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  v29 = v5;
  if ((a5 & (v11 > v10)) == 0)
  {
    v12 = v10 + 1;
    v30 = a2;
    v31 = a1;
    if (a5)
    {
      specialized _NativeSet.resize(capacity:)(v12);
    }

    else
    {
      if (v11 > v10)
      {
        specialized _NativeSet.copy()();
LABEL_21:
        v8 = v30;
        a1 = v31;
        goto LABEL_22;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v12);
    }

    v13 = *v5;
    Hasher.init(_seed:)(*(*v5 + 40));
    if (a3)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v31);
    }

    else
    {
      Hasher._combine(_:)(0);
      String.hash(into:)(v28, v31);
    }

    v14 = Hasher._finalize()();
    v15 = ~(-1 << *(v13 + 32));
    a4 = v15 & v14;
    v16 = *(v13 + 8 * ((v15 & v14) >> 6) + 56);
    if (_bittest64(&v16, a4))
    {
      v17 = *(v13 + 48);
      v8 = v30;
      a1 = v31;
      while (1)
      {
        v18 = *(v17 + 24 * a4);
        if (*(v17 + 24 * a4 + 16))
        {
          if ((a3 & 1) != 0 && v18 == a1)
          {
            goto LABEL_25;
          }
        }

        else if ((a3 & 1) == 0)
        {
          v19 = *(v17 + 24 * a4 + 8);
          if (!(a1 ^ v18 | v8 ^ v19) || (v20 = _stringCompareWithSmolCheck(_:_:expecting:)(v18, v19, a1, v8, 0), a1 = v31, v8 = v30, (v20 & 1) != 0))
          {
LABEL_25:
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier);
            BUG();
          }
        }

        a4 = v15 & (a4 + 1);
        v21 = *(v13 + 8 * (a4 >> 6) + 56);
        if (!_bittest64(&v21, a4))
        {
          goto LABEL_22;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  result = *v29;
  *(result + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(result + 48);
  v24 = 24 * a4;
  *(v23 + v24) = a1;
  *(v23 + v24 + 8) = v8;
  *(v23 + v24 + 16) = a3 & 1;
  v25 = *(result + 16);
  v26 = __OFADD__(1, v25);
  v27 = v25 + 1;
  if (v26)
  {
    BUG();
  }

  *(result + 16) = v27;
  return result;
}

uint64_t *specialized _NativeSet.copy()()
{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
  v23 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    v17 = *(v1 + 48);
    v18 = 16 * v12;
    v19 = *(v17 + v18);
    v20 = *(v17 + v18 + 8);
    v21 = *(v3 + 48);
    *(v21 + v18) = v19;
    *(v21 + v18 + 8) = v20;
    v20;
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:
  v1;
  result = v23;
  *v23 = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String?>);
  v21 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    v17 = *(v1 + 48);
    v18 = 16 * v12;
    v19 = *(v17 + v18 + 8);
    *(*(v3 + 48) + v18) = *(v17 + v18);
    v19;
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  result = v21;
  *v21 = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<MLRecommender.Identifier>);
  v24 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    v17 = *(v1 + 48);
    v18 = 24 * v12;
    v19 = *(v17 + v18);
    v20 = *(v17 + v18 + 8);
    v21 = *(v3 + 48);
    v22 = *(v17 + v18 + 16);
    *(v21 + v18) = v19;
    *(v21 + v18 + 8) = v20;
    *(v21 + v18 + 16) = v22;
    outlined copy of MLRecommender.Identifier(v19, v20, v22);
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  result = v24;
  *v24 = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<NSURLResourceKey>);
  v19 = v0;
  v1 = *v0;
  v2 = static _SetStorage.copy(original:)(*v0);
  v3 = v2;
  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v2 + 56);
  __src = (v1 + 56);
  v5 = ((1 << *(v2 + 32)) + 63) >> 6;
  if (v2 != v1 || v4 >= v1 + 8 * v5 + 56)
  {
    memmove(v4, __src, 8 * v5);
  }

  *(v3 + 16) = *(v1 + 16);
  v6 = 1 << *(v1 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v1 + 56) & v7;
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(__src + v13);
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_23:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_24:
    v17 = *(*(v1 + 48) + 8 * v12);
    *(*(v3 + 48) + 8 * v12) = v17;
    v17;
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 1);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 2);
  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_25;
  }

  v14 = *(__src + v13 + 3);
  if (v14)
  {
    goto LABEL_23;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v1 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:
  v1;
  result = v19;
  *v19 = v3;
  return result;
}

uint64_t specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int?>);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)(*v0);
  v4 = v3;
  if (!*(v2 + 16))
  {
    goto LABEL_25;
  }

  v5 = (v3 + 56);
  v6 = v2 + 56;
  v7 = ((1 << *(v3 + 32)) + 63) >> 6;
  if (v3 != v2 || v5 >= v2 + 8 * v7 + 56)
  {
    memmove(v5, (v2 + 56), 8 * v7);
  }

  *(v4 + 16) = *(v2 + 16);
  v8 = 1 << *(v2 + 32);
  v9 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v9 = -1;
  }

  v10 = *(v2 + 56) & v9;
  v11 = (v8 + 63) >> 6;
  v12 = 0;
  while (1)
  {
    if (v10)
    {
      _BitScanForward64(&v13, v10);
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      goto LABEL_24;
    }

    v15 = v12 + 1;
    if (__OFADD__(1, v12))
    {
      BUG();
    }

    if (v15 >= v11)
    {
      goto LABEL_25;
    }

    v16 = *(v6 + 8 * v15);
    if (!v16)
    {
      break;
    }

    v17 = v12 + 1;
LABEL_23:
    _BitScanForward64(&v18, v16);
    v10 = v16 & (v16 - 1);
    v14 = v18 | (v17 << 6);
    v12 = v17;
LABEL_24:
    v19 = *(v2 + 48);
    v20 = 16 * v14;
    v21 = *(v19 + v20);
    LOBYTE(v19) = *(v19 + v20 + 8);
    v22 = *(v4 + 48);
    *(v22 + v20) = v21;
    *(v22 + v20 + 8) = v19;
  }

  v17 = v12 + 2;
  if (v12 + 2 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 8);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 3;
  if (v12 + 3 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 16);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 4;
  if (v12 + 4 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 24);
  if (v16)
  {
    goto LABEL_23;
  }

  while (v12 + 5 < v11)
  {
    v16 = *(v2 + 8 * v12++ + 96);
    if (v16)
    {
      v17 = v12 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int>);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)(*v0);
  v4 = v3;
  if (!*(v2 + 16))
  {
    goto LABEL_25;
  }

  v5 = (v3 + 56);
  v6 = v2 + 56;
  v7 = ((1 << *(v3 + 32)) + 63) >> 6;
  if (v3 != v2 || v5 >= v2 + 8 * v7 + 56)
  {
    memmove(v5, (v2 + 56), 8 * v7);
  }

  *(v4 + 16) = *(v2 + 16);
  v8 = 1 << *(v2 + 32);
  v9 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v9 = -1;
  }

  v10 = *(v2 + 56) & v9;
  v11 = (v8 + 63) >> 6;
  v12 = 0;
  while (1)
  {
    if (v10)
    {
      _BitScanForward64(&v13, v10);
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      goto LABEL_24;
    }

    v15 = v12 + 1;
    if (__OFADD__(1, v12))
    {
      BUG();
    }

    if (v15 >= v11)
    {
      goto LABEL_25;
    }

    v16 = *(v6 + 8 * v15);
    if (!v16)
    {
      break;
    }

    v17 = v12 + 1;
LABEL_23:
    _BitScanForward64(&v18, v16);
    v10 = v16 & (v16 - 1);
    v14 = v18 | (v17 << 6);
    v12 = v17;
LABEL_24:
    *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
  }

  v17 = v12 + 2;
  if (v12 + 2 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 8);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 3;
  if (v12 + 3 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 16);
  if (v16)
  {
    goto LABEL_23;
  }

  v17 = v12 + 4;
  if (v12 + 4 >= v11)
  {
    goto LABEL_25;
  }

  v16 = *(v6 + 8 * v15 + 24);
  if (v16)
  {
    goto LABEL_23;
  }

  while (v12 + 5 < v11)
  {
    v16 = *(v2 + 8 * v12++ + 96);
    if (v16)
    {
      v17 = v12 + 4;
      goto LABEL_23;
    }
  }

LABEL_25:

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v29 = type metadata accessor for URL(0);
  v31 = *(v29 - 8);
  v2 = *(v31 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = &v29;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<URL>);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)(*v0);
  v7 = v6;
  if (!*(v5 + 16))
  {

    goto LABEL_28;
  }

  v36 = v0;
  v8 = (v6 + 56);
  v9 = *(v6 + 32);
  __src = (v5 + 56);
  v10 = ((1 << v9) + 63) >> 6;
  if (v6 != v5 || v8 >= v5 + 8 * v10 + 56)
  {
    memmove(v8, __src, 8 * v10);
  }

  v11 = *(v5 + 16);
  v37 = v7;
  *(v7 + 16) = v11;
  v12 = 1 << *(v5 + 32);
  v13 = ~(-1 << v12);
  if (v12 >= 64)
  {
    v13 = -1;
  }

  v33 = v5;
  v14 = *(v5 + 56) & v13;
  v34 = (v12 + 63) >> 6;
  v15 = 0;
  v16 = v31;
  v17 = v30;
  v18 = v29;
  while (1)
  {
    if (v14)
    {
      _BitScanForward64(&v19, v14);
      v14 &= v14 - 1;
      v32 = v15;
      v20 = v19 | (v15 << 6);
      v21 = v33;
      goto LABEL_25;
    }

    v22 = v15 + 1;
    v21 = v33;
    if (__OFADD__(1, v15))
    {
      BUG();
    }

    if (v22 >= v34)
    {
      goto LABEL_26;
    }

    v23 = *(__src + v22);
    if (!v23)
    {
      break;
    }

    v24 = v15 + 1;
LABEL_24:
    _BitScanForward64(&v26, v23);
    v14 = v23 & (v23 - 1);
    v20 = v26 | (v24 << 6);
    v32 = v24;
LABEL_25:
    v27 = *(v16 + 72) * v20;
    (*(v16 + 16))(v17, v27 + *(v21 + 48), v18);
    (*(v16 + 32))(*(v37 + 48) + v27, v17, v18);
    v15 = v32;
  }

  v24 = v15 + 2;
  if (v15 + 2 >= v34)
  {
    goto LABEL_26;
  }

  v23 = *(__src + v22 + 1);
  if (v23)
  {
    goto LABEL_24;
  }

  v24 = v15 + 3;
  if (v15 + 3 >= v34)
  {
    goto LABEL_26;
  }

  v23 = *(__src + v22 + 2);
  if (v23)
  {
    goto LABEL_24;
  }

  v24 = v15 + 4;
  if (v15 + 4 >= v34)
  {
    goto LABEL_26;
  }

  v23 = *(__src + v22 + 3);
  if (v23)
  {
    goto LABEL_24;
  }

  v25 = v15 + 12;
  while (v25 - 7 < v34)
  {
    v23 = *(v33 + 8 * v25++);
    if (v23)
    {
      v24 = v25 - 8;
      goto LABEL_24;
    }
  }

LABEL_26:

  v1 = v36;
  v7 = v37;
LABEL_28:
  *v1 = v7;
  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {
    result = v3;
    goto LABEL_36;
  }

  v40 = v1;
  v6 = 1 << *(v3 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v38 = (v6 + 63) >> 6;
  swift_retain_n(v3, 2);
  v9 = 0;
  v37 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v39 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_16;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v38)
    {
      break;
    }

    i = *(v3 + 8 * v13 + 56);
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v38)
      {
        break;
      }

      i = *(v3 + 8 * v13 + 64);
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v38)
        {
          break;
        }

        for (i = *(v3 + 8 * v13 + 72); !i; i = *(v3 + 8 * v15 + 56))
        {
          v12 = __OFADD__(1, v15++);
          if (v12)
          {
            BUG();
          }

          if (v15 >= v38)
          {
            goto LABEL_34;
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v39 = v15;
LABEL_16:
    v17 = *(v3 + 48);
    v18 = 16 * v11;
    v19 = *(v17 + v18);
    v20 = *(v17 + v18 + 8);
    Hasher.init(_seed:)(*(v5 + 40));
    v20;
    v36 = v19;
    String.hash(into:)(v35, v19);
    v21 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v22 = v21 >> 6;
    v23 = ~*(v5 + 8 * (v21 >> 6) + 56) >> v21 << v21;
    if (v23)
    {
      _BitScanForward64(&v24, v23);
      v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - (-1 << *(v5 + 32))) >> 6;
      v27 = 0;
      do
      {
        v28 = v22 + 1;
        if (v22 + 1 == v26 && (v27 & 1) != 0)
        {
          BUG();
        }

        v22 = 0;
        if (v28 != v26)
        {
          v22 = v28;
        }

        v27 |= v28 == v26;
        v29 = *(v5 + 8 * v22 + 56);
      }

      while (v29 == -1);
      v30 = ~v29;
      v31 = 64;
      if (v30)
      {
        _BitScanForward64(&v31, v30);
      }

      v25 = v31 + (v22 << 6);
    }

    *(v5 + 8 * (v25 >> 6) + 56) |= 1 << v25;
    v32 = *(v5 + 48);
    v33 = 16 * v25;
    *(v32 + v33) = v36;
    *(v32 + v33 + 8) = v20;
    ++*(v5 + 16);
    v3 = v37;
    v9 = v39;
  }

LABEL_34:
  result = v3, 3;
  v2 = v40;
LABEL_36:
  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int?>);
  v5 = v3;
  v6 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v5 + 16))
  {

    goto LABEL_41;
  }

  v7 = 1 << *(v5 + 32);
  v8 = ~(-1 << v7);
  if (v7 >= 64)
  {
    v8 = -1;
  }

  v9 = *(v5 + 56) & v8;
  v39 = (v7 + 63) >> 6;
  v10 = 0;
  v37 = v5;
  while (1)
  {
    if (v9)
    {
      _BitScanForward64(&v11, v9);
      v9 &= v9 - 1;
      v38 = v10;
      v12 = v11 | (v10 << 6);
      goto LABEL_18;
    }

    v13 = __OFADD__(1, v10);
    v14 = v10 + 1;
    if (v13)
    {
      BUG();
    }

    if (v14 >= v39)
    {
      break;
    }

    i = *(v5 + 8 * v14 + 56);
    if (i)
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 + 1;
      if (v14 + 1 >= v39)
      {
        break;
      }

      i = *(v5 + 8 * v14 + 64);
      if (!i)
      {
        v16 = v14 + 2;
        if (v14 + 2 >= v39)
        {
          break;
        }

        i = *(v5 + 8 * v14 + 72);
        if (!i)
        {
          v16 = v14 + 3;
          if (v14 + 3 >= v39)
          {
            break;
          }

          for (i = *(v5 + 8 * v14 + 80); !i; i = *(v5 + 8 * v16 + 56))
          {
            v13 = __OFADD__(1, v16++);
            if (v13)
            {
              BUG();
            }

            if (v16 >= v39)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    _BitScanForward64(&v17, i);
    v9 = i & (i - 1);
    v12 = v17 | (v16 << 6);
    v38 = v16;
LABEL_18:
    v18 = *(v5 + 48);
    v19 = 16 * v12;
    v20 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    Hasher.init(_seed:)(*(v6 + 40));
    v40 = v21;
    if (v21 == 1)
    {
      v22 = v20;
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      v22 = v20;
      Hasher._combine(_:)(v20);
    }

    v23 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
    v24 = v23 >> 6;
    v25 = ~*(v6 + 8 * (v23 >> 6) + 56) >> v23 << v23;
    if (v25)
    {
      _BitScanForward64(&v26, v25);
      v27 = v26 | v23 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = (63 - (-1 << *(v6 + 32))) >> 6;
      v29 = 0;
      do
      {
        v30 = v24 + 1;
        if (v24 + 1 == v28 && (v29 & 1) != 0)
        {
          BUG();
        }

        v24 = 0;
        if (v30 != v28)
        {
          v24 = v30;
        }

        v29 |= v30 == v28;
        v31 = *(v6 + 8 * v24 + 56);
      }

      while (v31 == -1);
      v32 = ~v31;
      v33 = 64;
      if (v32)
      {
        _BitScanForward64(&v33, v32);
      }

      v27 = v33 + (v24 << 6);
    }

    *(v6 + 8 * (v27 >> 6) + 56) |= 1 << v27;
    v34 = *(v6 + 48);
    v35 = 16 * v27;
    *(v34 + v35) = v22;
    *(v34 + v35 + 8) = v40;
    ++*(v6 + 16);
    v5 = v37;
    v10 = v38;
  }

LABEL_39:

  v2 = v1;
LABEL_41:
  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String?>);
  v21 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {
    goto LABEL_25;
  }

  v20 = v1;
  v5 = 1 << *(v3 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v3 + 56) & v6;
  v22 = (v5 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v7 &= v7 - 1;
      v10 = v9 | (v8 << 6);
      goto LABEL_23;
    }

    v11 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v11 >= v22)
    {
      goto LABEL_24;
    }

    v12 = *(v3 + 8 * v11 + 56);
    if (!v12)
    {
      break;
    }

    v13 = v8 + 1;
LABEL_22:
    _BitScanForward64(&v14, v12);
    v7 = v12 & (v12 - 1);
    v10 = v14 | (v13 << 6);
    v8 = v13;
LABEL_23:
    v15 = *(v3 + 48);
    v16 = 16 * v10;
    v17 = *(v15 + v16);
    v18 = *(v15 + v16 + 8);
    v18;
    specialized _NativeSet._unsafeInsertNew(_:)(v17, v18, v21);
  }

  v13 = v8 + 2;
  if (v8 + 2 >= v22)
  {
    goto LABEL_24;
  }

  v12 = *(v3 + 8 * v11 + 64);
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 3;
  if (v8 + 3 >= v22)
  {
    goto LABEL_24;
  }

  v12 = *(v3 + 8 * v11 + 72);
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 4;
  if (v8 + 4 >= v22)
  {
    goto LABEL_24;
  }

  v12 = *(v3 + 8 * v11 + 80);
  if (v12)
  {
    goto LABEL_22;
  }

  while (v8 + 5 < v22)
  {
    v12 = *(v3 + 8 * v8++ + 96);
    if (v12)
    {
      v13 = v8 + 4;
      goto LABEL_22;
    }
  }

LABEL_24:

  v2 = v20;
LABEL_25:

  result = v21;
  *v2 = v21;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {

    goto LABEL_38;
  }

  v31 = v1;
  v6 = 1 << *(v3 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v30 = (v6 + 63) >> 6;
  v9 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v30)
    {
      break;
    }

    i = *(v3 + 8 * v13 + 56);
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v30)
      {
        break;
      }

      i = *(v3 + 8 * v13 + 64);
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v30)
        {
          break;
        }

        i = *(v3 + 8 * v13 + 72);
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v30)
          {
            break;
          }

          for (i = *(v3 + 8 * v13 + 80); !i; i = *(v3 + 8 * v15 + 56))
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v30)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v9 = v15;
LABEL_18:
    v17 = *(*(v3 + 48) + 8 * v11);
    v18 = static Hasher._hash(seed:_:)(*(v5 + 40), v17) & ~(-1 << *(v5 + 32));
    v19 = v18 >> 6;
    v20 = ~*(v5 + 8 * (v18 >> 6) + 56) >> v18 << v18;
    if (v20)
    {
      _BitScanForward64(&v21, v20);
      v22 = v21 | v18 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = (63 - (-1 << *(v5 + 32))) >> 6;
      v24 = 0;
      do
      {
        v25 = v19 + 1;
        if (v19 + 1 == v23 && (v24 & 1) != 0)
        {
          BUG();
        }

        v19 = 0;
        if (v25 != v23)
        {
          v19 = v25;
        }

        v24 |= v25 == v23;
        v26 = *(v5 + 8 * v19 + 56);
      }

      while (v26 == -1);
      v27 = ~v26;
      v28 = 64;
      if (v27)
      {
        _BitScanForward64(&v28, v27);
      }

      v22 = v28 + (v19 << 6);
    }

    *(v5 + 8 * (v22 >> 6) + 56) |= 1 << v22;
    *(*(v5 + 48) + 8 * v22) = v17;
    ++*(v5 + 16);
  }

LABEL_36:

  v2 = v31;
LABEL_38:
  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = a1;
  v38 = type metadata accessor for URL(0);
  v39 = *(v38 - 8);
  v4 = *(v39 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = &v37;
  v7 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<URL>);
  v8 = v7;
  v9 = static _SetStorage.resize(original:capacity:move:)(v7, v3, 0);
  if (!*(v7 + 16))
  {

    goto LABEL_38;
  }

  v45 = v2;
  v10 = 1 << *(v7 + 32);
  v11 = ~(-1 << v10);
  if (v10 >= 64)
  {
    v11 = -1;
  }

  v12 = *(v7 + 56) & v11;
  v44 = (v10 + 63) >> 6;

  v13 = 0;
  v43 = v7;
  while (1)
  {
    if (v12)
    {
      _BitScanForward64(&v14, v12);
      v42 = (v12 - 1) & v12;
      v41 = v13;
      v15 = v14 | (v13 << 6);
      goto LABEL_18;
    }

    v16 = __OFADD__(1, v13);
    v17 = v13 + 1;
    if (v16)
    {
      BUG();
    }

    if (v17 >= v44)
    {
      break;
    }

    i = *(v8 + 8 * v17 + 56);
    if (i)
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 + 1;
      if (v17 + 1 >= v44)
      {
        break;
      }

      i = *(v8 + 8 * v17 + 64);
      if (!i)
      {
        v19 = v17 + 2;
        if (v17 + 2 >= v44)
        {
          break;
        }

        i = *(v8 + 8 * v17 + 72);
        if (!i)
        {
          v19 = v17 + 3;
          if (v17 + 3 >= v44)
          {
            break;
          }

          for (i = *(v8 + 8 * v17 + 80); !i; i = *(v8 + 8 * v19 + 56))
          {
            v16 = __OFADD__(1, v19++);
            if (v16)
            {
              BUG();
            }

            if (v19 >= v44)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v20, i);
    v42 = i & (i - 1);
    v15 = v20 | (v19 << 6);
    v41 = v19;
LABEL_18:
    v21 = *(v39 + 72);
    v22 = v38;
    (*(v39 + 16))(v40, *(v8 + 48) + v21 * v15, v38);
    v23 = *(v9 + 40);
    v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)(v23, v22, v24) & ~(-1 << *(v9 + 32));
    v26 = v25 >> 6;
    v27 = ~*(v9 + 8 * (v25 >> 6) + 56) >> v25 << v25;
    if (v27)
    {
      _BitScanForward64(&v28, v27);
      v29 = v28 | v25 & 0xFFFFFFFFFFFFFFC0;
      v8 = v43;
    }

    else
    {
      v30 = (63 - (-1 << *(v9 + 32))) >> 6;
      v31 = 0;
      v8 = v43;
      do
      {
        v32 = v26 + 1;
        if (v26 + 1 == v30 && (v31 & 1) != 0)
        {
          BUG();
        }

        v26 = 0;
        if (v32 != v30)
        {
          v26 = v32;
        }

        v31 |= v32 == v30;
        v33 = *(v9 + 8 * v26 + 56);
      }

      while (v33 == -1);
      v34 = ~v33;
      v35 = 64;
      if (v34)
      {
        _BitScanForward64(&v35, v34);
      }

      v29 = v35 + (v26 << 6);
    }

    *(v9 + 8 * (v29 >> 6) + 56) |= 1 << v29;
    (*(v39 + 32))(*(v9 + 48) + v29 * v21, v40, v38);
    ++*(v9 + 16);
    v13 = v41;
    v12 = v42;
  }

LABEL_36:
  result = v8;
  v2 = v45;
LABEL_38:
  *v2 = v9;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<MLRecommender.Identifier>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 0);
  if (!*(v3 + 16))
  {

    goto LABEL_41;
  }

  v45 = v1;
  v6 = 1 << *(v3 + 32);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v44 = (v6 + 63) >> 6;

  v9 = 0;
  v42 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v11 = (v8 - 1) & v8;
      v43 = v9;
      v12 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v13 = __OFADD__(1, v9);
    v14 = v9 + 1;
    if (v13)
    {
      BUG();
    }

    if (v14 >= v44)
    {
      break;
    }

    i = *(v3 + 8 * v14 + 56);
    if (i)
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 + 1;
      if (v14 + 1 >= v44)
      {
        break;
      }

      i = *(v3 + 8 * v14 + 64);
      if (!i)
      {
        v16 = v14 + 2;
        if (v14 + 2 >= v44)
        {
          break;
        }

        i = *(v3 + 8 * v14 + 72);
        if (!i)
        {
          v16 = v14 + 3;
          if (v14 + 3 >= v44)
          {
            break;
          }

          for (i = *(v3 + 8 * v14 + 80); !i; i = *(v3 + 8 * v16 + 56))
          {
            v13 = __OFADD__(1, v16++);
            if (v13)
            {
              BUG();
            }

            if (v16 >= v44)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    _BitScanForward64(&v17, i);
    v11 = i & (i - 1);
    v12 = v17 | (v16 << 6);
    v43 = v16;
LABEL_18:
    v41 = v11;
    v18 = *(v3 + 48);
    v19 = 24 * v12;
    v20 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    v22 = *(v18 + v19 + 16);
    Hasher.init(_seed:)(*(v5 + 40));
    v46 = v22;
    if (v22)
    {
      v23 = v21;
      Hasher._combine(_:)(1uLL);
      v24 = v20;
      Hasher._combine(_:)(v20);
    }

    else
    {
      Hasher._combine(_:)(0);
      v21;
      v25 = v21;
      v24 = v20;
      v23 = v25;
      String.hash(into:)(v40, v20);
    }

    v26 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v27 = v26 >> 6;
    v28 = ~*(v5 + 8 * (v26 >> 6) + 56) >> v26 << v26;
    if (v28)
    {
      _BitScanForward64(&v29, v28);
      v30 = v29 | v26 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - (-1 << *(v5 + 32))) >> 6;
      v32 = 0;
      do
      {
        v33 = v27 + 1;
        if (v27 + 1 == v31 && (v32 & 1) != 0)
        {
          BUG();
        }

        v27 = 0;
        if (v33 != v31)
        {
          v27 = v33;
        }

        v32 |= v33 == v31;
        v34 = *(v5 + 8 * v27 + 56);
      }

      while (v34 == -1);
      v35 = ~v34;
      v36 = 64;
      if (v35)
      {
        _BitScanForward64(&v36, v35);
      }

      v30 = v36 + (v27 << 6);
    }

    v37 = 24 * v30;
    *(v5 + 8 * (v30 >> 6) + 56) |= 1 << v30;
    v38 = *(v5 + 48);
    *(v38 + v37) = v24;
    *(v38 + v37 + 8) = v23;
    *(v38 + v37 + 16) = v46;
    ++*(v5 + 16);
    v3 = v42;
    v9 = v43;
    v8 = v41;
  }

LABEL_39:
  result = v3;
  v2 = v45;
LABEL_41:
  *v2 = v5;
  return result;
}

uint64_t *specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v36 = v1;
  v2 = *v1;
  v3 = *(*v1 + 24);
  if (v3 <= a1)
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<NSURLResourceKey>);
  v4 = static _SetStorage.resize(original:capacity:move:)(v2, v3, 0);
  if (!*(v2 + 16))
  {
    v2;
    goto LABEL_38;
  }

  v5 = 1 << *(v2 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v2 + 56) & v6;
  v40 = (v5 + 63) >> 6;
  v2;
  v8 = 0;
  v39 = v2;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v38 = (v7 - 1) & v7;
      v37 = v8;
      v10 = v9 | (v8 << 6);
      goto LABEL_18;
    }

    v11 = __OFADD__(1, v8);
    v12 = v8 + 1;
    if (v11)
    {
      BUG();
    }

    if (v12 >= v40)
    {
      break;
    }

    i = *(v2 + 8 * v12 + 56);
    if (i)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 + 1;
      if (v12 + 1 >= v40)
      {
        break;
      }

      i = *(v2 + 8 * v12 + 64);
      if (!i)
      {
        v14 = v12 + 2;
        if (v12 + 2 >= v40)
        {
          break;
        }

        i = *(v2 + 8 * v12 + 72);
        if (!i)
        {
          v14 = v12 + 3;
          if (v12 + 3 >= v40)
          {
            break;
          }

          for (i = *(v2 + 8 * v12 + 80); !i; i = *(v2 + 8 * v14 + 56))
          {
            v11 = __OFADD__(1, v14++);
            if (v11)
            {
              BUG();
            }

            if (v14 >= v40)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v15, i);
    v38 = i & (i - 1);
    v10 = v15 | (v14 << 6);
    v37 = v14;
LABEL_18:
    v16 = *(*(v2 + 48) + 8 * v10);
    v17 = *(v4 + 40);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(v16);
    v20 = v19;
    Hasher.init(_seed:)(v17);
    v21 = v16;
    String.hash(into:)(v35, v18);
    v22 = Hasher._finalize()();
    v20;
    v23 = v22 & ~(-1 << *(v4 + 32));
    v24 = v23 >> 6;
    v25 = ~*(v4 + 8 * (v23 >> 6) + 56) >> v23 << v23;
    if (v25)
    {
      _BitScanForward64(&v26, v25);
      v27 = v26 | v23 & 0xFFFFFFFFFFFFFFC0;
      v2 = v39;
    }

    else
    {
      v28 = (63 - (-1 << *(v4 + 32))) >> 6;
      v29 = 0;
      v2 = v39;
      do
      {
        v30 = v24 + 1;
        if (v24 + 1 == v28 && (v29 & 1) != 0)
        {
          BUG();
        }

        v24 = 0;
        if (v30 != v28)
        {
          v24 = v30;
        }

        v29 |= v30 == v28;
        v31 = *(v4 + 8 * v24 + 56);
      }

      while (v31 == -1);
      v32 = ~v31;
      v33 = 64;
      if (v32)
      {
        _BitScanForward64(&v33, v32);
      }

      v27 = v33 + (v24 << 6);
    }

    *(v4 + 8 * (v27 >> 6) + 56) |= 1 << v27;
    *(*(v4 + 48) + 8 * v27) = v21;
    ++*(v4 + 16);
    v8 = v37;
    v7 = v38;
  }

LABEL_36:
  v2, 2;
LABEL_38:
  result = v36;
  *v36 = v4;
  return result;
}

void (*specialized DenseMatrix.subscript.modify(void *a1, unint64_t a2, unint64_t a3))(uint64_t a1)
{
  v4 = malloc(0x60uLL);
  *a1 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  if (DenseMatrix.layout.getter(v5))
  {
    v6 = DenseMatrix.rowCount.getter(v5);
    v8 = a3;
    v7 = v6 * a3;
    if (!is_mul_ok(v6, v8))
    {
      BUG();
    }

    v9 = v7 + a2;
    if (__OFADD__(v7, a2))
    {
      BUG();
    }

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 11;
    v14 = 10;
  }

  else
  {
    v10 = DenseMatrix.columnCount.getter(v5);
    v11 = v10 * a2;
    if (!is_mul_ok(v10, a2))
    {
      BUG();
    }

    v12 = __OFADD__(a3, v11);
    v9 = a3 + v11;
    if (v12)
    {
      BUG();
    }

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 9;
    v14 = 8;
  }

  v4[v14] = DenseMatrix.storage.modify(v4, v5);
  v4[v16] = specialized ContiguousArray.subscript.modify(v4 + 4, v9);
  return v15;
}

void (*specialized DenseMatrix.subscript.modify(char ****a1, unint64_t a2, unint64_t a3))(uint64_t a1)
{
  v4 = malloc(0x60uLL);
  *a1 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  if (DenseMatrix.layout.getter(v5))
  {
    v6 = DenseMatrix.rowCount.getter(v5);
    v8 = a3;
    v7 = v6 * a3;
    if (!is_mul_ok(v6, v8))
    {
      BUG();
    }

    v9 = v7 + a2;
    if (__OFADD__(v7, a2))
    {
      BUG();
    }

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 11;
    v14 = 10;
  }

  else
  {
    v10 = DenseMatrix.columnCount.getter(v5);
    v11 = v10 * a2;
    if (!is_mul_ok(v10, a2))
    {
      BUG();
    }

    v12 = __OFADD__(a3, v11);
    v9 = a3 + v11;
    if (v12)
    {
      BUG();
    }

    v15 = DenseMatrix.subscript.modifyspecialized ;
    v16 = 9;
    v14 = 8;
  }

  v4[v14] = DenseMatrix.storage.modify(v4, v5);
  v4[v16] = specialized ContiguousArray.subscript.modify(v4 + 4, v9);
  return v15;
}

void DenseMatrix.subscript.modifyspecialized (uint64_t a1)
{
  DenseMatrix.subscript.modifyspecialized (a1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))(*a1 + 32, 0);
  v2(v1, 0);
  free(v1);
}

{
  DenseMatrix.subscript.modifyspecialized (a1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 80);
  (*(*a1 + 88))(*a1 + 32, 0);
  v2(v1, 0);
  free(v1);
}

{
  DenseMatrix.subscript.modifyspecialized (a1);
}

{
  DenseMatrix.subscript.modifyspecialized (a1);
}

void *(*specialized ContiguousArray.subscript.modify(void *a1, uint64_t a2))(void *a1)
{
  *a1 = v2;
  v3 = *v2;
  if (!swift_isUniquelyReferenced_nonNull_native(*v2))
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  a1[1] = v3;
  if (a2 < 0)
  {
    BUG();
  }

  if (v3[2] <= a2)
  {
    BUG();
  }

  return ContiguousArray.subscript.modifyspecialized ;
}

_OWORD *outlined init with take of Any(__int128 *a1, _OWORD *a2)
{
  result = a2;
  v3 = *a1;
  a2[1] = a1[1];
  *a2 = v3;
  return result;
}

void *(*specialized ContiguousArray.subscript.modify(char ***a1, uint64_t a2))(void *a1)
{
  *a1 = v2;
  v3 = *v2;
  if (!swift_isUniquelyReferenced_nonNull_native(*v2))
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  a1[1] = v3;
  if (a2 < 0)
  {
    BUG();
  }

  if (*(v3 + 2) <= a2)
  {
    BUG();
  }

  return ContiguousArray.subscript.modifyspecialized ;
}

void *ContiguousArray.subscript.modifyspecialized (void *a1)
{
  result = *a1;
  **a1 = a1[1];
  return result;
}

{
  return ContiguousArray.subscript.modifyspecialized (a1);
}

double specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v64 = *(AssociatedTypeWitness - 8);
  v5 = *(v64 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v66 = &v62;
  v68 = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawExponent);
  v67 = *(v68 - 8);
  v8 = *(v67 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v72 = &v62;
  v73 = *(a2 - 8);
  v11 = *(v73 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v74 = &v62;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v71 = &v62;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v18 = dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter(a2, a3);
  v69 = a3;
  v19 = dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter(a2, a3);
  if (v18 != 15)
  {
    if (v18 == 11)
    {
      if (v19 == 52)
      {
        v23 = v71;
        v24 = v70;
        v25 = v73;
        (*(v73 + 16))(v71, v70, a2);
        if (swift_dynamicCast(&v63, v23, a2, &type metadata for Double, 6))
        {
          (*(v25 + 8))(v24, a2);
          return *&v63;
        }

        else
        {
          v32 = v69;
          LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
          dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v32);
          v33 = v68;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v35 = dispatch thunk of BinaryInteger._lowWord.getter(v33, *(AssociatedConformanceWitness + 8));
          (*(v67 + 8))(v72, v33);
          v36 = v70;
          v37 = v66;
          dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v32);
          (*(v73 + 8))(v36, a2);
          v38 = v32;
          v39 = AssociatedTypeWitness;
          v40 = swift_getAssociatedConformanceWitness(v38, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v41 = dispatch thunk of BinaryInteger._lowWord.getter(v39, *(v40 + 8));
          (*(v64 + 8))(v37, v39);
          *&result = v41 & 0xFFFFFFFFFFFFFLL | (v74 << 63) | ((v35 & 0x7FF) << 52);
        }

        return result;
      }
    }

    else if (v18 == 8 && v19 == 23)
    {
      v20 = v74;
      v21 = v70;
      v22 = v73;
      (*(v73 + 16))(v74, v70, a2);
      if (swift_dynamicCast(&v63, v20, a2, &type metadata for Float, 6))
      {
        (*(v22 + 8))(v21, a2);
        return *&v63;
      }

      else
      {
        v52 = v69;
        LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v52);
        v53 = v68;
        v54 = swift_getAssociatedConformanceWitness(v52, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v55 = v72;
        v71 = dispatch thunk of BinaryInteger._lowWord.getter(v53, *(v54 + 8));
        (*(v67 + 8))(v55, v53);
        v56 = v21;
        v57 = v66;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v52);
        (*(v73 + 8))(v56, a2);
        v58 = v52;
        v59 = AssociatedTypeWitness;
        v60 = swift_getAssociatedConformanceWitness(v58, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v61 = dispatch thunk of BinaryInteger._lowWord.getter(v59, *(v60 + 8));
        (*(v64 + 8))(v57, v59);
        Float.init(sign:exponentBitPattern:significandBitPattern:)(v74 & 1, v71, v61);
      }

      return a4;
    }

LABEL_13:
    v30 = lazy protocol witness table accessor for type Double and conformance Double();
    v31 = v70;
    static BinaryFloatingPoint._convert<A>(from:)(&v63, v70, &type metadata for Double, a2, v30, v69);
    (*(v73 + 8))(v31, a2);
    return *&v63;
  }

  if (v19 != 63)
  {
    goto LABEL_13;
  }

  v27 = v70;
  v28 = v73;
  (*(v73 + 16))(&v62, v70, a2);
  if (swift_dynamicCast(&v63, &v62, a2, &type metadata for Float80, 6))
  {
    (*(v28 + 8))(v27, a2);
    return v63;
  }

  else
  {
    v42 = v69;
    LOBYTE(v74) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v69 + 16));
    dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v42);
    v43 = v68;
    v44 = swift_getAssociatedConformanceWitness(v42, a2, v68, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v45 = v72;
    v71 = dispatch thunk of BinaryInteger._lowWord.getter(v43, *(v44 + 8));
    (*(v67 + 8))(v45, v43);
    v46 = v27;
    v47 = v66;
    dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v42);
    (*(v73 + 8))(v46, a2);
    v48 = v42;
    v49 = AssociatedTypeWitness;
    v50 = swift_getAssociatedConformanceWitness(v48, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v51 = dispatch thunk of BinaryInteger._lowWord.getter(v49, *(v50 + 8));
    (*(v64 + 8))(v47, v49);
    return Float80.init(sign:exponentBitPattern:significandBitPattern:)(v74 & 1, v71, v51);
  }
}

void specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v58 = *(AssociatedTypeWitness - 8);
  v4 = *(v58 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v60 = &v56;
  v62 = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, &associated type descriptor for BinaryFloatingPoint.RawExponent);
  v61 = *(v62 - 8);
  v7 = *(v61 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v66 = &v56;
  v67 = *(a2 - 8);
  v10 = *(v67 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v68 = &v56;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v65 = &v56;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v17 = dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter(a2, a3);
  v63 = a3;
  v18 = dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter(a2, a3);
  if (v17 == 15)
  {
    if (v18 == 63)
    {
      v23 = v64;
      v24 = v67;
      (*(v67 + 16))(&v56, v64, a2);
      if (swift_dynamicCast(&v56, &v56, a2, &type metadata for Float80, 6))
      {
        (*(v24 + 8))(v23, a2);
        v25 = v56;
      }

      else
      {
        v36 = v63;
        LOBYTE(v68) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v63 + 16));
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v36);
        v37 = v62;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, a2, v62, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v39 = v66;
        v65 = dispatch thunk of BinaryInteger._lowWord.getter(v37, *(AssociatedConformanceWitness + 8));
        (*(v61 + 8))(v39, v37);
        v40 = v23;
        v41 = v60;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v36);
        (*(v67 + 8))(v40, a2);
        v42 = v36;
        v43 = AssociatedTypeWitness;
        v44 = swift_getAssociatedConformanceWitness(v42, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v45 = dispatch thunk of BinaryInteger._lowWord.getter(v43, *(v44 + 8));
        (*(v58 + 8))(v41, v43);
        v25 = Float80.init(sign:exponentBitPattern:significandBitPattern:)(v68 & 1, v65, v45);
      }

      v57 = v25;
      return;
    }

    goto LABEL_13;
  }

  if (v17 == 11)
  {
    if (v18 == 52)
    {
      v22 = v65;
      v20 = v64;
      v21 = v67;
      (*(v67 + 16))(v65, v64, a2);
      if (swift_dynamicCast(&v56, v22, a2, &type metadata for Double, 6))
      {
        goto LABEL_6;
      }

      v28 = v63;
      LOBYTE(v68) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v63 + 16));
      dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v28);
      v29 = v62;
      v30 = swift_getAssociatedConformanceWitness(v28, a2, v62, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
      dispatch thunk of BinaryInteger._lowWord.getter(v29, *(v30 + 8));
      (*(v61 + 8))(v66, v29);
      v31 = v64;
      v32 = v60;
      dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v28);
      (*(v67 + 8))(v31, a2);
      v33 = v28;
      v34 = AssociatedTypeWitness;
      v35 = swift_getAssociatedConformanceWitness(v33, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
      dispatch thunk of BinaryInteger._lowWord.getter(v34, *(v35 + 8));
      (*(v58 + 8))(v32, v34);
      return;
    }

LABEL_13:
    v26 = lazy protocol witness table accessor for type Float and conformance Float();
    v27 = v64;
    static BinaryFloatingPoint._convert<A>(from:)(&v56, v64, &type metadata for Float, a2, v26, v63);
    (*(v67 + 8))(v27, a2);
    return;
  }

  if (v17 != 8 || v18 != 23)
  {
    goto LABEL_13;
  }

  v19 = v68;
  v20 = v64;
  v21 = v67;
  (*(v67 + 16))(v68, v64, a2);
  if (swift_dynamicCast(&v56, v19, a2, &type metadata for Float, 6))
  {
LABEL_6:
    (*(v21 + 8))(v20, a2);
    return;
  }

  v46 = v63;
  LOBYTE(v68) = dispatch thunk of FloatingPoint.sign.getter(a2, *(v63 + 16));
  dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter(a2, v46);
  v47 = v62;
  v48 = swift_getAssociatedConformanceWitness(v46, a2, v62, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
  v49 = v66;
  v65 = dispatch thunk of BinaryInteger._lowWord.getter(v47, *(v48 + 8));
  (*(v61 + 8))(v49, v47);
  v50 = v20;
  v51 = v60;
  dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter(a2, v46);
  (*(v67 + 8))(v50, a2);
  v52 = v46;
  v53 = AssociatedTypeWitness;
  v54 = swift_getAssociatedConformanceWitness(v52, a2, AssociatedTypeWitness, &protocol requirements base descriptor for BinaryFloatingPoint, &associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
  v55 = dispatch thunk of BinaryInteger._lowWord.getter(v53, *(v54 + 8));
  (*(v58 + 8))(v51, v53);
  Float.init(sign:exponentBitPattern:significandBitPattern:)(v68 & 1, v65, v55);
}

uint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt32, &type metadata for UInt32);
    lazy protocol witness table cache variable for type UInt32 and conformance UInt32 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Double, &type metadata for Double);
    lazy protocol witness table cache variable for type Double and conformance Double = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Double, &type metadata for Double);
    lazy protocol witness table cache variable for type Double and conformance Double = result;
  }

  return result;
}

uint64_t sub_9B120()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject(v0, 48, 7);
}

uint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt64, &type metadata for UInt64);
    lazy protocol witness table cache variable for type UInt64 and conformance UInt64 = result;
  }

  return result;
}

uint64_t closure #1 in FeatureVectorizer.fitted(to:)partial apply(void *a1, void *a2)
{
  return partial apply for closure #1 in FeatureVectorizer.fitted(to:)(a1, a2);
}

{
  return partial apply for closure #1 in FeatureVectorizer.fitted(to:)(a1, a2);
}

{
  return partial apply for closure #1 in FeatureVectorizer.fitted(to:)(a1, a2);
}

uint64_t one-time initialization function for sessionParameters()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLObjectDetector.__Defaults.sessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLObjectDetector.__Defaults.sessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLObjectDetector.__Defaults.sessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for sessionParameters != -1)
  {
    swift_once(&one-time initialization token for sessionParameters, one-time initialization function for sessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLObjectDetector.__Defaults.sessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1);
}

uint64_t outlined init with copy of MLTrainingSessionParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

NSString __swiftcall NSString.__allocating_init(string:)(Swift::String string)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_allocWithZone(ObjCClassFromMetadata);
  v3 = String._bridgeToObjectiveC()();
  string._object, string._object;
  v4 = [v2 initWithString:v3];

  return v4;
}

uint64_t MLDataTable.write(to:)(uint64_t a1)
{
  v40 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v39 = &v35;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v38 = *v2;
  v43 = *(v2 + 8);
  v10 = v3;
  (*(v4 + 16))(&v35, a1);
  v11 = URL.isFileURL.getter();
  v42 = v10;
  if ((v11 & 1) == 0)
  {
    v41 = v4;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
    v13 = swift_allocObject(v12, 64, 7);
    *&v37 = 0;
    *(v13 + 16) = 1;
    v36 = v13;
    *(v13 + 24) = 2;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v14._countAndFlagsBits = 0x27204C5255;
    v14._object = 0xE500000000000000;
    String.append(_:)(v14);
    v15 = lazy protocol witness table accessor for type URL and conformance URL();
    v16 = dispatch thunk of CustomStringConvertible.description.getter(v10, v15);
    v18 = v17;
    v14._countAndFlagsBits = v16;
    v14._object = v17;
    String.append(_:)(v14);
    v18;
    v14._object = "ary values for feature '" + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v14);
    if (one-time initialization token for tmpPath != -1)
    {
      swift_once(&one-time initialization token for tmpPath, one-time initialization function for tmpPath);
    }

    countAndFlagsBits = tmpPath._countAndFlagsBits;
    object = tmpPath._object;
    tmpPath._object;
    v21._countAndFlagsBits = countAndFlagsBits;
    v21._object = object;
    String.append(_:)(v21);
    object;
    v21._object = 0xE200000000000000;
    v21._countAndFlagsBits = 10030;
    String.append(_:)(v21);
    v22 = v37;
    v23 = v36;
    *(v36 + 56) = &type metadata for String;
    *(v23 + 32) = v22;
    print(_:separator:terminator:)(v23, 32, 0xE100000000000000, 10, 0xE100000000000000);
    v23;
    v24 = tmpPath._countAndFlagsBits;
    v25 = tmpPath._object;
    tmpPath._object;
    v26 = v39;
    URL.init(fileURLWithPath:)(v24, v25);
    v25;
    v27 = v42;
    v4 = v41;
    (*(v41 + 8))(&v35, v42);
    (*(v4 + 32))(&v35, v26, v27);
  }

  v28._countAndFlagsBits = 0x6C62615461746144;
  v28._object = 0xE900000000000065;
  URL.appendPathComponent(_:)(v28);
  v29 = v40;
  static _FileUtilities.prepareForWriting(to:isDirectory:)(&v35, 1);
  if (v29)
  {
    return (*(v4 + 8))(&v35, v42);
  }

  if (v43)
  {
    v30 = v38;
    swift_willThrow(&v35, 1);
    swift_errorRetain(v30);
    return (*(v4 + 8))(&v35, v42);
  }

  v41 = v4;
  v32 = v38;
  v39 = *(v38 + 16);
  v33 = v38;

  v34._countAndFlagsBits = URL.path.getter(v33);
  v40 = v34._object;
  CMLTable.save(to:type:)(v34, 1);
  (*(v41 + 8))(&v35, v42);
  v40;
  return outlined consume of Result<_DataTable, Error>(v32, 0);
}

uint64_t MLDataTable.writeCSV(to:)(uint64_t a1)
{
  v10 = *v2;
  v3 = *(v2 + 8);
  if (URL.isFileURL.getter())
  {
    result = static _FileUtilities.prepareForWriting(to:isDirectory:)(a1, 0);
    if (!v1)
    {
      if (v3)
      {
        swift_willThrow(a1, 0);
        return swift_errorRetain(v10);
      }

      else
      {
        v7 = *(v10 + 16);
        outlined copy of Result<_DataTable, Error>(v10, 0);

        v8._countAndFlagsBits = URL.path.getter(v7);
        object = v8._object;
        CMLTable.save(to:type:)(v8, 0);

        object;
        return outlined consume of Result<_DataTable, Error>(v10, 0);
      }
    }
  }

  else
  {
    v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
    *v6 = 0xD00000000000002CLL;
    *(v6 + 8) = " tmp directory '" + 0x8000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v5);
  }

  return result;
}

uint64_t MLDataTable.write(toDirectory:)(Swift::String string, void (*a2)(void *))
{
  v17 = a2;
  v20 = type metadata accessor for URL(0);
  v21 = *(v20 - 8);
  v3 = *(v21 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = v15;
  v18 = *v2;
  v22 = *(v2 + 8);
  type metadata accessor for NSString();
  string._object;
  v6 = NSString.__allocating_init(string:)(string);
  v7 = [v6 stringByExpandingTildeInPath];
  v8 = v7;

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(v8);
  v11 = v10;

  v12 = v9;
  v13 = v19;
  URL.init(fileURLWithPath:)(v12, v11);
  v11;
  v15[1] = v18;
  v16 = v22;
  v17(v13);
  return (*(v21 + 8))(v13, v20);
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v1 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v1);
    lazy protocol witness table cache variable for type URL and conformance URL = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v1 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v1);
    lazy protocol witness table cache variable for type URL and conformance URL = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v1 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v1);
    lazy protocol witness table cache variable for type URL and conformance URL = result;
  }

  return result;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8NSNumberCGSaySo12MLMultiArrayCGG_Si5label_AL9embeddingts5NeverOTg505_sSo8f5CSo12gh42CSiADIgggdo_AB_ADtSi5label_AD9embeddingts5k128OIegnrzr_TR098_s8CreateML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = specialized Array._getCount()(a1);
  v4 = specialized Array._getCount()(a2);
  if (v4 < v3)
  {
    v3 = v4;
  }

  v5 = 0;
  if (v3 > 0)
  {
    v5 = v3;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  if (v3 < 0)
  {
    BUG();
  }

  v40 = v3;
  if (v3)
  {
    v35 = specialized Array._getCount()(a1);
    v33 = a1 & 0xC000000000000003;
    v34 = a2 & 0x4000000000000001;
    v46 = a1 & 0xFFFFFFFFFFFFF8;
    v6 = a2;
    if ((a2 & 1) == 0)
    {
      v6 = a2 & 0xFFFFFFFFFFFFF8;
    }

    v37 = v6;
    v39 = a2 & 0xC000000000000003;
    a1;
    a2;
    v7 = 0;
    do
    {
      if (v35 == v7)
      {
        BUG();
      }

      if (v33)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v7, v2);
        v9 = a2 & 0xC000000000000003;
      }

      else
      {
        v9 = a2 & 0xC000000000000003;
        if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      if (v34)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter(v37);
        v11 = a2 & 0xFFFFFFFFFFFFF8;
      }

      else
      {
        v11 = a2 & 0xFFFFFFFFFFFFF8;
        v10 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFF8));
      }

      if (v7 == v10)
      {

        BUG();
      }

      if (v9)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)(v7, a2);
      }

      else
      {
        if (v7 >= *(v11 + 16))
        {
          BUG();
        }

        v12 = *(a2 + 8 * v7 + 32);
      }

      v44 = v12;
      v42 = [v8 integerValue];

      v13 = _swiftEmptyArrayStorage[2];
      if (_swiftEmptyArrayStorage[3] >> 1 <= v13)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v13 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = 2 * v13;
      _swiftEmptyArrayStorage[v14 + 4] = v42;
      _swiftEmptyArrayStorage[v14 + 5] = v44;
      v15 = v40;
      v2 = a1;
    }

    while (v40 != v7);
    v16 = a2;
    v17 = a2 & 0xFFFFFFFFFFFFF8;
    v18 = v46;
    v19 = a2 & 1;
  }

  else
  {
    v33 = a1 & 0xC000000000000003;
    v16 = a2;
    v34 = a2 & 0x4000000000000001;
    v39 = a2 & 0xC000000000000003;
    a1;
    a2;
    v17 = a2 & 0xFFFFFFFFFFFFF8;
    v19 = a2 & 1;
    v18 = v2 & 0xFFFFFFFFFFFFF8;
    v15 = 0;
  }

  v20 = v2;
  v47 = v18;
  if ((v2 & 1) == 0)
  {
    v20 = v18;
  }

  v36 = v20;
  if (!v19)
  {
    v16 = v17;
  }

  v38 = v16;
  while (1)
  {
    if ((v2 & 0x4000000000000001) != 0)
    {
      v21 = v15;
      v22 = _CocoaArrayWrapper.endIndex.getter(v36);
      v15 = v21;
      v23 = v47;
    }

    else
    {
      v23 = v47;
      v22 = *(v47 + 16);
    }

    if (v15 == v22)
    {
      a2;
      v2;
      return _swiftEmptyArrayStorage;
    }

    if (v33)
    {
      v24 = v15;
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)(v15, v2);
    }

    else
    {
      if (v15 >= *(v23 + 16))
      {
        BUG();
      }

      v24 = v15;
      v25 = *(v2 + 8 * v15 + 32);
    }

    v43 = v25;
    v26 = v17;
    if (__OFADD__(1, v24))
    {
      BUG();
    }

    if (v34)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter(v38);
      v26 = v17;
    }

    else
    {
      v27 = *(v17 + 16);
    }

    if (v24 == v27)
    {
      break;
    }

    if (v39)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)(v24, a2);
    }

    else
    {
      if (v24 >= *(v26 + 16))
      {
        BUG();
      }

      v28 = *(a2 + 8 * v24 + 32);
    }

    v45 = v28;
    v41 = [v43 integerValue];

    v29 = _swiftEmptyArrayStorage[2];
    if (_swiftEmptyArrayStorage[3] >> 1 <= v29)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v29 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v29 + 1;
    v30 = 2 * v29;
    _swiftEmptyArrayStorage[v30 + 4] = v41;
    _swiftEmptyArrayStorage[v30 + 5] = v45;
    v15 = v24 + 1;
    v2 = a1;
  }

  a2;
  v2;

  return _swiftEmptyArrayStorage;
}

uint64_t MLFewShotSoundClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLFewShotSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 20), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLFewShotSoundClassifier;
  if (!type metadata singleton initialization cache for MLFewShotSoundClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLFewShotSoundClassifier);
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLFewShotSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 24), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLFewShotSoundClassifier.validationLoss.setter(double a1)
{
  result = *(type metadata accessor for MLFewShotSoundClassifier(0) + 28);
  *(v1 + result) = a1;
  return result;
}

void MLFewShotSoundClassifier.init(trainingData:modelParameters:)(uint64_t a1, uint64_t a2, double a3, __m128 a4, __m128 a5, __m128 a6)
{
  v138 = v7;
  v129 = a2;
  v128 = a1;
  v8 = v6;
  v134 = v6;
  v132 = type metadata accessor for MLFewShotSoundClassifier(0);
  v135 = v132[5];
  v9 = v8 + v135;
  v125 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v10 = *(v125 - 8);
  v126 = *(v10 + 64);
  v11 = alloca(v126);
  v12 = alloca(v126);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v13 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v14 = *(v13 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v113);
  v15 = *(v13 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v113);
  v137 = *(v10 + 8);
  (v137)(&v113, v125);
  v16 = v134;
  *(v134 + v135) = 0;
  v135 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v115 = v9;
  swift_storeEnumTagMultiPayload(v9, v135, 1);
  v130 = v132[6];
  v17 = v16 + v130;
  v18 = alloca(v126);
  v19 = alloca(v126);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v20 = *(v13 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v113);
  v21 = *(v13 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v113);
  v22 = v16;
  (v137)(&v113, v125);
  *(v16 + v130) = 0;
  v125 = v17;
  v23 = v129;
  swift_storeEnumTagMultiPayload(v17, v135, 1);
  *(v22 + v132[7]) = 0;
  outlined init with copy of MLTrainingSessionParameters(v23, v22, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
  if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xDuLL, 0, 0, 0x10uLL, 0, 0))
  {
    v24 = *(v23 + 8);
  }

  else
  {
    v24 = 1008981770;
  }

  LODWORD(v126) = v24;
  v25 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v26 = v128;
  v27 = v138;
  v28 = MLFewShotSoundClassifier.DataSource.extractFeatures(with:)((v23 + *(v25 + 32)));
  v29 = v27;
  if (!v27)
  {
    v138 = v25;
    v135 = 0;
    v31 = v132;
    v30 = v134;
    *(v134 + v132[12]) = v28;
    v32 = v28;
    *(v30 + v31[8]) = &outlined read-only object #0 of MLFewShotSoundClassifier.init(trainingData:modelParameters:);
    *(v30 + v31[9]) = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_Sis12Zip2SequenceVySaySSGSnySiGGTt0g5(&outlined read-only object #0 of MLFewShotSoundClassifier.init(trainingData:modelParameters:), 0, 2);
    v33 = [v32 trainingDataEmbeddings];
    v34 = v33;
    v35 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v34, v35);

    if (specialized Array._getCount()(v36))
    {
      if ((v36 & 0xC000000000000003) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v36);
        v37 = v138;
      }

      else
      {
        v37 = v138;
        if (!*(&dword_10 + (v36 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v38 = *(v36 + 32);
      }

      v36;
      v39 = [v38 shape];
      v40 = v39;

      v41 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v40, v41);
      (objc_release)(v40);
      if (specialized Array._getCount()(v36) == 3)
      {
        v42 = type metadata accessor for URL(0);
        v138 = &v113;
        v136 = *(v42 - 8);
        v127 = *(v136 + 8);
        v43 = alloca(v127);
        v44 = alloca(v127);
        v133 = &v113;
        v45 = v129 + v37[9];
        v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
        v137 = &v113;
        v47 = *(*(v46 - 8) + 64);
        v48 = alloca(v47);
        v49 = alloca(v47);
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &v113, &demangling cache variable for type metadata for URL?);
        if (__swift_getEnumTagSinglePayload(&v113, 1, v42) == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v113, &demangling cache variable for type metadata for URL?);
          v50 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
          v138 = &v113;
          v51 = *(*(v50 - 8) + 64);
          v52 = alloca(v51);
          v53 = alloca(v51);
          v130 = v50;
          if ((v36 & 0xC000000000000003) != 0)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v36);
          }

          else
          {
            if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFF8)) <= 1uLL)
            {
              BUG();
            }

            v54 = *(v36 + 40);
          }

          v55 = v54;
          v36;
          v56 = [v55 integerValue];

          MLFewShotSoundClassifier.TemporalClassifier.init(outputs:inputChannels:)(2, v56);
          v136 = type metadata accessor for ComputeDevice(0);
          v137 = &v113;
          v133 = *(v136 - 1);
          v57 = *(v133 + 8);
          v58 = alloca(v57);
          v59 = alloca(v57);
          static ComputeDevice.cpu.getter();
          v60 = v134;
          v61 = v134 + v132[10];
          v62 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
          Layer.placed(on:)(&v113, v130, v62);
          (*(v133 + 1))(&v113, v136);
          outlined destroy of MLActivityClassifier.ModelParameters(&v113, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
          v137 = v135;
          goto LABEL_16;
        }

        v84 = v133;
        v85 = v136;
        (*(v136 + 4))(v133, &v113, v42);
        v86 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
        v120 = &v113;
        v130 = v86;
        v87 = *(*(v86 - 8) + 64);
        v88 = alloca(v87);
        v89 = alloca(v87);
        v123 = &v113;
        v121 = &v113;
        v116 = v87;
        v90 = alloca(v87);
        v91 = alloca(v87);
        v118 = &v113;
        v122 = &v113;
        v92 = alloca(v127);
        v93 = alloca(v127);
        v94 = *(v85 + 2);
        v131 = &v113;
        v95 = v84;
        v96 = v94;
        v94(&v113, v95, v42);
        if ((v36 & 0xC000000000000003) != 0)
        {
          v97 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v36);
        }

        else
        {
          if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFF8)) <= 1uLL)
          {
            BUG();
          }

          v97 = *(v36 + 40);
        }

        v98 = v97;
        v36;
        v117 = [v98 integerValue];

        v124 = &v113;
        v99 = alloca(v127);
        v100 = alloca(v127);
        v96(&v113, v131, v42);
        v101 = v135;
        v102 = Data.init(contentsOf:options:)(&v113, 0);
        if (v101)
        {
          v137 = v101;
          v104 = *(v136 + 1);
          v104(&v113, v42);
        }

        else
        {
          BlobsFile.init(data:)(v102, v103, *&v24, a4, a5, a6);
          v137 = 0;
          v104 = *(v136 + 1);
          v104(&v113, v42);
          v105 = alloca(v116);
          v106 = alloca(v116);
          v107 = v137;
          MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:)(v117, v114, *&v24);
          v137 = v107;
          if (!v107)
          {
            v119 = v42;
            v104(v131, v42);
            v108 = v118;
            outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(&v113, v118);
            v127 = type metadata accessor for ComputeDevice(0);
            v136 = &v113;
            v131 = *(v127 - 8);
            v109 = *(v131 + 8);
            v110 = alloca(v109);
            v111 = alloca(v109);
            static ComputeDevice.cpu.getter();
            v112 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
            Layer.placed(on:)(&v113, v130, v112);
            (*(v131 + 1))(&v113, v127);
            outlined destroy of MLActivityClassifier.ModelParameters(v108, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
            v104(v133, v119);
            v60 = v134;
            outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(v123, v134 + v132[10]);
LABEL_16:
            v63 = v132;
            v136 = (v60 + v132[10]);
            v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
            v138 = &v113;
            v65 = *(*(v64 - 8) + 64);
            v66 = alloca(v65);
            v67 = alloca(v65);
            v113 = 1065353216;
            v68 = enum case for GradientClippingMode.byNorm(_:);
            v69 = type metadata accessor for GradientClippingMode(0);
            (*(*(v69 - 8) + 104))(&v113, v68, v69);
            __swift_storeEnumTagSinglePayload(&v113, 0, 1, v69);
            v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
            v133 = &v113;
            v71 = *(*(v70 - 8) + 64);
            v72 = alloca(v71);
            v73 = alloca(v71);
            v74 = type metadata accessor for RegularizationKind(0);
            __swift_storeEnumTagSinglePayload(&v113, 1, 1, v74);
            v75 = v63[11];
            type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
            v76 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
            *&v77 = v126;
            Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(v136, 0, &v113, &v113, v130, v76, *&v126, 0.89999998, 0.99900001, 0.0000001, 1.0);
            v78 = v137;
            MLFewShotSoundClassifier.train()(v77, 0x3F666666u);
            if (!v78)
            {
              outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
              outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLFewShotSoundClassifier.DataSource);
              return;
            }

            outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
            v79 = outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLFewShotSoundClassifier.DataSource);
            LOBYTE(v79) = 1;
            v138 = v79;
            v30 = v134;
            goto LABEL_20;
          }
        }

        v104(v131, v42);
        outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLFewShotSoundClassifier.DataSource);
        v104(v133, v42);
        v138 = 0;
        v30 = v134;
        v29 = v135;
        goto LABEL_21;
      }

      v30 = v134;
    }

    v36;
    v80 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v138 = 0;
    v81 = v80;
    swift_allocError(&type metadata for MLCreateError, v80, 0, 0);
    *v82 = 0xD000000000000038;
    *(v82 + 8) = "ly be written to a file URL." + 0x8000000000000000;
    *(v82 + 16) = 0;
    *(v82 + 32) = 0;
    *(v82 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v81);
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for MLFewShotSoundClassifier.DataSource);
LABEL_20:
    v29 = v135;
    goto LABEL_21;
  }

  v138 = 0;
  outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLFewShotSoundClassifier.DataSource);
  v30 = v134;
LABEL_21:
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLFewShotSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v115, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLClassifierMetrics);
  v83 = v132;
  if (!v29)
  {
    *(v30 + v132[8]);
    *(v30 + v83[9]);
  }

  if (v138)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v30 + v83[10], type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30 + v83[11], &demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  }

  if (!v29)
  {
  }
}

uint64_t MLFewShotSoundClassifier.train()(double a1, __m128 a2)
{
  v203 = v2;
  v4 = _stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xDuLL, 0, 0, 0x10uLL, 0, 0);
  v5 = 128;
  if (v4)
  {
    v5 = v3[2];
  }

  v206 = v5;
  v179 = *v3;
  v191 = type metadata accessor for MLFewShotSoundClassifier(0);
  v6 = *(v3 + v191[12]);
  v7 = [v6 trainingDataLabels];
  v202 = v3;
  v8 = v7;
  v168 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v8, v168);

  v167 = v6;
  v10 = [v6 trainingDataEmbeddings];
  v11 = v10;
  v169 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v11, v169);

  ML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8NSNumberCGSaySo12MLMultiArrayCGG_Si5label_AL9embeddingts5NeverOTg505_sSo8f5CSo12gh42CSiADIgggdo_AB_ADtSi5label_AD9embeddingts5k128OIegnrzr_TR098_s8CreateML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n(v9, v12);
  v205 = v203;
  v12;
  v9;
  v180 = v146;
  v197 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, embedding: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v192 = *(v197 - 8);
  v14 = *(v192 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = type metadata accessor for ComputeDevice(0);
  v203 = v146;
  v204 = *(v17 - 8);
  v171 = *(v204 + 8);
  v18 = alloca(v171);
  v19 = alloca(v171);
  static ComputeDevice.cpu.getter();
  v198 = v146;
  specialized MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:)(ML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n, v206, v146);
  v20 = *(v204 + 1);
  v170 = v17;
  v172 = v20;
  v20(v146, v17);
  ML24MLFewShotSoundClassifierV5train33_E9D7D47DE11AB89722960D8AD055ABB6LLyyKFSi5label_So12bc15C9embeddingtM23A10C_AHtXEfU_Tf3nnnpf_nTf1cn_n;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
  v181 = v146;
  v173 = *(*(v21 - 8) + 64);
  v22 = alloca(v173);
  v23 = alloca(v173);
  v200 = v146;
  v24 = v202 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 36);
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v146, &demangling cache variable for type metadata for URL?);
  v28 = type metadata accessor for URL(0);
  v29 = 1;
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v146, 1, v28);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v146, &demangling cache variable for type metadata for URL?);
  v30 = v202;
  v31 = v191;
  if (v11 != 1)
  {
    outlined init with copy of MLTrainingSessionParameters(v202 + v191[10], v200, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
    v29 = 0;
  }

  v32 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  __swift_storeEnumTagSinglePayload(v200, v29, 1, v32);
  if (v179 <= 0)
  {
    BUG();
  }

  v190 = v32;
  v188 = *(v30 + v31[8]);
  v166 = *(v188 + 16);
  v177 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  v182 = enum case for LearningPhase.training(_:);
  v183 = enum case for LearningPhase.inference(_:);
  v33 = 1;
  v34 = 1.797693134862316e308;
  v178 = 1.797693134862316e308;
  v35 = v205;
  while (1)
  {
    swift_allocObject(v177, *(v177 + 48), *(v177 + 52));
    v196 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v166);
    if (v35)
    {
LABEL_32:
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v200, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
      return (*(v192 + 8))(v198, v197);
    }

    v165 = v33;
    v205 = 0;
    v36 = type metadata accessor for LearningPhase(0);
    v206 = v207;
    v37 = *(v36 - 8);
    v163 = v37[8];
    v38 = alloca(v163);
    v39 = alloca(v163);
    v162 = v37[13];
    v162(v207, v182, v36);
    v40 = v202 + v31[10];
    v176 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
    v195 = v40;
    Layer.prepare(for:)(v207, v190, v176);
    v41 = v37[1];
    v161 = v36;
    v164 = v41;
    v41(v207, v36);
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
    v159 = v207;
    v43 = *(*(v42 - 8) + 64);
    v44 = alloca(v43);
    v45 = alloca(v43);
    Dataset.makeIterator()(v197);
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>?);
    v160 = v207;
    v47 = *(*(v46 - 8) + 64);
    v48 = alloca(v47);
    v49 = alloca(v47);
    v175 = v207;
    v50 = *(v42 + 44);
    v157 = *&v207[v50];
    v174 = v207;
    v158 = *&v207[v50 + 8];
    v156 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
    while (1)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator);
      dispatch thunk of IteratorProtocol.next()(v51, v156);
      v52 = v184;
      if (v184)
      {
        v146[0] = v184;
        v53 = v175;
        v157(v146);
        v54 = v53;
        v52;
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
        v56 = v53;
        v57 = 0;
      }

      else
      {
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
        v54 = v175;
        v56 = v175;
        v57 = 1;
      }

      __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
      v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v58);
      v194 = v58;
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v189 = v207;
      v60 = *(v58 - 8);
      v61 = *(v60 + 64);
      v62 = alloca(v61);
      v63 = alloca(v61);
      v203 = v207;
      v185 = v60;
      (*(v60 + 32))(v207, v54, v58);
      v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      v186 = v207;
      v193 = v64;
      v65 = *(*(v64 - 8) + 64);
      v66 = alloca(v65);
      v67 = alloca(v65);
      v206 = v207;
      v68 = type metadata accessor for Tensor(0);
      v146[1] = v207;
      v199 = *(v68 - 8);
      v69 = *(*&v199 + 64);
      v70 = alloca(v69);
      v71 = alloca(v69);
      v204 = v207;
      v146[2] = v207;
      v72 = alloca(v69);
      v73 = alloca(v69);
      v147 = v207;
      v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
      v148 = v207;
      v201 = *(*(v74 - 8) + 64);
      v75 = alloca(v201);
      v76 = alloca(v201);
      __swift_storeEnumTagSinglePayload(v207, 1, 1, v68);
      v150 = v207;
      *&v34 = *(v202 + 6);
      v77 = *(v202 + 28);
      v187 = v69;
      v78 = alloca(v69);
      v79 = alloca(v69);
      v80 = alloca(48);
      v81 = alloca(48);
      v208 = v203;
      v209 = LODWORD(v34);
      a2 = _mm_shuffle_ps(v77, v77, 225);
      _mm_storel_ps(&v210, a2);
      retaddr = v207;
      v152 = valueWithGradient<A>(at:of:)(v207, v195, partial apply for closure #1 in MLFewShotSoundClassifier.performStep(on:), v207, v190, v176);
      v82 = *(*&v199 + 16);
      v154 = v207;
      v151 = v82;
      v82(v204, v207, v68);
      v153 = v207;
      v83 = alloca(v201);
      v84 = alloca(v201);
      v149 = v207;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v207, v207, &demangling cache variable for type metadata for Tensor?);
      v85 = v68;
      if (__swift_getEnumTagSinglePayload(v207, 1, v68) == 1)
      {
        BUG();
      }

      v201 = &v206[*(v193 + 48)];
      v86 = v199;
      v193 = *(*&v199 + 8);
      (v193)(v154, v68);
      v87 = v147;
      (*(*&v86 + 32))(v147, v207, v85);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v149, &demangling cache variable for type metadata for Tensor?);
      v88 = v202 + v191[11];
      v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
      v90 = v152;
      Adam.update(_:with:)(v195, v152, v89);
      v90;
      v91 = v204;
      v92 = v85;
      v155 = v85;
      v151(v206, v204, v85);
      softmax(_:alongAxis:)(v87, -1);
      v93 = v85;
      v94 = v193;
      (v193)(v87, v93);
      v94(v91, v92);
      v204 = v207;
      v95 = alloca(v187);
      v96 = alloca(v187);
      v97 = v194;
      v98 = v203;
      DataSample.labels.getter(v194);
      _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v201, v207);
      (v193)(v207, v155);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v206, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      (*(v185 + 1))(v98, v97);
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v174, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, embedding: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>, DataSample<Tensor, Tensor>>.Iterator);
    v99 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
    v100 = alloca(v99);
    v101 = alloca(v99);
    v102 = v205;
    static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v34, *a2.i64, v196, v188, 0);
    v205 = v102;
    if (v102)
    {

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v200, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
      return (*(v192 + 8))(v198, v197);
    }

    v193 = v99;
    outlined assign with take of MLClassifierMetrics(v207, v202 + v191[5], type metadata accessor for MLClassifierMetrics);
    v103 = alloca(v163);
    v104 = alloca(v163);
    v105 = v161;
    v162(v207, v183, v161);
    Layer.prepare(for:)(v207, v190, v176);
    v164(v207, v105);
    v206 = v207;
    v203 = *(v194 - 8);
    v106 = *(v203 + 8);
    v107 = alloca(v106);
    v108 = alloca(v106);
    v109 = v167;
    v110 = [v167 validationDataEmbeddings];
    v111 = v110;
    v204 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v111, v169);

    v112 = [v109 validationDataLabels];
    v113 = v112;
    v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v113, v168);
    v201 = v114;

    v199 = COERCE_DOUBLE(v207);
    v115 = alloca(v171);
    v116 = alloca(v171);
    static ComputeDevice.cpu.getter();
    v117 = v204;
    MLFewShotSoundClassifier.validationData(features:labels:device:)(v204, v114, v207);
    v117;
    v201;
    v172(v207, v170);
    v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
    v204 = v207;
    v119 = *(*(v118 - 8) + 64);
    v120 = alloca(v119);
    v121 = alloca(v119);
    v122 = &v207[*(v118 + 48)];
    MLFewShotSoundClassifier.performValidationStep(on:)(v207, v122, v207);
    Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    *a2.i64 = *&v184;
    v123 = v178;
    v199 = *&v184;
    if (v178 >= *&v184)
    {
      v189 = v207;
      v201 = v207;
      v125 = v200;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v200, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
      outlined init with copy of MLTrainingSessionParameters(v195, v125, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
      __swift_storeEnumTagSinglePayload(v125, 0, 1, v190);
      v126 = *(v188 + 16);
      swift_allocObject(v177, *(v177 + 48), *(v177 + 52));
      v127 = v205;
      v128 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v126);
      v205 = v127;
      if (v127)
      {

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v189, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
        (*(v203 + 1))(v201, v194);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v125, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
        return (*(v192 + 8))(v198, v197);
      }

      v129 = v128;
      v186 = type metadata accessor for Tensor(0);
      v185 = v207;
      v187 = *(v186 - 1);
      v130 = *(v187 + 64);
      v131 = alloca(v130);
      v132 = alloca(v130);
      DataSample.labels.getter(v194);
      _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v122, v207);
      (*(v187 + 8))(v207, v186);
      v133 = alloca(v193);
      v134 = alloca(v193);
      v135 = v205;
      static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v123, *a2.i64, v129, v188, 0);

      v35 = v135;

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v189, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      (*(v203 + 1))(v201, v194);
      if (v135)
      {
        goto LABEL_32;
      }

      v203 = v207;
      v31 = v191;
      v124 = v202;
      outlined assign with take of MLClassifierMetrics(v207, v202 + v191[6], type metadata accessor for MLClassifierMetrics);
      v34 = v199;
      v178 = v199;
    }

    else
    {

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v207, &demangling cache variable for type metadata for (loss: Tensor, predictions: Tensor));
      (*(v203 + 1))(v207, v194);
      v35 = v205;
      v124 = v202;
      v31 = v191;
      v34 = v199;
    }

    v136 = v165;
    v137 = v165 == v179;
    *(v124 + v31[7]) = v34;
    if (v137)
    {
      break;
    }

    v138 = __OFADD__(1, v136);
    v33 = v136 + 1;
    if (v138)
    {
      BUG();
    }
  }

  v205 = v35;
  (*(v192 + 8))(v198, v197);
  v206 = v207;
  v140 = v190;
  v141 = *(*(v190 - 8) + 64);
  v142 = alloca(v141);
  v143 = alloca(v141);
  v144 = alloca(v173);
  v145 = alloca(v173);
  outlined init with take of MLFewShotSoundClassifier.TemporalClassifier?(v200, v207);
  if (__swift_getEnumTagSinglePayload(v207, 1, v140) == 1)
  {
    outlined init with copy of MLTrainingSessionParameters(v195, v207, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
    if (__swift_getEnumTagSinglePayload(v207, 1, v140) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v207, &demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
    }
  }

  else
  {
    outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(v207, v207);
  }

  return outlined assign with take of MLClassifierMetrics(v207, v195, type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier);
}

uint64_t specialized MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = v4;
  v29 = a3;
  v25 = a2;
  v30 = a1;
  v26 = v3;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, embedding: MLMultiArray)], DataSample<Tensor, Tensor>>.PrefetchMode);
  v27 = *(v32 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v28 = v22;
  v8 = type metadata accessor for ComputeDevice(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = v22;
  v33 = *(*(v33 + *(type metadata accessor for MLFewShotSoundClassifier(0) + 32)) + 16);
  v24 = a1;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  (*(v9 + 16))(v22, v29, v8);
  v13 = *(v9 + 80);
  v14 = ~*(v9 + 80) & (v13 + 24);
  v15 = swift_allocObject(&unk_390308, v14 + v10, v13 | 7);
  *(v15 + 16) = v33;
  (*(v9 + 32))(v15 + v14, v31, v8);
  v16 = v28;
  (*(v27 + 104))(v28, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v32);
  v30;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(label: Int, embedding: MLMultiArray)]);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [(label: Int, embedding: MLMultiArray)] and conformance [A], &demangling cache variable for type metadata for [(label: Int, embedding: MLMultiArray)], &protocol conformance descriptor for [A]);
  v19 = lazy protocol witness table accessor for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>();
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance DataSample<A, B>, &demangling cache variable for type metadata for DataSample<Tensor, Tensor>, &protocol conformance descriptor for DataSample<A, B>);
  return Dataset.init(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v24, v25, v22, 1, v16, partial apply for closure #1 in MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:), v15, v32, v17, v18, v19, v20);
}

uint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(uint64_t a1, char a2, uint64_t a3)
{
  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, a2, a3);
}

{
  if (a2)
  {
    if (a1 < 0)
    {
      BUG();
    }

    result = 0xFFFFFFFFFFFFF8;
    if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFF8)) <= a1)
    {
      BUG();
    }
  }

  return result;
}

{
  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, a2, a3);
}

{
  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, a2, a3);
}

uint64_t specialized Array._getCount()(uint64_t a1)
{
  return specialized Array._getCount()(a1);
}

{
  if ((a1 & 0x4000000000000001) == 0)
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  v2 = a1 & 0xFFFFFFFFFFFFF8;
  if (a1)
  {
    v2 = a1;
  }

  return _CocoaArrayWrapper.endIndex.getter(v2);
}

{
  return specialized Array._getCount()(a1);
}

uint64_t outlined init with take of MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    v13 = v12 + ((v4 + 16) & ~v4);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 8);
    v5 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for URL(0);
    __dst = *(*(v7 - 8) + 16);
    __dst(a1 + v6, a2 + v6, v7);
    v8 = *(v5 + 36);
    v9 = (a1 + v8);
    v10 = a2 + v8;
    if (__swift_getEnumTagSinglePayload(v10, 1, v7))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(v9, v10, *(*(v11 - 8) + 64));
    }

    else
    {
      __dst(v9, v10, v7);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
    }

    v14 = a3[5];
    v15 = a1;
    v16 = (a1 + v14);
    v17 = a2 + v14;
    __dsta = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, __dsta);
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v17;
      swift_errorRetain(*v17);
      *v16 = v23;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v16 = *v17;
      v103 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v19 = *(v103 + 20);
      v106 = &v16[v19];
      v20 = type metadata accessor for DataFrame(0);
      v111 = v16;
      v21 = *(*(v20 - 8) + 16);
      v22 = &v17[v19];
      v15 = a1;
      v21(v106, v22, v20);
      v21(&v111[*(v103 + 24)], &v17[*(v103 + 24)], v20);
      v16 = v111;
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v25 = swift_getEnumCaseMultiPayload(v17, v24);
      v26 = v25 == 1;
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v25 == 1)
      {
        v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
      (*(*(v28 - 8) + 16))(v16, v17, v28);
      swift_storeEnumTagMultiPayload(v16, v24, v26);
      v15 = a1;
    }

    swift_storeEnumTagMultiPayload(v16, __dsta, EnumCaseMultiPayload);
    v29 = a3[6];
    v30 = (v15 + v29);
    v31 = a2 + v29;
    v32 = swift_getEnumCaseMultiPayload(v31, __dsta);
    if (v32 == 2)
    {
      v37 = *v31;
      swift_errorRetain(*v31);
      *v30 = v37;
    }

    else if (v32 == 1)
    {
      *v30 = *v31;
      v112 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v33 = *(v112 + 20);
      v107 = &v30[v33];
      v34 = type metadata accessor for DataFrame(0);
      v35 = *(*(v34 - 8) + 16);
      v36 = &v31[v33];
      v15 = a1;
      v35(v107, v36, v34);
      v35(&v30[*(v112 + 24)], &v31[*(v112 + 24)], v34);
      v32 = 1;
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v39 = swift_getEnumCaseMultiPayload(v31, v38);
      v40 = v39 == 1;
      v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v39 == 1)
      {
        v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
      (*(*(v42 - 8) + 16))(v30, v31, v42);
      swift_storeEnumTagMultiPayload(v30, v38, v40);
      v15 = a1;
    }

    swift_storeEnumTagMultiPayload(v30, __dsta, v32);
    *(v15 + a3[7]) = *(a2 + a3[7]);
    v43 = a3[8];
    v44 = *(a2 + v43);
    *(v15 + v43) = v44;
    v45 = a3[9];
    v46 = v15;
    v47 = *(a2 + v45);
    *(v46 + v45) = v47;
    v48 = a3[10];
    v49 = v46 + v48;
    v50 = a2 + v48;
    v51 = type metadata accessor for Conv2D(0);
    __dstd = *(*(v51 - 8) + 16);
    v44;
    v47;
    __dstd(v49, v50, v51);
    v52 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
    *(*(v52 + 20) + v49) = *(*(v52 + 20) + v50);
    __dste = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
    v53 = __dste[5];
    v54 = v53 + v49;
    v108 = v53 + v49;
    v113 = v50 + v53;
    *(v53 + v49) = *(v53 + v50);
    v55 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
    v56 = *(v55 + 20);
    v100 = v54 + v56;
    v57 = type metadata accessor for Conv1D(0);
    v58 = *(*(v57 - 8) + 16);
    v59 = v113 + v56;
    v60 = v57;
    v58(v100, v59);
    v61 = v58;
    *(*(v55 + 24) + v108) = *(*(v55 + 24) + v113);
    v62 = __dste[6];
    v114 = v49 + v62;
    v109 = v50 + v62;
    *(v62 + v49) = *(v62 + v50);
    v63 = v60;
    v104 = v60;
    v64 = v60;
    v65 = v61;
    (v61)(v49 + v62 + *(v55 + 20), v50 + v62 + *(v55 + 20), v64);
    *(*(v55 + 24) + v114) = *(*(v55 + 24) + v109);
    v66 = __dste[7];
    v115 = v49 + v66;
    v110 = v50 + v66;
    *(v66 + v49) = *(v66 + v50);
    v65(v49 + v66 + *(v55 + 20), v50 + v66 + *(v55 + 20), v63);
    v67 = v65;
    *(*(v55 + 24) + v115) = *(*(v55 + 24) + v110);
    v68 = __dste[8];
    v69 = v49 + v68;
    v70 = v50 + v68;
    *(v68 + v49) = *(v68 + v50);
    v67(v49 + v68 + *(v55 + 20), v50 + v68 + *(v55 + 20), v104);
    *(*(v55 + 24) + v69) = *(*(v55 + 24) + v70);
    v71 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
    v72 = v71 + v49;
    v73 = v71 + v50;
    v74 = type metadata accessor for Dense(0);
    v75 = *(*(v74 - 8) + 16);
    v75(v72, v73, v74);
    v76 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
    v75(*(v76 + 20) + v72, *(v76 + 20) + v73, v74);
    v77 = a3[11];
    v78 = a1 + v77;
    v79 = a2 + v77;
    *(a1 + v77) = *(a2 + v77);
    v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
    v81 = v80[12];
    __dstb = (v78 + v81);
    v82 = (v79 + v81);
    v83 = type metadata accessor for GradientClippingMode(0);
    if (__swift_getEnumTagSinglePayload(v82, 1, v83))
    {
      v84 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
      memcpy(__dstb, v82, *(*(v84 - 8) + 64));
    }

    else
    {
      (*(*(v83 - 8) + 16))(__dstb, v82, v83);
      __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v83);
    }

    v85 = v80[13];
    __dstc = (v78 + v85);
    v86 = (v79 + v85);
    v87 = type metadata accessor for RegularizationKind(0);
    if (__swift_getEnumTagSinglePayload(v86, 1, v87))
    {
      v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
      memcpy(__dstc, v86, *(*(v88 - 8) + 64));
    }

    else
    {
      (*(*(v87 - 8) + 16))(__dstc, v86, v87);
      __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v87);
    }

    *(v78 + v80[14]) = *(v79 + v80[14]);
    *(v78 + v80[15]) = *(v79 + v80[15]);
    v89 = v80[16];
    __dstf = (v78 + v89);
    v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
    v91 = v79 + v89;
    v92 = *(*(v90 - 8) + 16);
    v92(__dstf, v91, v90);
    v92((v78 + v80[17]), v79 + v80[17], v90);
    v93 = v80[18];
    v94 = (v93 + v78);
    v95 = (v93 + v79);
    if (__swift_getEnumTagSinglePayload(v95, 1, v90))
    {
      v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?);
      memcpy(v94, v95, *(*(v96 - 8) + 64));
    }

    else
    {
      v92(v94, v95, v90);
      __swift_storeEnumTagSinglePayload(v94, 0, 1, v90);
    }

    v13 = a1;
    v97 = a3[12];
    v98 = *(a2 + v97);
    *(a1 + v97) = v98;
    v98;
  }

  return v13;
}

void destroy for MLFewShotSoundClassifier(uint64_t a1, int *a2)
{
  v2 = a1;
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = a1 + *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = a1 + *(v3 + 36);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v5))
  {
    v6(v7, v5);
  }

  v8 = (a1 + a2[5]);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  v11 = a2;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v8;
      break;
    case 1:
      v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = &v8[*(v52 + 20)];
      v15 = type metadata accessor for DataFrame(0);
      v16 = *(*(v15 - 8) + 8);
      v17 = v14;
      v2 = a1;
      v16(v17, v15);
      v18 = v15;
      v11 = a2;
      v16(&v8[*(v52 + 24)], v18);
      break;
    case 0:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v8, v12) == 1)
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v19 - 8) + 8))(v8, v19);
      break;
  }

  v20 = (v2 + v11[6]);
  v21 = swift_getEnumCaseMultiPayload(v20, v9);
  switch(v21)
  {
    case 2:
      *v20;
      break;
    case 1:
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = &v20[*(v24 + 20)];
      v26 = type metadata accessor for DataFrame(0);
      v27 = *(*(v26 - 8) + 8);
      v27(v25, v26);
      v28 = *(v24 + 24);
      v11 = a2;
      v29 = v26;
      v2 = a1;
      v27(&v20[v28], v29);
      break;
    case 0:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v20, v22) == 1)
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledName(v23);
      (*(*(v30 - 8) + 8))(v20, v30);
      break;
  }

  *(v2 + v11[8]);
  *(v2 + v11[9]);
  v31 = v2 + v11[10];
  v32 = type metadata accessor for Conv2D(0);
  (*(*(v32 - 8) + 8))(v31, v32);
  v53 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v33 = v31 + v53[5];
  v34 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v35 = v33 + *(v34 + 20);
  v36 = type metadata accessor for Conv1D(0);
  v37 = *(*(v36 - 8) + 8);
  v37(v35, v36);
  v37(v31 + v53[6] + *(v34 + 20), v36);
  v37(v31 + v53[7] + *(v34 + 20), v36);
  v37(v31 + v53[8] + *(v34 + 20), v36);
  v38 = v31 + *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v39 = type metadata accessor for Dense(0);
  v40 = *(*(v39 - 8) + 8);
  v40(v38, v39);
  v41 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v40(v38 + *(v41 + 20), v39);
  v42 = a1 + a2[11];
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v44 = v42 + v43[12];
  v45 = type metadata accessor for GradientClippingMode(0);
  if (!__swift_getEnumTagSinglePayload(v44, 1, v45))
  {
    (*(*(v45 - 8) + 8))(v44, v45);
  }

  v46 = v42 + v43[13];
  v47 = type metadata accessor for RegularizationKind(0);
  if (!__swift_getEnumTagSinglePayload(v46, 1, v47))
  {
    (*(*(v47 - 8) + 8))(v46, v47);
  }

  v48 = v42 + v43[16];
  v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v50 = *(*(v49 - 8) + 8);
  v50(v48, v49);
  v50(v42 + v43[17], v49);
  v51 = v42 + v43[18];
  if (!__swift_getEnumTagSinglePayload(v51, 1, v49))
  {
    v50(v51, v49);
  }
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  __dst = *(*(v5 - 8) + 16);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  if (__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    __dst(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v10 = a3[5];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v13);
  __dsta = v13;
  if (EnumCaseMultiPayload == 2)
  {
    v19 = *v12;
    swift_errorRetain(*v12);
    *v11 = v19;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v11 = *v12;
    v99 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v15 = *(v99 + 20);
    v101 = &v11[v15];
    v16 = type metadata accessor for DataFrame(0);
    v106 = v11;
    v17 = *(*(v16 - 8) + 16);
    v18 = &v12[v15];
    v13 = __dsta;
    v17(v101, v18, v16);
    v17(&v106[*(v99 + 24)], &v12[*(v99 + 24)], v16);
    v11 = v106;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v21 = swift_getEnumCaseMultiPayload(v12, v20);
    v22 = v21 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v21 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 16))(v11, v12, v24);
    swift_storeEnumTagMultiPayload(v11, v20, v22);
    v13 = __dsta;
  }

  swift_storeEnumTagMultiPayload(v11, v13, EnumCaseMultiPayload);
  v25 = a3[6];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = swift_getEnumCaseMultiPayload(v27, v13);
  if (v28 == 2)
  {
    v33 = *v27;
    swift_errorRetain(*v27);
    *v26 = v33;
  }

  else if (v28 == 1)
  {
    *v26 = *v27;
    v107 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v29 = *(v107 + 20);
    v102 = &v26[v29];
    v30 = type metadata accessor for DataFrame(0);
    v31 = *(*(v30 - 8) + 16);
    v32 = &v27[v29];
    v13 = __dsta;
    v31(v102, v32, v30);
    v31(&v26[*(v107 + 24)], &v27[*(v107 + 24)], v30);
    v28 = 1;
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v35 = swift_getEnumCaseMultiPayload(v27, v34);
    v36 = v35 == 1;
    v37 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v35 == 1)
    {
      v37 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledName(v37);
    (*(*(v38 - 8) + 16))(v26, v27, v38);
    swift_storeEnumTagMultiPayload(v26, v34, v36);
    v13 = __dsta;
  }

  swift_storeEnumTagMultiPayload(v26, v13, v28);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v39 = a3[8];
  v40 = *(a2 + v39);
  *(a1 + v39) = v40;
  v41 = a3[9];
  v42 = *(a2 + v41);
  *(a1 + v41) = v42;
  v43 = a3[10];
  v44 = a1 + v43;
  v45 = a2 + v43;
  v46 = type metadata accessor for Conv2D(0);
  __dstd = *(*(v46 - 8) + 16);
  v40;
  v42;
  __dstd(v44, v45, v46);
  v47 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v47 + 20) + v44) = *(*(v47 + 20) + v45);
  __dste = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v48 = __dste[5];
  v49 = v48 + v44;
  v103 = v48 + v44;
  v108 = v45 + v48;
  *(v48 + v44) = *(v48 + v45);
  v50 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v51 = *(v50 + 20);
  v95 = v49 + v51;
  v52 = type metadata accessor for Conv1D(0);
  v53 = *(*(v52 - 8) + 16);
  v54 = v108 + v51;
  v55 = v52;
  v53(v95, v54);
  v56 = v53;
  *(*(v50 + 24) + v103) = *(*(v50 + 24) + v108);
  v57 = __dste[6];
  v109 = v44 + v57;
  v104 = v45 + v57;
  *(v57 + v44) = *(v57 + v45);
  v58 = v55;
  v100 = v55;
  v59 = v55;
  v60 = v56;
  (v56)(v44 + v57 + *(v50 + 20), v45 + v57 + *(v50 + 20), v59);
  *(*(v50 + 24) + v109) = *(*(v50 + 24) + v104);
  v61 = __dste[7];
  v110 = v44 + v61;
  v105 = v45 + v61;
  *(v61 + v44) = *(v61 + v45);
  v60(v44 + v61 + *(v50 + 20), v45 + v61 + *(v50 + 20), v58);
  v62 = v60;
  *(*(v50 + 24) + v110) = *(*(v50 + 24) + v105);
  v63 = __dste[8];
  v64 = v44 + v63;
  v65 = v45 + v63;
  *(v63 + v44) = *(v63 + v45);
  v62(v44 + v63 + *(v50 + 20), v45 + v63 + *(v50 + 20), v100);
  *(*(v50 + 24) + v64) = *(*(v50 + 24) + v65);
  v66 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v67 = v66 + v44;
  v68 = v66 + v45;
  v69 = type metadata accessor for Dense(0);
  v70 = *(*(v69 - 8) + 16);
  v70(v67, v68, v69);
  v71 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v70(*(v71 + 20) + v67, *(v71 + 20) + v68, v69);
  v72 = a3[11];
  v73 = a1 + v72;
  v74 = a2 + v72;
  *(a1 + v72) = *(a2 + v72);
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v76 = v75[12];
  __dstb = (v73 + v76);
  v77 = (v74 + v76);
  v78 = type metadata accessor for GradientClippingMode(0);
  if (__swift_getEnumTagSinglePayload(v77, 1, v78))
  {
    v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(__dstb, v77, *(*(v79 - 8) + 64));
  }

  else
  {
    (*(*(v78 - 8) + 16))(__dstb, v77, v78);
    __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v78);
  }

  v80 = v75[13];
  __dstc = (v73 + v80);
  v81 = (v74 + v80);
  v82 = type metadata accessor for RegularizationKind(0);
  if (__swift_getEnumTagSinglePayload(v81, 1, v82))
  {
    v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(__dstc, v81, *(*(v83 - 8) + 64));
  }

  else
  {
    (*(*(v82 - 8) + 16))(__dstc, v81, v82);
    __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v82);
  }

  *(v73 + v75[14]) = *(v74 + v75[14]);
  *(v73 + v75[15]) = *(v74 + v75[15]);
  v84 = v75[16];
  __dstf = (v73 + v84);
  v85 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v86 = v74 + v84;
  v87 = *(*(v85 - 8) + 16);
  v87(__dstf, v86, v85);
  v87((v73 + v75[17]), v74 + v75[17], v85);
  v88 = v75[18];
  v89 = (v88 + v73);
  v90 = (v88 + v74);
  if (__swift_getEnumTagSinglePayload(v90, 1, v85))
  {
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?);
    memcpy(v89, v90, *(*(v91 - 8) + 64));
  }

  else
  {
    v87(v89, v90, v85);
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v85);
  }

  v92 = a3[12];
  v93 = *(a2 + v92);
  *(a1 + v92) = v93;
  v93;
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  v121 = *(v5 - 8);
  __dst = *(v121 + 24);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v5);
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      (*(v121 + 16))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v121 + 8))(v7, v5, v11, __dst);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  __dst(v7, v8, v5);
LABEL_7:
  v13 = a1;
  v14 = a2;
  if (a1 != a2)
  {
    v15 = a3[5];
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics.Contents);
    __dsta = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, __dsta);
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v17;
      swift_errorRetain(*v17);
      *v16 = v23;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v16 = *v17;
      v122 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v19 = *(v122 + 20);
      v115 = &v16[v19];
      v20 = type metadata accessor for DataFrame(0);
      v21 = *(*(v20 - 8) + 16);
      v22 = &v17[v19];
      v13 = a1;
      v21(v115, v22, v20);
      v21(&v16[*(v122 + 24)], &v17[*(v122 + 24)], v20);
      EnumCaseMultiPayload = 1;
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v25 = swift_getEnumCaseMultiPayload(v17, v24);
      v26 = v25 == 1;
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v25 == 1)
      {
        v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
      (*(*(v28 - 8) + 16))(v16, v17, v28);
      swift_storeEnumTagMultiPayload(v16, v24, v26);
      v13 = a1;
    }

    swift_storeEnumTagMultiPayload(v16, __dsta, EnumCaseMultiPayload);
    v29 = a3[6];
    v30 = (v13 + v29);
    v31 = (a2 + v29);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
    v32 = swift_getEnumCaseMultiPayload(v31, __dsta);
    if (v32 == 2)
    {
      v37 = *v31;
      swift_errorRetain(*v31);
      *v30 = v37;
    }

    else if (v32 == 1)
    {
      *v30 = *v31;
      v123 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v33 = *(v123 + 20);
      v116 = &v30[v33];
      v34 = type metadata accessor for DataFrame(0);
      v35 = *(*(v34 - 8) + 16);
      v36 = &v31[v33];
      v13 = a1;
      v35(v116, v36, v34);
      v35(&v30[*(v123 + 24)], &v31[*(v123 + 24)], v34);
      v32 = 1;
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v39 = swift_getEnumCaseMultiPayload(v31, v38);
      v40 = v39 == 1;
      v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v39 == 1)
      {
        v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
      (*(*(v42 - 8) + 16))(v30, v31, v42);
      swift_storeEnumTagMultiPayload(v30, v38, v40);
      v13 = a1;
    }

    swift_storeEnumTagMultiPayload(v30, __dsta, v32);
    v14 = a2;
  }

  *(v13 + a3[7]) = *(v14 + a3[7]);
  v43 = a3[8];
  v44 = *(v14 + v43);
  v45 = v14;
  v46 = *(v13 + v43);
  *(v13 + v43) = v44;
  v44;
  v46;
  v47 = a3[9];
  v48 = *(v45 + v47);
  v49 = v45;
  v50 = *(v13 + v47);
  *(v13 + v47) = v48;
  v48;
  v50;
  v51 = a3[10];
  v52 = v13 + v51;
  v53 = v49 + v51;
  v54 = type metadata accessor for Conv2D(0);
  (*(*(v54 - 8) + 24))(v52, v53, v54);
  v55 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v55 + 20) + v52) = *(*(v55 + 20) + v53);
  __dstd = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v56 = __dstd[5];
  v57 = v52 + v56;
  v117 = v52 + v56;
  v124 = v53 + v56;
  *(v56 + v52) = *(v56 + v53);
  *(v56 + v52 + 8) = *(v56 + v53 + 8);
  v58 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v59 = *(v58 + 20);
  v108 = v57 + v59;
  v60 = type metadata accessor for Conv1D(0);
  v61 = *(*(v60 - 8) + 24);
  v62 = v124 + v59;
  v63 = v60;
  v61(v108, v62);
  *(*(v58 + 24) + v117) = *(*(v58 + 24) + v124);
  v64 = __dstd[6];
  v125 = v52 + v64;
  v118 = v53 + v64;
  *(v64 + v52) = *(v64 + v53);
  *(v64 + v52 + 8) = *(v64 + v53 + 8);
  v113 = v63;
  (v61)(v52 + v64 + *(v58 + 20), v53 + v64 + *(v58 + 20), v63);
  *(*(v58 + 24) + v125) = *(*(v58 + 24) + v118);
  v65 = __dstd[7];
  v126 = v52 + v65;
  v119 = v53 + v65;
  *(v65 + v52) = *(v65 + v53);
  *(v65 + v52 + 8) = *(v65 + v53 + 8);
  (v61)(v52 + v65 + *(v58 + 20), v53 + v65 + *(v58 + 20), v63);
  v66 = v61;
  *(*(v58 + 24) + v126) = *(*(v58 + 24) + v119);
  v67 = __dstd[8];
  v68 = v52 + v67;
  v69 = v53 + v67;
  *(v67 + v52) = *(v67 + v53);
  *(v67 + v52 + 8) = *(v67 + v53 + 8);
  v66(v52 + v67 + *(v58 + 20), v53 + v67 + *(v58 + 20), v113);
  *(*(v58 + 24) + v68) = *(*(v58 + 24) + v69);
  v70 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v71 = v70 + v52;
  v72 = v70 + v53;
  v73 = type metadata accessor for Dense(0);
  v74 = *(*(v73 - 8) + 24);
  v74(v71, v72, v73);
  v75 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v74(*(v75 + 20) + v71, *(v75 + 20) + v72, v73);
  v76 = a3[11];
  v77 = (a1 + v76);
  v78 = a2 + v76;
  *v77 = *(a2 + v76);
  *(v77 + 1) = *(a2 + v76 + 4);
  *(v77 + 2) = *(a2 + v76 + 8);
  *(v77 + 3) = *(a2 + v76 + 12);
  v127 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v79 = v127[12];
  __dstb = v77;
  v80 = &v77[v79];
  v114 = v78;
  v81 = (v78 + v79);
  v82 = type metadata accessor for GradientClippingMode(0);
  LODWORD(v71) = __swift_getEnumTagSinglePayload(v80, 1, v82);
  v83 = __swift_getEnumTagSinglePayload(v81, 1, v82);
  if (v71)
  {
    if (!v83)
    {
      (*(*(v82 - 8) + 16))(v80, v81, v82);
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v82);
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v84 = *(v82 - 8);
  if (v83)
  {
    (*(v84 + 8))(v80, v82);
LABEL_28:
    v85 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(v80, v81, *(*(v85 - 8) + 64));
    goto LABEL_29;
  }

  (*(v84 + 24))(v80, v81, v82);
LABEL_29:
  v86 = v127[13];
  v87 = &__dstb[v86];
  v88 = (v114 + v86);
  v89 = type metadata accessor for RegularizationKind(0);
  v90 = __swift_getEnumTagSinglePayload(v87, 1, v89);
  v91 = __swift_getEnumTagSinglePayload(v88, 1, v89);
  if (v90)
  {
    if (!v91)
    {
      (*(*(v89 - 8) + 16))(v87, v88, v89);
      __swift_storeEnumTagSinglePayload(v87, 0, 1, v89);
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v92 = *(v89 - 8);
  if (v91)
  {
    (*(v92 + 8))(v87, v89);
LABEL_34:
    v93 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(v87, v88, *(*(v93 - 8) + 64));
    goto LABEL_35;
  }

  (*(v92 + 24))(v87, v88, v89);
LABEL_35:
  *&__dstb[v127[14]] = *(v114 + v127[14]);
  *&__dstb[v127[15]] = *(v114 + v127[15]);
  v94 = v127[16];
  v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v109 = *(v95 - 8);
  v96 = *(v109 + 24);
  v96(&__dstb[v94], v114 + v94, v95);
  v120 = v96;
  v96(&__dstb[v127[17]], v114 + v127[17], v95);
  v97 = v127[18];
  v98 = (v97 + v114);
  __dstc = &__dstb[v97];
  LODWORD(v96) = __swift_getEnumTagSinglePayload(__dstc, 1, v95);
  v99 = __swift_getEnumTagSinglePayload(v98, 1, v95);
  if (v96)
  {
    v101 = a1;
    if (!v99)
    {
      (*(v109 + 16))(__dstc, v98, v95);
      __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v95);
      goto LABEL_46;
    }

    v102 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v103 = __dstc;
  }

  else
  {
    v101 = a1;
    if (!v99)
    {
      v120(__dstc, v98, v95);
      goto LABEL_46;
    }

    (*(v109 + 8))(__dstc, v95, v100, v120);
    v102 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v103 = __dstc;
  }

  memcpy(v103, v98, v102);
LABEL_46:
  v104 = a3[12];
  v105 = *(a2 + v104);
  v106 = *(v101 + v104);
  *(v101 + v104) = v105;
  v105;

  return v101;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  __dst = *(*(v5 - 8) + 32);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  if (__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    __dst(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v10 = a3[5];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v13);
  if (EnumCaseMultiPayload == 1)
  {
    *v11 = *v12;
    v100 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v23 = *(v100 + 20);
    __dstc = v13;
    v24 = type metadata accessor for DataFrame(0);
    v25 = *(*(v24 - 8) + 32);
    v25(&v11[v23], &v12[v23], v24);
    v26 = v24;
    v13 = __dstc;
    v25(&v11[*(v100 + 24)], &v12[*(v100 + 24)], v26);
    v22 = 1;
    v20 = v11;
    v21 = __dstc;
LABEL_10:
    swift_storeEnumTagMultiPayload(v20, v21, v22);
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v16 = swift_getEnumCaseMultiPayload(v12, v15);
    v17 = v16 == 1;
    v18 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v16 == 1)
    {
      v18 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
    (*(*(v19 - 8) + 32))(v11, v12, v19);
    swift_storeEnumTagMultiPayload(v11, v15, v17);
    v20 = v11;
    v21 = v13;
    v22 = 0;
    goto LABEL_10;
  }

  memcpy(v11, v12, *(*(v13 - 8) + 64));
LABEL_12:
  v27 = a3[6];
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  v30 = swift_getEnumCaseMultiPayload(v29, v13);
  if (v30 == 1)
  {
    *v28 = *v29;
    v101 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v39 = *(v101 + 20);
    __dstd = v13;
    v40 = type metadata accessor for DataFrame(0);
    v41 = *(*(v40 - 8) + 32);
    v41(&v28[v39], &v29[v39], v40);
    v41(&v28[*(v101 + 24)], &v29[*(v101 + 24)], v40);
    v38 = 1;
    v36 = v28;
    v37 = __dstd;
LABEL_18:
    swift_storeEnumTagMultiPayload(v36, v37, v38);
    goto LABEL_20;
  }

  if (!v30)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v32 = swift_getEnumCaseMultiPayload(v29, v31);
    v33 = v32 == 1;
    v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v32 == 1)
    {
      v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 32))(v28, v29, v35);
    swift_storeEnumTagMultiPayload(v28, v31, v33);
    v36 = v28;
    v37 = v13;
    v38 = 0;
    goto LABEL_18;
  }

  memcpy(v28, v29, *(*(v13 - 8) + 64));
LABEL_20:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v42 = a3[10];
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = type metadata accessor for Conv2D(0);
  (*(*(v45 - 8) + 32))(v43, v44, v45);
  v46 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v46 + 20) + v43) = *(*(v46 + 20) + v44);
  __dste = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v47 = __dste[5];
  v48 = v47 + v43;
  v97 = v47 + v43;
  v102 = v44 + v47;
  *(v47 + v43) = *(v47 + v44);
  v49 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v50 = *(v49 + 20);
  v92 = v48 + v50;
  v51 = type metadata accessor for Conv1D(0);
  v52 = *(*(v51 - 8) + 32);
  v53 = v102 + v50;
  v54 = v51;
  v52(v92, v53);
  v55 = v52;
  *(*(v49 + 24) + v97) = *(*(v49 + 24) + v102);
  v56 = __dste[6];
  v103 = v43 + v56;
  v98 = v44 + v56;
  *(v56 + v43) = *(v56 + v44);
  v57 = v54;
  v96 = v54;
  v58 = v54;
  v59 = v55;
  (v55)(v43 + v56 + *(v49 + 20), v44 + v56 + *(v49 + 20), v58);
  *(*(v49 + 24) + v103) = *(*(v49 + 24) + v98);
  v60 = __dste[7];
  v104 = v43 + v60;
  v99 = v44 + v60;
  *(v60 + v43) = *(v60 + v44);
  v59(v43 + v60 + *(v49 + 20), v44 + v60 + *(v49 + 20), v57);
  v61 = v59;
  *(*(v49 + 24) + v104) = *(*(v49 + 24) + v99);
  v62 = __dste[8];
  v63 = v43 + v62;
  v64 = v44 + v62;
  *(v62 + v43) = *(v62 + v44);
  v61(v43 + v62 + *(v49 + 20), v44 + v62 + *(v49 + 20), v96);
  *(*(v49 + 24) + v63) = *(*(v49 + 24) + v64);
  v65 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v66 = v65 + v43;
  v67 = v65 + v44;
  v68 = type metadata accessor for Dense(0);
  v69 = *(*(v68 - 8) + 32);
  v69(v66, v67, v68);
  v70 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v69(*(v70 + 20) + v66, *(v70 + 20) + v67, v68);
  v71 = a3[11];
  v72 = a1 + v71;
  v73 = a2 + v71;
  *(a1 + v71) = *(a2 + v71);
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v75 = v74[12];
  __dsta = (v72 + v75);
  v76 = (v73 + v75);
  v77 = type metadata accessor for GradientClippingMode(0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v77))
  {
    v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(__dsta, v76, *(*(v78 - 8) + 64));
  }

  else
  {
    (*(*(v77 - 8) + 32))(__dsta, v76, v77);
    __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v77);
  }

  v79 = v74[13];
  __dstb = (v72 + v79);
  v80 = (v73 + v79);
  v81 = type metadata accessor for RegularizationKind(0);
  if (__swift_getEnumTagSinglePayload(v80, 1, v81))
  {
    v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(__dstb, v80, *(*(v82 - 8) + 64));
  }

  else
  {
    (*(*(v81 - 8) + 32))(__dstb, v80, v81);
    __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v81);
  }

  *(v72 + v74[14]) = *(v73 + v74[14]);
  *(v72 + v74[15]) = *(v73 + v74[15]);
  v83 = v74[16];
  __dstf = (v72 + v83);
  v84 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v85 = v73 + v83;
  v86 = *(*(v84 - 8) + 32);
  v86(__dstf, v85, v84);
  v86((v72 + v74[17]), v73 + v74[17], v84);
  v87 = v74[18];
  v88 = (v87 + v72);
  v89 = (v87 + v73);
  if (__swift_getEnumTagSinglePayload(v89, 1, v84))
  {
    v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?);
    memcpy(v88, v89, *(*(v90 - 8) + 64));
  }

  else
  {
    v86(v88, v89, v84);
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v84);
  }

  result = a1;
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return result;
}

uint64_t assignWithTake for MLFewShotSoundClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for URL(0);
  v125 = *(v5 - 8);
  __dst = *(v125 + 40);
  __dst(v4 + a1, a2 + v4, v5);
  v6 = *(v3 + 36);
  v7 = (v6 + a1);
  v8 = (a2 + v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v5);
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      (*(v125 + 32))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v125 + 8))(v7, v5, v11, __dst);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  __dst(v7, v8, v5);
LABEL_7:
  v13 = a1;
  v14 = a2;
  if (a1 == a2)
  {
    goto LABEL_24;
  }

  v15 = a3[5];
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics.Contents);
  v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, v18);
  __dsta = v18;
  if (EnumCaseMultiPayload == 1)
  {
    *v16 = *v17;
    v126 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v30 = *(v126 + 20);
    v118 = &v16[v30];
    v31 = type metadata accessor for DataFrame(0);
    v32 = *(*(v31 - 8) + 32);
    v33 = &v17[v30];
    v18 = __dsta;
    v32(v118, v33, v31);
    v34 = v31;
    v13 = a1;
    v32(&v16[*(v126 + 24)], &v17[*(v126 + 24)], v34);
    v14 = a2;
    v29 = 1;
    v27 = v16;
    v28 = __dsta;
LABEL_14:
    swift_storeEnumTagMultiPayload(v27, v28, v29);
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v21 = swift_getEnumCaseMultiPayload(v17, v20);
    v22 = v21 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v21 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 32))(v16, v17, v24);
    v25 = v20;
    v14 = a2;
    v26 = v22;
    v18 = __dsta;
    swift_storeEnumTagMultiPayload(v16, v25, v26);
    v27 = v16;
    v28 = __dsta;
    v29 = 0;
    goto LABEL_14;
  }

  memcpy(v16, v17, *(*(v18 - 8) + 64));
LABEL_16:
  v35 = a3[6];
  v36 = (v13 + v35);
  v37 = (v14 + v35);
  outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLClassifierMetrics.Contents);
  v38 = swift_getEnumCaseMultiPayload(v37, v18);
  if (v38 == 1)
  {
    *v36 = *v37;
    v127 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v48 = *(v127 + 20);
    v49 = type metadata accessor for DataFrame(0);
    v50 = *(*(v49 - 8) + 32);
    v50(&v36[v48], &v37[v48], v49);
    v51 = v49;
    v13 = a1;
    v50(&v36[*(v127 + 24)], &v37[*(v127 + 24)], v51);
    v14 = a2;
    v47 = 1;
    v45 = v36;
    v46 = __dsta;
LABEL_22:
    swift_storeEnumTagMultiPayload(v45, v46, v47);
    goto LABEL_24;
  }

  if (!v38)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v40 = swift_getEnumCaseMultiPayload(v37, v39);
    v41 = v40 == 1;
    v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v40 == 1)
    {
      v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
    (*(*(v43 - 8) + 32))(v36, v37, v43);
    v44 = v39;
    v14 = a2;
    swift_storeEnumTagMultiPayload(v36, v44, v41);
    v45 = v36;
    v46 = __dsta;
    v47 = 0;
    goto LABEL_22;
  }

  memcpy(v36, v37, *(*(v18 - 8) + 64));
LABEL_24:
  *(v13 + a3[7]) = *(v14 + a3[7]);
  v52 = a3[8];
  v53 = *(v13 + v52);
  *(v13 + v52) = *(v14 + v52);
  v53;
  v54 = a3[9];
  v55 = *(v13 + v54);
  *(v13 + v54) = *(v14 + v54);
  v55;
  v56 = v13;
  v57 = a3[10];
  v58 = v56 + v57;
  v59 = v14 + v57;
  v60 = type metadata accessor for Conv2D(0);
  (*(*(v60 - 8) + 40))(v58, v59, v60);
  v61 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(*(v61 + 20) + v58) = *(*(v61 + 20) + v59);
  __dstd = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v62 = __dstd[5];
  v63 = v58 + v62;
  v121 = v58 + v62;
  v128 = v59 + v62;
  *(v62 + v58) = *(v62 + v59);
  v64 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v65 = *(v64 + 20);
  v113 = v65 + v63;
  v66 = type metadata accessor for Conv1D(0);
  v67 = *(*(v66 - 8) + 40);
  v68 = v128 + v65;
  v69 = v66;
  v67(v113, v68);
  *(*(v64 + 24) + v121) = *(*(v64 + 24) + v128);
  v70 = __dstd[6];
  v129 = v58 + v70;
  v122 = v59 + v70;
  *(v70 + v58) = *(v70 + v59);
  v119 = v69;
  (v67)(v58 + v70 + *(v64 + 20), v59 + v70 + *(v64 + 20), v69);
  *(*(v64 + 24) + v129) = *(*(v64 + 24) + v122);
  v71 = __dstd[7];
  v130 = v58 + v71;
  v123 = v59 + v71;
  *(v71 + v58) = *(v71 + v59);
  (v67)(v58 + v71 + *(v64 + 20), v59 + v71 + *(v64 + 20), v69);
  v72 = v67;
  *(*(v64 + 24) + v130) = *(*(v64 + 24) + v123);
  v73 = __dstd[8];
  v74 = v58 + v73;
  v75 = v59 + v73;
  *(v73 + v58) = *(v73 + v59);
  v72(v58 + v73 + *(v64 + 20), v59 + v73 + *(v64 + 20), v119);
  *(*(v64 + 24) + v74) = *(*(v64 + 24) + v75);
  v76 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v77 = v76 + v58;
  v78 = v76 + v59;
  v79 = type metadata accessor for Dense(0);
  v80 = *(*(v79 - 8) + 40);
  v80(v77, v78, v79);
  v81 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v80(*(v81 + 20) + v77, *(v81 + 20) + v78, v79);
  v82 = a3[11];
  v83 = (a1 + v82);
  v84 = a2 + v82;
  *(a1 + v82) = *(a2 + v82);
  v131 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
  v85 = v131[12];
  __dstb = v83;
  v86 = &v83[v85];
  v120 = v84;
  v87 = (v84 + v85);
  v88 = type metadata accessor for GradientClippingMode(0);
  LODWORD(v77) = __swift_getEnumTagSinglePayload(v86, 1, v88);
  v89 = __swift_getEnumTagSinglePayload(v87, 1, v88);
  if (v77)
  {
    if (!v89)
    {
      (*(*(v88 - 8) + 32))(v86, v87, v88);
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v88);
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v90 = *(v88 - 8);
  if (v89)
  {
    (*(v90 + 8))(v86, v88);
LABEL_29:
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?);
    memcpy(v86, v87, *(*(v91 - 8) + 64));
    goto LABEL_30;
  }

  (*(v90 + 40))(v86, v87, v88);
LABEL_30:
  v92 = v131[13];
  v93 = &__dstb[v92];
  v94 = (v120 + v92);
  v95 = type metadata accessor for RegularizationKind(0);
  v96 = __swift_getEnumTagSinglePayload(v93, 1, v95);
  v97 = __swift_getEnumTagSinglePayload(v94, 1, v95);
  if (v96)
  {
    if (!v97)
    {
      (*(*(v95 - 8) + 32))(v93, v94, v95);
      __swift_storeEnumTagSinglePayload(v93, 0, 1, v95);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v98 = *(v95 - 8);
  if (v97)
  {
    (*(v98 + 8))(v93, v95);
LABEL_35:
    v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?);
    memcpy(v93, v94, *(*(v99 - 8) + 64));
    goto LABEL_36;
  }

  (*(v98 + 40))(v93, v94, v95);
LABEL_36:
  *&__dstb[v131[14]] = *(v120 + v131[14]);
  *&__dstb[v131[15]] = *(v120 + v131[15]);
  v100 = v131[16];
  v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>);
  v114 = *(v101 - 8);
  v102 = *(v114 + 40);
  v102(&__dstb[v100], v120 + v100, v101);
  v124 = v102;
  v102(&__dstb[v131[17]], v120 + v131[17], v101);
  v103 = v131[18];
  v104 = (v103 + v120);
  __dstc = &__dstb[v103];
  LODWORD(v102) = __swift_getEnumTagSinglePayload(__dstc, 1, v101);
  v105 = __swift_getEnumTagSinglePayload(v104, 1, v101);
  if (v102)
  {
    v107 = a1;
    if (!v105)
    {
      (*(v114 + 32))(__dstc, v104, v101);
      __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v101);
      goto LABEL_47;
    }

    v108 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v109 = __dstc;
  }

  else
  {
    v107 = a1;
    if (!v105)
    {
      v124(__dstc, v104, v101);
      goto LABEL_47;
    }

    (*(v114 + 8))(__dstc, v101, v106, v124);
    v108 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLFewShotSoundClassifier.TemporalClassifier>?) - 8) + 64);
    v109 = __dstc;
  }

  memcpy(v109, v104, v108);
LABEL_47:
  v110 = a3[12];
  v111 = *(v107 + v110);
  *(v107 + v110) = *(a2 + v110);

  return v107;
}

uint64_t sub_A072A(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for MLClassifierMetrics(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_4:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = a3[10];
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
      v6 = a3[11];
    }

    goto LABEL_4;
  }

  result = 0;
  if ((*(a1 + a3[8]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[8]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_A07E8(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for MLClassifierMetrics(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[5];
LABEL_4:
    v6 = v8 + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  if (a3 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[10];
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>);
      v8 = a4[11];
    }

    goto LABEL_4;
  }

  result = a4[8];
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier(uint64_t a1)
{
  result = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      v8 = v7;
      v9 = &value witness table for Builtin.Int64 + 64;
      v10 = &value witness table for Builtin.BridgeObject + 64;
      v11 = &value witness table for Builtin.BridgeObject + 64;
      result = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(319);
      if (v4 <= 0x3F)
      {
        v12 = *(result - 8) + 64;
        result = type metadata accessor for Adam<MLFewShotSoundClassifier.TemporalClassifier>(319);
        if (v5 <= 0x3F)
        {
          v13 = *(result - 8) + 64;
          v14 = &value witness table for Builtin.UnknownObject + 64;
          swift_initStructMetadata(a1, 256, 9, &v6, a1 + 16);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Adam<MLFewShotSoundClassifier.TemporalClassifier>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>;
  if (!lazy cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier>)
  {
    v2 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(255);
    v3 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
    result = type metadata accessor for Adam(a1, v2, v3);
    if (!v4)
    {
      lazy cache variable for type metadata for Adam<MLFewShotSoundClassifier.TemporalClassifier> = result;
    }
  }

  return result;
}

uint64_t outlined init with take of MLFewShotSoundClassifier.TemporalClassifier?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLFewShotSoundClassifier.TemporalClassifier?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLClassifierMetrics(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t sub_A0A51()
{
  v1 = type metadata accessor for ComputeDevice(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 24);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  (*(v2 + 8))(v5, v1);
  return swift_deallocObject(v0, v6, v3 | 7);
}

uint64_t MLImageClassifier.ModelParameters.algorithm.getter()
{
  v2 = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ModelAlgorithmType?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 48, v11);
  if (v12)
  {
    v6 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
    v7 = swift_dynamicCast(v11, v11, &type metadata for Any + 8, v6, 6);
    __swift_storeEnumTagSinglePayload(v11, v7 ^ 1u, 1, v6);
    if (__swift_getEnumTagSinglePayload(v11, 1, v6) != 1)
    {
      return outlined init with take of MLClassifierMetrics(v11, v2, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for Any?);
    v6 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v6);
  }

  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  *v2 = 1;
  *(v2 + 8) = 0;
  v10 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  swift_storeEnumTagMultiPayload(v2, v10, 0);
  *(v2 + v9) = 0;
  type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v6);
  if (result != 1)
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ModelAlgorithmType?);
  }

  return result;
}

uint64_t MLImageClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t MLImageClassifier.ModelParameters.algorithm.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLClassifierMetrics(a1, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  return outlined assign with take of Any?(v4, v1 + 48);
}

void (*MLImageClassifier.ModelParameters.algorithm.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0x60uLL);
  *a1 = v2;
  v2[8] = v1;
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64);
  v2[10] = malloc(v4);
  v2[11] = malloc(v4);
  MLImageClassifier.ModelParameters.algorithm.getter();
  return MLImageClassifier.ModelParameters.algorithm.modify;
}

void MLImageClassifier.ModelParameters.algorithm.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  if (a2)
  {
    v5 = v2[8];
    v6 = v2[9];
    outlined init with copy of MLTrainingSessionParameters(v2[11], v2[10], type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    v2[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
    outlined init with take of MLClassifierMetrics(v4, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    outlined assign with take of Any?(v2, v5 + 48);
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  }

  else
  {
    v8 = v2[8];
    v2[7] = v2[9];
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 4);
    outlined init with take of MLClassifierMetrics(v3, v9, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    outlined assign with take of Any?((v2 + 4), v8 + 48);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLImageClassifier.ModelParameters.validationData.getter()
{
  v1 = *(*(type metadata accessor for MLImageClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = alloca(v5);
  v9 = alloca(v5);
  outlined init with copy of Any?(v0 + 16, &v16);
  if (!v17)
  {
    BUG();
  }

  outlined init with take of Any(&v16, v15);
  swift_dynamicCast(&v14, v15, &type metadata for Any + 8, v4, 7);
  outlined init with copy of MLTrainingSessionParameters(&v14, &v14, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v14, v4);
  v11 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      break;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLImageClassifier.DataSource);
      v11 = static _ImageUtilities.getImageURLsAndLabels(from:)(&v14);
      outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLImageClassifier.DataSource);
      break;
    case 2u:
      v11 = v14;
      break;
    case 3u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
      v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v12, &protocol witness table for String);
      break;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return v11;
}

uint64_t key path setter for MLImageClassifier.ModelParameters.validationData : MLImageClassifier.ModelParameters(uint64_t *a1)
{
  v1 = *a1;
  *a1;
  return MLImageClassifier.ModelParameters.validationData.setter(v1);
}

uint64_t MLImageClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v16 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  if (a1)
  {
    if (*(a1 + 16))
    {
      *&v13 = a1;
      v9 = type metadata accessor for MLImageClassifier.DataSource(0);
      swift_storeEnumTagMultiPayload(&v13, v9, 2);
      v12 = 1;
    }

    else
    {
      a1;
      v12 = 3;
    }

    v2 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 256;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLClassifierMetrics(&v13, &v13, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v15 = v3;
  v10 = __swift_allocate_boxed_opaque_existential_0(&v13);
  outlined init with take of MLClassifierMetrics(&v13, v10, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return outlined assign with take of Any?(&v13, v16 + 16);
}

uint64_t MLImageClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 16, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t MLImageClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLClassifierMetrics(a1, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return outlined assign with take of Any?(v4, v1 + 16);
}

uint64_t (*MLImageClassifier.ModelParameters.validationData.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLImageClassifier.ModelParameters.validationData.getter(a1);
  return MLImageClassifier.ModelParameters.validationData.modify;
}

uint64_t MLImageClassifier.ModelParameters.validationData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MLImageClassifier.ModelParameters.validationData.setter(*a1);
  }

  *a1;
  MLImageClassifier.ModelParameters.validationData.setter(v2);
  return v2;
}

uint64_t key path setter for MLImageClassifier.ModelParameters.algorithm : MLImageClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void *))
{
  v13[0] = v6;
  v9 = *(*(a5(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(a1, v13, a5);
  return a6(v13);
}

void (*MLImageClassifier.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1 + 16, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLImageClassifier.ModelParameters.validation.modify;
}

void MLImageClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v5 = *(*a1 + 136);
  v6 = *(*a1 + 128) + 16;
  if (a2)
  {
    v10 = *(*a1 + 144);
    outlined init with copy of MLTrainingSessionParameters(*(*a1 + 152), v4, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLClassifierMetrics(v10, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLClassifierMetrics(v3, v9, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t MLImageClassifier.ModelParameters.featureExtractor.getter()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  MLImageClassifier.ModelParameters.algorithm.getter(0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  *&v7[*(v5 + 48)];
  return outlined init with take of MLClassifierMetrics(v7, v1, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t MLImageClassifier.ModelParameters.featureExtractor.setter(uint64_t a1)
{
  v14 = a1;
  v15 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v2 = *(*(v15 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  v16 = v12;
  MLImageClassifier.ModelParameters.algorithm.getter();
  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v8 = *&v12[v7];
  v9 = v14;
  outlined init with copy of MLTrainingSessionParameters(v14, v12, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *&v12[v7] = v8;
  v13[3] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  outlined init with take of MLClassifierMetrics(v12, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v13, v1 + 48);
  outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  return outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

void (*MLImageClassifier.ModelParameters.featureExtractor.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3 = malloc(*(*(v2 - 8) + 64));
  a1[1] = v3;
  v4 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64);
  a1[2] = malloc(v4);
  v5 = malloc(v4);
  a1[3] = v5;
  MLImageClassifier.ModelParameters.algorithm.getter();
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  *&v3[*(v6 + 48)];
  outlined init with take of MLClassifierMetrics(v3, v5, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  return MLImageClassifier.ModelParameters.featureExtractor.modify;
}

void MLImageClassifier.ModelParameters.featureExtractor.modify(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v3 = a1[2];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    outlined init with copy of MLTrainingSessionParameters(a1[3], v3, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    MLImageClassifier.ModelParameters.featureExtractor.setter(v3);
    outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  }

  else
  {
    MLImageClassifier.ModelParameters.featureExtractor.setter(a1[3]);
  }

  free(v2);
  free(v3);
  free(v5);
}

uint64_t MLImageClassifier.ModelParameters.init(validation:maxIterations:augmentation:algorithm:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = a4;
  v28 = a2;
  v27 = a1;
  v6 = v4;
  v24 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v7 = *(*(v24 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v25 = &v20;
  v10 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *a3;
  v26 = v6 + 48;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *v6 = v28;
  *(v6 + 8) = v14;
  outlined init with copy of MLTrainingSessionParameters(a1, &v20, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v22 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLClassifierMetrics(&v20, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v21, v6 + 16);
  v16 = v23;
  v17 = v25;
  outlined init with copy of MLTrainingSessionParameters(v23, v25, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  v22 = v24;
  v18 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLClassifierMetrics(v17, v18, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v21, v26);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  return outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
}

uint64_t MLImageClassifier.ModelParameters.init(featureExtractor:validation:maxIterations:augmentationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = a4;
  v25 = a3;
  v24 = a2;
  v22 = a1;
  v5 = v4;
  v23 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v6 = *(*(v23 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *v27;
  v26 = v5 + 16;
  v27 = (v5 + 48);
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *v5 = v25;
  *(v5 + 8) = v13;
  outlined init with copy of MLTrainingSessionParameters(a2, v19, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v21 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  outlined init with take of MLClassifierMetrics(v19, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v20, v26);
  v15 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v16 = v22;
  outlined init with copy of MLTrainingSessionParameters(v22, v19, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *&v19[v15] = 0;
  v21 = v23;
  v17 = __swift_allocate_boxed_opaque_existential_0(v20);
  outlined init with take of MLClassifierMetrics(v19, v17, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v20, v27);
  outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t MLImageClassifier.ModelParameters.init(featureExtractor:validationData:maxIterations:augmentationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = a2;
  v19 = a1;
  v7 = v4;
  v8 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *a4;
  v18 = v7 + 48;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *v7 = a3;
  *(v7 + 8) = v12;
  MLImageClassifier.ModelParameters.validationData.setter(v20);
  v13 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v14 = v19;
  outlined init with copy of MLTrainingSessionParameters(v19, v17, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *(v17 + v13) = 0;
  v17[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLClassifierMetrics(v17, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v17, v18);
  return outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

{
  v20 = a1;
  v7 = v4;
  v22 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v8 = *(*(v22 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *a4;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *v7 = a3;
  *(v7 + 8) = v11;
  v21 = a2;
  v12 = static _ImageUtilities.getImageURLsAndLabels(from:)(a2);
  v13 = v7 + 48;
  MLImageClassifier.ModelParameters.validationData.setter(v12);
  v14 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v15 = v20;
  outlined init with copy of MLTrainingSessionParameters(v20, v18, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *&v18[v14] = 0;
  v19[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  outlined init with take of MLClassifierMetrics(v18, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v19, v13);
  outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLImageClassifier.DataSource);
  return outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

unint64_t MLImageClassifier.ModelParameters.description.getter()
{
  v1 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v24 = v0;
  MLImageClassifier.ModelParameters.algorithm.getter();
  v7 = *&v20[*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48)];
  outlined init with take of MLClassifierMetrics(v20, v20, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v23;
  v22 = 0xD000000000000013;
  v23 = "ave MLMultiArray rank 3." + 0x8000000000000000;
  v8._countAndFlagsBits = MLImageClassifier.FeatureExtractorType.description.getter();
  object = v8._object;
  String.append(_:)(v8);
  object;
  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  strcpy(&v25, "Classifier: ");
  BYTE5(v25._object) = 0;
  HIWORD(v25._object) = -5120;
  if (v7)
  {
    v7;
    v11._countAndFlagsBits = 0xD000000000000015;
    v12 = "Feature Extractor: ";
  }

  else
  {
    v11._countAndFlagsBits = 0xD000000000000012;
    v12 = "Multilayer Perceptron";
  }

  v11._object = (v12 | 0x8000000000000000);
  String.append(_:)(v11);
  v12 | 0x8000000000000000;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v25._object;
  String.append(_:)(v25);
  v14;
  outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v25._object;
  v25._countAndFlagsBits = 0xD000000000000010;
  v25._object = "ansformer have different types." + 0x8000000000000000;
  v21 = *v24;
  v15 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v17 = v16;
  v13._countAndFlagsBits = v15;
  v13._object = v16;
  String.append(_:)(v13);
  v17;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v18 = v25._object;
  String.append(_:)(v25);
  v18;
  return v22;
}

unint64_t MLImageClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLImageClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.ModelParameters.validate()()
{
  v1 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  MLImageClassifier.ModelParameters.algorithm.getter(0);
  MLImageClassifier.ModelParameters.ModelAlgorithmType.validate()();
  outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  if (!v4)
  {
    v5 = *v0;
    if ((*v0 - 1) >= 0x7FFFFFFE)
    {
      *&v15 = 0;
      *(&v15 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(87);
      v6._object = "Logistic Regressor" + 0x8000000000000000;
      v6._countAndFlagsBits = 0xD000000000000048;
      String.append(_:)(v6);
      LODWORD(v16) = 0x7FFFFFFF;
      v7 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int32, &protocol witness table for Int32);
      v9 = v8;
      v6._countAndFlagsBits = v7;
      v6._object = v8;
      String.append(_:)(v6);
      v9;
      v6._countAndFlagsBits = 0x6F6720747562202CLL;
      v6._object = 0xEA00000000002074;
      String.append(_:)(v6);
      v16 = v5;
      v10 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v12 = v11;
      v6._countAndFlagsBits = v10;
      v6._object = v11;
      String.append(_:)(v6);
      v12;
      v6._countAndFlagsBits = 46;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      v14 = v15;
      v6._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v6._object, 0, 0);
      *v13 = v14;
      *(v13 + 16) = 0;
      *(v13 + 32) = 0;
      *(v13 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v6._object);
    }
  }
}

uint64_t sub_A2027(uint64_t a1)
{
  v2 = v1;
  result = MLImageClassifier.ModelParameters.validationData.getter(a1);
  *v2 = result;
  return result;
}

uint64_t destroy for MLImageClassifier.ModelParameters(void *a1)
{
  if (a1[5])
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1 + 2);
  }

  if (a1[9])
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  return result;
}

uint64_t initializeWithCopy for MLImageClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 16);
  v5 = (a2 + 16);
  v6 = *(a2 + 40);
  if (v6)
  {
    *(a1 + 40) = v6;
    (**(v6 - 8))(v4, v5);
  }

  else
  {
    v7 = *v5;
    v4[1] = v5[1];
    *v4 = v7;
  }

  v8 = (a1 + 48);
  v9 = *(a2 + 72);
  v10 = (a2 + 48);
  if (v9)
  {
    *(a1 + 72) = v9;
    (**(v9 - 8))(v8, v10);
  }

  else
  {
    v11 = *v10;
    *(a1 + 64) = v10[1];
    *v8 = v11;
  }

  return a1;
}

uint64_t assignWithCopy for MLImageClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v2)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 16), (a2 + 16));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
  }

  else if (v2)
  {
    *(a1 + 40) = v2;
    (**(v2 - 8))(a1 + 16, a2 + 16);
    goto LABEL_8;
  }

  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v3;
LABEL_8:
  v4 = *(a2 + 72);
  if (!*(a1 + 72))
  {
    if (v4)
    {
      *(a1 + 72) = v4;
      (**(v4 - 8))(a1 + 48, a2 + 48);
      return a1;
    }

LABEL_14:
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
    return a1;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 48), (a2 + 48));
  return a1;
}

void *__swift_memcpy80_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x50uLL);
  return result;
}

uint64_t assignWithTake for MLImageClassifier.ModelParameters(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  if (*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
  }

  v2 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 16) = v2;
  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
  }

  v3 = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 48) = v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLImageClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLImageClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 80) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = 2 * a2;
    }
  }
}

void *__swift_memcpy8_8(void *a1, void *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.init(validation:batchSize:maximumIterations:predictionWindowSize:augmentationOptions:algorithm:targetFrameRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6)
{
  v9 = v6;
  v10 = *a5;
  outlined init with take of MLClassifierMetrics(a1, v6, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v11 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v9 + v11[5]) = a2;
  *(v9 + v11[6]) = a3;
  *(v9 + v11[7]) = a4;
  *(v9 + v11[8]) = v10;
  result = v11[10];
  *(v9 + result) = a6;
  return result;
}

uint64_t outlined init with copy of MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t MLHandActionClassifier.ModelParameters.batchSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.maximumIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.predictionWindowSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.augmentationOptions.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 32));
  *v2 = result;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 32);
  *(v1 + result) = v2;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.targetFrameRate.setter(double a1)
{
  result = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 40);
  *(v1 + result) = a1;
  return result;
}

Swift::Int MLHandActionClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1)
{
  Hasher.init(_seed:)(a1);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

char MLHandActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(uint64_t *a1, void *a2, __m128 a3)
{
  v60 = v3;
  v57 = v4;
  v59 = a2;
  v58 = a1;
  v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v53 = &v46;
  v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v60;
  LOBYTE(v14) = MLHandActionClassifier.DataSource.videosWithAnnotations()(a3);
  if (v13)
  {
    return v14;
  }

  *&v52 = v5;
  v15 = v54;
  v62 = BYTE8(v54);
  outlined init with copy of MLHandActionClassifier.ModelParameters.ValidationData(v57, &v46);
  v60 = &v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v46, v9);
  if (!EnumCaseMultiPayload)
  {
    v57 = 0;
    v52 = *v60;
    v61 = *(v60 + 16);
    LOBYTE(v53) = *(v60 + 17);
    v23 = v15;
    *&v54 = v15;
    v24 = v62;
    BYTE8(v54) = v62;
    LODWORD(v60) = v62;
    outlined copy of Result<_DataTable, Error>(v23, v62);
    v25 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v54, SBYTE8(v54));
    if (v25 > 0)
    {
      v50 = v23;
      v51 = v24;
      v54 = v52;
      v55 = v61;
      v56 = v53 & 1;
      MLDataTable.randomSplitBySequence(strategy:by:on:)(&v46, &v48, &v54, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v23, v60);
      v14 = v46;
      v26 = v47;
      v27 = v49;
      v28 = v58;
      *v58 = v48;
      *(v28 + 8) = v27;
      v29 = v59;
      *v59 = v14;
      *(v29 + 8) = v26;
      return v14;
    }

LABEL_11:
    outlined consume of Result<_DataTable, Error>(v23, v60);
    v34 = v58;
    *v58 = 0;
    LOBYTE(v14) = -1;
    *(v34 + 8) = -1;
    v35 = v59;
    *v59 = 0;
    *(v35 + 8) = -1;
    return v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v57 = 0;
    v23 = v15;
    *&v54 = v15;
    v30 = v62;
    BYTE8(v54) = v62;
    LODWORD(v60) = v62;
    outlined copy of Result<_DataTable, Error>(v23, v62);
    MLDataTable.size.getter();
    v32 = v31;
    outlined consume of Result<_DataTable, Error>(v54, SBYTE8(v54));
    if (v32)
    {
      v33 = v58;
      *v58 = v23;
      *(v33 + 8) = v30;
      v14 = v59;
      *v59 = 0;
      *(v14 + 8) = -1;
      return v14;
    }

    goto LABEL_11;
  }

  v17 = swift_getEnumCaseMultiPayload(v60, v52);
  v18 = v15;
  if (v17 == 5)
  {
    outlined consume of Result<_DataTable, Error>(v15, v62);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v37 = v60;
    *(v60 + v36[12] + 8);
    *(v37 + v36[16] + 8);
    *(v37 + v36[20] + 8);
    v38 = type metadata accessor for DataFrame(0);
    (*(*(v38 - 8) + 8))(v37, v38);
  }

  else
  {
    v19 = v62;
    if (v17 != 3)
    {
      v41 = v53;
      outlined init with take of MLClassifierMetrics(v60, v53, type metadata accessor for MLHandActionClassifier.DataSource);
      MLHandActionClassifier.DataSource.videosWithAnnotations()(a3);
      outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(v41, type metadata accessor for MLHandActionClassifier.DataSource);
      v42 = v58;
      v14 = v54;
      v43 = BYTE8(v54);
      *v58 = v18;
      *(v42 + 8) = v19;
      v44 = v59;
      *v59 = v14;
      *(v44 + 8) = v43;
      return v14;
    }

    outlined consume of Result<_DataTable, Error>(v18, v62);
    v20 = v60[3];
    v21 = v60[5];
    v22 = v60[7];
    outlined consume of Result<_DataTable, Error>(*v60, *(v60 + 2));
    v22;
    v21;
    v20;
  }

  v39 = v59;
  v40 = v58;
  *v58 = 0;
  LOBYTE(v14) = -1;
  *(v40 + 8) = -1;
  *v39 = 0;
  *(v39 + 8) = -1;
  return v14;
}

unint64_t MLHandActionClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(23);
  0xE000000000000000;
  v1 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v17._countAndFlagsBits = *(v0 + v1[6]);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  strcpy(&v17, "Batch Size: ");
  BYTE5(v17._object) = 0;
  HIWORD(v17._object) = -5120;
  v15 = *(v0 + v1[5]);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  v6;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v17);
  v17._object;
  _StringGuts.grow(_:)(27);
  0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000018;
  v17._object = "Maximum Iterations: " + 0x8000000000000000;
  v16 = *(v0 + v1[7]);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = "Maximum Iterations: " + 0x8000000000000000;
  String.append(_:)(v4);
  "Maximum Iterations: " + 0x8000000000000000;
  _StringGuts.grow(_:)(22);
  0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000013;
  v17._object = "Prediction Window Time: " + 0x8000000000000000;
  v9._countAndFlagsBits = Double.description.getter(*(v0 + v1[10]));
  v10 = v9._object;
  String.append(_:)(v9);
  v10;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000013;
  v12._object = "Prediction Window Time: " + 0x8000000000000000;
  String.append(_:)(v12);
  "Prediction Window Time: " + 0x8000000000000000;
  _StringGuts.grow(_:)(25);
  0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000016;
  v17._object = "Target Frame Rate: " + 0x8000000000000000;
  v11 = "Model Algorithm: GCN\n" + 0x8000000000000000;
  v12._countAndFlagsBits = 0;
  if (*(v0 + v1[8]) == 1)
  {
    v12._countAndFlagsBits = 0xD000000000000011;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12._object = v11;
  String.append(_:)(v12);
  v11;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  String.append(_:)(v17);
  v17._object;
  v13._object = "Augmentation Options: " + 0x8000000000000000;
  v13._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v13);
  return 0xD000000000000014;
}

unint64_t MLHandActionClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLHandActionClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.ModelParameters.ModelAlgorithmType, &type metadata for MLHandActionClassifier.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLHandActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *__src;
    *v4 = *__src;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v7) == 1)
    {
      v8 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v45 = type metadata accessor for URL(0);
          v51 = *(*(v45 - 8) + 16);
          v51(__dst, __src, v45);
          v49 = v8;
          v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v51(&__dst[v9[12]], &__src[v9[12]], v45);
          v10 = v9[16];
          *&__dst[v10] = *&__src[v10];
          v11 = *&__src[v10 + 8];
          *&v4[v10 + 8] = v11;
          v12 = v9[20];
          *&v4[v12] = *&__src[v12];
          v52 = *&__src[v12 + 8];
          *&v4[v12 + 8] = v52;
          v13 = v9[24];
          *&v4[v13] = *&__src[v13];
          v46 = *&__src[v13 + 8];
          *&v4[v13 + 8] = v46;
          v14 = v9[28];
          *&v4[v14] = *&__src[v14];
          v15 = *&__src[v14 + 8];
          *&v4[v14 + 8] = v15;
          v11;
          v52;
          v46;
          v15;
          __dst = v4;
          v16 = v49;
          v17 = 0;
          goto LABEL_15;
        case 1u:
          v26 = type metadata accessor for URL(0);
          (*(*(v26 - 8) + 16))(__dst, __src, v26);
          v44 = 1;
          goto LABEL_11;
        case 2u:
          v22 = type metadata accessor for URL(0);
          (*(*(v22 - 8) + 16))(__dst, __src, v22);
          v44 = 2;
LABEL_11:
          v17 = v44;
          v16 = v8;
          goto LABEL_15;
        case 3u:
          v50 = v8;
          v23 = *__src;
          v55 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v55);
          *__dst = v23;
          __dst[8] = v55;
          *(__dst + 2) = *(__src + 2);
          v24 = *(__src + 3);
          *(v4 + 3) = v24;
          *(v4 + 4) = *(__src + 4);
          v25 = *(__src + 5);
          *(v4 + 5) = v25;
          *(v4 + 6) = *(__src + 6);
          v56 = *(__src + 7);
          *(v4 + 7) = v56;
          v24;
          v25;
          v56;
          v43 = 3;
          goto LABEL_14;
        case 4u:
          v50 = v8;
          v19 = *__src;
          v53 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v53);
          *__dst = v19;
          __dst[8] = v53;
          *(__dst + 2) = *(__src + 2);
          v20 = *(__src + 3);
          *(v4 + 3) = v20;
          *(v4 + 4) = *(__src + 4);
          v21 = *(__src + 5);
          *(v4 + 5) = v21;
          *(v4 + 6) = *(__src + 6);
          v54 = *(__src + 7);
          *(v4 + 7) = v54;
          *(v4 + 8) = *(__src + 8);
          v47 = *(__src + 9);
          *(v4 + 9) = v47;
          v20;
          v21;
          v54;
          v47;
          v43 = 4;
          goto LABEL_14;
        case 5u:
          v27 = type metadata accessor for DataFrame(0);
          (*(*(v27 - 8) + 16))(__dst, __src, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v29 = v28[12];
          *&__dst[v29] = *&__src[v29];
          v30 = *&__src[v29 + 8];
          *&v4[v29 + 8] = v30;
          v31 = v28[16];
          *&v4[v31] = *&__src[v31];
          v57 = *&__src[v31 + 8];
          *&v4[v31 + 8] = v57;
          v32 = v28[20];
          *&v4[v32] = *&__src[v32];
          v50 = v8;
          v33 = *&__src[v32 + 8];
          *&v4[v32 + 8] = v33;
          v30;
          v57;
          v33;
          v43 = 5;
          goto LABEL_14;
        case 6u:
          v34 = type metadata accessor for DataFrame(0);
          (*(*(v34 - 8) + 16))(__dst, __src, v34);
          v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v36 = v35[12];
          *&__dst[v36] = *&__src[v36];
          v37 = *&__src[v36 + 8];
          *&v4[v36 + 8] = v37;
          v38 = v35[16];
          *&v4[v38] = *&__src[v38];
          v58 = *&__src[v38 + 8];
          *&v4[v38 + 8] = v58;
          v39 = v35[20];
          *&v4[v39] = *&__src[v39];
          v48 = *&__src[v39 + 8];
          *&v4[v39 + 8] = v48;
          v40 = v35[24];
          *&v4[v40] = *&__src[v40];
          v50 = v8;
          v41 = *&__src[v40 + 8];
          *&v4[v40 + 8] = v41;
          v37;
          v58;
          v48;
          v41;
          v43 = 6;
LABEL_14:
          v17 = v43;
          __dst = v4;
          v16 = v50;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v16, v17);
          swift_storeEnumTagMultiPayload(v4, v7, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *&v4[a3[5]] = *&__src[a3[5]];
    *&v4[a3[6]] = *&__src[a3[6]];
    *&v4[a3[7]] = *&__src[a3[7]];
    *&v4[a3[8]] = *&__src[a3[8]];
    *&v4[a3[10]] = *&__src[a3[10]];
  }

  return v4;
}

uint64_t destroy for MLHandActionClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(a1, v1);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = __dst;
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v6) == 1)
  {
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v43 = type metadata accessor for URL(0);
        v49 = *(*(v43 - 8) + 16);
        v49(__dst, __src, v43);
        v47 = v7;
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v49(&__dst[v8[12]], &__src[v8[12]], v43);
        v9 = v8[16];
        *&__dst[v9] = *&__src[v9];
        v10 = *&__src[v9 + 8];
        *&v5[v9 + 8] = v10;
        v11 = v8[20];
        *&v5[v11] = *&__src[v11];
        v50 = *&__src[v11 + 8];
        *&v5[v11 + 8] = v50;
        v12 = v8[24];
        *&v5[v12] = *&__src[v12];
        v44 = *&__src[v12 + 8];
        *&v5[v12 + 8] = v44;
        v13 = v8[28];
        *&v5[v13] = *&__src[v13];
        v14 = *&__src[v13 + 8];
        *&v5[v13 + 8] = v14;
        v10;
        v50;
        v44;
        v14;
        __dst = v5;
        v15 = v47;
        v16 = 0;
        goto LABEL_13;
      case 1u:
        v24 = type metadata accessor for URL(0);
        (*(*(v24 - 8) + 16))(__dst, __src, v24);
        v42 = 1;
        goto LABEL_9;
      case 2u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(__dst, __src, v20);
        v42 = 2;
LABEL_9:
        v16 = v42;
        v15 = v7;
        goto LABEL_13;
      case 3u:
        v48 = v7;
        v21 = *__src;
        v53 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v53);
        *__dst = v21;
        __dst[8] = v53;
        *(__dst + 2) = *(__src + 2);
        v22 = *(__src + 3);
        *(v5 + 3) = v22;
        *(v5 + 4) = *(__src + 4);
        v23 = *(__src + 5);
        *(v5 + 5) = v23;
        *(v5 + 6) = *(__src + 6);
        v54 = *(__src + 7);
        *(v5 + 7) = v54;
        v22;
        v23;
        v54;
        v41 = 3;
        goto LABEL_12;
      case 4u:
        v48 = v7;
        v17 = *__src;
        v51 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v51);
        *__dst = v17;
        __dst[8] = v51;
        *(__dst + 2) = *(__src + 2);
        v18 = *(__src + 3);
        *(v5 + 3) = v18;
        *(v5 + 4) = *(__src + 4);
        v19 = *(__src + 5);
        *(v5 + 5) = v19;
        *(v5 + 6) = *(__src + 6);
        v52 = *(__src + 7);
        *(v5 + 7) = v52;
        *(v5 + 8) = *(__src + 8);
        v45 = *(__src + 9);
        *(v5 + 9) = v45;
        v18;
        v19;
        v52;
        v45;
        v41 = 4;
        goto LABEL_12;
      case 5u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 16))(__dst, __src, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v27 = v26[12];
        *&__dst[v27] = *&__src[v27];
        v28 = *&__src[v27 + 8];
        *&v5[v27 + 8] = v28;
        v29 = v26[16];
        *&v5[v29] = *&__src[v29];
        v55 = *&__src[v29 + 8];
        *&v5[v29 + 8] = v55;
        v30 = v26[20];
        *&v5[v30] = *&__src[v30];
        v48 = v7;
        v31 = *&__src[v30 + 8];
        *&v5[v30 + 8] = v31;
        v28;
        v55;
        v31;
        v41 = 5;
        goto LABEL_12;
      case 6u:
        v32 = type metadata accessor for DataFrame(0);
        (*(*(v32 - 8) + 16))(__dst, __src, v32);
        v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v34 = v33[12];
        *&__dst[v34] = *&__src[v34];
        v35 = *&__src[v34 + 8];
        *&v5[v34 + 8] = v35;
        v36 = v33[16];
        *&v5[v36] = *&__src[v36];
        v56 = *&__src[v36 + 8];
        *&v5[v36 + 8] = v56;
        v37 = v33[20];
        *&v5[v37] = *&__src[v37];
        v46 = *&__src[v37 + 8];
        *&v5[v37 + 8] = v46;
        v38 = v33[24];
        *&v5[v38] = *&__src[v38];
        v48 = v7;
        v39 = *&__src[v38 + 8];
        *&v5[v38 + 8] = v39;
        v35;
        v56;
        v46;
        v39;
        v41 = 6;
LABEL_12:
        v16 = v41;
        __dst = v5;
        v15 = v48;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v15, v16);
        swift_storeEnumTagMultiPayload(v5, v6, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  *&v5[a3[5]] = *&__src[a3[5]];
  *&v5[a3[6]] = *&__src[a3[6]];
  *&v5[a3[7]] = *&__src[a3[7]];
  *&v5[a3[8]] = *&__src[a3[8]];
  *&v5[a3[10]] = *&__src[a3[10]];
  return v5;
}

char *assignWithCopy for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v37 = type metadata accessor for URL(0);
          v44 = *(*(v37 - 8) + 16);
          v44(__dst, __src, v37);
          v40 = v6;
          v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v44(&__dst[v12[12]], &__src[v12[12]], v37);
          v13 = v12[16];
          *&__dst[v13] = *&__src[v13];
          v14 = *&__src[v13 + 8];
          *&__dst[v13 + 8] = v14;
          v15 = v12[20];
          *&__dst[v15] = *&__src[v15];
          v45 = *&__src[v15 + 8];
          *&__dst[v15 + 8] = v45;
          v16 = v12[24];
          *&__dst[v16] = *&__src[v16];
          v38 = *&__src[v16 + 8];
          *&__dst[v16 + 8] = v38;
          v17 = v12[28];
          *&__dst[v17] = *&__src[v17];
          goto LABEL_11;
        case 1u:
        case 2u:
          v7 = type metadata accessor for URL(0);
          (*(*(v7 - 8) + 16))(__dst, __src, v7);
          goto LABEL_14;
        case 3u:
          v41 = v6;
          v18 = *__src;
          v46 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v46);
          *__dst = v18;
          __dst[8] = v46;
          *(__dst + 2) = *(__src + 2);
          v19 = *(__src + 3);
          *(__dst + 3) = v19;
          *(__dst + 4) = *(__src + 4);
          v20 = *(__src + 5);
          *(__dst + 5) = v20;
          *(__dst + 6) = *(__src + 6);
          v47 = *(__src + 7);
          *(__dst + 7) = v47;
          v19;
          LOBYTE(v19) = v20;
          v6 = v41;
          v19;
          v11 = v47;
          goto LABEL_13;
        case 4u:
          v39 = v6;
          v8 = *__src;
          v42 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v42);
          *__dst = v8;
          __dst[8] = v42;
          *(__dst + 2) = *(__src + 2);
          v9 = *(__src + 3);
          *(__dst + 3) = v9;
          *(__dst + 4) = *(__src + 4);
          v10 = *(__src + 5);
          *(__dst + 5) = v10;
          *(__dst + 6) = *(__src + 6);
          v43 = *(__src + 7);
          *(__dst + 7) = v43;
          *(__dst + 8) = *(__src + 8);
          v36 = *(__src + 9);
          *(__dst + 9) = v36;
          v9;
          LOBYTE(v9) = v10;
          v6 = v39;
          v9;
          v43;
          v11 = v36;
          goto LABEL_13;
        case 5u:
          v21 = type metadata accessor for DataFrame(0);
          (*(*(v21 - 8) + 16))(__dst, __src, v21);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v23 = v22[12];
          *&__dst[v23] = *&__src[v23];
          v24 = *&__src[v23 + 8];
          *&__dst[v23 + 8] = v24;
          v25 = v22[16];
          *&__dst[v25] = *&__src[v25];
          v48 = *&__src[v25 + 8];
          *&__dst[v25 + 8] = v48;
          v26 = v22[20];
          *&__dst[v26] = *&__src[v26];
          v40 = v6;
          v27 = *&__src[v26 + 8];
          *&__dst[v26 + 8] = v27;
          v24;
          v28 = v48;
          goto LABEL_12;
        case 6u:
          v29 = type metadata accessor for DataFrame(0);
          (*(*(v29 - 8) + 16))(__dst, __src, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v31 = v30[12];
          *&__dst[v31] = *&__src[v31];
          v14 = *&__src[v31 + 8];
          *&__dst[v31 + 8] = v14;
          v32 = v30[16];
          *&__dst[v32] = *&__src[v32];
          v45 = *&__src[v32 + 8];
          *&__dst[v32 + 8] = v45;
          v33 = v30[20];
          *&__dst[v33] = *&__src[v33];
          v38 = *&__src[v33 + 8];
          *&__dst[v33 + 8] = v38;
          v17 = v30[24];
          *&__dst[v17] = *&__src[v17];
          v40 = v6;
LABEL_11:
          v27 = *&__src[v17 + 8];
          *&__dst[v17 + 8] = v27;
          v14;
          v45;
          v28 = v38;
LABEL_12:
          v28;
          v11 = v27;
          v6 = v40;
LABEL_13:
          v11;
LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v6, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(__dst, v5, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *initializeWithTake for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 32);
        v20(__dst, __src, v19);
        v18 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(&__dst[v7[12]], &__src[v7[12]], v19);
        *&__dst[v7[16]] = *&__src[v7[16]];
        *&__dst[v7[20]] = *&__src[v7[20]];
        *&__dst[v7[24]] = *&__src[v7[24]];
        *&__dst[v7[28]] = *&__src[v7[28]];
        v8 = v18;
        v9 = 0;
        goto LABEL_11;
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v17 = 1;
        goto LABEL_10;
      case 2u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v17 = 2;
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v13[12]] = *&__src[v13[12]];
        *&__dst[v13[16]] = *&__src[v13[16]];
        *&__dst[v13[20]] = *&__src[v13[20]];
        v17 = 5;
        goto LABEL_10;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 32))(__dst, __src, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v15[12]] = *&__src[v15[12]];
        *&__dst[v15[16]] = *&__src[v15[16]];
        *&__dst[v15[20]] = *&__src[v15[20]];
        *&__dst[v15[24]] = *&__src[v15[24]];
        v17 = 6;
LABEL_10:
        v9 = v17;
        v8 = v6;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, v5, 1);
  }

  else
  {
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *assignWithTake for MLHandActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          v20 = *(*(v19 - 8) + 32);
          v20(__dst, __src, v19);
          v18 = v6;
          v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v20(&__dst[v7[12]], &__src[v7[12]], v19);
          *&__dst[v7[16]] = *&__src[v7[16]];
          *&__dst[v7[20]] = *&__src[v7[20]];
          *&__dst[v7[24]] = *&__src[v7[24]];
          *&__dst[v7[28]] = *&__src[v7[28]];
          v8 = v18;
          v9 = 0;
          goto LABEL_12;
        case 1u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 32))(__dst, __src, v11);
          v17 = 1;
          goto LABEL_11;
        case 2u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 32))(__dst, __src, v10);
          v17 = 2;
          goto LABEL_11;
        case 5u:
          v12 = type metadata accessor for DataFrame(0);
          (*(*(v12 - 8) + 32))(__dst, __src, v12);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&__dst[v13[12]] = *&__src[v13[12]];
          *&__dst[v13[16]] = *&__src[v13[16]];
          *&__dst[v13[20]] = *&__src[v13[20]];
          v17 = 5;
          goto LABEL_11;
        case 6u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 32))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&__dst[v15[12]] = *&__src[v15[12]];
          *&__dst[v15[16]] = *&__src[v15[16]];
          *&__dst[v15[20]] = *&__src[v15[20]];
          *&__dst[v15[24]] = *&__src[v15[24]];
          v17 = 6;
LABEL_11:
          v9 = v17;
          v8 = v6;
LABEL_12:
          swift_storeEnumTagMultiPayload(__dst, v8, v9);
          break;
        default:
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(__dst, v5, 1);
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

uint64_t type metadata completion function for MLHandActionClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for Builtin.Int64 + 64;
    v3[5] = &value witness table for () + 64;
    v3[6] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLHandActionClassifier.ModelParameters.ModelAlgorithmType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 1;
  v3 = 1;
  if (v2 >= 0x100)
  {
    v3 = 2 * (v2 >= &loc_10000) + 2;
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

uint64_t storeEnumTagSinglePayload for MLHandActionClassifier.ModelParameters.ModelAlgorithmType(_BYTE *a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a3 + 1;
    LODWORD(result) = 1;
    if (v3 >= 0x100)
    {
      LODWORD(result) = 2 * (v3 >= &loc_10000) + 2;
    }
  }

  else
  {
    LODWORD(result) = 0;
  }

  result = result;
  if (a2)
  {
    switch(result)
    {
      case 0:
        return result;
      case 1:
        *a1 = a2;
        return result;
      case 2:
        *a1 = a2;
        return result;
      case 3:
        goto LABEL_16;
      case 4:
        *a1 = a2;
        return result;
    }
  }

  switch(result)
  {
    case 0:
      return result;
    case 1:
      *a1 = 0;
      break;
    case 2:
      *a1 = 0;
      break;
    case 3:
LABEL_16:
      BUG();
    case 4:
      *a1 = 0;
      break;
    case 5:
      JUMPOUT(0xA44A8);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v20 = *__src;
    *v3 = *__src;
    v3 = (v20 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v57 = v7;
        v8 = type metadata accessor for URL(0);
        v55 = *(*(v8 - 8) + 16);
        v55(__dst, __src, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v55(&__dst[v9[12]], &__src[v9[12]], v8);
        v10 = v9[16];
        *&__dst[v10] = *&__src[v10];
        v11 = *&__src[v10 + 8];
        *(v3 + v10 + 8) = v11;
        v12 = v9[20];
        *(v3 + v12) = *&__src[v12];
        v56 = *&__src[v12 + 8];
        *(v3 + v12 + 8) = v56;
        v13 = v9[24];
        *(v3 + v13) = *&__src[v13];
        v14 = *&__src[v13 + 8];
        *(v3 + v13 + 8) = v14;
        v15 = v9[28];
        *(v3 + v15) = *&__src[v15];
        v16 = *&__src[v15 + 8];
        *(v3 + v15 + 8) = v16;
        v11;
        v56;
        v14;
        v16;
        v17 = v3;
        v18 = v57;
        v19 = 0;
        break;
      case 1u:
        v34 = type metadata accessor for URL(0);
        (*(*(v34 - 8) + 16))(__dst, __src, v34);
        v54 = 1;
        goto LABEL_12;
      case 2u:
        v28 = type metadata accessor for URL(0);
        (*(*(v28 - 8) + 16))(__dst, __src, v28);
        v54 = 2;
        goto LABEL_12;
      case 3u:
        v29 = *__src;
        v58 = v7;
        v30 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v30);
        *__dst = v29;
        __dst[8] = v30;
        *(__dst + 2) = *(__src + 2);
        v31 = *(__src + 3);
        v3[3] = v31;
        v3[4] = *(__src + 4);
        v32 = *(__src + 5);
        v3[5] = v32;
        v3[6] = *(__src + 6);
        v33 = *(__src + 7);
        v3[7] = v33;
        v31;
        v32;
        v33;
        v53 = 3;
        goto LABEL_14;
      case 4u:
        v22 = *__src;
        v58 = v7;
        v23 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v23);
        *__dst = v22;
        __dst[8] = v23;
        *(__dst + 2) = *(__src + 2);
        v24 = *(__src + 3);
        v3[3] = v24;
        v3[4] = *(__src + 4);
        v25 = *(__src + 5);
        v3[5] = v25;
        v3[6] = *(__src + 6);
        v26 = *(__src + 7);
        v3[7] = v26;
        v3[8] = *(__src + 8);
        v27 = *(__src + 9);
        v3[9] = v27;
        v24;
        v25;
        v26;
        v27;
        v53 = 4;
        goto LABEL_14;
      case 5u:
        v35 = type metadata accessor for DataFrame(0);
        (*(*(v35 - 8) + 16))(__dst, __src, v35);
        v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v37 = v36[12];
        *&__dst[v37] = *&__src[v37];
        v38 = *&__src[v37 + 8];
        *(v3 + v37 + 8) = v38;
        v39 = v36[16];
        *(v3 + v39) = *&__src[v39];
        v40 = *&__src[v39 + 8];
        *(v3 + v39 + 8) = v40;
        v41 = v36[20];
        *(v3 + v41) = *&__src[v41];
        v42 = *&__src[v41 + 8];
        *(v3 + v41 + 8) = v42;
        v38;
        v40;
        v42;
        v54 = 5;
LABEL_12:
        v19 = v54;
        v17 = v3;
        v18 = v7;
        break;
      case 6u:
        v43 = type metadata accessor for DataFrame(0);
        (*(*(v43 - 8) + 16))(__dst, __src, v43);
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v45 = v44[12];
        *&__dst[v45] = *&__src[v45];
        v46 = *&__src[v45 + 8];
        *(v3 + v45 + 8) = v46;
        v47 = v44[16];
        *(v3 + v47) = *&__src[v47];
        v48 = *&__src[v47 + 8];
        *(v3 + v47 + 8) = v48;
        v49 = v44[20];
        *(v3 + v49) = *&__src[v49];
        v58 = v7;
        v50 = *&__src[v49 + 8];
        *(v3 + v49 + 8) = v50;
        v51 = v44[24];
        *(v3 + v51) = *&__src[v51];
        v52 = *&__src[v51 + 8];
        *(v3 + v51 + 8) = v52;
        v46;
        v48;
        v50;
        v52;
        v53 = 6;
LABEL_14:
        v19 = v53;
        v17 = v3;
        v18 = v58;
        break;
    }

    swift_storeEnumTagMultiPayload(v17, v18, v19);
    swift_storeEnumTagMultiPayload(v3, a3, 1);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v5))
  {
    case 0u:
      v54 = v5;
      v6 = type metadata accessor for URL(0);
      v52 = *(*(v6 - 8) + 16);
      v52(__dst, __src, v6);
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v52(&__dst[v7[12]], &__src[v7[12]], v6);
      v8 = v7[16];
      *&__dst[v8] = *&__src[v8];
      v9 = *&__src[v8 + 8];
      *&__dst[v8 + 8] = v9;
      v10 = v7[20];
      *&__dst[v10] = *&__src[v10];
      v53 = *&__src[v10 + 8];
      *&__dst[v10 + 8] = v53;
      v11 = v7[24];
      *&__dst[v11] = *&__src[v11];
      v12 = *&__src[v11 + 8];
      *&__dst[v11 + 8] = v12;
      v13 = v7[28];
      *&__dst[v13] = *&__src[v13];
      v14 = *&__src[v13 + 8];
      *&__dst[v13 + 8] = v14;
      v9;
      v53;
      v12;
      v14;
      v15 = __dst;
      v16 = v54;
      v17 = 0;
      break;
    case 1u:
      v31 = type metadata accessor for URL(0);
      (*(*(v31 - 8) + 16))(__dst, __src, v31);
      v51 = 1;
      goto LABEL_10;
    case 2u:
      v25 = type metadata accessor for URL(0);
      (*(*(v25 - 8) + 16))(__dst, __src, v25);
      v51 = 2;
      goto LABEL_10;
    case 3u:
      v26 = *__src;
      v55 = v5;
      v27 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v27);
      *__dst = v26;
      __dst[8] = v27;
      *(__dst + 2) = *(__src + 2);
      v28 = *(__src + 3);
      *(__dst + 3) = v28;
      *(__dst + 4) = *(__src + 4);
      v29 = *(__src + 5);
      *(__dst + 5) = v29;
      *(__dst + 6) = *(__src + 6);
      v30 = *(__src + 7);
      *(__dst + 7) = v30;
      v28;
      v29;
      v30;
      v50 = 3;
      goto LABEL_12;
    case 4u:
      v19 = *__src;
      v55 = v5;
      v20 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v20);
      *__dst = v19;
      __dst[8] = v20;
      *(__dst + 2) = *(__src + 2);
      v21 = *(__src + 3);
      *(__dst + 3) = v21;
      *(__dst + 4) = *(__src + 4);
      v22 = *(__src + 5);
      *(__dst + 5) = v22;
      *(__dst + 6) = *(__src + 6);
      v23 = *(__src + 7);
      *(__dst + 7) = v23;
      *(__dst + 8) = *(__src + 8);
      v24 = *(__src + 9);
      *(__dst + 9) = v24;
      v21;
      v22;
      v23;
      v24;
      v50 = 4;
      goto LABEL_12;
    case 5u:
      v32 = type metadata accessor for DataFrame(0);
      (*(*(v32 - 8) + 16))(__dst, __src, v32);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v34 = v33[12];
      *&__dst[v34] = *&__src[v34];
      v35 = *&__src[v34 + 8];
      *&__dst[v34 + 8] = v35;
      v36 = v33[16];
      *&__dst[v36] = *&__src[v36];
      v37 = *&__src[v36 + 8];
      *&__dst[v36 + 8] = v37;
      v38 = v33[20];
      *&__dst[v38] = *&__src[v38];
      v39 = *&__src[v38 + 8];
      *&__dst[v38 + 8] = v39;
      v35;
      v37;
      v39;
      v51 = 5;
LABEL_10:
      v17 = v51;
      v15 = __dst;
      v16 = v5;
      break;
    case 6u:
      v40 = type metadata accessor for DataFrame(0);
      (*(*(v40 - 8) + 16))(__dst, __src, v40);
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v42 = v41[12];
      *&__dst[v42] = *&__src[v42];
      v43 = *&__src[v42 + 8];
      *&__dst[v42 + 8] = v43;
      v44 = v41[16];
      *&__dst[v44] = *&__src[v44];
      v45 = *&__src[v44 + 8];
      *&__dst[v44 + 8] = v45;
      v46 = v41[20];
      *&__dst[v46] = *&__src[v46];
      v55 = v5;
      v47 = *&__src[v46 + 8];
      *&__dst[v46 + 8] = v47;
      v48 = v41[24];
      *&__dst[v48] = *&__src[v48];
      v49 = *&__src[v48 + 8];
      *&__dst[v48 + 8] = v49;
      v43;
      v45;
      v47;
      v49;
      v50 = 6;
LABEL_12:
      v17 = v50;
      v15 = __dst;
      v16 = v55;
      break;
  }

  swift_storeEnumTagMultiPayload(v15, v16, v17);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v44 = v5;
        v41 = type metadata accessor for URL(0);
        v15 = *(*(v41 - 8) + 16);
        v15(__dst, __src, v41);
        v46 = EnumCaseMultiPayload;
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v15(&__dst[v16[12]], &__src[v16[12]], v41);
        v17 = v16[16];
        *&__dst[v17] = *&__src[v17];
        v23 = *&__src[v17 + 8];
        *&__dst[v17 + 8] = v23;
        v18 = v16[20];
        *&__dst[v18] = *&__src[v18];
        v42 = *&__src[v18 + 8];
        *&__dst[v18 + 8] = v42;
        v19 = v16[24];
        *&__dst[v19] = *&__src[v19];
        v20 = *&__src[v19 + 8];
        *&__dst[v19 + 8] = v20;
        v21 = v16[28];
        *&__dst[v21] = *&__src[v21];
        v22 = *&__src[v21 + 8];
        *&__dst[v21 + 8] = v22;
        v23;
        LOBYTE(v23) = v42;
        goto LABEL_10;
      case 1u:
      case 2u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(__dst, __src, v7);
        goto LABEL_14;
      case 3u:
        v44 = v5;
        v24 = *__src;
        v46 = EnumCaseMultiPayload;
        v25 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v25);
        *__dst = v24;
        __dst[8] = v25;
        *(__dst + 2) = *(__src + 2);
        v23 = *(__src + 3);
        *(__dst + 3) = v23;
        *(__dst + 4) = *(__src + 4);
        v20 = *(__src + 5);
        *(__dst + 5) = v20;
        *(__dst + 6) = *(__src + 6);
        v22 = *(__src + 7);
        *(__dst + 7) = v22;
        goto LABEL_10;
      case 4u:
        v43 = v5;
        v9 = *__src;
        v45 = EnumCaseMultiPayload;
        v10 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v10);
        *__dst = v9;
        __dst[8] = v10;
        *(__dst + 2) = *(__src + 2);
        v11 = *(__src + 3);
        *(__dst + 3) = v11;
        *(__dst + 4) = *(__src + 4);
        v12 = *(__src + 5);
        *(__dst + 5) = v12;
        *(__dst + 6) = *(__src + 6);
        v13 = *(__src + 7);
        *(__dst + 7) = v13;
        *(__dst + 8) = *(__src + 8);
        v14 = *(__src + 9);
        *(__dst + 9) = v14;
        goto LABEL_12;
      case 5u:
        v26 = type metadata accessor for DataFrame(0);
        (*(*(v26 - 8) + 16))(__dst, __src, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v28 = v27[12];
        *&__dst[v28] = *&__src[v28];
        v23 = *&__src[v28 + 8];
        *&__dst[v28 + 8] = v23;
        v29 = v27[16];
        *&__dst[v29] = *&__src[v29];
        v44 = v5;
        v20 = *&__src[v29 + 8];
        *&__dst[v29 + 8] = v20;
        v30 = v27[20];
        *&__dst[v30] = *&__src[v30];
        v46 = EnumCaseMultiPayload;
        v22 = *&__src[v30 + 8];
        *&__dst[v30 + 8] = v22;
LABEL_10:
        v23;
        v31 = v20;
        v5 = v44;
        v31;
        v32 = v22;
        EnumCaseMultiPayload = v46;
        break;
      case 6u:
        v33 = type metadata accessor for DataFrame(0);
        (*(*(v33 - 8) + 16))(__dst, __src, v33);
        v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v35 = v34[12];
        *&__dst[v35] = *&__src[v35];
        v11 = *&__src[v35 + 8];
        *&__dst[v35 + 8] = v11;
        v36 = v34[16];
        *&__dst[v36] = *&__src[v36];
        v43 = v5;
        v12 = *&__src[v36 + 8];
        *&__dst[v36 + 8] = v12;
        v37 = v34[20];
        *&__dst[v37] = *&__src[v37];
        v45 = EnumCaseMultiPayload;
        v13 = *&__src[v37 + 8];
        *&__dst[v37 + 8] = v13;
        v38 = v34[24];
        *&__dst[v38] = *&__src[v38];
        v14 = *&__src[v38 + 8];
        *&__dst[v38 + 8] = v14;
LABEL_12:
        v11;
        v39 = v12;
        v5 = v43;
        v39;
        v40 = v13;
        EnumCaseMultiPayload = v45;
        v40;
        v32 = v14;
        break;
    }

    v32;
LABEL_14:
    swift_storeEnumTagMultiPayload(__dst, v5, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

char *initializeWithTake for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v16 = type metadata accessor for URL(0);
      v17 = *(*(v16 - 8) + 32);
      v17(__dst, __src, v16);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v17(&__dst[v5[12]], &__src[v5[12]], v16);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      *&__dst[v5[24]] = *&__src[v5[24]];
      *&__dst[v5[28]] = *&__src[v5[28]];
      v6 = v4;
      v7 = 0;
      goto LABEL_11;
    case 1u:
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 32))(__dst, __src, v10);
      v15 = 1;
      goto LABEL_10;
    case 2u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v15 = 2;
      goto LABEL_10;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v12[12]] = *&__src[v12[12]];
      *&__dst[v12[16]] = *&__src[v12[16]];
      *&__dst[v12[20]] = *&__src[v12[20]];
      v15 = 5;
      goto LABEL_10;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      *&__dst[v14[24]] = *&__src[v14[24]];
      v15 = 6;
LABEL_10:
      v7 = v15;
      v6 = v4;
LABEL_11:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      break;
    default:
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      break;
  }

  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLHandActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v4))
    {
      case 0u:
        v16 = type metadata accessor for URL(0);
        v17 = *(*(v16 - 8) + 32);
        v17(__dst, __src, v16);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v17(&__dst[v5[12]], &__src[v5[12]], v16);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        *&__dst[v5[24]] = *&__src[v5[24]];
        *&__dst[v5[28]] = *&__src[v5[28]];
        v6 = v4;
        v7 = 0;
        goto LABEL_12;
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v15 = 1;
        goto LABEL_11;
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 32))(__dst, __src, v9);
        v15 = 2;
        goto LABEL_11;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v12[12]] = *&__src[v12[12]];
        *&__dst[v12[16]] = *&__src[v12[16]];
        *&__dst[v12[20]] = *&__src[v12[20]];
        v15 = 5;
        goto LABEL_11;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        *&__dst[v14[24]] = *&__src[v14[24]];
        v15 = 6;
LABEL_11:
        v7 = v15;
        v6 = v4;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v6, v7);
        break;
      default:
        memcpy(__dst, __src, *(*(v4 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

uint64_t type metadata completion function for MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_33FA48;
  result = type metadata accessor for MLHandActionClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLHandActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    if (*v3 != 1)
    {
      BUG();
    }

    v4 = *(v3 - 2);
    v8 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      v7 = *(v3 - 2);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v8;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 24;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    v13 = result;
    v11 = v1;
    v4 = *(v3 - 2);
    v5 = *(v3 - 1);
    v6 = *v3;
    if (*v3)
    {
      v12 = 0;
      v7 = 0;
    }

    else
    {
      v8 = *(v3 - 2);
      outlined copy of MLRecommender.Identifier(v4, *(v3 - 1), 0);
      v5;
      v4 = v8;
      v12 = v8;
      v7 = v5;
    }

    outlined consume of MLRecommender.Identifier(v4, v5, v6);
    if (!v7)
    {
      BUG();
    }

    result = v13;
    v9 = v13[2];
    if (v13[3] >> 1 <= v9)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13[3] >= 2uLL, v9 + 1, 1);
      result = v13;
    }

    result[2] = v9 + 1;
    v10 = 2 * v9;
    result[v10 + 4] = v12;
    result[v10 + 5] = v7;
    v3 += 24;
    v1 = v11 - 1;
  }

  while (v11 != 1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SdtG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV0F5ScoreVs5NeverOTg508_sSiSd20d15Specification38fghi4V0C5j7VIgyyr_m8_SdtAEs5k125OIegnrzr_TR047_s8CreateML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v16 = type metadata accessor for ItemSimilarityRecommenderConfiguration.ItemScore(0);
  v17 = *(v16 - 8);
  v2 = *(v17 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v19 = &v16;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = v1;
  v21 = _swiftEmptyArrayStorage;
  v6 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v7 = v21;
  v8 = (a1 + 40);
  v9 = v19;
  do
  {
    ItemSimilarityRecommenderConfiguration.ItemScore.init(itemID:similarityScore:)(*(v8 - 1), *v8);
    v21 = v7;
    v10 = v9;
    v11 = v7[2];
    v12 = v7[3];
    v13 = v11 + 1;
    if (v12 >> 1 <= v11)
    {
      v20 = v11 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, 1);
      v13 = v20;
      v10 = v19;
      v7 = v21;
    }

    v7[2] = v13;
    v14 = v7 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11;
    v9 = v10;
    (*(v17 + 32))(v14, v10, v16);
    v8 += 2;
    --v6;
  }

  while (v6);
  return v7;
}

uint64_t MLRecommender.write(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v8 = a1;
  v2 = type metadata accessor for Model(0);
  v9 = *(v2 - 8);
  v3 = *(v9 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  MLRecommender.exportToCoreML(metadata:)(a2);
  Model.write(to:)(v8);
  return (*(v9 + 8))(&v7, v2);
}

uint64_t MLRecommender.exportToCoreML(metadata:)(uint64_t *a1)
{
  v1 = type metadata accessor for ModelKind(0);
  v32 = *(v1 - 8);
  v2 = *(v32 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v27 = *a1;
  v23 = a1[1];
  v30 = a1[2];
  v31 = a1[3];
  v25 = a1[4];
  v26 = a1[5];
  v28 = a1[6];
  v29 = a1[7];
  v24 = a1[8];
  Model.init()();
  Model.specificationVersion.setter(4);
  v5 = MLRecommender.buildInputs()();
  Model.inputs.setter(v5);
  v6 = MLRecommender.buildOutputs()();
  Model.outputs.setter(v6);
  MLRecommender.buildRecommender()(v6);
  (*(v32 + 104))(v21, enum case for ModelKind.itemSimilarityRecommender(_:), v1);
  v7 = v23;
  Model.kind.setter(v21);
  Model.modelDescription.setter(0xD000000000000021, "Horizontally Flip" + 0x8000000000000000);
  if (v7)
  {
    v8 = v31;
    v31;
    Model.modelDescription.setter(v30, v8);
    v9 = v29;
    v29;
    Model.versionString.setter(v28, v9);
    v7;
    Model.author.setter(v27, v7);
    v10 = v25;
    if (!v26)
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v26)
    {
      v11 = v26;
    }

    v26;
    Model.license.setter(v10, v11);
    v12 = v24;
    if (v24)
    {
      v13 = v24;
    }

    else
    {
      v13 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
      v12 = 0;
    }

    v12;
    Model.metadata.setter(v13);
  }

  v14 = getOSVersion()();
  countAndFlagsBits = v14._countAndFlagsBits;
  object = v14._object;
  v32 = Model.metadata.modify(v21);
  v18 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v17);
  v22 = *v18;
  *v18 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v18 = v22;
  return (v32)(v21, 0);
}

uint64_t MLRecommender.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v23[10] = v3;
  v31 = a3;
  v26 = a2;
  v24 = a1;
  v28 = type metadata accessor for Model(0);
  v29 = *(v28 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = &v22;
  v7 = type metadata accessor for URL.DirectoryHint(0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = type metadata accessor for URL(0);
  v30 = *(v14 - 1);
  v15 = *(v30 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  qmemcpy(v23, v31, 0x48uLL);
  v31 = v14;
  __swift_storeEnumTagSinglePayload(&v22, 1, 1, v14);
  (*(v27 + 104))(&v22, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  v18 = v26;
  v26;
  v19 = URL.init(filePath:directoryHint:relativeTo:)(v24, v18, &v22, &v22);
  v20 = v25;
  MLRecommender.exportToCoreML(metadata:)(v23);
  Model.write(to:)(&v22);
  (*(v29 + 8))(v20, v28, v19);
  return (*(v30 + 8))(&v22, v31);
}

uint64_t MLRecommender.buildInputs()()
{
  v38 = type metadata accessor for FeatureDescription(0);
  v37 = *(v38 - 8);
  v1 = *(v37 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = &v37;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v43 = &v37;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v42 = &v37;
  v8 = alloca(v1);
  v9 = alloca(v1);
  v44 = &v37;
  v45 = type metadata accessor for FeatureType(0);
  v41 = *(v45 - 8);
  v10 = v41[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v37;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v15 = alloca(v10);
  v16 = alloca(v10);
  LOBYTE(v47) = *(v0 + *(type metadata accessor for MLRecommender(0) + 44));
  if (v47)
  {
    static FeatureType.dictionaryWithIntKeys(optional:)(0);
  }

  else
  {
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
  }

  v17 = v41;
  v18 = v41[2];
  v39 = &v37;
  v19 = v45;
  v18(&v37, &v37, v45);
  FeatureDescription.init(name:type:description:)(0x736D657469, 0xE500000000000000, &v37, 0xD000000000000037, "responding scores." + 0x8000000000000000);
  FeatureType.IntParameters.init(optional:)(0);
  (v17[13])(&v37, enum case for FeatureType.int(_:), v19);
  FeatureDescription.init(name:type:description:)(107, 0xE100000000000000, &v37, 0xD000000000000032, "te the recommendations." + 0x8000000000000000);
  v20 = v46;
  if (v47)
  {
    static FeatureType.sequenceOfInt(optional:)(0);
  }

  else
  {
    static FeatureType.sequenceOfString(optional:)(0);
  }

  v21 = v20;
  FeatureType.isOptional.setter(1);
  v22 = v20;
  v23 = v45;
  v18(&v37, v22, v45);
  FeatureDescription.init(name:type:description:)(0x7463697274736572, 0xE800000000000000, &v37, 0xD00000000000003BLL, " a recommendation." + 0x8000000000000000);
  v18(&v37, v21, v23);
  FeatureDescription.init(name:type:description:)(0x6564756C637865, 0xE700000000000000, &v37, 0xD000000000000063, "o generate recommendations." + 0x8000000000000000);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v25 = v37;
  v26 = *(v37 + 72);
  v27 = *(v37 + 80);
  v28 = (v27 + 32) & ~*(v37 + 80);
  v29 = swift_allocObject(v24, v28 + 4 * v26, v27 | 7);
  v47 = v29;
  *(v29 + 16) = 4;
  *(v29 + 24) = 8;
  v30 = v29 + v28;
  v31 = *(v25 + 16);
  v32 = v38;
  v31(v30, v44, v38);
  v31(v30 + v26, v42, v32);
  v31(v30 + 2 * v26, v43, v32);
  (*(v25 + 32))(v30 + 3 * v26, v40, v32);
  v33 = *(v25 + 8);
  v33(v43, v32);
  v34 = v41[1];
  v35 = v45;
  v34(v46, v45);
  v33(v42, v32);
  v33(v44, v32);
  v34(v39, v35);
  return v47;
}

uint64_t MLRecommender.buildOutputs()()
{
  v29 = type metadata accessor for FeatureDescription(0);
  v32 = *(v29 - 8);
  v1 = *(v32 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v33 = &v28;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v34 = &v28;
  v35 = type metadata accessor for FeatureType(0);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v28;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = alloca(v7);
  v13 = alloca(v7);
  v14 = *(v0 + *(type metadata accessor for MLRecommender(0) + 44));
  if (v14)
  {
    static FeatureType.sequenceOfInt(optional:)(0);
  }

  else
  {
    static FeatureType.sequenceOfString(optional:)(0);
  }

  v30 = v6;
  v15 = *(v6 + 16);
  v31 = &v28;
  v15(&v28, &v28, v35);
  FeatureDescription.init(name:type:description:)(0x6E656D6D6F636572, 0xEF736E6F69746164, &v28, 0xD000000000000044, "com.apple.createml.version" + 0x8000000000000000);
  if (v14)
  {
    v16 = v36;
    static FeatureType.dictionaryWithIntKeys(optional:)(0);
  }

  else
  {
    v16 = v36;
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
  }

  v15(&v28, v16, v35);
  FeatureDescription.init(name:type:description:)(0x7365726F6373, 0xE600000000000000, &v28, 0xD000000000000062, "t to least relevant." + 0x8000000000000000);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v18 = v32;
  v19 = *(v32 + 72);
  v20 = *(v32 + 80);
  v21 = (v20 + 32) & ~*(v32 + 80);
  v22 = swift_allocObject(v17, v21 + 2 * v19, v20 | 7);
  *(v22 + 16) = 2;
  *(v22 + 24) = 4;
  v23 = v22 + v21;
  v24 = v29;
  (*(v18 + 16))(v23, v34, v29);
  (*(v18 + 32))(v19 + v23, v33, v24);
  v25 = *(v30 + 8);
  v26 = v35;
  v25(v36, v35);
  (*(v18 + 8))(v34, v24);
  v25(v31, v26);
  return v22;
}

uint64_t MLRecommender.buildRecommender()(uint64_t a1)
{
  v12[0] = v1;
  ItemSimilarityRecommenderConfiguration.init()(a1);
  ItemSimilarityRecommenderConfiguration.itemInputFeatureName.setter(0x736D657469, 0xE500000000000000);
  ItemSimilarityRecommenderConfiguration.recommendationCountInputFeatureName.setter(107, 0xE100000000000000);
  ItemSimilarityRecommenderConfiguration.recommendedItemsOutputFeatureName.setter(0x6E656D6D6F636572, 0xEF736E6F69746164);
  ItemSimilarityRecommenderConfiguration.recommendedItemScoresOutputFeatureName.setter(0x7365726F6373, 0xE600000000000000);
  ItemSimilarityRecommenderConfiguration.itemInclusionInputFeatureName.setter(0x7463697274736572, 0xE800000000000000);
  ItemSimilarityRecommenderConfiguration.itemExclusionInputFeatureName.setter(0x6564756C637865, 0xE700000000000000);
  v3 = *(v2 + *(type metadata accessor for MLRecommender(0) + 44));
  v4 = *(v2 + 16);
  v4;
  if (v3 == 1)
  {
    ML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n(v4);
    v4;
    ItemSimilarityRecommenderConfiguration.itemIntIDs.setter(ML13MLRecommenderV10IdentifierOG_Sis5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSiAC10G53Ocfu_32e3399fa1d635680dd9b269b7350fcff2AISiTf3nnnpk_nTf1cn_n);
  }

  else
  {
    ML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n(v4);
    v4;
    ItemSimilarityRecommenderConfiguration.itemStringIDs.setter(ML13MLRecommenderV10IdentifierOG_SSs5NeverOTg503_s8d4ML13f83V16buildRecommender20MLModelSpecification014ItemSimilarityE13ConfigurationVyFSSAC10G55Ocfu0_33_249550f2622063ad651cac1eac78e882AISSTf3nnnpk_nTf1cn_n);
  }

  v7 = *(v4 + 16);
  v8 = alloca(32);
  v9 = alloca(32);
  v12[2] = v2;
  v12[3] = v7;
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV12SimilarItemsVs5NeverOTg5(partial apply for closure #1 in MLRecommender.buildRecommender(), v12, 0, v7);
  return ItemSimilarityRecommenderConfiguration.itemItemSimilarities.setter(v10);
}

uint64_t closure #1 in MLRecommender.buildRecommender()(uint64_t *a1, const void *a2, uint64_t a3, double a4, double a5)
{
  v11 = a3;
  v5 = *a1;
  ItemSimilarityRecommenderConfiguration.SimilarItems.init()();
  ItemSimilarityRecommenderConfiguration.SimilarItems.itemID.setter(v5);
  memcpy(__dst, a2, sizeof(__dst));
  v6 = specialized RecommenderModel.similarItems(itemIndex:count:)(v5, v11, a4, a5);
  v7 = v12;
  ML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SdtG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV0F5ScoreVs5NeverOTg508_sSiSd20d15Specification38fghi4V0C5j7VIgyyr_m8_SdtAEs5k125OIegnrzr_TR047_s8CreateML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n(v6);
  v12 = v7;
  v6;
  return ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.setter(ML13MLRecommenderV16buildRecommender20a16Specification014cd3E13f32VyFAG12SimilarItemsVSiXEfU_AG0H5gu4_S14V2U_Tf3nnnpf_nTf1cn_n);
}

uint64_t MLSplitStrategy.dictionary.getter()
{
  if (*(v0 + 17))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v1, v11);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x6974616D6F747561;
    inited[7] = 0xE900000000000063;
    return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  }

  else
  {
    v4 = v0[1];
    v16 = *v0;
    v5 = *(v0 + 16);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v7 = swift_initStackObject(v6, v10);
    v7[2] = 2;
    v7[3] = 4;
    v7[4] = 1684957547;
    v7[5] = 0xE400000000000000;
    v7[9] = &type metadata for String;
    v7[6] = 0x6465786966;
    v7[7] = 0xE500000000000000;
    v7[10] = 0x6F69746172;
    v7[11] = 0xE500000000000000;
    v7[15] = &type metadata for Double;
    v7[12] = v16;
    v3 = Dictionary.init(dictionaryLiteral:)(v7, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    if ((v5 & 1) == 0)
    {
      v13 = &type metadata for Int;
      *&v12 = v4;
      outlined init with take of Any(&v12, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
      v15 = v3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 1684366707, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      return v15;
    }
  }

  return v3;
}

__int16 MLSplitStrategy.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v12);
  if (!swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_16;
  }

  v5 = v14;
  v6 = v15;
  if (!(v14 ^ 0x6974616D6F747561 | v15 ^ 0xE900000000000063) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x6974616D6F747561, 0xE900000000000063, v14, v15, 0) & 1) != 0)
  {
    v6;
    result = a1;
    *v2 = 0;
    *(v2 + 16) = 256;
LABEL_7:
    *(v2 + 18) = 0;
    return result;
  }

  if (v5 ^ 0x6465786966 | v6 ^ 0xE500000000000000)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6465786966, 0xE500000000000000, v5, v6, 0);
    v6;
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6;
  }

  specialized Dictionary.subscript.getter(0x6F69746172, 0xE500000000000000, a1);
  if (!v13)
  {
    a1;
    result = outlined destroy of Any?(v12);
    goto LABEL_17;
  }

  if (swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v9 = v14;
    specialized Dictionary.subscript.getter(1684366707, 0xE400000000000000, a1);
    a1;
    if (v13)
    {
      v10 = swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for Int, 6);
      if (v10)
      {
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }

      result = v10 ^ 1;
    }

    else
    {
      outlined destroy of Any?(v12);
      result = 1;
      v11 = 0;
    }

    *v2 = v9;
    *(v2 + 8) = v11;
    *(v2 + 16) = result;
    goto LABEL_7;
  }

LABEL_16:
  result = a1;
LABEL_17:
  *v2 = 0;
  *(v2 + 16) = 0;
  *(v2 + 18) = 1;
  return result;
}

Swift::tuple_ratio_Double_seed_Int __swiftcall MLSplitStrategy.resolve(count:)(Swift::Int count)
{
  if (*(v1 + 17))
  {
    v2 = 1;
    v3 = 0.0;
    if (count >= 50)
    {
      v3 = dbl_33FA70[count < 0xC8];
    }
  }

  else
  {
    if (*(v1 + 16))
    {
      v2 = 1;
    }

    else
    {
      v2 = *(v1 + 8);
    }

    v3 = *v1;
  }

  result.ratio = v3;
  result.seed = v2;
  return result;
}

uint64_t __swift_memcpy18_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLSplitStrategy(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 18))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for MLSplitStrategy(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    v3 = 0;
    goto LABEL_6;
  }

  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = a2 - 1;
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 18) = v3;
  }
}

uint64_t getEnumTag for MLSplitStrategy(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char destructiveInjectEnumTag for MLSplitStrategy(uint64_t a1, int a2)
{
  if (a2)
  {
    *(a1 + 8) = 0;
    *a1 = (a2 - 1);
    *(a1 + 16) = 0;
    result = 1;
  }

  else
  {
    result = 0;
  }

  *(a1 + 17) = result;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverOSay8CreateML13MLRecommenderV10IdentifierOGTg5(void (*a1)(void *), uint64_t a2)
{
  v18 = v2;
  v17 = a2;
  v16 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v19 = v15;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of DataFrame?(v3, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    return 0;
  }

  v13 = v19;
  (*(v5 + 32))(v19, v15, v4);
  v14 = v18;
  v16(v13);
  if (v14)
  {
    (*(v5 + 8))(v19, v4);
    BUG();
  }

  (*(v5 + 8))(v19, v4);
  return v15[1];
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n(uint64_t a1, uint64_t *a2, double a3, double a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v14 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v15 = a2[10];
    v16 = a2[11];
    v17 = *(v16 + 8);
    v5 = (a1 + 40);
    do
    {
      v13 = *(v5 - 1);
      v6.f64[0] = *v5;
      v12 = *v5;
      v17(v15, v16);
      v7 = _swiftEmptyArrayStorage[2];
      v8 = v7 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v7 + 1, 1);
        v8 = v7 + 1;
      }

      a4 = fmin(a4, v12.f64[0]);
      v9 = _mm_cmplt_sd(v12, v6).f64[0];
      _swiftEmptyArrayStorage[2] = v8;
      v10 = 2 * v7;
      _swiftEmptyArrayStorage[v10 + 4] = v13;
      _swiftEmptyArrayStorage[v10 + 5] = ~*&v9 & *&a4 | *&v6.f64[0] & *&v9;
      v5 += 2;
      --v14;
    }

    while (v14);
  }

  outlined release of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(a2);
  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 32);
  do
  {
    v4 = *v3;
    v8 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      v7 = *v3;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v8;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 2;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v37 = a2;
    v34 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 80);
    while (1)
    {
      v38 = v3;
      v27 = v4;
      v29 = v5;
      v7 = *(v6 - 6);
      v8 = *(v6 - 5);
      LODWORD(v36) = *(v6 - 8);
      v5 = *(v6 - 3);
      v9 = *(v6 - 2);
      LODWORD(v39) = *(v6 - 2);
      v28 = v6;
      v35 = *v6;
      outlined copy of MLRecommender.Identifier(v7, v8, v36);
      outlined copy of MLRecommender.Identifier(v5, v9, v39);
      v33 = v7;
      v21[0] = v7;
      v32 = v8;
      v21[1] = v8;
      v10 = v36;
      v22 = v36 & 1;
      v31 = v5;
      v23 = v5;
      v30 = v9;
      v24 = v9;
      v11 = v39;
      v25 = v39 & 1;
      v12 = v35;
      v26 = v35;
      v13 = v38;
      v14 = specialized closure #1 in Recommender.buildInteractionTable(_:nearestItems:)(v21, v37);
      v38 = v13;
      if (v13)
      {
        break;
      }

      v36 = v12;
      v35 = v15;
      v39 = v14;
      outlined consume of MLRecommender.Identifier(v33, v32, v10);
      v16 = v30;
      outlined consume of MLRecommender.Identifier(v31, v30, v11);
      v5 = v29;
      v34 = v29;
      v17 = v29[2];
      if (v29[3] >> 1 <= v17)
      {
        v16 = v17 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29[3] >= 2uLL, v17 + 1, 1);
        v5 = v34;
      }

      v5[2] = v17 + 1;
      v18 = 3 * v17;
      v5[v18 + 4] = v39;
      v5[v18 + 5] = v35;
      v5[v18 + 6] = v36;
      v6 = v28 + 7;
      v4 = v27 - 1;
      v3 = v38;
      if (v27 == 1)
      {
        outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v37, v16);
        return v5;
      }
    }

    outlined consume of MLRecommender.Identifier(v33, v32, v10);
    v19 = v30;
    outlined consume of MLRecommender.Identifier(v31, v30, v11);

    outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v37, v19);
  }

  else
  {
    outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(a2, a2);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(void *a1)
{
  v1 = a1[6];
  if (v1 < 0)
  {
    BUG();
  }

  v2 = a1[3];
  v3 = *(v2 + 16);
  if (v1 >= v3)
  {
    BUG();
  }

  if (v1 + 1 >= v3)
  {
    BUG();
  }

  v4 = *(v2 + 8 * v1 + 32);
  v5 = *(v2 + 8 * v1 + 40);
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    BUG();
  }

  if (v5 == v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = v5;
  v23 = v4;
  v7 = a1[4];
  v8 = a1[5];
  v9 = 0;
  if (v6 > 0)
  {
    v9 = v5 - v4;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  if (v6 < 0)
  {
    BUG();
  }

  result = _swiftEmptyArrayStorage;
  v11 = *(v8 + 16);
  v12 = *(v7 + 16);
  v13 = v23;
  v14 = v23;
  v15 = v24;
  v16 = v7;
  do
  {
    if (v15 == v14)
    {
      BUG();
    }

    if (v13 < 0)
    {
      BUG();
    }

    if (v14 >= v12)
    {
      BUG();
    }

    if (v14 >= v11)
    {
      BUG();
    }

    v17 = *(v16 + 4 * v14 + 32);
    v25 = result;
    v18 = result[2];
    if (result[3] >> 1 <= v18)
    {
      v19 = v16;
      v20 = v11;
      v21 = v12;
      v22 = *(v16 + 4 * v14 + 32);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v18 + 1, 1);
      v12 = v21;
      v11 = v20;
      v16 = v19;
      v15 = v24;
      v13 = v23;
      result = v25;
    }

    result[2] = v18 + 1;
    result[v18 + 4] = v17;
    ++v14;
  }

  while (v15 != v14);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 48);
    do
    {
      v8 = v1;
      v3 = *v2;
      v9 = *(v2 - 2);
      v10 = *(v2 - 1);
      outlined copy of MLRecommender.Identifier(v9, v10, *v2);
      v4 = _swiftEmptyArrayStorage[2];
      v5 = v4 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v4)
      {
        v11 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v5, 1);
        v4 = v11;
      }

      _swiftEmptyArrayStorage[2] = v5;
      v6 = 3 * v4;
      _swiftEmptyArrayStorage[v6 + 4] = v9;
      _swiftEmptyArrayStorage[v6 + 5] = v10;
      LOBYTE(_swiftEmptyArrayStorage[v6 + 6]) = v3 & 1;
      v2 += 16;
      v1 = v8 - 1;
    }

    while (v8 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 72);
    do
    {
      v8 = v1;
      v3 = *v2;
      v9 = *(v2 - 2);
      v10 = *(v2 - 1);
      outlined copy of MLRecommender.Identifier(v9, v10, *v2);
      v4 = _swiftEmptyArrayStorage[2];
      v5 = v4 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v4)
      {
        v11 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v5, 1);
        v4 = v11;
      }

      _swiftEmptyArrayStorage[2] = v5;
      v6 = 3 * v4;
      _swiftEmptyArrayStorage[v6 + 4] = v9;
      _swiftEmptyArrayStorage[v6 + 5] = v10;
      LOBYTE(_swiftEmptyArrayStorage[v6 + 6]) = v3 & 1;
      v2 += 16;
      v1 = v8 - 1;
    }

    while (v8 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 80);
  do
  {
    v4 = *v3;
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 8;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 88);
  do
  {
    v4 = *v3;
    v8 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      v7 = *v3;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v8;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 8;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v57 = v8;
  v12 = a3;
  v40 = a2;
  v41 = a1;
  v47 = a5;
  v48 = *(a5 - 8);
  v13 = *(v48 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v49 = &v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a6 + 8), a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v43 = *(AssociatedTypeWitness - 8);
  v16 = *(v43 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v44 = &v37;
  v59 = a4;
  v19 = *(*(a4 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v50 = &v37;
  v52 = swift_getAssociatedTypeWitness(0, a6, v12, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v51 = *(v52 - 8);
  v22 = *(v51 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v56 = v9;
  v55 = a6;
  v25 = dispatch thunk of Collection.count.getter(v12, a6);
  if (!v25)
  {
    return static Array._allocateUninitialized(_:)(0, v59);
  }

  v26 = v59;
  v54 = v25;
  v53 = ContiguousArray.init()(v59);
  v45 = type metadata accessor for ContiguousArray(0, v26);
  ContiguousArray.reserveCapacity(_:)(v54);
  v58 = &v37;
  dispatch thunk of Collection.startIndex.getter(v12, v55);
  if (v54 < 0)
  {
    BUG();
  }

  v27 = 0;
  v46 = v12;
  while (1)
  {
    v28 = __OFADD__(1, v27);
    v29 = v27 + 1;
    if (v28)
    {
      BUG();
    }

    v39 = v29;
    v59 = dispatch thunk of Collection.subscript.read(v38, v58, v12, v55);
    v30 = v44;
    v31 = AssociatedTypeWitness;
    v32 = v43;
    (*(v43 + 16))(v44, v33, AssociatedTypeWitness);
    v59(v38, 0);
    v34 = v57;
    v41(v30, v49);
    if (v34)
    {
      break;
    }

    v57 = 0;
    (*(v32 + 8))(v30, v31);
    ContiguousArray.append(_:)(v50, v45);
    v12 = v46;
    dispatch thunk of Collection.formIndex(after:)(v58, v46, v55);
    v27 = v39;
    if (v39 == v54)
    {
      v35 = v58;
      _expectEnd<A>(of:is:)(v56, v58, v12, v55);
      (*(v51 + 8))(v35, v52);
      return v53;
    }
  }

  (*(v32 + 8))(v30, v31);
  (*(v51 + 8))(v58, v52);
  v53;
  return (*(v48 + 32))(a8, v49, v47);
}