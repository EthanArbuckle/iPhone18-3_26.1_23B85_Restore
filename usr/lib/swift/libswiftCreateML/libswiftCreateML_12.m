void *specialized RecommenderModel.score<A>(itemIndices:interactions:)(void *a1, void *a2)
{
  v47 = v2[13];
  if (!v47)
  {
    BUG();
  }

  v43 = v2[14];
  v48 = v2[12];
  v4 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v48, 0.0);
  a2;
  v49 = v4;
  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = a2[2];
  v6 = v48;
  v7 = v43;
  if (!v5)
  {
    v49;
    v33 = a2;
LABEL_37:
    v33;
    return 0;
  }

  v8 = a2 + 4;
  v40 = v49 + 4;
  v9 = 0;
  v10 = 0;
  v41 = v2;
  v39 = a1;
  v42 = a2[2];
  do
  {
    v11 = v8[2 * v10];
    if (v11 < v6)
    {
      if (v11 < 0)
      {
        BUG();
      }

      v12 = *(v7 + 16);
      if (v11 >= v12)
      {
        BUG();
      }

      if (v11 + 1 >= v12)
      {
        BUG();
      }

      v13 = *(v7 + 8 * v11 + 32);
      v14 = *(v7 + 8 * v11 + 40);
      if (v14 < v13)
      {
        BUG();
      }

      if (v13 < 0)
      {
        BUG();
      }

      v15 = *(v47 + 16);
      if (v15 < v13 || v15 < v14)
      {
        BUG();
      }

      if (v14 != v13)
      {
        v16 = v14 - v13;
        if (v14 <= v13)
        {
          BUG();
        }

        v37 = v10;
        v44 = *&v8[2 * v10 + 1];
        v17 = v2[10];
        v46 = v2[11];
        v36 = *(v46 + 16);
        v38 = v9 + v14 - v13;
        v47;
        v18 = (v47 + 40 + 16 * v13);
        do
        {
          v19 = *(v18 - 1);
          if (v19 < 0)
          {
            BUG();
          }

          if (v19 >= v49[2])
          {
            BUG();
          }

          v36(&v40[v19], v17, v46, v44, *v18);
          if (__OFADD__(1, v9++))
          {
            BUG();
          }

          v18 += 2;
          --v16;
        }

        while (v16);
        v47;
        v9 = v38;
        a1 = v39;
        v2 = v41;
        v6 = v48;
        v5 = v42;
        v7 = v43;
        v8 = a2 + 4;
        v10 = v37;
      }
    }

    ++v10;
  }

  while (v10 != v5);
  a2;
  if (v9 <= 0)
  {
    v33 = v49;
    goto LABEL_37;
  }

  v21 = a1[2];
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0, _swiftEmptyArrayStorage);
  v45 = v21;
  if (v21)
  {
    a1;
    v23 = 0;
    v24 = v48;
    do
    {
      v25 = a1[v23 + 4];
      if (v25 >= v24)
      {
        v28 = v22[2];
        v29 = v22[3];
        v30 = v29 >> 1;
        v31 = v28 + 1;
        v27 = 0.0;
      }

      else
      {
        if (v25 < 0)
        {
          BUG();
        }

        if (v25 >= v49[2])
        {
          BUG();
        }

        v26 = v41[10];
        v27 = *&v40[v25];
        (*(v41[11] + 24))(v42, v27);
        v24 = v48;
        v28 = v22[2];
        v29 = v22[3];
        v30 = v29 >> 1;
        v31 = v28 + 1;
      }

      if (v30 <= v28)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 >= 2, v31, 1, v22);
        v24 = v48;
        v22 = v32;
      }

      ++v23;
      v22[2] = v31;
      *&v22[v28 + 4] = v27;
    }

    while (v45 != v23);
    v49;
    v34 = a1;
  }

  else
  {
    v34 = v49;
  }

  v34;
  return v22;
}

{
  v52 = v2[13];
  if (!v52)
  {
    BUG();
  }

  v51 = v2[14];
  v62 = v2[12];
  v63 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v62, 0.0);
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v50 = v2;
  v4 = a2[3];
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
    BUG();
  }

  v6 = a2[4];
  v61 = a2[5];
  v53 = a2[3];
  v54 = *(v4 + 8 * v3 + 32);
  outlined retain of SparseMatrix<Double>.MajorCollection(a2);
  if (!swift_isUniquelyReferenced_nonNull_native(v63))
  {
    v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v63);
  }

  v7 = v62;
  v8 = v51;
  if (v3 + 1 >= v5)
  {
    BUG();
  }

  v9 = *(v53 + 8 * v3 + 40);
  if (v54 == v9)
  {

    v6;
    v53;
LABEL_43:
    v63;
    return 0;
  }

  v10 = *(v61 + 16);
  v11 = *(v6 + 16);
  v49 = v63 + 4;
  v12 = v52;
  v13 = 0;
  v14 = v54;
  v58 = v9;
  v46 = v6;
  v47 = v10;
  v48 = v11;
  do
  {
    if (v14 >= v11)
    {
      BUG();
    }

    v15 = v14;
    if (v14 >= v10)
    {
      BUG();
    }

    ++v14;
    if (__OFADD__(1, v15))
    {
      BUG();
    }

    v16 = *(v6 + 4 * v15 + 32);
    if (v7 > v16)
    {
      if (v16 < 0)
      {
        BUG();
      }

      v17 = *(v8 + 16);
      if (v17 <= v16)
      {
        BUG();
      }

      if (v16 + 1 >= v17)
      {
        BUG();
      }

      v18 = *(v8 + 8 * v16 + 32);
      v19 = *(v8 + 8 * v16 + 40);
      if (v19 < v18)
      {
        BUG();
      }

      if (v18 < 0)
      {
        BUG();
      }

      v20 = *(v12 + 16);
      if (v20 < v18 || v20 < v19)
      {
        BUG();
      }

      if (v19 != v18)
      {
        v21 = v19 - v18;
        if (v19 <= v18)
        {
          BUG();
        }

        v44 = v15 + 1;
        v55 = *(v61 + 8 * v15 + 32);
        v22 = v50[10];
        v23 = v12;
        v24 = v50[11];
        v57 = *(v24 + 16);
        v45 = v13 + v19 - v18;
        v23;
        v25 = (v52 + 40 + 16 * v18);
        do
        {
          v26 = *(v25 - 1);
          if (v26 < 0)
          {
            BUG();
          }

          if (v26 >= v63[2])
          {
            BUG();
          }

          v57(&v49[v26], v22, v24, v55, *v25);
          if (__OFADD__(1, v13++))
          {
            BUG();
          }

          v25 += 2;
          --v21;
        }

        while (v21);
        v12 = v52;
        v52;
        v13 = v45;
        v7 = v62;
        v9 = v58;
        v8 = v51;
        v6 = v46;
        v10 = v47;
        v11 = v48;
        v14 = v44;
      }
    }
  }

  while (v14 != v9);

  v6;
  v53;
  if (v13 <= 0)
  {
    goto LABEL_43;
  }

  v28 = a1[2];
  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0, _swiftEmptyArrayStorage);
  if (v28)
  {
    v59 = v9 - v54;
    v56 = __OFSUB__(v9, v54);
    a1;
    v30 = 0;
    v31 = a1;
    v32 = v62;
    do
    {
      v33 = v31[v30 + 4];
      if (v33 >= v32)
      {
        v36 = v29[2];
        v37 = v29[3];
        v38 = v37 >> 1;
        v39 = v36 + 1;
        v35 = 0.0;
      }

      else
      {
        if (v33 < 0)
        {
          BUG();
        }

        if (v33 >= v63[2])
        {
          BUG();
        }

        if (v56)
        {
          BUG();
        }

        v34 = v50[10];
        v35 = *&v49[v33];
        (*(v50[11] + 24))(v59, v35);
        v32 = v62;
        v31 = a1;
        v36 = v29[2];
        v37 = v29[3];
        v38 = v37 >> 1;
        v39 = v36 + 1;
      }

      if (v38 <= v36)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 >= 2, v39, 1, v29);
        v32 = v62;
        v31 = a1;
        v29 = v40;
      }

      ++v30;
      v29[2] = v39;
      *&v29[v36 + 4] = v35;
    }

    while (v28 != v30);
    v41 = v31;
    v63;
    v42 = v41;
  }

  else
  {
    v42 = v63;
  }

  v42;
  return v29;
}

void specialized SparseMatrix.subscript.setter(uint64_t a1, uint64_t a2, double a3)
{
  v22 = a3;
  v4 = a1;
  v5 = a2;
  if (*(v3 + 16))
  {
    v5 = a1;
    v4 = a2;
  }

  if (v4 < 0)
  {
    BUG();
  }

  v6 = *(v3 + 24);
  v7 = *(v6 + 16);
  if (v4 >= v7)
  {
    BUG();
  }

  if (v4 + 1 >= v7)
  {
    BUG();
  }

  v8 = *(v6 + 8 * v4 + 32);
  v9 = *(v6 + 8 * v4 + 40);
  if (v8 == v9)
  {
    if (a3 == 0.0)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v8 > v9)
  {
    BUG();
  }

  if (v8 < 0)
  {
    BUG();
  }

  v10 = *(v3 + 32);
  v11 = *(v10 + 16);
  if (v11 < v8 || v11 < v9)
  {
    BUG();
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v5 > 0x7FFFFFFF)
  {
    BUG();
  }

  v23 = a3;
  v21 = v10 + 32;
  v12 = specialized Collection<>.firstIndex(of:)(v5, v10, v10 + 32, v8, 2 * v9 + 1);
  if (v13)
  {
    if (v23 != 0.0)
    {
      if (v8 >= v9)
      {
        BUG();
      }

      if (*(v21 + 4 * v8) > v5)
      {
        v14 = v8;
LABEL_20:
        v8 = v14;
LABEL_21:
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SparseMatrix<Double>);
        v16 = v8;
LABEL_22:
        SparseMatrix.insert(index:major:minor:value:)(v16, v4, v5, &v22, v15);
        return;
      }

      v14 = v8 + 1;
      if (v8 + 1 != v9)
      {
        if (v8 + 1 >= v9)
        {
          BUG();
        }

        if (*(v21 + 4 * v8 + 4) > v5)
        {
          goto LABEL_20;
        }

        v14 = v8 + 2;
        if (v8 + 2 != v9)
        {
          if (v8 + 2 >= v9)
          {
            BUG();
          }

          if (*(v21 + 4 * v8 + 8) > v5)
          {
            goto LABEL_20;
          }

          v19 = v8 + 3;
          while (v19 != v9)
          {
            v14 = v8 + 3;
            if (v8 + 3 >= v9)
            {
              BUG();
            }

            if (*(v10 + 4 * v8 + 44) > v5)
            {
              goto LABEL_20;
            }

            v20 = __OFADD__(1, v14);
            v19 = v8 + 4;
            if (v20)
            {
              BUG();
            }

            ++v8;
          }
        }
      }

      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SparseMatrix<Double>);
      v16 = v9;
      goto LABEL_22;
    }
  }

  else
  {
    v17 = v12;
    if (v23 == 0.0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SparseMatrix<Double>);
      SparseMatrix.remove(index:major:)(v17, v4);
    }

    else
    {
      v18 = *(v3 + 40);
      if (!swift_isUniquelyReferenced_nonNull_native(v18))
      {
        v18 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v18);
      }

      if (v17 < 0)
      {
        BUG();
      }

      if (v17 >= *(v18 + 2))
      {
        BUG();
      }

      *&v18[8 * v17 + 32] = v23;
      *(v3 + 40) = v18;
    }
  }
}

uint64_t outlined destroy of MLRecommender.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLRecommender.ModelParameters(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(void, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v2;
  if (!result)
  {
    result = a1(0, *(v2 + 16) + 1, 1, v2);
    *v1 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  result = a2;
  if (*(*v2 + 24) >> 1 < a1 + 1)
  {
    result = a2(*(*v2 + 24) >= 2uLL, a1 + 1, 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_B727F()
{
  v1 = type metadata accessor for Model(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  (*(v2 + 8))(v5, v1);
  return swift_deallocObject(v0, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(a1, v4);
}

uint64_t *outlined release of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(uint64_t *a1)
{
  v9 = *a1;
  v14 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v11 = a1[12];
  v12 = a1[13];
  v13 = a1[14];
  v8 = a1[15];
  v10 = a1[16];

  v5;
  v4;
  v3;
  v2;
  v14;
  v9;
  outlined consume of InteractionLookupTable?(v11, v12, v13);
  v10;
  v8;
  return a1;
}

uint64_t outlined consume of InteractionLookupTable?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2, a2;
    return a3, a2;
  }

  return result;
}

uint64_t outlined consume of MLRecommender.Identifier(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a2, a2;
  }

  return result;
}

uint64_t specialized UnsafeMutableBufferPointer.swapAt(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    if (!a3)
    {
      BUG();
    }

    v3 = 16 * a1;
    v4 = 16 * a2;
    result = *(a3 + v3);
    v6 = *(a3 + v3 + 8);
    *(a3 + v3) = *(a3 + v4);
    *(a3 + v4) = result;
    *(a3 + v4 + 8) = v6;
  }

  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1[1];
  swift_bridgeObjectRetain_n(a2, 3);
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 0)
    {
      BUG();
    }

    if (v4)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
      v8 = a2;
      goto LABEL_112;
    }

    v8 = a2;
LABEL_111:
    v3;
    goto LABEL_112;
  }

  if (v4 < -1)
  {
    BUG();
  }

  v86 = v4;
  v83 = v5;
  if (v4 > 1)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(v4 / 2, &type metadata for Int);
    *(v6 + 16) = v4 / 2;
    v94 = v6;
    v7 = (v6 + 32);
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v94 = _swiftEmptyArrayStorage;
    v7 = &_swiftEmptyArrayStorage[4];
LABEL_10:
    v93 = v7;
    v95 = a2 + 32;
    v92 = *a1;
    v85 = *a1 - 8;
    v9 = _swiftEmptyArrayStorage;
    v10 = 0;
    v11 = v4;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      v100 = v12;
      if (v13 >= v11)
      {
        v14 = v92;
      }

      else
      {
        v14 = v92;
        v15 = *(v92 + 8 * v12 + 8);
        if (v15 < 0)
        {
          BUG();
        }

        v16 = *(v3 + 16);
        if (v15 >= v16)
        {
          BUG();
        }

        v17 = *(v92 + 8 * v12);
        if (v17 >= v16)
        {
          BUG();
        }

        v18 = *(v95 + 16 * v15);
        v19 = *(v95 + 16 * v17);
        v13 = v12 + 2;
        if (v12 + 2 < v11)
        {
          v20 = v9;
          v21 = *(v95 + 16 * v15);
          while (1)
          {
            v22 = *(v92 + 8 * v13);
            if (v22 >= v16)
            {
              BUG();
            }

            if (v15 >= v16)
            {
              BUG();
            }

            v23 = v13;
            if (v18 < v19 == *(v95 + 16 * v22) >= v21)
            {
              break;
            }

            ++v13;
            v21 = *(v95 + 16 * v22);
            v15 = v22;
            if (v23 + 1 >= v11)
            {
              v13 = v11;
              v9 = v20;
              goto LABEL_24;
            }
          }

          v9 = v20;
LABEL_24:
          v12 = v100;
        }

        if (v18 < v19)
        {
          if (v13 < v12)
          {
            BUG();
          }

          if (v13 > v12)
          {
            v24 = v13 - 1;
            v25 = v12;
            do
            {
              if (v25 != v24)
              {
                if (!v92)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                v26 = *(v92 + 8 * v25);
                *(v92 + 8 * v25) = *(v92 + 8 * v24);
                *(v92 + 8 * v24) = v26;
              }

              v27 = ++v25 < v24--;
            }

            while (v27);
          }
        }
      }

      if (v13 < v11)
      {
        if (__OFSUB__(v13, v12))
        {
          BUG();
        }

        if (v13 - v12 < v83)
        {
          v28 = (v83 + v12);
          if (__OFADD__(v83, v12))
          {
            BUG();
          }

          if (v28 >= v11)
          {
            v28 = v11;
          }

          if (v28 < v12)
          {
            BUG();
          }

          if (v13 != v28)
          {
            v29 = v12;
            v30 = v85;
            v31 = v13;
            do
            {
              v32 = *(v14 + 8 * v31);
              v33 = v13;
              do
              {
                if (v32 < 0)
                {
                  BUG();
                }

                v34 = *(v3 + 16);
                if (v32 >= v34)
                {
                  BUG();
                }

                v35 = *(v30 + 8 * v13);
                if (v35 >= v34)
                {
                  BUG();
                }

                if (*(v95 + 16 * v32) >= *(v95 + 16 * v35))
                {
                  break;
                }

                if (!v14)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                *(v30 + 8 * v13 + 8) = v35;
                *(v30 + 8 * v13--) = v32;
              }

              while (v29 != v13);
              ++v31;
              v30 += 8;
              --v29;
              v13 = v33;
            }

            while (v31 != v28);
            v13 = v28;
            v12 = v100;
          }
        }
      }

      if (v13 < v12)
      {
        BUG();
      }

      v91 = v13;
      v36 = v9;
      if (swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = v36;
      }

      else
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v37 = *(v9 + 2);
      v38 = v37 + 1;
      v10 = v91;
      v39 = v100;
      if (*(v9 + 3) >> 1 <= v37)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v9 + 3) >= 2uLL, v37 + 1, 1, v9);
        v39 = v100;
        v10 = v91;
        v9 = v70;
      }

      *(v9 + 2) = v38;
      v40 = 16 * v37;
      *&v9[v40 + 32] = v39;
      *&v9[v40 + 40] = v10;
      if (v37)
      {
        break;
      }

      v38 = 1;
      v3 = a2;
LABEL_91:
      v11 = v86;
      if (v10 >= v86)
      {
        goto LABEL_98;
      }
    }

    v41 = v9 + 32;
    v3 = a2;
    v98 = v9;
    v101 = v9 + 32;
    while (1)
    {
      v42 = v38 - 1;
      if (v38 >= 4)
      {
        v47 = 16 * v38;
        v48 = *&v41[16 * v38 - 56];
        v44 = __OFSUB__(v48, *&v41[16 * v38 - 64]);
        v49 = v48 - *&v41[16 * v38 - 64];
        if (v44)
        {
          BUG();
        }

        v50 = *&v41[v47 - 40];
        v44 = __OFSUB__(v50, *&v41[v47 - 48]);
        v45 = v50 - *&v41[v47 - 48];
        v46 = v44;
        if (v44)
        {
          BUG();
        }

        v51 = *&v9[v47 + 8];
        v44 = __OFSUB__(v51, *&v9[16 * v38]);
        v52 = v51 - *&v9[16 * v38];
        if (v44)
        {
          BUG();
        }

        v44 = __OFADD__(v45, v52);
        v53 = v45 + v52;
        if (v44)
        {
          BUG();
        }

        if (v53 >= v49)
        {
          v62 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v62, *&v41[16 * v42]);
          v63 = v62 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v45 < v63)
          {
LABEL_81:
            v42 = v38 - 2;
            goto LABEL_82;
          }

          goto LABEL_82;
        }
      }

      else
      {
        if (v38 != 3)
        {
          if (v38 < 2)
          {
            BUG();
          }

          v59 = *&v9[16 * v38 + 8];
          v44 = __OFSUB__(v59, *&v9[16 * v38]);
          v55 = v59 - *&v9[16 * v38];
          v56 = v44;
LABEL_75:
          if (v56)
          {
            BUG();
          }

          v60 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v60, *&v41[16 * v42]);
          v61 = v60 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v61 < v55)
          {
            goto LABEL_91;
          }

          goto LABEL_82;
        }

        v43 = *(v9 + 5);
        v44 = __OFSUB__(v43, *(v9 + 4));
        v45 = v43 - *(v9 + 4);
        v46 = v44;
      }

      if (v46)
      {
        BUG();
      }

      v54 = *&v9[16 * v38 + 8];
      v44 = __OFSUB__(v54, *&v9[16 * v38]);
      v55 = v54 - *&v9[16 * v38];
      v56 = v44;
      if (v44)
      {
        BUG();
      }

      v57 = *&v41[16 * v42 + 8];
      v44 = __OFSUB__(v57, *&v41[16 * v42]);
      v58 = v57 - *&v41[16 * v42];
      if (v44)
      {
        BUG();
      }

      if (__OFADD__(v58, v55))
      {
        BUG();
      }

      if (v58 + v55 < v45)
      {
        goto LABEL_75;
      }

      if (v45 < v58)
      {
        goto LABEL_81;
      }

LABEL_82:
      if (v42 - 1 >= v38)
      {
        BUG();
      }

      if (!v92)
      {
        swift_bridgeObjectRelease_n(v3, 3);
        BUG();
      }

      v64 = 16 * (v42 - 1);
      v81 = v42;
      v65 = &v41[16 * v42];
      v66 = *&v41[v64];
      v67 = *(v65 + 1);
      __dst = v65;
      v88 = (v92 + 8 * *v65);
      v3;
      specialized _merge<A>(low:mid:high:buffer:by:)((v92 + 8 * v66), v88, (v92 + 8 * v67), v93, v3);
      if (v2)
      {
        v71 = v98;
        goto LABEL_95;
      }

      if (v67 < v66)
      {
        BUG();
      }

      v68 = &v101[v64];
      v69 = *(v98 + 2);
      if (v81 > v69)
      {
        BUG();
      }

      *v68 = v66;
      *(v68 + 1) = v67;
      if (v81 >= v69)
      {
        BUG();
      }

      v38 = v69 - 1;
      memmove(__dst, __dst + 16, 16 * (v69 - 1 - v81));
      v41 = v101;
      v9 = v98;
      *(v98 + 2) = v69 - 1;
      v27 = v69 <= 2;
      v3 = a2;
      v10 = v91;
      if (v27)
      {
        goto LABEL_91;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
  v93 = &_swiftEmptyArrayStorage[4];
  v38 = _swiftEmptyArrayStorage[2];
  v94 = _swiftEmptyArrayStorage;
LABEL_98:
  if (v38 < 2)
  {
LABEL_110:
    v9;
    v8 = v94;
    v94[2] = 0;
    v3;
    goto LABEL_111;
  }

  v72 = *a1;
  v90 = *a1;
  while (1)
  {
    v73 = v3;
    if (!v72)
    {
      swift_bridgeObjectRelease_n(v3, 3);
      BUG();
    }

    v74 = 16 * (v38 - 1);
    v99 = v9;
    v75 = *&v9[v74 + 40];
    v96 = *&v9[16 * v38];
    v102 = (v72 + 8 * v96);
    __src = (v72 + 8 * *&v9[v74 + 32]);
    v89 = (v72 + 8 * v75);
    v73;
    specialized _merge<A>(low:mid:high:buffer:by:)(v102, __src, v89, v93, a2);
    if (v2)
    {
      break;
    }

    if (v75 < v96)
    {
      BUG();
    }

    v103 = v75;
    if (swift_isUniquelyReferenced_nonNull_native(v99))
    {
      v76 = v99;
    }

    else
    {
      v76 = specialized _ArrayBuffer._consumeAndCreateNew()(v99);
    }

    v77 = *(v76 + 2);
    if (v38 - 2 >= v77)
    {
      BUG();
    }

    *&v76[16 * v38] = v96;
    *&v76[16 * v38 + 8] = v103;
    v78 = v77 - v38;
    if (v77 < v38)
    {
      BUG();
    }

    v38 = v77 - 1;
    v79 = v76;
    memmove(&v76[v74 + 32], &v76[v74 + 48], 16 * v78);
    v9 = v79;
    *(v79 + 2) = v77 - 1;
    v27 = v77 <= 2;
    v3 = a2;
    v72 = v90;
    if (v27)
    {
      goto LABEL_110;
    }
  }

  v71 = v99;
  v3 = a2;
LABEL_95:
  v71;
  v8 = v94;
  v94[2] = 0;
  swift_bridgeObjectRelease_n(v3, 2);
LABEL_112:
  v8;
  return swift_bridgeObjectRelease_n(v3, 2);
}

{
  v3 = a2;
  v4 = a1[1];
  swift_bridgeObjectRetain_n(a2, 3);
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 0)
    {
      BUG();
    }

    if (v4)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
      v8 = a2;
      goto LABEL_112;
    }

    v8 = a2;
LABEL_111:
    v3;
    goto LABEL_112;
  }

  if (v4 < -1)
  {
    BUG();
  }

  v86 = v4;
  v83 = v5;
  if (v4 > 1)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(v4 / 2, &type metadata for Int);
    *(v6 + 16) = v4 / 2;
    v94 = v6;
    v7 = (v6 + 32);
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v94 = _swiftEmptyArrayStorage;
    v7 = &_swiftEmptyArrayStorage[4];
LABEL_10:
    v93 = v7;
    v95 = a2 + 32;
    v92 = *a1;
    v85 = *a1 - 8;
    v9 = _swiftEmptyArrayStorage;
    v10 = 0;
    v11 = v4;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      v100 = v12;
      if (v13 >= v11)
      {
        v14 = v92;
      }

      else
      {
        v14 = v92;
        v15 = *(v92 + 8 * v12 + 8);
        if (v15 < 0)
        {
          BUG();
        }

        v16 = *(v3 + 16);
        if (v15 >= v16)
        {
          BUG();
        }

        v17 = *(v92 + 8 * v12);
        if (v17 >= v16)
        {
          BUG();
        }

        v18 = *(v95 + 32 * v15);
        v19 = *(v95 + 32 * v17);
        v13 = v12 + 2;
        if (v12 + 2 < v11)
        {
          v20 = v9;
          v21 = *(v95 + 32 * v15);
          while (1)
          {
            v22 = *(v92 + 8 * v13);
            if (v22 >= v16)
            {
              BUG();
            }

            if (v15 >= v16)
            {
              BUG();
            }

            v23 = v13;
            if (v18 < v19 == *(v95 + 32 * v22) >= v21)
            {
              break;
            }

            ++v13;
            v21 = *(v95 + 32 * v22);
            v15 = v22;
            if (v23 + 1 >= v11)
            {
              v13 = v11;
              v9 = v20;
              goto LABEL_24;
            }
          }

          v9 = v20;
LABEL_24:
          v12 = v100;
        }

        if (v18 < v19)
        {
          if (v13 < v12)
          {
            BUG();
          }

          if (v13 > v12)
          {
            v24 = v13 - 1;
            v25 = v12;
            do
            {
              if (v25 != v24)
              {
                if (!v92)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                v26 = *(v92 + 8 * v25);
                *(v92 + 8 * v25) = *(v92 + 8 * v24);
                *(v92 + 8 * v24) = v26;
              }

              v27 = ++v25 < v24--;
            }

            while (v27);
          }
        }
      }

      if (v13 < v11)
      {
        if (__OFSUB__(v13, v12))
        {
          BUG();
        }

        if (v13 - v12 < v83)
        {
          v28 = (v83 + v12);
          if (__OFADD__(v83, v12))
          {
            BUG();
          }

          if (v28 >= v11)
          {
            v28 = v11;
          }

          if (v28 < v12)
          {
            BUG();
          }

          if (v13 != v28)
          {
            v29 = v12;
            v30 = v85;
            v31 = v13;
            do
            {
              v32 = *(v14 + 8 * v31);
              v33 = v13;
              do
              {
                if (v32 < 0)
                {
                  BUG();
                }

                v34 = *(v3 + 16);
                if (v32 >= v34)
                {
                  BUG();
                }

                v35 = *(v30 + 8 * v13);
                if (v35 >= v34)
                {
                  BUG();
                }

                if (*(v95 + 32 * v32) >= *(v95 + 32 * v35))
                {
                  break;
                }

                if (!v14)
                {
                  swift_bridgeObjectRelease_n(v3, 3);
                  BUG();
                }

                *(v30 + 8 * v13 + 8) = v35;
                *(v30 + 8 * v13--) = v32;
              }

              while (v29 != v13);
              ++v31;
              v30 += 8;
              --v29;
              v13 = v33;
            }

            while (v31 != v28);
            v13 = v28;
            v12 = v100;
          }
        }
      }

      if (v13 < v12)
      {
        BUG();
      }

      v91 = v13;
      v36 = v9;
      if (swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = v36;
      }

      else
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v37 = *(v9 + 2);
      v38 = v37 + 1;
      v10 = v91;
      v39 = v100;
      if (*(v9 + 3) >> 1 <= v37)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v9 + 3) >= 2uLL, v37 + 1, 1, v9);
        v39 = v100;
        v10 = v91;
        v9 = v70;
      }

      *(v9 + 2) = v38;
      v40 = 16 * v37;
      *&v9[v40 + 32] = v39;
      *&v9[v40 + 40] = v10;
      if (v37)
      {
        break;
      }

      v38 = 1;
      v3 = a2;
LABEL_91:
      v11 = v86;
      if (v10 >= v86)
      {
        goto LABEL_98;
      }
    }

    v41 = v9 + 32;
    v3 = a2;
    v98 = v9;
    v101 = v9 + 32;
    while (1)
    {
      v42 = v38 - 1;
      if (v38 >= 4)
      {
        v47 = 16 * v38;
        v48 = *&v41[16 * v38 - 56];
        v44 = __OFSUB__(v48, *&v41[16 * v38 - 64]);
        v49 = v48 - *&v41[16 * v38 - 64];
        if (v44)
        {
          BUG();
        }

        v50 = *&v41[v47 - 40];
        v44 = __OFSUB__(v50, *&v41[v47 - 48]);
        v45 = v50 - *&v41[v47 - 48];
        v46 = v44;
        if (v44)
        {
          BUG();
        }

        v51 = *&v9[v47 + 8];
        v44 = __OFSUB__(v51, *&v9[16 * v38]);
        v52 = v51 - *&v9[16 * v38];
        if (v44)
        {
          BUG();
        }

        v44 = __OFADD__(v45, v52);
        v53 = v45 + v52;
        if (v44)
        {
          BUG();
        }

        if (v53 >= v49)
        {
          v62 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v62, *&v41[16 * v42]);
          v63 = v62 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v45 < v63)
          {
LABEL_81:
            v42 = v38 - 2;
            goto LABEL_82;
          }

          goto LABEL_82;
        }
      }

      else
      {
        if (v38 != 3)
        {
          if (v38 < 2)
          {
            BUG();
          }

          v59 = *&v9[16 * v38 + 8];
          v44 = __OFSUB__(v59, *&v9[16 * v38]);
          v55 = v59 - *&v9[16 * v38];
          v56 = v44;
LABEL_75:
          if (v56)
          {
            BUG();
          }

          v60 = *&v41[16 * v42 + 8];
          v44 = __OFSUB__(v60, *&v41[16 * v42]);
          v61 = v60 - *&v41[16 * v42];
          if (v44)
          {
            BUG();
          }

          if (v61 < v55)
          {
            goto LABEL_91;
          }

          goto LABEL_82;
        }

        v43 = *(v9 + 5);
        v44 = __OFSUB__(v43, *(v9 + 4));
        v45 = v43 - *(v9 + 4);
        v46 = v44;
      }

      if (v46)
      {
        BUG();
      }

      v54 = *&v9[16 * v38 + 8];
      v44 = __OFSUB__(v54, *&v9[16 * v38]);
      v55 = v54 - *&v9[16 * v38];
      v56 = v44;
      if (v44)
      {
        BUG();
      }

      v57 = *&v41[16 * v42 + 8];
      v44 = __OFSUB__(v57, *&v41[16 * v42]);
      v58 = v57 - *&v41[16 * v42];
      if (v44)
      {
        BUG();
      }

      if (__OFADD__(v58, v55))
      {
        BUG();
      }

      if (v58 + v55 < v45)
      {
        goto LABEL_75;
      }

      if (v45 < v58)
      {
        goto LABEL_81;
      }

LABEL_82:
      if (v42 - 1 >= v38)
      {
        BUG();
      }

      if (!v92)
      {
        swift_bridgeObjectRelease_n(v3, 3);
        BUG();
      }

      v64 = 16 * (v42 - 1);
      v81 = v42;
      v65 = &v41[16 * v42];
      v66 = *&v41[v64];
      v67 = *(v65 + 1);
      __dst = v65;
      v88 = (v92 + 8 * *v65);
      v3;
      specialized _merge<A>(low:mid:high:buffer:by:)((v92 + 8 * v66), v88, (v92 + 8 * v67), v93, v3);
      if (v2)
      {
        v71 = v98;
        goto LABEL_95;
      }

      if (v67 < v66)
      {
        BUG();
      }

      v68 = &v101[v64];
      v69 = *(v98 + 2);
      if (v81 > v69)
      {
        BUG();
      }

      *v68 = v66;
      *(v68 + 1) = v67;
      if (v81 >= v69)
      {
        BUG();
      }

      v38 = v69 - 1;
      memmove(__dst, __dst + 16, 16 * (v69 - 1 - v81));
      v41 = v101;
      v9 = v98;
      *(v98 + 2) = v69 - 1;
      v27 = v69 <= 2;
      v3 = a2;
      v10 = v91;
      if (v27)
      {
        goto LABEL_91;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
  v93 = &_swiftEmptyArrayStorage[4];
  v38 = _swiftEmptyArrayStorage[2];
  v94 = _swiftEmptyArrayStorage;
LABEL_98:
  if (v38 < 2)
  {
LABEL_110:
    v9;
    v8 = v94;
    v94[2] = 0;
    v3;
    goto LABEL_111;
  }

  v72 = *a1;
  v90 = *a1;
  while (1)
  {
    v73 = v3;
    if (!v72)
    {
      swift_bridgeObjectRelease_n(v3, 3);
      BUG();
    }

    v74 = 16 * (v38 - 1);
    v99 = v9;
    v75 = *&v9[v74 + 40];
    v96 = *&v9[16 * v38];
    v102 = (v72 + 8 * v96);
    __src = (v72 + 8 * *&v9[v74 + 32]);
    v89 = (v72 + 8 * v75);
    v73;
    specialized _merge<A>(low:mid:high:buffer:by:)(v102, __src, v89, v93, a2);
    if (v2)
    {
      break;
    }

    if (v75 < v96)
    {
      BUG();
    }

    v103 = v75;
    if (swift_isUniquelyReferenced_nonNull_native(v99))
    {
      v76 = v99;
    }

    else
    {
      v76 = specialized _ArrayBuffer._consumeAndCreateNew()(v99);
    }

    v77 = *(v76 + 2);
    if (v38 - 2 >= v77)
    {
      BUG();
    }

    *&v76[16 * v38] = v96;
    *&v76[16 * v38 + 8] = v103;
    v78 = v77 - v38;
    if (v77 < v38)
    {
      BUG();
    }

    v38 = v77 - 1;
    v79 = v76;
    memmove(&v76[v74 + 32], &v76[v74 + 48], 16 * v78);
    v9 = v79;
    *(v79 + 2) = v77 - 1;
    v27 = v77 <= 2;
    v3 = a2;
    v72 = v90;
    if (v27)
    {
      goto LABEL_110;
    }
  }

  v71 = v99;
  v3 = a2;
LABEL_95:
  v71;
  v8 = v94;
  v94[2] = 0;
  swift_bridgeObjectRelease_n(v3, 2);
LABEL_112:
  v8;
  return swift_bridgeObjectRelease_n(v3, 2);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 - 8;
    v7 = a3;
    do
    {
      v8 = *(v5 + 8 * v7);
      v9 = a3;
      do
      {
        if (v8 < 0)
        {
          BUG();
        }

        v10 = *(a5 + 16);
        if (v8 >= v10)
        {
          BUG();
        }

        v11 = *(v6 + 8 * v9);
        if (v11 >= v10)
        {
          BUG();
        }

        if (*(a5 + 32 + 16 * v8) >= *(a5 + 32 + 16 * v11))
        {
          break;
        }

        if (!v5)
        {
          BUG();
        }

        *(v6 + 8 * v9 + 8) = v11;
        *(v6 + 8 * v9--) = v8;
      }

      while (a1 != v9);
      ++v7;
      v6 += 8;
      --a1;
    }

    while (v7 != a2);
  }

  return a5, a2;
}

{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 - 8;
    v7 = a3;
    do
    {
      v8 = *(v5 + 8 * v7);
      v9 = a3;
      do
      {
        if (v8 < 0)
        {
          BUG();
        }

        v10 = *(a5 + 16);
        if (v8 >= v10)
        {
          BUG();
        }

        v11 = *(v6 + 8 * v9);
        if (v11 >= v10)
        {
          BUG();
        }

        if (*(a5 + 32 + 32 * v8) >= *(a5 + 32 + 32 * v11))
        {
          break;
        }

        if (!v5)
        {
          BUG();
        }

        *(v6 + 8 * v9 + 8) = v11;
        *(v6 + 8 * v9--) = v8;
      }

      while (a1 != v9);
      ++v7;
      v6 += 8;
      --a1;
    }

    while (v7 != a2);
  }

  return a5, a2;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a3 - v7;
  v11 = (a3 - v7) / 8;
  if (v9 / 8 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9 / 8, a4);
    v12 = &v5[8 * (v9 / 8)];
    if (v9 >= 8 && v7 < v6)
    {
      v13 = a5;
      while (1)
      {
        v14 = *v7;
        if (*v7 < 0)
        {
          BUG();
        }

        v15 = *(a5 + 16);
        if (v14 >= v15)
        {
          BUG();
        }

        if (*v5 >= v15)
        {
          BUG();
        }

        if (*(a5 + 32 + 16 * v14) >= *(a5 + 32 + 16 * *v5))
        {
          break;
        }

        v16 = v8 == v7;
        v7 += 8;
        if (!v16)
        {
          goto LABEL_11;
        }

LABEL_12:
        v8 += 8;
        if (v5 >= v12 || v7 >= v6)
        {
          v7 = v8;
          goto LABEL_30;
        }
      }

      v14 = *v5;
      v16 = v8 == v5;
      v5 += 8;
      if (v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v8 = v14;
      goto LABEL_12;
    }

    v7 = v8;
LABEL_29:
    v13 = a5;
    goto LABEL_30;
  }

  v22 = (a3 - v7) / 8;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v11, a4);
  v12 = &v5[8 * v22];
  if (v10 < 8 || v8 >= v7)
  {
    goto LABEL_29;
  }

  v13 = a5;
  do
  {
    v17 = *(v12 - 1);
    if (v17 < 0)
    {
      BUG();
    }

    v18 = *(a5 + 16);
    if (v17 >= v18)
    {
      BUG();
    }

    v19 = *(v7 - 1);
    if (v19 >= v18)
    {
      BUG();
    }

    if (*(a5 + 32 + 16 * v17) < *(a5 + 32 + 16 * v19))
    {
      v16 = v6 == v7;
      v7 -= 8;
      if (v16)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(v6 - 1) = v19;
      goto LABEL_25;
    }

    v19 = *(v12 - 1);
    v16 = v6 == v12;
    v12 -= 8;
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v7 <= v8)
    {
      break;
    }

    v6 -= 8;
  }

  while (v12 > v5);
LABEL_30:
  v20 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v20])
  {
    memmove(v7, v5, 8 * v20);
    v13 = a5;
  }

  v13;
  return 1;
}

{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a3 - v7;
  v11 = (a3 - v7) / 8;
  if (v9 / 8 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9 / 8, a4);
    v12 = &v5[8 * (v9 / 8)];
    if (v9 >= 8 && v7 < v6)
    {
      v13 = a5;
      while (1)
      {
        v14 = *v7;
        if (*v7 < 0)
        {
          BUG();
        }

        v15 = *(a5 + 16);
        if (v14 >= v15)
        {
          BUG();
        }

        if (*v5 >= v15)
        {
          BUG();
        }

        if (*(a5 + 32 + 32 * v14) >= *(a5 + 32 + 32 * *v5))
        {
          break;
        }

        v16 = v8 == v7;
        v7 += 8;
        if (!v16)
        {
          goto LABEL_11;
        }

LABEL_12:
        v8 += 8;
        if (v5 >= v12 || v7 >= v6)
        {
          v7 = v8;
          goto LABEL_30;
        }
      }

      v14 = *v5;
      v16 = v8 == v5;
      v5 += 8;
      if (v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v8 = v14;
      goto LABEL_12;
    }

    v7 = v8;
LABEL_29:
    v13 = a5;
    goto LABEL_30;
  }

  v22 = (a3 - v7) / 8;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v11, a4);
  v12 = &v5[8 * v22];
  if (v10 < 8 || v8 >= v7)
  {
    goto LABEL_29;
  }

  v13 = a5;
  do
  {
    v17 = *(v12 - 1);
    if (v17 < 0)
    {
      BUG();
    }

    v18 = *(a5 + 16);
    if (v17 >= v18)
    {
      BUG();
    }

    v19 = *(v7 - 1);
    if (v19 >= v18)
    {
      BUG();
    }

    if (*(a5 + 32 + 32 * v17) < *(a5 + 32 + 32 * v19))
    {
      v16 = v6 == v7;
      v7 -= 8;
      if (v16)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(v6 - 1) = v19;
      goto LABEL_25;
    }

    v19 = *(v12 - 1);
    v16 = v6 == v12;
    v12 -= 8;
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v7 <= v8)
    {
      break;
    }

    v6 -= 8;
  }

  while (v12 > v5);
LABEL_30:
  v20 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v20])
  {
    memmove(v7, v5, 8 * v20);
    v13 = a5;
  }

  v13;
  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, double *a2, double *a3, char *a4)
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

    while (*(v5 - 1) > *(v11 - 1))
    {
      v15 = v5 - 2;
      v13 = v4 == v5;
      v5 -= 2;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 2;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = (v11 - 16);
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
    while (v10[1] > v5[1])
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 2;
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
    v10 += 2;
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
  if (v5 != v10 || v5 >= &v10[2 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __dst;
  v7 = a2 - __dst;
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

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *a2, double *a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __dst;
  v7 = a2 - __dst;
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

    while (*(v11 - 1) > *(v5 - 1))
    {
      v15 = v5 - 2;
      v13 = v4 == v5;
      v5 -= 2;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 2;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = (v11 - 16);
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
    while (v5[1] > v10[1])
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 2;
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
    v10 += 2;
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
  if (v5 != v10 || v5 >= &v10[2 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  v7 = a3 - a2;
  v8 = (a3 - a2) / 24;
  if ((a2 - a1) / 24 >= v8)
  {
    v23 = (a3 - a2) / 24;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v8, a4);
    v10 = a4;
    v11 = &a4[24 * v23];
    if (v7 < 24 || v5 >= a2)
    {
      goto LABEL_37;
    }

    v24 = a3;
    while (1)
    {
      v25 = v24 - 24;
      v26 = *(v11 - 3);
      v27 = *(v4 - 3);
      v28 = *(v4 - 8);
      if (*(v11 - 8))
      {
        if (((v26 < v27) & v28) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v28)
        {
          goto LABEL_25;
        }

        v31 = *(v11 - 2);
        v32 = *(v4 - 2);
        if (v26 != v27 || v31 != v32)
        {
          v40 = v24 - 24;
          v42 = v24;
          v38 = *(v4 - 2);
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)(v26, v31, v27, v32, 0);
          v25 = v40;
          v24 = v42;
          v10 = a4;
          if ((v33 & 1) == 0)
          {
            v34 = _stringCompareWithSmolCheck(_:_:expecting:)(v26, v31, v27, v38, 1);
            v25 = v40;
            v24 = v42;
            v10 = a4;
            if (v34)
            {
LABEL_25:
              v29 = v4 - 24;
              v17 = v24 == v4;
              v4 -= 24;
              if (v17)
              {
                goto LABEL_27;
              }

LABEL_26:
              v30 = *v29;
              *(v25 + 2) = *(v29 + 2);
              *v25 = v30;
              goto LABEL_27;
            }
          }
        }
      }

      v29 = v11 - 24;
      v17 = v24 == v11;
      v11 -= 24;
      if (!v17)
      {
        goto LABEL_26;
      }

LABEL_27:
      if (v4 > v5)
      {
        v24 = v25;
        if (v11 > v10)
        {
          continue;
        }
      }

      goto LABEL_37;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v6 / 24, a4);
  v10 = a4;
  v11 = &a4[24 * (v6 / 24)];
  if (v6 >= 24 && a2 < a3)
  {
    v12 = a3;
    v45 = &a4[24 * (v6 / 24)];
    do
    {
      v13 = *v4;
      v14 = *v10;
      v15 = v10[16];
      if (v4[16])
      {
        if (((v13 < v14) & v15) != 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v15)
        {
          goto LABEL_8;
        }

        v19 = *(v4 + 1);
        v20 = *(v10 + 1);
        if (v13 != v14 || v19 != v20)
        {
          v39 = *(v4 + 1);
          v37 = *(v10 + 1);
          __srca = v10;
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)(*v4, v19, v14, v20, 0);
          v12 = a3;
          v11 = v45;
          v10 = __srca;
          if ((v21 & 1) == 0)
          {
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)(v13, v39, v14, v37, 1);
            v12 = a3;
            v11 = v45;
            v10 = __srca;
            if (v22)
            {
LABEL_8:
              v16 = v4;
              v17 = v5 == v4;
              v4 += 24;
              if (v17)
              {
                goto LABEL_10;
              }

LABEL_9:
              v18 = *v16;
              *(v5 + 2) = *(v16 + 2);
              *v5 = v18;
              goto LABEL_10;
            }
          }
        }
      }

      v16 = v10;
      v17 = v5 == v10;
      v10 += 24;
      if (!v17)
      {
        goto LABEL_9;
      }

LABEL_10:
      v5 += 24;
    }

    while (v10 < v11 && v4 < v12);
  }

  v4 = v5;
LABEL_37:
  v35 = (v11 - v10) % 24;
  if (v4 != v10 || v4 >= &v11[-v35])
  {
    memmove(v4, v10, v11 - v10 - v35);
  }

  return 1;
}

uint64_t specialized Sequence._minImplementation(count:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = 0;
  if (a1 > 0)
  {
    v7 = a1;
  }

  swift_unknownObjectRetain(a2);
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0, _swiftEmptyArrayStorage);
  v48[0] = v8;
  v9 = v8[2];
  v42 = a4;
  if (v9 < a1)
  {
    v10 = a5 >> 1;
    if (a5 >> 1 != a4)
    {
      if ((a5 >> 1) <= a4)
      {
        BUG();
      }

      v11 = a3;
      v12 = *(a3 + 16 * a4);
      v13 = *(a3 + 16 * a4 + 8);
      v14 = v9 + 1;
      if (v8[3] >> 1 <= v9)
      {
        v39 = *(a3 + 16 * a4);
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8[3] >= 2uLL, v14, 1, v8);
        v12 = v39;
        v10 = a5 >> 1;
        v11 = a3;
      }

      a4 = v42 + 1;
      v8[2] = v14;
      v15 = 2 * v9;
      v8[v15 + 4] = v12;
      v8[v15 + 5] = v13;
      v48[0] = v8;
      if (v14 < a1)
      {
        v16 = v9 + 2;
        v17 = (v11 + 16 * v42 + 24);
        while (v10 != a4)
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          if (v8[3] >> 1 <= v16 - 1)
          {
            v47 = v10;
            v41 = *(v17 - 1);
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8[3] >= 2uLL, v16, 1, v8);
            v18 = v41;
            v10 = v47;
          }

          v8[2] = v16;
          v8[v15 + 6] = v18;
          v8[v15 + 7] = v19;
          v48[0] = v8;
          v15 += 2;
          v17 += 2;
          ++a4;
          if (v16++ >= a1)
          {
            goto LABEL_16;
          }
        }

        a4 = v10;
      }
    }
  }

LABEL_16:
  specialized MutableCollection<>.sort(by:)(v48, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v5)
  {
    swift_unknownObjectRelease(a2);
    return v48[0];
  }

  else
  {
    v22 = a5 >> 1;
    v23 = a4;
    v24 = a3;
    v44 = a5 >> 1;
    while (v23 != v22)
    {
      if (a4 < v42 || v23 >= v22)
      {
        BUG();
      }

      v25 = v48[0];
      v26 = *(v48[0] + 16);
      if (!v26)
      {
        BUG();
      }

      v27 = 16 * v23;
      v28 = *(v24 + 16 * v23++ + 8);
      if (*(v48[0] + 16 + 16 * v26 + 8) > v28)
      {
        v46 = *(v24 + v27);
        if (!swift_isUniquelyReferenced_nonNull_native(v48[0]))
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
        }

        v29 = v25[2];
        v30 = v29 - 1;
        if (!v29)
        {
          BUG();
        }

        v25[2] = v30;
        if (v29 == 1)
        {
          v31 = 0;
        }

        else
        {
          v32 = v29 - 1;
          v31 = 0;
          v33 = v29 - 1;
          do
          {
            v33 = v33 >> 1;
            v34 = v33 + v31;
            if (__OFADD__(v33, v31))
            {
              BUG();
            }

            if (v33 + v31 < 0 || v34 >= v30)
            {
              BUG();
            }

            if (*&v25[2 * v34 + 5] <= v28)
            {
              v33 = v32 + ~v33;
              v31 = v34 + 1;
            }

            v32 = v33;
          }

          while (v33 > 0);
          if (v29 <= v31)
          {
            BUG();
          }

          if (v31 < 0)
          {
            BUG();
          }
        }

        if (v25[3] >> 1 < v29)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v29, 1, v25);
          v30 = v25[2];
        }

        v35 = v30 - v31;
        v36 = 2 * v31;
        v37 = &v25[v36 + 4];
        v38 = &v25[v36 + 6];
        memmove(v38, v37, 16 * v35);
        ++v25[2];
        *(v38 - 2) = v46;
        *(v38 - 1) = v28;
        v48[0] = v25;
        v22 = v44;
        v24 = a3;
      }
    }

    swift_unknownObjectRelease(a2);
    return v48[0];
  }
}

uint64_t specialized Sequence._minImplementation(count:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  if (a1 > 0)
  {
    v5 = a1;
  }

  a3;
  a2;
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, _swiftEmptyArrayStorage);
  v48[0] = v6;
  v7 = v6[2];
  if (v7 < a1)
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *(a2 + 32);
      v10 = v7 + 1;
      if (v6[3] >> 1 <= v7)
      {
        v37 = v6[2];
        v38 = *(a2 + 16);
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1, v6);
        v8 = v38;
        v7 = v37;
      }

      v6[2] = v10;
      v6[v7 + 4] = v9;
      v48[0] = v6;
      if (v10 >= a1)
      {
        v4 = 1;
      }

      else
      {
        v11 = 8 * v7 + 40;
        v12 = 1 - v8;
        v13 = 0;
        while (v13 + v12)
        {
          v4 = v13 + 2;
          if (__OFADD__(1, v13 + 1))
          {
            BUG();
          }

          v44 = *(a2 + 8 * v13 + 40);
          v14 = v7 + v13 + 2;
          if (v6[3] >> 1 <= (v7 + v13 + 1))
          {
            v43 = v7;
            v39 = v8;
            v40 = v11;
            v41 = v12;
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + v13 + 2, 1, v6);
            v12 = v41;
            v11 = v40;
            v8 = v39;
            v7 = v43;
          }

          v6[2] = v14;
          *(&v6[v13] + v11) = v44;
          v48[0] = v6;
          ++v13;
          if (v14 >= a1)
          {
            goto LABEL_18;
          }
        }

        v4 = v8;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_18:
  a3;
  specialized MutableCollection<>.sort(by:)(v48, a3, specialized _ArrayBuffer._consumeAndCreateNew());
  if (v3)
  {
    a2;
    v15 = v48[0];
    swift_bridgeObjectRelease_n(a3, 2);
    return v15;
  }

  else
  {
    v17 = a2;
    v18 = *(a2 + 16);
    v19 = a3 + 32;
    v20 = a3;
    v47 = *(a2 + 16);
    while (v4 != v18)
    {
      if (v4 >= v18)
      {
        BUG();
      }

      v21 = v4 + 1;
      if (__OFADD__(1, v4))
      {
        BUG();
      }

      v22 = v48[0];
      v23 = *(v48[0] + 16);
      if (!v23)
      {
        BUG();
      }

      v24 = *(v17 + 8 * v4 + 32);
      if (v24 < 0)
      {
        BUG();
      }

      v25 = *(v20 + 16);
      if (v24 >= v25)
      {
        BUG();
      }

      v26 = *(v48[0] + 8 * v23 + 24);
      if (v26 >= v25)
      {
        BUG();
      }

      v27 = (v19 + 16 * v24);
      ++v4;
      if (*v27 < *(v19 + 16 * v26))
      {
        v45 = v24;
        if (!swift_isUniquelyReferenced_nonNull_native(v48[0]))
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        v28 = v22[2];
        v29 = v28 - 1;
        if (!v28)
        {
          BUG();
        }

        v22[2] = v29;
        if (v28 == 1)
        {
          v30 = 0;
        }

        else
        {
          v31 = *(a3 + 16);
          if (v45 >= v31)
          {
            BUG();
          }

          v32 = v28 - 1;
          v30 = 0;
          v33 = v28 - 1;
          do
          {
            v33 = v33 >> 1;
            v34 = v33 + v30;
            if (__OFADD__(v33, v30))
            {
              BUG();
            }

            if (v33 + v30 < 0 || v34 >= v29)
            {
              BUG();
            }

            v35 = v22[v34 + 4];
            if (v35 >= v31)
            {
              BUG();
            }

            if (*v27 >= *(a3 + 32 + 16 * v35))
            {
              v33 = v32 + ~v33;
              v30 = v34 + 1;
            }

            v32 = v33;
          }

          while (v33 > 0);
          if (v28 <= v30)
          {
            BUG();
          }

          if (v30 < 0)
          {
            BUG();
          }
        }

        if (v22[3] >> 1 < v28)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v28, 1, v22);
          v29 = v22[2];
        }

        memmove(&v22[v30 + 5], &v22[v30 + 4], 8 * (v29 - v30));
        ++v22[2];
        v22[v30 + 4] = v45;
        v48[0] = v22;
        v4 = v21;
        v20 = a3;
        v17 = a2;
        v18 = v47;
        v19 = a3 + 32;
      }
    }

    v36 = v17;
    swift_bridgeObjectRelease_n(v20, 2);
    v36;
    return v48[0];
  }
}

{
  v4 = 0;
  v5 = 0;
  if (a1 > 0)
  {
    v5 = a1;
  }

  a3;
  a2;
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, _swiftEmptyArrayStorage);
  v48[0] = v6;
  v7 = v6[2];
  if (v7 < a1)
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *(a2 + 32);
      v10 = v7 + 1;
      if (v6[3] >> 1 <= v7)
      {
        v37 = v6[2];
        v38 = *(a2 + 16);
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1, v6);
        v8 = v38;
        v7 = v37;
      }

      v6[2] = v10;
      v6[v7 + 4] = v9;
      v48[0] = v6;
      if (v10 >= a1)
      {
        v4 = 1;
      }

      else
      {
        v11 = 8 * v7 + 40;
        v12 = 1 - v8;
        v13 = 0;
        while (v13 + v12)
        {
          v4 = v13 + 2;
          if (__OFADD__(1, v13 + 1))
          {
            BUG();
          }

          v44 = *(a2 + 8 * v13 + 40);
          v14 = v7 + v13 + 2;
          if (v6[3] >> 1 <= (v7 + v13 + 1))
          {
            v43 = v7;
            v39 = v8;
            v40 = v11;
            v41 = v12;
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + v13 + 2, 1, v6);
            v12 = v41;
            v11 = v40;
            v8 = v39;
            v7 = v43;
          }

          v6[2] = v14;
          *(&v6[v13] + v11) = v44;
          v48[0] = v6;
          ++v13;
          if (v14 >= a1)
          {
            goto LABEL_18;
          }
        }

        v4 = v8;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_18:
  a3;
  specialized MutableCollection<>.sort(by:)(v48, a3, specialized _ArrayBuffer._consumeAndCreateNew());
  if (v3)
  {
    a2;
    v15 = v48[0];
    swift_bridgeObjectRelease_n(a3, 2);
    return v15;
  }

  else
  {
    v17 = a2;
    v18 = *(a2 + 16);
    v19 = a3 + 32;
    v20 = a3;
    v47 = *(a2 + 16);
    while (v4 != v18)
    {
      if (v4 >= v18)
      {
        BUG();
      }

      v21 = v4 + 1;
      if (__OFADD__(1, v4))
      {
        BUG();
      }

      v22 = v48[0];
      v23 = *(v48[0] + 16);
      if (!v23)
      {
        BUG();
      }

      v24 = *(v17 + 8 * v4 + 32);
      if (v24 < 0)
      {
        BUG();
      }

      v25 = *(v20 + 16);
      if (v24 >= v25)
      {
        BUG();
      }

      v26 = *(v48[0] + 8 * v23 + 24);
      if (v26 >= v25)
      {
        BUG();
      }

      v27 = (v19 + 32 * v24);
      ++v4;
      if (*v27 < *(v19 + 32 * v26))
      {
        v45 = v24;
        if (!swift_isUniquelyReferenced_nonNull_native(v48[0]))
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        v28 = v22[2];
        v29 = v28 - 1;
        if (!v28)
        {
          BUG();
        }

        v22[2] = v29;
        if (v28 == 1)
        {
          v30 = 0;
        }

        else
        {
          v31 = *(a3 + 16);
          if (v45 >= v31)
          {
            BUG();
          }

          v32 = v28 - 1;
          v30 = 0;
          v33 = v28 - 1;
          do
          {
            v33 = v33 >> 1;
            v34 = v33 + v30;
            if (__OFADD__(v33, v30))
            {
              BUG();
            }

            if (v33 + v30 < 0 || v34 >= v29)
            {
              BUG();
            }

            v35 = v22[v34 + 4];
            if (v35 >= v31)
            {
              BUG();
            }

            if (*v27 >= *(a3 + 32 + 32 * v35))
            {
              v33 = v32 + ~v33;
              v30 = v34 + 1;
            }

            v32 = v33;
          }

          while (v33 > 0);
          if (v28 <= v30)
          {
            BUG();
          }

          if (v30 < 0)
          {
            BUG();
          }
        }

        if (v22[3] >> 1 < v28)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v28, 1, v22);
          v29 = v22[2];
        }

        memmove(&v22[v30 + 5], &v22[v30 + 4], 8 * (v29 - v30));
        ++v22[2];
        v22[v30 + 4] = v45;
        v48[0] = v22;
        v4 = v21;
        v20 = a3;
        v17 = a2;
        v18 = v47;
        v19 = a3 + 32;
      }
    }

    v36 = v17;
    swift_bridgeObjectRelease_n(v20, 2);
    v36;
    return v48[0];
  }
}

{
  v4 = v3;
  v57 = 0.0;
  v6 = 0;
  if (a1 > 0)
  {
    v6 = a1;
  }

  v54 = a2;
  a2;
  v55 = a3;
  a3;
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);
  v56 = v7;
  v8 = v7[2];
  v9 = 0;
  v10 = 0;
  if (v8 < a1)
  {
    v48 = *(a2 + 16);
    if (v48)
    {
      v11 = v55;
      v9 = *(v55 + 16);
      if (v9)
      {
        v12 = a1;
        v13 = *(a2 + 32);
        v14 = *(v55 + 32);
        v15 = v7[3];
        v16 = v8 + 1;
        if (v15 >> 1 <= v8)
        {
          v44 = *(v55 + 16);
          v45 = v7[2];
          v57 = *(v55 + 32);
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v8 + 1, 1, v7);
          v8 = v45;
          v12 = a1;
          v9 = v44;
          v11 = v55;
        }

        v7[2] = v16;
        v17 = 2 * v8;
        v7[v17 + 4] = v13;
        v7[v17 + 5] = v14;
        v56 = v7;
        if (v16 >= v12)
        {
          v9 = 1;
          v57 = 0.0;
          v10 = 1;
        }

        else
        {
          v10 = 1;
          v52 = 1 - v9;
          v18 = 0;
          while (1)
          {
            if (!(v18 + 1 - v48))
            {
              v10 = v48;
              v9 = v48;
              goto LABEL_22;
            }

            if (!(v18 + v52))
            {
              break;
            }

            v19 = v18 + 1;
            if (v18 + 1 >= v9)
            {
              BUG();
            }

            v20 = a2;
            v57 = *(a2 + 8 * v18 + 40);
            v21 = *(v11 + 8 * v18 + 40);
            v22 = v8 + v18 + 2;
            if (v7[3] >> 1 <= v18 + v8 + 1)
            {
              v47 = v8 + v18 + 2;
              v49 = v9;
              v53 = v12;
              v46 = v8;
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v7[3] >= 2uLL, v22, 1, v7);
              v22 = v47;
              v8 = v46;
              v12 = v53;
              v9 = v49;
              v11 = v55;
            }

            v7[2] = v22;
            *&v7[v17 + 6] = v57;
            v7[v17 + 7] = v21;
            v56 = v7;
            v17 += 2;
            ++v10;
            v18 = v19;
            v23 = v22 < v12;
            a2 = v20;
            if (!v23)
            {
              v57 = 0.0;
              v9 = v10;
              goto LABEL_23;
            }
          }

          v10 = v18 + 2;
LABEL_22:
          LOBYTE(v7) = 1;
          v57 = *&v7;
        }
      }

      else
      {
        LOBYTE(v7) = 1;
        v57 = *&v7;
        v10 = 1;
        v9 = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 1;
      v57 = *&v7;
      v9 = 0;
      v10 = 0;
    }

LABEL_23:
    v4 = v3;
  }

  v24 = v9;
  specialized MutableCollection<>.sort(by:)(&v56, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v4)
  {
    v55;
    v54;
    return v56;
  }

  else
  {
    v26 = v55;
    if (!LOBYTE(v57))
    {
      v27 = v24;
      while (v10 != *(v54 + 16))
      {
        if (v10 >= *(v54 + 16))
        {
          BUG();
        }

        v28 = v10++;
        if (v27 == *(v26 + 16))
        {
          break;
        }

        if (v27 >= *(v26 + 16))
        {
          BUG();
        }

        v29 = v56;
        v30 = v56[2];
        if (!v30)
        {
          BUG();
        }

        v31 = *(v26 + 8 * v27++ + 32);
        if (v31 > *&v56[2 * v30 + 3])
        {
          v57 = v31;
          v50 = v27;
          v32 = *(v54 + 8 * v28 + 32);
          if (!swift_isUniquelyReferenced_nonNull_native(v56))
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          }

          v33 = v29[2];
          v34 = v33 - 1;
          v35 = v57;
          if (!v33)
          {
            BUG();
          }

          v51 = v32;
          v29[2] = v34;
          if (v33 == 1)
          {
            v36 = 0;
          }

          else
          {
            v37 = v33 - 1;
            v36 = 0;
            v38 = v33 - 1;
            do
            {
              v38 = v38 >> 1;
              v39 = v38 + v36;
              if (__OFADD__(v38, v36))
              {
                BUG();
              }

              if (v38 + v36 < 0 || v39 >= v34)
              {
                BUG();
              }

              if (v35 <= *&v29[2 * v39 + 5])
              {
                v38 = v37 + ~v38;
                v36 = v39 + 1;
              }

              v37 = v38;
            }

            while (v38 > 0);
            if (v33 <= v36)
            {
              BUG();
            }

            if (v36 < 0)
            {
              BUG();
            }
          }

          if (v29[3] >> 1 <= v34)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v33, 1, v29);
            v34 = v29[2];
          }

          v40 = v34 - v36;
          v41 = 2 * v36;
          v42 = &v29[v41 + 4];
          v43 = &v29[v41 + 6];
          memmove(v43, v42, 16 * v40);
          ++v29[2];
          *(v43 - 2) = v51;
          *(v43 - 1) = v57;
          v56 = v29;
          v26 = v55;
          v27 = v50;
        }
      }
    }

    v26;
    v54;
    return v56;
  }
}

void *_s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a1;
  if (v5)
  {
    v9 = *(a1 + 8);
  }

  v23 = *(a1 + 24);
  v26 = v3;
  v27 = v4;
  v28 = v6;
  v29 = v5;
  if (v9 <= 0)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  if (v10 < 2)
  {
    BUG();
  }

  if (v6[5] <= 0)
  {
    v11 = 1;
    if (v9 != 1)
    {
      if (v10 == 2)
      {
        BUG();
      }

      if (v6[6] <= 0)
      {
        v11 = 2;
        if (v9 >= 3)
        {
          if (v10 < 4)
          {
            BUG();
          }

          if (v28[7] <= 0)
          {
            v17 = v10 - 4;
            v4 = 0;
            while (v9 - 3 != v4)
            {
              if (v17 == v4)
              {
                BUG();
              }

              v18 = v4 + 1;
              if (v28[v4++ + 8] > 0)
              {
                v11 = v18 + 2;
                goto LABEL_7;
              }
            }

            v11 = v9;
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

LABEL_7:
  v24 = v7;
  v25 = v8;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v20[0] = *a1;
  v20[1] = v12;
  v20[2] = v13;
  v21 = v11;
  v22 = 0;
  v14 = v7;
  outlined retain of [Int](&v23);
  outlined retain of [Int](&v24);
  outlined retain of ContiguousArray<Double>(&v25);
  outlined release of SparseMatrix<Double>.MajorCollection(v20, v4);
  v15 = v29 & 1;
  *v2 = v26;
  *(v2 + 8) = v27;
  *(v2 + 16) = v15;
  result = v28;
  *(v2 + 24) = v28;
  *(v2 + 32) = v14;
  *(v2 + 40) = v8;
  *(v2 + 48) = v11;
  *(v2 + 56) = 0;
  return result;
}

unint64_t _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8dataSizeyS2i_SitFZSd_Tt1g5(unint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a2, 1);
  v3 = a2 - 1;
  if (v2)
  {
    BUG();
  }

  v5 = v3;
  v4 = a1 * v3;
  if (!is_mul_ok(a1, v5))
  {
    BUG();
  }

  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v7 = v6 * a1;
  if (!is_mul_ok(v6, a1))
  {
    BUG();
  }

  v2 = __OFSUB__(v4, v7 / 2);
  v9 = v4 - v7 / 2;
  if (v2)
  {
    BUG();
  }

  return v9;
}

void *_ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSd_Tt1g5(uint64_t a1, double a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static ContiguousArray._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Double);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v7 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v8 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v4, 68), v5), si128);
    v9 = _mm_cmpgt_epi32(v8, v7);
    v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v7), 245), v9));
    if (~_mm_cvtsi128_si32(v10))
    {
      *&result[v4 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
    {
      *&result[v4 + 5] = a2;
    }

    v4 += 2;
  }

  while (((a1 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v10 = swift_allocObject(v9, 8 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v10 + 32, (a4 + 32), 8 * v8);
  }

  return v10;
}

__int128 specialized static BinaryFloatingPoint<>.random<A>(in:using:)@<xmm0>(uint64_t a1@<rdi>, double a2@<xmm0>, double a3@<xmm1>)
{
  if (a2 == a3)
  {
    BUG();
  }

  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  v6 = 0;
  v7 = a3;
  *&v8 = a2;
  *&v9 = a3 - a2;
  swift_stdlib_random(&v6, 8);
  v4 = v9;
  v3 = v8;
  *&v4 = *&v9 * (v6 * 1.110223024625157e-16) + *&v8;
  if (*&v4 == v7)
  {
    *&v3 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1);
    return v3;
  }

  return v4;
}

uint64_t specialized Collection<>.firstIndex(of:)(int a1, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  v5 = a5 >> 1;
  if (v5 == a4)
  {
    return 0;
  }

  if (v5 <= a4)
  {
    BUG();
  }

  if (*(a3 + 4 * a4) != a1)
  {
    v6 = a4 + 1;
    if (a4 + 1 == v5)
    {
      return 0;
    }

    if (a4 + 1 >= v5)
    {
      BUG();
    }

    if (*(a3 + 4 * a4 + 4) == a1)
    {
      return v6;
    }

    else
    {
      a4 = 0;
      while (1)
      {
        if (__OFADD__(1, v6++))
        {
          BUG();
        }

        if (v6 == v5)
        {
          break;
        }

        if (v6 >= v5)
        {
          BUG();
        }

        if (*(a3 + 4 * v6) == a1)
        {
          return v6;
        }
      }
    }
  }

  return a4;
}

uint64_t specialized Sequence._maxImplementation(count:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v53 = 0;
  v6 = 0;
  if (a1 > 0)
  {
    v6 = a1;
  }

  v51 = a3;
  a3;
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);
  v50 = v7;
  v8 = v7[2];
  if (v8 >= a1)
  {
    v52 = 0;
    v10 = v51;
  }

  else
  {
    v9 = a2 + 1;
    if (__OFADD__(1, a2))
    {
      BUG();
    }

    v10 = v51;
    v53 = *(v51 + 16);
    if (v53)
    {
      v11 = a1;
      v46 = v3;
      v12 = *(v51 + 32);
      v13 = v8 + 1;
      if (v7[3] >> 1 <= v8)
      {
        v49 = v8;
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v7[3] >= 2uLL, v13, 1, v7);
        v8 = v49;
        v11 = a1;
        v9 = v5 + 1;
      }

      v7[2] = v13;
      v14 = 2 * v8;
      v7[v14 + 4] = v5;
      v7[v14 + 5] = v12;
      v50 = v7;
      if (v13 >= v11)
      {
        v5 = v9;
        v53 = 1;
        v52 = 0;
      }

      else
      {
        v45 = 1 - v53;
        v15 = 0;
        while (1)
        {
          v16 = v9 + v15;
          v17 = v9 + v15 + 1;
          if (__OFADD__(1, v9 + v15))
          {
            BUG();
          }

          LOBYTE(v3) = v15 + v45 == 0;
          if (!(v15 + v45))
          {
            break;
          }

          v18 = v15 + 1;
          if (v15 + 1 >= v53)
          {
            BUG();
          }

          v41 = *(v51 + 8 * v15 + 40);
          v19 = v7[3];
          v20 = v8 + v15 + 2;
          if (v19 >> 1 <= v15 + v8 + 1)
          {
            v40 = v8 + v15 + 2;
            v43 = v9;
            v47 = v11;
            v48 = v8;
            v52 = v3;
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v20, 1, v7);
            v20 = v40;
            v8 = v48;
            v11 = v47;
            v9 = v43;
          }

          v7[2] = v20;
          v7[v14 + 6] = v16;
          v7[v14 + 7] = v41;
          v50 = v7;
          v14 += 2;
          v15 = v18;
          if (v20 >= v11)
          {
            v52 = v3;
            v53 = v18 + 1;
            goto LABEL_21;
          }
        }

        v52 = v3;
LABEL_21:
        v5 = v17;
      }

      v10 = v51;
      v4 = v46;
    }

    else
    {
      v5 = a2 + 1;
      LOBYTE(v7) = 1;
      v52 = v7;
      v53 = 0;
    }
  }

  specialized MutableCollection<>.sort(by:)(&v50, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v4)
  {
    v10;
    return v50;
  }

  else
  {
    if (!v52)
    {
      v22 = v53;
      v23 = v5;
      while (1)
      {
        v24 = v23;
        v25 = __OFADD__(1, v23++);
        if (v25)
        {
          BUG();
        }

        if (v22 == *(v10 + 16))
        {
          break;
        }

        if (v22 >= *(v10 + 16))
        {
          BUG();
        }

        v26 = v50;
        v27 = v50[2];
        if (!v27)
        {
          BUG();
        }

        v28 = *(v10 + 8 * v22++ + 32);
        if (v28 >= v50[5])
        {
          v42 = v24;
          v29 = v50[2];
          v30 = 0;
          v31 = v29;
          do
          {
            v31 = v31 >> 1;
            v32 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              BUG();
            }

            if (v32 >= v27)
            {
              BUG();
            }

            if (v28 >= v50[2 * v32 + 5])
            {
              v25 = __OFADD__(1, v32);
              v33 = v32 + 1;
              if (v25)
              {
                BUG();
              }

              v31 = v29 + ~v31;
              v30 = v33;
            }

            v29 = v31;
          }

          while (v31 > 0);
          if (v30 >= 2)
          {
            v34 = v23;
            v53 = v22;
            if (!swift_isUniquelyReferenced_nonNull_native(v50))
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
            }

            v35 = v26 + 6;
            v36 = 1;
            v22 = v53;
            v23 = v34;
            do
            {
              if (v36 >= v26[2])
              {
                BUG();
              }

              *(v35 - 1) = *v35;
              ++v36;
              ++v35;
            }

            while (v36 < v30);
          }

          v25 = __OFSUB__(v30, 1);
          v37 = v30 - 1;
          if (v25)
          {
            BUG();
          }

          v44 = v23;
          v38 = v22;
          if (!swift_isUniquelyReferenced_nonNull_native(v26))
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          }

          v23 = v44;
          if (v37 < 0)
          {
            BUG();
          }

          if (v37 >= v26[2])
          {
            BUG();
          }

          v22 = v38;
          v39 = 2 * v37;
          v26[v39 + 4] = v42;
          v26[v39 + 5] = v28;
          v50 = v26;
          v10 = v51;
        }
      }
    }

    v10;
    return v50;
  }
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.index(_:offsetBy:limitedBy:)(a1, a2, a3);
}

{
  v3 = __OFSUB__(a3, a1);
  v4 = a3 - a1;
  if (v3)
  {
    BUG();
  }

  if (a2 <= 0)
  {
    v5 = v4 <= 0;
    v6 = v4 > a2;
  }

  else
  {
    v5 = v4 >= 0;
    v6 = v4 < a2;
  }

  if (v6 && v5)
  {
    return 0;
  }

  v3 = __OFADD__(a2, a1);
  v7 = a2 + a1;
  if (v3)
  {
    BUG();
  }

  return v7;
}

{
  return specialized Array.index(_:offsetBy:limitedBy:)(a1, a2, a3);
}

void *specialized ArraySlice._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = type metadata accessor for __ContiguousArrayStorageBase(0);
  swift_unknownObjectRetain_n(a1, 2);
  v8 = swift_dynamicCastClass(a1, v7);
  if (!v8)
  {
    swift_unknownObjectRelease(a1);
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];

  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (v9 != (a4 >> 1) - a3)
  {
    swift_unknownObjectRelease(a1);
LABEL_2:
    v6 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
LABEL_9:
    swift_unknownObjectRelease(a1);
    return v6;
  }

  v6 = swift_dynamicCastClass(a1, v7);
  swift_unknownObjectRelease(a1);
  if (!v6)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  return v6;
}

id sub_BDA82()
{
  v1 = v0;
  result = MLRecommender.model.getter();
  *v1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLRecommender(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = a2[1];
    *(a1 + 8) = v6;
    v7 = a2[2];
    *(a1 + 16) = v7;
    v37 = a2[3];
    *(a1 + 24) = v37;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 48);
    v8 = a2[7];
    *(a1 + 56) = v8;
    v31 = a2[8];
    *(a1 + 64) = v31;
    v33 = a2[9];
    v9 = a2[11];
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 88) = v9;
    v35 = a2[13];
    v5;
    v6;
    v7;
    v37;
    v8;
    v31;

    if (v35)
    {
      *(a1 + 96) = a2[12];
      *(a1 + 104) = v35;
      v10 = a2[14];
      *(a1 + 112) = v10;
      v35;
      v10;
    }

    else
    {
      *(a1 + 112) = a2[14];
      *(a1 + 96) = *(a2 + 6);
    }

    v29 = a2[15];
    *(a1 + 120) = v29;
    v25 = a2[16];
    *(a1 + 128) = v25;
    *(a1 + 136) = *(a2 + 17);
    v26 = a2[19];
    *(a1 + 152) = v26;
    *(a1 + 160) = a2[20];
    v27 = a2[21];
    *(a1 + 168) = v27;
    *(a1 + 176) = a2[22];
    v28 = a2[23];
    *(a1 + 184) = v28;
    *(a1 + 192) = a2[24];
    v32 = a2[25];
    *(a1 + 200) = v32;
    v11 = a3[9];
    v12 = a1 + v11;
    v13 = a2 + v11;
    *(a1 + v11) = *(a2 + v11);
    *(a1 + v11 + 8) = *(a2 + v11 + 8);
    v38 = type metadata accessor for MLRecommender.ModelParameters(0);
    v14 = v38[7];
    v34 = v12;
    v15 = (v14 + v12);
    v36 = v13;
    v16 = (v13 + v14);
    v17 = type metadata accessor for DataFrame(0);
    v29;
    v25;
    v26;
    v27;
    v28;
    v32;
    if (__swift_getEnumTagSinglePayload(v16, 1, v17))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v15, v16, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(*(v17 - 8) + 16))(v15, v16, v17);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
    }

    v19 = v38[8];
    v20 = v34 + v19;
    v21 = (v36 + v19);
    v22 = *(v36 + v19 + 8);
    if (v22 == -1)
    {
      *(v20 + 8) = *(v21 + 8);
      *v20 = *v21;
    }

    else
    {
      v23 = *v21;
      outlined copy of Result<_DataTable, Error>(*v21, v22);
      *v20 = v23;
      *(v20 + 8) = v22 & 1;
    }

    *(v34 + v38[9]) = *(v36 + v38[9]);
    *(a1 + a3[10]) = *(a2 + a3[10]);
    *(a1 + a3[11]) = *(a2 + a3[11]);
  }

  return a1;
}

uint64_t destroy for MLRecommender(uint64_t a1, uint64_t a2)
{
  *a1;
  *(a1 + 8);
  *(a1 + 16);
  *(a1 + 24);
  *(a1 + 56);
  *(a1 + 64);
  v3 = *(a1 + 72);

  v4 = *(a1 + 104);
  if (v4)
  {
    v4;
    *(a1 + 112);
  }

  *(a1 + 120);
  *(a1 + 128);

  *(a1 + 168);
  *(a1 + 184);
  *(a1 + 200);
  v5 = a1 + *(a2 + 36);
  v6 = type metadata accessor for MLRecommender.ModelParameters(0);
  v7 = v5 + *(v6 + 28);
  v8 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  result = *(v6 + 32);
  v10 = *(v5 + result + 8);
  if (v10 != -1)
  {
    return outlined consume of Result<_DataTable, Error>(*(v5 + result), v10);
  }

  return result;
}

uint64_t initializeWithCopy for MLRecommender(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = a2[1];
  *(a1 + 8) = v5;
  v6 = a2[2];
  *(a1 + 16) = v6;
  v34 = a2[3];
  *(a1 + 24) = v34;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  v7 = a2[7];
  *(a1 + 56) = v7;
  __dsta = a2[8];
  *(a1 + 64) = __dsta;
  v30 = a2[9];
  v8 = a2[11];
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = v8;
  v32 = a2[13];
  v4;
  v5;
  v6;
  v34;
  v7;
  __dsta;

  if (v32)
  {
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v32;
    v9 = a2[14];
    *(a1 + 112) = v9;
    v32;
    v9;
  }

  else
  {
    *(a1 + 112) = a2[14];
    *(a1 + 96) = *(a2 + 6);
  }

  v28 = a2[15];
  *(a1 + 120) = v28;
  v24 = a2[16];
  *(a1 + 128) = v24;
  *(a1 + 136) = *(a2 + 17);
  v25 = a2[19];
  *(a1 + 152) = v25;
  *(a1 + 160) = a2[20];
  v26 = a2[21];
  *(a1 + 168) = v26;
  *(a1 + 176) = a2[22];
  v27 = a2[23];
  *(a1 + 184) = v27;
  *(a1 + 192) = a2[24];
  v23 = a2[25];
  *(a1 + 200) = v23;
  v10 = a3[9];
  v11 = a1 + v10;
  v12 = a2 + v10;
  *(a1 + v10) = *(a2 + v10);
  *(a1 + v10 + 8) = *(a2 + v10 + 8);
  v35 = type metadata accessor for MLRecommender.ModelParameters(0);
  v13 = v35[7];
  v31 = v11;
  __dst = (v13 + v11);
  v33 = v12;
  v14 = (v12 + v13);
  v15 = type metadata accessor for DataFrame(0);
  v28;
  v24;
  v25;
  v26;
  v27;
  v23;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v14, *(*(v16 - 8) + 64));
  }

  else
  {
    (*(*(v15 - 8) + 16))(__dst, v14, v15);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v15);
  }

  v17 = v35[8];
  v18 = v31 + v17;
  v19 = (v33 + v17);
  v20 = *(v33 + v17 + 8);
  if (v20 == -1)
  {
    *(v18 + 8) = *(v19 + 8);
    *v18 = *v19;
  }

  else
  {
    v21 = *v19;
    outlined copy of Result<_DataTable, Error>(*v19, v20);
    *v18 = v21;
    *(v18 + 8) = v20 & 1;
  }

  *(v31 + v35[9]) = *(v33 + v35[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

uint64_t *assignWithCopy for MLRecommender(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;
  v6;
  v7 = a2[1];
  v8 = a1[1];
  a1[1] = v7;
  v7;
  v8;
  v9 = a2[2];
  v10 = a1[2];
  a1[2] = v9;
  v9;
  v10;
  v11 = a2[3];
  v12 = a1[3];
  a1[3] = v11;
  v11;
  v12;
  a1[4] = a2[4];
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  v13 = a2[7];
  v14 = a1[7];
  a1[7] = v13;
  v13;
  v14;
  v15 = a2[8];
  v16 = a1[8];
  a1[8] = v15;
  v15;
  v16;
  v17 = a1[9];
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v18 = a1 + 12;
  v19 = a2 + 12;
  v20 = a1[13];
  v21 = a2[13];
  if (v20)
  {
    if (v21)
    {
      a1[12] = a2[12];
      v22 = a2[13];
      a1[13] = v22;
      v22;
      v20;
      v23 = a2[14];
      v24 = a1[14];
      a1[14] = v23;
      v23;
      v24;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v18 = *v19;
      a1[14] = a2[14];
    }
  }

  else if (v21)
  {
    a1[12] = a2[12];
    v25 = a2[13];
    a1[13] = v25;
    v26 = a2[14];
    a1[14] = v26;
    v25;
    v26;
  }

  else
  {
    a1[14] = a2[14];
    *v18 = *v19;
  }

  v27 = a2[15];
  v28 = a1[15];
  a1[15] = v27;
  v27;
  v28;
  v29 = a2[16];
  v30 = a1[16];
  a1[16] = v29;
  v29;
  v30;
  a1[17] = a2[17];
  a1[18] = a2[18];
  v31 = a2[19];
  v32 = a1[19];
  a1[19] = v31;
  v31;

  a1[20] = a2[20];
  v33 = a2[21];
  v34 = a1[21];
  a1[21] = v33;
  v33;
  v34;
  a1[22] = a2[22];
  v35 = a2[23];
  v36 = a1[23];
  a1[23] = v35;
  v35;
  v36;
  a1[24] = a2[24];
  v37 = a2[25];
  v38 = a1[25];
  a1[25] = v37;
  v37;
  v38;
  v39 = a3[9];
  v40 = a1 + v39;
  v41 = a2 + v39;
  *(a1 + v39) = *(a2 + v39);
  *(a1 + v39 + 8) = *(a2 + v39 + 8);
  *(a1 + v39 + 16) = *(a2 + v39 + 16);
  v62 = type metadata accessor for MLRecommender.ModelParameters(0);
  v42 = v62[7];
  v60 = v40;
  v43 = v42 + v40;
  v61 = v41;
  v44 = (v41 + v42);
  v45 = type metadata accessor for DataFrame(0);
  __dst = v43;
  LODWORD(v43) = __swift_getEnumTagSinglePayload(v43, 1, v45);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v45);
  if (v43)
  {
    if (EnumTagSinglePayload)
    {
      v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v48 = __dst;
LABEL_13:
      memcpy(v48, v44, v47);
      goto LABEL_16;
    }

    (*(*(v45 - 8) + 16))(__dst, v44, v45);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v45);
  }

  else
  {
    v49 = *(v45 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v49 + 8))(__dst, v45);
      v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v48 = __dst;
      goto LABEL_13;
    }

    (*(v49 + 24))(__dst, v44, v45);
  }

LABEL_16:
  v50 = v62[8];
  v51 = v60 + v50;
  v52 = v61 + v50;
  v53 = *(v61 + v50 + 8);
  if (*(v60 + v50 + 8) == 0xFF)
  {
    if (v53 == -1)
    {
      *(v51 + 8) = *(v52 + 8);
      *v51 = *v52;
    }

    else
    {
      v57 = *v52;
      outlined copy of Result<_DataTable, Error>(v57, v53);
      *v51 = v57;
      *(v51 + 8) = v53 & 1;
    }
  }

  else if (v53 == -1)
  {
    outlined destroy of MLDataTable(v60 + v50);
    *v51 = *v52;
    *(v51 + 8) = *(v52 + 8);
  }

  else
  {
    v54 = *v52;
    outlined copy of Result<_DataTable, Error>(v54, v53);
    v55 = *v51;
    *v51 = v54;
    v56 = *(v51 + 8);
    *(v51 + 8) = v53 & 1;
    outlined consume of Result<_DataTable, Error>(v55, v56);
  }

  *(v60 + v62[9]) = *(v61 + v62[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

char *initializeWithTake for MLRecommender(char *a1, char *a2, uint64_t a3)
{
  memcpy(a1, a2, 0xD0uLL);
  v13 = a3;
  v4 = *(a3 + 36);
  v5 = &a1[v4];
  v6 = &a2[v4];
  a1[v4] = a2[v4];
  *&a1[v4 + 8] = *&a2[v4 + 8];
  v15 = type metadata accessor for MLRecommender.ModelParameters(0);
  v7 = v15[7];
  v14 = v5;
  __dst = &v5[v7];
  v8 = &v6[v7];
  v9 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 32))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  v11 = v15[8];
  v14[v11 + 8] = v6[v11 + 8];
  *&v14[v11] = *&v6[v11];
  *&v14[v15[9]] = *&v6[v15[9]];
  a1[*(v13 + 40)] = a2[*(v13 + 40)];
  a1[*(v13 + 44)] = a2[*(v13 + 44)];
  return a1;
}

uint64_t *assignWithTake for MLRecommender(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  v5;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1[2];
  a1[2] = a2[2];
  v7;
  v8 = a1[3];
  a1[3] = a2[3];
  v8;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  v9 = a1[7];
  a1[7] = a2[7];
  v9;
  v10 = a1[8];
  a1[8] = a2[8];
  v10;
  v11 = a1[9];
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v12 = a1 + 12;
  v13 = a2 + 12;
  v14 = a1[13];
  if (v14)
  {
    v15 = a2[13];
    if (v15)
    {
      a1[12] = a2[12];
      a1[13] = v15;
      v14;
      v16 = a1[14];
      a1[14] = a2[14];
      v16;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v12 = *v13;
      a1[14] = a2[14];
    }
  }

  else
  {
    a1[14] = a2[14];
    *v12 = *v13;
  }

  v17 = a1[15];
  a1[15] = a2[15];
  v17;
  v18 = a1[16];
  a1[16] = a2[16];
  v18;
  *(a1 + 17) = *(a2 + 17);
  v19 = a1[19];
  a1[19] = a2[19];

  a1[20] = a2[20];
  v20 = a1[21];
  a1[21] = a2[21];
  v20;
  a1[22] = a2[22];
  v21 = a1[23];
  a1[23] = a2[23];
  v21;
  a1[24] = a2[24];
  v22 = a1[25];
  a1[25] = a2[25];
  v22;
  v45 = a3;
  v23 = *(a3 + 36);
  v24 = a1 + v23;
  v25 = a2 + v23;
  *(a1 + v23) = *(a2 + v23);
  *(a1 + v23 + 8) = *(a2 + v23 + 8);
  *(a1 + v23 + 16) = *(a2 + v23 + 16);
  v43 = type metadata accessor for MLRecommender.ModelParameters(0);
  v26 = v43[7];
  v42 = v24;
  v27 = v26 + v24;
  v44 = v25;
  v28 = (v25 + v26);
  v29 = type metadata accessor for DataFrame(0);
  __dst = v27;
  LODWORD(v27) = __swift_getEnumTagSinglePayload(v27, 1, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
  if (v27)
  {
    if (EnumTagSinglePayload)
    {
      v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v32 = __dst;
LABEL_11:
      memcpy(v32, v28, v31);
      goto LABEL_14;
    }

    (*(*(v29 - 8) + 32))(__dst, v28, v29);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v29);
  }

  else
  {
    v33 = *(v29 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v33 + 8))(__dst, v29);
      v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v32 = __dst;
      goto LABEL_11;
    }

    (*(v33 + 40))(__dst, v28, v29);
  }

LABEL_14:
  v34 = v43[8];
  v35 = v42 + v34;
  v36 = v44;
  v37 = v44 + v34;
  v38 = *(v42 + v34 + 8);
  if (v38 == -1)
  {
    *(v35 + 8) = *(v37 + 8);
    *v35 = *v37;
  }

  else
  {
    v39 = *(v44 + v34 + 8);
    if (v39 == -1)
    {
      outlined destroy of MLDataTable(v35);
      *v35 = *v37;
      *(v35 + 8) = *(v37 + 8);
    }

    else
    {
      v40 = *v35;
      *v35 = *v37;
      *(v35 + 8) = v39 & 1;
      outlined consume of Result<_DataTable, Error>(v40, v38);
    }

    v36 = v44;
  }

  *(v42 + v43[9]) = *(v36 + v43[9]);
  *(a1 + *(v45 + 40)) = *(a2 + *(v45 + 40));
  *(a1 + *(v45 + 44)) = *(a2 + *(v45 + 44));
  return a1;
}

uint64_t sub_BEBBC(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLRecommender.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 36), a2, v5);
  }

  return result;
}

uint64_t sub_BEC34(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLRecommender.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 36), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLRecommender(uint64_t a1)
{
  v3[0] = &unk_33FC40;
  v3[1] = &value witness table for Builtin.UnknownObject + 64;
  v3[2] = &unk_33FC58;
  v3[3] = &unk_33FC58;
  v3[4] = &unk_33FC70;
  result = type metadata accessor for MLRecommender.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[5] = *(result - 8) + 64;
    v3[6] = &unk_33FC88;
    v3[7] = &unk_33FC88;
    swift_initStructMetadata(a1, 256, 8, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *outlined retain of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[7];
  v12 = a1[8];
  v11 = a1[9];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[14];
  v7 = a1[15];
  v6 = a1[16];
  *a1;
  v1;
  v2;
  v3;
  v4;
  v12;

  outlined copy of InteractionLookupTable?(v8, v9, v10);
  v7;
  v6;
  return a1;
}

uint64_t outlined copy of InteractionLookupTable?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2;
    return a3;
  }

  return result;
}

char specialized implicit closure #1 in RecommenderTrainingData.init(_:)(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = v2;
  v3 = *a1;
  v23 = *(a1 + 8);
  v4 = *(a1 + 24);
  v24 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v12[0] = v3;
  v12[1] = v23;
  v13 = v6;
  v14 = v4;
  v22 = v4;
  v15 = v24;
  v16 = v7;
  v17 = v5;
  outlined copy of MLRecommender.Identifier(v3, v23, v6);
  v8 = v4;
  v9 = v24;
  outlined copy of MLRecommender.Identifier(v8, v24, v7);
  swift_getAtKeyPath(v12, a2);
  outlined consume of MLRecommender.Identifier(v3, v23, v6);
  outlined consume of MLRecommender.Identifier(v22, v9, v7);
  result = v19;
  v11 = v20;
  *v20 = v18;
  *(v11 + 16) = result;
  return result;
}

char specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4);
  if (!v5)
  {
    v6[3] = v11;
    v6[2] = v10;
    v6[1] = v9;
    *v6 = v8;
  }

  return result;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B])()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 24);
  result = (*(v2 + 16))();
  *v3 = result;
  return result;
}

void *outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[7];
  v7 = a1[8];
  v6 = a1[9];
  *a1;
  v1;
  v2;
  v3;
  v4;
  v7;
  v6;
  return a1;
}

void *outlined retain of SparseMatrix<Double>.MajorCollection(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  a1[3];
  v1;
  v2;
  return a1;
}

uint64_t *outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[7];
  v5 = a1[8];
  a1[9];
  v5, a2;
  v4, a2;
  v3, a2;
  v2, a2;
  v8, a2;
  v7, a2;
  return a1;
}

void *outlined release of SparseMatrix<Double>.MajorCollection(void *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[5];
  v3, a2;
  v2, a2;
  return a1;
}

void *outlined release of ItemSimilarityTrainer<CosineSimilarity>(void *a1, uint64_t a2)
{
  v7 = a1[6];
  v8 = a1[7];
  v2 = a1[8];
  v3 = a1[9];
  v4 = a1[12];
  v5 = a1[13];
  a1[14], a2;
  v5, a2;
  v4;
  v3, a2;
  v2;
  v8, a2;
  v7, a2;
  return a1;
}

uint64_t MLShapedArray<>.init(shape:nestedArray:)(uint64_t a1, uint64_t a2)
{
  return MLShapedArray<>.init(shape:nestedArray:)(a1, a2, &demangling cache variable for type metadata for [Any]);
}

{
  return MLShapedArray<>.init(shape:nestedArray:)(a1, a2, &demangling cache variable for type metadata for [Any?]);
}

uint64_t MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v54 = v7;
  *&v63 = a1;
  if (a5 >> 1 == a4)
  {
    outlined init with copy of Any?(a6, v51);
    if (v52)
    {
      if (swift_dynamicCast(v53, v51, &type metadata for Any + 8, &type metadata for Double, 6))
      {
        *v51 = *&v53[0];
        *&v53[0] = v63;
        v63;
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
        v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
        return MLShapedArray.subscript.setter(v51, v53, v9, v10, v11);
      }
    }

    else
    {
      outlined destroy of Any?(v51);
    }

    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v29 = 0xD000000000000035;
    *(v29 + 8) = "Expected a nested array with " + 0x8000000000000000;
    goto LABEL_46;
  }

  if ((a5 >> 1) <= a4)
  {
    BUG();
  }

  v55 = a2;
  v58 = a5;
  v59 = a4;
  v60 = a3;
  v62 = *(a3 + 8 * a4);
  outlined init with copy of Any?(a6, v51);
  if (!v52)
  {
    outlined destroy of Any?(v51);
    goto LABEL_26;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  if (!swift_dynamicCast(v53, v51, &type metadata for Any + 8, v13, 6))
  {
    goto LABEL_26;
  }

  if (*(*&v53[0] + 16) != v62)
  {
    *&v53[0];
LABEL_26:
    outlined init with copy of Any?(a6, v51);
    if (v52)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
      if (swift_dynamicCast(v53, v51, &type metadata for Any + 8, v30, 6))
      {
        v31 = *&v53[0];
        if (*(*&v53[0] + 16) == v62)
        {
          v32 = v55;
          swift_unknownObjectRetain(v55);
          v62 = specialized Collection.dropFirst(_:)(1, v32, v60, v59, v58);
          v58 = v33;
          v59 = v34;
          v60 = v35;
          v36 = v63;
          v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v36);
          v61 = v6;
          if (!isUniquelyReferenced_nonNull_native)
          {
            *&v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 16) + 1, 1, v63);
          }

          v38 = *(v63 + 16);
          if (*(v63 + 24) >> 1 <= v38)
          {
            *&v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v63 + 24) >= 2uLL, v38 + 1, 1, v63);
          }

          v39 = v63;
          *(v63 + 16) = v38 + 1;
          *(v39 + 8 * v38 + 32) = 0;
          v56 = *(v31 + 16);
          v40 = v31 + 32;
          v41 = 0;
          for (i = v31; ; v31 = i)
          {
            if (v56 == v41)
            {
              v63;
              swift_unknownObjectRelease(v62);
              v49 = v31;
              return v49;
            }

            if (v41 >= *(v31 + 16))
            {
              BUG();
            }

            outlined init with copy of Any?(v40, &v51[8]);
            v53[1] = v52;
            v53[0] = *&v51[8];
            v42 = *(v63 + 16);
            if (swift_isUniquelyReferenced_nonNull_native(v63))
            {
              v43 = v63;
            }

            else
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v63);
            }

            if (!v42)
            {
              BUG();
            }

            if (v42 > v43[2])
            {
              BUG();
            }

            v43[v42 + 3] = v41;
            *&v63 = v43;
            v44 = v61;
            MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(v43, v62, v58, v59, v60, v53);
            v61 = v44;
            if (v44)
            {
              break;
            }

            outlined destroy of Any?(v53);
            v40 += 32;
            ++v41;
          }

          swift_unknownObjectRelease(v62);
          outlined destroy of Any?(v53);
          v63;
          v49 = i;
          return v49;
        }

        *&v53[0];
      }
    }

    else
    {
      outlined destroy of Any?(v51);
    }

    *v51 = 0;
    *&v51[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    *&v51[8];
    *v51 = 0xD00000000000001DLL;
    *&v51[8] = "ts of type Int or String." + 0x8000000000000000;
    *&v53[0] = v62;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v45._object;
    String.append(_:)(v45);
    object;
    v47._countAndFlagsBits = 0x746E656D656C6520;
    v47._object = 0xEA00000000002E73;
    String.append(_:)(v47);
    v63 = *v51;
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v29 = v63;
LABEL_46:
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v28);
  }

  v56 = *&v53[0];
  v14 = v55;
  swift_unknownObjectRetain(v55);
  i = specialized Collection.dropFirst(_:)(1, v14, v60, v59, v58);
  v59 = v15;
  v60 = v16;
  v55 = v17;
  v18 = v63;
  v63;
  v19 = swift_isUniquelyReferenced_nonNull_native(v18);
  v61 = v6;
  if (!v19)
  {
    *&v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 16) + 1, 1, v63);
  }

  v20 = *(v63 + 16);
  if (*(v63 + 24) >> 1 <= v20)
  {
    *&v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v63 + 24) >= 2uLL, v20 + 1, 1, v63);
  }

  v21 = v63;
  *(v63 + 16) = v20 + 1;
  *(v21 + 8 * v20 + 32) = 0;
  v22 = v56;
  v58 = *(v56 + 16);
  v23 = v56 + 32;
  for (j = 0; ; ++j)
  {
    if (v58 == j)
    {
      v48 = v22;
      v63;
      swift_unknownObjectRelease(i);
      v49 = v48;
      return v49;
    }

    if (j >= *(v22 + 16))
    {
      BUG();
    }

    v62 = v23;
    outlined init with copy of Any(v23, &v51[8]);
    outlined init with take of Any(&v51[8], v53);
    v25 = v63;
    v26 = *(v63 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native(v63))
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    }

    if (!v26)
    {
      BUG();
    }

    if (v26 > v25[2])
    {
      BUG();
    }

    v25[v26 + 3] = j;
    outlined init with copy of Any(v53, v50);
    *&v63 = v25;
    v27 = v61;
    MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(v25, i, v59, v60, v55, v50);
    v61 = v27;
    if (v27)
    {
      break;
    }

    outlined destroy of Any?(v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    v23 = v62 + 32;
    v22 = v56;
  }

  swift_unknownObjectRelease(i);
  outlined destroy of Any?(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v63;
  v49 = v56;
  return v49;
}

uint64_t MLShapedArray<>.init(shape:nestedArray:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v21 = a2;
  v18 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v16[0] = 0;
  v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
  a1;
  v20 = v5;
  MLShapedArrayProtocol.init(repeating:shape:)(v16, a1, v5, v6);
  v7 = specialized MutableCollection.subscript.getter(0, a1);
  v9 = v8;
  v11 = v10;
  v19 = v12;
  a1;
  v16[3] = __swift_instantiateConcreteTypeFromMangledName(v17);
  v16[0] = v21;
  v21 = v7;
  v13 = v9;
  v14 = v18;
  MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(_swiftEmptyArrayStorage, v7, v13, v11, v19, v16);
  if (v4)
  {
    (*(*(v20 - 8) + 8))(v14);
  }

  swift_unknownObjectRelease(v21);
  return outlined destroy of Any?(v16);
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {
    BUG();
  }

  v8 = a5 >> 1;
  v9 = specialized Array.index(_:offsetBy:limitedBy:)(a4, a1, a5 >> 1);
  if (v10)
  {
    v9 = v8;
  }

  if (v8 < v9)
  {
    BUG();
  }

  v11 = specialized ArraySlice.subscript.getter(v9, v8, a2, a3, a4, a5);
  swift_unknownObjectRelease(a2);
  return v11;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    BUG();
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    BUG();
  }

  if (a2 < a5)
  {
    BUG();
  }

  if (a2 < 0)
  {
    BUG();
  }

  swift_unknownObjectRetain(a3);
  return a3;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.init(from:)(uint64_t a1)
{
  v52 = v1;
  v48 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v3 = *(*(v48 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v40 = &v39;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v49 = &v39;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v42 = &v39;
  v53 = type metadata accessor for TensorShape(0);
  v51 = *(v53 - 8);
  v12 = *(v51 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v43 = &v39;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v47 = &v39;
  v46 = type metadata accessor for Tensor(0);
  v17 = *(v46 - 8);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v44 = &v39;
  v21 = alloca(v18);
  v22 = alloca(v18);
  Dense.weight.getter();
  Tensor.shape.getter();
  v50 = *(v17 + 8);
  v41 = &v39;
  v23 = v46;
  v50(&v39, v46);
  v24 = v47;
  v45 = TensorShape.subscript.getter(1);
  v51 = *(v51 + 8);
  (v51)(v24, v53);
  v25 = v44;
  Dense.weight.getter();
  v26 = v43;
  Tensor.shape.getter();
  v27 = v25;
  v28 = a1;
  v50(v27, v23);
  v29 = TensorShape.subscript.getter(0);
  (v51)(v26, v53);
  v30 = v29;
  v31 = v42;
  v32 = v23;
  NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)(v45, v30);
  Dense.bias.getter();
  if (__swift_getEnumTagSinglePayload(v31, 1, v23) == 1)
  {
    outlined destroy of Tensor?(v31);
    NeuralNetwork.Layer.InnerProductParameters.hasBias.setter(0);
  }

  else
  {
    v53 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v50(v31, v23);
    NeuralNetwork.Layer.InnerProductParameters.hasBias.setter(1);
    v33 = v49;
    NeuralNetwork.WeightParameters.init(_:updatable:)(v53, 0);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v48);
    NeuralNetwork.Layer.InnerProductParameters.bias.setter(v33);
  }

  v34 = v41;
  Dense.weight.getter();
  v35 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v50(v34, v32);
  v36 = v40;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v35, 0);
  NeuralNetwork.Layer.InnerProductParameters.weights.setter(v36);
  v37 = type metadata accessor for Dense(0);
  return (*(*(v37 - 8) + 8))(v28, v37);
}

uint64_t outlined destroy of Tensor?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for DataFrame(0);
    v21 = *(*(v6 - 8) + 16);
    v21(a1, a2, v6);
    v7 = a3[5];
    __dst = a1 + v7;
    v8 = a2 + v7;
    if (__swift_getEnumTagSinglePayload(v8, 1, v6))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v21(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v11 = a3[6];
    *(a1 + v11) = *(a2 + v11);
    v12 = *(a2 + v11 + 8);
    *(v3 + v11 + 8) = v12;
    v13 = a3[7];
    v14 = *(a2 + v13);
    *(v3 + v13) = v14;
    v15 = a3[8];
    __dsta = v3 + v15;
    v16 = (a2 + v15 + 8);
    v17 = a2 + v15;
    v22 = (v3 + v15 + 8);
    *(v3 + v15) = *(a2 + v15);
    v18 = *(a2 + v15 + 32);
    v12;
    v14;
    if (v18)
    {
      *(__dsta + 4) = v18;
      (**(v18 - 8))(v22, v16, v18);
    }

    else
    {
      v19 = *v16;
      v22[1] = v16[1];
      *v22 = v19;
    }

    *(__dsta + 40) = *(v17 + 40);
    *(__dsta + 56) = *(v17 + 56);
    __dsta[72] = v17[72];
  }

  return v3;
}

uint64_t destroy for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = a1 + a2[5];
  if (!__swift_getEnumTagSinglePayload(v4, 1, v2))
  {
    v3(v4, v2);
  }

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  result = a2[8];
  if (*(a1 + result + 32))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((result + a1 + 8));
  }

  return result;
}

char *initializeWithCopy for MLLogisticRegressionClassifier.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v21 = *(*(v4 - 8) + 16);
  v21(a1, a2, v4);
  v5 = a3[5];
  v6 = &a1[v5];
  v7 = &a2[v5];
  if (__swift_getEnumTagSinglePayload(v7, 1, v4))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

  else
  {
    v21(v6, v7, v4);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v4);
  }

  v9 = a3[6];
  *&a1[v9] = *&a2[v9];
  v10 = *&a2[v9 + 8];
  *&a1[v9 + 8] = v10;
  v11 = a3[7];
  v12 = *&a2[v11];
  *&a1[v11] = v12;
  v13 = a3[8];
  v22 = &a1[v13];
  v14 = &a2[v13 + 8];
  v15 = &a2[v13];
  v16 = &a1[v13 + 8];
  *&a1[v13] = *&a2[v13];
  v17 = *&a2[v13 + 32];
  v10;
  v12;
  if (v17)
  {
    *(v22 + 4) = v17;
    (**(v17 - 8))(v16, v14, v17);
  }

  else
  {
    v18 = *v14;
    *(v16 + 1) = v14[1];
    *v16 = v18;
  }

  *(v22 + 40) = *(v15 + 40);
  *(v22 + 56) = *(v15 + 56);
  v22[72] = v15[72];
  return a1;
}

uint64_t assignWithCopy for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v28 = *(v5 - 8);
  v27 = *(v28 + 24);
  v27(a1, a2, v5);
  v26 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v28 + 16))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v28 + 8))(v7, v5, v10, v27);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v27(v7, v8, v5);
  }

LABEL_9:
  v12 = v26[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a2 + v12 + 8);
  v14 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = v13;
  v13;
  v14;
  v15 = v26[7];
  v16 = *(a2 + v15);
  v17 = *(a1 + v15);
  *(a1 + v15) = v16;
  v16;
  v17;
  v18 = v26[8];
  v19 = a1 + v18;
  v20 = a2 + v18 + 8;
  v21 = v18 + a2;
  v22 = (a1 + v18 + 8);
  *(a1 + v18) = *(a2 + v18);
  v23 = *(a2 + v18 + 32);
  if (!*(a1 + v18 + 32))
  {
    if (v23)
    {
      *(v19 + 32) = v23;
      (**(v23 - 8))(v22, v20);
      goto LABEL_16;
    }

LABEL_15:
    v24 = *v20;
    v22[1] = *(v20 + 16);
    *v22 = v24;
    goto LABEL_16;
  }

  if (!v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v18 + 8));
    goto LABEL_15;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + v18 + 8), v20);
LABEL_16:
  *(v19 + 40) = *(v21 + 40);
  *(v19 + 48) = *(v21 + 48);
  *(v19 + 56) = *(v21 + 56);
  *(v19 + 64) = *(v21 + 64);
  *(v19 + 72) = *(v21 + 72);
  return a1;
}

char *initializeWithTake for MLLogisticRegressionClassifier.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v9 = *(*(v4 - 8) + 32);
  v9(a1, a2, v4);
  v5 = a3[5];
  __dst = &a1[v5];
  v6 = &a2[v5];
  if (__swift_getEnumTagSinglePayload(v6, 1, v4))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v6, *(*(v7 - 8) + 64));
  }

  else
  {
    v9(__dst, v6, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  qmemcpy(&a1[a3[8]], &a2[a3[8]], 0x49uLL);
  return a1;
}

uint64_t assignWithTake for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v24 = *(v5 - 8);
  v23 = *(v24 + 40);
  v23(a1, a2, v5);
  v22 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v24 + 32))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v24 + 8))(v7, v5, v10, v23);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v23(v7, v8, v5);
  }

LABEL_9:
  v12 = v22[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);
  v13;
  v14 = v22[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  v15;
  v16 = v22[8];
  v17 = a1 + v16;
  v18 = v16 + a2;
  v19 = (a1 + v16 + 8);
  *(a1 + v16) = *(a2 + v16);
  if (*(a1 + v16 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v16 + 8));
  }

  v20 = *(v18 + 8);
  v19[1] = *(v18 + 24);
  *v19 = v20;
  *(v17 + 40) = *(v18 + 40);
  *(v17 + 56) = *(v18 + 56);
  *(v17 + 72) = *(v18 + 72);
  return a1;
}

uint64_t sub_C07EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for DataFrame(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 20) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 24) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 24) + 8) >> 1) + 1;
  }

  return result;
}

uint64_t sub_C0880(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for DataFrame(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 20) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 24);
  *(a1 + result + 8) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for DataFrame?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &unk_33FD48;
      v4[3] = &value witness table for Builtin.BridgeObject + 64;
      v4[4] = &unk_33FD60;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML30MLLogisticRegressionClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML30ijk13V20Persistentm48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05l5G0V14nd3O07c5N00N5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v19 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of DataFrame?(a1, &v16);
  if (__swift_getEnumTagSinglePayload(&v16, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
    v10 = v19;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v17;
    (*(v17 + 32))(&v16, &v16, v2);
    v14 = v19;
    (*(v13 + 16))(v19, &v16, v2);
    v18 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v14, v18, 2);
    (*(v13 + 8))(&v16, v2);
    v10 = v14;
    v11 = 0;
    v12 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

NSURL *MLLogisticRegressionClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v153 = v2;
  v4 = v1;
  v130 = type metadata accessor for CSVType(0);
  v118 = *(v130 - 8);
  v5 = *(v118 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v129 = &v116;
  v8 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v117 = &v116;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v120 = &v116;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v142 = &v116;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v133 = &v116;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v150 = &v116;
  v21 = type metadata accessor for DataFrame(0);
  v132 = *(v21 - 8);
  v22 = *(v132 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v131 = &v116;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v141 = &v116;
  v140 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v27 = *(*(v140 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v135 = &v116;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v137 = &v116;
  v32 = alloca(v27);
  v33 = alloca(v27);
  v145 = &v116;
  v157 = type metadata accessor for URL(0);
  v152 = *(v157 - 8);
  v34 = *(v152 + 8);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v128 = &v116;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v134 = &v116;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v119 = &v116;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v136 = &v116;
  v43 = alloca(v34);
  v44 = alloca(v34);
  v144 = &v116;
  v45 = alloca(v34);
  v46 = alloca(v34);
  v139 = &v116;
  v47 = alloca(v34);
  v48 = alloca(v34);
  v138 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v49 = *(v138 + 20);
  v149 = v4;
  v127 = v4 + v49;
  v143 = v21;
  __swift_storeEnumTagSinglePayload(v4 + v49, 1, 1, v21);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v50 = v153;
  v51 = Data.init(contentsOf:options:)(&v116, 0);
  v153 = v50;
  if (v50)
  {
    v53 = *(v152 + 1);
    v54 = v157;
    v53(a1, v157);
    v53(&v116, v54);
LABEL_37:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v127, &demangling cache variable for type metadata for DataFrame?);
    return __stack_chk_guard;
  }

  v55 = v51;
  v56 = v52;
  v151 = a1;
  v57 = v157;
  v146 = *(v152 + 1);
  v146(&v116, v157);
  v58 = objc_opt_self(NSPropertyListSerialization);
  v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v148 = v55;
  isa = v59.super.isa;
  v147 = v56;
  v159[0] = 0;
  v61 = [v58 propertyListWithData:v59.super.isa options:0 format:0 error:v159];
  v62 = v61;

  v63 = v159[0];
  if (!v62)
  {
    v90 = v63;
    _convertNSErrorToError(_:)(v63);

    swift_willThrow(v90, "propertyListWithData:options:format:error:");
    outlined consume of Data._Representation(v148, v147);
    v146(v151, v57);
    goto LABEL_37;
  }

  _bridgeAnyObjectToAny(_:)(v62);
  swift_unknownObjectRelease(v62);
  outlined init with copy of Any(v161, v159);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, v64, 6))
  {
    v91 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v91, 0, 0);
    *v92 = 0xD000000000000037;
    *(v92 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v92 + 16) = 0;
    *(v92 + 32) = 0;
    *(v92 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v91);
    outlined consume of Data._Representation(v148, v147);
    v93 = v151;
    v94 = v157;
LABEL_36:
    v146(v93, v94);
    __swift_destroy_boxed_opaque_existential_1Tm(v161);
    goto LABEL_37;
  }

  v65 = v158[0];
  specialized Dictionary.subscript.getter(0x746567726174, 0xE600000000000000, v158[0]);
  if (!v160)
  {
    v65;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
LABEL_26:
    v67 = v157;
LABEL_35:
    v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
    *v98 = 0xD000000000000034;
    *(v98 + 8) = "ad training parameters." + 0x8000000000000000;
    *(v98 + 16) = 0;
    *(v98 + 32) = 0;
    *(v98 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v97);
    outlined consume of Data._Representation(v148, v147);
    v93 = v151;
    v94 = v67;
    goto LABEL_36;
  }

  v156 = v65;
  v66 = swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for String, 6);
  v67 = v157;
  if (!v66)
  {
    v95 = v156;
LABEL_28:
    v95;
    goto LABEL_35;
  }

  v121 = v158[0];
  v68 = v158[1];
  v69 = v156;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("training parameters." + 0x8000000000000000), v156);
  if (!v160)
  {
    v96 = v68;
LABEL_31:
    v96;
    v69;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
LABEL_34:
    v67 = v157;
    goto LABEL_35;
  }

  v155 = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, v70, 6))
  {
LABEL_33:
    v155;
    v156;
    goto LABEL_34;
  }

  v71 = v158[0];
  v69 = v156;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v156);
  if (!v160)
  {
    v71;
    v96 = v155;
    goto LABEL_31;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v71;
    goto LABEL_33;
  }

  v154 = v71;
  v122 = v158[0];
  v72 = v156;
  specialized Dictionary.subscript.getter(0x746C616E6550316CLL, 0xE900000000000079, v156);
  v67 = v157;
  if (!v160)
  {
    goto LABEL_39;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v154;
    v155;
    v72;
    goto LABEL_35;
  }

  v123 = v158[0];
  specialized Dictionary.subscript.getter(0x746C616E6550326CLL, 0xE900000000000079, v72);
  if (!v160)
  {
LABEL_39:
    v154;
    v155;
    v72;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    goto LABEL_41;
  }

  v124 = v158[0];
  specialized Dictionary.subscript.getter(0x657A695370657473, 0xE800000000000000, v156);
  if (!v160)
  {
LABEL_42:
    v154;
    v155;
    v156;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_41:
    v154;
    v155;
    v95 = v156;
    goto LABEL_28;
  }

  v125 = v158[0];
  specialized Dictionary.subscript.getter(0xD000000000000014, ("oating-point numbers." + 0x8000000000000000), v156);
  if (!v160)
  {
    goto LABEL_42;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v154;
    v155;
    v100 = v156;
LABEL_46:
    v100;
    goto LABEL_26;
  }

  v126 = v158[0];
  v73 = v156;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("convergenceThreshold" + 0x8000000000000000), v156);
  v73;
  if (!v160)
  {
    v154;
    v155;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
    goto LABEL_26;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Bool, 6))
  {
    v154;
    v100 = v155;
    goto LABEL_46;
  }

  LOBYTE(v156) = v158[0];
  v74 = v138;
  v75 = *(v138 + 24);
  v76 = v149;
  *(v149 + v75) = v121;
  *(v76 + v75 + 8) = v155;
  *(v76 + *(v74 + 28)) = v154;
  v77 = v145;
  *v145 = 0;
  *(v77 + 16) = 256;
  v78 = v140;
  swift_storeEnumTagMultiPayload(v77, v140, 0);
  v79 = v76 + *(v74 + 32) + 8;
  *(v79 + 16) = 0;
  *v79 = 0;
  *(v79 - 8) = 10;
  *(v79 + 32) = _mm_loadh_ps(&qword_33FD10);
  *(v79 + 48) = xmmword_33FD20;
  *(v79 + 64) = 1;
  v80 = v137;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v77, v137);
  v160 = v78;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v159);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v80, boxed_opaque_existential_0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v159, v79, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v77);
  *(v79 - 8) = v122;
  *(v79 + 32) = v123;
  *(v79 + 40) = v124;
  *(v79 + 48) = v125;
  *(v79 + 56) = v126;
  v137 = v79;
  *(v79 + 64) = v156;
  v82 = v139;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  v83 = v136;
  v152 = *(v152 + 2);
  v152(v136, v82, v157);
  v84 = v153;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v83, 0, 0, 0, 1);
  v145 = v84;
  if (v84)
  {
    v152(v128, v139, v157);
    v153 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v150 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v85 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v86 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v87 = *(v118 + 104);
    v88 = v129;
    LODWORD(v136) = enum case for CSVType.double(_:);
    v141 = v87;
    (v87)(v129, enum case for CSVType.double(_:), v130);
    v89 = v117;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v150, v85, v86, v88, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v128, 0, 0, 0, 1, v153, v89);
    v153 = 0;
    (*(v132 + 32))(v149, v131, v143);
    v152(v134, v144, v157);
    v152 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v149 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v138 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v104 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v105 = v129;
    (v141)(v129, v136, v130);
    v106 = 1;
    v107 = v120;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v149, v138, v104, v105, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    v108 = v153;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v134, 0, 0, 0, 1, v152, v107);
    if (v108)
    {
      v108;
    }

    else
    {
      v106 = 0;
    }

    v145;
    v109 = v133;
    __swift_storeEnumTagSinglePayload(v133, v106, 1, v143);
    v150 = v109;
  }

  else
  {
    (*(v132 + 32))(v149, v141, v143);
    v101 = v119;
    v152(v119, v144, v157);
    v102 = 1;
    v103 = v145;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v101, 0, 0, 0, 1);
    if (v103)
    {
      v103;
    }

    else
    {
      v102 = 0;
    }

    __swift_storeEnumTagSinglePayload(v150, v102, 1, v143);
  }

  v110 = v127;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v150, v127, &demangling cache variable for type metadata for DataFrame?);
  v111 = v142;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML30MLLogisticRegressionClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML30ijk13V20Persistentm48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05l5G0V14nd3O07c5N00N5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(v110);
  if (__swift_getEnumTagSinglePayload(v111, 1, v140) == 1)
  {
    v112 = v140;
    swift_storeEnumTagMultiPayload(v135, v140, 3);
    if (__swift_getEnumTagSinglePayload(v142, 1, v112) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v142, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v142, v135);
  }

  v160 = v140;
  v113 = __swift_allocate_boxed_opaque_existential_0(v159);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v135, v113);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v159, v137, &demangling cache variable for type metadata for Any?);
  outlined consume of Data._Representation(v148, v147);
  v114 = v157;
  v115 = v146;
  v146(v151, v157);
  v115(v144, v114);
  v115(v139, v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  return __stack_chk_guard;
}

NSURL *MLLogisticRegressionClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v65 = v1;
  v56 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v62 = &v51;
  v60 = type metadata accessor for CSVWritingOptions(0);
  v57 = *(v60 - 8);
  v6 = *(v57 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v55 = &v51;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v52 = &v51;
  v64 = type metadata accessor for URL(0);
  v66 = *(v64 - 8);
  v11 = *(v66 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v58 = &v51;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v53 = &v51;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v59 = &v51;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v18, v68);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v20 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v21 = v20[6];
  v22 = *(v2 + v21);
  v63 = *(v2 + v21 + 8);
  v23 = v63;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "training parameters." + 0x8000000000000000;
  v24 = *(v2 + v20[7]);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 96) = v24;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v54 = v20;
  v25 = v20[8];
  v26 = *(v2 + v25);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v26;
  *(inited + 176) = 0x746C616E6550316CLL;
  *(inited + 184) = 0xE900000000000079;
  v27 = *(v2 + v25 + 40);
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = v27;
  *(inited + 224) = 0x746C616E6550326CLL;
  *(inited + 232) = 0xE900000000000079;
  v28 = *(v2 + v25 + 48);
  *(inited + 264) = &type metadata for Double;
  *(inited + 240) = v28;
  *(inited + 272) = 0x657A695370657473;
  *(inited + 280) = 0xE800000000000000;
  v29 = *(v2 + v25 + 56);
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v29;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = "oating-point numbers." + 0x8000000000000000;
  v30 = *(v2 + v25 + 64);
  *(inited + 360) = &type metadata for Double;
  *(inited + 336) = v30;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = "convergenceThreshold" + 0x8000000000000000;
  v51 = v2;
  LOBYTE(v25) = *(v2 + v25 + 72);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v25;
  v63;
  v24;
  v31 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v32 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v31;
  v67 = 0;
  v34 = [v32 dataWithPropertyList:isa format:200 options:0 error:&v67];
  v35 = v34;

  v36 = v67;
  if (v35)
  {
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v35);
    v38 = v37;

    v39 = v59;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v40 = v63;
    v61 = v38;
    v41 = v65;
    Data.write(to:options:)(v39, 0, v63, v38);
    if (v41)
    {
      (*(v66 + 8))(v39, v64);
      outlined consume of Data._Representation(v40, v61);
    }

    else
    {
      v65 = *(v66 + 8);
      v65(v39, v64);
      v43 = v53;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v44 = v52;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v66 = type metadata accessor for DataFrame(0);
      v45 = v51;
      DataFrameProtocol.writeCSV(to:options:)(v43, v44, v66, &protocol witness table for DataFrame);
      v59 = *(v57 + 8);
      (v59)(v44, v60);
      v65(v43, v64);
      v46 = v54[5] + v45;
      v47 = v62;
      outlined init with copy of DataFrame?(v46, v62);
      if (__swift_getEnumTagSinglePayload(v47, 1, v66) == 1)
      {
        outlined consume of Data._Representation(v63, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, &demangling cache variable for type metadata for DataFrame?);
      }

      else
      {
        v49 = v58;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        v50 = v55;
        CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
        DataFrameProtocol.writeCSV(to:options:)(v49, v50, v66, &protocol witness table for DataFrame);
        outlined consume of Data._Representation(v63, v61);
        (v59)(v50, v60);
        v65(v58, v64);
        (*(*(v66 - 8) + 8))(v62);
      }
    }
  }

  else
  {
    v42 = v36;
    _convertNSErrorToError(_:)(v36);

    swift_willThrow(v42, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  result = a2 >> 62;
  if (a2 >> 62 != 1)
  {
    if (result != 2)
    {
      return result;
    }

    a1;
  }

  return a2 & 0x3FFFFFFFFFFFFFFFLL;
}

uint64_t outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

id static NLLanguageRecognizer.dominantLanguage(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v23 = objc_opt_self(NLLanguageRecognizer);
    v3 = (a1 + 40);
    do
    {
      v24 = v2;
      v22 = v1;
      v4 = *(v3 - 1);
      v5 = *v3;
      *v3;
      v6 = String._bridgeToObjectiveC()();
      v7 = [v23 dominantLanguageForString:v6];
      v8 = v7;

      if (!v8)
      {
        v8 = NLLanguageUndetermined;
      }

      v5;
      v2 = v24;
      v9 = v24[2];
      v10 = v9 + 1;
      if (v24[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
        v2 = v24;
      }

      v2[2] = v10;
      v2[v9 + 4] = v8;
      v3 += 2;
      v1 = v22 - 1;
    }

    while (v22 != 1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v11 = specialized Collection<>.mostFrequent()(v2);
  v2;
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(v11);
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)(NLLanguageUndetermined);
  v17 = v16;
  if (!(v15 ^ v12 | v16 ^ v14))
  {
    v14;
    v17;
LABEL_14:
    v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
    *v20 = 0xD00000000000001ELL;
    *(v20 + 8) = "t and try again." + 0x8000000000000000;
    *(v20 + 16) = 0;
    *(v20 + 32) = 0;
    *(v20 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v19);

    return v11;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v12, v14, v15, v16, 0);
  v14;
  v17;
  if (v18)
  {
    goto LABEL_14;
  }

  return v11;
}

id static NLEmbedding.requestIfNotPresent(embeddingType:language:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self(NLEmbedding);
  result = [v2 assetsAvailableForEmbeddingType:a1 language:a2];
  if (!result)
  {
    aBlock[4] = MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1;
    v4 = _Block_copy(aBlock);
    [v2 requestAssetsForEmbeddingType:a1 language:a2 withCompletionHandler:v4];
    _Block_release(v4);
    v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
    *v6 = 0xD000000000000080;
    *(v6 + 8) = "v24@?0q8@NSError16" + 0x8000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v5);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v5;
  v6 = a3;
  v4(a2, a3);
  v5;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

{
  return block_copy_helper_8(a1, a2);
}

uint64_t specialized binaryDo<A, B, C>(_:_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, double a7)
{
  v8 = a1;
  if (a2)
  {
    swift_errorRetain(a1);
    a5;
  }

  else if (a4)
  {
    swift_errorRetain(a3);
    a5;
    return a3;
  }

  else
  {
    v13[0] = a1;
    v12[0] = a3;
    outlined copy of Result<_DataTable, Error>(a3, 0);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    closure #1 in MLDataTable.join(with:on:type:)(v13, v12, a5, a6, a7);
    outlined consume of Result<_DataTable, Error>(a3, 0);
    outlined consume of Result<_DataTable, Error>(a1, 0);
    a5;
    return v12[1];
  }

  return v8;
}

uint64_t MLDataTable.init(contentsOf:options:)(void *a1, void *a2)
{
  v127 = v3;
  __src = a2;
  v123 = v2;
  v132 = type metadata accessor for URL(0);
  v4 = *(v132 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v124 = __dst;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v130 = __dst;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UTType?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v133 = __dst;
  v13 = type metadata accessor for UTType(0);
  v126 = *(v13 - 8);
  v14 = *(v126 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = alloca(v14);
  v18 = alloca(v14);
  v129 = __dst;
  v19 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v134 = a1;
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    outlined release of MLDataTable.ParsingOptions(__dst, v19);
    v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
    *v41 = 0xD00000000000002ALL;
    *(v41 + 8) = "Cannot determine the language." + 0x8000000000000000;
    *(v41 + 16) = 0;
    *(v41 + 32) = 0;
    *(v41 + 48) = 2;
    swift_willThrow();
    return (*(v4 + 8))(v134, v132);
  }

  __src = v4;
  v20 = URL.pathExtension.getter();
  v22 = v21;
  static UTType.data.getter();
  v23 = v133;
  v125 = __dst;
  UTType.init(filenameExtension:conformingTo:)(v20, v22, __dst);
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) == 1)
  {
    outlined release of MLDataTable.ParsingOptions(__dst, 1);
    outlined destroy of UTType?(v133);
    v24 = v130;
    URL.appendingPathComponent(_:)(0x6C62615461746144, 0xE900000000000065);
    v25 = URL.hasDirectoryPath.getter();
    v26 = *(__src + 1);
    v27 = v24;
    v28 = v132;
    v26(v27, v132);
    v133 = v26;
    if (v25)
    {
      v29 = v124;
      URL.appendingPathComponent(_:)(0x6C62615461746144, 0xE900000000000065);
      v30 = URL.path.getter(0x6C62615461746144);
      v31 = v28;
      v33 = v32;
      v26(v29, v31);
      if ((v33 & 0x1000000000000000) != 0 || !(v33 & 0x2000000000000000 | v30 & 0x1000000000000000))
      {
        v116 = v127;
        _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLTable.init(from:), 0, v30, v33, &type metadata for OpaquePointer);
        if (!v116)
        {
LABEL_41:
          v109 = v33;
LABEL_50:
          v109;
          v112 = v122[0];
          v113 = type metadata accessor for CMLTable();
          v94 = swift_allocObject(v113, 24, 7);
          *(v94 + 16) = v112;
          v98 = v134;
          v99 = v132;
          goto LABEL_51;
        }
      }

      else
      {
        v34 = alloca(32);
        v35 = alloca(32);
        __dst[3] = 0;
        __dst[2] = closure #1 in CMLTable.init(from:);
        if ((v33 & 0x2000000000000000) == 0)
        {
          if ((v30 & 0x1000000000000000) != 0)
          {
            v36 = (v33 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v37 = v30 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = _StringObject.sharedUTF8.getter(v30, v33);
            v37 = v117;
          }

          v38 = v127;
          v39 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v36, v37, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
          if (v38)
          {
            goto LABEL_33;
          }

          v122[0] = v39;
          goto LABEL_41;
        }

        v121[0] = v30;
        v121[1] = v33 & 0xFFFFFFFFFFFFFFLL;
        v96 = v127;
        v97 = specialized handling<A, B>(_:_:)(v121);
        if (!v96)
        {
          if (!v97)
          {
            BUG();
          }

          v122[0] = v97;
          v109 = v33;
          goto LABEL_50;
        }
      }

LABEL_33:
      v33;
      return (v133)(v134, v132);
    }

    if ((URL.hasDirectoryPath.getter() & 1) == 0)
    {
      goto LABEL_26;
    }

    v52 = objc_opt_self(NSFileManager);
    v53 = [v52 defaultManager];
    __src = v53;
    v54 = v130;
    URL.appendingPathComponent(_:)(0x686372615F726964, 0xEF696E692E657669);
    URL.path.getter(0x686372615F726964);
    v56 = v55;
    v133(v54, v132);
    v57 = String._bridgeToObjectiveC()();
    v56;
    v58 = __src;
    LOBYTE(v56) = [__src fileExistsAtPath:v57];

    if (!v56)
    {
LABEL_26:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(119);
      v77._countAndFlagsBits = 0x7420666F204C5255;
      v77._object = 0xED00002720657079;
      String.append(_:)(v77);
      v78 = URL.pathExtension.getter();
      v80 = v79;
      v77._countAndFlagsBits = v78;
      v77._object = v79;
      String.append(_:)(v77);
      v80;
      v77._object = "only load from a file URL." + 0x8000000000000000;
      v77._countAndFlagsBits = 0xD000000000000068;
      String.append(_:)(v77);
      v81 = v121[0];
      v82 = v121[1];
      v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v84 = swift_allocObject(v83, 64, 7);
      v84[2] = 1;
      v84[3] = 2;
      v84[7] = &type metadata for String;
      v84[4] = v81;
      v84[5] = v82;
      v82;
      print(_:separator:terminator:)(v84, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v84;
      v77._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v77._object, 0, 0);
      *v85 = v81;
      *(v85 + 8) = v82;
      *(v85 + 16) = 0;
      *(v85 + 32) = 0;
      *(v85 + 48) = 2;
      swift_willThrow();
LABEL_27:
      v86 = v134;
      v87 = v132;
      return (v133)(v86, v87);
    }

    v60 = URL.path.getter(v57);
    v61 = v59;
    if ((v59 & 0x1000000000000000) != 0 || !(v59 & 0x2000000000000000 | v60 & 0x1000000000000000))
    {
      v118 = v127;
      _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLTable.init(from:), 0, v60, v59, &type metadata for OpaquePointer);
      if (v118)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v62 = alloca(32);
      v63 = alloca(32);
      __dst[3] = 0;
      __dst[2] = closure #1 in CMLTable.init(from:);
      if ((v59 & 0x2000000000000000) != 0)
      {
        v121[0] = v60;
        v121[1] = v59 & 0xFFFFFFFFFFFFFFLL;
        v110 = v127;
        v111 = specialized handling<A, B>(_:_:)(v121);
        if (!v110)
        {
          if (!v111)
          {
            BUG();
          }

          v122[0] = v111;
          v109 = v61;
          goto LABEL_50;
        }

        goto LABEL_45;
      }

      if ((v60 & 0x1000000000000000) != 0)
      {
        v64 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v65 = v60 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = _StringObject.sharedUTF8.getter(v60, v59);
        v65 = v119;
      }

      v66 = v127;
      v67 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v64, v65, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_s13OpaquePointerV_TG5TA_0);
      if (v66)
      {
LABEL_45:
        v61;
        goto LABEL_27;
      }

      v122[0] = v67;
    }

    v109 = v61;
    goto LABEL_50;
  }

  v43 = v126;
  (*(v126 + 32))(v129, v133, v13);
  v44 = v125;
  static UTType.commaSeparatedText.getter();
  LOBYTE(v130) = UTType.conforms(to:)(v44);
  v45 = *(v43 + 8);
  (v45)(v44, v13);
  v128 = v13;
  v133 = v45;
  if ((v130 & 1) == 0)
  {
    static UTType.plainText.getter();
    v68 = UTType.conforms(to:)(v44);
    v69 = v128;
    v70 = v68;
    (v45)(v44, v128);
    if (v70)
    {
      v130 = type metadata accessor for CMLTable();
      v71 = URL.path.getter(0);
      v73 = v72;
      memcpy(v121, __dst, sizeof(v121));
      MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
      memcpy(v122, v121, sizeof(v122));
      v74 = 1;
      v75 = v71;
      v76 = v73;
    }

    else
    {
      outlined release of MLDataTable.ParsingOptions(__dst, v69);
      static UTType.json.getter();
      v88 = UTType.conforms(to:)(v44);
      v133(v44, v128);
      if ((v88 & 1) == 0)
      {
        v121[0] = 0;
        v121[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(119);
        v100._countAndFlagsBits = 0x7420666F204C5255;
        v100._object = 0xED00002720657079;
        String.append(_:)(v100);
        v101 = URL.pathExtension.getter();
        v103 = v102;
        v100._countAndFlagsBits = v101;
        v100._object = v102;
        String.append(_:)(v100);
        v103;
        v100._object = "only load from a file URL." + 0x8000000000000000;
        v100._countAndFlagsBits = 0xD000000000000068;
        String.append(_:)(v100);
        v104 = v121[0];
        v105 = v121[1];
        v106 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
        v107 = swift_allocObject(v106, 64, 7);
        v107[2] = 1;
        v107[3] = 2;
        v107[7] = &type metadata for String;
        v107[4] = v104;
        v107[5] = v105;
        v105;
        print(_:separator:terminator:)(v107, 32, 0xE100000000000000, 10, 0xE100000000000000);
        v107;
        v100._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v100._object, 0, 0);
        *v108 = v104;
        *(v108 + 8) = v105;
        *(v108 + 16) = 0;
        *(v108 + 32) = 0;
        *(v108 + 48) = 2;
        swift_willThrow();
        goto LABEL_37;
      }

      v130 = type metadata accessor for CMLTable();
      v89 = URL.path.getter(0);
      v91 = v90;
      _s8CreateML11MLDataTableV14ParsingOptionsVSgWOi0_(v121);
      memcpy(v122, v121, sizeof(v122));
      v75 = v89;
      v76 = v91;
      v74 = 0;
    }

    v92 = v127;
    v93 = CMLTable.__allocating_init(from:isCSV:options:)(v75, v76, v74, v122);
    if (!v92)
    {
      v94 = v93;
      v95 = v134;
      goto LABEL_35;
    }

LABEL_37:
    v51 = v134;
    goto LABEL_38;
  }

  v130 = type metadata accessor for CMLTable();
  v46 = v134;
  v126 = URL.path.getter(0);
  v48 = v47;
  memcpy(v121, __dst, sizeof(v121));
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  memcpy(v122, v121, sizeof(v122));
  v49 = v127;
  v50 = CMLTable.__allocating_init(from:isCSV:options:)(v126, v48, 1, v122);
  if (v49)
  {
    v51 = v46;
LABEL_38:
    (*(__src + 1))(v51, v132);
    v86 = v129;
    v87 = v128;
    return (v133)(v86, v87);
  }

  v94 = v50;
  v95 = v46;
LABEL_35:
  (*(__src + 1))(v95, v132);
  v98 = v129;
  v99 = v128;
LABEL_51:
  v133(v98, v99);
  v114 = type metadata accessor for _DataTable();
  swift_allocObject(v114, 40, 7);
  result = _DataTable.init(impl:)(v94);
  v115 = v123;
  *v123 = result;
  *(v115 + 8) = 0;
  return result;
}

void *MLDataTable.ParsingOptions.init(containsHeader:delimiter:comment:escape:doubleQuote:quote:skipInitialSpaces:missingValues:lineTerminator:selectColumns:maxRows:skipRows:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  v34 = a4;
  v35 = a3;
  v38 = a2;
  v36 = a6;
  v37 = a5;
  LOBYTE(a1) = a1 & 1;
  v39 = a1;
  v40 = a17 & 1;
  v19 = 0;
  if (a18 > 0)
  {
    v19 = a18;
  }

  LOBYTE(__src[0]) = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  LOBYTE(__src[7]) = a8 & 1;
  __src[8] = a9;
  __src[9] = a10;
  LOBYTE(__src[10]) = a11 & 1;
  __src[11] = a12;
  __src[12] = a13;
  __src[13] = a14;
  __src[14] = a15;
  __src[15] = a16;
  LOBYTE(__src[16]) = a17 & 1;
  __src[17] = v19;
  memcpy(v18, __src, 0x90uLL);
  LOBYTE(v21[0]) = v39;
  v21[1] = v38;
  v21[2] = v35;
  v21[3] = v34;
  v21[4] = v37;
  v21[5] = v36;
  v21[6] = a7;
  v22 = a8 & 1;
  v23 = a9;
  v24 = a10;
  v25 = a11 & 1;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = v40;
  v32 = v19;
  outlined retain of MLDataTable.ParsingOptions(__src);
  return outlined release of MLDataTable.ParsingOptions(v21, __src);
}

uint64_t MLDataTable.ParsingOptions.delimiter.getter()
{
  v1 = *(v0 + 8);
  *(v0 + 16);
  return v1;
}

uint64_t MLDataTable.ParsingOptions.delimiter.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16), a2;
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.comment.getter()
{
  v1 = *(v0 + 24);
  *(v0 + 32);
  return v1;
}

uint64_t MLDataTable.ParsingOptions.comment.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 32), a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.escape.getter()
{
  v1 = *(v0 + 40);
  *(v0 + 48);
  return v1;
}

uint64_t MLDataTable.ParsingOptions.escape.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 48), a2;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.quote.getter()
{
  v1 = *(v0 + 64);
  *(v0 + 72);
  return v1;
}

uint64_t MLDataTable.ParsingOptions.quote.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 72), a2;
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.missingValues.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 88), a2;
  *(v2 + 88) = a1;
  return result;
}

uint64_t MLDataTable.ParsingOptions.lineTerminator.getter()
{
  v1 = *(v0 + 96);
  *(v0 + 104);
  return v1;
}

uint64_t MLDataTable.ParsingOptions.lineTerminator.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 104), a2;
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.selectColumns.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 112), a2;
  *(v2 + 112) = a1;
  return result;
}

uint64_t MLDataTable.ParsingOptions.maxRows.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3;
  if (!a1)
  {
    a1 = 0;
  }

  result = a3(a1);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t outlined destroy of UTType?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UTType?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)()
{
  v3 = v2;
  v4 = v0;
  v5 = *(v2 + 24);
  result = (*(v3 + 16))();
  if (!v1)
  {
    result = v7;
    *v4 = v7;
  }

  return result;
}

{
  return _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_s13OpaquePointerV_TG5TA_0();
}

uint64_t destroy for MLDataTable.ParsingOptions(void *a1, uint64_t a2)
{
  a1[2], a2;
  a1[4], a2;
  a1[6], a2;
  a1[9], a2;
  a1[11], a2;
  a1[13], a2;
  return a1[14], a2;
}

uint64_t initializeWithCopy for MLDataTable.ParsingOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v9 = *(a2 + 32);
  *(a1 + 32) = v9;
  *(a1 + 40) = *(a2 + 40);
  v10 = *(a2 + 48);
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 104);
  *(a1 + 104) = v6;
  v7 = *(a2 + 112);
  *(a1 + 112) = v7;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v3;
  v9;
  v10;
  v4;
  v5;
  v6;
  v7;
  return a1;
}

uint64_t assignWithCopy for MLDataTable.ParsingOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v3;
  v4, a2;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  v5;
  v6, a2;
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 48) = v7;
  v7;
  v8, a2;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a1 + 72);
  *(a1 + 72) = v9;
  v9;
  v10, a2;
  *(a1 + 80) = *(a2 + 80);
  v11 = *(a2 + 88);
  v12 = *(a1 + 88);
  *(a1 + 88) = v11;
  v11;
  v12, a2;
  *(a1 + 96) = *(a2 + 96);
  v13 = *(a2 + 104);
  v14 = *(a1 + 104);
  *(a1 + 104) = v13;
  v13;
  v14, a2;
  v15 = *(a1 + 112);
  v16 = *(a2 + 112);
  *(a1 + 112) = v16;
  v16;
  v15, a2;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t assignWithTake for MLDataTable.ParsingOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v3, a2;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  v4, a2;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  v5, a2;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v6, a2;
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  v7, a2;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104), a2;
  v8 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  v8, a2;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataTable.ParsingOptions(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 16) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDataTable.ParsingOptions(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 144) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 2 * (a2 - 1);
    }
  }
}

char _Model.Output.init(variant:)(uint64_t a1, double a2)
{
  v5 = v2;
  is_sframe = tc_v1_variant_is_sframe(*(a1 + 16));
  v7 = *(a1 + 16);
  if (is_sframe)
  {
    v8 = specialized handling<A, B>(_:_:)(v7);
    if (!v3)
    {
      v9 = v8;
      v35 = v5;
      if (!v8)
      {
        BUG();
      }

      v10 = type metadata accessor for CMLTable();
      v11 = swift_allocObject(v10, 24, 7);
      *(v11 + 16) = v9;

      v12 = type metadata accessor for _DataTable();
      swift_allocObject(v12, 40, 7);
      v13 = _DataTable.init(impl:)(v11);
      v14 = 0;
      v15 = v13;
      result = 0;
LABEL_9:
      v5 = v35;
LABEL_10:
      *v5 = v15;
      *(v5 + 8) = v14;
      *(v5 + 16) = result;
      return result;
    }
  }

  else
  {
    is_sarray = tc_v1_variant_is_sarray(v7);
    v18 = *(a1 + 16);
    if (is_sarray)
    {
      v19 = specialized handling<A, B>(_:_:)(v18);
      if (!v3)
      {
        v20 = v19;
        v35 = v5;
        if (!v19)
        {
          BUG();
        }

        v21 = type metadata accessor for CMLColumn();
        v22 = swift_allocObject(v21, 24, 7);
        *(v22 + 16) = v20;

        v23 = type metadata accessor for _UntypedColumn();
        v24 = swift_allocObject(v23, 24, 7);
        v14 = 0;
        v15 = v24;
        *(v24 + 16) = v22;
        result = 32;
        goto LABEL_9;
      }
    }

    else if (tc_v1_variant_is_flexible_type(v18))
    {
      v25 = CMLVariant.featureValue()();
      if (!v3)
      {
        MLDataValue.init(_:)(v25, a2);

        v15 = v32;
        v14 = v33;
        result = v34 | 0x40;
        goto LABEL_10;
      }
    }

    else
    {
      is_model = tc_v1_variant_is_model(*(a1 + 16));
      v27 = *(a1 + 16);
      if (is_model)
      {
        v28 = specialized handling<A, B>(_:_:)(v27);
        if (!v3)
        {
          v36 = v28;
          if (!v28)
          {
            BUG();
          }

          v29 = type metadata accessor for CMLModel();
          v15 = swift_allocObject(v29, 24, 7);
          *(v15 + 16) = v36;

          v14 = 0;
          result = -96;
          goto LABEL_10;
        }
      }

      else
      {
        if (!tc_v1_variant_is_parameters(v27))
        {

          result = -32;
          v15 = 0;
          v14 = 0;
          goto LABEL_10;
        }

        v30 = specialized handling<A, B>(_:_:)(*(a1 + 16));
        if (!v3)
        {
          v37 = v30;
          if (!v30)
          {
            BUG();
          }

          v31 = type metadata accessor for CMLParameters();
          v15 = swift_allocObject(v31, 24, 7);
          *(v15 + 16) = v37;

          v14 = 0;
          result = -64;
          goto LABEL_10;
        }
      }
    }
  }
}

uint64_t CMLDictionary.keyAndValue(at:)(uint64_t a1)
{
  type metadata accessor for CMLFeatureValue();
  v3 = CMLFeatureValue.__allocating_init()();
  v4 = CMLFeatureValue.__allocating_init()();
  if (a1 < 0)
  {
    BUG();
  }

  v5 = v4;
  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(*(v2 + 16), a1, *(v3 + 16), *(v4 + 16));
  if (v1)
  {
    v3;
    v5;
  }

  return v3;
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLFeatureValue.stringValue()()
{
  result._countAndFlagsBits = specialized handling<A, B>(_:_:)(*(v1 + 16));
  if (!v0)
  {
    if (!result._countAndFlagsBits)
    {
      BUG();
    }

    result._countAndFlagsBits = String.init(cString:)(result._countAndFlagsBits);
  }

  return result;
}

uint64_t CMLFeatureValue.__allocating_init(_:)(uint64_t a1)
{
  return CMLFeatureValue.__allocating_init(_:)(a1, specialized handling<A, B>(_:_:));
}

{
  return CMLFeatureValue.__allocating_init(_:)(a1, specialized handling<A, B>(_:_:));
}

{
  return CMLFeatureValue.__allocating_init(_:)(a1, specialized handling<A, B>(_:_:));
}

uint64_t CMLParameters.add(key:featureValue:)(char a1, uint64_t a2)
{
  v3 = CMLParameters.Key.rawValue.getter(a1);
  v5 = v4;

  specialized String.withCString<A>(_:)(v3, v5, v2, a2);
  return v5;
}

uint64_t CMLFeatureValue.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = String.utf8CString.getter(a1);
  a2;
  v5 = specialized handling<A, B>(_:_:)(v4 + 32);
  result = v4;
  if (!v2)
  {
    if (!v5)
    {
      BUG();
    }

    result = swift_allocObject(v3, 25, 7);
    *(result + 16) = v5;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t CMLModel.callFunction(name:arguments:)(char a1, uint64_t a2)
{
  v3 = MethodName.rawValue.getter(a1);
  v5 = v4;
  v9 = v2;
  v10 = a2;
  v6 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLModel.callFunction(name:arguments:), v8, v3, v4);
  v5;
  return v6;
}

uint64_t CMLSequence.append(_:)(uint64_t a1)
{
  result = specialized handling<A, B, C>(_:_:_:)(*(v2 + 16), *(a1 + 16));
  if (result < 0 && v1 == 0)
  {
    BUG();
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLTable.save(to:type:)(Swift::String to, Swift::Int type)
{
  v5._reserved = type;
  v6 = v2;
  if ((to._object & 0x1000000000000000) != 0 || !(to._object & 0x2000000000000000 | to._countAndFlagsBits & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.save(to:type:), &v5._baseURL, to._countAndFlagsBits, to._object, &type metadata for () + 8);
  }

  else
  {
    if ((to._object & 0x2000000000000000) == 0)
    {
      if ((to._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v3 = (to._object & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v3 = _StringObject.sharedUTF8.getter(to._countAndFlagsBits, to._object);
        if (!v3)
        {
          v4 = 0;
          goto LABEL_7;
        }
      }

      v4 = v3;
LABEL_7:
      partial apply for closure #1 in CMLTable.save(to:type:)(v4);
      return;
    }

    v5.super.isa = to._countAndFlagsBits;
    v5._urlString = (to._object & 0xFFFFFFFFFFFFFFLL);
    closure #1 in CMLTable.save(to:type:)(&v5, type, v2);
  }
}

uint64_t CMLTable.__allocating_init(from:isCSV:options:)(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v77 = a3;
  v62 = a1;
  memcpy(__dst, a4, sizeof(__dst));
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v7 = empty;
  v8 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v8, v60);
  *(inited + 16) = v7;
  v9 = specialized handling<A, B>(_:_:)(0);
  if (v4)
  {
    swift_unexpectedError(v4, "CreateML/MLDataValueConvertible.swift", 37, 1, 118);
    BUG();
  }

  v10 = v9;
  v79 = a2;
  v63 = v5;
  if (!v9)
  {
    BUG();
  }

  v82 = type metadata accessor for CMLFeatureValue();
  v11 = swift_initStackObject(v82, v54);
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  CMLParameters.add(key:featureValue:)(9, v11);

  memcpy(v53, __dst, sizeof(v53));
  if (_s8CreateML11MLDataTableV14ParsingOptionsVSgWOg(v53) != 1)
  {
    v12 = specialized handling<A, B>(_:_:)(LOBYTE(v53[0]));
    if (!v12)
    {
      BUG();
    }

    v13 = swift_initStackObject(v82, v55);
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    CMLParameters.add(key:featureValue:)(10, v13);

    v14 = __dst[1];
    v15 = __dst[2];
    v67 = __dst[3];
    v66 = __dst[4];
    v65 = __dst[5];
    v64 = __dst[6];
    LOBYTE(v76[0]) = __dst[7];
    v69 = __dst[8];
    v68 = __dst[9];
    LOBYTE(v78) = __dst[10];
    v73 = __dst[11];
    v72 = __dst[12];
    v71 = __dst[13];
    v70 = __dst[14];
    v80 = __dst[16];
    v75 = __dst[15];
    v74 = __dst[17];
    swift_bridgeObjectRetain_n(__dst[2], 2);
    v16 = CMLFeatureValue.__allocating_init(_:)(v14, v15);
    v15;
    CMLParameters.add(key:featureValue:)(11, v16);

    v17 = v66;
    swift_bridgeObjectRetain_n(v66, 2);
    v18 = CMLFeatureValue.__allocating_init(_:)(v67, v17);
    v17;
    CMLParameters.add(key:featureValue:)(12, v18);

    v19 = v64;
    swift_bridgeObjectRetain_n(v64, 2);
    v20 = CMLFeatureValue.__allocating_init(_:)(v65, v19);
    v19;
    CMLParameters.add(key:featureValue:)(13, v20);

    v21 = specialized handling<A, B>(_:_:)(LOBYTE(v76[0]));
    if (!v21)
    {
      BUG();
    }

    v22 = swift_initStackObject(v82, v56);
    *(v22 + 16) = v21;
    *(v22 + 24) = 1;
    CMLParameters.add(key:featureValue:)(14, v22);

    v23 = v68;
    swift_bridgeObjectRetain_n(v68, 2);
    v24 = CMLFeatureValue.__allocating_init(_:)(v69, v23);
    v23;
    CMLParameters.add(key:featureValue:)(15, v24);

    v25 = specialized handling<A, B>(_:_:)(v78);
    if (!v25)
    {
      BUG();
    }

    v26 = swift_initStackObject(v82, v57);
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
    CMLParameters.add(key:featureValue:)(16, v26);

    v27 = v73;
    v73;
    v28 = specialized Array<A>.featureSequence.getter(v27);
    v29 = CMLFeatureValue.__allocating_init(_:)(v28, specialized handling<A, B>(_:_:));
    v27;
    CMLParameters.add(key:featureValue:)(17, v29);

    v30 = v71;
    swift_bridgeObjectRetain_n(v71, 2);
    v31 = CMLFeatureValue.__allocating_init(_:)(v72, v30);
    v30;
    CMLParameters.add(key:featureValue:)(18, v31);

    v32 = v70;
    if (v70)
    {
      v70;
      v34 = v32;
      v33 = specialized Array<A>.featureSequence.getter(v32);
      v35 = CMLFeatureValue.__allocating_init(_:)(v33, specialized handling<A, B>(_:_:));
      v34;
      CMLParameters.add(key:featureValue:)(19, v35);
    }

    if (!v80)
    {
      v36 = specialized handling<A, B>(_:_:)(v75);
      if (!v36)
      {
        BUG();
      }

      v37 = swift_initStackObject(v82, v59);
      *(v37 + 16) = v36;
      *(v37 + 24) = 1;
      CMLParameters.add(key:featureValue:)(20, v37);
    }

    outlined release of MLDataTable.ParsingOptions?(__dst);
    v38 = specialized handling<A, B>(_:_:)(v74);
    if (!v38)
    {
      BUG();
    }

    v39 = swift_initStackObject(v82, v58);
    *(v39 + 16) = v38;
    *(v39 + 24) = 1;
    CMLParameters.add(key:featureValue:)(21, v39);
  }

  v40 = v79;
  v41 = alloca(32);
  v42 = alloca(32);
  LOBYTE(v53[1]) = v77 & 1;
  v53[2] = inited;
  if ((v79 & 0x1000000000000000) != 0 || !(v79 & 0x2000000000000000 | v62 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.init(from:isCSV:options:), &v52, v62, v79, &type metadata for OpaquePointer);
    v40;
    v47 = v78;
  }

  else
  {
    v82 = &v52;
    v43 = alloca(32);
    v44 = alloca(32);
    v53[1] = partial apply for closure #1 in CMLTable.init(from:isCSV:options:);
    v53[2] = &v52;
    if ((v79 & 0x2000000000000000) != 0)
    {
      v76[0] = v62;
      v76[1] = v79 & 0xFFFFFFFFFFFFFFLL;
      if (v77)
      {
        v47 = specialized handling<A, B, C>(_:_:_:)(v76, *(inited + 16));
        if (!v47)
        {
          BUG();
        }
      }

      else
      {
        v48 = specialized handling<A, B>(_:_:)(v76);
        v47 = v48;
        if (!v48)
        {
          BUG();
        }
      }

      v79;
    }

    else
    {
      if ((v62 & 0x1000000000000000) != 0)
      {
        v45 = (v79 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v46 = v62 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = _StringObject.sharedUTF8.getter(v62, v79);
        v46 = v51;
      }

      v47 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v45, v46, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
      v79;
    }
  }

  v49 = inited;
  swift_setDeallocating(inited);
  tc_v1_release(*(v49 + 16));
  result = swift_allocObject(v63, 24, 7);
  *(result + 16) = v47;
  return result;
}

char __CMLFeatureValueType.init(rawValue:)(unint64_t a1)
{
  result = 8;
  if (a1 <= 9)
  {
    return byte_33FFAE[a1];
  }

  return result;
}

uint64_t CMLFeatureValue.deinit()
{
  if (*(v0 + 24) == 1)
  {
    tc_v1_release(*(v0 + 16));
  }

  return v0;
}

uint64_t CMLFeatureValue.init(rawValue:ownsValue:)(uint64_t a1, char a2)
{
  result = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t CMLFeatureValue.releaseRawValue()()
{
  result = *(v0 + 16);
  if (!result)
  {
    BUG();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t CMLFeatureValue.__allocating_init()()
{
  empty = tc_v1_ft_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  result = swift_allocObject(v0, 25, 7);
  *(result + 16) = v2;
  *(result + 24) = 1;
  return result;
}

uint64_t CMLFeatureValue.__allocating_init(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(*(a1 + 16));
  if (v2)
  {
    return a1;
  }

  v6 = v4;
  if (!v4)
  {
    BUG();
  }

  a1;
  result = swift_allocObject(v3, 25, 7);
  *(result + 16) = v6;
  *(result + 24) = 1;
  return result;
}

unint64_t CMLFeatureValue.type.getter()
{
  v1 = tc_v1_ft_type(*(v0 + 16));
  v2 = __CMLFeatureValueType.init(rawValue:)(v1);
  if (v2 == 8)
  {
    BUG();
  }

  return CMLFeatureValueType.init(_:)(v2);
}

Swift::Int __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLFVTypeSequence.append(_:)(CreateML::CMLFeatureValueType a1)
{
  v3 = *(v2 + 16);
  v4 = CMLFeatureValueType.rawValue.getter(a1);
  result = specialized handling<A, B, C>(_:_:_:)(v3, qword_33FFB8[v4]);
  if (!v1 && result < 0)
  {
    BUG();
  }

  return result;
}

uint64_t CMLDictionary.add(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = v4;
  v5 = a1;
  type metadata accessor for CMLFeatureValue();
  a2;
  v6 = CMLFeatureValue.__allocating_init(_:)(a1, a2);
  if (!v3)
  {
    v7 = v6;
    v5 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v10 + 16), *(v6 + 16), *(a3 + 16));
    v7;
    if (v5 < 0)
    {
      BUG();
    }
  }

  return v5;
}

uint64_t CMLMultiArray.shape()(uint64_t (*a1)(void))
{
  result = a1(*(v2 + 16));
  if (!v1 && !result)
  {
    BUG();
  }

  return result;
}

uint64_t CMLColumn.__allocating_init(_:type:)(uint64_t a1, char a2)
{
  v4 = v2;
  v45 = v3;
  if (CMLDictionary.size.getter(&tc_v1_flex_list_size))
  {
    v6 = specialized handling<A, B>(_:_:)(*(a1 + 16));
    if (v2)
    {
      return a1;
    }

    else
    {
      v7 = v6;
      if (!v6)
      {
        BUG();
      }

      a1;
      result = swift_allocObject(v45, 24, 7);
      *(result + 16) = v7;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v9 = specialized handling<A, B>(_:_:)(0);
        if (v2)
        {
          return a1;
        }

        v10 = v9;
        if (!v9)
        {
          BUG();
        }

        goto LABEL_17;
      case 1:
        v21 = specialized handling<A, B>(_:_:)();
        if (v2)
        {
          return a1;
        }

        v10 = v21;
        if (!v21)
        {
          BUG();
        }

LABEL_17:
        v22 = type metadata accessor for CMLFeatureValue();
        v23 = swift_allocObject(v22, 25, 7);
        *(v23 + 16) = v10;
        v47 = v23;
        *(v23 + 24) = 1;
        goto LABEL_25;
      case 2:
        type metadata accessor for CMLFeatureValue();
        v16 = CMLFeatureValue.__allocating_init(_:)(0, 0xE000000000000000);
        goto LABEL_23;
      case 3:
        v17 = tc_v1_flex_list_create(0);
        if (!v17)
        {
          BUG();
        }

        v18 = v17;
        type metadata accessor for CMLFeatureValue();
        v19 = type metadata accessor for CMLSequence();
        inited = swift_initStackObject(v19, v41);
        *(inited + 16) = v18;
        *(inited + 24) = 1;
        v15 = specialized handling<A, B>(_:_:);
        goto LABEL_14;
      case 4:
        v11 = tc_v1_flex_dict_create(0);
        if (!v11)
        {
          BUG();
        }

        v12 = v11;
        type metadata accessor for CMLFeatureValue();
        v13 = type metadata accessor for CMLDictionary();
        inited = swift_initStackObject(v13, v44);
        *(inited + 16) = v12;
        v15 = specialized handling<A, B>(_:_:);
LABEL_14:
        v20 = inited;
        goto LABEL_22;
      case 5:
        type metadata accessor for CMLFeatureValue();
        v16 = CMLFeatureValue.__allocating_init()(&tc_v1_flex_list_size);
        goto LABEL_24;
      case 6:
        v24 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(1, &unk_38C1C0, &unk_38C1E8, &unk_38C210);
        if (v2)
        {
          swift_unexpectedError(v2, "CreateML/_ForwardingWrapper.swift", 33, 1, 378);
          BUG();
        }

        v25 = v24;
        if (!v24)
        {
          BUG();
        }

        v26 = type metadata accessor for CMLMultiArray();
        v27 = swift_initStackObject(v26, v42);
        *(v27 + 16) = v25;
        type metadata accessor for CMLFeatureValue();
        v15 = specialized handling<A, B>(_:_:);
        v20 = v27;
LABEL_22:
        v16 = CMLFeatureValue.__allocating_init(_:)(v20, v15);
LABEL_23:
        v4 = v2;
        if (v2)
        {
          return a1;
        }

LABEL_24:
        v47 = v16;
LABEL_25:
        v28 = tc_v1_flex_list_create(0);
        if (!v28)
        {
          BUG();
        }

        v29 = v28;
        v30 = type metadata accessor for CMLSequence();
        v31 = swift_initStackObject(v30, v40);
        *(v31 + 16) = v29;
        *(v31 + 24) = 1;
        v32 = v47;
        CMLSequence.append(_:)(v47);
        if (v4)
        {
          swift_setDeallocating(v31);
          CMLFeatureValue.deinit();
          swift_deallocClassInstance(v31, 25, 7);
          v32;
          return a1;
        }

        v33 = *(v31 + 16);
        v31;
        v34 = specialized handling<A, B>(_:_:)(v33);
        v46 = v34;
        if (!v34)
        {
          BUG();
        }

        v31;
        v35 = swift_initStackObject(v45, v43);
        v36 = v46;
        *(v35 + 16) = v46;
        v37 = specialized handling<A, B, C>(_:_:_:)(v36, 0);
        v38 = v35;
        v39 = v45;
        v46 = v37;
        if (!v37)
        {
          BUG();
        }

        v38;
        a1;
        swift_setDeallocating(v31);
        CMLFeatureValue.deinit();
        swift_deallocClassInstance(v31, 25, 7);
        v47;
        result = swift_allocObject(v39, 24, 7);
        *(result + 16) = v46;
        break;
    }
  }

  return result;
}

uint64_t CMLDictionary.size.getter(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result < 0)
  {
    BUG();
  }

  return result;
}

unint64_t CMLColumn.type.getter()
{
  v1 = tc_v1_sarray_type(*(v0 + 16));
  v2 = __CMLFeatureValueType.init(rawValue:)(v1);
  if (v2 == 8)
  {
    BUG();
  }

  return CMLFeatureValueType.init(_:)(v2);
}

uint64_t CMLSequence.value(at:)(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  if (a1 < 0)
  {
    BUG();
  }

  result = a2(*(v3 + 16), a1);
  v5 = result;
  if (!v2)
  {
    if (!result)
    {
      BUG();
    }

    v6 = type metadata accessor for CMLFeatureValue();
    result = swift_allocObject(v6, 25, 7);
    *(result + 16) = v5;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t CMLVariant.featureValue()(uint64_t (*a1)(void))
{
  result = a1(*(v2 + 16));
  v4 = result;
  if (!v1)
  {
    if (!result)
    {
      BUG();
    }

    v5 = type metadata accessor for CMLFeatureValue();
    result = swift_allocObject(v5, 25, 7);
    *(result + 16) = v4;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v14 = *v5;
  v6 = swift_allocObject(&unk_390770, 32, 7);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = _sSp8allocate8capacitySpyxGSi_tFZs13OpaquePointerVAEc_Tt0g5(1);
  v8 = swift_allocObject(&unk_390798, 32, 7);
  *(v8 + 16) = partial apply for closure #1 in CMLColumn.apply(transform:type:skipUndefined:);
  *(v8 + 24) = v6;
  *v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned OpaquePointer);
  v7[1] = v8;
  v9 = v5[2];
  v10 = qword_33FFB8[CMLFeatureValueType.rawValue.getter(a3)];

  v11 = specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(v9, @objc invokeContext #1 (rawInput:context:error:) in CMLColumn.apply(transform:type:skipUndefined:), @objc releaseContext #1 (context:) in CMLColumn.apply(transform:type:skipUndefined:), v7, v10, a4);
  if (v4)
  {
    swift_unexpectedError(v4, "CreateML/_ForwardingWrapper.swift", 33, 1, 475);
    BUG();
  }

  v12 = v11;
  if (!v11)
  {
    BUG();
  }

  result = swift_allocObject(v14, 24, 7);
  *(result + 16) = v12;
  return result;
}

uint64_t closure #1 in CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = type metadata accessor for CMLFeatureValue();
  v3 = swift_allocObject(v2, 25, 7);
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  a2(v3);

  v4 = CMLFeatureValue.releaseRawValue()(v3);

  return v4;
}

uint64_t _sSp8allocate8capacitySpyxGSi_tFZs13OpaquePointerVAEc_Tt0g5(uint64_t a1)
{
  if (((a1 - 0x800000000000000) >> 60) < 0xF)
  {
    BUG();
  }

  return swift_slowAlloc(16 * a1, -1);
}

uint64_t closure #1 in CMLTable.init(from:isCSV:options:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = v3;
  if (a2)
  {
    result = specialized handling<A, B, C>(_:_:_:)(a1, *(a3 + 16));
    if (v4)
    {
      return result;
    }

    if (!result)
    {
      BUG();
    }
  }

  else
  {
    result = specialized handling<A, B>(_:_:)(a1);
    if (v4)
    {
      return result;
    }

    if (!result)
    {
      BUG();
    }
  }

  *v5 = result;
  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLParameters.add(key:featureValue:), v9, a1, a2, &type metadata for () + 8);
  }

  else
  {
    v12 = v8;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      specialized handling<A, B, C, D>(_:_:_:_:)(*(a3 + 16), v8, *(a4 + 16));
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(a1, a2);
        v5 = v7;
      }

      _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v4, v5, partial apply for closure #1 in CMLParameters.add(key:featureValue:));
    }
  }
}

{
  v10 = a3;
  v11 = a4;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in CMLTable.renameColumn(named:to:), v9, a1, a2, &type metadata for () + 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(a1, a2);
      v5 = v7;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v4, v5, partial apply for closure #1 in closure #1 in CMLTable.renameColumn(named:to:));
  }

  v8[0] = a1;
  v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  specialized handling<A, B, C, D>(_:_:_:_:)(*(a3 + 16), a4, v8);
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = v5;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    v14 = v21;
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.renameColumn(named:to:), v17, a1, a2, &type metadata for () + 8);
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_9:

    return a4;
  }

  v22 = v16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16[0] = a1;
    v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;

    v12 = v21;
    specialized String.withCString<A>(_:)(a3, a4, a5, v16);
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter(a1, a2);
    v10 = v15;
  }

  v11 = v21;
  _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v9, v10, partial apply for closure #1 in CMLTable.renameColumn(named:to:));
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_12:
  a4;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(void, void *, void))
{
  v9 = a5;
  v17 = a3;
  v18 = a4;
  if ((a2 & 0x1000000000000000) == 0 && a2 & 0x2000000000000000 | a1 & 0x1000000000000000)
  {
    v20 = v15;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v15[0] = a1;
      v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      a6(*(a3 + 16), v15, *(a4 + 16));
      if (v6)
      {
        a4;
        return a3;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v11 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = a5;
        v14 = _StringObject.sharedUTF8.getter(a1, a2);
        v9 = v19;
        v10 = v14;
      }

      _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v10, v11, v9);
      if (v6)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    a3;
    v12 = a4;
    return v12;
  }

  _StringGuts._slowWithCString<A>(_:)(a5, v16, a1, a2, &type metadata for () + 8);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_7:
  a4;
  v12 = a3;
  return v12;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = a6;
  v25 = a3;
  v34 = a4;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7 & 1;
  v30 = a8;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:), v24, a1, a2, &type metadata for () + 8);
    if (v8)
    {
      v9;
      v14 = v34;
      goto LABEL_8;
    }

    v20 = v34;
    goto LABEL_13;
  }

  v33 = &v22;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = _StringObject.sharedUTF8.getter(a1, a2);
      v12 = v21;
    }

    v13 = v34;
    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v11, v12, partial apply for closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:));
    if (v8)
    {
      v9;
      v14 = v13;
LABEL_8:
      v14;
    }

    v20 = v13;
LABEL_13:
    v20;
    goto LABEL_15;
  }

  v23[0] = a1;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v31 = a6;
  v32 = v8;
  a6;

  v16 = a3;
  v17 = v34;
  v18 = v32;
  v9 = v31;
  specialized String.withCString<A>(_:)(v16, v34, a5, v31, a7, a8, v23);
  if (v18)
  {
    v9;
    v17;
  }

  v17;
LABEL_15:

  return v9;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = a3;
  v16 = a4;
  v17 = a5 & 1;
  v18 = a6;
  v19 = a7;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:), v14, a1, a2, &type metadata for () + 8);
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_9:

    return a4;
  }

  v20 = v13;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v13, a3, a4, a5, a6, a7);
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter(a1, a2);
    v10 = v12;
  }

  _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v9, v10, partial apply for closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:));
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_12:
  a4;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t (*a9)(uint64_t), uint64_t (*a10)(uint64_t), void (*a11)(void, uint64_t, uint64_t, void *))
{
  v13 = a8;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(a8, v26, a1, a2, &type metadata for () + 8);
    if (v11)
    {
      a6;
      v16 = a4;
      goto LABEL_8;
    }

    v21 = a4;
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a4;
    if ((a1 & 0x1000000000000000) != 0)
    {
      v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v11;
      v23 = _StringObject.sharedUTF8.getter(a1, a2);
      v13 = a8;
      v14 = v23;
      v15 = v24;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v14, v15, v13);
    if (v11)
    {
      a6;
      v16 = v34;
LABEL_8:
      v16;
    }

    v21 = v34;
LABEL_13:
    v21;
    goto LABEL_15;
  }

  v34 = v25;
  v25[0] = a1;
  v25[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v32 = a3;
  v33 = v11;
  a6;

  v19 = v33;
  specialized String.withCString<A>(_:)(v32, a4, a5, a6, a7, v25, a9, a10, a11);
  if (v19)
  {
    a6;
    a4;
  }

  a4;
LABEL_15:

  return a6;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(uint64_t), void (*a9)(void, uint64_t, uint64_t, void *))
{
  v14 = a7;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(a7, v23, a1, a2, &type metadata for () + 8);
    if (v9)
    {
LABEL_7:

      return a4;
    }

    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v9;
      v20 = _StringObject.sharedUTF8.getter(a1, a2);
      v14 = a7;
      v15 = v20;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v15, v16, v14);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    a4;
  }

  v29 = &v21;
  v28 = a4;
  v22[0] = a1;
  v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v30 = v9;

  v18 = v28;
  v19 = v30;
  specialized String.withCString<A>(_:)(a3, v28, a5, a6, v22, a8, a9);
  if (v19)
  {

    return v18;
  }

  v18;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(void, uint64_t, uint64_t, void *))
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(a6, v12, a1, a2, &type metadata for () + 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = a6;
      v10 = _StringObject.sharedUTF8.getter(a1, a2);
      a6 = v16;
      v7 = v10;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v7, v8, a6);
  }

  v11[0] = a1;
  v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  a7(*(a3 + 16), a4, a5, v11);
}

uint64_t closure #1 in CMLTable.init(joiningMultiple:and:columnNames:method:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(*(a2 + 16), *(a3 + 16), *(a4 + 16), a1);
  if (!v5)
  {
    if (!result)
    {
      BUG();
    }

    *v6 = result;
  }

  return result;
}

uint64_t CMLColumn.__allocating_init(concatenating:and:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = a3(*(a1 + 16), *(a2 + 16));
  if (v3)
  {
    a1;
    return a2;
  }

  else
  {
    v8 = v4;
    if (!v5)
    {
      BUG();
    }

    v7 = v5;
    a1;
    a2;
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
  }

  return result;
}

uint64_t CMLMultiArray.dimensions()(uint64_t (*a1)(void))
{
  result = a1(*(v2 + 16));
  if (result < 0 && v1 == 0)
  {
    BUG();
  }

  return result;
}

uint64_t CMLTable.addColumn(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3;
  a3;
  return specialized String.withCString<A>(_:)(a1, a2, v3, a3, partial apply for closure #1 in CMLTable.addColumn(name:_:), specialized handling<A, B, C, D>(_:_:_:_:));
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLTable.renameColumn(named:to:)(Swift::String named, Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  to._object;

  specialized String.withCString<A>(_:)(named._countAndFlagsBits, named._object, countAndFlagsBits, object, v2);
}

unint64_t closure #1 in CMLTable.columnType(name:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = specialized handling<A, B, C>(_:_:_:)(*(a2 + 16), a1);
  if (!v3)
  {
    v6 = __CMLFeatureValueType.init(rawValue:)(result);
    if (v6 == 8)
    {
      BUG();
    }

    result = CMLFeatureValueType.init(_:)(v6);
    *v4 = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.sorted(by:increasingOrder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D>(_:_:_:_:)(*(a2 + 16), a1, a3);
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLTable();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t CMLTable.split(fraction:seed:)(uint64_t a1)
{
  v4 = *v2;
  v10 = 0;
  v9 = 0;
  specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v2[2], a1, &v10, &v9);
  if (!v1)
  {
    v5 = v10;
    if (!v10)
    {
      BUG();
    }

    v6 = swift_allocObject(v4, 24, 7);
    *(v6 + 16) = v5;
    v7 = v9;
    if (!v9)
    {
      BUG();
    }

    v3 = v6;
    *(swift_allocObject(v4, 24, 7) + 16) = v7;
  }

  return v3;
}

NSURL *closure #1 in CMLTable.save(to:type:)(NSURL *a1, uint64_t a2, uint64_t a3)
{
  result = a1;
  if (a2 == 2)
  {
    v4 = *(a3 + 16);
    v5 = "json";
  }

  else if (a2 == 1)
  {
    v4 = *(a3 + 16);
    v5 = "binary";
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v4 = *(a3 + 16);
    v5 = "csv";
  }

  return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v4, result, v5, 0);
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLTable.description()()
{
  result._countAndFlagsBits = specialized handling<A, B>(_:_:)(*(v1 + 16));
  if (!v0)
  {
    v3 = specialized handling<A, B>(_:_:)(result._countAndFlagsBits);
    if (!v3)
    {
      BUG();
    }

    result._countAndFlagsBits = String.init(cString:)(v3);
  }

  return result;
}

uint64_t CMLTable.apply(transform:type:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = swift_allocObject(&unk_3907C0, 32, 7);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = _sSp8allocate8capacitySpyxGSi_tFZs13OpaquePointerVAEc_Tt0g5(1);
  v7 = swift_allocObject(&unk_3907E8, 32, 7);
  *(v7 + 16) = partial apply for closure #1 in CMLTable.apply(transform:type:);
  *(v7 + 24) = v5;
  *v6 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned OpaquePointer)partial apply;
  v6[1] = v7;
  v8 = *(v4 + 16);
  v9 = qword_33FFB8[CMLFeatureValueType.rawValue.getter(a3)];

  v10 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v8, @objc invokeContext #1 (rawInput:context:error:) in CMLTable.apply(transform:type:), @objc releaseContext #1 (context:) in CMLTable.apply(transform:type:), v6, v9);
  if (v3)
  {
    swift_unexpectedError(v3, "CreateML/_ForwardingWrapper.swift", 33, 1, 937);
    BUG();
  }

  v11 = v10;
  if (!v10)
  {
    BUG();
  }

  v12 = type metadata accessor for CMLColumn();
  result = swift_allocObject(v12, 24, 7);
  *(result + 16) = v11;
  return result;
}

uint64_t closure #1 in CMLTable.apply(transform:type:)(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = type metadata accessor for CMLSequence();
  v3 = swift_allocObject(v2, 25, 7);
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  a2(v3);

  v4 = CMLFeatureValue.releaseRawValue()(v3);

  return v4;
}

uint64_t releaseContext #1 (context:) in CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 8);
    return a1, -1, -1;
  }

  return result;
}

uint64_t invokeContext #1 (rawInput:context:error:) in CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    BUG();
  }

  if (!a1)
  {
    BUG();
  }

  v2 = *a2;
  v3 = *(a2 + 8);
  v5[0] = a1;
  v3;
  v2(v5);
  v3;
  return v5[1];
}

uint64_t closure #1 in CMLTable.fillMissing(columnNamed:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D>(_:_:_:_:)(*(a2 + 16), a1, *(a3 + 16));
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLTable();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t CMLTable.filtered(_:columnName:isExcluding:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = *v5;
  v7 = v5[2];
  v8 = *(a1 + 16);
  v9 = String.utf8CString.getter(a2);
  v10 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v7, v8, v9 + 32, a4);

  if (!v4)
  {
    if (!v10)
    {
      BUG();
    }

    result = swift_allocObject(v12, 24, 7);
    *(result + 16) = v10;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CMLTable.stack(columnName:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(*(a2 + 16), a3, a1, 0);
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLTable();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.stack(columnName:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = v5;
  v10 = a4;
  v11 = a1;
  result = specialized String.withCString<A>(_:)(a5, v9, a2, a3);
  if (!v6)
  {
    *v7 = result;
  }

  return result;
}