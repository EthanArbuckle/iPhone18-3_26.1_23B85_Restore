__int128 specialized static BinaryFloatingPoint<>.random<A>(in:using:)@<xmm0>(double a1@<xmm0>, double a2@<xmm1>)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  v7 = a2 - a1;
  v2 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  result = *&a2;
  if (v2 != 0x20000000000000)
  {
    v4 = _mm_sub_pd(_mm_unpacklo_epi32(v2, xmmword_33D8B0), xmmword_33D8C0);
    v5 = *&v7;
    *&v5 = v7 * (_mm_hadd_pd(v4, v4).f64[0] * 1.110223024625157e-16) + a1;
    return v5;
  }

  return result;
}

void *specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
    BUG();
  }

  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v5 = a1 - a2;
  if (__OFSUB__(a1 - a2, 1))
  {
    BUG();
  }

  v6 = v4 - (a2 - a1);
  if (__OFADD__(v5, v4))
  {
    BUG();
  }

  v14 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v6)
  {
    if (v14 > v6)
    {
      v6 = v14;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 1, v3);
  }

  result = swift_arrayDestroy(&v3[2 * a1 + 4], a2 - a1, &type metadata for String);
  if (v5)
  {
    v9 = v3[2];
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (v10)
    {
      BUG();
    }

    result = specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v3[2 * a2 + 4], v11, &v3[2 * a1 + 4]);
    v10 = __OFADD__(v3[2], v5);
    v12 = v3[2] + v5;
    if (v10)
    {
      BUG();
    }

    v3[2] = v12;
  }

  *v2 = v3;
  return result;
}

void *specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, int64_t a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
    BUG();
  }

  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (__OFSUB__(a1 - a2, 1))
  {
    BUG();
  }

  v5 = v4 - (a2 - a1);
  if (__OFADD__(a1 - a2, v4))
  {
    BUG();
  }

  v18 = a1 - a2;
  v16 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  v7 = type metadata accessor for FeatureDescription(0);
  v8 = *(v7 - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  v11 = &v9[v10 * a1];
  swift_arrayDestroy(v11, a2 - a1, v7);
  if (v18)
  {
    v12 = v3[2];
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (v13)
    {
      BUG();
    }

    specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v9[a2 * v10], v14, v11);
    if (__OFADD__(v3[2], v18))
    {
      BUG();
    }

    v3[2] += v18;
  }

  result = v16;
  *v16 = v3;
  return result;
}

{
  if (a1 < 0)
  {
    BUG();
  }

  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
    BUG();
  }

  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v5 = a1 - a2;
  if (__OFSUB__(a1 - a2, 1))
  {
    BUG();
  }

  v15 = v2;
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    BUG();
  }

  result = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!result || v3[3] >> 1 < v6)
  {
    if (v4 > v6)
    {
      v6 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v6, 1, v3);
    v3 = result;
  }

  if (v5)
  {
    v9 = v3[2];
    v10 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
      BUG();
    }

    v11 = v3 + 4 * a2 + 32;
    v12 = v3 + 4 * a1 + 32;
    if (a1 != a2 || &v11[4 * v10] <= v12)
    {
      memmove(v12, v11, 4 * v10);
      v9 = v3[2];
    }

    v13 = __OFADD__(v5, v9);
    result = (v5 + v9);
    if (v13)
    {
      BUG();
    }

    v3[2] = result;
  }

  *v15 = v3;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    BUG();
  }

  v4 = *v3;
  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
    BUG();
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v17 = *(a3 + 16);
  v7 = v17 - v6;
  if (__OFSUB__(v17, v6))
  {
    BUG();
  }

  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
  if (!isUniquelyReferenced_nonNull_native || v4[3] >> 1 < v8)
  {
    if (v5 > v8)
    {
      v8 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v4);
  }

  v10 = &v4[a1 + 4];
  if (v7)
  {
    v11 = v4[2];
    v12 = __OFSUB__(v11, a2);
    v13 = v11 - a2;
    if (v12)
    {
      BUG();
    }

    specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v4[a2 + 4], v13, &v10[8 * v17]);
    v12 = __OFADD__(v4[2], v7);
    v14 = v4[2] + v7;
    if (v12)
    {
      BUG();
    }

    v4[2] = v14;
  }

  if (v17)
  {
    if (*(a3 + 16) != v17)
    {
      BUG();
    }

    memcpy(v10, (a3 + 32), 8 * v17);
  }

  result = a3;
  *v3 = v4;
  return result;
}

void specialized closure #1 in linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(void *a1, float *a2, float *a3)
{
  v5 = v3;
  v6 = specialized closure #1 in linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(*a1, *a2, *a3);
  if (!v4)
  {
    *v5 = v6;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v4 = objc_opt_self(*a3);
    result = swift_getObjCClassMetadata(v4);
    *a2 = result;
  }

  return result;
}

uint64_t InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(uint64_t a1, int64_t a2, double a3)
{
  *(v3 + 32) = a1;
  v18 = a2;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  ML11InteractionV_Tt0g5 = _s4HeapAAV12arrayLiteralAByxGxd_tcfC8CreateML11InteractionV_Tt0g5(_swiftEmptyArrayStorage);
  ML11InteractionVG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC4HeapADVy8CreateML11InteractionVG_Tt1g5(ML11InteractionV_Tt0g5, a1);
  *(v3 + 40) = ML11InteractionVG_Tt1g5;
  v15 = *(ML11InteractionVG_Tt1g5 + 16);
  if (v15)
  {
    v17 = v3;
    v6 = (v3 + 40);
    v7 = 0;
    swift_beginAccess(v6, v14, 33, 0);
    v8 = 32;
    v16 = v6;
    do
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(ML11InteractionVG_Tt1g5);
      *v6 = ML11InteractionVG_Tt1g5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        ML11InteractionVG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML11InteractionVG_Tt1g5);
        *v6 = ML11InteractionVG_Tt1g5;
      }

      if (v7 >= *(ML11InteractionVG_Tt1g5 + 16))
      {
        BUG();
      }

      v10 = *(ML11InteractionVG_Tt1g5 + 8 * v7 + 32);
      v11 = swift_isUniquelyReferenced_nonNull_native(v10);
      *(ML11InteractionVG_Tt1g5 + 8 * v7 + 32) = v10;
      if (!v11 || *(v10 + 24) >> 1 < v18)
      {
        v12 = *(v10 + 16);
        if (v12 <= v18)
        {
          v12 = v18;
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11, v12, 0);
        v6 = v16;
      }

      ++v7;
      *v6 = ML11InteractionVG_Tt1g5;
      v8 += 8;
    }

    while (v15 != v7);
    swift_endAccess(v14);
    return v17;
  }

  return v3;
}

char *_s4HeapAAV12arrayLiteralAByxGxd_tcfC8CreateML11InteractionV_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) >= 2uLL)
  {
    a1;
    v2 = a1;
    if (!swift_isUniquelyReferenced_nonNull_native(a1))
    {
      v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
    }

    specialized Heap._UnsafeHandle.heapify()((v2 + 32), *(v2 + 2));
    a1;
    return v2;
  }

  return v1;
}

Swift::Void __swiftcall InteractionTableBuilder.insert(_:_:score:)(Swift::Int _, Swift::Int a2, Swift::Double score)
{
  if (score > *(v3 + 24))
  {
    v16 = score;
    v5 = (v3 + 40);
    swift_beginAccess(v3 + 40, v14, 0, 0);
    if (_ < 0)
    {
      BUG();
    }

    v6 = *(v3 + 40);
    if (*(v6 + 16) <= _)
    {
      BUG();
    }

    v7 = *(v6 + 8 * _ + 32);
    if (v7[2] < *(v3 + 16))
    {
      swift_beginAccess(v3 + 40, v15, 33, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v6);
      *v5 = v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        *v5 = v6;
      }

      v9 = v16;
      if (*(v6 + 16) <= _)
      {
        BUG();
      }

      v10 = a2;
LABEL_16:
      specialized Heap.insert(_:)(v10, v9);
      *v5 = v6;
      swift_endAccess(v15);
      return;
    }

    specialized Collection.first.getter(v7);
    if ((v12 & 1) == 0 && v16 > v11)
    {
      swift_beginAccess(v3 + 40, v15, 33, 0);
      v13 = swift_isUniquelyReferenced_nonNull_native(v6);
      *v5 = v6;
      if (!v13)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        *v5 = v6;
      }

      if (*(v6 + 16) <= _)
      {
        BUG();
      }

      specialized Heap.popMin()();
      *v5 = v6;
      if (*(v6 + 16) <= _)
      {
        BUG();
      }

      v10 = a2;
      v9 = v16;
      goto LABEL_16;
    }
  }
}

void specialized Heap.insert(_:)(uint64_t a1, double a2)
{
  v3 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  *v2 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
    v3 = *v2;
  }

  v5 = *(v3 + 16);
  v6 = v5 + 1;
  if (*(v3 + 24) >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v5 + 1, 1);
    v3 = *v2;
  }

  *(v3 + 16) = v6;
  v7 = 16 * v5;
  *(v3 + v7 + 32) = a1;
  *(v3 + v7 + 40) = a2;
  _BitScanReverse64(&v8, v6);
  specialized Heap._UnsafeHandle.bubbleUp(_:)(v5, v8, v3 + 32, a2);
  *v2 = v3;
}

uint64_t specialized Heap.popMin()()
{
  if (!*(*v0 + 2))
  {
    return 0;
  }

  v1 = specialized RangeReplaceableCollection<>.removeLast()();
  v3 = v2;
  v4 = *v0;
  if (*(*v0 + 2))
  {
    if (!swift_isUniquelyReferenced_nonNull_native(v4))
    {
      v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    }

    v5 = *(v4 + 2);
    v6 = *(v4 + 4);
    v8 = *(v4 + 5);
    *(v4 + 4) = v3;
    *(v4 + 5) = v1;
    specialized Heap._UnsafeHandle.trickleDownMin(_:)(0, 0, (v4 + 32), v5);
    *v0 = v4;
    return v6;
  }

  return v3;
}

CreateML::InteractionLookupTable __swiftcall InteractionTableBuilder.finalize()()
{
  v1 = *(v0 + 32);
  v2 = v1 + 1;
  if (__OFADD__(1, v1))
  {
    BUG();
  }

  if (v2 <= 0)
  {
    v2 = 0;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, _swiftEmptyArrayStorage);
  v4 = v1 * *(v0 + 16);
  if (!is_mul_ok(v1, *(v0 + 16)))
  {
    BUG();
  }

  v5 = v3;
  if (v4 <= 0)
  {
    v4 = 0;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, _swiftEmptyArrayStorage);
  if (v1 < 0)
  {
    BUG();
  }

  v39 = v6;
  if (v1)
  {
    v7 = 0;
    v8 = (v0 + 40);
    v9 = 0;
    swift_beginAccess(v8, v31, 0, 0);
    v10 = 0;
    v36 = v1;
    v37 = v8;
    do
    {
      v11 = *v8;
      if (v10 >= *(*v8 + 16))
      {
        BUG();
      }

      v33 = v9;
      v32 = v5;
      v35 = v10;
      v38 = *(v11 + 8 * v10 + 32);
      swift_retain_n(v38, 2);
      specialized MutableCollection<>.sort(by:)(&v38);
      v34 = v7;
      if (v7)
      {

        BUG();
      }

      v12 = v38;
      v13 = *(v38 + 2);
      v14 = v39[2];
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        BUG();
      }

      v16 = v39[3] >> 1;

      if (v16 < v15)
      {
        if (v14 > v15)
        {
          v15 = v14;
        }

        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v15, 1, v39);
        v14 = v18[2];
        v17 = *(v12 + 2);
      }

      else
      {
        v17 = v13;
        v18 = v39;
      }

      v39 = v18;
      if (v17)
      {
        if (((v18[3] >> 1) - v14) < v13)
        {
          BUG();
        }

        memcpy(&v18[2 * v14 + 4], v12 + 32, 16 * v13);
        if (v13)
        {
          v19 = __OFADD__(v39[2], v13);
          v20 = v39[2] + v13;
          if (v19)
          {
            BUG();
          }

          v39[2] = v20;
        }
      }

      else if (v13)
      {
        BUG();
      }

      v21 = v32;
      v22 = v32[2];
      if (v32[3] >> 1 <= v22)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v22 + 1, 1, v32);
      }

      v21[2] = v22 + 1;
      v23 = v33;
      v5 = v21;
      v21[v22 + 4] = v33;
      v24 = *(v12 + 2);

      v19 = __OFADD__(v24, v23);
      v9 = v24 + v23;
      if (v19)
      {
        BUG();
      }

      v10 = v35 + 1;
      v1 = v36;
      v8 = v37;
      v7 = v34;
    }

    while (v36 != v35 + 1);
  }

  else
  {
    v9 = 0;
  }

  v25 = v9;
  v26 = v5[2];
  v27 = v5;
  if (v5[3] >> 1 <= v26)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v5[3] >= 2uLL, v26 + 1, 1, v5);
  }

  v28 = v27;
  v27[2] = v26 + 1;
  v27[v26 + 4] = v25;
  v29 = v1;
  v30 = v39;
  result.boundaries._rawValue = v28;
  result.interactions._rawValue = v30;
  result.itemCount = v29;
  return result;
}

unint64_t static InteractionTableBuilder.createFromItemInteractions(interactions:maximumInteractionsPerItem:minimumInteractionScore:)(uint64_t a1, int64_t a2, double a3)
{
  v12 = a3;
  v5 = *(a1 + 16);
  swift_initStackObject(v3, v11);
  InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v5, a2, v12);
  if (v5)
  {
    a1;
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      if (v7 != v8)
      {
        InteractionTableBuilder.insert(_:_:score:)(v7, v8, *v6);
      }

      v6 += 3;
      --v5;
    }

    while (v5);
    a1;
  }

  v9 = InteractionTableBuilder.finalize()();

  return v9;
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  specialized MutableCollection<>.sort(by:)(a1);
}

uint64_t specialized Heap._UnsafeHandle.heapify()(uint64_t a1, uint64_t a2)
{
  v2 = a2 / 2;
  if (a2 < 2)
  {
    BUG();
  }

  v3 = a2 / 2;
  if (v2)
  {
    _BitScanReverse64(&v2, v2);
    v4 = v2 ^ 0x3F;
  }

  else
  {
    v4 = 64;
  }

  v5 = 63 - v4;
  do
  {
    v6 = ~(-1 << v5);
    if (v3 > v6)
    {
      v8 = (1 << (v5 + 1)) - 2;
      if (v8 >= v3)
      {
        v8 = v3 - 1;
      }

      v7 = ~(-1 << v5);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v3 <= v6 || v8 < v7;
    if (v5)
    {
      if (v9)
      {
        goto LABEL_89;
      }

      if (!a1)
      {
        BUG();
      }

      while (1)
      {
        v31 = *(a1 + 16 * v7);
        v32 = *(a1 + 16 * v7 + 8);
        v33 = 4 * v7 + 3;
        v34 = 4 * v7 + 6;
        if (v34 < a2)
        {
          v35 = v7;
          while (1)
          {
            v36 = v33 + 1;
            if (*(a1 + 16 * (v33 + 1) + 8) <= *(a1 + 16 * v33 + 8))
            {
              v36 = v33;
            }

            v37 = v33 + 2;
            if (*(a1 + 16 * v34 + 8) <= *(a1 + 16 * v37 + 8))
            {
              v34 = v37;
            }

            v38 = v34;
            if (*(a1 + 16 * v34 + 8) <= *(a1 + 16 * v36 + 8))
            {
              v38 = v36;
            }

            v39 = *(a1 + 16 * v38 + 8);
            if (v39 <= v32)
            {
              break;
            }

            v40 = 16 * v35;
            *(a1 + v40) = *(a1 + 16 * v38);
            *(a1 + v40 + 8) = v39;
            v41 = 16 * ((v38 - 1) / 2);
            v42 = *(a1 + v41 + 8);
            if (v42 <= v32)
            {
              v42 = v32;
            }

            else
            {
              v43 = (a1 + v41);
              v44 = *v43;
              *v43 = v31;
              v43[1] = v32;
              v31 = v44;
              v32 = v42;
            }

            v33 = 4 * v38 + 3;
            v34 = 4 * v38 + 6;
            v35 = v38;
            if (v34 >= a2)
            {
              goto LABEL_68;
            }
          }

          v42 = v32;
          goto LABEL_88;
        }

        v38 = v7;
        v42 = *(a1 + 16 * v7 + 8);
LABEL_68:
        v35 = 2 * v38 + 1;
        if (v35 >= a2)
        {
          goto LABEL_87;
        }

        v45 = 2 * v38;
        if (v33 >= a2)
        {
          v47 = v45 + 2;
        }

        else
        {
          v35 = v33 + 2;
          if (v33 + 2 < a2)
          {
            v46 = v33 + 1;
            if (*(a1 + 16 * (v33 + 1) + 8) <= *(a1 + 16 * v33 + 8))
            {
              v46 = v33;
            }

            if (*(a1 + 16 * v35 + 8) <= *(a1 + 16 * v46 + 8))
            {
              v35 = v46;
            }

            goto LABEL_83;
          }

          v35 = v45 + 2;
          if (*(a1 + 16 * v33 + 8) > *(a1 + 16 * (v45 + 2) + 8))
          {
            v35 = v33;
          }

          v47 = v33 + 1;
        }

        if (v47 < a2 && *(a1 + 16 * v47 + 8) > *(a1 + 16 * v35 + 8))
        {
          v35 = v47;
        }

LABEL_83:
        v48 = *(a1 + 16 * v35 + 8);
        if (v48 > v42)
        {
          v49 = a1 + 16 * v35;
          v50 = 16 * v38;
          *(a1 + v50) = *v49;
          *(a1 + v50 + 8) = v48;
          if (v35 >= v33)
          {
            v51 = 16 * ((v35 - 1) / 2);
            v52 = *(a1 + v51 + 8);
            if (v52 > v42)
            {
              *v49 = *(a1 + v51);
              *(v49 + 8) = v52;
              v35 = (v35 - 1) / 2;
            }
          }

          goto LABEL_88;
        }

LABEL_87:
        v35 = v38;
LABEL_88:
        v53 = 16 * v35;
        *(a1 + v53) = v31;
        *(a1 + v53 + 8) = v42;
        if (v8 < ++v7)
        {
          goto LABEL_89;
        }
      }
    }

    if (!v9)
    {
      if (!a1)
      {
        BUG();
      }

      do
      {
        v10 = *(a1 + 16 * v7);
        v11 = *(a1 + 16 * v7 + 8);
        v12 = 4 * v7 + 3;
        v13 = 4 * v7 + 6;
        if (v13 < a2)
        {
          v14 = v7;
          while (1)
          {
            v15 = v12;
            if (*(a1 + 16 * (v12 + 1) + 8) <= *(a1 + 16 * v12 + 8))
            {
              v15 = v12 + 1;
            }

            v16 = v12 + 2;
            if (*(a1 + 16 * v13 + 8) <= *(a1 + 16 * v16 + 8))
            {
              v16 = v13;
            }

            if (*(a1 + 16 * v16 + 8) <= *(a1 + 16 * v15 + 8))
            {
              v15 = v16;
            }

            v17 = *(a1 + 16 * v15 + 8);
            if (v11 <= v17)
            {
              break;
            }

            v18 = 16 * v14;
            *(a1 + v18) = *(a1 + 16 * v15);
            *(a1 + v18 + 8) = v17;
            v19 = 16 * ((v15 - 1) / 2);
            v20 = *(a1 + v19 + 8);
            if (v11 <= v20)
            {
              v20 = v11;
            }

            else
            {
              v21 = (a1 + v19);
              v22 = *v21;
              *v21 = v10;
              v21[1] = v11;
              v10 = v22;
              v11 = v20;
            }

            v12 = 4 * v15 + 3;
            v13 = 4 * v15 + 6;
            v14 = v15;
            if (v13 >= a2)
            {
              goto LABEL_29;
            }
          }

          v20 = v11;
          goto LABEL_49;
        }

        v15 = v7;
        v20 = *(a1 + 16 * v7 + 8);
LABEL_29:
        v14 = 2 * v15 + 1;
        if (v14 >= a2)
        {
          goto LABEL_48;
        }

        v23 = 2 * v15;
        if (v12 >= a2)
        {
          v24 = v23 + 2;
        }

        else
        {
          if (v12 + 2 < a2)
          {
            v14 = v12 + 1;
            if (*(a1 + 16 * (v12 + 1) + 8) > *(a1 + 16 * v12 + 8))
            {
              v14 = v12;
            }

            if (*(a1 + 16 * (v12 + 2) + 8) <= *(a1 + 16 * v14 + 8))
            {
              v14 = v12 + 2;
            }

            goto LABEL_44;
          }

          v14 = v23 + 2;
          if (*(a1 + 16 * v12 + 8) <= *(a1 + 16 * (v23 + 2) + 8))
          {
            v14 = v12;
          }

          v24 = v12 + 1;
        }

        if (v24 < a2 && *(a1 + 16 * v24 + 8) <= *(a1 + 16 * v14 + 8))
        {
          v14 = v24;
        }

LABEL_44:
        v25 = *(a1 + 16 * v14 + 8);
        if (v20 > v25)
        {
          v26 = a1 + 16 * v14;
          v27 = 16 * v15;
          *(a1 + v27) = *v26;
          *(a1 + v27 + 8) = v25;
          if (v14 >= v12)
          {
            v28 = 16 * ((v14 - 1) / 2);
            v29 = *(a1 + v28 + 8);
            if (v20 > v29)
            {
              *v26 = *(a1 + v28);
              *(v26 + 8) = v29;
              v14 = (v14 - 1) / 2;
            }
          }

          goto LABEL_49;
        }

LABEL_48:
        v14 = v15;
LABEL_49:
        v30 = 16 * v14;
        *(a1 + v30) = v10;
        *(a1 + v30 + 8) = v20;
        ++v7;
      }

      while (v8 >= v7);
    }

LABEL_89:
    result = v5 - 1;
  }

  while (v5-- > 0);
  return result;
}

uint64_t specialized Heap._UnsafeHandle.trickleDownMin(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    BUG();
  }

  v6 = a1;
  v7 = *(a3 + 16 * a1);
  v8 = *(a3 + 16 * a1 + 8);
  v9 = 4 * a1 + 3;
  result = 4 * a1 + 6;
  if (result >= a4)
  {
    v19 = a2 + 2;
LABEL_15:
    v20 = 2 * v6 + 1;
    if (v20 < a4)
    {
      result = specialized Heap._UnsafeHandle._minDescendant(c0:gc0:)(v20, a2 + 1, v9, v19, a3, a4);
      v21 = *(a3 + 16 * result + 8);
      if (v8 > v21)
      {
        v22 = result;
        v23 = a3 + 16 * result;
        result = *v23;
        v24 = 16 * v6;
        *(a3 + v24) = *v23;
        *(a3 + v24 + 8) = v21;
        if (v22 < v9 || (v6 = (v22 - 1) / 2, result = 16 * v6, v25 = *(a3 + 16 * v6 + 8), v8 <= v25))
        {
          v6 = v22;
        }

        else
        {
          result = *(a3 + 16 * v6);
          *v23 = result;
          *(v23 + 8) = v25;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = v9;
      if (*(a3 + 16 * (v9 + 1) + 8) <= *(a3 + 16 * v9 + 8))
      {
        v11 = v9 + 1;
      }

      v12 = v9 + 2;
      if (*(a3 + 16 * result + 8) <= *(a3 + 16 * v12 + 8))
      {
        v12 = result;
      }

      if (*(a3 + 16 * v12 + 8) <= *(a3 + 16 * v11 + 8))
      {
        v11 = v12;
      }

      result = 16 * v11;
      v13 = *(a3 + 16 * v11 + 8);
      if (v8 <= v13)
      {
        break;
      }

      v14 = 16 * v6;
      *(a3 + v14) = *(a3 + 16 * v11);
      *(a3 + v14 + 8) = v13;
      v15 = 16 * ((v11 - 1) / 2);
      v16 = *(a3 + v15 + 8);
      if (v8 > v16)
      {
        v17 = a3 + v15;
        v18 = *v17;
        *v17 = v7;
        *(v17 + 8) = v8;
        v7 = v18;
        v8 = v16;
      }

      v9 = 4 * v11 + 3;
      result = 4 * v11 + 6;
      a2 += 2;
      v6 = v11;
      if (result >= a4)
      {
        v19 = a2 + 2;
        v6 = v11;
        goto LABEL_15;
      }
    }
  }

  v26 = 16 * v6;
  *(a3 + v26) = v7;
  *(a3 + v26 + 8) = v8;
  return result;
}

uint64_t specialized Heap._UnsafeHandle._minDescendant(c0:gc0:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= a6)
  {
    result = a1 + 1;
    if (a1 + 1 >= a6)
    {
      return a1;
    }

    else if (*(a5 + 16 * result + 8) > *(a5 + 16 * a1 + 8))
    {
      return a1;
    }
  }

  else
  {
    result = a3 + 2;
    if (a3 + 2 >= a6)
    {
      result = a1 + 1;
      if (*(a5 + 16 * a3 + 8) <= *(a5 + 16 * (a1 + 1) + 8))
      {
        result = a3;
      }

      v8 = a3 + 1;
      if (v8 < a6 && *(a5 + 16 * v8 + 8) <= *(a5 + 16 * result + 8))
      {
        return v8;
      }
    }

    else
    {
      v7 = a3 + 1;
      if (*(a5 + 16 * (a3 + 1) + 8) > *(a5 + 16 * a3 + 8))
      {
        v7 = a3;
      }

      if (*(a5 + 16 * result + 8) > *(a5 + 16 * v7 + 8))
      {
        return v7;
      }
    }
  }

  return result;
}

double specialized RangeReplaceableCollection<>.removeLast()()
{
  if (!*(*v0 + 16))
  {
    BUG();
  }

  specialized ContiguousArray._customRemoveLast()();
  if (v2)
  {
    return specialized ContiguousArray.remove(at:)(*(*v0 + 16) - 1);
  }

  else
  {
    return v1;
  }
}

double specialized Heap._UnsafeHandle.bubbleUp(_:)(uint64_t a1, char a2, uint64_t a3, double result)
{
  if (!a1)
  {
    return result;
  }

  v5 = a2;
  result = *(a3 + 16 * a1 + 8);
  v6 = *(a3 + 16 * ((a1 - 1) / 2) + 8);
  if (a2)
  {
    if (v6 <= result)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (result > v6)
  {
LABEL_6:
    v5 = a2 - 1;
    specialized UnsafeMutableBufferPointer.swapAt(_:_:)(a1, (a1 - 1) / 2, a3);
    a1 = (a1 - 1) / 2;
  }

LABEL_7:
  if (v5)
  {
    if (a1 > 2)
    {
      v12 = (a1 - 3) >> 2;
      result = *(a3 + 16 * v12 + 8);
      if (*(a3 + 16 * a1 + 8) > result)
      {
        do
        {
          if (a1 != v12)
          {
            if (!a3)
            {
              BUG();
            }

            v13 = 16 * a1;
            v14 = 16 * v12;
            v15 = *(a3 + v13);
            result = *(a3 + v13 + 8);
            *(a3 + v13) = *(a3 + 16 * v12);
            *(a3 + v14) = v15;
            *(a3 + v14 + 8) = result;
            if (v12 < 3)
            {
              break;
            }
          }

          a1 = v12;
          v12 = (v12 - 3) >> 2;
          v11 = result <= *(a3 + 16 * v12 + 8);
          result = *(a3 + 16 * v12 + 8);
        }

        while (!v11);
      }
    }
  }

  else if (a1 > 2)
  {
    v7 = (a1 - 3) >> 2;
    result = *(a3 + 16 * v7 + 8);
    if (result > *(a3 + 16 * a1 + 8))
    {
      do
      {
        if (a1 != v7)
        {
          if (!a3)
          {
            BUG();
          }

          v8 = 16 * a1;
          v9 = 16 * v7;
          v10 = *(a3 + v8);
          result = *(a3 + v8 + 8);
          *(a3 + v8) = *(a3 + 16 * v7);
          *(a3 + v9) = v10;
          *(a3 + v9 + 8) = result;
          if (v7 < 3)
          {
            break;
          }
        }

        a1 = v7;
        v7 = (v7 - 3) >> 2;
        v11 = *(a3 + 16 * v7 + 8) <= result;
        result = *(a3 + 16 * v7 + 8);
      }

      while (!v11);
    }
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v79 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v86 = v1;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for Interaction);
      *(v4 + 16) = v2 / 2;
      v83 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v83 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v82 = v5;
      v6 = *a1;
      v73 = *a1 + 32;
      v76 = *a1 - 16;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v84 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 16 * v10);
          v12 = 16 * v8;
          v13 = *(v6 + 16 * v8);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v14 = (v12 + v73);
            v15 = v11;
            while (1)
            {
              v16 = v15;
              v15 = *v14;
              if (v11 < v13 == *v14 >= v16)
              {
                break;
              }

              ++v10;
              v14 += 2;
              if (v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v11 < v13)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v17 = v76 + 16 * v10;
              v18 = (v6 + v12);
              v19 = v10;
              v20 = v8;
              do
              {
                if (v20 != --v19)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v21 = *v18;
                  v22 = v18[1];
                  *v18 = *v17;
                  *v17 = v21;
                  *(v17 + 8) = v22;
                }

                ++v20;
                v17 -= 16;
                v18 += 2;
              }

              while (v20 < v19);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v72)
          {
            v23 = v72 + v8;
            if (__OFADD__(v72, v8))
            {
              BUG();
            }

            if (v23 >= v9)
            {
              v23 = v9;
            }

            if (v23 < v8)
            {
              BUG();
            }

            if (v10 != v23)
            {
              v24 = v76 + 16 * v10;
              do
              {
                v25 = *(v6 + 16 * v10);
                v26 = v8;
                v27 = v24;
                do
                {
                  if (v25 >= *v27)
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  v28 = *(v27 + 24);
                  *(v27 + 16) = *v27;
                  *v27 = v25;
                  *(v27 + 8) = v28;
                  v27 -= 16;
                  ++v26;
                }

                while (v10 != v26);
                ++v10;
                v24 += 16;
              }

              while (v10 != v23);
              v10 = v23;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v29 = v7;
        v75 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v29;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v7 + 2);
        v31 = v30 + 1;
        v6 = v84;
        if (*(v7 + 3) >> 1 <= v30)
        {
          v6 = v84;
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v30 + 1, 1, v7);
        }

        *(v7 + 2) = v31;
        v32 = 16 * v30;
        *&v7[v32 + 32] = v8;
        *&v7[v32 + 40] = v75;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v9 = v79;
        v8 = v75;
        if (v75 >= v79)
        {
          goto LABEL_84;
        }
      }

      v33 = v7 + 32;
      v87 = v7;
      v71 = v7 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v7[v39 + 8];
          v36 = __OFSUB__(v43, *&v7[16 * v31]);
          v44 = v43 - *&v7[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v7[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v7[16 * v31]);
            v47 = v51 - *&v7[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v7 + 5);
          v36 = __OFSUB__(v35, *(v7 + 4));
          v37 = v35 - *(v7 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v7[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v7[16 * v31]);
        v47 = v46 - *&v7[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v80 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 16 * v57), (v6 + 16 * *__dst), (v6 + 16 * v58), v82);
        if (v86)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v80 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v80 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v80));
        v7 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v6 = v84;
        v33 = v71;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v82 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v83 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v7;
      v83[2] = 0;
      v83;
    }

    else
    {
      v62 = *a1;
      v85 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v31 - 1);
        v64 = *&v7[16 * v31];
        v87 = v7;
        v81 = *&v7[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v7[v63 + 32]), (v62 + 16 * v81), v82);
        if (v86)
        {
          break;
        }

        if (v81 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v65 = v87;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v66 = *(v65 + 2);
        if (v31 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v31] = __dsta;
        *&v65[16 * v31 + 8] = v81;
        v67 = v66 - v31;
        if (v66 < v31)
        {
          BUG();
        }

        v31 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v7 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v85;
        if (v66 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v83[2] = 0;
      v83;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v89 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v82 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for MLObjectDetector.ObjectAnnotation);
      *(v4 + 16) = v2 / 2;
      v93 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v93 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v92 = v5;
      v6 = *a1;
      v83 = *a1 + 160;
      v85 = *a1 - 56;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v94 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 56 * v10 + 48);
          v12 = 56 * v8;
          v13 = *(v6 + 56 * v8 + 48);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v14 = (v12 + v83);
            v15 = v11;
            while (1)
            {
              v16 = v15;
              v15 = *v14;
              if (v11 > v13 == *v14 <= v16)
              {
                break;
              }

              ++v10;
              v14 += 7;
              if (v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v11 > v13)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v17 = v85 + 56 * v10;
              v18 = v6 + v12;
              v19 = v10;
              v20 = v8;
              do
              {
                if (v20 != --v19)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v21 = *v18;
                  v22 = *(v18 + 48);
                  v23 = *(v18 + 16);
                  v24 = *(v18 + 32);
                  v25 = *(v17 + 48);
                  v26 = *(v17 + 16);
                  v27 = *(v17 + 32);
                  *v18 = *v17;
                  *(v18 + 48) = v25;
                  *(v18 + 32) = v27;
                  *(v18 + 16) = v26;
                  *v17 = v21;
                  *(v17 + 16) = v23;
                  *(v17 + 32) = v24;
                  *(v17 + 48) = v22;
                }

                ++v20;
                v17 -= 56;
                v18 += 56;
              }

              while (v20 < v19);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v82)
          {
            v28 = v82 + v8;
            if (__OFADD__(v82, v8))
            {
              BUG();
            }

            if (v28 >= v9)
            {
              v28 = v9;
            }

            if (v28 < v8)
            {
              BUG();
            }

            if (v10 != v28)
            {
              v29 = v6 + 56 * v10;
              do
              {
                v30 = *(v6 + 56 * v10 + 48);
                v31 = v8;
                v32 = v29;
                do
                {
                  if (v30 <= *(v32 - 8))
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  v33 = *v32;
                  v34 = *(v32 + 16);
                  v35 = *(v32 + 32);
                  v36 = *(v32 - 56 + 16);
                  v37 = *(v32 - 56 + 32);
                  *v32 = *(v32 - 56);
                  *(v32 + 16) = v36;
                  *(v32 + 32) = v37;
                  *(v32 + 48) = *(v32 - 56 + 48);
                  *(v32 - 56) = v33;
                  *(v32 - 40) = v34;
                  *(v32 - 24) = v35;
                  *(v32 - 8) = v30;
                  ++v31;
                  v32 -= 56;
                }

                while (v10 != v31);
                ++v10;
                v29 += 56;
              }

              while (v10 != v28);
              v10 = v28;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v38 = v7;
        v86 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v38;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
        }

        v39 = *(v7 + 2);
        v40 = v39 + 1;
        v6 = v94;
        if (*(v7 + 3) >> 1 <= v39)
        {
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v39 + 1, 1, v7);
          v6 = v94;
          v7 = v71;
        }

        *(v7 + 2) = v40;
        v41 = 16 * v39;
        *&v7[v41 + 32] = v8;
        *&v7[v41 + 40] = v86;
        if (v39)
        {
          break;
        }

        v40 = 1;
LABEL_80:
        v9 = v89;
        v8 = v86;
        if (v86 >= v89)
        {
          goto LABEL_84;
        }
      }

      v42 = v7 + 32;
      v96 = v7;
      v81 = v7 + 32;
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          v48 = 16 * v40;
          v49 = *&v42[16 * v40 - 56];
          v45 = __OFSUB__(v49, *&v42[16 * v40 - 64]);
          v50 = v49 - *&v42[16 * v40 - 64];
          if (v45)
          {
            BUG();
          }

          v51 = *&v42[v48 - 40];
          v45 = __OFSUB__(v51, *&v42[v48 - 48]);
          v46 = v51 - *&v42[v48 - 48];
          v47 = v45;
          if (v45)
          {
            BUG();
          }

          v52 = *&v7[v48 + 8];
          v45 = __OFSUB__(v52, *&v7[16 * v40]);
          v53 = v52 - *&v7[16 * v40];
          if (v45)
          {
            BUG();
          }

          v45 = __OFADD__(v46, v53);
          v54 = v46 + v53;
          if (v45)
          {
            BUG();
          }

          if (v54 >= v50)
          {
            v63 = *&v42[16 * v43 + 8];
            v45 = __OFSUB__(v63, *&v42[16 * v43]);
            v64 = v63 - *&v42[16 * v43];
            if (v45)
            {
              BUG();
            }

            if (v46 < v64)
            {
LABEL_70:
              v43 = v40 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v40 != 3)
          {
            if (v40 < 2)
            {
              BUG();
            }

            v60 = *&v7[16 * v40 + 8];
            v45 = __OFSUB__(v60, *&v7[16 * v40]);
            v56 = v60 - *&v7[16 * v40];
            v57 = v45;
LABEL_64:
            if (v57)
            {
              BUG();
            }

            v61 = *&v42[16 * v43 + 8];
            v45 = __OFSUB__(v61, *&v42[16 * v43]);
            v62 = v61 - *&v42[16 * v43];
            if (v45)
            {
              BUG();
            }

            if (v62 < v56)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v44 = *(v7 + 5);
          v45 = __OFSUB__(v44, *(v7 + 4));
          v46 = v44 - *(v7 + 4);
          v47 = v45;
        }

        if (v47)
        {
          BUG();
        }

        v55 = *&v7[16 * v40 + 8];
        v45 = __OFSUB__(v55, *&v7[16 * v40]);
        v56 = v55 - *&v7[16 * v40];
        v57 = v45;
        if (v45)
        {
          BUG();
        }

        v58 = *&v42[16 * v43 + 8];
        v45 = __OFSUB__(v58, *&v42[16 * v43]);
        v59 = v58 - *&v42[16 * v43];
        if (v45)
        {
          BUG();
        }

        if (__OFADD__(v59, v56))
        {
          BUG();
        }

        if (v59 + v56 < v46)
        {
          goto LABEL_64;
        }

        if (v46 < v59)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v43 - 1 >= v40)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v65 = 16 * (v43 - 1);
        v90 = v43;
        v66 = *&v42[v65];
        v67 = *&v42[16 * v43 + 8];
        __dst = &v42[16 * v43];
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 56 * v66), (v6 + 56 * *__dst), (v6 + 56 * v67), v92);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v67 < v66)
        {
          BUG();
        }

        v68 = &v42[v65];
        v69 = *(v96 + 16);
        if (v90 > v69)
        {
          BUG();
        }

        *v68 = v66;
        *(v68 + 1) = v67;
        if (v90 >= v69)
        {
          BUG();
        }

        v40 = v69 - 1;
        memmove(__dst, __dst + 16, 16 * (v69 - 1 - v90));
        v7 = v96;
        *(v96 + 16) = v69 - 1;
        v70 = v69 <= 2;
        v6 = v94;
        v42 = v81;
        if (v70)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v92 = &_swiftEmptyArrayStorage[4];
    v40 = _swiftEmptyArrayStorage[2];
    v93 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v40 < 2)
    {
LABEL_98:
      v7;
      v93[2] = 0;
      v93;
    }

    else
    {
      v72 = *a1;
      v95 = *a1;
      while (1)
      {
        if (!v72)
        {
          BUG();
        }

        v73 = 16 * (v40 - 1);
        v74 = *&v7[16 * v40];
        v96 = v7;
        v91 = *&v7[v73 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v72 + 56 * v74), (v72 + 56 * *&v7[v73 + 32]), (v72 + 56 * v91), v92);
        if (v1)
        {
          break;
        }

        if (v91 < v74)
        {
          BUG();
        }

        __dsta = v74;
        if (swift_isUniquelyReferenced_nonNull_native(v96))
        {
          v75 = v96;
        }

        else
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew()(v96);
        }

        v76 = *(v75 + 2);
        if (v40 - 2 >= v76)
        {
          BUG();
        }

        *&v75[16 * v40] = __dsta;
        *&v75[16 * v40 + 8] = v91;
        v77 = v76 - v40;
        if (v76 < v40)
        {
          BUG();
        }

        v40 = v76 - 1;
        v78 = &v75[v73 + 32];
        v79 = &v75[v73 + 48];
        v80 = v75;
        memmove(v78, v79, 16 * v77);
        v7 = v80;
        *(v80 + 2) = v76 - 1;
        v72 = v95;
        if (v76 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v96;
      v93[2] = 0;
      v93;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v80 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v73 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for Interaction);
      *(v4 + 16) = v2 / 2;
      v84 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v84 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v83 = v5;
      v6 = *a1;
      v74 = *a1 + 40;
      v76 = *a1 - 16;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v85 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 16 * v10 + 8);
          v12 = 16 * v8;
          v13 = *(v6 + 16 * v8 + 8);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v14 = (v12 + v74);
            v15 = v11;
            while (1)
            {
              v16 = v15;
              v15 = *v14;
              if (v13 > v11 == v16 <= *v14)
              {
                break;
              }

              ++v10;
              v14 += 2;
              if (v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v13 > v11)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v17 = v76 + 16 * v10;
              v18 = (v6 + v12);
              v19 = v10;
              v20 = v8;
              do
              {
                if (v20 != --v19)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v21 = *v18;
                  v22 = v18[1];
                  *v18 = *v17;
                  *v17 = v21;
                  *(v17 + 8) = v22;
                }

                ++v20;
                v17 -= 16;
                v18 += 2;
              }

              while (v20 < v19);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v73)
          {
            v23 = v73 + v8;
            if (__OFADD__(v73, v8))
            {
              BUG();
            }

            if (v23 >= v9)
            {
              v23 = v9;
            }

            if (v23 < v8)
            {
              BUG();
            }

            if (v10 != v23)
            {
              v24 = (v6 + 16 * v10);
              do
              {
                v25 = *(v6 + 16 * v10 + 8);
                v26 = v8;
                v27 = v24;
                do
                {
                  if (*(v27 - 1) <= v25)
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  v28 = *v27;
                  *v27 = *(v27 - 1);
                  *(v27 - 2) = v28;
                  *(v27 - 1) = v25;
                  ++v26;
                  v27 -= 2;
                }

                while (v10 != v26);
                ++v10;
                v24 += 2;
              }

              while (v10 != v23);
              v10 = v23;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v29 = v7;
        v77 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v29;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v7 + 2);
        v31 = v30 + 1;
        v6 = v85;
        if (*(v7 + 3) >> 1 <= v30)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v30 + 1, 1, v7);
          v6 = v85;
          v7 = v62;
        }

        *(v7 + 2) = v31;
        v32 = 16 * v30;
        *&v7[v32 + 32] = v8;
        *&v7[v32 + 40] = v77;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v9 = v80;
        v8 = v77;
        if (v77 >= v80)
        {
          goto LABEL_84;
        }
      }

      v33 = v7 + 32;
      v87 = v7;
      v72 = v7 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v7[v39 + 8];
          v36 = __OFSUB__(v43, *&v7[16 * v31]);
          v44 = v43 - *&v7[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v7[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v7[16 * v31]);
            v47 = v51 - *&v7[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v7 + 5);
          v36 = __OFSUB__(v35, *(v7 + 4));
          v37 = v35 - *(v7 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v7[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v7[16 * v31]);
        v47 = v46 - *&v7[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v81 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 16 * v57), (v6 + 16 * *__dst), (v6 + 16 * v58), v83);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v81 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v81 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v81));
        v7 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v6 = v85;
        v33 = v72;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v83 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v84 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v7;
      v84[2] = 0;
      v84;
    }

    else
    {
      v63 = *a1;
      v86 = *a1;
      while (1)
      {
        if (!v63)
        {
          BUG();
        }

        v64 = 16 * (v31 - 1);
        v65 = *&v7[16 * v31];
        v87 = v7;
        v82 = *&v7[v64 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v63 + 16 * v65), (v63 + 16 * *&v7[v64 + 32]), (v63 + 16 * v82), v83);
        if (v1)
        {
          break;
        }

        if (v82 < v65)
        {
          BUG();
        }

        __dsta = v65;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v66 = v87;
        }

        else
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v67 = *(v66 + 2);
        if (v31 - 2 >= v67)
        {
          BUG();
        }

        *&v66[16 * v31] = __dsta;
        *&v66[16 * v31 + 8] = v82;
        v68 = v67 - v31;
        if (v67 < v31)
        {
          BUG();
        }

        v31 = v67 - 1;
        v69 = &v66[v64 + 32];
        v70 = &v66[v64 + 48];
        v71 = v66;
        memmove(v69, v70, 16 * v68);
        v7 = v71;
        *(v71 + 2) = v67 - 1;
        v63 = v86;
        if (v67 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v84[2] = 0;
      v84;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v80 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v73 = v3;
    v87 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Double));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v84 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v84 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v83 = v6;
      v7 = *a1;
      v74 = *a1 + 32;
      v77 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v85 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v74);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 < v14 == *v15 >= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 < v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = v77 + 16 * v11;
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  v23 = v19[1];
                  *v19 = *v18;
                  *v18 = v22;
                  *(v18 + 8) = v23;
                }

                ++v21;
                v18 -= 16;
                v19 += 2;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v73)
          {
            v24 = v73 + v9;
            if (__OFADD__(v73, v9))
            {
              BUG();
            }

            if (v24 >= v10)
            {
              v24 = v10;
            }

            if (v24 < v9)
            {
              BUG();
            }

            if (v11 != v24)
            {
              v25 = v77 + 16 * v11;
              do
              {
                v26 = *(v7 + 16 * v11);
                v27 = v9;
                v28 = v25;
                do
                {
                  if (v26 >= *v28)
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v29 = *(v28 + 24);
                  *(v28 + 16) = *v28;
                  *v28 = v26;
                  *(v28 + 8) = v29;
                  v28 -= 16;
                  ++v27;
                }

                while (v11 != v27);
                ++v11;
                v25 += 16;
              }

              while (v11 != v24);
              v11 = v24;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v30 = v8;
        v76 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v30;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v31 = *(v8 + 2);
        v32 = v31 + 1;
        v7 = v85;
        if (*(v8 + 3) >> 1 <= v31)
        {
          v7 = v85;
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v31 + 1, 1, v8);
        }

        *(v8 + 2) = v32;
        v33 = 16 * v31;
        *&v8[v33 + 32] = v9;
        *&v8[v33 + 40] = v76;
        if (v31)
        {
          break;
        }

        v32 = 1;
LABEL_80:
        v10 = v80;
        v9 = v76;
        if (v76 >= v80)
        {
          goto LABEL_84;
        }
      }

      v34 = v8 + 32;
      v88 = v8;
      v72 = v8 + 32;
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = 16 * v32;
          v41 = *&v34[16 * v32 - 56];
          v37 = __OFSUB__(v41, *&v34[16 * v32 - 64]);
          v42 = v41 - *&v34[16 * v32 - 64];
          if (v37)
          {
            BUG();
          }

          v43 = *&v34[v40 - 40];
          v37 = __OFSUB__(v43, *&v34[v40 - 48]);
          v38 = v43 - *&v34[v40 - 48];
          v39 = v37;
          if (v37)
          {
            BUG();
          }

          v44 = *&v8[v40 + 8];
          v37 = __OFSUB__(v44, *&v8[16 * v32]);
          v45 = v44 - *&v8[16 * v32];
          if (v37)
          {
            BUG();
          }

          v37 = __OFADD__(v38, v45);
          v46 = v38 + v45;
          if (v37)
          {
            BUG();
          }

          if (v46 >= v42)
          {
            v55 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v55, *&v34[16 * v35]);
            v56 = v55 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v38 < v56)
            {
LABEL_70:
              v35 = v32 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v32 != 3)
          {
            if (v32 < 2)
            {
              BUG();
            }

            v52 = *&v8[16 * v32 + 8];
            v37 = __OFSUB__(v52, *&v8[16 * v32]);
            v48 = v52 - *&v8[16 * v32];
            v49 = v37;
LABEL_64:
            if (v49)
            {
              BUG();
            }

            v53 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v53, *&v34[16 * v35]);
            v54 = v53 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v54 < v48)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v36 = *(v8 + 5);
          v37 = __OFSUB__(v36, *(v8 + 4));
          v38 = v36 - *(v8 + 4);
          v39 = v37;
        }

        if (v39)
        {
          BUG();
        }

        v47 = *&v8[16 * v32 + 8];
        v37 = __OFSUB__(v47, *&v8[16 * v32]);
        v48 = v47 - *&v8[16 * v32];
        v49 = v37;
        if (v37)
        {
          BUG();
        }

        v50 = *&v34[16 * v35 + 8];
        v37 = __OFSUB__(v50, *&v34[16 * v35]);
        v51 = v50 - *&v34[16 * v35];
        if (v37)
        {
          BUG();
        }

        if (__OFADD__(v51, v48))
        {
          BUG();
        }

        if (v51 + v48 < v38)
        {
          goto LABEL_64;
        }

        if (v38 < v51)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v35 - 1 >= v32)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v57 = 16 * (v35 - 1);
        v81 = v35;
        v58 = *&v34[v57];
        v59 = *&v34[16 * v35 + 8];
        __dst = &v34[16 * v35];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v58), (v7 + 16 * *__dst), (v7 + 16 * v59), v83);
        if (v87)
        {
          goto LABEL_96;
        }

        if (v59 < v58)
        {
          BUG();
        }

        v60 = &v34[v57];
        v61 = *(v88 + 16);
        if (v81 > v61)
        {
          BUG();
        }

        *v60 = v58;
        *(v60 + 1) = v59;
        if (v81 >= v61)
        {
          BUG();
        }

        v32 = v61 - 1;
        memmove(__dst, __dst + 16, 16 * (v61 - 1 - v81));
        v8 = v88;
        *(v88 + 16) = v61 - 1;
        v62 = v61 <= 2;
        v7 = v85;
        v34 = v72;
        if (v62)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v83 = &_swiftEmptyArrayStorage[4];
    v32 = _swiftEmptyArrayStorage[2];
    v84 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v32 < 2)
    {
LABEL_98:
      v8;
      v84[2] = 0;
      v84;
    }

    else
    {
      v63 = *a1;
      v86 = *a1;
      while (1)
      {
        if (!v63)
        {
          BUG();
        }

        v64 = 16 * (v32 - 1);
        v65 = *&v8[16 * v32];
        v88 = v8;
        v82 = *&v8[v64 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v63 + 16 * v65), (v63 + 16 * *&v8[v64 + 32]), (v63 + 16 * v82), v83);
        if (v87)
        {
          break;
        }

        if (v82 < v65)
        {
          BUG();
        }

        __dsta = v65;
        if (swift_isUniquelyReferenced_nonNull_native(v88))
        {
          v66 = v88;
        }

        else
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v88);
        }

        v67 = *(v66 + 2);
        if (v32 - 2 >= v67)
        {
          BUG();
        }

        *&v66[16 * v32] = __dsta;
        *&v66[16 * v32 + 8] = v82;
        v68 = v67 - v32;
        if (v67 < v32)
        {
          BUG();
        }

        v32 = v67 - 1;
        v69 = &v66[v64 + 32];
        v70 = &v66[v64 + 48];
        v71 = v66;
        memmove(v69, v70, 16 * v68);
        v8 = v71;
        *(v71 + 2) = v67 - 1;
        v63 = v86;
        if (v67 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v88;
      v84[2] = 0;
      v84;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v81 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v74 = v3;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Double));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v85 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v85 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v84 = v6;
      v7 = *a1;
      v75 = *a1 + 40;
      v77 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v86 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11 + 8);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9 + 8);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v75);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 > v14 == *v15 <= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 > v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = v77 + 16 * v11;
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  v23 = v19[1];
                  *v19 = *v18;
                  *v18 = v22;
                  *(v18 + 8) = v23;
                }

                ++v21;
                v18 -= 16;
                v19 += 2;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v74)
          {
            v24 = v74 + v9;
            if (__OFADD__(v74, v9))
            {
              BUG();
            }

            if (v24 >= v10)
            {
              v24 = v10;
            }

            if (v24 < v9)
            {
              BUG();
            }

            if (v11 != v24)
            {
              v25 = (v7 + 16 * v11);
              do
              {
                v26 = *(v7 + 16 * v11 + 8);
                v27 = v9;
                v28 = v25;
                do
                {
                  if (v26 <= *(v28 - 1))
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v29 = *v28;
                  *v28 = *(v28 - 1);
                  *(v28 - 2) = v29;
                  *(v28 - 1) = v26;
                  ++v27;
                  v28 -= 2;
                }

                while (v11 != v27);
                ++v11;
                v25 += 2;
              }

              while (v11 != v24);
              v11 = v24;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v30 = v8;
        v78 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v30;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v31 = *(v8 + 2);
        v32 = v31 + 1;
        v7 = v86;
        if (*(v8 + 3) >> 1 <= v31)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v31 + 1, 1, v8);
          v7 = v86;
          v8 = v63;
        }

        *(v8 + 2) = v32;
        v33 = 16 * v31;
        *&v8[v33 + 32] = v9;
        *&v8[v33 + 40] = v78;
        if (v31)
        {
          break;
        }

        v32 = 1;
LABEL_80:
        v10 = v81;
        v9 = v78;
        if (v78 >= v81)
        {
          goto LABEL_84;
        }
      }

      v34 = v8 + 32;
      v88 = v8;
      v73 = v8 + 32;
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = 16 * v32;
          v41 = *&v34[16 * v32 - 56];
          v37 = __OFSUB__(v41, *&v34[16 * v32 - 64]);
          v42 = v41 - *&v34[16 * v32 - 64];
          if (v37)
          {
            BUG();
          }

          v43 = *&v34[v40 - 40];
          v37 = __OFSUB__(v43, *&v34[v40 - 48]);
          v38 = v43 - *&v34[v40 - 48];
          v39 = v37;
          if (v37)
          {
            BUG();
          }

          v44 = *&v8[v40 + 8];
          v37 = __OFSUB__(v44, *&v8[16 * v32]);
          v45 = v44 - *&v8[16 * v32];
          if (v37)
          {
            BUG();
          }

          v37 = __OFADD__(v38, v45);
          v46 = v38 + v45;
          if (v37)
          {
            BUG();
          }

          if (v46 >= v42)
          {
            v55 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v55, *&v34[16 * v35]);
            v56 = v55 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v38 < v56)
            {
LABEL_70:
              v35 = v32 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v32 != 3)
          {
            if (v32 < 2)
            {
              BUG();
            }

            v52 = *&v8[16 * v32 + 8];
            v37 = __OFSUB__(v52, *&v8[16 * v32]);
            v48 = v52 - *&v8[16 * v32];
            v49 = v37;
LABEL_64:
            if (v49)
            {
              BUG();
            }

            v53 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v53, *&v34[16 * v35]);
            v54 = v53 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v54 < v48)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v36 = *(v8 + 5);
          v37 = __OFSUB__(v36, *(v8 + 4));
          v38 = v36 - *(v8 + 4);
          v39 = v37;
        }

        if (v39)
        {
          BUG();
        }

        v47 = *&v8[16 * v32 + 8];
        v37 = __OFSUB__(v47, *&v8[16 * v32]);
        v48 = v47 - *&v8[16 * v32];
        v49 = v37;
        if (v37)
        {
          BUG();
        }

        v50 = *&v34[16 * v35 + 8];
        v37 = __OFSUB__(v50, *&v34[16 * v35]);
        v51 = v50 - *&v34[16 * v35];
        if (v37)
        {
          BUG();
        }

        if (__OFADD__(v51, v48))
        {
          BUG();
        }

        if (v51 + v48 < v38)
        {
          goto LABEL_64;
        }

        if (v38 < v51)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v35 - 1 >= v32)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v57 = 16 * (v35 - 1);
        v82 = v35;
        v58 = *&v34[v57];
        v59 = *&v34[16 * v35 + 8];
        __dst = &v34[16 * v35];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v58), (v7 + 16 * *__dst), (v7 + 16 * v59), v84);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v59 < v58)
        {
          BUG();
        }

        v60 = &v34[v57];
        v61 = *(v88 + 16);
        if (v82 > v61)
        {
          BUG();
        }

        *v60 = v58;
        *(v60 + 1) = v59;
        if (v82 >= v61)
        {
          BUG();
        }

        v32 = v61 - 1;
        memmove(__dst, __dst + 16, 16 * (v61 - 1 - v82));
        v8 = v88;
        *(v88 + 16) = v61 - 1;
        v62 = v61 <= 2;
        v7 = v86;
        v34 = v73;
        if (v62)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v84 = &_swiftEmptyArrayStorage[4];
    v32 = _swiftEmptyArrayStorage[2];
    v85 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v32 < 2)
    {
LABEL_98:
      v8;
      v85[2] = 0;
      v85;
    }

    else
    {
      v64 = *a1;
      v87 = *a1;
      while (1)
      {
        if (!v64)
        {
          BUG();
        }

        v65 = 16 * (v32 - 1);
        v66 = *&v8[16 * v32];
        v88 = v8;
        v83 = *&v8[v65 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v64 + 16 * v66), (v64 + 16 * *&v8[v65 + 32]), (v64 + 16 * v83), v84);
        if (v1)
        {
          break;
        }

        if (v83 < v66)
        {
          BUG();
        }

        __dsta = v66;
        if (swift_isUniquelyReferenced_nonNull_native(v88))
        {
          v67 = v88;
        }

        else
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew()(v88);
        }

        v68 = *(v67 + 2);
        if (v32 - 2 >= v68)
        {
          BUG();
        }

        *&v67[16 * v32] = __dsta;
        *&v67[16 * v32 + 8] = v83;
        v69 = v68 - v32;
        if (v68 < v32)
        {
          BUG();
        }

        v32 = v68 - 1;
        v70 = &v67[v65 + 32];
        v71 = &v67[v65 + 48];
        v72 = v67;
        memmove(v70, v71, 16 * v69);
        v8 = v72;
        *(v72 + 2) = v68 - 1;
        v64 = v87;
        if (v68 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v88;
      v85[2] = 0;
      v85;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v79 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v86 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Int));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v83 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v83 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v82 = v6;
      v7 = *a1;
      v73 = *a1 + 40;
      v75 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v84 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11 + 8);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9 + 8);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v73);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 < v14 == *v15 >= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 < v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = (v75 + 16 * v11);
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  *v19 = *v18;
                  *v18 = v22;
                }

                ++v21;
                --v18;
                ++v19;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v72)
          {
            v23 = v72 + v9;
            if (__OFADD__(v72, v9))
            {
              BUG();
            }

            if (v23 >= v10)
            {
              v23 = v10;
            }

            if (v23 < v9)
            {
              BUG();
            }

            if (v11 != v23)
            {
              v24 = (v7 + 16 * v11);
              do
              {
                v25 = *(v7 + 16 * v11 + 8);
                v26 = v9;
                v27 = v24;
                do
                {
                  if (v25 >= *(v27 - 1))
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v28 = *v27;
                  *v27 = *(v27 - 1);
                  *(v27 - 2) = v28;
                  *(v27 - 1) = v25;
                  ++v26;
                  v27 -= 2;
                }

                while (v11 != v26);
                ++v11;
                v24 += 2;
              }

              while (v11 != v23);
              v11 = v23;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v29 = v8;
        v76 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v29;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v8 + 2);
        v31 = v30 + 1;
        v7 = v84;
        if (*(v8 + 3) >> 1 <= v30)
        {
          v7 = v84;
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v30 + 1, 1, v8);
        }

        *(v8 + 2) = v31;
        v32 = 16 * v30;
        *&v8[v32 + 32] = v9;
        *&v8[v32 + 40] = v76;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v10 = v79;
        v9 = v76;
        if (v76 >= v79)
        {
          goto LABEL_84;
        }
      }

      v33 = v8 + 32;
      v87 = v8;
      v71 = v8 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v8[v39 + 8];
          v36 = __OFSUB__(v43, *&v8[16 * v31]);
          v44 = v43 - *&v8[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v8[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v8[16 * v31]);
            v47 = v51 - *&v8[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v8 + 5);
          v36 = __OFSUB__(v35, *(v8 + 4));
          v37 = v35 - *(v8 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v8[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v8[16 * v31]);
        v47 = v46 - *&v8[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v80 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v57), (v7 + 16 * *__dst), (v7 + 16 * v58), v82);
        if (v86)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v80 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v80 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v80));
        v8 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v7 = v84;
        v33 = v71;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v82 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v83 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v8;
      v83[2] = 0;
      v83;
    }

    else
    {
      v62 = *a1;
      v85 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v31 - 1);
        v64 = *&v8[16 * v31];
        v87 = v8;
        v81 = *&v8[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v8[v63 + 32]), (v62 + 16 * v81), v82);
        if (v86)
        {
          break;
        }

        if (v81 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v65 = v87;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v66 = *(v65 + 2);
        if (v31 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v31] = __dsta;
        *&v65[16 * v31 + 8] = v81;
        v67 = v66 - v31;
        if (v66 < v31)
        {
          BUG();
        }

        v31 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v8 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v85;
        if (v66 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v83[2] = 0;
      v83;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v79 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v86 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Int));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v83 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v83 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v82 = v6;
      v7 = *a1;
      v73 = *a1 + 32;
      v76 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v84 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v73);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 < v14 == *v15 >= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 < v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = (v76 + 16 * v11);
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  *v19 = *v18;
                  *v18 = v22;
                }

                ++v21;
                --v18;
                ++v19;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v72)
          {
            v23 = v72 + v9;
            if (__OFADD__(v72, v9))
            {
              BUG();
            }

            if (v23 >= v10)
            {
              v23 = v10;
            }

            if (v23 < v9)
            {
              BUG();
            }

            if (v11 != v23)
            {
              v24 = v76 + 16 * v11;
              do
              {
                v25 = *(v7 + 16 * v11);
                v26 = v9;
                v27 = v24;
                do
                {
                  if (v25 >= *v27)
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v28 = *(v27 + 24);
                  *(v27 + 16) = *v27;
                  *v27 = v25;
                  *(v27 + 8) = v28;
                  v27 -= 16;
                  ++v26;
                }

                while (v11 != v26);
                ++v11;
                v24 += 16;
              }

              while (v11 != v23);
              v11 = v23;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v29 = v8;
        v75 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v29;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v8 + 2);
        v31 = v30 + 1;
        v7 = v84;
        if (*(v8 + 3) >> 1 <= v30)
        {
          v7 = v84;
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v30 + 1, 1, v8);
        }

        *(v8 + 2) = v31;
        v32 = 16 * v30;
        *&v8[v32 + 32] = v9;
        *&v8[v32 + 40] = v75;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v10 = v79;
        v9 = v75;
        if (v75 >= v79)
        {
          goto LABEL_84;
        }
      }

      v33 = v8 + 32;
      v87 = v8;
      v71 = v8 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v8[v39 + 8];
          v36 = __OFSUB__(v43, *&v8[16 * v31]);
          v44 = v43 - *&v8[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v8[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v8[16 * v31]);
            v47 = v51 - *&v8[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v8 + 5);
          v36 = __OFSUB__(v35, *(v8 + 4));
          v37 = v35 - *(v8 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v8[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v8[16 * v31]);
        v47 = v46 - *&v8[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v80 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v57), (v7 + 16 * *__dst), (v7 + 16 * v58), v82);
        if (v86)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v80 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v80 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v80));
        v8 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v7 = v84;
        v33 = v71;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v82 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v83 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v8;
      v83[2] = 0;
      v83;
    }

    else
    {
      v62 = *a1;
      v85 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v31 - 1);
        v64 = *&v8[16 * v31];
        v87 = v8;
        v81 = *&v8[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v8[v63 + 32]), (v62 + 16 * v81), v82);
        if (v86)
        {
          break;
        }

        if (v81 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v65 = v87;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v66 = *(v65 + 2);
        if (v31 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v31] = __dsta;
        *&v65[16 * v31 + 8] = v81;
        v67 = v66 - v31;
        if (v66 < v31)
        {
          BUG();
        }

        v31 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v8 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v85;
        if (v66 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v83[2] = 0;
      v83;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    v84 = v3;
    if (v2 < -1)
    {
      BUG();
    }

    v97 = v2;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for MLRecommender.Identifier);
      *(v4 + 16) = v2 / 2;
      v89 = v4;
      v5 = (v4 + 32);
LABEL_10:
      v88 = v5;
      v6 = *a1;
      v85 = *a1 + 16;
      v87 = *a1 - 24;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v97;
      v98 = *a1;
      while (1)
      {
        v109 = v7;
        v10 = v8;
        v11 = v8 + 1;
        v99 = v8;
        if (v8 + 1 >= v9)
        {
          goto LABEL_51;
        }

        v12 = *(v6 + 24 * v11);
        v13 = *(v6 + 24 * v11 + 16);
        v14 = 24 * v8;
        v15 = *(v6 + 24 * v8);
        v16 = *(v6 + 24 * v8 + 16);
        if (v13)
        {
          break;
        }

        if (v16)
        {
LABEL_17:
          v17 = (v13 ^ 1) & v16;
          goto LABEL_18;
        }

        v19 = *(v6 + 24 * v11 + 8);
        v20 = *(v6 + v14 + 8);
        if (!(v15 ^ v12 | v20 ^ v19))
        {
          goto LABEL_21;
        }

        v107 = v8 + 1;
        v103 = *(v6 + v14 + 8);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v12, v19, v15, v20, 0) & 1) == 0)
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)(v12, v19, v15, v103, 1);
          v6 = v98;
          v11 = v107;
          v10 = v99;
LABEL_18:
          v18 = v10 + 2;
          if (v10 + 2 >= v97)
          {
LABEL_42:
            v11 = v18;
            if (v17)
            {
              goto LABEL_43;
            }

            goto LABEL_51;
          }

          goto LABEL_23;
        }

        v18 = v99 + 2;
        v11 = v107;
        if (v99 + 2 >= v97)
        {
          v11 = v99 + 2;
          v6 = v98;
          v10 = v99;
          goto LABEL_51;
        }

        v17 = 0;
        v6 = v98;
LABEL_23:
        v21 = (v85 + 24 * v18);
        v22 = v18;
        v90 = v17;
        while (1)
        {
          v18 = v22;
          v23 = *(v21 - 2);
          v24 = *(v6 + 24 * v11);
          v25 = *(v6 + 24 * v11 + 16);
          if (*v21)
          {
            if ((v25 & 1) == 0)
            {
              goto LABEL_29;
            }

            if (v23 != v24)
            {
              v26 = v23 < v24;
              goto LABEL_30;
            }

            goto LABEL_34;
          }

          if (v25)
          {
LABEL_29:
            v26 = (*v21 ^ 1) & v25;
            goto LABEL_30;
          }

          v27 = *(v21 - 1);
          v28 = *(v6 + 24 * v11 + 8);
          if (v23 != v24 || v27 != v28)
          {
            break;
          }

LABEL_34:
          if (v17)
          {
            goto LABEL_120;
          }

LABEL_35:
          v22 = v18 + 1;
          v21 += 24;
          v11 = v18;
          if (v18 + 1 >= v97)
          {
            ++v18;
LABEL_41:
            v10 = v99;
            goto LABEL_42;
          }
        }

        v100 = v18;
        __dst = *(v6 + 24 * v11 + 8);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v23, v27, v24, v28, 0) & 1) == 0)
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)(v23, v27, v24, __dst, 1);
          v6 = v98;
          v18 = v100;
          v17 = v90;
LABEL_30:
          if ((v17 ^ v26))
          {
            goto LABEL_41;
          }

          goto LABEL_35;
        }

        v17 = v90;
        v6 = v98;
        v18 = v100;
        if ((v90 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_120:
        v10 = v99;
LABEL_43:
        if (v18 < v10)
        {
          BUG();
        }

        if (v18 > v10)
        {
          v29 = v87 + 24 * v18;
          v30 = v6 + v14;
          v31 = v18;
          v32 = v10;
          do
          {
            if (v32 != --v31)
            {
              if (!v6)
              {
                BUG();
              }

              v33 = *(v30 + 16);
              v34 = *v30;
              v35 = *(v29 + 16);
              *v30 = *v29;
              *(v30 + 16) = v35;
              *v29 = v34;
              *(v29 + 16) = v33;
            }

            ++v32;
            v29 -= 24;
            v30 += 24;
          }

          while (v32 < v31);
        }

LABEL_50:
        v11 = v18;
LABEL_51:
        if (v11 >= v97)
        {
          goto LABEL_74;
        }

        v7 = v109;
        if (__OFSUB__(v11, v10))
        {
          BUG();
        }

        if (v11 - v10 < v84)
        {
          v36 = v84 + v10;
          if (__OFADD__(v84, v10))
          {
            BUG();
          }

          if (v36 >= v97)
          {
            v36 = v97;
          }

          if (v36 < v10)
          {
            BUG();
          }

          if (v11 != v36)
          {
            v37 = v6 + 24 * v11;
            v83 = v36;
            while (1)
            {
              v91 = v37;
              v105 = v11;
              while (1)
              {
                v38 = *v37;
                v39 = *(v37 - 24);
                v40 = *(v37 - 8);
                if (*(v37 + 16))
                {
                  if (((v38 < v39) & v40) == 0)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_68;
                }

                if ((v40 & 1) == 0)
                {
                  break;
                }

LABEL_68:
                if (!v6)
                {
                  BUG();
                }

                v43 = *(v37 + 16);
                v44 = *v37;
                *v37 = *(v37 - 24);
                *(v37 + 16) = *(v37 - 24 + 16);
                *(v37 - 24) = v44;
                *(v37 - 8) = v43;
                ++v10;
                v37 -= 24;
                if (v11 == v10)
                {
                  goto LABEL_72;
                }
              }

              v41 = *(v37 - 16);
              if (!(v39 ^ v38 | v41 ^ *(v37 + 8)))
              {
                goto LABEL_72;
              }

              __dsta = *(v37 + 8);
              v101 = *(v37 - 16);
              if ((_stringCompareWithSmolCheck(_:_:expecting:)(*v37, __dsta, v39, v41, 0) & 1) == 0)
              {
                v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v38, __dsta, v39, v101, 1);
                v6 = v98;
                v11 = v105;
                if ((v42 & 1) == 0)
                {
                  goto LABEL_72;
                }

                goto LABEL_68;
              }

              v6 = v98;
              v11 = v105;
LABEL_72:
              ++v11;
              v37 = v91 + 24;
              v10 = v99;
              if (v11 == v83)
              {
                v11 = v83;
LABEL_74:
                v7 = v109;
                break;
              }
            }
          }
        }

        if (v11 < v10)
        {
          BUG();
        }

        v106 = v11;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v45 = *(v7 + 2);
        v46 = v45 + 1;
        v6 = v98;
        v8 = v106;
        if (*(v7 + 3) >> 1 <= v45)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v45 + 1, 1, v7);
          v8 = v106;
          v6 = v98;
          v7 = v77;
        }

        *(v7 + 2) = v46;
        v47 = 16 * v45;
        *&v7[v47 + 32] = v99;
        *&v7[v47 + 40] = v8;
        if (v45)
        {
          v48 = v7 + 32;
          v110 = v7;
          v92 = v7 + 32;
          while (1)
          {
            v49 = v46 - 1;
            if (v46 >= 4)
            {
              v54 = 16 * v46;
              v55 = *&v48[16 * v46 - 56];
              v51 = __OFSUB__(v55, *&v48[16 * v46 - 64]);
              v56 = v55 - *&v48[16 * v46 - 64];
              if (v51)
              {
                BUG();
              }

              v57 = *&v48[v54 - 40];
              v51 = __OFSUB__(v57, *&v48[v54 - 48]);
              v52 = v57 - *&v48[v54 - 48];
              v53 = v51;
              if (v51)
              {
                BUG();
              }

              v58 = *&v7[v54 + 8];
              v51 = __OFSUB__(v58, *&v7[16 * v46]);
              v59 = v58 - *&v7[16 * v46];
              if (v51)
              {
                BUG();
              }

              v51 = __OFADD__(v52, v59);
              v60 = v52 + v59;
              if (v51)
              {
                BUG();
              }

              if (v60 >= v56)
              {
                v69 = *&v48[16 * v49 + 8];
                v51 = __OFSUB__(v69, *&v48[16 * v49]);
                v70 = v69 - *&v48[16 * v49];
                if (v51)
                {
                  BUG();
                }

                if (v52 < v70)
                {
LABEL_105:
                  v49 = v46 - 2;
                  goto LABEL_106;
                }

                goto LABEL_106;
              }
            }

            else
            {
              if (v46 != 3)
              {
                if (v46 < 2)
                {
                  BUG();
                }

                v66 = *&v7[16 * v46 + 8];
                v51 = __OFSUB__(v66, *&v7[16 * v46]);
                v62 = v66 - *&v7[16 * v46];
                v63 = v51;
LABEL_99:
                if (v63)
                {
                  BUG();
                }

                v67 = *&v48[16 * v49 + 8];
                v51 = __OFSUB__(v67, *&v48[16 * v49]);
                v68 = v67 - *&v48[16 * v49];
                if (v51)
                {
                  BUG();
                }

                if (v68 < v62)
                {
                  v7 = v110;
                  goto LABEL_115;
                }

                goto LABEL_106;
              }

              v50 = *(v7 + 5);
              v51 = __OFSUB__(v50, *(v7 + 4));
              v52 = v50 - *(v7 + 4);
              v53 = v51;
            }

            if (v53)
            {
              BUG();
            }

            v61 = *&v7[16 * v46 + 8];
            v51 = __OFSUB__(v61, *&v7[16 * v46]);
            v62 = v61 - *&v7[16 * v46];
            v63 = v51;
            if (v51)
            {
              BUG();
            }

            v64 = *&v48[16 * v49 + 8];
            v51 = __OFSUB__(v64, *&v48[16 * v49]);
            v65 = v64 - *&v48[16 * v49];
            if (v51)
            {
              BUG();
            }

            if (__OFADD__(v65, v62))
            {
              BUG();
            }

            if (v65 + v62 < v52)
            {
              goto LABEL_99;
            }

            if (v52 < v65)
            {
              goto LABEL_105;
            }

LABEL_106:
            if (v49 - 1 >= v46)
            {
              BUG();
            }

            if (!v6)
            {
              BUG();
            }

            v71 = 16 * (v49 - 1);
            v102 = v49;
            v72 = *&v48[v71];
            v73 = *&v48[16 * v49 + 8];
            __dstb = &v48[16 * v49];
            specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 24 * v72), (v6 + 24 * *__dstb), v6 + 24 * v73, v88);
            if (v1)
            {
              goto LABEL_135;
            }

            if (v73 < v72)
            {
              BUG();
            }

            v74 = &v48[v71];
            v75 = *(v110 + 2);
            if (v102 > v75)
            {
              BUG();
            }

            *v74 = v72;
            *(v74 + 1) = v73;
            if (v102 >= v75)
            {
              BUG();
            }

            v46 = v75 - 1;
            memmove(__dstb, __dstb + 16, 16 * (v75 - 1 - v102));
            v7 = v110;
            *(v110 + 2) = v75 - 1;
            v76 = v75 <= 2;
            v6 = v98;
            v8 = v106;
            v48 = v92;
            if (v76)
            {
              goto LABEL_115;
            }
          }
        }

        v46 = 1;
LABEL_115:
        v9 = v97;
        if (v8 >= v97)
        {
          goto LABEL_124;
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v12 != v15)
      {
        v17 = v12 < v15;
        goto LABEL_18;
      }

LABEL_21:
      v18 = v8 + 2;
      if (v10 + 2 >= v97)
      {
        goto LABEL_50;
      }

      v17 = 0;
      goto LABEL_23;
    }

    if (v2 == 1)
    {
      v89 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
      goto LABEL_10;
    }

    v7 = _swiftEmptyArrayStorage;
    v88 = &_swiftEmptyArrayStorage[4];
    v46 = _swiftEmptyArrayStorage[2];
    v89 = _swiftEmptyArrayStorage;
LABEL_124:
    if (v46 < 2)
    {
LABEL_137:
      v7;
      v89[2] = 0;
      v89;
    }

    else
    {
      v78 = *a1;
      v108 = *a1;
      while (1)
      {
        v110 = v7;
        if (!v78)
        {
          BUG();
        }

        v79 = 16 * (v46 - 1);
        v80 = *&v7[v79 + 40];
        v104 = *&v7[16 * v46];
        specialized _merge<A>(low:mid:high:buffer:by:)((v78 + 24 * v104), (v78 + 24 * *&v7[v79 + 32]), v78 + 24 * v80, v88);
        if (v1)
        {
          break;
        }

        if (v80 < v104)
        {
          BUG();
        }

        __dstc = v80;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v110 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        v81 = *(v110 + 2);
        if (v46 - 2 >= v81)
        {
          BUG();
        }

        *&v110[16 * v46] = v104;
        *&v110[16 * v46 + 8] = __dstc;
        v82 = v81 - v46;
        if (v81 < v46)
        {
          BUG();
        }

        v7 = v110;
        v46 = v81 - 1;
        memmove(&v110[v79 + 32], &v110[v79 + 48], 16 * v82);
        *(v110 + 2) = v81 - 1;
        v78 = v108;
        if (v81 <= 2)
        {
          goto LABEL_137;
        }
      }

LABEL_135:
      v110;
      v89[2] = 0;
      v89;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v77 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v67 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for Int);
      *(v4 + 16) = v2 / 2;
      v79 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v79 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v78 = v5;
      v6 = *a1;
      v69 = *a1 - 8;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v80 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 8 * v8);
          v12 = *(v6 + 8 * v8 + 8);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v13 = *(v6 + 8 * v8 + 8);
            while (1)
            {
              v14 = v13;
              v13 = *(v6 + 8 * v10);
              if (v12 < v11 == v13 >= v14)
              {
                break;
              }

              if (++v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v12 < v11)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v15 = v10 - 1;
              v16 = v8;
              do
              {
                if (v16 != v15)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v17 = *(v6 + 8 * v16);
                  *(v6 + 8 * v16) = *(v6 + 8 * v15);
                  *(v6 + 8 * v15) = v17;
                }

                v18 = ++v16 < v15--;
              }

              while (v18);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v67)
          {
            v19 = v67 + v8;
            if (__OFADD__(v67, v8))
            {
              BUG();
            }

            if (v19 >= v9)
            {
              v19 = v9;
            }

            if (v19 < v8)
            {
              BUG();
            }

            if (v10 != v19)
            {
              v20 = v8;
              v21 = v69;
              v22 = v10;
              do
              {
                v23 = *(v6 + 8 * v22);
                v24 = v10;
                do
                {
                  v25 = *(v21 + 8 * v24);
                  if (v23 >= v25)
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  *(v21 + 8 * v24 + 8) = v25;
                  *(v21 + 8 * v24--) = v23;
                }

                while (v20 != v24);
                ++v22;
                v21 += 8;
                --v20;
              }

              while (v22 != v19);
              v10 = v19;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v26 = v7;
        v70 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v26;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v27 = *(v7 + 2);
        v28 = v27 + 1;
        v6 = v80;
        if (*(v7 + 3) >> 1 <= v27)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v27 + 1, 1, v7);
          v6 = v80;
          v7 = v59;
        }

        *(v7 + 2) = v28;
        v29 = 16 * v27;
        *&v7[v29 + 32] = v8;
        *&v7[v29 + 40] = v70;
        if (v27)
        {
          break;
        }

        v28 = 1;
LABEL_80:
        v9 = v77;
        v8 = v70;
        if (v70 >= v77)
        {
          goto LABEL_84;
        }
      }

      v30 = v7 + 32;
      v81 = v7;
      v75 = v7 + 32;
      while (1)
      {
        v31 = v28 - 1;
        if (v28 >= 4)
        {
          v36 = 16 * v28;
          v37 = *&v30[16 * v28 - 56];
          v33 = __OFSUB__(v37, *&v30[16 * v28 - 64]);
          v38 = v37 - *&v30[16 * v28 - 64];
          if (v33)
          {
            BUG();
          }

          v39 = *&v30[v36 - 40];
          v33 = __OFSUB__(v39, *&v30[v36 - 48]);
          v34 = v39 - *&v30[v36 - 48];
          v35 = v33;
          if (v33)
          {
            BUG();
          }

          v40 = *&v7[v36 + 8];
          v33 = __OFSUB__(v40, *&v7[16 * v28]);
          v41 = v40 - *&v7[16 * v28];
          if (v33)
          {
            BUG();
          }

          v33 = __OFADD__(v34, v41);
          v42 = v34 + v41;
          if (v33)
          {
            BUG();
          }

          if (v42 >= v38)
          {
            v51 = *&v30[16 * v31 + 8];
            v33 = __OFSUB__(v51, *&v30[16 * v31]);
            v52 = v51 - *&v30[16 * v31];
            if (v33)
            {
              BUG();
            }

            if (v34 < v52)
            {
LABEL_70:
              v31 = v28 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v28 != 3)
          {
            if (v28 < 2)
            {
              BUG();
            }

            v48 = *&v7[16 * v28 + 8];
            v33 = __OFSUB__(v48, *&v7[16 * v28]);
            v44 = v48 - *&v7[16 * v28];
            v45 = v33;
LABEL_64:
            if (v45)
            {
              BUG();
            }

            v49 = *&v30[16 * v31 + 8];
            v33 = __OFSUB__(v49, *&v30[16 * v31]);
            v50 = v49 - *&v30[16 * v31];
            if (v33)
            {
              BUG();
            }

            if (v50 < v44)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v32 = *(v7 + 5);
          v33 = __OFSUB__(v32, *(v7 + 4));
          v34 = v32 - *(v7 + 4);
          v35 = v33;
        }

        if (v35)
        {
          BUG();
        }

        v43 = *&v7[16 * v28 + 8];
        v33 = __OFSUB__(v43, *&v7[16 * v28]);
        v44 = v43 - *&v7[16 * v28];
        v45 = v33;
        if (v33)
        {
          BUG();
        }

        v46 = *&v30[16 * v31 + 8];
        v33 = __OFSUB__(v46, *&v30[16 * v31]);
        v47 = v46 - *&v30[16 * v31];
        if (v33)
        {
          BUG();
        }

        if (__OFADD__(v47, v44))
        {
          BUG();
        }

        if (v47 + v44 < v34)
        {
          goto LABEL_64;
        }

        if (v34 < v47)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v31 - 1 >= v28)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v53 = 16 * (v31 - 1);
        v71 = v31;
        v54 = &v30[16 * v31];
        v55 = *&v30[v53];
        v56 = *(v54 + 1);
        __dst = v54;
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 8 * v55), (v6 + 8 * *v54), (v6 + 8 * v56), v78);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v56 < v55)
        {
          BUG();
        }

        v57 = &v30[v53];
        v58 = *(v81 + 16);
        if (v71 > v58)
        {
          BUG();
        }

        *v57 = v55;
        *(v57 + 1) = v56;
        if (v71 >= v58)
        {
          BUG();
        }

        v28 = v58 - 1;
        memmove(__dst, __dst + 16, 16 * (v58 - 1 - v71));
        v7 = v81;
        *(v81 + 16) = v58 - 1;
        v18 = v58 <= 2;
        v6 = v80;
        v30 = v75;
        if (v18)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v78 = &_swiftEmptyArrayStorage[4];
    v28 = _swiftEmptyArrayStorage[2];
    v79 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v28 < 2)
    {
LABEL_98:
      v7;
      v79[2] = 0;
      v79;
    }

    else
    {
      v60 = *a1;
      v76 = *a1;
      while (1)
      {
        if (!v60)
        {
          BUG();
        }

        v61 = *&v7[16 * v28];
        v81 = v7;
        v72 = 16 * (v28 - 1);
        v62 = *&v7[v72 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v60 + 8 * v61), (v60 + 8 * *&v7[v72 + 32]), (v60 + 8 * v62), v78);
        if (v1)
        {
          break;
        }

        if (v62 < v61)
        {
          BUG();
        }

        __dsta = v61;
        if (swift_isUniquelyReferenced_nonNull_native(v81))
        {
          v63 = v81;
        }

        else
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
        }

        v64 = *(v63 + 2);
        if (v28 - 2 >= v64)
        {
          BUG();
        }

        *&v63[16 * v28] = __dsta;
        *&v63[16 * v28 + 8] = v62;
        v65 = v64 - v28;
        if (v64 < v28)
        {
          BUG();
        }

        v28 = v64 - 1;
        v66 = v63;
        memmove(&v63[v72 + 32], &v63[v72 + 48], 16 * v65);
        v7 = v66;
        *(v66 + 2) = v64 - 1;
        v60 = v76;
        if (v64 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v81;
      v79[2] = 0;
      v79;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v93 = v2;
    v83 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for String);
      *(v4 + 16) = v2 / 2;
      v89 = v4;
      v5 = (v4 + 32);
LABEL_10:
      v88 = v5;
      v6 = *a1;
      v84 = *a1 + 8;
      v86 = *a1 - 16;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v94 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        v11 = v9;
        v96 = v8;
        if (v8 + 1 >= v9)
        {
          goto LABEL_34;
        }

        v12 = 16 * v8;
        v13 = *(v6 + 16 * v8);
        v14 = *(v6 + 16 * v8 + 8);
        if (__PAIR128__(v14 ^ *(v6 + 16 * v10 + 8), v13 ^ *(v6 + 16 * v10)) == 0)
        {
          break;
        }

        v17 = v8 + 1;
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v10), *(v6 + 16 * v10 + 8), v13, v14, 1);
        v10 = v17;
        v6 = v94;
        v19 = v11;
        v16 = v18;
        v15 = v96 + 2;
        if (v96 + 2 < v19)
        {
          goto LABEL_16;
        }

LABEL_25:
        v10 = v15;
        v28 = (v16 & 1) == 0;
        v11 = v93;
        if (v28)
        {
          goto LABEL_34;
        }

LABEL_26:
        if (v15 < v96)
        {
          BUG();
        }

        if (v15 > v96)
        {
          v29 = (v86 + 16 * v15);
          v30 = (v6 + v12);
          v31 = v15;
          v32 = v96;
          do
          {
            if (v32 != --v31)
            {
              if (!v6)
              {
                BUG();
              }

              v33 = *v30;
              *v30 = *v29;
              *v29 = v33;
            }

            ++v32;
            --v29;
            ++v30;
          }

          while (v32 < v31);
        }

LABEL_33:
        v10 = v15;
LABEL_34:
        if (v10 >= v11)
        {
          v34 = v96;
        }

        else
        {
          v34 = v96;
          if (__OFSUB__(v10, v96))
          {
            BUG();
          }

          if (v10 - v96 < v83)
          {
            v35 = (v83 + v96);
            if (__OFADD__(v83, v96))
            {
              BUG();
            }

            if (v35 >= v11)
            {
              v35 = v11;
            }

            if (v35 < v96)
            {
              BUG();
            }

            if (v10 != v35)
            {
              v100 = v7;
              v36 = (v6 + 16 * v10);
              __dst = v35;
              do
              {
                v37 = *(v6 + 16 * v10);
                v38 = *(v6 + 16 * v10 + 8);
                v39 = v34;
                v40 = v36;
                do
                {
                  v41 = *(v40 - 2);
                  v42 = *(v40 - 1);
                  if (v37 == v41 && v38 == v42)
                  {
                    break;
                  }

                  v43 = v10;
                  if ((_stringCompareWithSmolCheck(_:_:expecting:)(v37, v38, v41, v42, 1) & 1) == 0)
                  {
                    v6 = v94;
                    v10 = v43;
                    break;
                  }

                  v6 = v94;
                  if (!v94)
                  {
                    BUG();
                  }

                  v10 = v43;
                  v37 = *v40;
                  v38 = v40[1];
                  *v40 = *(v40 - 1);
                  *(v40 - 2) = v37;
                  *(v40 - 1) = v38;
                  ++v39;
                  v40 -= 2;
                }

                while (v43 != v39);
                ++v10;
                v36 += 2;
                v34 = v96;
              }

              while (v10 != __dst);
              v10 = __dst;
              v7 = v100;
            }
          }
        }

        if (v10 < v34)
        {
          BUG();
        }

        v87 = v10;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v44 = *(v7 + 2);
        v45 = v44 + 1;
        v6 = v94;
        v8 = v87;
        if (*(v7 + 3) >> 1 <= v44)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v44 + 1, 1, v7);
          v8 = v87;
          v6 = v94;
          v7 = v76;
        }

        *(v7 + 2) = v45;
        v46 = 16 * v44;
        *&v7[v46 + 32] = v34;
        *&v7[v46 + 40] = v8;
        if (v44)
        {
          v47 = v7 + 32;
          v101 = v7;
          v82 = v7 + 32;
          while (1)
          {
            v48 = v45 - 1;
            if (v45 >= 4)
            {
              v53 = 16 * v45;
              v54 = *&v47[16 * v45 - 56];
              v50 = __OFSUB__(v54, *&v47[16 * v45 - 64]);
              v55 = v54 - *&v47[16 * v45 - 64];
              if (v50)
              {
                BUG();
              }

              v56 = *&v47[v53 - 40];
              v50 = __OFSUB__(v56, *&v47[v53 - 48]);
              v51 = v56 - *&v47[v53 - 48];
              v52 = v50;
              if (v50)
              {
                BUG();
              }

              v57 = *&v7[v53 + 8];
              v50 = __OFSUB__(v57, *&v7[16 * v45]);
              v58 = v57 - *&v7[16 * v45];
              if (v50)
              {
                BUG();
              }

              v50 = __OFADD__(v51, v58);
              v59 = v51 + v58;
              if (v50)
              {
                BUG();
              }

              if (v59 >= v55)
              {
                v68 = *&v47[16 * v48 + 8];
                v50 = __OFSUB__(v68, *&v47[16 * v48]);
                v69 = v68 - *&v47[16 * v48];
                if (v50)
                {
                  BUG();
                }

                if (v51 < v69)
                {
LABEL_84:
                  v48 = v45 - 2;
                  goto LABEL_85;
                }

                goto LABEL_85;
              }
            }

            else
            {
              if (v45 != 3)
              {
                if (v45 < 2)
                {
                  BUG();
                }

                v65 = *&v7[16 * v45 + 8];
                v50 = __OFSUB__(v65, *&v7[16 * v45]);
                v61 = v65 - *&v7[16 * v45];
                v62 = v50;
LABEL_78:
                if (v62)
                {
                  BUG();
                }

                v66 = *&v47[16 * v48 + 8];
                v50 = __OFSUB__(v66, *&v47[16 * v48]);
                v67 = v66 - *&v47[16 * v48];
                if (v50)
                {
                  BUG();
                }

                if (v67 < v61)
                {
                  v7 = v101;
                  goto LABEL_94;
                }

                goto LABEL_85;
              }

              v49 = *(v7 + 5);
              v50 = __OFSUB__(v49, *(v7 + 4));
              v51 = v49 - *(v7 + 4);
              v52 = v50;
            }

            if (v52)
            {
              BUG();
            }

            v60 = *&v7[16 * v45 + 8];
            v50 = __OFSUB__(v60, *&v7[16 * v45]);
            v61 = v60 - *&v7[16 * v45];
            v62 = v50;
            if (v50)
            {
              BUG();
            }

            v63 = *&v47[16 * v48 + 8];
            v50 = __OFSUB__(v63, *&v47[16 * v48]);
            v64 = v63 - *&v47[16 * v48];
            if (v50)
            {
              BUG();
            }

            if (__OFADD__(v64, v61))
            {
              BUG();
            }

            if (v64 + v61 < v51)
            {
              goto LABEL_78;
            }

            if (v51 < v64)
            {
              goto LABEL_84;
            }

LABEL_85:
            if (v48 - 1 >= v45)
            {
              BUG();
            }

            if (!v6)
            {
              BUG();
            }

            v70 = 16 * (v48 - 1);
            v97 = v48;
            v71 = *&v47[v70];
            v72 = *&v47[16 * v48 + 8];
            __dsta = &v47[16 * v48];
            specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 16 * v71), (v6 + 16 * *__dsta), v6 + 16 * v72, v88);
            if (v1)
            {
              goto LABEL_108;
            }

            if (v72 < v71)
            {
              BUG();
            }

            v73 = &v47[v70];
            v74 = *(v101 + 2);
            if (v97 > v74)
            {
              BUG();
            }

            *v73 = v71;
            *(v73 + 1) = v72;
            if (v97 >= v74)
            {
              BUG();
            }

            v45 = v74 - 1;
            memmove(__dsta, __dsta + 16, 16 * (v74 - 1 - v97));
            v7 = v101;
            *(v101 + 2) = v74 - 1;
            v75 = v74 <= 2;
            v6 = v94;
            v8 = v87;
            v47 = v82;
            if (v75)
            {
              goto LABEL_94;
            }
          }
        }

        v45 = 1;
LABEL_94:
        v9 = v93;
        if (v8 >= v93)
        {
          goto LABEL_97;
        }
      }

      v15 = v8 + 2;
      if (v8 + 2 >= v9)
      {
        goto LABEL_33;
      }

      v16 = 0;
LABEL_16:
      v99 = v7;
      v20 = (v84 + 16 * v15);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = 16 * v10;
        v24 = *(v6 + v23);
        v25 = *(v6 + v23 + 8);
        if (v21 == v24 && v22 == v25)
        {
          if (v16)
          {
            v7 = v99;
            v11 = v93;
            goto LABEL_26;
          }
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)(v21, v22, v24, v25, 1);
          v6 = v94;
          if ((v16 ^ v26))
          {
            goto LABEL_24;
          }
        }

        v27 = v15 + 1;
        v20 += 2;
        v10 = v15;
        v15 = v27;
      }

      while (v27 < v93);
      v15 = v27;
LABEL_24:
      v7 = v99;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v89 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
      goto LABEL_10;
    }

    v7 = _swiftEmptyArrayStorage;
    v88 = &_swiftEmptyArrayStorage[4];
    v45 = _swiftEmptyArrayStorage[2];
    v89 = _swiftEmptyArrayStorage;
LABEL_97:
    if (v45 < 2)
    {
LABEL_110:
      v7;
      v89[2] = 0;
      v89;
    }

    else
    {
      v77 = *a1;
      __dstb = *a1;
      while (1)
      {
        v101 = v7;
        if (!v77)
        {
          BUG();
        }

        v78 = 16 * (v45 - 1);
        v79 = *&v7[v78 + 40];
        v95 = *&v7[16 * v45];
        specialized _merge<A>(low:mid:high:buffer:by:)((v77 + 16 * v95), (v77 + 16 * *&v7[v78 + 32]), v77 + 16 * v79, v88);
        if (v1)
        {
          break;
        }

        if (v79 < v95)
        {
          BUG();
        }

        v98 = v79;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        v80 = *(v101 + 2);
        if (v45 - 2 >= v80)
        {
          BUG();
        }

        *&v101[16 * v45] = v95;
        *&v101[16 * v45 + 8] = v98;
        v81 = v80 - v45;
        if (v80 < v45)
        {
          BUG();
        }

        v7 = v101;
        v45 = v80 - 1;
        memmove(&v101[v78 + 32], &v101[v78 + 48], 16 * v81);
        *(v101 + 2) = v80 - 1;
        v77 = __dstb;
        if (v80 <= 2)
        {
          goto LABEL_110;
        }
      }

LABEL_108:
      v101;
      v89[2] = 0;
      v89;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v78 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v83 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v82 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v82 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v81 = v6;
      v7 = *a1;
      v73 = *a1 + 40;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v85 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = 16 * v11;
          if (*(v7 + v12 + 8))
          {
            BUG();
          }

          v13 = 16 * v9;
          if (*(v7 + 16 * v9 + 8))
          {
            BUG();
          }

          v14 = *(v7 + v12);
          v15 = *(v7 + 16 * v9);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v16 = (v73 + 16 * v9);
            while (1)
            {
              if (*v16)
              {
                BUG();
              }

              if (*(v16 - 16))
              {
                BUG();
              }

              if (v14 < v15 == *(v16 - 1) >= *(v16 - 3))
              {
                break;
              }

              ++v11;
              v16 += 16;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v14 < v15)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v17 = 16 * v11 - 16;
              v18 = v11;
              v19 = v9;
              do
              {
                if (v19 != --v18)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v20 = (v7 + v13);
                  v21 = *(v7 + v13);
                  v22 = *(v7 + v13 + 8);
                  if (v13 != v17 || (v7 = v85, v20 >= v17 + v85 + 16))
                  {
                    v7 = v85;
                    *v20 = *(v17 + v85);
                  }

                  *(v7 + v17) = v21;
                  *(v7 + v17 + 8) = v22 & 1;
                }

                ++v19;
                v17 -= 16;
                v13 += 16;
              }

              while (v19 < v18);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v72)
          {
            v23 = v72 + v9;
            if (__OFADD__(v72, v9))
            {
              BUG();
            }

            if (v23 >= v10)
            {
              v23 = v10;
            }

            if (v23 < v9)
            {
              BUG();
            }

            if (v11 != v23)
            {
              v24 = v7 + 16 * v11;
              do
              {
                v25 = v9;
                v26 = v24;
                do
                {
                  if (*(v26 + 8))
                  {
                    BUG();
                  }

                  if (*(v26 - 8))
                  {
                    BUG();
                  }

                  v27 = *v26;
                  if (*v26 >= *(v26 - 16))
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  *v26 = *(v26 - 16);
                  *(v26 - 16) = v27;
                  *(v26 - 8) = 0;
                  ++v25;
                  v26 -= 16;
                }

                while (v11 != v25);
                ++v11;
                v24 += 16;
              }

              while (v11 != v23);
              v11 = v23;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v28 = v8;
        v75 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v28;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v29 = *(v8 + 2);
        v30 = v29 + 1;
        v7 = v85;
        if (*(v8 + 3) >> 1 <= v29)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v29 + 1, 1, v8);
          v7 = v85;
          v8 = v61;
        }

        *(v8 + 2) = v30;
        v31 = 16 * v29;
        *&v8[v31 + 32] = v9;
        *&v8[v31 + 40] = v75;
        if (v29)
        {
          break;
        }

        v30 = 1;
LABEL_89:
        v10 = v78;
        v9 = v75;
        if (v75 >= v78)
        {
          goto LABEL_93;
        }
      }

      v32 = v8 + 32;
      v84 = v8;
      v71 = v8 + 32;
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          v38 = 16 * v30;
          v39 = *&v32[16 * v30 - 56];
          v35 = __OFSUB__(v39, *&v32[16 * v30 - 64]);
          v40 = v39 - *&v32[16 * v30 - 64];
          if (v35)
          {
            BUG();
          }

          v41 = *&v32[v38 - 40];
          v35 = __OFSUB__(v41, *&v32[v38 - 48]);
          v36 = v41 - *&v32[v38 - 48];
          v37 = v35;
          if (v35)
          {
            BUG();
          }

          v42 = *&v8[v38 + 8];
          v35 = __OFSUB__(v42, *&v8[16 * v30]);
          v43 = v42 - *&v8[16 * v30];
          if (v35)
          {
            BUG();
          }

          v35 = __OFADD__(v36, v43);
          v44 = v36 + v43;
          if (v35)
          {
            BUG();
          }

          if (v44 >= v40)
          {
            v53 = *&v32[16 * v33 + 8];
            v35 = __OFSUB__(v53, *&v32[16 * v33]);
            v54 = v53 - *&v32[16 * v33];
            if (v35)
            {
              BUG();
            }

            if (v36 < v54)
            {
LABEL_79:
              v33 = v30 - 2;
              goto LABEL_80;
            }

            goto LABEL_80;
          }
        }

        else
        {
          if (v30 != 3)
          {
            if (v30 < 2)
            {
              BUG();
            }

            v50 = *&v8[16 * v30 + 8];
            v35 = __OFSUB__(v50, *&v8[16 * v30]);
            v46 = v50 - *&v8[16 * v30];
            v47 = v35;
LABEL_73:
            if (v47)
            {
              BUG();
            }

            v51 = *&v32[16 * v33 + 8];
            v35 = __OFSUB__(v51, *&v32[16 * v33]);
            v52 = v51 - *&v32[16 * v33];
            if (v35)
            {
              BUG();
            }

            if (v52 < v46)
            {
              goto LABEL_89;
            }

            goto LABEL_80;
          }

          v34 = *(v8 + 5);
          v35 = __OFSUB__(v34, *(v8 + 4));
          v36 = v34 - *(v8 + 4);
          v37 = v35;
        }

        if (v37)
        {
          BUG();
        }

        v45 = *&v8[16 * v30 + 8];
        v35 = __OFSUB__(v45, *&v8[16 * v30]);
        v46 = v45 - *&v8[16 * v30];
        v47 = v35;
        if (v35)
        {
          BUG();
        }

        v48 = *&v32[16 * v33 + 8];
        v35 = __OFSUB__(v48, *&v32[16 * v33]);
        v49 = v48 - *&v32[16 * v33];
        if (v35)
        {
          BUG();
        }

        if (__OFADD__(v49, v46))
        {
          BUG();
        }

        if (v49 + v46 < v36)
        {
          goto LABEL_73;
        }

        if (v36 < v49)
        {
          goto LABEL_79;
        }

LABEL_80:
        if (v33 - 1 >= v30)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v55 = 16 * (v33 - 1);
        v79 = v33;
        v56 = *&v32[v55];
        v57 = *&v32[16 * v33 + 8];
        __dst = &v32[16 * v33];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v56), (v7 + 16 * *__dst), (v7 + 16 * v57), v81);
        if (v83)
        {
          goto LABEL_105;
        }

        if (v57 < v56)
        {
          BUG();
        }

        v58 = &v32[v55];
        v59 = *(v84 + 16);
        if (v79 > v59)
        {
          BUG();
        }

        *v58 = v56;
        *(v58 + 1) = v57;
        if (v79 >= v59)
        {
          BUG();
        }

        v30 = v59 - 1;
        memmove(__dst, __dst + 16, 16 * (v59 - 1 - v79));
        v8 = v84;
        *(v84 + 16) = v59 - 1;
        v60 = v59 <= 2;
        v7 = v85;
        v32 = v71;
        if (v60)
        {
          goto LABEL_89;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v81 = &_swiftEmptyArrayStorage[4];
    v30 = _swiftEmptyArrayStorage[2];
    v82 = _swiftEmptyArrayStorage;
LABEL_93:
    if (v30 < 2)
    {
LABEL_107:
      v8;
      v82[2] = 0;
      v82;
    }

    else
    {
      v62 = *a1;
      v86 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v30 - 1);
        v64 = *&v8[16 * v30];
        v84 = v8;
        v80 = *&v8[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v8[v63 + 32]), (v62 + 16 * v80), v81);
        if (v83)
        {
          break;
        }

        if (v80 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v84))
        {
          v65 = v84;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v84);
        }

        v66 = *(v65 + 2);
        if (v30 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v30] = __dsta;
        *&v65[16 * v30 + 8] = v80;
        v67 = v66 - v30;
        if (v66 < v30)
        {
          BUG();
        }

        v30 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v8 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v86;
        if (v66 <= 2)
        {
          goto LABEL_107;
        }
      }

LABEL_105:
      v84;
      v82[2] = 0;
      v82;
    }
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    do
    {
      v6 = *(v4 + 16 * a3);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v6;
        *(v8 + 8) = v9;
        v8 -= 16;
        ++v7;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3;
    do
    {
      v6 = *(v4 + 56 * a3 + 48);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 <= *(v8 - 8))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        v10 = *(v8 + 16);
        v11 = *(v8 + 32);
        v12 = *(v8 - 56 + 16);
        v13 = *(v8 - 56 + 32);
        *v8 = *(v8 - 56);
        *(v8 + 16) = v12;
        *(v8 + 32) = v13;
        *(v8 + 48) = *(v8 - 56 + 48);
        *(v8 - 56) = v9;
        *(v8 - 40) = v10;
        *(v8 - 24) = v11;
        *(v8 - 8) = v6;
        ++v7;
        v8 -= 56;
      }

      while (a3 != v7);
      ++a3;
      v5 += 56;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = *(v4 + 16 * a3 + 8);
      v7 = a1;
      v8 = v5;
      do
      {
        if (*(v8 - 1) <= v6)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        *v8 = *(v8 - 1);
        *(v8 - 2) = v9;
        *(v8 - 1) = v6;
        ++v7;
        v8 -= 2;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = *(v4 + 16 * a3 + 8);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 <= *(v8 - 1))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        *v8 = *(v8 - 1);
        *(v8 - 2) = v9;
        *(v8 - 1) = v6;
        ++v7;
        v8 -= 2;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = *(v4 + 16 * a3 + 8);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 >= *(v8 - 1))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        *v8 = *(v8 - 1);
        *(v8 - 2) = v9;
        *(v8 - 1) = v6;
        ++v7;
        v8 -= 2;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    do
    {
      v6 = *(v4 + 16 * a3);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v6;
        *(v8 + 8) = v9;
        v8 -= 16;
        ++v7;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 24 * a3;
    v21 = *a4;
    do
    {
      v7 = a1;
      v18 = v6;
      v20 = v4;
      do
      {
        v8 = *v6;
        v9 = *(v6 - 24);
        v10 = *(v6 - 8);
        if (*(v6 + 16))
        {
          if (((v8 < v9) & v10) == 0)
          {
            break;
          }
        }

        else if ((v10 & 1) == 0)
        {
          v11 = *(v6 + 8);
          v12 = *(v6 - 16);
          if (!(v9 ^ v8 | v12 ^ v11))
          {
            break;
          }

          v17 = *(v6 - 16);
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(*v6, v11, *(v6 - 24), v12, 0);
          v5 = v21;
          v4 = v20;
          if (v13)
          {
            break;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)(v8, v11, v9, v17, 1);
          v5 = v21;
          v4 = v20;
          if ((v14 & 1) == 0)
          {
            break;
          }
        }

        if (!v5)
        {
          BUG();
        }

        v15 = *(v6 + 16);
        v16 = *v6;
        *v6 = *(v6 - 24);
        *(v6 + 16) = *(v6 - 24 + 16);
        *(v6 - 24) = v16;
        *(v6 - 8) = v15;
        ++v7;
        v6 -= 24;
      }

      while (v4 != v7);
      ++v4;
      v6 = v18 + 24;
    }

    while (v4 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 - 8;
    v6 = a3;
    do
    {
      v7 = *(v4 + 8 * v6);
      v8 = a3;
      do
      {
        v9 = *(v5 + 8 * v8);
        if (v7 >= v9)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        *(v5 + 8 * v8 + 8) = v9;
        *(v5 + 8 * v8--) = v7;
      }

      while (a1 != v8);
      ++v6;
      v5 += 8;
      --a1;
    }

    while (v6 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    do
    {
      v7 = *(v5 + 16 * v4);
      v8 = *(v5 + 16 * v4 + 8);
      v9 = a1;
      v12 = v6;
      do
      {
        v10 = *(v6 - 2);
        v11 = *(v6 - 1);
        if (v7 == v10 && v8 == v11)
        {
          break;
        }

        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v10, v11, 1) & 1) == 0)
        {
          break;
        }

        if (!v5)
        {
          BUG();
        }

        v7 = *v6;
        v8 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 2) = v7;
        *(v6 - 1) = v8;
        ++v9;
        v6 -= 2;
      }

      while (v4 != v9);
      ++v4;
      v6 = v12 + 2;
    }

    while (v4 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = a1;
      v7 = v5;
      do
      {
        if (*(v7 + 8))
        {
          BUG();
        }

        if (*(v7 - 8))
        {
          BUG();
        }

        v8 = *v7;
        if (*v7 >= *(v7 - 16))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        *v7 = *(v7 - 16);
        *(v7 - 16) = v8;
        *(v7 - 8) = 0;
        ++v6;
        v7 -= 16;
      }

      while (a3 != v6);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_19;
    }

    while (*(v11 - 2) < *(v5 - 2))
    {
      v15 = v5 - 16;
      v13 = v4 == v5;
      v5 -= 16;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 16;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = v11 - 16;
    v13 = v4 == v11;
    v11 -= 16;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v4 - 1) = *v15;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[16 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (*v5 < *v10)
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 16;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_10;
      }
    }

    v12 = v10;
    v13 = v6 == v10;
    v10 += 16;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_10:
  v5 = v6;
LABEL_19:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - v6;
  v10 = (a3 - v6) / 56;
  if (v8 / 56 >= v10)
  {
    v24 = (a3 - v6) / 56;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v10, a4);
    v11 = &v4[7 * v24];
    if (v9 < 56 || v7 >= v6)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v17 = v5 - 56;
      if (*(v11 - 1) <= *(v6 - 1))
      {
        break;
      }

      v18 = (v6 - 56);
      v13 = v5 == v6;
      v6 -= 56;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v6 > v7)
      {
        v5 -= 56;
        if (v11 > v4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v18 = v11 - 7;
    v13 = v5 == v11;
    v11 -= 7;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    *(v17 + 6) = v18[6];
    *(v17 + 2) = v21;
    *(v17 + 1) = v20;
    *v17 = v19;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v8 / 56, a4);
  v11 = &v4[7 * (v8 / 56)];
  if (v8 >= 56 && v6 < v5)
  {
    while (*(v6 + 6) > v4[6])
    {
      v12 = v6;
      v13 = v7 == v6;
      v6 += 56;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 += 56;
      if (v4 >= v11 || v6 >= v5)
      {
        goto LABEL_10;
      }
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 7;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    *(v7 + 6) = v12[6];
    *(v7 + 2) = v16;
    *(v7 + 1) = v15;
    *v7 = v14;
    goto LABEL_8;
  }

LABEL_10:
  v6 = v7;
LABEL_19:
  v22 = 7 * ((v11 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22 * 8);
  }

  return 1;
}

{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_19;
    }

    while (*(v11 - 1) < *(v5 - 1))
    {
      v15 = v5 - 16;
      v13 = v4 == v5;
      v5 -= 16;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 16;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = v11 - 16;
    v13 = v4 == v11;
    v11 -= 16;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v4 - 1) = *v15;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[16 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (*(v5 + 1) < *(v10 + 1))
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 16;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_10;
      }
    }

    v12 = v10;
    v13 = v6 == v10;
    v10 += 16;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_10:
  v5 = v6;
LABEL_19:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - v6;
  v10 = (a3 - v6) / 8;
  if (v8 / 8 >= v10)
  {
    v17 = (a3 - v6) / 8;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v10, a4);
    v11 = &v4[8 * v17];
    if (v9 < 8 || v7 >= v6)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v14 = *(v6 - 1);
      if (*(v11 - 1) >= v14)
      {
        break;
      }

      v13 = v5 == v6;
      v6 -= 8;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v6 > v7)
      {
        v5 -= 8;
        if (v11 > v4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v14 = *(v11 - 1);
    v13 = v5 == v11;
    v11 -= 8;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v5 - 1) = v14;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v8 / 8, a4);
  v11 = &v4[8 * (v8 / 8)];
  if (v8 >= 8 && v6 < v5)
  {
    while (1)
    {
      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 += 8;
      if (v4 >= v11 || v6 >= v5)
      {
        goto LABEL_10;
      }
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v7 = v12;
    goto LABEL_8;
  }

LABEL_10:
  v6 = v7;
LABEL_19:
  v15 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v15])
  {
    memmove(v6, v4, 8 * v15);
  }

  return 1;
}

{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (*(v11 - 8))
      {
        BUG();
      }

      if (*(v5 - 8))
      {
        BUG();
      }

      if (*(v11 - 2) >= *(v5 - 2))
      {
        break;
      }

      v15 = v5 - 16;
      v13 = v4 == v5;
      v5 -= 16;
      if (!v13)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v5 > v6)
      {
        v4 -= 16;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v15 = v11 - 16;
    v13 = v4 == v11;
    v11 -= 16;
    if (v13)
    {
      goto LABEL_21;
    }

LABEL_20:
    *(v4 - 1) = *v15;
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[16 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (1)
    {
      if (v5[8])
      {
        BUG();
      }

      if (v10[8])
      {
        BUG();
      }

      if (*v5 < *v10)
      {
        break;
      }

      v12 = v10;
      v13 = v6 == v10;
      v10 += 16;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }

    v12 = v5;
    v13 = v6 == v5;
    v5 += 16;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_24:
  v5 = v6;
LABEL_25:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

double specialized ContiguousArray.remove(at:)(unint64_t a1)
{
  v2 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native(*v1))
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  if (v3 <= a1)
  {
    BUG();
  }

  v4 = v3 - 1;
  v7 = *&v2[16 * a1 + 40];
  v5 = *&v2[16 * a1 + 32];
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v2[16 * a1 + 48], v4 - a1, &v2[16 * a1 + 32]);
  *(v2 + 2) = v4;
  *v1 = v2;
  return v7;
}

uint64_t specialized ContiguousArray._customRemoveLast()()
{
  v1 = *v0;
  if (!swift_isUniquelyReferenced_nonNull_native(*v0))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  if (!v2)
  {
    BUG();
  }

  v3 = v2 - 1;
  result = *&v1[16 * v3 + 32];
  v5 = *&v1[16 * v3 + 40];
  *(v1 + 2) = v3;
  *v0 = v1;
  return result;
}

uint64_t static MLWordTagger.evaluate(on:using:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v28 = v2;
  if (v3)
  {
    v5 = a1 + 40;
    v6 = 0;
    v7 = v3;
    do
    {
      v8 = __OFADD__(*(*v5 + 16), v6);
      v6 += *(*v5 + 16);
      if (v8)
      {
        BUG();
      }

      v5 += 16;
      --v7;
    }

    while (v7);
    v9 = _swiftEmptyArrayStorage[2];
    if (v9 <= v6)
    {
      v9 = v6;
    }

    v27 = a2;
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
    if (v6 <= 0)
    {
      v6 = 0;
    }

    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);
    a1;
    v29 = a1;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v11;
      v12;
      specialized Array.append<A>(contentsOf:)(v12);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v11;
      v14 = [v27 predictedLabelsForTokens:isa];
      v15 = v14;

      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v15, &type metadata for String);
      specialized Array.append<A>(contentsOf:)(v16);
      v10 += 2;
      --v3;
    }

    while (v3);
    v29;
    v17 = v31;
    v18 = v30;
  }

  else
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2], 0, _swiftEmptyArrayStorage);
    v30 = v18;
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, _swiftEmptyArrayStorage);
    v31 = v17;
  }

  v25 = v17;
  v26 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v20 = lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = v28;
  ClassificationMetrics.init<A, B>(_:_:)(&v25, &v26, &type metadata for String, v19, v19, &protocol witness table for String, v20, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v21, v22, 0);
  v23 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v21, v23, 0);
}

uint64_t MLWordTagger.evaluation(on:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = v6;
  v35 = a5;
  v34 = a4;
  v36 = v5;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v31 = *(v40 - 8);
  v8 = *(v31 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v30 = v29;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v44 = v29;
  v13 = type metadata accessor for DataFrame(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v41 = v29;
  v37 = a1;
  v39 = a2;
  v38 = a3;
  static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(a1, a2, a3, v34, v35);
  v43 = v13;
  v42 = v14;
  DataFrame.init()();
  static MLWordTagger.createTextColumn(_:name:context:)(v37, v39, v38, 0x6E656B6F54, 0xE500000000000000);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v19 = v44;
  v33 = v18;
  DataFrame.append<A>(column:)(v44, v18);
  v44 = *(v31 + 8);
  (v44)(v19, v40);
  v20 = v30;
  v21 = v34;
  v22 = v35;
  static MLWordTagger.createTextColumn(_:name:context:)(v37, v34, v35, 0x6C6562614CLL, 0xE500000000000000);
  v23 = v41;
  DataFrame.append<A>(column:)(v20, v33);
  (v44)(v20, v40);
  v24 = static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(v23, v39, v38, v21, v22);
  v25 = v42;
  v26 = v43;
  v27 = v24;
  static MLWordTagger.evaluate(on:using:)(v24, *v32);
  (*(v25 + 8))(v23, v26);
  return v27;
}

{
  v65 = a4;
  v61 = v5;
  v64 = v6;
  v66 = a5;
  v56 = type metadata accessor for DataFrame(0);
  v57 = *(v56 - 8);
  v8 = *(v57 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v58 = &v50;
  v11 = *a1;
  v12 = *(a1 + 8);
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v71, v52);
  inited[2] = 1;
  inited[3] = 2;
  v62 = a2;
  inited[4] = a2;
  inited[5] = a3;
  v72 = v11;
  v73._countAndFlagsBits = v11;
  v74 = v12;
  LOBYTE(v73._object) = v12;
  a3;
  v14 = 0;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v73, 0x6E656B6F54, 0xE500000000000000, inited);
  v67 = a3;
  v73._countAndFlagsBits = v72;
  LOBYTE(v73._object) = v74;
  v15 = swift_initStackObject(v71, v53);
  v15[2] = 1;
  v15[3] = 2;
  v15[4] = v65;
  v16 = v66;
  v15[5] = v66;
  v16;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v73, 0x6C6562614CLL, 0xE500000000000000, v15);
  swift_setDeallocating(v15);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v17 = swift_initStackObject(v71, v51);
  v17[2] = 2;
  v17[3] = 4;
  v17[4] = v62;
  v18 = v67;
  v17[5] = v67;
  v17[6] = v65;
  v17[7] = v16;
  v18;
  v16;
  v70 = v74;
  outlined copy of Result<_DataTable, Error>(v72, v74);
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v20 = empty;
  v54 = v17 + 4;
  v71 = 0;
  v21 = type metadata accessor for CMLTable();
  v22 = swift_allocObject(v21, 24, 7);
  v63 = v17;
  v23 = v22;
  *(v22 + 16) = v20;
  v24 = type metadata accessor for _DataTable();
  v25 = 40;
  swift_allocObject(v24, 40, 7);
  v68 = _DataTable.init(impl:)(v23);
  v69 = 0;
  v55 = "ml.activityclassifier" + 0x8000000000000000;
  v26 = v63;
  v63;
  v27 = 0;
  v28 = v74;
  do
  {
    v29 = 2 * v27;
    v30 = v54[v29];
    v31 = v54[v29 + 1];
    v59._countAndFlagsBits = v30;
    if (v28)
    {
      v32 = v72;
      swift_willThrow(v26, v25);
      outlined copy of Result<_DataTable, Error>(v32, 1);
      v31;
      v60 = 0;
LABEL_7:
      v35 = v31;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v73._object;
      v73._countAndFlagsBits = 0xD00000000000001FLL;
      v73._object = v55;
      v36._countAndFlagsBits = v59._countAndFlagsBits;
      v36._object = v31;
      String.append(_:)(v36);
      v36._countAndFlagsBits = 34;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v59 = v73;
      v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v38 = swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
      *v39 = v59;
      *(v39 + 16) = 0;
      *(v39 + 32) = 0;
      *(v39 + 48) = 1;
      outlined consume of Result<_DataTable, Error>(v32, v70);
      v25 = 1;
      outlined consume of Result<_DataTable, Error>(v38, 1);
      v26 = v35;
      v35;
      v41 = v67;
      v42 = v66;
      v14 = v60;
      goto LABEL_8;
    }

    v32 = v72;
    v33 = *(v72 + 16);
    outlined copy of Result<_DataTable, Error>(v72, 0);
    v31;

    v34 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v33, v30, v31);
    if (v14)
    {
      v14;

      v60 = 0;
      goto LABEL_7;
    }

    v44 = v34;

    outlined consume of Result<_DataTable, Error>(v32, 0);
    v45 = type metadata accessor for _UntypedColumn();
    v46 = swift_allocObject(v45, 24, 7);
    *(v46 + 16) = v44;
    outlined copy of Result<_DataTable, Error>(v46, 0);
    MLDataTable.willMutate()();
    v73._countAndFlagsBits = v46;
    LOBYTE(v73._object) = 0;
    MLDataTable.setColumnImpl(newColumn:named:)(&v73, v59._countAndFlagsBits, v31);
    v31;
    outlined consume of Result<_DataTable, Error>(v46, 0);
    if (!v69)
    {
      v47 = v68;
      outlined copy of Result<_DataTable, Error>(v68, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v47, 0);
    }

    v26 = v46;
    v25 = 0;
    outlined consume of Result<_DataTable, Error>(v46, 0);
    v41 = v67;
    v42 = v66;
LABEL_8:
    v27 = 1;
    v43 = (v71 & 1) == 0;
    LOBYTE(v40) = 1;
    v71 = v40;
    v28 = v74;
  }

  while (v43);
  swift_bridgeObjectRelease_n(v63, 2);
  outlined consume of Result<_DataTable, Error>(v72, v70);
  v73._countAndFlagsBits = v68;
  LOBYTE(v73._object) = v69;
  v48 = v58;
  DataFrame.init(_:)(&v73);
  MLWordTagger.evaluation(on:tokenColumn:labelColumn:)(v48, v62, v41, v65, v42);
  return (*(v57 + 8))(v48, v56);
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  return result;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy(v0 + 32, *(v0 + 16), &type metadata for String);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NSURLResourceKey(0);
  swift_arrayDestroy(v0 + 32, v1, v2);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  swift_arrayDestroy(v0 + 32, v1, v2);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  swift_arrayDestroy(v0 + 32, *(v0 + 16), &type metadata for MLLinearRegressor.ModelParameters);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  swift_arrayDestroy(v0 + 32, *(v0 + 16), &type metadata for MLLogisticRegressionClassifier.ModelParameters);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&demangling cache variable for type metadata for (name: String, parameter: Parameter));
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&demangling cache variable for type metadata for (name: String, state: LayerState));
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(type metadata accessor for MLCheckpoint);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&type metadata accessor for URL);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v3 = *(*(v2 - 8) + 80);
  swift_arrayDestroy(v1 + ((v3 + 32) & ~v3), *(v1 + 16), v2);
  return swift_deallocClassInstance(v1, 32, 7);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  swift_arrayDestroy(v1 + ((v3 + 32) & ~v3), *(v1 + 16), v2);
  return swift_deallocClassInstance(v1, 32, 7);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance [A] = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance [A] = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance [A] = result;
  }

  return result;
}

char static Rectangle.== infix(_:_:)(float a1, __m128 a2, __m128 a3, float a4, float a5, __m128 a6, __m128 a7, float a8)
{
  if (a1 == a5)
  {
    return _mm_cvtsi128_si32(_mm_and_ps(_mm_cmpeq_ps(a2, a6), _mm_cmpeq_ps(a3, a7))) & (a4 == a8);
  }

  else
  {
    return 0;
  }
}

char Rectangle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x7265746E6563 | a2 ^ 0xE600000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x7265746E6563, 0xE600000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x657A6973 | a2 ^ 0xE400000000000000)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(1702521203, 0xE400000000000000, a1, a2, 0);
      a2, 0xE400000000000000;
      return 2 - (v3 & 1);
    }

    else
    {
      a2, 0xE400000000000000;
      return 1;
    }
  }

  else
  {
    a2, 0xE600000000000000;
    return 0;
  }
}

uint64_t Rectangle.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7265746E6563;
  if (a1)
  {
    return 1702521203;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle.CodingKeys(uint64_t a1)
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle.CodingKeys(a1);
}

{
  v2 = *v1;
  Hasher.init(_seed:)(a1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

char protocol witness for CodingKey.init(stringValue:) in conformance Rectangle.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = Rectangle.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(intValue:) in conformance Rectangle.CodingKeys()
{
  v1 = v0;
  result = Rectangle.CodingKeys.init(intValue:)();
  *v1 = result;
  return result;
}

uint64_t Rectangle.encode(to:)(void *a1, __m128 a2, __m128 a3, float a4, float a5)
{
  v20 = v5;
  v23 = a5;
  v24 = a4;
  inserted = _mm_insert_ps(a2, a3, 16);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<Rectangle.CodingKeys>);
  v22 = *(v21 - 8);
  v6 = *(v22 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v9);
  v11 = lazy protocol witness table accessor for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38F420, &unk_38F420, v11, v9, v10);
  _mm_storel_ps(&v19, inserted);
  v25[0] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SIMD2<Float>);
  v13 = lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &protocol conformance descriptor for SIMD2<A>);
  v14 = v21;
  v15 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v19, v25, v21, v12, v13);
  if (!v15)
  {
    v19 = __PAIR64__(LODWORD(v23), LODWORD(v24));
    v25[0] = 1;
    v17 = lazy protocol witness table accessor for type Rectangle.Size and conformance Rectangle.Size();
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v19, v25, v14, &type metadata for Rectangle.Size, v17);
  }

  return (*(v22 + 8))(&inserted, v14);
}

void Rectangle.hash(into:)(__m128 a1, __m128 a2, __m128 a3, __m128 a4)
{
  Rectangle.Size.hash(into:)(a1, a2);
  Hasher._combine(_:)(_mm_cvtsi128_si32(_mm_andnot_ps(_mm_cmpeq_ss(a3, 0), a3)));
  Hasher._combine(_:)(_mm_cvtsi128_si32(_mm_andnot_ps(_mm_cmpeq_ss(0, a4), a4)));
}

Swift::Int Rectangle.hashValue.getter(float a1, float a2, float a3, float a4)
{
  Hasher.init(_seed:)(0);
  Rectangle.hash(into:)(LODWORD(a1), LODWORD(a2), LODWORD(a3), LODWORD(a4));
  return Hasher._finalize()();
}

uint64_t Rectangle.init(from:)(void *a1)
{
  v19 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<Rectangle.CodingKeys>);
  v18 = *(v15 - 8);
  v2 = *(v18 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = a1[3];
  *&v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v6 = lazy protocol witness table accessor for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys();
  v20 = &v14;
  v7 = v19;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38F420, &unk_38F420, v6, v5, v16);
  if (v7)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SIMD2<Float>);
  v21[0] = 0;
  v9 = lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &protocol conformance descriptor for SIMD2<A>);
  v10 = v15;
  KeyedDecodingContainer.decode<A>(_:forKey:)(v8, v21, v15, v8, v9);
  v16 = v17;
  v21[0] = 1;
  v11 = lazy protocol witness table accessor for type Rectangle.Size and conformance Rectangle.Size();
  v12 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for Rectangle.Size, v21, v10, &type metadata for Rectangle.Size, v11);
  (*(v18 + 8))(v12, v10);
  LODWORD(v18) = HIDWORD(v17);
  LODWORD(v20) = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

char Rectangle.Size.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x6874646977 | a2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6874646977, 0xE500000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x746867696568 | a2 ^ 0xE600000000000000)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x746867696568, 0xE600000000000000, a1, a2, 0);
      a2, 0xE600000000000000;
      return 2 - (v3 & 1);
    }

    else
    {
      a2, 0xE600000000000000;
      return 1;
    }
  }

  else
  {
    a2, 0xE500000000000000;
    return 0;
  }
}

Swift::Int Rectangle.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t Rectangle.Size.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6874646977;
  if (a1)
  {
    return 0x746867696568;
  }

  return result;
}

uint64_t Rectangle.Size.encode(to:)(void *a1, float a2, float a3)
{
  v11[1] = v3;
  v15 = a3;
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<Rectangle.Size.CodingKeys>);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v9 = lazy protocol witness table accessor for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38F530, &unk_38F530, v9, v8, v12);
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)(&v16, v4, a2);
  if (!v3)
  {
    v17[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)(v17, v4, v15);
  }

  return (*(v13 + 8))(v11, v4);
}

Swift::Int Rectangle.Size.hashValue.getter(float a1, float a2)
{
  Hasher.init(_seed:)(0);
  Rectangle.Size.hash(into:)(LODWORD(a1), LODWORD(a2));
  return Hasher._finalize()();
}

uint64_t Rectangle.Size.init(from:)(void *a1, float a2)
{
  v17 = v2;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<Rectangle.Size.CodingKeys>);
  v15 = *(v18 - 8);
  v3 = *(v15 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v7 = a1[4];
  v14 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v8 = lazy protocol witness table accessor for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys();
  v13 = &v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38F530, &unk_38F530, v8, v6, v7);
  v19 = 0;
  v9 = v13;
  KeyedDecodingContainer.decode(_:forKey:)(&v19, v18);
  *&v17 = a2;
  v20[0] = 1;
  v10 = v18;
  KeyedDecodingContainer.decode(_:forKey:)(v20, v18);
  v16 = a2;
  (*(v15 + 8))(v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Rectangle(void *a1, __m128 a2, __m128 a3, float a4, float a5)
{
  v7 = v5;
  result = Rectangle.init(from:)(a1);
  if (!v6)
  {
    _mm_storel_ps(v7, _mm_insert_ps(a2, a3, 16));
    *(v7 + 8) = a4;
    *(v7 + 12) = a5;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  Hasher.init(_seed:)(a1);
  Rectangle.hash(into:)(v3, _mm_movehdup_ps(v3), v4, v5);
  return Hasher._finalize()();
}

char protocol witness for CodingKey.init(stringValue:) in conformance Rectangle.Size.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = Rectangle.Size.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Rectangle.Size(void *a1, float a2, float a3)
{
  v5 = v3;
  result = Rectangle.Size.init(from:)(a1, a2);
  if (!v4)
  {
    *v5 = a2;
    v5[1] = a3;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle.Size(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  Hasher.init(_seed:)(a1);
  Rectangle.Size.hash(into:)(v3, v4);
  return Hasher._finalize()();
}

_OWORD *__swift_memcpy16_8(_OWORD *a1, _OWORD *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle, &type metadata for Rectangle);
    lazy protocol witness table cache variable for type Rectangle and conformance Rectangle = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Rectangle.Size and conformance Rectangle.Size()
{
  result = lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size;
  if (!lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size, &type metadata for Rectangle.Size);
    lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size;
  if (!lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size, &type metadata for Rectangle.Size);
    lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size;
  if (!lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size, &type metadata for Rectangle.Size);
    lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for SIMD2<Float>);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Rectangle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  return getEnumTagSinglePayload for Rectangle.CodingKeys(a1, a2);
}

{
  if (a2)
  {
    if (a2 < 0xFF)
    {
      goto LABEL_13;
    }

    v2 = a2 + 1;
    v3 = 1;
    if (v2 >= 0xFF00)
    {
      v3 = 2 * (v2 >= 0xFFFF00) + 2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = v3 == 2 ? *(a1 + 1) : a1[1];
    }

    if (v4)
    {
      v5 = *a1 + (v4 << 8) - 2;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 2;
      v8 = v6 < 2;
      v5 = -1;
      if (!v8)
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Rectangle.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  return storeEnumTagSinglePayload for Rectangle.CodingKeys(a1, a2, a3);
}

{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 1;
        }

        break;
      case 5:
        JUMPOUT(0x35E24);
    }
  }

  return result;
}

void *__swift_memcpy8_4(void *a1, void *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Rectangle.Size(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 8))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for Rectangle.Size(uint64_t a1, int a2, int a3)
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

  *a1 = (a2 - 1);
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 8) = v3;
  }
}

uint64_t lazy protocol witness table accessor for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLRecommender.Identifier(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLRecommender.Identifier(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of MLRecommender.Identifier(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLRecommender.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MLRecommender.Identifier(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of MLRecommender.Identifier(v6, v7, v8);
  return a1;
}

uint64_t __swift_memcpy17_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  return result;
}

uint64_t assignWithTake for MLRecommender.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of MLRecommender.Identifier(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLRecommender.Identifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 16) >= 2u)
      {
        v2 = *(a1 + 16) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLRecommender.Identifier(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
    *(a1 + 16) = 0;
    if (a3 >= 0xFF)
    {
      *(a1 + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 17) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = -a2;
    }
  }
}

uint64_t storeEnumTagSinglePayload for MLRecommender.IdentifierType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t MLRecommender.Identifier.description.getter(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    v4 = lazy protocol witness table accessor for type Int and conformance Int();
    return BinaryInteger.description.getter(&type metadata for Int, v4);
  }

  else
  {
    a2;
  }

  return a1;
}

uint64_t static MLRecommender.Identifier.< infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      LOBYTE(v6) = a1 < a4;
      return v6;
    }

LABEL_5:
    LOBYTE(v6) = (a3 & 1) < (a6 & 1);
    return v6;
  }

  if (a6)
  {
    goto LABEL_5;
  }

  v6 = 0;
  if (!(a4 ^ a1 | a5 ^ a2) || (_stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 0) & 1) != 0)
  {
    return v6;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 1);
}

uint64_t static MLRecommender.Identifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a3)
  {
    LOBYTE(a6) = (a1 == a4) & a6;
    return a6;
  }

  if (a6)
  {
    return 0;
  }

  LOBYTE(a6) = 1;
  if (!(a4 ^ a1 | a5 ^ a2))
  {
    return a6;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 0);
}

void MLRecommender.Identifier.hash(into:)(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4)
{
  if (a4)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a2);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(a1, a2);
  }
}