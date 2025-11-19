void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CreateML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v26 = v3;
  v27 = *(a2 + 16);
  if (v27 < v3)
  {
    v3 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v35 = v3;
  if (v3)
  {
    a1;
    a2;
    v4 = 48;
    v5 = 0;
    do
    {
      if (v26 == v5)
      {
        BUG();
      }

      if (v27 == v5)
      {
        BUG();
      }

      v29 = v5;
      v6 = *(v2 + v4 - 16);
      v7 = *(v2 + v4 - 8);
      v8 = *(v2 + v4);
      v9 = *(a2 + v4 - 16);
      v32 = *(a2 + v4 - 8);
      v10 = *(a2 + v4);
      v38 = v8;
      v31 = v7;
      outlined copy of MLRecommender.Identifier(v6, v7, v8);
      v36 = v10;
      outlined copy of MLRecommender.Identifier(v9, v32, v10);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = v11 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v12, 1);
        v12 = v11 + 1;
      }

      v5 = v29 + 1;
      _swiftEmptyArrayStorage[2] = v12;
      v13 = 6 * v11;
      _swiftEmptyArrayStorage[v13 + 4] = v6;
      _swiftEmptyArrayStorage[v13 + 5] = v31;
      LOBYTE(_swiftEmptyArrayStorage[v13 + 6]) = v38 & 1;
      _swiftEmptyArrayStorage[v13 + 7] = v9;
      _swiftEmptyArrayStorage[v13 + 8] = v32;
      LOBYTE(_swiftEmptyArrayStorage[v13 + 9]) = v36 & 1;
      v4 += 24;
      v14 = v35;
      v2 = a1;
    }

    while (v35 != v29 + 1);
  }

  else
  {
    a1;
    a2;
    v14 = 0;
  }

  v15 = 24 * v14 + 48;
  while (v26 != v14)
  {
    if (v26 <= v14)
    {
      BUG();
    }

    v16 = v14 + 1;
    if (__OFADD__(1, v14))
    {
      BUG();
    }

    if (v27 == v14)
    {
      break;
    }

    if (v27 <= v14)
    {
      BUG();
    }

    v17 = *(v2 + v15 - 16);
    v18 = *(v2 + v15 - 8);
    v19 = *(v2 + v15);
    v20 = *(a2 + v15 - 16);
    v33 = *(a2 + v15 - 8);
    v21 = *(a2 + v15);
    v39 = v19;
    v30 = v15;
    outlined copy of MLRecommender.Identifier(v17, v18, v19);
    v37 = v21;
    outlined copy of MLRecommender.Identifier(v20, v33, v21);
    v22 = _swiftEmptyArrayStorage[2];
    v23 = v22 + 1;
    if (_swiftEmptyArrayStorage[3] >> 1 <= v22)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v22 + 1, 1);
      v23 = v22 + 1;
    }

    _swiftEmptyArrayStorage[2] = v23;
    v24 = 6 * v22;
    _swiftEmptyArrayStorage[v24 + 4] = v17;
    _swiftEmptyArrayStorage[v24 + 5] = v18;
    LOBYTE(_swiftEmptyArrayStorage[v24 + 6]) = v39 & 1;
    _swiftEmptyArrayStorage[v24 + 7] = v20;
    _swiftEmptyArrayStorage[v24 + 8] = v33;
    LOBYTE(_swiftEmptyArrayStorage[v24 + 9]) = v37 & 1;
    v15 = v30 + 24;
    v14 = v16;
    v2 = a1;
  }

  a2;
  v2;
  return _swiftEmptyArrayStorage;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v2 = *(a1 + 16);
  v38 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v34 = a1;
  if (v2)
  {
    a1;
    v4 = (a1 + 72);
    do
    {
      v31 = v3;
      v30 = v2;
      v5 = *(v4 - 5);
      v36 = *(v4 - 4);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v39 = *(v4 - 24);
      LODWORD(v40) = *v4;
      v23[0] = v5;
      v23[1] = v36;
      v24 = v39;
      v25 = v6;
      v26 = v7;
      *&v35 = v7;
      v27 = v40;
      v32 = v5;
      outlined copy of MLRecommender.Identifier(v5, v36, v39);
      v33 = v6;
      v8 = v7;
      LOBYTE(v7) = v40;
      outlined copy of MLRecommender.Identifier(v6, v8, v40);
      v9 = v5;
      v10 = v36;
      outlined copy of MLRecommender.Identifier(v9, v36, v39);
      outlined copy of MLRecommender.Identifier(v6, v35, v7);
      swift_getAtKeyPath(v23, v37);
      v11 = v32;
      v12 = v10;
      LOBYTE(v10) = v39;
      outlined consume of MLRecommender.Identifier(v32, v12, v39);
      v13 = v6;
      v14 = v35;
      outlined consume of MLRecommender.Identifier(v13, v35, v40);
      v15 = v11;
      v3 = v31;
      outlined consume of MLRecommender.Identifier(v15, v36, v10);
      outlined consume of MLRecommender.Identifier(v33, v14, v40);
      v16 = v28;
      v17 = v29;
      v38 = v3;
      v18 = v3[2];
      v19 = v3[3];
      v20 = v18 + 1;
      if (v19 >> 1 <= v18)
      {
        v40 = v18 + 1;
        v35 = v28;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v18 + 1, 1);
        v20 = v40;
        v16 = v35;
        v3 = v38;
      }

      v3[2] = v20;
      v21 = 3 * v18;
      *&v3[v21 + 4] = v16;
      LOBYTE(v3[v21 + 6]) = v17 & 1;
      v4 += 48;
      v2 = v30 - 1;
    }

    while (v30 != 1);
  }

  else
  {
    a1;
  }

  v34;
  return v3;
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v12 = a1;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v2 = 0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v13 = v1;
  do
  {
    v4 = *(v12 + 8 * v2 + 32);
    v10 = v4;
    swift_bridgeObjectRetain_n(v4, 2);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(key: MLDataValue, value: MLDataValue)]?);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(MLDataValue, MLDataValue)]?);
    swift_dynamicCast(&v9, &v10, v5, v6, 7);
    v11 = v9;
    v4;
    v14 = v3;
    v7 = v3[2];
    if (v3[3] >> 1 <= v7)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v7 + 1, 1);
      v3 = v14;
    }

    ++v2;
    v3[2] = v7 + 1;
    v3[v7 + 4] = v11;
  }

  while (v13 != v2);
  return v3;
}

{
  v11 = a1;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v2 = 0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v12 = v1;
  do
  {
    v4 = *(v11 + 8 * v2 + 32);
    v14 = v3;
    v5 = v3[2];
    v6 = v3[3];
    if (v6 >> 1 <= v5)
    {
      v13 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1);
      v4 = v13;
      v3 = v14;
    }

    ++v2;
    v9 = &type metadata for Double;
    v10 = &protocol witness table for Double;
    *&v8 = v4;
    v3[2] = v5 + 1;
    outlined init with take of TabularRegressionTask(&v8, &v3[5 * v5 + 4]);
  }

  while (v12 != v2);
  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 32);
  do
  {
    v12 = *v3;
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Double, Double));
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (precision: Double, recall: Double));
    swift_dynamicCast(&v11, &v12, v4, v5, 7);
    v6 = v11;
    v14 = v2;
    v7 = v2[2];
    v8 = v2[3];
    v9 = v7 + 1;
    if (v8 >> 1 <= v7)
    {
      v13 = v11;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8 >= 2, v7 + 1, 1);
      v9 = v7 + 1;
      v6 = v13;
      v2 = v14;
    }

    v2[2] = v9;
    *&v2[2 * v7 + 4] = v6;
    ++v3;
    --v1;
  }

  while (v1);
  return v2;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 56);
  do
  {
    v21 = result;
    v20 = v1;
    v4 = *(v3 - 3);
    v5 = *(v3 - 2);
    v6 = *v3;
    v7 = *(v3 - 8);
    v17[0] = v4;
    v17[1] = v5;
    v18 = v7;
    v19 = v6;
    outlined copy of MLRecommender.Identifier(v4, v5, v7);
    outlined copy of MLRecommender.Identifier(v4, v5, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLRecommender.Identifier, score: Double));
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (item: MLRecommender.Identifier, score: Double));
    swift_dynamicCast(&v13, v17, v8, v9, 7);
    v16 = v13;
    v10 = v14;
    v22 = v15;
    outlined consume of MLRecommender.Identifier(v4, v5, v7);
    result = v21;
    v23 = v21;
    v11 = v21[2];
    if (v21[3] >> 1 <= v11)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21[3] >= 2uLL, v11 + 1, 1);
      result = v23;
    }

    result[2] = v11 + 1;
    v12 = 4 * v11;
    *&result[v12 + 4] = v16;
    LOBYTE(result[v12 + 6]) = v10 & 1;
    result[v12 + 7] = v22;
    v3 += 4;
    v1 = v20 - 1;
  }

  while (v20 != 1);
  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 40);
  do
  {
    *&v11 = *(v3 - 1);
    v4 = *v3;
    v14 = v2;
    v5 = v2[2];
    v12 = v2[3];
    v6 = v12 >> 1;
    v13 = v5 + 1;
    *(&v11 + 1) = v4;
    v4;
    if (v6 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, 1);
      v2 = v14;
    }

    v9 = &type metadata for String;
    v10 = &protocol witness table for String;
    v8 = v11;
    v2[2] = v13;
    outlined init with take of TabularRegressionTask(&v8, &v2[5 * v5 + 4]);
    v3 += 2;
    --v1;
  }

  while (v1);
  return v2;
}

{
  v12 = a1;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v2 = 0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v13 = v1;
  do
  {
    v4 = *(v12 + 8 * v2 + 32);
    v14 = v3;
    v5 = v3[2];
    v6 = v3[3];
    if (v6 >> 1 <= v5)
    {
      v7 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1);
      v4 = v7;
      v3 = v14;
    }

    ++v2;
    v10 = &type metadata for Int;
    v11 = &protocol witness table for Int;
    *&v9 = v4;
    v3[2] = v5 + 1;
    outlined init with take of TabularRegressionTask(&v9, &v3[5 * v5 + 4]);
  }

  while (v13 != v2);
  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    v13 = v1;
    v4 = *(v3 - 1);
    v5 = *v3;
    v12[0] = *(v3 - 2);
    v12[1] = v4;
    v12[2] = v5;
    swift_bridgeObjectRetain_n(v4, 2);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Double));
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (text: String, distance: Double));
    swift_dynamicCast(v11, v12, v6, v7, 7);
    v14 = v11[0];
    v15 = v11[1];
    v16 = v11[2];
    v4;
    v17 = v2;
    v8 = v2[2];
    if (v2[3] >> 1 <= v8)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2[3] >= 2uLL, v8 + 1, 1);
      v2 = v17;
    }

    v2[2] = v8 + 1;
    v9 = 3 * v8;
    v2[v9 + 4] = v14;
    v2[v9 + 5] = v15;
    v2[v9 + 6] = v16;
    v3 += 3;
    v1 = v13 - 1;
  }

  while (v13 != 1);
  return v2;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v19 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 56);
  do
  {
    v14 = v1;
    v4 = *(v3 - 2);
    v5 = *(v3 - 1);
    v6 = *v3;
    v13[0] = *(v3 - 3);
    v13[1] = v4;
    v13[2] = v5;
    v13[3] = v6;
    swift_bridgeObjectRetain_n(v4, 2);
    swift_bridgeObjectRetain_n(v6, 2);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, String));
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (text: String, label: String));
    swift_dynamicCast(v12, v13, v7, v8, 7);
    v15 = v12[0];
    v16 = v12[1];
    v17 = v12[2];
    v18 = v12[3];
    v6;
    v4;
    v19 = v2;
    v9 = v2[2];
    if (v2[3] >> 1 <= v9)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2[3] >= 2uLL, v9 + 1, 1);
      v2 = v19;
    }

    v2[2] = v9 + 1;
    v10 = 4 * v9;
    v2[v10 + 4] = v15;
    v2[v10 + 5] = v16;
    v2[v10 + 6] = v17;
    v2[v10 + 7] = v18;
    v3 += 4;
    v1 = v14 - 1;
  }

  while (v14 != 1);
  return v2;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 40);
  do
  {
    v4 = *v3;
    v12[0] = *(v3 - 1);
    v12[1] = v4;
    v4;
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
    swift_dynamicCast(v11, v12, &type metadata for String, v5, 7);
    v13 = v2;
    v6 = v2[2];
    v7 = v6 + 1;
    if (v2[3] >> 1 <= v6)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2[3] >= 2uLL, v6 + 1, 1);
      v7 = v6 + 1;
      v2 = v13;
    }

    v2[2] = v7;
    v8 = 4 * v6;
    v9 = v11[0];
    *&v2[v8 + 6] = v11[1];
    *&v2[v8 + 4] = v9;
    v3 += 2;
    --v1;
  }

  while (v1);
  return v2;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = -(-1 << *(a1 + 32));
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = *(a1 + 56) & v3;
  v26 = a1 + 56;
  v25 = (63 - (-1 << *(a1 + 32))) >> 6;
  a1;
  v27 = _swiftEmptyArrayStorage;
  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4)
    {
      v7 = v4;
      goto LABEL_25;
    }

    v8 = v5 + 1;
    if (__OFADD__(1, v5))
    {
      BUG();
    }

    if (v8 >= v25)
    {
      goto LABEL_33;
    }

    v7 = *(v26 + 8 * v8);
    if (v7)
    {
      ++v5;
      goto LABEL_25;
    }

    v5 += 2;
    if (v6 + 2 >= v25)
    {
      goto LABEL_33;
    }

    v7 = *(v26 + 8 * v8 + 8);
    if (!v7)
    {
      v5 = v6 + 3;
      if (v6 + 3 >= v25)
      {
        goto LABEL_33;
      }

      v7 = *(v26 + 8 * v8 + 16);
      if (!v7)
      {
        v5 = v6 + 4;
        if (v6 + 4 >= v25)
        {
          goto LABEL_33;
        }

        v7 = *(v26 + 8 * v8 + 24);
        if (!v7)
        {
          v5 = v6 + 5;
          if (v6 + 5 >= v25)
          {
            goto LABEL_33;
          }

          v7 = *(v26 + 8 * v8 + 32);
          if (!v7)
          {
            v5 = v6 + 6;
            if (v6 + 6 >= v25)
            {
              goto LABEL_33;
            }

            v7 = *(v26 + 8 * v8 + 40);
            if (!v7)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    v4 = v7 & (v7 - 1);
    v10 = a2[3];
    if (*(v10 + 16))
    {
      v22 = v7 & (v7 - 1);
      _BitScanForward64(&v11, v7);
      v24 = v5;
      v12 = v11 | (v5 << 6);
      v13 = *(a1 + 48);
      v12 *= 24;
      v14 = *(v13 + v12);
      v15 = *(v13 + v12 + 8);
      v16 = *(v13 + v12 + 16);
      outlined copy of MLRecommender.Identifier(v14, v15, v16);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16);
      if (v18)
      {
        v19 = *(*(v10 + 56) + 8 * v17);
        outlined consume of MLRecommender.Identifier(v14, v15, v16);
        if (!swift_isUniquelyReferenced_nonNull_native(v27))
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v5 = v24;
        v20 = v27[2];
        if (v27[3] >> 1 <= v20)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27[3] >= 2uLL, v20 + 1, 1, v27);
        }

        v27[2] = v20 + 1;
        v27[v20 + 4] = v19;
        v4 = v22;
      }

      else
      {
        outlined consume of MLRecommender.Identifier(v14, v15, v16);
        v5 = v24;
        v4 = v22;
      }
    }
  }

  v9 = v6 + 7;
  if (v6 + 7 >= v25)
  {
    goto LABEL_33;
  }

  v7 = *(v26 + 8 * v8 + 48);
  if (v7)
  {
    v5 = v8 + 6;
    goto LABEL_25;
  }

  while (1)
  {
    v5 = v9 + 1;
    if (v9 + 1 >= v25)
    {
      break;
    }

    v7 = *(a1 + 8 * v9++ + 64);
    if (v7)
    {
      goto LABEL_25;
    }
  }

LABEL_33:
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(a2, v26);
  return v27;
}

void *specialized RecommenderModel.similarItems(itemIndex:count:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4[13];
  if (!v5)
  {
    BUG();
  }

  v7 = v4[12];
  if (v7 <= a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = InteractionLookupTable.interactionsFor(_:)(a1, v7, v5, v4[14]);
  v12 = v11;
  v13 = __OFSUB__(v10 >> 1, v11);
  v14 = (v10 >> 1) - v11;
  if (v13)
  {
    BUG();
  }

  v15 = v9;
  v16 = v10;
  if (v14 <= a2)
  {
    v20 = v8;
    swift_unknownObjectRetain(v8);
    v23 = v20;
    v22 = specialized ArraySlice._copyToContiguousArray()(v20, v15, v12, v16);
    specialized MutableCollection<>.sort(by:)(&v22, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
    v18 = v22;
    v17 = v23;
  }

  else
  {
    v17 = v8;
    v18 = specialized Collection.min(count:sortedBy:)(a2, v8, v9, v12, v10);
  }

  outlined retain of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(v4);
  ML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n(v18, v4, a3, a4);
  v18;
  swift_unknownObjectRelease(v17);
  return ML11InteractionVG_Si_Sdts5NeverOTg503_s8d71ML16RecommenderModelV12similarItems9itemIndex5countSaySi_SdtGSi_SitFSi_q4AA11F44VXEfU1_AA13MLRecommenderV10IdentifierO_AMTG5AF0jK0VyAF0Y0V10IdentifierOARGTf1cn_n;
}

void (*MLRecommender.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 152);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLRecommender.model.modify;
}

void MLRecommender.model.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;

    *(v3 + 152) = v5;
  }

  else
  {

    *(v3 + 152) = v2;
  }
}

uint64_t MLRecommender.userIdentifierColumn.getter()
{
  v1 = *(v0 + 160);
  *(v0 + 168);
  return v1;
}

uint64_t MLRecommender.userIdentifierColumn.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 168), a2;
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t MLRecommender.itemIdentifierColumn.getter()
{
  v1 = *(v0 + 176);
  *(v0 + 184);
  return v1;
}

uint64_t MLRecommender.itemIdentifierColumn.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 184), a2;
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t MLRecommender.ratingColumn.getter()
{
  v1 = *(v0 + 192);
  *(v0 + 200);
  return v1;
}

uint64_t MLRecommender.ratingColumn.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 200), a2;
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t MLRecommender.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRecommender(0);
  return outlined init with copy of MLRecommender.ModelParameters(v1 + *(v3 + 36), v2);
}

uint64_t type metadata accessor for MLRecommender(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRecommender;
  if (!type metadata singleton initialization cache for MLRecommender)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRecommender);
  }

  return result;
}

uint64_t outlined init with copy of MLRecommender.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRecommender.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v188._countAndFlagsBits = a4;
  __dst = v8;
  *&v201 = v9;
  v191._countAndFlagsBits = a6;
  v204 = a5;
  v183 = type metadata accessor for Model(0);
  v179 = *(v183 - 8);
  v11 = *(v179 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v182 = &v171;
  v180 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v186._object = &v171;
  v202 = type metadata accessor for DataFrame(0);
  v203 = *(v202 - 8);
  v16 = *(v203 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v194 = &v171;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v189 = &v171;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v198 = &v171;
  v199 = type metadata accessor for AnyColumn(0);
  v193 = *(v199 - 8);
  v24 = *(v193 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v188._object = &v171;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v197 = &v171;
  v207 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v207, v175);
  inited[2] = 1;
  inited[3] = 2;
  v186._countAndFlagsBits = a2;
  inited[4] = a2;
  inited[5] = a3;
  a3;
  v205 = a1;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE400000000000000, 1919251285));
  if (v30)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    a3;
    v204;
    a7;
    outlined destroy of MLRecommender.ModelParameters(a8);
    return (*(v203 + 8))(v205, v202);
  }

  v206 = a3;
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v32 = swift_initStackObject(v207, v176);
  v32[2] = 1;
  v32[3] = 2;
  v32[4] = v188._countAndFlagsBits;
  v33 = v204;
  v32[5] = v204;
  v33;
  DataFrame.validateContainsColumns(_:context:)(v32, __PAIR128__(0xE400000000000000, 1835365449));
  *&v201 = v34;
  if (v34)
  {
    swift_setDeallocating(v32);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v206;
    v33;
    a7;
    outlined destroy of MLRecommender.ModelParameters(a8);
    v35 = v205;
    return (*(v203 + 8))(v35, v202);
  }

  v36 = v207;
  swift_setDeallocating(v32);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v37 = v206;
  if (a7)
  {
    v38 = swift_initStackObject(v36, v177);
    v38[2] = 1;
    v38[3] = 2;
    v38[4] = v191._countAndFlagsBits;
    v38[5] = a7;
    a7;
    v39 = v205;
    DataFrame.validateContainsColumns(_:context:)(v38, __PAIR128__(0xE600000000000000, 0x676E69746152));
    *&v201 = v40;
    if (v40)
    {
      swift_setDeallocating(v38);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v206;
      v204;
      a7;
      outlined destroy of MLRecommender.ModelParameters(a8);
      v35 = v39;
      return (*(v203 + 8))(v35, v202);
    }

    swift_setDeallocating(v38);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    countAndFlagsBits = v191._countAndFlagsBits;
    v37 = v206;
  }

  else
  {
    countAndFlagsBits = v191._countAndFlagsBits;
  }

  v42 = v186._countAndFlagsBits;
  v43 = __dst;
  *(__dst + 20) = v186._countAndFlagsBits;
  v43[21] = v37;
  v43[22] = v188._countAndFlagsBits;
  v44 = v204;
  v43[23] = v204;
  v43[24] = countAndFlagsBits;
  v43[25] = a7;
  v45 = v37;
  v191._object = type metadata accessor for MLRecommender(0);
  v184 = v43 + *(v191._object + 9);
  outlined init with copy of MLRecommender.ModelParameters(a8, v184);
  v45;
  v44;
  a7;
  v46 = v197;
  DataFrame.subscript.getter(v42, v45);
  v47 = v46;
  v48 = static MLRecommender.extractIdentifiers(from:)();
  v50 = v49;
  v207 = *(v193 + 8);
  (v207)(v47, v199);
  v196 = v50;
  if (!v50)
  {
    v204;
    a7;
    *v178 = 0;
    *&v178[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v63._countAndFlagsBits = 0x6C6F632072657355;
    v63._object = 0xED000027206E6D75;
    String.append(_:)(v63);
    v64 = v186._countAndFlagsBits;
    v63._countAndFlagsBits = v186._countAndFlagsBits;
    v63._object = v206;
    String.append(_:)(v63);
    v63._object = " list if not given." + 0x8000000000000000;
    v63._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v63);
    v65 = v206;
    DataFrame.subscript.getter(v64, v206);
    v65;
    v66 = AnyColumn.wrappedElementType.getter();
    (v207)(v47, v199);
    v67 = _typeName(_:qualified:)(v66, 0);
    v69 = v68;
    v63._countAndFlagsBits = v67;
    v63._object = v68;
    String.append(_:)(v63);
    v69;
    v63._countAndFlagsBits = 46;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v201 = *v178;
    v63._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v63._object, 0, 0);
    *v70 = v201;
    *(v70 + 16) = 0;
    *(v70 + 32) = 0;
    *(v70 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v63._object);
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v203 + 8))(v205, v202);
    a7;
    v204;
    v71 = v65;
LABEL_18:
    v71;
    return outlined destroy of MLRecommender.ModelParameters(v184);
  }

  *(v43 + *(v191._object + 10)) = v48 & 1;
  v51 = v204;
  v52 = v47;
  DataFrame.subscript.getter(v188._countAndFlagsBits, v204);
  v193 = static MLRecommender.extractIdentifiers(from:)();
  v54 = v53;
  (v207)(v52, v199);
  v192 = v54;
  v55 = v188._countAndFlagsBits;
  if (!v54)
  {
    v72 = v188._countAndFlagsBits;
    v206;
    a7;
    v196;
    *v178 = 0;
    *&v178[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v73._countAndFlagsBits = 0x6C6F63206D657449;
    v73._object = 0xED000027206E6D75;
    String.append(_:)(v73);
    v73._countAndFlagsBits = v72;
    v73._object = v51;
    String.append(_:)(v73);
    v73._object = " list if not given." + 0x8000000000000000;
    v73._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v73);
    v74 = v197;
    DataFrame.subscript.getter(v72, v51);
    v51;
    v75 = AnyColumn.wrappedElementType.getter();
    (v207)(v74, v199);
    v76 = _typeName(_:qualified:)(v75, 0);
    v78 = v77;
    v73._countAndFlagsBits = v76;
    v73._object = v77;
    String.append(_:)(v73);
    v78;
    v73._countAndFlagsBits = 46;
    v73._object = 0xE100000000000000;
    String.append(_:)(v73);
    v201 = *v178;
    v73._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v73._object, 0, 0);
    *v79 = v201;
    *(v79 + 16) = 0;
    *(v79 + 32) = 0;
    *(v79 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v73._object);
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v203 + 8))(v205, v202);
    a7;
    v80 = v51;
LABEL_17:
    v80;
    v71 = v206;
    goto LABEL_18;
  }

  *(v43 + *(v191._object + 11)) = v193 & 1;
  object = v188._object;
  v57 = v205;
  DataFrame.subscript.getter(v55, v51);
  v58 = v201;
  v59 = static MLRecommender.extractNearestItems(itemColumn:parameters:)(v198, object, a8);
  *&v201 = v58;
  if (v58)
  {
    v61 = v206;
    v206;
    v62 = v204;
    v204;
    a7;
    v192;
    v196;
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v203 + 8))(v205, v202);
    (v207)(object, v199);
    a7;
    v62;
    v61;
    return outlined destroy of MLRecommender.ModelParameters(v184);
  }

  v81 = v57;
  v195 = v59;
  v200 = v60;
  v82 = v199;
  (v207)(object, v199);
  if (a7)
  {
    a7;
    v83 = v197;
    DataFrame.subscript.getter(v191._countAndFlagsBits, a7);
    *&v84 = AnyColumn.extractDoubles(fillValue:)(0.0);
    v85 = v84;
    (v207)(v83, v82, *(&v84 + 1));
    v190 = v85;
    if (!v85)
    {
      v206;
      v204;
      a7;
      v192;
      v196;
      v195;
      v200;
      *v178 = 0;
      *&v178[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      v115._countAndFlagsBits = 0x6320676E69746152;
      v115._object = 0xEF27206E6D756C6FLL;
      v116 = v81;
      String.append(_:)(v115);
      v117 = v191._countAndFlagsBits;
      v115._countAndFlagsBits = v191._countAndFlagsBits;
      v115._object = a7;
      String.append(_:)(v115);
      v115._object = "at, or Int but it contains " + 0x8000000000000000;
      v115._countAndFlagsBits = 0xD000000000000048;
      String.append(_:)(v115);
      DataFrame.subscript.getter(v117, a7);
      a7;
      v118 = AnyColumn.wrappedElementType.getter();
      (v207)(v83, v199);
      v119 = _typeName(_:qualified:)(v118, 0);
      v121 = v120;
      v115._countAndFlagsBits = v119;
      v115._object = v120;
      String.append(_:)(v115);
      v121;
      v115._countAndFlagsBits = 46;
      v115._object = 0xE100000000000000;
      String.append(_:)(v115);
      v201 = *v178;
      v115._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v115._object, 0, 0);
      *v122 = v201;
      *(v122 + 16) = 0;
      *(v122 + 32) = 0;
      *(v122 + 48) = 1;
      swift_willThrow(&type metadata for MLCreateError, v115._object);
      outlined destroy of MLRecommender.ModelParameters(a8);
      (*(v203 + 8))(v116, v202);
LABEL_43:
      outlined destroy of DataFrame?(v198);
      a7;
      v80 = v204;
      goto LABEL_17;
    }

    a7;
    v86 = v198;
    v82 = v199;
  }

  else
  {
    v190 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(*(v196 + 16), 1.0);
    v86 = v198;
  }

  v87 = v189;
  outlined init with copy of DataFrame?(v86, v189);
  v88 = v202;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v202);
  v90 = v194;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of DataFrame?(v87);
    v91 = 0;
    goto LABEL_28;
  }

  (*(v203 + 32))(v194, v87, v88);
  v92 = v90;
  v93 = v197;
  DataFrame.subscript.getter(0x65726F6373, 0xE500000000000000);
  *&v94 = AnyColumn.extractDoubles(fillValue:)(0.0);
  v95 = v93;
  v91 = v94;
  (v207)(v95, v82, *(&v94 + 1));
  if (!v91)
  {
    v190;
    v206;
    v204;
    a7;
    v192;
    v196;
    v195;
    v200;
    v125 = v197;
    *v178 = 0;
    *&v178[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(94);
    v126._object = "but it contains " + 0x8000000000000000;
    v126._countAndFlagsBits = 0xD00000000000005BLL;
    String.append(_:)(v126);
    DataFrame.subscript.getter(0x65726F6373, 0xE500000000000000);
    v127 = AnyColumn.wrappedElementType.getter();
    (v207)(v125, v82);
    v128 = _typeName(_:qualified:)(v127, 0);
    v130 = v129;
    v126._countAndFlagsBits = v128;
    v126._object = v129;
    String.append(_:)(v126);
    v130;
    v126._countAndFlagsBits = 46;
    v126._object = 0xE100000000000000;
    String.append(_:)(v126);
    v201 = *v178;
    v126._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v126._object, 0, 0);
    *v131 = v201;
    *(v131 + 16) = 0;
    *(v131 + 32) = 0;
    *(v131 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v126._object);
    outlined destroy of MLRecommender.ModelParameters(a8);
    v132 = *(v203 + 8);
    v133 = v202;
    v132(v205, v202);
    v132(v194, v133);
    goto LABEL_43;
  }

  (*(v203 + 8))(v92, v202);
LABEL_28:
  v96 = v200;
  v97 = v195;
  if (!v195)
  {
    v123 = v91;
LABEL_45:
    v123;
    v124 = v96;
    goto LABEL_46;
  }

  if (!v200)
  {
    v195;
    v124 = v91;
LABEL_46:
    v124;
    v200 = 0;
    goto LABEL_49;
  }

  if (!v91)
  {
    v123 = v195;
    goto LABEL_45;
  }

  v98 = *(v91 + 16);
  v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v98, 0, _swiftEmptyArrayStorage);
  v185 = v91;
  if (v98)
  {
    if (v98 > *(v97 + 16))
    {
      BUG();
    }

    v181 = v98;
    if (v98 > *(v96 + 16))
    {
      BUG();
    }

    v100 = 6;
    v101 = 0;
    v102 = v99;
    do
    {
      v103 = *(v195 + 8 * v100 - 16);
      v104 = *(v195 + 8 * v100 - 8);
      v105 = *(v195 + 8 * v100);
      v106 = *(v96 + 8 * v100 - 16);
      v191._object = *(v96 + 8 * v100 - 8);
      v107 = *(v96 + 8 * v100);
      v193 = v101;
      v207 = *(v185 + 8 * v101 + 32);
      v194 = v103;
      v189 = v104;
      LODWORD(v188._object) = v105;
      outlined copy of MLRecommender.Identifier(v103, v104, v105);
      v197 = v106;
      v108 = v106;
      v109 = v191._object;
      LODWORD(v199) = v107;
      outlined copy of MLRecommender.Identifier(v108, v191._object, v107);
      v110 = *(v102 + 16);
      v111 = v110 + 1;
      v112 = v102;
      if (*(v102 + 24) >> 1 <= v110)
      {
        v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v102 + 24) >= 2uLL, v110 + 1, 1, v102);
        v111 = v110 + 1;
        v112 = v114;
      }

      v101 = v193 + 1;
      v112[2] = v111;
      v113 = 7 * v110;
      v112[v113 + 4] = v194;
      v112[v113 + 5] = v189;
      LOBYTE(v112[v113 + 6]) = v188._object & 1;
      v112[v113 + 7] = v197;
      v112[v113 + 8] = v109;
      LOBYTE(v112[v113 + 9]) = v199 & 1;
      v112[v113 + 10] = v207;
      v100 += 3;
      v102 = v112;
      v96 = v200;
    }

    while (v181 != v101);
  }

  else
  {
    v102 = v99;
  }

  v200 = v102;
  v185;
  v96;
  v195;
LABEL_49:
  v134 = *(v196 + 16);
  v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134, 0, _swiftEmptyArrayStorage);
  if (v134)
  {
    if (v134 > *(v192 + 16))
    {
      BUG();
    }

    if (v134 > v190[2])
    {
      BUG();
    }

    v136 = 6;
    v137 = 0;
    v195 = v134;
    do
    {
      v138 = *(v196 + 8 * v136 - 16);
      v139 = *(v196 + 8 * v136 - 8);
      v140 = *(v196 + 8 * v136);
      v141 = *(v192 + 8 * v136 - 16);
      v191._object = *(v192 + 8 * v136 - 8);
      v142 = *(v192 + 8 * v136);
      v193 = v137;
      v207 = v190[v137 + 4];
      v194 = v138;
      v189 = v139;
      LODWORD(v188._object) = v140;
      outlined copy of MLRecommender.Identifier(v138, v139, v140);
      v197 = v141;
      v143 = v141;
      v144 = v191._object;
      LODWORD(v199) = v142;
      outlined copy of MLRecommender.Identifier(v143, v191._object, v142);
      v145 = v135[2];
      v146 = v145 + 1;
      v147 = v135;
      if (v135[3] >> 1 <= v145)
      {
        v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v135[3] >= 2uLL, v145 + 1, 1, v135);
        v146 = v145 + 1;
        v147 = v149;
      }

      v137 = v193 + 1;
      v147[2] = v146;
      v148 = 7 * v145;
      v147[v148 + 4] = v194;
      v147[v148 + 5] = v189;
      LOBYTE(v147[v148 + 6]) = v188._object & 1;
      v147[v148 + 7] = v197;
      v147[v148 + 8] = v144;
      LOBYTE(v147[v148 + 9]) = v199 & 1;
      v147[v148 + 10] = v207;
      v136 += 3;
      v135 = v147;
    }

    while (v195 != v137);
  }

  v207 = v135;
  v192;
  v196;
  v190;
  v150 = *(v184 + 16);
  v151 = *(v184 + 8);
  if (*a8)
  {
    v152 = v201;
    if (*a8 == 1)
    {
      p_src = &__src;
      v154 = v207;
      v155 = v200;
      specialized Recommender.train(_:nearestItems:)(v207, v200, 50, v150, 4096, v151);
    }

    else
    {
      p_src = &v172;
      v154 = v207;
      v155 = v200;
      specialized Recommender.train(_:nearestItems:)(v207, v200, 50, v150, 4096, v151);
    }
  }

  else
  {
    p_src = &v174;
    v154 = v207;
    v155 = v200;
    v152 = v201;
    specialized Recommender.train(_:nearestItems:)(v207, v200, 50, v150, 4096, v151);
  }

  *&v201 = v152;
  if (v152)
  {
    v206;
    v156 = v204;
    v204;
    a7;
    v154;
    v155;
    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v203 + 8))(v205, v202);
    outlined destroy of DataFrame?(v198);
    a7;
    v80 = v156;
    goto LABEL_17;
  }

  v207;
  v200;
  v157 = __dst;
  memcpy(__dst, p_src, 0x98uLL);
  v158 = objc_allocWithZone(MLModel);
  v207 = [v158 init];
  v157[19] = v207;
  memset(v178, 0, 72);
  v159 = v186._object;
  MLRecommender.exportToCoreML(metadata:)(v178);
  v160 = v183;
  v161 = v179;
  (*(v179 + 16))(v182, v159, v183);
  v162 = *(v161 + 80);
  v163 = ~*(v161 + 80) & (v162 + 16);
  v164 = swift_allocObject(&unk_3905A8, v163 + v180, v162 | 7);
  (*(v161 + 32))(v164 + v163, v182, v160);
  v165 = v201;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:), v164);
  *&v201 = v165;
  if (v165)
  {
    v206;
    v167 = v204;
    v204;
    a7;

    outlined destroy of MLRecommender.ModelParameters(a8);
    (*(v203 + 8))(v205, v202);
    (*(v161 + 8))(v186._object, v160);
    outlined destroy of DataFrame?(v198);
    memcpy(v178, __dst, sizeof(v178));
    outlined release of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(v178);
    a7;
    v167;
    v206;

    return outlined destroy of MLRecommender.ModelParameters(v184);
  }

  v168 = v166;

  *(__dst + 19) = v168;
  v169 = v206;
  v170 = v204;
  static MLRecommender.reportAnalytics(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(v205, v186._countAndFlagsBits, v206, v188._countAndFlagsBits, v204, v191._countAndFlagsBits, a7, a8);
  v169;
  v170;
  a7;
  outlined destroy of MLRecommender.ModelParameters(a8);
  (*(v203 + 8))(v205, v202);
  (*(v161 + 8))(v186._object, v183);
  return outlined destroy of DataFrame?(v198);
}

uint64_t static MLRecommender.extractIdentifiers(from:)()
{
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v61 = *(v62 - 8);
  v0 = *(v61 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v67 = v59;
  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v70 = v59;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v60 = *(v64 - 8);
  v11 = *(v60 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v66 = v59;
  v14 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v14, &type metadata for String))
  {
    v15 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v17 = v66;
    OptionalColumnProtocol.filled(with:)(v59, v7, v16);
    (*(v65 + 8))(v59, v7, v15);
    v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v19 = v64;
    v20 = dispatch thunk of Collection.count.getter(v64, v18);
    v21 = v17;
    if (v20)
    {
      v69 = _swiftEmptyArrayStorage;
      v22 = 0;
      if (v20 > 0)
      {
        v22 = v20;
      }

      v23 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v67 = v69;
      v68 = v18;
      dispatch thunk of Collection.startIndex.getter(v19, v18);
      if (v23 < 0)
      {
        BUG();
      }

      v24 = v23;
      v25 = v68;
      v26 = v67;
      v21 = v66;
      do
      {
        v65 = v24;
        v27 = v21;
        v28 = dispatch thunk of Collection.subscript.read(v59, v63, v19, v25);
        v70 = *v29;
        v30 = v29[1];
        v30;
        v28(v59, 0);
        v69 = v26;
        v31 = v26[2];
        v32 = v31 + 1;
        if (v26[3] >> 1 <= v31)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v31 + 1, 1);
          v32 = v31 + 1;
          v27 = v66;
          v26 = v69;
        }

        v26[2] = v32;
        v33 = 3 * v31;
        v26[v33 + 4] = v70;
        v26[v33 + 5] = v30;
        LOBYTE(v26[v33 + 6]) = 0;
        v19 = v64;
        v25 = v68;
        dispatch thunk of Collection.formIndex(after:)(v63, v64, v68);
        v24 = v65 - 1;
        v21 = v27;
      }

      while (v65 != 1);
    }

    (*(v60 + 8))(v21, v19);
    return 0;
  }

  else
  {
    v34 = v67;
    v64 = v3;
    if (swift_dynamicCastMetatype(v14, &type metadata for Int))
    {
      v35 = v34;
      v36 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v59[0] = 0;
      v37 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
      v38 = v62;
      OptionalColumnProtocol.filled(with:)(v59, v62, v37);
      (*(v61 + 8))(v35, v38, v36);
      v39 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
      v40 = v68;
      v41 = dispatch thunk of Collection.count.getter(v68, v39);
      if (v41)
      {
        v42 = v41;
        v69 = _swiftEmptyArrayStorage;
        v43 = 0;
        if (v41 > 0)
        {
          v43 = v41;
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
        v67 = v69;
        v44 = v70;
        v66 = v39;
        dispatch thunk of Collection.startIndex.getter(v40, v39);
        v65 = v42;
        if (v42 < 0)
        {
          BUG();
        }

        v45 = v66;
        v46 = v67;
        v40 = v68;
        do
        {
          v47 = v40;
          v48 = dispatch thunk of Collection.subscript.read(v59, v63, v40, v45);
          v50 = *v49;
          v48(v59, 0);
          v69 = v46;
          v51 = v45;
          v52 = v46[2];
          v53 = v46[3];
          v54 = v47;
          v55 = v52 + 1;
          if (v53 >> 1 <= v52)
          {
            v70 = v50;
            v57 = v51;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53 >= 2, v55, 1);
            v54 = v68;
            v50 = v70;
            v51 = v57;
            v46 = v69;
          }

          v46[2] = v55;
          v56 = 3 * v52;
          v46[v56 + 4] = v50;
          v46[v56 + 5] = 0;
          LOBYTE(v46[v56 + 6]) = 1;
          v40 = v54;
          v45 = v51;
          dispatch thunk of Collection.formIndex(after:)(v63, v54, v51);
          --v65;
        }

        while (v65);
      }

      else
      {
        v44 = v70;
      }

      (*(v64 + 8))(v44, v40);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static MLRecommender.extractNearestItems(itemColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = v3;
  *&v63 = a2;
  v58 = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v56 = &v50;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v52 = &v50;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v12 = type metadata accessor for DataFrame(0);
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v57 = &v50;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v55 = &v50;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v54 = &v50;
  v20 = type metadata accessor for MLRecommender.ModelParameters(0);
  v21 = *(v20 + 28);
  v53 = a3;
  outlined init with copy of DataFrame?(a3 + v21, &v50);
  v22 = 1;
  v59 = &v50;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v50, 1, v12);
  v51 = v12;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of DataFrame?(v59);
    v24 = *(v20 + 32);
    v25 = *(v53 + v24 + 8);
    v26 = v58;
    if (v25 != -1)
    {
      *&v61 = *(v53 + v24);
      BYTE8(v61) = v25 & 1;
      outlined copy of Result<_DataTable, Error>(v61, v25);
      DataFrame.init(_:)(&v61);
      v22 = 0;
    }
  }

  else
  {
    v27 = *(v62 + 32);
    v28 = v54;
    v27(v54, v59, v12);
    v29 = v58;
    v27(v58, v28, v12);
    v22 = 0;
    v26 = v29;
  }

  v30 = v51;
  __swift_storeEnumTagSinglePayload(v26, v22, 1, v51);
  v31 = v63;
  v32 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v32, &type metadata for String))
  {
    v33 = alloca(24);
    v34 = alloca(32);
    v52 = v31;
    v35 = v60;
    *&v63 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverOSay8CreateML13MLRecommenderV10IdentifierOGTg5(partial apply for closure #1 in static MLRecommender.extractNearestItems(itemColumn:parameters:), &v50);
    v36 = v52;
    outlined init with copy of DataFrame?(v26, v52);
    if (__swift_getEnumTagSinglePayload(v36, 1, v30) != 1)
    {
      v37 = v55;
      v38 = v36;
      v39 = v62;
      (*(v62 + 32))(v55, v38, v30);
      closure #2 in static MLRecommender.extractNearestItems(itemColumn:parameters:)();
LABEL_13:
      if (v35)
      {
        (*(v39 + 8))(v37, v30);
        BUG();
      }

      (*(v39 + 8))(v37, v30);
    }
  }

  else
  {
    if (!swift_dynamicCastMetatype(v32, &type metadata for Int))
    {
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(88);
      v43._countAndFlagsBits = 0x6C6F63206D657449;
      v43._object = 0xED000027206E6D75;
      String.append(_:)(v43);
      v44 = AnyColumn.name.getter();
      v46 = v45;
      v43._countAndFlagsBits = v44;
      v43._object = v45;
      String.append(_:)(v43);
      v46;
      v43._object = "Max Similarity Iterations" + 0x8000000000000000;
      v43._countAndFlagsBits = 0xD000000000000049;
      String.append(_:)(v43);
      v63 = v61;
      v43._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v43._object, 0, 0);
      *v47 = v63;
      *(v47 + 16) = 0;
      *(v47 + 32) = 0;
      *(v47 + 48) = 1;
      swift_willThrow(&type metadata for MLCreateError, v43._object);
      return outlined destroy of DataFrame?(v26);
    }

    v40 = alloca(24);
    v41 = alloca(32);
    v52 = v63;
    v35 = v60;
    *&v63 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverOSay8CreateML13MLRecommenderV10IdentifierOGTg5(partial apply for closure #3 in static MLRecommender.extractNearestItems(itemColumn:parameters:), &v50);
    v42 = v56;
    outlined init with copy of DataFrame?(v26, v56);
    if (__swift_getEnumTagSinglePayload(v42, 1, v30) != 1)
    {
      v37 = v57;
      v49 = v42;
      v39 = v62;
      (*(v62 + 32))(v57, v49, v30);
      closure #4 in static MLRecommender.extractNearestItems(itemColumn:parameters:)();
      goto LABEL_13;
    }
  }

  return v63;
}

Swift::OpaquePointer_optional __swiftcall AnyColumn.extractDoubles(fillValue:)(Swift::Double fillValue)
{
  v54 = fillValue;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v51 = *(v53 - 8);
  v1 = *(v51 + 8);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v59 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v4 = *(v52 - 8);
  v5 = *(v4 + 8);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v58 = v50;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v12 = *(*(v57 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v55 = v50;
  v15 = AnyColumn.wrappedElementType.getter();
  if (!swift_dynamicCastMetatype(v15, &type metadata for Double))
  {
    v55 = v4;
    if (swift_dynamicCastMetatype(v15, &type metadata for Float))
    {
      v20 = v58;
      AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
      v21 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Float> and conformance Column<A>, &demangling cache variable for type metadata for Column<Float>, &protocol conformance descriptor for Column<A>);
      v22 = v52;
      v23 = dispatch thunk of Collection.count.getter(v52, v21);
      if (v23)
      {
        v24 = v23;
        v60 = _swiftEmptyArrayStorage;
        v25 = 0;
        if (v23 > 0)
        {
          v25 = v23;
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
        v26 = v60;
        v59 = v21;
        dispatch thunk of Collection.startIndex.getter(v22, v21);
        if (v24 < 0)
        {
          BUG();
        }

        v27 = v59;
        do
        {
          v61 = v24;
          v28 = dispatch thunk of Collection.subscript.read(v50, v56, v22, v27);
          v30 = v54;
          if (!*(v29 + 4))
          {
            v30 = *v29;
          }

          v57 = *&v30;
          v28(v50, 0);
          v31 = v26;
          v60 = v26;
          v32 = v26[2];
          if (v26[3] >> 1 <= v32)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v32 + 1, 1);
            v31 = v60;
          }

          v31[2] = v32 + 1;
          v26 = v31;
          v31[v32 + 4] = v57;
          v33 = v58;
          v22 = v52;
          v27 = v59;
          dispatch thunk of Collection.formIndex(after:)(v56, v52, v59);
          v24 = v61 - 1;
        }

        while (v61 != 1);
        v19 = v26;
        v20 = v33;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v47 = v20;
      v48 = v22;
      v49 = v55;
    }

    else
    {
      if (!swift_dynamicCastMetatype(v15, &type metadata for Int))
      {
        v19 = 0;
        goto LABEL_33;
      }

      v34 = v59;
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v35 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
      v36 = v53;
      v37 = dispatch thunk of Collection.count.getter(v53, v35);
      if (v37)
      {
        v60 = _swiftEmptyArrayStorage;
        v38 = 0;
        if (v37 > 0)
        {
          v38 = v37;
        }

        v61 = v37;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
        v19 = v60;
        v58 = v35;
        dispatch thunk of Collection.startIndex.getter(v36, v35);
        v39 = v61;
        if (v61 < 0)
        {
          BUG();
        }

        v40 = v58;
        do
        {
          v61 = v39;
          v41 = dispatch thunk of Collection.subscript.read(v50, v56, v36, v40);
          v43 = v54;
          if (!*(v42 + 8))
          {
            v43 = *v42;
          }

          v57 = *&v43;
          v41(v50, 0);
          v44 = v19;
          v60 = v19;
          v45 = v19[2];
          if (v19[3] >> 1 <= v45)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19[3] >= 2uLL, v45 + 1, 1);
            v44 = v60;
          }

          v44[2] = v45 + 1;
          v19 = v44;
          v44[v45 + 4] = v57;
          v46 = v59;
          v36 = v53;
          v40 = v58;
          dispatch thunk of Collection.formIndex(after:)(v56, v53, v58);
          v39 = v61 - 1;
        }

        while (v61 != 1);
        v34 = v46;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v47 = v34;
      v48 = v36;
      v49 = v51;
    }

    (*(v49 + 1))(v47, v48);
    goto LABEL_33;
  }

  AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
  v50[0] = v54;
  v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  OptionalColumnProtocol.filled(with:)(v50, v8, v16);
  (*(v61 + 8))(v50, v8);
  v17 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
  v19 = dispatch thunk of Sequence._copyToContiguousArray()(v57, v17);
LABEL_33:
  v18.value._rawValue = v19;
  return v18;
}

uint64_t *specialized Recommender.train(_:nearestItems:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, double a6)
{
  v60 = a4;
  __dst = v6;
  v62 = v7;
  v61 = a5;
  v58 = a6;
  a1;
  _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(a1);
  v9 = specialized Recommender.buildInteractionTable(_:nearestItems:)(v50, a2, a6, a3, v60, v61, static CosineSimilarity.buildItemStatistics(ratings:count:), specialized ItemSimilarityTrainer.train());
  if (v7)
  {
    return outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50, a2);
  }

  v13 = v10;
  v14 = v11;
  v62 = v9;
  v60 = a3;
  v61 = 0;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50);
  if (one-time initialization token for predictor != -1)
  {
    swift_once(&one-time initialization token for predictor, one-time initialization function for predictor);
  }

  qmemcpy(__src, v50, 0x50uLL);
  *&__src[17] = 0;
  *&__src[10] = static CosineSimilarity.predictor;
  __src[12] = v62;
  __src[13] = v13;
  __src[14] = v14;
  __src[15] = _swiftEmptyArrayStorage;
  __src[16] = _swiftEmptyArrayStorage;
  v15 = *(*&v50[1] + 16);
  v62 = v15;
  v16 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v15);
  v49[1] = v50[3];
  v49[2] = v50[4];
  v49[0] = v50[2];
  v52 = *(&v50[3] + 1);
  v53 = v50[4];
  outlined retain of [Int](&v52);
  outlined retain of [Int](&v53);
  outlined retain of ContiguousArray<Double>(&v53 + 1);
  v17 = v16;
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(v49);
  v18 = v60;
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v20)
    {
      break;
    }

    v21 = v19;
    if (!swift_isUniquelyReferenced_nonNull_native(v17))
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    }

    if (v21 < 0)
    {
      BUG();
    }

    if (v21 >= v17[2])
    {
      BUG();
    }

    v22 = v17[v21 + 4];
    v23 = __OFADD__(1, v22);
    v24 = v22 + 1;
    if (v23)
    {
      BUG();
    }

    v17[v21 + 4] = v24;
  }

  v48[3] = *&__src[25];
  v48[2] = *&__src[23];
  v48[1] = *&__src[21];
  v48[0] = *&__src[19];
  outlined release of SparseMatrix<Double>.MajorCollection(v48, v15);
  specialized RecommenderModel.computeStatistics(ratingCounts:)(v17, v15);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50, v15);
  v25 = v62;
  if (v62 >= v18)
  {
    v25 = v18;
  }

  __src[15];
  v26 = 0;
  if (v25 > 0)
  {
    v26 = v25;
  }

  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0, _swiftEmptyArrayStorage);
  __src[15] = v27;
  if (v18 < 0)
  {
    BUG();
  }

  v58 = *&v17;
  v28 = v27;
  if (v25 <= 0)
  {
    v32 = __dst;
    v31 = v61;
    v30 = _swiftEmptyArrayStorage;
  }

  else
  {
    v17;
    v29 = v61;
    v30 = specialized Sequence._maxImplementation(count:sortedBy:)(v25, 0, v17);
    v31 = v29;
    v17;
    v32 = __dst;
  }

  v33 = v30;
  ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(v30);
  v33;
  v35 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  v36 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n[2];
  if (v36)
  {
    v60 = v31;
    v37 = *&__src[17];
    v38 = 1.0 / fmax(*&__src[18] - *&__src[17], 1.0);
    v39 = __src[16];
    v40 = 0;
    v41 = v28;
    do
    {
      v42 = v35[v40 + 4];
      if (v42 < 0)
      {
        BUG();
      }

      if (v42 >= *(v39 + 16))
      {
        BUG();
      }

      v43 = *(v39 + 8 * v42 + 32);
      v44 = v41[2];
      v45 = v41[3];
      if (v45 >> 1 <= v44)
      {
        v62 = v35;
        v61 = v36;
        v54 = v37;
        v55 = v38;
        v56 = v39;
        v57 = v43;
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 >= 2, v44 + 1, 1, v41);
        v43 = v57;
        v39 = v56;
        v38 = v55;
        v37 = v54;
        v36 = v61;
        v35 = v62;
      }

      ++v40;
      v41[2] = v44 + 1;
      v46 = 2 * v44;
      v41[v46 + 4] = v42;
      *&v41[v46 + 5] = (v43 - v37) * v38;
    }

    while (v36 != v40);
    v47 = v41;
    v35;
    __src[15] = v47;
    v32 = __dst;
  }

  else
  {
    ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  }

  specialized MutableCollection<>.sort(by:)(&__src[15], specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  *&v58;
  return memcpy(v32, __src, 0x98uLL);
}

{
  v60 = a4;
  __dst = v6;
  v62 = v7;
  v61 = a5;
  v58 = a6;
  a1;
  _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(a1);
  v9 = specialized Recommender.buildInteractionTable(_:nearestItems:)(v50, a2, a6, a3, v60, v61, static JaccardSimilarity.buildItemStatistics(ratings:count:), specialized ItemSimilarityTrainer.train());
  if (v7)
  {
    return outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50, a2);
  }

  v13 = v10;
  v14 = v11;
  v62 = v9;
  v60 = a3;
  v61 = 0;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50);
  if (one-time initialization token for predictor != -1)
  {
    swift_once(&one-time initialization token for predictor, one-time initialization function for predictor);
  }

  qmemcpy(__src, v50, 0x50uLL);
  *&__src[17] = 0;
  *&__src[10] = static JaccardSimilarity.predictor;
  __src[12] = v62;
  __src[13] = v13;
  __src[14] = v14;
  __src[15] = _swiftEmptyArrayStorage;
  __src[16] = _swiftEmptyArrayStorage;
  v15 = *(*&v50[1] + 16);
  v62 = v15;
  v16 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v15);
  v49[1] = v50[3];
  v49[2] = v50[4];
  v49[0] = v50[2];
  v52 = *(&v50[3] + 1);
  v53 = v50[4];
  outlined retain of [Int](&v52);
  outlined retain of [Int](&v53);
  outlined retain of ContiguousArray<Double>(&v53 + 1);
  v17 = v16;
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(v49);
  v18 = v60;
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v20)
    {
      break;
    }

    v21 = v19;
    if (!swift_isUniquelyReferenced_nonNull_native(v17))
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    }

    if (v21 < 0)
    {
      BUG();
    }

    if (v21 >= v17[2])
    {
      BUG();
    }

    v22 = v17[v21 + 4];
    v23 = __OFADD__(1, v22);
    v24 = v22 + 1;
    if (v23)
    {
      BUG();
    }

    v17[v21 + 4] = v24;
  }

  v48[3] = *&__src[25];
  v48[2] = *&__src[23];
  v48[1] = *&__src[21];
  v48[0] = *&__src[19];
  outlined release of SparseMatrix<Double>.MajorCollection(v48, v15);
  specialized RecommenderModel.computeStatistics(ratingCounts:)(v17, v15);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50, v15);
  v25 = v62;
  if (v62 >= v18)
  {
    v25 = v18;
  }

  __src[15];
  v26 = 0;
  if (v25 > 0)
  {
    v26 = v25;
  }

  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0, _swiftEmptyArrayStorage);
  __src[15] = v27;
  if (v18 < 0)
  {
    BUG();
  }

  v58 = *&v17;
  v28 = v27;
  if (v25 <= 0)
  {
    v32 = __dst;
    v31 = v61;
    v30 = _swiftEmptyArrayStorage;
  }

  else
  {
    v17;
    v29 = v61;
    v30 = specialized Sequence._maxImplementation(count:sortedBy:)(v25, 0, v17);
    v31 = v29;
    v17;
    v32 = __dst;
  }

  v33 = v30;
  ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(v30);
  v33;
  v35 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  v36 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n[2];
  if (v36)
  {
    v60 = v31;
    v37 = *&__src[17];
    v38 = 1.0 / fmax(*&__src[18] - *&__src[17], 1.0);
    v39 = __src[16];
    v40 = 0;
    v41 = v28;
    do
    {
      v42 = v35[v40 + 4];
      if (v42 < 0)
      {
        BUG();
      }

      if (v42 >= *(v39 + 16))
      {
        BUG();
      }

      v43 = *(v39 + 8 * v42 + 32);
      v44 = v41[2];
      v45 = v41[3];
      if (v45 >> 1 <= v44)
      {
        v62 = v35;
        v61 = v36;
        v54 = v37;
        v55 = v38;
        v56 = v39;
        v57 = v43;
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 >= 2, v44 + 1, 1, v41);
        v43 = v57;
        v39 = v56;
        v38 = v55;
        v37 = v54;
        v36 = v61;
        v35 = v62;
      }

      ++v40;
      v41[2] = v44 + 1;
      v46 = 2 * v44;
      v41[v46 + 4] = v42;
      *&v41[v46 + 5] = (v43 - v37) * v38;
    }

    while (v36 != v40);
    v47 = v41;
    v35;
    __src[15] = v47;
    v32 = __dst;
  }

  else
  {
    ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  }

  specialized MutableCollection<>.sort(by:)(&__src[15], specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  *&v58;
  return memcpy(v32, __src, 0x98uLL);
}

{
  v60 = a4;
  __dst = v6;
  v62 = v7;
  v61 = a5;
  v58 = a6;
  a1;
  _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(a1);
  v9 = specialized Recommender.buildInteractionTable(_:nearestItems:)(v50, a2, a6, a3, v60, v61, static PearsonSimilarity.buildItemStatistics(ratings:count:), specialized ItemSimilarityTrainer.train());
  if (v7)
  {
    return outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50, a2);
  }

  v13 = v10;
  v14 = v11;
  v62 = v9;
  v60 = a3;
  v61 = 0;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50);
  if (one-time initialization token for predictor != -1)
  {
    swift_once(&one-time initialization token for predictor, one-time initialization function for predictor);
  }

  qmemcpy(__src, v50, 0x50uLL);
  *&__src[17] = 0;
  *&__src[10] = static PearsonSimilarity.predictor;
  __src[12] = v62;
  __src[13] = v13;
  __src[14] = v14;
  __src[15] = _swiftEmptyArrayStorage;
  __src[16] = _swiftEmptyArrayStorage;
  v15 = *(*&v50[1] + 16);
  v62 = v15;
  v16 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v15);
  v49[1] = v50[3];
  v49[2] = v50[4];
  v49[0] = v50[2];
  v52 = *(&v50[3] + 1);
  v53 = v50[4];
  outlined retain of [Int](&v52);
  outlined retain of [Int](&v53);
  outlined retain of ContiguousArray<Double>(&v53 + 1);
  v17 = v16;
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(v49);
  v18 = v60;
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v20)
    {
      break;
    }

    v21 = v19;
    if (!swift_isUniquelyReferenced_nonNull_native(v17))
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    }

    if (v21 < 0)
    {
      BUG();
    }

    if (v21 >= v17[2])
    {
      BUG();
    }

    v22 = v17[v21 + 4];
    v23 = __OFADD__(1, v22);
    v24 = v22 + 1;
    if (v23)
    {
      BUG();
    }

    v17[v21 + 4] = v24;
  }

  v48[3] = *&__src[25];
  v48[2] = *&__src[23];
  v48[1] = *&__src[21];
  v48[0] = *&__src[19];
  outlined release of SparseMatrix<Double>.MajorCollection(v48, v15);
  specialized RecommenderModel.computeStatistics(ratingCounts:)(v17, v15);
  outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v50, v15);
  v25 = v62;
  if (v62 >= v18)
  {
    v25 = v18;
  }

  __src[15];
  v26 = 0;
  if (v25 > 0)
  {
    v26 = v25;
  }

  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0, _swiftEmptyArrayStorage);
  __src[15] = v27;
  if (v18 < 0)
  {
    BUG();
  }

  v58 = *&v17;
  v28 = v27;
  if (v25 <= 0)
  {
    v32 = __dst;
    v31 = v61;
    v30 = _swiftEmptyArrayStorage;
  }

  else
  {
    v17;
    v29 = v61;
    v30 = specialized Sequence._maxImplementation(count:sortedBy:)(v25, 0, v17);
    v31 = v29;
    v17;
    v32 = __dst;
  }

  v33 = v30;
  ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySi_SitG_Sis5NeverOTg5080_s8CreateML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n(v30);
  v33;
  v35 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  v36 = ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n[2];
  if (v36)
  {
    v60 = v31;
    v37 = *&__src[17];
    v38 = 1.0 / fmax(*&__src[18] - *&__src[17], 1.0);
    v39 = __src[16];
    v40 = 0;
    v41 = v28;
    do
    {
      v42 = v35[v40 + 4];
      if (v42 < 0)
      {
        BUG();
      }

      if (v42 >= *(v39 + 16))
      {
        BUG();
      }

      v43 = *(v39 + 8 * v42 + 32);
      v44 = v41[2];
      v45 = v41[3];
      if (v45 >> 1 <= v44)
      {
        v62 = v35;
        v61 = v36;
        v54 = v37;
        v55 = v38;
        v56 = v39;
        v57 = v43;
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 >= 2, v44 + 1, 1, v41);
        v43 = v57;
        v39 = v56;
        v38 = v55;
        v37 = v54;
        v36 = v61;
        v35 = v62;
      }

      ++v40;
      v41[2] = v44 + 1;
      v46 = 2 * v44;
      v41[v46 + 4] = v42;
      *&v41[v46 + 5] = (v43 - v37) * v38;
    }

    while (v36 != v40);
    v47 = v41;
    v35;
    __src[15] = v47;
    v32 = __dst;
  }

  else
  {
    ML16RecommenderModelV21buildNewUserSeedItems5count12ratingCountsySi_Sayp51GtFS2i_Sit_tcfu_33_39c69c9f4ee04694167b65f5fa330960p1_tP10Tf3nnnpk_nTf1cn_n;
  }

  specialized MutableCollection<>.sort(by:)(&__src[15], specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  *&v58;
  return memcpy(v32, __src, 0x98uLL);
}

uint64_t closure #1 in MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v3 = swift_task_alloc(208);
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return static MLModel.compile(_:)(a2);
}

Swift::Bool static MLRecommender.reportAnalytics(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a4;
  v59 = a3;
  v57 = a2;
  v58 = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = &v50;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v54 = &v50;
  v53 = type metadata accessor for AnyColumn(0);
  v19 = *(v53 - 8);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v51 = &v50;
  v23 = alloca(v20);
  v24 = alloca(v20);
  result = AnalyticsReporter.init()();
  if (result)
  {
    return result;
  }

  v55 = &v50;
  v60 = a5;
  if (a7)
  {
    v26 = String.count.getter(a6, a7);
  }

  else
  {
    v26 = 0;
  }

  v27 = v59;
  v28 = v57;
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(("he upper strict-triangular." + 0x8000000000000000), 0xD000000000000011), v26);
  DataFrame.subscript.getter(v28, v27);
  v29 = AnyColumn.wrappedElementType.getter();
  v52 = *(v19 + 8);
  v52(&v50, v53);
  if (swift_dynamicCastMetatype(v29, &type metadata for String))
  {
    v30 = v54;
    DataFrame.subscript.getter(v28, v59, &type metadata for String);
    v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v30);
    v32 = v60;
    v33 = v56;
  }

  else
  {
    v34 = swift_dynamicCastMetatype(v29, &type metadata for Int);
    v32 = v60;
    v33 = v56;
    v35 = v55;
    if (!v34)
    {
      goto LABEL_10;
    }

    DataFrame.subscript.getter(v57, v59, &type metadata for Int);
    v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v35);
  }

  v36 = *(v31 + 16);
  v31;
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xEF73726573552066, 0x6F207265626D754ELL), v36);
LABEL_10:
  v37 = v51;
  DataFrame.subscript.getter(v33, v32);
  v38 = AnyColumn.wrappedElementType.getter();
  v52(v37, v53);
  if (swift_dynamicCastMetatype(v38, &type metadata for String))
  {
    v39 = v54;
    DataFrame.subscript.getter(v33, v60, &type metadata for String);
    v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v39);
  }

  else
  {
    if (!swift_dynamicCastMetatype(v38, &type metadata for Int))
    {
      goto LABEL_15;
    }

    v41 = v55;
    DataFrame.subscript.getter(v56, v60, &type metadata for Int);
    v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v41);
  }

  v42 = *(v40 + 16);
  v40;
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xEF736D6574492066, 0x6F207265626D754ELL), v42);
LABEL_15:
  AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xEF65707954207974, 0x6972616C696D6953), __PAIR128__(0xEF79746972616C69, 0x6D6973206D657449));
  v43 = *(a8 + 8);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xE900000000000064, 0x6C6F687365726854), v43);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xE900000000000074, 0x6E756F432078614DLL), *(a8 + 16));
  v44 = type metadata accessor for MLRecommender.ModelParameters(0);
  v45 = v50;
  outlined init with copy of DataFrame?(a8 + v44[7], v50);
  v46 = type metadata accessor for DataFrame(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v46);
  outlined destroy of DataFrame?(v45);
  if (EnumTagSinglePayload == 1 && *(a8 + v44[8] + 8) == 0xFF)
  {
    v48 = 0x6569666963657053;
    v49 = 0xE900000000000064;
  }

  else
  {
    v48 = 0x6669636570736E55;
    v49 = 0xEB00000000646569;
  }

  AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(0xED0000736D657449, 0x207473657261654ELL), __PAIR128__(v49, v48));
  return AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_iterSimilarityRecommender, __PAIR128__(("Number of Ratings" + 0x8000000000000000), 0xD000000000000019), *(a8 + v44[9]));
}

void *closure #1 in static MLRecommender.extractNearestItems(itemColumn:parameters:)(void *a1)
{
  v40 = a1;
  v35 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v44 = *(v41 - 8);
  v2 = *(v44 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v43 = &v33;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v36 = *(v42 - 8);
  v5 = *(v36 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = AnyColumn.name.getter();
  v10 = v9;
  DataFrame.subscript.getter(v8, v9, &type metadata for String);
  v10;
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v12 = v42;
  v13 = v41;
  v14 = v43;
  OptionalColumnProtocol.filled(with:)(v34, v41, v11);
  (*(v44 + 8))(v14, v13);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v16 = dispatch thunk of Collection.count.getter(v12, v15);
  if (v16)
  {
    v39 = _swiftEmptyArrayStorage;
    v17 = 0;
    if (v16 > 0)
    {
      v17 = v16;
    }

    v44 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v15;
    v19 = v39;
    v38 = &v33;
    v43 = v18;
    dispatch thunk of Collection.startIndex.getter(v12, v18);
    v20 = v44;
    if (v44 < 0)
    {
      BUG();
    }

    v21 = v43;
    v22 = v42;
    v23 = v38;
    do
    {
      v44 = v20;
      v24 = v23;
      v25 = dispatch thunk of Collection.subscript.read(v34, v37, v22, v21);
      v41 = *v26;
      v27 = v26[1];
      v27;
      v25(v34, 0);
      v39 = v19;
      v28 = v19[2];
      v29 = v28 + 1;
      if (v19[3] >> 1 <= v28)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19[3] >= 2uLL, v28 + 1, 1);
        v29 = v28 + 1;
        v24 = v38;
        v19 = v39;
      }

      v40 = v19;
      v19[2] = v29;
      v30 = 3 * v28;
      v19[v30 + 4] = v41;
      v19[v30 + 5] = v27;
      LOBYTE(v19[v30 + 6]) = 0;
      v31 = v42;
      v21 = v43;
      dispatch thunk of Collection.formIndex(after:)(v37, v42, v43);
      v20 = v44 - 1;
      v22 = v31;
      v19 = v40;
      v23 = v24;
    }

    while (v44 != 1);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v22 = v12;
    v23 = &v33;
  }

  (*(v36 + 8))(v23, v22);
  result = v35;
  *v35 = v19;
  return result;
}

void *closure #2 in static MLRecommender.extractNearestItems(itemColumn:parameters:)()
{
  v31 = v0;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v40 = *(v38 - 8);
  v1 = *(v40 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v39 = &v29;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  DataFrame.subscript.getter(0x72616C696D6973, 0xE700000000000000, &type metadata for String);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v9 = v38;
  v10 = v39;
  OptionalColumnProtocol.filled(with:)(v30, v38, v8);
  (*(v40 + 8))(v10, v9);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v12 = dispatch thunk of Collection.count.getter(v4, v11);
  if (v12)
  {
    v37 = _swiftEmptyArrayStorage;
    v13 = 0;
    if (v12 > 0)
    {
      v13 = v12;
    }

    v40 = v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v11;
    v15 = v37;
    v36 = &v29;
    v35 = v4;
    v34 = v14;
    dispatch thunk of Collection.startIndex.getter(v4, v14);
    v16 = v40;
    if (v40 < 0)
    {
      BUG();
    }

    v17 = v34;
    v18 = v35;
    v19 = v36;
    do
    {
      v40 = v16;
      v20 = v19;
      v21 = dispatch thunk of Collection.subscript.read(v30, v33, v18, v17);
      v39 = *v22;
      v23 = v22[1];
      v23;
      v21(v30, 0);
      v37 = v15;
      v24 = v15[2];
      v25 = v24 + 1;
      if (v15[3] >> 1 <= v24)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15[3] >= 2uLL, v24 + 1, 1);
        v25 = v24 + 1;
        v20 = v36;
        v15 = v37;
      }

      v38 = v15;
      v15[2] = v25;
      v26 = 3 * v24;
      v15[v26 + 4] = v39;
      v15[v26 + 5] = v23;
      LOBYTE(v15[v26 + 6]) = 0;
      v27 = v35;
      v17 = v34;
      dispatch thunk of Collection.formIndex(after:)(v33, v35, v34);
      v16 = v40 - 1;
      v18 = v27;
      v15 = v38;
      v19 = v20;
    }

    while (v40 != 1);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    v18 = v4;
    v19 = &v29;
  }

  (*(v32 + 8))(v19, v18);
  result = v31;
  *v31 = v15;
  return result;
}

void *closure #3 in static MLRecommender.extractNearestItems(itemColumn:parameters:)(uint64_t a1)
{
  v44 = a1;
  v38 = v1;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v45 = *(v42 - 8);
  v2 = *(v45 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v39 = *(v43 - 8);
  v5 = *(v39 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v46 = v37;
  v8 = AnyColumn.name.getter();
  v10 = v9;
  DataFrame.subscript.getter(v8, v9, &type metadata for Int);
  v10;
  v37[0] = 0;
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v12 = v43;
  v13 = v42;
  OptionalColumnProtocol.filled(with:)(v37, v42, v11);
  (*(v45 + 8))(v37, v13);
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v15 = dispatch thunk of Collection.count.getter(v12, v14);
  if (v15)
  {
    v16 = v15;
    v41 = _swiftEmptyArrayStorage;
    v17 = 0;
    if (v15 > 0)
    {
      v17 = v15;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v14;
    v19 = v41;
    v45 = v18;
    dispatch thunk of Collection.startIndex.getter(v12, v18);
    if (v16 < 0)
    {
      BUG();
    }

    v42 = v16;
    v20 = v45;
    v21 = v43;
    do
    {
      v22 = v20;
      v23 = v21;
      v24 = dispatch thunk of Collection.subscript.read(v37, v40, v21, v22);
      v26 = *v25;
      v24(v37, 0);
      v41 = v19;
      v27 = v23;
      v28 = v19[2];
      v29 = v19[3];
      v30 = v28 + 1;
      if (v29 >> 1 <= v28)
      {
        v44 = v26;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 >= 2, v30, 1);
        v26 = v44;
        v27 = v43;
        v19 = v41;
      }

      v19[2] = v30;
      v31 = 3 * v28;
      v19[v31 + 4] = v26;
      v19[v31 + 5] = 0;
      LOBYTE(v19[v31 + 6]) = 1;
      v32 = v46;
      v33 = v27;
      v20 = v45;
      dispatch thunk of Collection.formIndex(after:)(v40, v27, v45);
      v34 = v42-- == 1;
      v21 = v33;
    }

    while (!v34);
    v35 = v32;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v35 = v46;
    v21 = v12;
  }

  (*(v39 + 8))(v35, v21);
  result = v38;
  *v38 = v19;
  return result;
}

void *closure #4 in static MLRecommender.extractNearestItems(itemColumn:parameters:)()
{
  v34 = v0;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v41 = *(v39 - 8);
  v1 = *(v41 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v35 = *(v40 - 8);
  v4 = *(v35 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v42 = v33;
  DataFrame.subscript.getter(0x72616C696D6973, 0xE700000000000000, &type metadata for Int);
  v33[0] = 0;
  v7 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v8 = v39;
  OptionalColumnProtocol.filled(with:)(v33, v39, v7);
  v9 = v40;
  (*(v41 + 8))(v33, v8);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v11 = dispatch thunk of Collection.count.getter(v9, v10);
  if (v11)
  {
    v12 = v11;
    v38 = _swiftEmptyArrayStorage;
    v13 = 0;
    if (v11 > 0)
    {
      v13 = v11;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v10;
    v15 = v38;
    v41 = v14;
    dispatch thunk of Collection.startIndex.getter(v9, v14);
    if (v12 < 0)
    {
      BUG();
    }

    v39 = v12;
    v16 = v41;
    v17 = v40;
    do
    {
      v18 = v16;
      v19 = v17;
      v20 = dispatch thunk of Collection.subscript.read(v33, v37, v17, v18);
      v22 = *v21;
      v20(v33, 0);
      v38 = v15;
      v23 = v19;
      v24 = v15[2];
      v25 = v15[3];
      v26 = v24 + 1;
      if (v25 >> 1 <= v24)
      {
        v36 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 >= 2, v26, 1);
        v22 = v36;
        v23 = v40;
        v15 = v38;
      }

      v15[2] = v26;
      v27 = 3 * v24;
      v15[v27 + 4] = v22;
      v15[v27 + 5] = 0;
      LOBYTE(v15[v27 + 6]) = 1;
      v28 = v42;
      v29 = v23;
      v16 = v41;
      dispatch thunk of Collection.formIndex(after:)(v37, v23, v41);
      v30 = v39-- == 1;
      v17 = v29;
    }

    while (!v30);
    v31 = v28;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    v31 = v42;
    v17 = v9;
  }

  (*(v35 + 8))(v31, v17);
  result = v34;
  *v34 = v15;
  return result;
}

uint64_t MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v20 = a4;
  v21 = a3;
  v25 = v8;
  v23 = a2;
  v22 = a6;
  v24 = a5;
  v9 = *(*(type metadata accessor for MLRecommender.ModelParameters(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = *(a1 + 8);
  v18 = *a1;
  v19 = v15;
  DataFrame.init(_:)(&v18);
  outlined init with copy of MLRecommender.ModelParameters(a8, v17);
  MLRecommender.init(trainingData:userColumn:itemColumn:ratingColumn:parameters:)(v17, v23, v21, v20, v24, v22, a7, v17);
  return outlined destroy of MLRecommender.ModelParameters(a8);
}

uint64_t MLRecommender.recommendations(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, __m128 a6)
{
  v205._countAndFlagsBits = a3;
  v10 = v6;
  v196 = a2;
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v7;
  LODWORD(v187) = a5;
  v175 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v174 = *(v175 - 8);
  v11 = *(v174 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v176 = &v162;
  v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v181 = *(v182 - 8);
  v14 = *(v181 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v164 = &v162;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v177 = &v162;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v188 = &v162;
  v173 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v172 = *(v173 - 8);
  v21 = *(v172 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v165 = &v162;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v183 = &v162;
  v26 = type metadata accessor for DataFrame(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v31 = alloca(v28);
  v32 = alloca(v28);
  if (!*(a1 + 16))
  {
    v38 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    result = swift_allocError(&type metadata for MLCreateError, v38, 0, 0);
    *v39 = 0xD000000000000050;
    *(v39 + 8) = "user identifiers." + 0x8000000000000000;
    *(v39 + 16) = 0;
    *(v39 + 32) = 0;
    *(v39 + 48) = 0;
    *v10 = result;
    *(v10 + 8) = 1;
    return result;
  }

  v167 = &v162;
  v195 = &v162;
  v166 = v26;
  v178 = v27;
  v180 = v10;
  v33 = *a4;
  v34 = *(a4 + 8);
  v35 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  v36 = MLRecommender.mapUsers(_:)(a1);
  if (v35)
  {
    result = v180;
    *v180 = v35;
LABEL_4:
    *(result + 8) = 1;
    return result;
  }

  LOBYTE(v199) = v34;
  v189 = 0;
  v179 = v33;
  countAndFlagsBits = v205._countAndFlagsBits;
  if (v205._countAndFlagsBits)
  {
    v41 = v36;
    v36;
    v42 = v189;
    v43 = MLRecommender.mapItems(_:)(countAndFlagsBits);
    if (v42)
    {
      swift_bridgeObjectRelease_n(v41, 2);
      result = v180;
      *v180 = v42;
      goto LABEL_4;
    }

    v189 = 0;
  }

  else
  {
    v41 = v36;
    v36;
    v43 = _swiftEmptyArrayStorage;
  }

  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(v43);
  __src = v8;
  if (v199 == 0xFF)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v198 = v41;
  v205._countAndFlagsBits = v8[20];
  v197 = v8[21];
  v44 = v179;
  v170 = v179;
  v45 = v199;
  LOBYTE(v199) = v199 & 1;
  v171 = v199;
  outlined copy of Result<_DataTable, Error>(v179, v45);
  outlined copy of Result<_DataTable, Error>(v44, v45);
  v46._countAndFlagsBits = v205._countAndFlagsBits;
  v46._object = v197;
  MLDataTable.subscript.getter(v46);
  outlined consume of Result<_DataTable, Error>(v170, v171);
  v194 = v201;
  BYTE6(v205._object) = v202;
  v205._countAndFlagsBits = v8[22];
  v197 = v8[23];
  v170 = v44;
  v171 = v199;
  outlined copy of Result<_DataTable, Error>(v44, v45);
  v46._countAndFlagsBits = v205._countAndFlagsBits;
  v46._object = v197;
  MLDataTable.subscript.getter(v46);
  outlined consume of Result<_DataTable, Error>(v170, v171);
  v192 = v201;
  LOBYTE(v191) = v202;
  v201 = v44;
  LOBYTE(v202) = v199;
  outlined copy of Result<_DataTable, Error>(v44, v45);
  outlined copy of Result<_DataTable, Error>(v44, v45);
  v47 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v201, v202);
  v184 = v45;
  outlined consume of MLDataTable?(v44, v45);
  v168 = v47;
  v48 = v47 == 0;
  if (v47 < 0)
  {
    BUG();
  }

  v185 = v191;
  v49 = BYTE6(v205._object);
  v186 = BYTE6(v205._object);
  v50 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  if (v48)
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_37:
    outlined consume of Result<_DataTable, Error>(v192, v185);
    outlined consume of Result<_DataTable, Error>(v194, v186);
    outlined consume of MLDataTable?(v179, v184);
    v41 = v198;
LABEL_38:
    v63 = __src;
    memcpy(__dst, __src, sizeof(__dst));
    v64 = v189;
    v65 = specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(v41, v196, ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, v52, v187);
    v66 = v64;
    if (v64)
    {
      v52;
      swift_bridgeObjectRelease_n(v41, 2);
      result = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      v67 = v180;
    }

    else
    {
      v199 = v65;
      v198 = v41;
      v41;
      ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      DataFrame.init()();
      v197 = type metadata accessor for MLRecommender(0);
      v68 = v197[10];
      v191 = v63[20];
      v69 = v63[21];
      v70 = *(v63 + v68);
      v194 = v69;
      v69;
      v192 = v52;
      if (v70)
      {
        ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm(v199);
        v72 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm;
        v190 = 0;
        v73 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm[2];
        if (v73)
        {
          v201 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
          v74 = v201;
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v72;
          v75 = (v72 + 48);
          do
          {
            if (*v75 != 1)
            {
              BUG();
            }

            v76 = *(v75 - 2);
            v201 = v74;
            v77 = *(v74 + 2);
            v78 = *(v74 + 3);
            v79 = v77 + 1;
            if (v78 >> 1 <= v77)
            {
              v205._countAndFlagsBits = v77 + 1;
              v196 = v76;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78 >= 2, v79, 1);
              v79 = v205._countAndFlagsBits;
              v76 = v196;
              v74 = v201;
            }

            *(v74 + 2) = v79;
            *&v74[8 * v77 + 32] = v76;
            v75 += 24;
            --v73;
          }

          while (v73);
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
        }

        else
        {
          ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm;
          v74 = _swiftEmptyArrayStorage;
        }

        v201 = v74;
        v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
        v90 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
        v91 = v188;
        Column.init<A>(name:contents:)(v191, v194, &v201, &type metadata for Int, v89, v90);
        DataFrame.append<A>(column:)(v91, &type metadata for Int);
        v92 = v91;
        v93 = v182;
        v94 = v181;
      }

      else
      {
        v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F59VyA2QGcfu0_33_7b0562fa90875ac3238718c5c70eced2AtQTf3nnnpk_nTf1cn_nTm(v199);
        v81 = v80;
        v190 = 0;
        v82 = v80[2];
        if (v82)
        {
          v201 = _swiftEmptyArrayStorage;
          v187 = v82;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
          v83 = v201;
          v189 = v81;
          v84 = v81 + 6;
          do
          {
            if (*v84)
            {
              BUG();
            }

            v205._countAndFlagsBits = *(v84 - 2);
            v85 = *(v84 - 1);
            v201 = v83;
            v86 = *(v83 + 2);
            v188 = *(v83 + 3);
            v87 = v188 >> 1;
            ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v86 + 1;
            v196 = v85;
            v85;
            if (v87 <= v86)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v188 >= 2, ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, 1);
              v83 = v201;
            }

            *(v83 + 2) = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
            v88 = 16 * v86;
            *&v83[v88 + 32] = v205._countAndFlagsBits;
            *&v83[v88 + 40] = v196;
            v84 += 24;
            --v187;
          }

          while (v187);
          v189;
        }

        else
        {
          v80;
          v83 = _swiftEmptyArrayStorage;
        }

        v201 = v83;
        v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v96 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
        v97 = v183;
        Column.init<A>(name:contents:)(v191, v194, &v201, &type metadata for String, v95, v96);
        DataFrame.append<A>(column:)(v97, &type metadata for String);
        v92 = v97;
        v93 = v173;
        v94 = v172;
      }

      (*(v94 + 8))(v92, v93);
      v98 = *(__src + 22);
      v99 = *(__src + 23);
      v100 = *(__src + v197[11]);
      v99;
      v183 = v99;
      v197 = v98;
      if (v100)
      {
        v101 = v190;
        ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm(v199);
        v103 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm;
        __src = v101;
        v104 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm[2];
        if (v104)
        {
          v201 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104, 0);
          v105 = v201;
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v103;
          v106 = (v103 + 48);
          do
          {
            if (*v106 != 1)
            {
              BUG();
            }

            v107 = *(v106 - 2);
            v201 = v105;
            v108 = *(v105 + 2);
            v109 = *(v105 + 3);
            v110 = v108 + 1;
            if (v109 >> 1 <= v108)
            {
              v205._countAndFlagsBits = v108 + 1;
              v196 = v107;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109 >= 2, v110, 1);
              v110 = v205._countAndFlagsBits;
              v107 = v196;
              v105 = v201;
            }

            *(v105 + 2) = v110;
            *&v105[8 * v108 + 32] = v107;
            v106 += 24;
            --v104;
          }

          while (v104);
          ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
        }

        else
        {
          ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm;
          v105 = _swiftEmptyArrayStorage;
        }

        v201 = v105;
        v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
        v122 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
        v123 = v177;
        Column.init<A>(name:contents:)(v197, v183, &v201, &type metadata for Int, v121, v122);
        DataFrame.append<A>(column:)(v123, &type metadata for Int);
        v124 = v123;
        v125 = v182;
        v126 = v181;
      }

      else
      {
        v111 = v190;
        v112 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_ALs5NeverOTg503_s8d4ML13g136V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFAC10h5OAA14F58VyA2QGcfu2_32d1e1b7ed5e9e4cd3ca03cf5b44db102cAtQTf3nnnpk_nTf1cn_nTm(v199);
        v113 = v112;
        __src = v111;
        v114 = v112[2];
        if (v114)
        {
          v201 = _swiftEmptyArrayStorage;
          v187 = v114;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v114, 0);
          v115 = v201;
          v177 = v113;
          v116 = v113 + 6;
          do
          {
            if (*v116)
            {
              BUG();
            }

            v205._countAndFlagsBits = *(v116 - 2);
            v117 = *(v116 - 1);
            v201 = v115;
            v118 = *(v115 + 2);
            v188 = *(v115 + 3);
            v119 = v188 >> 1;
            ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v118 + 1;
            v196 = v117;
            v117;
            if (v119 <= v118)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v188 >= 2, ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, 1);
              v115 = v201;
            }

            *(v115 + 2) = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
            v120 = 16 * v118;
            *&v115[v120 + 32] = v205._countAndFlagsBits;
            *&v115[v120 + 40] = v196;
            v116 += 24;
            --v187;
          }

          while (v187);
          v177;
        }

        else
        {
          v112;
          v115 = _swiftEmptyArrayStorage;
        }

        v201 = v115;
        v127 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v128 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
        v129 = v165;
        Column.init<A>(name:contents:)(v197, v183, &v201, &type metadata for String, v127, v128);
        DataFrame.append<A>(column:)(v129, &type metadata for String);
        v124 = v129;
        v125 = v173;
        v126 = v172;
      }

      (*(v126 + 8))(v124, v125);
      v130 = v199;
      v131 = __src;
      ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n(v199);
      ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v131;
      v201 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sds5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSdAA14f6VyAC10H57OASGcfu4_32ba0ef4f5a3599e9812b06a0e93fdc0a1ATSdTf3nnnpk_nTf1cn_n;
      v133 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      v134 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &demangling cache variable for type metadata for [Double], &protocol conformance descriptor for [A]);
      v135 = v176;
      Column.init<A>(name:contents:)(0x65726F6373, 0xE500000000000000, &v201, &type metadata for Double, v133, v134);
      v136 = v195;
      DataFrame.append<A>(column:)(v135, &type metadata for Double);
      v137 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n(v130);
      ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = v137;
      v130;
      v192;
      v198;
      v201 = ML14RecommendationVyAF13MLRecommenderV10IdentifierOALGG_Sis5NeverOTg503_s8d4ML13g138V15recommendations9fromUsers8maxCount18restrictingToItems9excluding0L8ObservedAA11MLDataTableVSayAA12MLIdentifier_pG_SiAMSgAKSgSbtKFSiAA14f6VyAC10H58OASGcfu5_33_4d997128bfdac600b62536b5ddbe07b5ATSiTf3nnnpk_nTf1cn_n;
      v139 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
      v140 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
      v141 = v164;
      Column.init<A>(name:contents:)(1802396018, 0xE400000000000000, &v201, &type metadata for Int, v139, v140);
      DataFrame.append<A>(column:)(v141, &type metadata for Int);
      v142 = v167;
      v143 = v136;
      v144 = v166;
      *a6.i64 = (*(v178 + 16))(v167, v143, v166);
      v67 = v180;
      v145 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v142, 0, a6);
      if (!v145)
      {
        (*(v181 + 8))(v141, v182);
        (*(v174 + 8))(v176, v175);
        return (*(v178 + 8))(v195, v144);
      }

      (*(v181 + 8))(v141, v182);
      (*(v174 + 8))(v176, v175);
      result = (*(v178 + 8))(v195, v144);
      v66 = v145;
    }

    *v67 = v66;
    *(v67 + 8) = 1;
    return result;
  }

  v51 = 0;
  v169 = type metadata accessor for MLRecommender(0);
  v52 = _swiftEmptyArrayStorage;
  HIBYTE(v205._object) = *(__src + *(v169 + 40));
  v200 = HIBYTE(v205._object) & 1;
  while (1)
  {
    if (HIBYTE(v205._object))
    {
      if (v49)
      {
        v146 = 0xD000000000000022;
      }

      else
      {
        v53 = v194;
        outlined copy of Result<_DataTable, Error>(v194, 0);
        _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
        outlined consume of Result<_DataTable, Error>(v53, 0);
        v54 = v201;
        if (!v203)
        {
          v205._countAndFlagsBits = 0;
          goto LABEL_22;
        }

        v146 = 0xD000000000000022;
        outlined consume of MLDataValue(v201, v202, v203);
      }

      v52;
      v50;
      swift_bridgeObjectRelease_n(v198, 2);
      v147 = " or Int but it contains ";
      goto LABEL_93;
    }

    if (v49)
    {
      goto LABEL_84;
    }

    v55 = v194;
    outlined copy of Result<_DataTable, Error>(v194, 0);
    _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
    outlined consume of Result<_DataTable, Error>(v55, 0);
    v54 = v201;
    if (v203 != 2)
    {
      outlined consume of MLDataValue(v201, v202, v203);
LABEL_84:
      v52;
      v50;
      swift_bridgeObjectRelease_n(v198, 2);
      v146 = 0xD000000000000021;
      v147 = "items identifiers.";
      goto LABEL_93;
    }

    v205._countAndFlagsBits = v202;
LABEL_22:
    v56 = *(__src + *(v169 + 44));
    v199 = v54;
    LOBYTE(v197) = v56;
    if (!v56)
    {
      break;
    }

    if (v191)
    {
      v148 = v50;
      v149 = v198;
      v198;
      v148;
      object_high = HIBYTE(v205._object);
      v151 = v54;
LABEL_90:
      outlined consume of MLRecommender.Identifier(v151, v205._countAndFlagsBits, object_high);
      v52;
      v149;
      v146 = 0xD000000000000023;
      v147 = " user identifiers.";
      goto LABEL_93;
    }

    v57 = v192;
    outlined copy of Result<_DataTable, Error>(v192, 0);
    _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
    outlined consume of Result<_DataTable, Error>(v57, 0);
    v58 = v201;
    if (v203)
    {
      outlined consume of MLDataValue(v201, v202, v203);
      v157 = v50;
      v149 = v198;
      v198;
      v157;
      object_high = HIBYTE(v205._object);
      v151 = v199;
      goto LABEL_90;
    }

    v190 = 0;
LABEL_29:
    if (!swift_isUniquelyReferenced_nonNull_native(v52))
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
    }

    v60 = *(v52 + 2);
    v61 = v52;
    if (*(v52 + 3) >> 1 <= v60)
    {
      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v52 + 3) >= 2uLL, v60 + 1, 1, v52);
    }

    ++v51;
    *(v61 + 2) = v60 + 1;
    v52 = v61;
    v62 = 48 * v60;
    *&v52[v62 + 32] = v199;
    *&v52[v62 + 40] = v205._countAndFlagsBits;
    v52[v62 + 48] = v200;
    *&v52[v62 + 56] = v58;
    *&v52[v62 + 64] = v190;
    v52[v62 + 72] = v197;
    v50 = ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
    v49 = BYTE6(v205._object);
    if (v168 == v51)
    {
      goto LABEL_37;
    }
  }

  if (v191)
  {
    v152 = v50;
    v153 = v198;
    v198;
    v154 = v152;
    v146 = 0xD000000000000022;
    v154;
    v155 = HIBYTE(v205._object);
    v156 = v54;
    goto LABEL_92;
  }

  v59 = v192;
  outlined copy of Result<_DataTable, Error>(v192, 0);
  _UntypedColumn.valueAtIndex(index:)(v51, *a6.i64);
  outlined consume of Result<_DataTable, Error>(v59, 0);
  v58 = v201;
  if (v203 == 2)
  {
    v190 = v202;
    goto LABEL_29;
  }

  outlined consume of MLDataValue(v201, v202, v203);
  v158 = v50;
  v153 = v198;
  v198;
  v159 = v158;
  v146 = 0xD000000000000022;
  v159;
  v155 = HIBYTE(v205._object);
  v156 = v199;
LABEL_92:
  outlined consume of MLRecommender.Identifier(v156, v205._countAndFlagsBits, v155);
  v52;
  v153;
  v147 = " items identifiers.";
LABEL_93:
  v160 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v160, 0, 0);
  *v161 = v146;
  *(v161 + 8) = v147 | 0x8000000000000000;
  *(v161 + 16) = 0;
  *(v161 + 32) = 0;
  *(v161 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v160);
  outlined consume of MLDataTable?(v179, v184);
  outlined consume of Result<_DataTable, Error>(v194, v186);
  return outlined consume of Result<_DataTable, Error>(v192, v185);
}

void *MLRecommender.mapUsers(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MLRecommender(0);
  v4 = *(a1 + 16);
  if (!*(v2 + *(v3 + 40)))
  {
    if (v4)
    {
      v30 = v1;
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      result = _swiftEmptyArrayStorage;
      v11 = a1 + 32;
      while (1)
      {
        v29 = v4;
        v31 = result;
        v32 = v11;
        outlined init with copy of TabularRegressionTask(v11, v22);
        v12 = v23;
        v13 = v24;
        __swift_project_boxed_opaque_existential_0Tm(v22, v23);
        (v13[1])(v12, v13);
        v14 = v26;
        if (v28 != 2)
        {
          break;
        }

        v25 = v27;
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        result = v31;
        v33 = v31;
        v15 = v31[2];
        v16 = v15 + 1;
        if (v31[3] >> 1 <= v15)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v16, 1);
          result = v33;
        }

        result[2] = v16;
        v17 = 3 * v15;
        result[v17 + 4] = v14;
        result[v17 + 5] = v25;
        LOBYTE(result[v17 + 6]) = 0;
        v11 = (v32 + 5);
        v4 = v29 - 1;
        if (v29 == 1)
        {
          return result;
        }
      }

      outlined consume of MLDataValue(v26, v27, v28);
      v18 = "items identifiers." + 0x8000000000000000;
      v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
      v21 = 0xD000000000000021;
      goto LABEL_19;
    }

    return _swiftEmptyArrayStorage;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v30 = v1;
  v33 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  result = _swiftEmptyArrayStorage;
  for (i = a1 + 32; ; i += 40)
  {
    v29 = v4;
    v31 = result;
    outlined init with copy of TabularRegressionTask(i, v22);
    v7 = v23;
    v32 = v24;
    __swift_project_boxed_opaque_existential_0Tm(v22, v23);
    v32[1](v7);
    if (v28)
    {
      break;
    }

    v32 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    result = v31;
    v33 = v31;
    v8 = v31[2];
    v9 = v8 + 1;
    if (v31[3] >> 1 <= v8)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v9, 1);
      result = v33;
    }

    result[2] = v9;
    v10 = 3 * v8;
    result[v10 + 4] = v32;
    result[v10 + 5] = 0;
    LOBYTE(result[v10 + 6]) = 1;
    v4 = v29 - 1;
    if (v29 == 1)
    {
      return result;
    }
  }

  outlined consume of MLDataValue(v26, v27, v28);
  v18 = " or Int but it contains " + 0x8000000000000000;
  v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
  v21 = 0xD000000000000022;
LABEL_19:
  *v20 = v21;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  *(v20 + 32) = 0;
  *(v20 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

void *MLRecommender.mapItems(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MLRecommender(0);
  v4 = *(a1 + 16);
  if (!*(v2 + *(v3 + 44)))
  {
    if (v4)
    {
      v30 = v1;
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      result = _swiftEmptyArrayStorage;
      v11 = a1 + 32;
      while (1)
      {
        v29 = v4;
        v31 = result;
        v32 = v11;
        outlined init with copy of TabularRegressionTask(v11, v22);
        v12 = v23;
        v13 = v24;
        __swift_project_boxed_opaque_existential_0Tm(v22, v23);
        (v13[1])(v12, v13);
        v14 = v26;
        if (v28 != 2)
        {
          break;
        }

        v25 = v27;
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        result = v31;
        v33 = v31;
        v15 = v31[2];
        v16 = v15 + 1;
        if (v31[3] >> 1 <= v15)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v16, 1);
          result = v33;
        }

        result[2] = v16;
        v17 = 3 * v15;
        result[v17 + 4] = v14;
        result[v17 + 5] = v25;
        LOBYTE(result[v17 + 6]) = 0;
        v11 = (v32 + 5);
        v4 = v29 - 1;
        if (v29 == 1)
        {
          return result;
        }
      }

      outlined consume of MLDataValue(v26, v27, v28);
      v18 = " item identifiers." + 0x8000000000000000;
      v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
      v21 = 0xD000000000000021;
      goto LABEL_19;
    }

    return _swiftEmptyArrayStorage;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v30 = v1;
  v33 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  result = _swiftEmptyArrayStorage;
  for (i = a1 + 32; ; i += 40)
  {
    v29 = v4;
    v31 = result;
    outlined init with copy of TabularRegressionTask(i, v22);
    v7 = v23;
    v32 = v24;
    __swift_project_boxed_opaque_existential_0Tm(v22, v23);
    v32[1](v7);
    if (v28)
    {
      break;
    }

    v32 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    result = v31;
    v33 = v31;
    v8 = v31[2];
    v9 = v8 + 1;
    if (v31[3] >> 1 <= v8)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v9, 1);
      result = v33;
    }

    result[2] = v9;
    v10 = 3 * v8;
    result[v10 + 4] = v32;
    result[v10 + 5] = 0;
    LOBYTE(result[v10 + 6]) = 1;
    v4 = v29 - 1;
    if (v29 == 1)
    {
      return result;
    }
  }

  outlined consume of MLDataValue(v26, v27, v28);
  v18 = " recommendation." + 0x8000000000000000;
  v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
  v21 = 0xD000000000000022;
LABEL_19:
  *v20 = v21;
  *(v20 + 8) = v18;
  *(v20 + 16) = 0;
  *(v20 + 32) = 0;
  *(v20 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

void *specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a5;
  if (*(a4 + 16))
  {
    v62 = *(a4 + 16);
    a4;
    v65 = a4;
    v8 = (a4 + 72);
    v79 = _swiftEmptyDictionarySingleton;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v74 = v9;
      v78 = v10;
      v76 = *(v8 - 5);
      v77 = *(v8 - 4);
      LODWORD(v71) = *(v8 - 24);
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v73 = v8;
      v14 = *v8;
      outlined copy of MLRecommender.Identifier(v76, v77, v71);
      outlined copy of MLRecommender.Identifier(v12, v13, v14);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v74, 0);
      v15 = swift_allocObject(&unk_390678, 32, 7);
      *(v15 + 16) = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v72 = v15;
      *(v15 + 24) = 0;
      v75 = v12;
      v61 = v13;
      LODWORD(v74) = v14;
      outlined copy of MLRecommender.Identifier(v12, v13, v14);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v78, v11);
      v16 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v79);
      v69[0] = v16;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v77, v71);
      LOBYTE(v78) = v19;
      v20 = (v19 & 1) == 0;
      v21 = __OFADD__(*(v16 + 16), v20);
      v22 = *(v16 + 16) + v20;
      if (v21)
      {
        BUG();
      }

      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, Set<MLRecommender.Identifier>>);
      v23 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v24 = v69[0];
      v79 = v69[0];
      if (v23)
      {
        v25 = v77;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v77, v71);
        LOBYTE(v28) = v28 & 1;
        v29 = v78;
        if ((v78 & 1) != v28)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v25, v28, v26, v27);
          BUG();
        }

        v24 = v79;
      }

      else
      {
        v29 = v78;
      }

      v24;
      v30 = v71;
      LODWORD(v78) = v71;
      if ((v29 & 1) == 0)
      {
        v31 = v78;
        v32 = *(v72 + 24);
        v33 = (*(v72 + 16))();
        v24 = v79;
        v79[(v18 >> 6) + 8] |= 1 << v18;
        v34 = v24[6];
        v35 = 24 * v18;
        v36 = v76;
        *(v34 + v35) = v76;
        v37 = v77;
        *(v34 + v35 + 8) = v77;
        *(v34 + v35 + 16) = v30;
        *(v24[7] + 8 * v18) = v33;
        v38 = v24[2];
        v21 = __OFADD__(1, v38);
        v39 = v38 + 1;
        if (v21)
        {
          BUG();
        }

        v24[2] = v39;
        outlined copy of MLRecommender.Identifier(v36, v37, v31);
      }

      v40 = v24[7] + 8 * v18;

      v41 = v75;
      specialized Set._Variant.insert(_:)(v69, v75, v61, v74);
      outlined consume of MLRecommender.Identifier(v69[0], v69[1], v70);
      outlined consume of MLRecommender.Identifier(v76, v77, v78);
      outlined consume of MLRecommender.Identifier(v41, v61, v74);
      v8 = v73 + 48;
      v9 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v10 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v11 = v72;
      --v62;
    }

    while (v62);
    v65;
    v73 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    v75 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
    v42 = a1;
    v43 = v79;
    v6 = a5;
  }

  else
  {
    v42 = a1;
    v43 = _swiftEmptyDictionarySingleton;
    v75 = 0;
    v73 = 0;
    v72 = 0;
  }

  v44 = _swiftEmptyArrayStorage;
  v69[0] = _swiftEmptyArrayStorage;
  if (*(v42 + 16))
  {
    v67 = *(v42 + 16);
    v42;
    v45 = (v42 + 48);
    LODWORD(v78) = v6;
    v79 = v43;
    while (1)
    {
      v46 = *(v45 - 2);
      v47 = *(v45 - 1);
      v71 = v43[2];
      v74 = v45;
      v48 = *v45;
      outlined copy of MLRecommender.Identifier(v46, v47, *v45);
      v49 = &_swiftEmptySetSingleton;
      v50 = v47;
      v51 = v46;
      v52 = v48;
      if (v71)
      {
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v50, v48);
        v49 = &_swiftEmptySetSingleton;
        if (v54)
        {
          v55 = *(v79[7] + 8 * v53);
          v55;
          v49 = v55;
        }
      }

      LODWORD(v76) = v52;
      v56 = v50;
      v77 = v50;
      v57 = v49;
      v58 = specialized RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(v51, v56, v52, a2, a3, v49, v78);
      v57;
      if (v5)
      {
        break;
      }

      specialized Array.append<A>(contentsOf:)(v58);
      outlined consume of MLRecommender.Identifier(v51, v77, v76);
      v45 = v74 + 24;
      v59 = v67-- == 1;
      v43 = v79;
      if (v59)
      {
        v79;
        a1;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v75, 0);
        v44 = v69[0];
        goto LABEL_23;
      }
    }

    outlined consume of MLRecommender.Identifier(v51, v77, v76);
    a1;
    v44 = v69[0];
    v79;
    v44;
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v75, 0);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v73, v72);
  }

  else
  {
    v43;
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v75, 0);
LABEL_23:
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v73, v72);
  }

  return v44;
}

uint64_t specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v71 = a1;
  if (*(a4 + 16))
  {
    v72 = *(a4 + 16);
    a4;
    v66 = a4;
    v7 = (a4 + 72);
    v8 = _swiftEmptyDictionarySingleton;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v74 = v9;
      v75 = v10;
      i = v8;
      v77 = *(v7 - 5);
      v73 = *(v7 - 4);
      v80 = *(v7 - 24);
      v12 = *(v7 - 2);
      v13 = *(v7 - 1);
      v79 = v7;
      v14 = *v7;
      outlined copy of MLRecommender.Identifier(v77, v73, v80);
      outlined copy of MLRecommender.Identifier(v12, v13, v14);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v74, 0);
      v15 = swift_allocObject(&unk_390650, 32, 7);
      *(v15 + 16) = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v69 = v15;
      *(v15 + 24) = 0;
      v78 = v12;
      v70 = v13;
      LODWORD(v74) = v14;
      outlined copy of MLRecommender.Identifier(v12, v13, v14);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v75, v11);
      v16 = i;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(i);
      v67[0] = v16;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v73, v80);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(i[2], v20);
      v22 = i[2] + v20;
      if (v21)
      {
        BUG();
      }

      v23 = v18;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, Set<MLRecommender.Identifier>>);
      v24 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v25 = v67[0];
      if (v24)
      {
        v26 = v73;
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v73, v80);
        LOBYTE(v29) = v29 & 1;
        if ((v23 & 1) != v29)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v26, v29, v27, v28);
          BUG();
        }
      }

      v30 = v80;
      v25;
      LODWORD(v75) = v30;
      if ((v23 & 1) == 0)
      {
        v31 = v75;
        v32 = *(v69 + 24);
        v33 = (*(v69 + 16))();
        v25[(v19 >> 6) + 8] |= 1 << v19;
        v34 = v25[6];
        v35 = 24 * v19;
        v36 = v77;
        *(v34 + v35) = v77;
        v37 = v73;
        *(v34 + v35 + 8) = v73;
        *(v34 + v35 + 16) = v80;
        *(v25[7] + 8 * v19) = v33;
        v38 = v25[2];
        v21 = __OFADD__(1, v38);
        v39 = v38 + 1;
        if (v21)
        {
          BUG();
        }

        v25[2] = v39;
        outlined copy of MLRecommender.Identifier(v36, v37, v31);
      }

      v40 = v25[7] + 8 * v19;

      v41 = v78;
      i = v25;
      v42 = v70;
      specialized Set._Variant.insert(_:)(v67, v78, v70, v74);
      outlined consume of MLRecommender.Identifier(v67[0], v67[1], v68);
      outlined consume of MLRecommender.Identifier(v77, v73, v75);
      v8 = i;
      outlined consume of MLRecommender.Identifier(v41, v42, v74);
      v7 = v79 + 48;
      v9 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
      v10 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v11 = v69;
      v72 = (v72 - 1);
    }

    while (v72);
    v66;
    v70 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    v72 = specialized implicit closure #1 in RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:);
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
    v72 = 0;
    v70 = 0;
    v69 = 0;
  }

  v67[0] = _swiftEmptyArrayStorage;
  v43 = -1 << *(v71 + 32);
  v44 = ~(-1 << -v43);
  if (-v43 >= 64)
  {
    v44 = -1;
  }

  v45 = *(v71 + 56) & v44;
  v79 = (v71 + 56);
  v78 = (63 - v43) >> 6;
  v71;
  v46 = 0;
  for (i = v8; ; v8 = i)
  {
    if (v45)
    {
      v47 = v45;
      v48 = v46;
      goto LABEL_33;
    }

    v48 = v46 + 1;
    if (__OFADD__(1, v46))
    {
      BUG();
    }

    if (v48 >= v78)
    {
      goto LABEL_42;
    }

    v47 = *&v79[8 * v48];
    if (!v47)
    {
      break;
    }

LABEL_33:
    v75 = v45;
    v74 = v47;
    _BitScanForward64(&v50, v47);
    v73 = v48;
    v51 = v50 | (v48 << 6);
    v52 = *(v71 + 48);
    v51 *= 24;
    v53 = *(v52 + v51 + 8);
    v54 = v8[2];
    v55 = *(v52 + v51 + 16);
    v77 = *(v52 + v51);
    v80 = v55;
    outlined copy of MLRecommender.Identifier(v77, v53, v55);
    v56 = &_swiftEmptySetSingleton;
    if (v54)
    {
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v53, v80);
      v56 = &_swiftEmptySetSingleton;
      if (v58)
      {
        v56 = *(v8[7] + 8 * v57);
        v56;
      }
    }

    v59 = specialized RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(v77, v53, v80, a2, a3, v56, a5);
    v60 = v53;
    v56;
    if (v5)
    {
      outlined consume of MLRecommender.Identifier(v77, v53, v80);
      outlined consume of [String : [Double]].Iterator._Variant(v71);
      v61 = v67[0];
      i;
      v61;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v72, 0);
      return _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, v69);
    }

    v45 = v74 & (v74 - 1);
    specialized Array.append<A>(contentsOf:)(v59);
    outlined consume of MLRecommender.Identifier(v77, v60, v80);
    v46 = v73;
  }

  v49 = v46 + 2;
  if (v46 + 2 >= v78)
  {
    goto LABEL_42;
  }

  v47 = *&v79[8 * v48 + 8];
  if (v47)
  {
    goto LABEL_32;
  }

  v49 = v46 + 3;
  if (v46 + 3 >= v78)
  {
    goto LABEL_42;
  }

  v47 = *&v79[8 * v48 + 16];
  if (v47)
  {
    goto LABEL_32;
  }

  v49 = v46 + 4;
  if (v46 + 4 >= v78)
  {
    goto LABEL_42;
  }

  v47 = *&v79[8 * v48 + 24];
  if (v47)
  {
    goto LABEL_32;
  }

  v49 = v46 + 5;
  if (v46 + 5 >= v78)
  {
    goto LABEL_42;
  }

  v47 = *&v79[8 * v48 + 32];
  if (v47)
  {
    goto LABEL_32;
  }

  v49 = v46 + 6;
  if (v46 + 6 >= v78)
  {
    goto LABEL_42;
  }

  v47 = *&v79[8 * v48 + 40];
  if (v47)
  {
    goto LABEL_32;
  }

  v49 = v46 + 7;
  if (v46 + 7 >= v78)
  {
    goto LABEL_42;
  }

  v47 = *&v79[8 * v48 + 48];
  if (v47)
  {
LABEL_32:
    v48 = v49;
    goto LABEL_33;
  }

  while (1)
  {
    v48 = v49 + 1;
    if (v49 + 1 >= v78)
    {
      break;
    }

    v47 = *(v71 + 8 * v49++ + 64);
    if (v47)
    {
      goto LABEL_33;
    }
  }

LABEL_42:
  outlined consume of [String : [Double]].Iterator._Variant(v71);
  v8;
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v72, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, v69);
  return v67[0];
}

uint64_t MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, __m128 a7, __int128 *a8, uint64_t a9)
{
  v38 = v9;
  v37 = a2;
  v36 = v10;
  v43 = a5;
  v12 = *a1;
  v13 = *(a1 + 8);
  v41 = *a3;
  v48 = *(a3 + 8);
  v39 = *a4;
  v47 = *(a4 + 8);
  v34 = v12;
  v45 = v12;
  outlined copy of Result<_DataTable, Error>(v12, v13);
  v44 = a6;
  v42 = type metadata accessor for MLDataColumn(0, a6, a8, v14);
  v15 = MLDataColumn.count.getter(v42);
  outlined consume of Result<_DataTable, Error>(v34, v13 & 1);
  if (v15 < 0)
  {
    BUG();
  }

  v40 = &v34;
  v34 = 0;
  v35 = v15;
  v16 = alloca(49);
  v17 = alloca(64);
  v18 = v44;
  v36 = v44;
  v37 = a8;
  v38 = a9;
  v39 = v45;
  LOBYTE(v40) = v13 & 1;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v20 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v21 = v46;
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:), &v34, v19, v18, &type metadata for Never, v20, &protocol witness table for Never, v33);
  v46 = v21;
  if (v48 == -1)
  {
    ML12MLIdentifier_ps5NeverOTg5 = 0;
    v27 = v44;
  }

  else
  {
    v23 = v41;
    v34 = v41;
    LOBYTE(v35) = v48 & 1;
    outlined copy of Result<_DataTable, Error>(v41, v48);
    v24 = MLDataColumn.count.getter(v42);
    outlined consume of Result<_DataTable, Error>(v34, v35);
    if (v24 < 0)
    {
      BUG();
    }

    v45 = v49;
    v25 = alloca(49);
    v26 = alloca(64);
    v27 = v44;
    v49[2] = v44;
    v49[3] = a8;
    savedregs = a9;
    retaddr = v23;
    v28 = v46;
    ML12MLIdentifier_ps5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML12MLIdentifier_ps5NeverOTg5(partial apply for closure #2 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:), v49, 0, v24);
    v46 = v28;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLIdentifier);
  v31 = _arrayForceCast<A, B>(_:)(v22, v27, v30);
  v22;
  v34 = v39;
  LOBYTE(v35) = v47;
  MLRecommender.recommendations(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(v31, v37, ML12MLIdentifier_ps5NeverOTg5, &v34, v43, a7);
  v31;
  return ML12MLIdentifier_ps5NeverOTg5;
}

uint64_t closure #1 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = *a1;
  v12 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v10 = type metadata accessor for MLDataColumn(0, a4, a5, v9);
  MLDataColumn.subscript.getter(v8, v10, a6);
  return outlined consume of Result<_DataTable, Error>(a2, v12);
}

uint64_t closure #2 in MLRecommender.recommendations<A>(fromUsers:maxCount:restrictingToItems:excluding:excludingObserved:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = *a1;
  v13 = a3 & 1;
  v7[3] = a4;
  v7[4] = a6;
  __swift_allocate_boxed_opaque_existential_0(v7);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v11 = type metadata accessor for MLDataColumn(0, a4, a5, v10);
  MLDataColumn.subscript.getter(v14, v11, a7);
  return outlined consume of Result<_DataTable, Error>(a2, v13);
}

void *specialized RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(Swift::UInt a1, uint64_t a2, char a3, __int128 *a4, uint64_t a5, uint64_t a6, char a7)
{
  v51 = v7;
  v9 = v8;
  v50 = a6;
  v49 = a4;
  v44[0] = a1;
  v44[1] = a2;
  v45 = a3 & 1;
  v48 = v9;
  qmemcpy(v43, v9, sizeof(v43));
  v11 = specialized CategoricalLookupTable.index(of:)(a1, a2, a3 & 1, *&v43[0], *(&v43[0] + 1));
  v13 = v12;
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v43);
  v14 = v51;
  v15 = specialized Sequence.compactMap<A>(_:)(a5, v43);
  v51 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(v15);
  outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(v43);
  v16 = specialized Sequence.compactMap<A>(_:)(v50, v43);
  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(v16);
  LOBYTE(v50) = v13;
  v46 = v11;
  if (v13)
  {
    v18 = &_swiftEmptySetSingleton;
    v19 = v14;
  }

  else
  {
    v47 = v17;
    v34 = v43[3];
    v33 = v43[2];
    v35 = v43[4];
    v36 = v11;
    v39 = *(&v43[3] + 1);
    v40 = v43[4];
    outlined retain of [Int](&v39);
    outlined retain of [Int](&v40);
    outlined retain of ContiguousArray<Double>(&v40 + 1);
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(&v33);
    v19 = v14;
    outlined release of SparseMatrix<Double>.MajorCollection(&v33, v43);
    v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(v20);
    v17 = v47;
  }

  if (*(v51 + 16))
  {
    v21 = v19;
    v22 = specialized Sequence.filter(_:)(v51, v17, a7, v18);
  }

  else
  {
    v23 = v17;
    v51;
    v21 = v19;
    v22 = specialized Sequence.filter(_:)(0, *(*&v43[1] + 16), v23, a7, v18);
  }

  v24 = v22;
  v51 = v21;
  if (v50)
  {
    v25 = specialized RecommenderModel.scoreAll<A>(itemIndices:userScores:)(v22, _swiftEmptyArrayStorage);
  }

  else
  {
    v37[1] = v43[3];
    v37[0] = v43[2];
    v37[2] = v43[4];
    v38 = v46;
    v41 = *(&v43[3] + 1);
    v42 = v43[4];
    outlined retain of [Int](&v41);
    outlined retain of [Int](&v42);
    outlined retain of ContiguousArray<Double>(&v42 + 1);
    v25 = specialized RecommenderModel.scoreAll<A>(itemIndices:userScores:)(v24, v37);
    outlined release of SparseMatrix<Double>.MajorCollection(v37, v37);
  }

  v26 = v25[2];
  if (v26 >= v49)
  {
    v26 = v49;
  }

  if (v49 < 0)
  {
    BUG();
  }

  if (v26 <= 0)
  {
    v28 = _swiftEmptyArrayStorage;
  }

  else
  {
    v27 = v51;
    v28 = specialized Sequence._minImplementation(count:sortedBy:)(v26, v24, v25);
    v51 = v27;
  }

  v25;
  v24;
  v49 = &v33;
  v29 = alloca(40);
  v30 = alloca(48);
  *&v34 = v44;
  *(&v34 + 1) = v48;
  *&v35 = v28;
  ML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5(partial apply for specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:), &v33, 0, v26);
  v28;
  return ML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5;
}

_BYTE *MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *_, uint64_t a8, char a9)
{
  v185._countAndFlagsBits = a4;
  to._object = a3;
  v166 = v9;
  v195._countAndFlagsBits = a2;
  to._countAndFlagsBits = v10;
  __src = v11;
  v182._countAndFlagsBits = a6;
  v184 = a5;
  v180 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v171 = *(v180 - 8);
  v13 = *(v171 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v169 = __dst;
  v189 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v174 = *(v189 - 8);
  v16 = *(v174 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v178 = __dst;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v182._object = __dst;
  v172 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v173 = *(v172 - 8);
  v21 = *(v173 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v170 = __dst;
  v187 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v175 = *(v187 - 8);
  v24 = *(v175 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v190 = __dst;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v177 = __dst;
  v181 = type metadata accessor for AnyColumn(0);
  v164 = *(v181 - 8);
  v29 = *(v164 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v165 = __dst;
  v176 = type metadata accessor for DataFrame(0);
  v32 = *(v176 - 8);
  v33 = *(v32 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v185._object = __dst;
  v192 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v192, v161);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v195._countAndFlagsBits;
  object = to._object;
  inited[5] = to._object;
  object;
  v188 = a1;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE400000000000000, 1919251285));
  if (v38)
  {
    goto LABEL_6;
  }

  v179 = v32;
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  inited = swift_initStackObject(v192, v162);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v185._countAndFlagsBits;
  v39 = v184;
  inited[5] = v184;
  v39;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE400000000000000, 1835365449));
  if (v40)
  {
    goto LABEL_6;
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (_)
  {
    inited = swift_initStackObject(v192, v163);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v182._countAndFlagsBits;
    inited[5] = _;
    _;
    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE600000000000000, 0x676E69746152));
    countAndFlagsBits = v195._countAndFlagsBits;
    if (v42)
    {
LABEL_6:
      swift_setDeallocating(inited);
      return specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    v183 = 0;
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v183 = 0;
    countAndFlagsBits = v195._countAndFlagsBits;
  }

  v44 = swift_allocObject(v192, 64, 7);
  v44[2] = 2;
  v44[3] = 4;
  v44[4] = countAndFlagsBits;
  v45 = to._object;
  v44[5] = to._object;
  v44[6] = v185._countAndFlagsBits;
  v46 = v184;
  v44[7] = v184;
  v45;
  v46;
  DataFrame.selecting(columnNames:)(v44);
  v44;
  v47 = __src;
  v49._countAndFlagsBits = v195._countAndFlagsBits;
  v49._object = v45;
  v50 = *(__src + 21);
  v195._countAndFlagsBits = *(__src + 20);
  v48._countAndFlagsBits = v195._countAndFlagsBits;
  v48._object = v50;
  DataFrame.renameColumn(_:to:)(v49, v48);
  v51._object = *(v47 + 23);
  v49._countAndFlagsBits = v185._countAndFlagsBits;
  v49._object = v184;
  v185._countAndFlagsBits = *(v47 + 22);
  v51._countAndFlagsBits = v185._countAndFlagsBits;
  v184 = v51._object;
  DataFrame.renameColumn(_:to:)(v49, v51);
  v52 = v47;
  if (_)
  {
    v53 = *(v47 + 25);
    if (v53)
    {
      to._countAndFlagsBits = v52[24];
      to._object = v50;
      v54 = v165;
      v55 = v182._countAndFlagsBits;
      DataFrame.subscript.getter(v182._countAndFlagsBits, _);
      DataFrame.append(column:)(v54);
      v56 = v54;
      v50 = to._object;
      (*(v164 + 8))(v56, v181);
      v57._countAndFlagsBits = v55;
      v57._object = _;
      v58._countAndFlagsBits = to._countAndFlagsBits;
      v58._object = v53;
      DataFrame.renameColumn(_:to:)(v57, v58);
      v52 = __src;
    }
  }

  v182._countAndFlagsBits = type metadata accessor for MLRecommender(0);
  LOBYTE(v181) = *(v52 + *(v182._countAndFlagsBits + 40));
  if (v181 == 1)
  {
    v59 = v170;
    DataFrame.subscript.getter(v195._countAndFlagsBits, v50, &type metadata for Int);
    v167 = 0;
    v60 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v61 = v177;
    v62 = v172;
    OptionalColumnProtocol.filled(with:)(&v167, v172, v60);
    v63 = v62;
    v64 = v61;
    (*(v173 + 8))(v59, v63);
    v65 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v66 = v187;
    v67 = dispatch thunk of Collection.count.getter(v187, v65);
    if (v67)
    {
      v193 = _swiftEmptyArrayStorage;
      v69 = 0;
      if (v67 > 0)
      {
        v69 = v67;
      }

      v195._countAndFlagsBits = v67;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69, 0);
      v70 = v65;
      v71 = v193;
      to._countAndFlagsBits = v70;
      dispatch thunk of Collection.startIndex.getter(v66, v70);
      v72 = v195._countAndFlagsBits;
      if (v195._countAndFlagsBits < 0)
      {
        BUG();
      }

      v68 = to._countAndFlagsBits;
      v73 = v187;
      v74 = v177;
      do
      {
        v195._countAndFlagsBits = v72;
        v75 = v74;
        v76 = v73;
        v77 = dispatch thunk of Collection.subscript.read(&v167, v194, v73, v68);
        to._object = *v78;
        v77(&v167, 0);
        v193 = v71;
        v79 = v71[2];
        v80 = v76;
        if (v71[3] >> 1 <= v79)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71[3] >= 2uLL, v79 + 1, 1);
          v80 = v187;
          v71 = v193;
        }

        v71[2] = v79 + 1;
        v81 = 3 * v79;
        v71[v81 + 4] = to._object;
        v71[v81 + 5] = 0;
        LOBYTE(v71[v81 + 6]) = 1;
        v82 = v80;
        v83 = to._countAndFlagsBits;
        dispatch thunk of Collection.formIndex(after:)(v194, v80, to._countAndFlagsBits);
        v72 = v195._countAndFlagsBits - 1;
        v73 = v82;
        v74 = v75;
        v68 = v83;
      }

      while (v195._countAndFlagsBits != 1);
      v192 = v71;
    }

    else
    {
      v192 = _swiftEmptyArrayStorage;
      v73 = v66;
      v74 = v64;
    }

    v102 = v74;
    v103 = v73;
    v104 = v175;
  }

  else
  {
    v84 = v169;
    DataFrame.subscript.getter(v195._countAndFlagsBits, v50, &type metadata for String);
    v167 = 0;
    v168 = 0xE000000000000000;
    v85 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v86 = v180;
    OptionalColumnProtocol.filled(with:)(&v167, v180, v85);
    (*(v171 + 8))(v84, v86);
    v87 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v88 = v189;
    v89 = dispatch thunk of Collection.count.getter(v189, v87);
    if (v89)
    {
      v193 = _swiftEmptyArrayStorage;
      v90 = 0;
      if (v89 > 0)
      {
        v90 = v89;
      }

      v91 = v89;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
      v192 = v193;
      dispatch thunk of Collection.startIndex.getter(v88, v87);
      if (v91 < 0)
      {
        BUG();
      }

      v92 = v91;
      v93 = v87;
      v94 = v192;
      v73 = v189;
      to._countAndFlagsBits = v93;
      do
      {
        v195._countAndFlagsBits = v92;
        v95 = dispatch thunk of Collection.subscript.read(&v167, v194, v73, v93);
        to._object = *v96;
        v97 = *(v96 + 8);
        v97;
        v95(&v167, 0);
        v193 = v94;
        v98 = v94[2];
        v99 = v98 + 1;
        if (v94[3] >> 1 <= v98)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v94[3] >= 2uLL, v98 + 1, 1);
          v99 = v98 + 1;
          v94 = v193;
        }

        v94[2] = v99;
        v100 = 3 * v98;
        v94[v100 + 4] = to._object;
        v94[v100 + 5] = v97;
        LOBYTE(v94[v100 + 6]) = 0;
        v101 = v189;
        v93 = to._countAndFlagsBits;
        dispatch thunk of Collection.formIndex(after:)(v194, v189, to._countAndFlagsBits);
        v92 = v195._countAndFlagsBits - 1;
        v73 = v101;
      }

      while (v195._countAndFlagsBits != 1);
      v192 = v94;
    }

    else
    {
      v192 = _swiftEmptyArrayStorage;
      v73 = v88;
    }

    v102 = v182._object;
    v103 = v73;
    v104 = v174;
  }

  (*(v104 + 8))(v102, v103, v73, v68);
  v105 = v180;
  v106 = v169;
  if (*(__src + *(v182._countAndFlagsBits + 44)) == 1)
  {
    v107 = v170;
    DataFrame.subscript.getter(v185._countAndFlagsBits, v184, &type metadata for Int);
    v167 = 0;
    v108 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v109 = v172;
    OptionalColumnProtocol.filled(with:)(&v167, v172, v108);
    (*(v173 + 8))(v107, v109);
    v110 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v111 = v187;
    v112 = dispatch thunk of Collection.count.getter(v187, v110);
    if (v112)
    {
      v115 = v112;
      v193 = _swiftEmptyArrayStorage;
      v116 = 0;
      if (v112 > 0)
      {
        v116 = v112;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116, 0);
      v117 = v110;
      v118 = v193;
      v189 = v117;
      dispatch thunk of Collection.startIndex.getter(v111, v117);
      v195._countAndFlagsBits = v115;
      if (v115 < 0)
      {
        BUG();
      }

      v119 = v189;
      v120 = v187;
      do
      {
        v121 = v119;
        v122 = v120;
        v123 = dispatch thunk of Collection.subscript.read(&v167, v194, v120, v121);
        v125 = *v124;
        v123(&v167, 0);
        v193 = v118;
        v126 = v122;
        v127 = v118[2];
        v128 = v127 + 1;
        if (v118[3] >> 1 <= v127)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v118[3] >= 2uLL, v128, 1);
          v126 = v187;
          v118 = v193;
        }

        v118[2] = v128;
        v129 = 3 * v127;
        v118[v129 + 4] = v125;
        v118[v129 + 5] = 0;
        LOBYTE(v118[v129 + 6]) = 1;
        v130 = v190;
        v131 = v126;
        v119 = v189;
        dispatch thunk of Collection.formIndex(after:)(v194, v126, v189);
        v132 = v195._countAndFlagsBits-- == 1;
        v120 = v131;
        v114 = v130;
      }

      while (!v132);
      v147 = v130;
    }

    else
    {
      v118 = _swiftEmptyArrayStorage;
      v147 = v190;
      v120 = v111;
    }

    v148 = v120;
    v149 = v175;
  }

  else
  {
    DataFrame.subscript.getter(v185._countAndFlagsBits, v184, &type metadata for String);
    v167 = 0;
    v168 = 0xE000000000000000;
    v133 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v134 = v178;
    OptionalColumnProtocol.filled(with:)(&v167, v105, v133);
    (*(v171 + 8))(v106, v105);
    v135 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v136 = v189;
    v137 = dispatch thunk of Collection.count.getter(v189, v135);
    if (v137)
    {
      v193 = _swiftEmptyArrayStorage;
      v138 = 0;
      if (v137 > 0)
      {
        v138 = v137;
      }

      v195._countAndFlagsBits = v137;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138, 0);
      to._object = v193;
      v190 = v135;
      dispatch thunk of Collection.startIndex.getter(v136, v135);
      v139 = v195._countAndFlagsBits;
      if (v195._countAndFlagsBits < 0)
      {
        BUG();
      }

      v140 = v190;
      v141 = to._object;
      v120 = v178;
      do
      {
        v195._countAndFlagsBits = v139;
        v142 = v120;
        v143 = dispatch thunk of Collection.subscript.read(&v167, v194, v136, v140);
        to._object = *v144;
        to._countAndFlagsBits = *(v144 + 8);
        to._countAndFlagsBits;
        v143(&v167, 0);
        v193 = v141;
        v145 = v141[2];
        if (v141[3] >> 1 <= v145)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v141[3] >= 2uLL, v145 + 1, 1);
          v141 = v193;
        }

        v141[2] = v145 + 1;
        v146 = 3 * v145;
        v141[v146 + 4] = to._object;
        v141[v146 + 5] = to._countAndFlagsBits;
        LOBYTE(v141[v146 + 6]) = 0;
        v136 = v189;
        v140 = v190;
        dispatch thunk of Collection.formIndex(after:)(v194, v189, v190);
        v139 = v195._countAndFlagsBits - 1;
        v120 = v142;
      }

      while (v195._countAndFlagsBits != 1);
      v118 = v141;
    }

    else
    {
      v118 = _swiftEmptyArrayStorage;
      v120 = v134;
    }

    v147 = v120;
    v148 = v136;
    v149 = v174;
  }

  (*(v149 + 8))(v147, v148, v120, v113, v114);
  v150 = __src;
  v151 = v192;
  v192;
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(v151);
  memcpy(__dst, v150, sizeof(__dst));
  v153 = *(a8 + 16);
  if (!v153)
  {
    BUG();
  }

  v154 = v183;
  v155 = specialized RecommenderModel.recommend<A>(users:limit:allowedItems:excludedInteractions:omittingObservedInteractions:)(ML13MLRecommenderV10IdentifierO_SayAHGTt0g5, *(a8 + 8 * v153 + 24), &_swiftEmptySetSingleton, _swiftEmptyArrayStorage, a9);
  if (v154)
  {
    v192;
    v118;
    (*(v179 + 8))(v185._object, v176);
    return ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  }

  else
  {
    v156 = v155;
    ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
    v157 = v192;
    ML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CreateML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n(v192, v118);
    v183 = 0;
    v118;
    v157;
    ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5 = _s8CreateML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5(ML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n, v156, closure #6 in MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:), 0, a8);
    ML13MLRecommenderV10IdentifierOGAMG_AL4user_AL4itemts5NeverOTg503_s8f4ML13h3V10i35OA3EIgggoo_AE_AEtAE4user_AE4itemts5L188OIegnrzr_TR03_s8a4ML13c126V8evaluate2on10userColumn04itemG006ratingG07cutoffs17excludingObservedAA0C7MetricsV11TabularData0O5FrameV_S3SSgSaySiGSbtKFAC10D23O0F0_AS0H0tAS_AStXEfU3_Tf3nnnpf_nTf1cn_n;
    v156;
    (*(v179 + 8))(v185._object, v176);
    result = v166;
    *v166 = v181;
    *(result + 1) = ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5;
    result[16] = a9 & 1;
    *(result + 3) = 0;
  }

  return result;
}

uint64_t MLRecommender.evaluation(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *_, uint64_t a8, char a9)
{
  *v20 = a4;
  *v25 = a3;
  *v22 = a2;
  *v21 = a6;
  *v23 = a5;
  v10 = type metadata accessor for DataFrame(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(a1 + 8);
  v18 = *a1;
  v19 = v14;
  outlined copy of Result<_DataTable, Error>(v18, v14);
  DataFrame.init(_:)(&v18);
  v15 = *v25;
  *v25 = v9;
  MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(v17, *v22, v15, *v20, *v23, *v21, _, a8, a9);
  return (*(v24 + 8))(v17, v10);
}

uint64_t closure #6 in MLRecommender.evaluate(on:userColumn:itemColumn:ratingColumn:cutoffs:excludingObserved:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v6;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v7;
  outlined copy of MLRecommender.Identifier(v2, v3, v6);
  return outlined copy of MLRecommender.Identifier(v4, v5, v7);
}

void *_s8CreateML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_SaySiGtSTRd__STRd_0_x4user_q_4itemt7ElementRtd__xAM_q_ANtAORtd_0_r0_lFZAA13MLRecommenderV10IdentifierO_AUSayAuM_AuNtGs15LazyMapSequenceVySayAA0I0VyA2UGGAuM_AuNtGTt2g5(void *(*a1)(), uint64_t a2, void (*a3)(uint64_t *), unint64_t a4, uint64_t a5)
{
  v137 = a5;
  v145 = a4;
  v138 = a3;
  v139 = a2;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(user: MLRecommender.Identifier, item: MLRecommender.Identifier)]);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<[Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>], (user: MLRecommender.Identifier, item: MLRecommender.Identifier)>);
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [(user: MLRecommender.Identifier, item: MLRecommender.Identifier)] and conformance [A], &demangling cache variable for type metadata for [(user: MLRecommender.Identifier, item: MLRecommender.Identifier)], &protocol conformance descriptor for [A]);
  lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<[Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>], (user: MLRecommender.Identifier, item: MLRecommender.Identifier)> and conformance LazyMapSequence<A, B>, &demangling cache variable for type metadata for LazyMapSequence<[Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>], (user: MLRecommender.Identifier, item: MLRecommender.Identifier)>, &protocol conformance descriptor for LazyMapSequence<A, B>);
  KeyPath = swift_getKeyPath(&unk_33FCB0);

  ML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n(a1, KeyPath);

  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(ML13MLRecommenderV10IdentifierO4user_AJ4itemtG_AJs5NeverOTg503_s8d99ML16RecommenderModelV7metrics8expected9predicted7cutoffsSayAA21RecommendationMetricsVyxGGqd___qd_0_p10SiGtSTRd__y19_0_x4user_q_4itemt7b48Rtd__xAM_q_ANtAORtd_0_r0_lFZxxAM_q_ANt_tcfu_AA13f3V10g36O_AUSayAuM_AuNtGs15LazyMapSequenceVyP24AA0I0VyA2UGGAuM_AuNtGTG5s7KeyPathCyAjK_AjLtAJGTf1cn_n);
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  v8 = specialized _copyCollectionToContiguousArray<A>(_:)(ML13MLRecommenderV10IdentifierO_SayAHGTt0g5);
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  v125[0] = v8;
  specialized MutableCollection<>.sort(by:)(v125, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  ML13MLRecommenderV10IdentifierO_SayAHGTt0g5;
  v9 = *(v137 + 16);
  v133 = v125[0];
  v10 = v9 * *(v125[0] + 16);
  if (!is_mul_ok(v9, *(v125[0] + 16)))
  {
    BUG();
  }

  v132 = v9;
  v140 = 0;
  if (v10 <= 0)
  {
    v10 = 0;
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0, _swiftEmptyArrayStorage);
  v12 = *(a1 + 2);
  v13 = _swiftEmptyDictionarySingleton;
  v134 = 0;
  v14 = 0;
  v148 = _swiftEmptyDictionarySingleton;
  v144 = v11;
  if (v12)
  {
    v149 = v12;
    a1;
    v140 = a1;
    v15 = a1 + 72;
    v154 = _swiftEmptyDictionarySingleton;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v152 = v18;
      v157 = v17;
      v156 = *(v15 - 5);
      i = *(v15 - 4);
      v19 = *(v15 - 24);
      LODWORD(v146) = v19;
      v20 = *(v15 - 2);
      v21 = *(v15 - 1);
      v147 = v15;
      v22 = *v15;
      outlined copy of MLRecommender.Identifier(v156, i, v19);
      outlined copy of MLRecommender.Identifier(v20, v21, v22);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v16, 0);
      v23 = swift_allocObject(&unk_390600, 32, 7);
      *(v23 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v143 = v23;
      *(v23 + 24) = 0;
      v141 = v20;
      v142 = v21;
      LODWORD(v153) = v22;
      outlined copy of MLRecommender.Identifier(v20, v21, v22);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v157, v152);
      v24 = v154;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v154);
      v125[0] = v24;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v156, i, v146);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(*(v24 + 16), v28);
      v30 = *(v24 + 16) + v28;
      if (v29)
      {
        BUG();
      }

      v31 = v26;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, [MLRecommender.Identifier]>);
      v32 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30);
      v33 = v125[0];
      v154 = v125[0];
      if (v32)
      {
        v34 = i;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v156, i, v146);
        LOBYTE(v37) = v37 & 1;
        v38 = v143;
        if ((v31 & 1) != v37)
        {
LABEL_64:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v34, v37, v35, v36);
          BUG();
        }

        v33 = v154;
      }

      else
      {
        v38 = v143;
      }

      v33;
      LODWORD(v157) = v146;
      if ((v31 & 1) == 0)
      {
        v39 = *(v38 + 24);
        v40 = v146;
        v41 = (*(v38 + 16))();
        v33 = v154;
        v42 = 24 * v27;
        v154[(v27 >> 6) + 8] |= 1 << v27;
        v43 = v33[6];
        v44 = v156;
        *(v43 + v42) = v156;
        v45 = i;
        *(v43 + v42 + 8) = i;
        *(v43 + v42 + 16) = v40;
        *(v33[7] + 8 * v27) = v41;
        v46 = v33[2];
        v29 = __OFADD__(1, v46);
        v47 = v46 + 1;
        if (v29)
        {
          BUG();
        }

        v33[2] = v47;
        outlined copy of MLRecommender.Identifier(v44, v45, v157);
      }

      v48 = v33[7];

      v49 = *(v48 + 8 * v27);
      v50 = swift_isUniquelyReferenced_nonNull_native(v49);
      *(v48 + 8 * v27) = v49;
      if (!v50)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        *(v48 + 8 * v27) = v49;
      }

      v51 = v49[2];
      if (v49[3] >> 1 <= v51)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49[3] >= 2uLL, v51 + 1, 1, v49);
        *(v48 + 8 * v27) = v49;
      }

      v49[2] = v51 + 1;
      v52 = 3 * v51;
      v53 = v141;
      v49[v52 + 4] = v141;
      v54 = v142;
      v49[v52 + 5] = v142;
      v55 = v153;
      LOBYTE(v49[v52 + 6]) = v153 & 1;
      outlined consume of MLRecommender.Identifier(v156, i, v157);
      outlined consume of MLRecommender.Identifier(v53, v54, v55);
      v15 = v147 + 48;
      v16 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v17 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B]);
      v14 = v143;
      v18 = v143;
      --v149;
    }

    while (v149);
    v140;
    v134 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B]);
    v140 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
    v11 = v144;
    v13 = v154;
  }

  v56 = v139;
  v57 = *(v139 + 16);
  v154 = v13;
  v143 = v14;
  if (v57)
  {
    v58 = v57;
    v139;

    v147 = (v58 - 1);
    v59 = (v56 + 88);
    v148 = _swiftEmptyDictionarySingleton;
    *&v146 = 0;
    v156 = 0;
    for (i = 0; ; i = v149)
    {
      v60 = *(v59 - 7);
      v61 = *(v59 - 6);
      v62 = *(v59 - 4);
      v157 = v62;
      v63 = *(v59 - 3);
      v64 = *(v59 - 1);
      v65 = *v59;
      v66 = *(v59 - 40);
      v153 = v59;
      v67 = *(v59 - 16);
      v150 = v66;
      v151 = v67;
      v152 = v60;
      v125[0] = v60;
      v125[1] = v61;
      v126 = v66;
      v127 = v62;
      v128 = v63;
      v129 = v67;
      v130 = v64;
      v131 = v65;
      outlined copy of MLRecommender.Identifier(v60, v61, v66);
      outlined copy of MLRecommender.Identifier(v62, v63, v67);
      v138(v125);
      outlined consume of MLRecommender.Identifier(v152, v61, v66);
      outlined consume of MLRecommender.Identifier(v157, v63, v67);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v146, 0);
      LODWORD(v157) = v121;
      v68 = swift_allocObject(&unk_390628, 32, 7);
      *(v68 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v149 = v68;
      *(v68 + 24) = 0;
      v152 = v122;
      v141 = v123;
      LODWORD(v142) = v124;
      outlined copy of MLRecommender.Identifier(v122, v123, v124);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v156, i);
      v69 = v148;
      v70 = swift_isUniquelyReferenced_nonNull_native(v148);
      v125[0] = v69;
      i = v119;
      *&v146 = v120;
      v71 = v157;
      v156 = specialized __RawDictionaryStorage.find<A>(_:)(v119, v120, v157);
      v73 = (v72 & 1) == 0;
      v29 = __OFADD__(*(v69 + 16), v73);
      v74 = *(v69 + 16) + v73;
      if (v29)
      {
        BUG();
      }

      v75 = v72;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, [MLRecommender.Identifier]>);
      v76 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v70, v74);
      v77 = v125[0];
      if (v76)
      {
        v78 = i;
        v34 = v146;
        v156 = specialized __RawDictionaryStorage.find<A>(_:)(i, v146, v71);
        LOBYTE(v37) = v37 & 1;
        if ((v75 & 1) != v37)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v78 = i;
      }

      v77;
      LODWORD(v157) = v71;
      if ((v75 & 1) == 0)
      {
        v79 = *(v149 + 24);
        v80 = (*(v149 + 16))();
        v81 = v156;
        v82 = 24 * v156;
        v77[(v156 >> 6) + 8] |= 1 << v156;
        v83 = v77[6];
        *(v83 + v82) = v78;
        v84 = v146;
        *(v83 + v82 + 8) = v146;
        *(v83 + v82 + 16) = v71;
        *(v77[7] + 8 * v81) = v80;
        v85 = v77[2];
        v29 = __OFADD__(1, v85);
        v86 = v85 + 1;
        if (v29)
        {
          BUG();
        }

        v77[2] = v86;
        outlined copy of MLRecommender.Identifier(v78, v84, v157);
      }

      v87 = v77[7];
      v148 = v77;

      v88 = v156;
      v89 = *(v87 + 8 * v156);
      v90 = swift_isUniquelyReferenced_nonNull_native(v89);
      *(v87 + 8 * v88) = v89;
      if (!v90)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
        *(v87 + 8 * v156) = v89;
      }

      v91 = v89[2];
      if (v89[3] >> 1 <= v91)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v89[3] >= 2uLL, v91 + 1, 1, v89);
        *(v87 + 8 * v156) = v89;
      }

      v89[2] = v91 + 1;
      v92 = 3 * v91;
      v93 = v152;
      v89[v92 + 4] = v152;
      v94 = v141;
      v89[v92 + 5] = v141;
      v95 = v142;
      LOBYTE(v89[v92 + 6]) = v142 & 1;
      outlined consume of MLRecommender.Identifier(i, v146, v157);
      outlined consume of MLRecommender.Identifier(v93, v94, v95);
      if (!v147)
      {
        break;
      }

      --v147;
      v59 = (v153 + 64);
      *&v146 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v156 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    }

    v139;
    v135 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
    v136 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
    v11 = v144;
    v13 = v154;
  }

  else
  {
    v136 = 0;
    v135 = 0;
    v149 = 0;
  }

  v96 = v133;
  v139 = *(v133 + 16);
  if (v139)
  {
    v97 = 0;
    do
    {
      if (v97 >= *(v96 + 16))
      {
        BUG();
      }

      v144 = v11;
      v145 = v97;
      v98 = 24 * v97;
      v99 = *(v96 + v98 + 32);
      v100 = *(v96 + v98 + 40);
      v101 = *(v96 + v98 + 48);
      LOBYTE(v152) = v101 & 1;
      v102 = v13[2];
      v157 = v99;
      outlined copy of MLRecommender.Identifier(v99, v100, v101);
      v153 = _swiftEmptyArrayStorage;
      if (v102)
      {
        v103 = specialized __RawDictionaryStorage.find<A>(_:)(v157, v100, v152);
        v153 = _swiftEmptyArrayStorage;
        if (v104)
        {
          v153 = *(v154[7] + 8 * v103);
          v153;
        }
      }

      v105 = v148;
      v106 = _swiftEmptyArrayStorage;
      if (v148[2])
      {
        v106 = _swiftEmptyArrayStorage;
        v107 = specialized __RawDictionaryStorage.find<A>(_:)(v157, v100, v152);
        if (v108)
        {
          v106 = *(v105[7] + 8 * v107);
          v106;
        }
      }

      ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5 = _s8CreateML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5(v153, v106, v137);
      v106;
      v110 = v101;
      v138 = ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5;
      if (v132)
      {
        v11 = v144;
        v111 = v157;
        if (v132 > ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5[2])
        {
          BUG();
        }

        v142 = *(v153 + 16);
        v112 = (ML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5 + 4);
        v113 = 0;
        v147 = v100;
        LODWORD(v141) = v110;
        do
        {
          i = *(v137 + 8 * v113 + 32);
          v156 = v112;
          v146 = *v112;
          outlined copy of MLRecommender.Identifier(v111, v100, v110);
          outlined copy of MLRecommender.Identifier(v111, v100, v110);
          v114 = v11[2];
          v115 = v11;
          if (v11[3] >> 1 <= v114)
          {
            v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v114 + 1, 1, v11);
          }

          ++v113;
          v115[2] = v114 + 1;
          v11 = v115;
          v116 = 7 * v114;
          v111 = v157;
          v11[v116 + 4] = v157;
          v100 = v147;
          v11[v116 + 5] = v147;
          LOBYTE(v11[v116 + 6]) = v152;
          v11[v116 + 7] = i;
          *&v11[v116 + 8] = v146;
          v11[v116 + 10] = v142;
          LOBYTE(v110) = v141;
          outlined consume of MLRecommender.Identifier(v111, v100, v141);
          v112 = (v156 + 16);
        }

        while (v132 != v113);
      }

      else
      {
        v11 = v144;
        v111 = v157;
      }

      v117 = v145 + 1;
      outlined consume of MLRecommender.Identifier(v111, v100, v110);
      v153;
      v138;
      v97 = v117;
      v96 = v133;
      v13 = v154;
    }

    while (v117 != v139);
  }

  v148;

  v13;
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v140, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v134, v143);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v136, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v135, v149);
  return v11;
}

uint64_t MLRecommender.getSimilarItems(fromItems:maxCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v98 = a2;
  v97 = v4;
  v7 = type metadata accessor for MLRecommender(0);
  v8 = *(a1 + 16);
  if (*(v6 + *(v7 + 44)))
  {
    if (v8)
    {
      __src = v6;
      v117 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v9 = _swiftEmptyArrayStorage;
      v10 = a1 + 32;
      do
      {
        v119 = v8;
        v114 = v9;
        outlined init with copy of TabularRegressionTask(v10, &v99);
        v11 = v101;
        v12 = v102;
        __swift_project_boxed_opaque_existential_0Tm(&v99, v101);
        (*(v12 + 8))(v11, v12);
        v13 = v103;
        if (v105)
        {
          outlined consume of MLDataValue(v103, v104, v105);
          v13 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v99);
        v9 = v114;
        v117 = v114;
        v14 = v114[2];
        v15 = v114[3];
        v16 = v14 + 1;
        if (v15 >> 1 <= v14)
        {
          v116 = v14 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
          v16 = v116;
          v9 = v117;
        }

        v9[2] = v16;
        v9[v14 + 4] = v13;
        v10 += 40;
        v8 = (v119 - 1);
      }

      while (v119 != (&dword_0 + 1));
      v6 = __src;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
      v16 = _swiftEmptyArrayStorage[2];
      if (!v16)
      {
        _swiftEmptyArrayStorage;
        v120 = _swiftEmptyArrayStorage;
        v26 = _swiftEmptyArrayStorage;
        v119 = _swiftEmptyArrayStorage;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
LABEL_45:
        v99 = ML14_UntypedColumnC_s5Error_pTt1g5;
        v41 = alloca(24);
        v42 = alloca(32);
        v93 = &v99;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
        LOBYTE(__src) = v43;
        v99;
        v99 = v26;
        v44 = alloca(24);
        v45 = alloca(24);
        v123 = &v99;
        v46 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_73;
      }
    }

    v116 = v16;
    v114 = v9;
    memcpy(__dst, v6, sizeof(__dst));
    v25 = 0;
    v120 = _swiftEmptyArrayStorage;
    v26 = _swiftEmptyArrayStorage;
    v119 = _swiftEmptyArrayStorage;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
    do
    {
      if (v25 >= v114[2])
      {
        BUG();
      }

      v115 = v25;
      v106 = v114[v25 + 4];
      v27 = specialized RecommenderModel.similarItems(to:count:)(v106, 0, 1, v98, a3, a4);
      v107 = v27[2];
      if (v107)
      {
        v28 = v27 + 7;
        v29 = 0;
        v108 = v27;
        do
        {
          if (v29 >= v27[2])
          {
            BUG();
          }

          v112 = v29;
          v30 = *(v28 - 3);
          v31 = *(v28 - 2);
          v32 = *(v28 - 2);
          v113 = *v28;
          v109 = v31;
          outlined copy of MLRecommender.Identifier(v30, v31, v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(ML14_UntypedColumnC_s5Error_pTt1g5);
          v111 = v26;
          __src = v30;
          if (!isUniquelyReferenced_nonNull_native)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ML14_UntypedColumnC_s5Error_pTt1g5[2] + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v34 = ML14_UntypedColumnC_s5Error_pTt1g5[2];
          if (ML14_UntypedColumnC_s5Error_pTt1g5[3] >> 1 <= v34)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(ML14_UntypedColumnC_s5Error_pTt1g5[3] >= 2uLL, v34 + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v35 = ML14_UntypedColumnC_s5Error_pTt1g5;
          ML14_UntypedColumnC_s5Error_pTt1g5[2] = v34 + 1;
          v35[v34 + 4] = v106;
          if ((v32 & 1) == 0)
          {
            outlined consume of MLRecommender.Identifier(__src, v109, 0);
            BUG();
          }

          v26 = v111;
          if (!swift_isUniquelyReferenced_nonNull_native(v111))
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
          }

          v36 = v26[2];
          if (v26[3] >> 1 <= v36)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v36 + 1, 1, v26);
          }

          v26[2] = v36 + 1;
          v26[v36 + 4] = __src;
          if (!swift_isUniquelyReferenced_nonNull_native(v120))
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1, v120);
          }

          v37 = v120[2];
          if (v120[3] >> 1 <= v37)
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120[3] >= 2uLL, v37 + 1, 1, v120);
          }

          v38 = v120;
          v120[2] = v37 + 1;
          a3 = v113;
          *&v38[v37 + 4] = v113;
          if (!swift_isUniquelyReferenced_nonNull_native(v119))
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119[2] + 1, 1, v119);
          }

          v39 = v119[2];
          if (v119[3] >> 1 <= v39)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119[3] >= 2uLL, v39 + 1, 1, v119);
          }

          v29 = (v112 + 1);
          v40 = v119;
          v119[2] = v39 + 1;
          v40[v39 + 4] = v29;
          v28 += 4;
          v27 = v108;
        }

        while (v107 != v29);
      }

      v25 = v115 + 1;
      v27;
    }

    while (v25 != v116);
    v114;
    goto LABEL_45;
  }

  if (v8)
  {
    __src = v6;
    v117 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v17 = _swiftEmptyArrayStorage;
    v18 = a1 + 32;
    do
    {
      v119 = v8;
      v115 = v17;
      outlined init with copy of TabularRegressionTask(v18, &v99);
      v19 = v101;
      v20 = v102;
      __swift_project_boxed_opaque_existential_0Tm(&v99, v101);
      (*(v20 + 8))(v19, v20);
      if (v105 == 2)
      {
        ML14_UntypedColumnC_s5Error_pTt1g5 = v104;
        v120 = v103;
      }

      else
      {
        outlined consume of MLDataValue(v103, v104, v105);
        v120 = 0;
        ML14_UntypedColumnC_s5Error_pTt1g5 = 0xE000000000000000;
      }

      v17 = v115;
      __swift_destroy_boxed_opaque_existential_1Tm(&v99);
      v117 = v17;
      v21 = v17[2];
      v22 = v17[3];
      v23 = v21 + 1;
      if (v22 >> 1 <= v21)
      {
        v110 = v21 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v21 + 1, 1);
        v23 = v110;
        v17 = v117;
      }

      v17[2] = v23;
      v24 = 2 * v21;
      v17[v24 + 4] = v120;
      v17[v24 + 5] = ML14_UntypedColumnC_s5Error_pTt1g5;
      v18 += 40;
      v8 = (v119 - 1);
    }

    while (v119 != (&dword_0 + 1));
    v6 = __src;
    goto LABEL_47;
  }

  v17 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage[2];
  if (v23)
  {
LABEL_47:
    v110 = v23;
    v96 = v17 + 4;
    memcpy(v95, v6, sizeof(v95));
    v120 = _swiftEmptyArrayStorage;
    v47 = _swiftEmptyArrayStorage;
    v119 = _swiftEmptyArrayStorage;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
    v48 = 0;
    v115 = v17;
    do
    {
      if (v48 >= v17[2])
      {
        BUG();
      }

      v116 = v48;
      v49 = 2 * v48;
      v50 = v96[v49];
      v51 = v96[v49 + 1];
      swift_bridgeObjectRetain_n(v51, 2);
      v108 = v50;
      v52 = specialized RecommenderModel.similarItems(to:count:)(v50, v51, 0, v98, a3, a4);
      __src = v51;
      v51;
      v109 = v52[2];
      if (v109)
      {
        v53 = v52 + 7;
        v54 = 0;
        v114 = v52;
        do
        {
          if (v54 >= v52[2])
          {
            BUG();
          }

          v112 = v54;
          v111 = v47;
          v55 = *(v53 - 3);
          v56 = *(v53 - 2);
          v57 = *(v53 - 2);
          v113 = *v53;
          __src;
          outlined copy of MLRecommender.Identifier(v55, v56, v57);
          v58 = swift_isUniquelyReferenced_nonNull_native(ML14_UntypedColumnC_s5Error_pTt1g5);
          v106 = v55;
          v107 = v56;
          if (!v58)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ML14_UntypedColumnC_s5Error_pTt1g5[2] + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v59 = ML14_UntypedColumnC_s5Error_pTt1g5[2];
          if (ML14_UntypedColumnC_s5Error_pTt1g5[3] >> 1 <= v59)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(ML14_UntypedColumnC_s5Error_pTt1g5[3] >= 2uLL, v59 + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
          }

          v60 = ML14_UntypedColumnC_s5Error_pTt1g5;
          ML14_UntypedColumnC_s5Error_pTt1g5[2] = v59 + 1;
          v61 = 2 * v59;
          v60[v61 + 4] = v108;
          v60[v61 + 5] = __src;
          if (v57)
          {
            BUG();
          }

          v47 = v111;
          if (!swift_isUniquelyReferenced_nonNull_native(v111))
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
          }

          v62 = v47[2];
          if (v47[3] >> 1 <= v62)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47[3] >= 2uLL, v62 + 1, 1, v47);
          }

          v47[2] = v62 + 1;
          v63 = 2 * v62;
          v47[v63 + 4] = v106;
          v47[v63 + 5] = v107;
          if (!swift_isUniquelyReferenced_nonNull_native(v120))
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1, v120);
          }

          v64 = v120[2];
          if (v120[3] >> 1 <= v64)
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120[3] >= 2uLL, v64 + 1, 1, v120);
          }

          v65 = v120;
          v120[2] = v64 + 1;
          a3 = v113;
          *&v65[v64 + 4] = v113;
          if (!swift_isUniquelyReferenced_nonNull_native(v119))
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119[2] + 1, 1, v119);
          }

          v66 = v119[2];
          if (v119[3] >> 1 <= v66)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119[3] >= 2uLL, v66 + 1, 1, v119);
          }

          v54 = (v112 + 1);
          v67 = v119;
          v119[2] = v66 + 1;
          v67[v66 + 4] = v54;
          v53 += 4;
          v52 = v114;
        }

        while (v109 != v54);
      }

      v68 = v116 + 1;
      __src;
      v52;
      v48 = v68;
      v69 = v68 == v110;
      v17 = v115;
    }

    while (!v69);
    v115;
    goto LABEL_72;
  }

  _swiftEmptyArrayStorage;
  v120 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v119 = _swiftEmptyArrayStorage;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
LABEL_72:
  v99 = ML14_UntypedColumnC_s5Error_pTt1g5;
  v70 = alloca(24);
  v71 = alloca(32);
  v93 = &v99;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  LOBYTE(__src) = v72;
  v99;
  v99 = v47;
  v73 = alloca(24);
  v74 = alloca(24);
  v123 = &v99;
  v46 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
LABEL_73:
  v75 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(v46);
  v77 = v76;
  v99;
  LOBYTE(v113) = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v78, v92);
  v112 = &v122;
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x64695F6D657469;
  *(inited + 40) = 0xE700000000000000;
  v80 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(inited + 48) = ML14_UntypedColumnC_s5Error_pTt1g5;
  ML14_UntypedColumnC_s5Error_pTt1g5 = v80;
  v81 = __src;
  *(inited + 56) = __src & 1;
  *(inited + 64) = 0x72616C696D6973;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = v75;
  *(inited + 88) = v77 & 1;
  *(inited + 96) = 0x65726F6373;
  *(inited + 104) = 0xE500000000000000;
  v99 = v120;
  v111 = v75;
  v82 = alloca(24);
  v83 = alloca(32);
  v123 = &v99;
  LODWORD(v120) = v81;
  outlined copy of Result<_DataTable, Error>(v80, v81);
  LODWORD(__src) = LOBYTE(v113);
  outlined copy of Result<_DataTable, Error>(v75, SLOBYTE(v113));
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v84 & 1;
  v99;
  *(inited + 128) = 1802396018;
  *(inited + 136) = 0xE400000000000000;
  v99 = v119;
  v85 = alloca(24);
  v86 = alloca(24);
  v123 = &v99;
  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v87 & 1;
  v99;
  v88 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v88);
  outlined consume of Result<_DataTable, Error>(v111, __src);
  result = outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v120);
  if (!v5)
  {
    result = v99;
    v90 = v100;
    v91 = v97;
    *v97 = v99;
    *(v91 + 8) = v90;
  }

  return result;
}

uint64_t MLRecommender.getSimilarItems<A>(fromItems:maxCount:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = v7;
  v39 = a5;
  v36 = v6;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(type metadata accessor for MLRecommender(0) + 44);
  v35 = v8;
  v13 = *(v8 + v12) == 0;
  v38 = a6;
  if (v13)
  {
    v33 = v10;
    v23 = v11;
    v24 = v11 & 1;
    outlined copy of Result<_DataTable, Error>(v10, v23);
    v26 = type metadata accessor for MLDataColumn(0, v39, a6, v25);
    v27 = MLDataColumn.count.getter(v26);
    outlined consume of Result<_DataTable, Error>(v10, v24);
    if (v27 < 0)
    {
      BUG();
    }

    v28 = alloca(41);
    v29 = alloca(48);
    v34 = v39;
    v35 = v38;
    v36 = v10;
    LOBYTE(v37) = v24;
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg5(partial apply for closure #1 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:), &v32, 0, v27);
    v22 = specialized _arrayForceCast<A, B>(_:)(v21);
  }

  else
  {
    v33 = v10;
    v14 = v11;
    v15 = v11 & 1;
    outlined copy of Result<_DataTable, Error>(v10, v14);
    v17 = type metadata accessor for MLDataColumn(0, v39, a6, v16);
    v18 = MLDataColumn.count.getter(v17);
    outlined consume of Result<_DataTable, Error>(v10, v15);
    if (v18 < 0)
    {
      BUG();
    }

    v19 = alloca(41);
    v20 = alloca(48);
    v34 = v39;
    v35 = v38;
    v36 = v10;
    LOBYTE(v37) = v15;
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sis5NeverOTg5(partial apply for closure #2 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:), &v32, 0, v18);
    v22 = specialized _arrayForceCast<A, B>(_:)(v21);
  }

  v30 = v22;
  v21;
  MLRecommender.getSimilarItems(fromItems:maxCount:)(v30, 10, a2, a3);
  return v30;
}

void *closure #1 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:)(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v22 = v6;
  v21 = a5;
  v19 = *(a4 - 8);
  v9 = *(v19 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v20 = *a1;
  v16 = a2;
  LOBYTE(v17) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v13 = type metadata accessor for MLDataColumn(0, a4, a5, v12);
  MLDataColumn.subscript.getter(v20, v13, a6);
  outlined consume of Result<_DataTable, Error>(v16, v17);
  (*(v21 + 32))(a4);
  (*(v19 + 8))(&v16, a4);
  v14 = v17;
  if (v18 != 2)
  {
    outlined consume of MLDataValue(v16, v17, v18);
    BUG();
  }

  result = v22;
  *v22 = v16;
  result[1] = v14;
  return result;
}

void *closure #2 in MLRecommender.getSimilarItems<A>(fromItems:maxCount:)(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v21 = v6;
  v20 = a5;
  v18 = *(a4 - 8);
  v9 = *(v18 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v19 = *a1;
  v15 = a2;
  LOBYTE(v16) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v13 = type metadata accessor for MLDataColumn(0, a4, a5, v12);
  MLDataColumn.subscript.getter(v19, v13, a6);
  outlined consume of Result<_DataTable, Error>(v15, v16);
  (*(v20 + 32))(a4);
  (*(v18 + 8))(&v15, a4);
  if (v17)
  {
    outlined consume of MLDataValue(v15, v16, v17);
    BUG();
  }

  result = v21;
  *v21 = v15;
  return result;
}

void *specialized RecommenderModel.similarItems(to:count:)(Swift::UInt a1, uint64_t a2, char a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v8 = *(v6 + 24);
  if (!*(v8 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = *(v7 + 16);
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 1);
  if ((v11 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = specialized RecommenderModel.similarItems(itemIndex:count:)(*(*(v8 + 56) + 8 * v10), a4, a5, a6);
  v13 = v12[2];
  v33 = v12;
  if (v13)
  {
    v32 = *(v34 + 16);
    v14 = v12 + 5;
    v15 = _swiftEmptyArrayStorage;
    do
    {
      v16 = *(v14 - 1);
      if (v16 >= v32)
      {
        BUG();
      }

      v30 = *v14;
      v17 = 24 * v16;
      v18 = *(v34 + v17 + 32);
      v35 = v15;
      v19 = *(v34 + v17 + 40);
      v20 = *(v34 + v17 + 48);
      outlined copy of MLRecommender.Identifier(v18, v19, v20);
      v31 = v18;
      v21 = v18;
      v22 = v19;
      v15 = v35;
      outlined copy of MLRecommender.Identifier(v21, v22, v20);
      v29 = v13;
      if (!swift_isUniquelyReferenced_nonNull_native(v35))
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
      }

      v23 = v15[2];
      v24 = v23 + 1;
      if (v15[3] >> 1 <= v23)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15[3] >= 2uLL, v23 + 1, 1, v15);
        v24 = v23 + 1;
        v15 = v26;
      }

      v15[2] = v24;
      v25 = 4 * v23;
      v15[v25 + 4] = v31;
      v15[v25 + 5] = v22;
      LOBYTE(v15[v25 + 6]) = v20 & 1;
      v15[v25 + 7] = v30;
      outlined consume of MLRecommender.Identifier(v31, v22, v20);
      v14 += 2;
      v13 = v29 - 1;
    }

    while (v29 != 1);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v33;
  v28 = specialized _arrayForceCast<A, B>(_:)(v15);
  v15;
  return v28;
}

uint64_t MLRecommender.ModelAlgorithmType.playgroundDescription.getter()
{
  v1 = v0;
  objc_allocWithZone(NSAttributedString);
  v2 = @nonobjc NSAttributedString.init(string:attributes:)(0x6D6973206D657449, 0xEF79746972616C69, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v1[3] = result;
  *v1 = v2;
  return result;
}

uint64_t MLRecommender.SimilarityType.description.getter()
{
  if (!*v0)
  {
    return 0x656E69736F63;
  }

  if (*v0 == 1)
  {
    return 0x6472616363616ALL;
  }

  return 0x6E6F7372616570;
}

uint64_t MLRecommender.SimilarityType.playgroundDescription.getter()
{
  v2 = v0;
  if (*v1)
  {
    v3 = 0xE700000000000000;
    if (*v1 == 1)
    {
      v4 = 0x6472616363616ALL;
    }

    else
    {
      v4 = 0x6E6F7372616570;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656E69736F63;
  }

  objc_allocWithZone(NSAttributedString);
  v5 = @nonobjc NSAttributedString.init(string:attributes:)(v4, v3, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v2[3] = result;
  *v2 = v5;
  return result;
}

uint64_t Int.identifierValue.getter(uint64_t a1)
{
  *result = a1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t String.identifierValue.getter(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 2;
  return a2;
}

void *_s8CreateML21ItemSimilarityTrainerV10similarity13configuration4data9itemCountACyxGxm_AA0cD13ConfigurationV13LinearAlgebra12SparseMatrixVySdGSitcfCAA07PearsonD0V_Ttt3g5Tm(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t (*a5)(__int128 *, uint64_t), double a6)
{
  v9 = v6;
  v26 = a2;
  v29 = a5;
  v27 = a1;
  v28 = a6;
  v24 = *(a3 + 3);
  v20 = *(a3 + 4);
  v25 = *(a3 + 5);
  v10 = a3[1];
  v11 = a3[2];
  v21 = *a3;
  v22 = v10;
  v23 = v11;
  outlined retain of [Int](&v24);
  outlined retain of [Int](&v20);
  outlined retain of ContiguousArray<Double>(&v25);
  v12 = v29(a3, a4);
  outlined release of [Int?](&v24, a4);
  outlined release of [Int?](&v20, a4);
  outlined release of _NativeDictionary<String?, Int>.Iterator(&v25);
  v13 = _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8rowCount06columnH0ACyxGSi_SitcfCSd_Tt1g5(a4, a4);
  *v9 = v28;
  *(v9 + 8) = v27;
  *(v9 + 16) = v26;
  v14 = v22;
  v15 = v23;
  *(v9 + 24) = v21;
  *(v9 + 40) = v14;
  *(v9 + 56) = v15;
  *(v9 + 72) = v12;
  *(v9 + 80) = v13;
  *(v9 + 88) = v16;
  *(v9 + 96) = v17;
  *(v9 + 104) = v18;
  result = _swiftEmptyDictionarySingleton;
  *(v9 + 112) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8rowCount06columnH0ACyxGSi_SitcfCSd_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8dataSizeyS2i_SitFZSd_Tt1g5(a1, a2);
  v24 = _ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSd_Tt1g5(v2, 0.0);
  if (a1 < 0)
  {
    BUG();
  }

  if (a1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0);
    v3 = a2 - 1;
    if (__OFSUB__(a2, 1))
    {
      BUG();
    }

    v4 = 0;
    v5 = a1;
    do
    {
      v6 = v4 * v3;
      if (!is_mul_ok(v4, v3))
      {
        BUG();
      }

      v7 = v4 - 1;
      v9 = v4 - 1;
      v10 = v4;
      v8 = (v4 - 1) * v4;
      if (!is_mul_ok(v9, v10))
      {
        BUG();
      }

      v11 = v8 / 2;
      v12 = __OFSUB__(v6, v11);
      v13 = v6 - v11;
      if (v12)
      {
        BUG();
      }

      v14 = v7 + 1;
      v12 = __OFSUB__(v13, v14);
      v15 = v13 - v14;
      if (v12)
      {
        BUG();
      }

      v16 = _swiftEmptyArrayStorage[2];
      if (_swiftEmptyArrayStorage[3] >> 1 <= v16)
      {
        v23 = v3;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16 + 1, 1);
        v3 = v23;
        v5 = a1;
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      _swiftEmptyArrayStorage[v16 + 4] = v15;
      v4 = v14 + 1;
    }

    while (v14 + 1 != v5);
  }

  v17 = v24[2];
  if (swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
  {
    v18 = _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v19 = *(v18 + 2);
  v20 = a1;
  if (*(v18 + 3) >> 1 <= v19)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v18 + 3) >= 2uLL, v19 + 1, 1, v18);
    v20 = a1;
    v18 = v22;
  }

  *(v18 + 2) = v19 + 1;
  *&v18[8 * v19 + 32] = v17;
  return v20;
}

unint64_t specialized ItemSimilarityTrainer.train()()
{
  v1 = v0;
  v2 = *(*(v0 + 72) + 16);
  v3 = *(v0 + 8);
  v40 = *v0;
  v4 = type metadata accessor for InteractionTableBuilder();
  swift_initStackObject(v4, v24);
  v37 = InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v2, v3, v40);
  v5 = *(v0 + 24);
  if (v5 < 0)
  {
    BUG();
  }

  if (v5)
  {
    v6 = 0;
    score = *(v0 + 24);
    do
    {
      *&v40 = v6 + 1;
      v7 = *(v1 + 40);
      v8 = *(v1 + 48);
      v9 = *(v1 + 56);
      v10 = *(v1 + 64);
      v25 = *(v1 + 24);
      v26 = v7;
      v27 = v8;
      v28 = v9;
      v29 = v10;
      v30 = v6;
      v8;
      v9;

      specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(v6, &v25);
      outlined release of SparseMatrix<Double>.MajorCollection(&v25, &v25);
      v6 = *&v40;
    }

    while (*&score != *&v40);
  }

  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  v32 = *(v1 + 80);
  v36 = v13;
  if (v11 >= 2 && v32 > 0)
  {
    v33 = *(v1 + 72);
    v35 = v33 + 32;
    v38 = v11;

    v13;
    v14 = v38;
    v15 = 1;
    v16 = 0.0;
    v17 = 0;
    v34 = v12;
    do
    {
      if (*&v16 >= *(v12 + 16))
      {
        BUG();
      }

      v18 = *(v12 + 8 * *&v16 + 32);
      v19 = v15 + 1;
      v20 = v17;
      if (v15 + 1 == v14)
      {
        v20 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        v19 = v17 + 2;
        if (__OFADD__(1, v20))
        {
          BUG();
        }
      }

      if (v17 < 0)
      {
        BUG();
      }

      v21 = *(v33 + 16);
      if (v17 >= v21)
      {
        BUG();
      }

      if (v15 >= v21)
      {
        BUG();
      }

      v31 = v20;
      v40 = v16;
      score = v18 / sqrt(*(v35 + 32 * v17 + 24) * *(v35 + 32 * v15 + 24));
      InteractionTableBuilder.insert(_:_:score:)(v17, v15, score);
      InteractionTableBuilder.insert(_:_:score:)(v15, v17, score);
      v14 = v38;
      v12 = v34;
      if (v19 >= v38)
      {
        break;
      }

      *&v16 = *&v40 + 1;
      v17 = v31;
      v15 = v19;
    }

    while (v31 < v32);
  }

  else
  {

    v13;
  }

  v36;

  v22 = InteractionTableBuilder.finalize()();

  return v22;
}

{
  v1 = v0;
  v2 = *(*(v0 + 9) + 16);
  v3 = *(v0 + 1);
  v41 = *v0;
  v4 = type metadata accessor for InteractionTableBuilder();
  swift_initStackObject(v4, v25);
  v39 = InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v2, v3, v41);
  v5 = *(v0 + 3);
  if (v5 < 0)
  {
    BUG();
  }

  if (v5)
  {
    v6 = 0;
    score[0] = v0[3];
    do
    {
      *&v41 = v6 + 1;
      v7 = *(v1 + 40);
      v8 = *(v1 + 6);
      v9 = *(v1 + 7);
      v10 = *(v1 + 8);
      v26 = *(v1 + 3);
      v27 = v7;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v6;
      v8;
      v9;

      specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(v6, &v26);
      outlined release of SparseMatrix<Double>.MajorCollection(&v26, &v26);
      v6 = *&v41;
    }

    while (*&score[0] != *&v41);
  }

  v11 = *(v1 + 11);
  v12 = *(v1 + 12);
  v13 = *(v1 + 13);
  v33 = *(v1 + 10);
  v37 = v13;
  if (v11 >= 2 && v33 > 0)
  {
    v34 = *(v1 + 9);
    v36 = v34 + 32;
    v40 = v11;

    v13;
    v14 = v40;
    v15 = 1;
    v16 = 0.0;
    v17 = 0;
    v35 = v12;
    do
    {
      if (*&v16 >= *(v12 + 16))
      {
        BUG();
      }

      v18 = *(v12 + 8 * *&v16 + 32);
      v19 = v15 + 1;
      v20 = v17;
      if (v15 + 1 == v14)
      {
        v20 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        v19 = v17 + 2;
        if (__OFADD__(1, v20))
        {
          BUG();
        }
      }

      if (v17 < 0)
      {
        BUG();
      }

      v21 = *(v34 + 16);
      if (v17 >= v21)
      {
        BUG();
      }

      if (v15 >= v21)
      {
        BUG();
      }

      v32 = v20;
      v41 = v16;
      v22 = 0;
      if ((_mm_cvtsi128_si32(_mm_or_pd(_mm_cmpeq_pd(*(v36 + 16 * v15 + 8), 0), _mm_cmpeq_pd(*(v36 + 16 * v17 + 8), 0))) & 1) == 0)
      {
        *&v18 = *&v18 / (*(v36 + 16 * v17 + 8) + *(v36 + 16 * v15 + 8) - *&v18);
        v22 = v18;
      }

      *score = v22;
      InteractionTableBuilder.insert(_:_:score:)(v17, v15, *&v22);
      InteractionTableBuilder.insert(_:_:score:)(v15, v17, score[0]);
      v14 = v40;
      v12 = v35;
      if (v19 >= v40)
      {
        break;
      }

      *&v16 = *&v41 + 1;
      v17 = v32;
      v15 = v19;
    }

    while (v32 < v33);
  }

  else
  {

    v13;
  }

  v37;

  v23 = InteractionTableBuilder.finalize()();

  return v23;
}

{
  v1 = v0;
  v2 = *(*(v0 + 9) + 16);
  v3 = *(v0 + 1);
  v41 = *v0;
  v4 = type metadata accessor for InteractionTableBuilder();
  swift_initStackObject(v4, v25);
  v39 = InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v2, v3, v41);
  v5 = *(v0 + 3);
  if (v5 < 0)
  {
    BUG();
  }

  if (v5)
  {
    v6 = 0;
    score[0] = v0[3];
    do
    {
      *&v41 = v6 + 1;
      v7 = *(v1 + 40);
      v8 = *(v1 + 6);
      v9 = *(v1 + 7);
      v10 = *(v1 + 8);
      v26 = *(v1 + 3);
      v27 = v7;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v6;
      v8;
      v9;

      specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(v6, &v26);
      outlined release of SparseMatrix<Double>.MajorCollection(&v26, &v26);
      v6 = *&v41;
    }

    while (*&score[0] != *&v41);
  }

  v11 = *(v1 + 11);
  v12 = *(v1 + 12);
  v13 = *(v1 + 13);
  v33 = *(v1 + 10);
  v37 = v13;
  if (v11 >= 2 && v33 > 0)
  {
    v34 = *(v1 + 9);
    v36 = v34 + 32;
    v40 = v11;

    v13;
    v14 = v40;
    v15 = 1;
    v16 = 0.0;
    v17 = 0;
    v35 = v12;
    do
    {
      if (*&v16 >= *(v12 + 16))
      {
        BUG();
      }

      v18 = *(v12 + 8 * *&v16 + 32);
      v19 = v15 + 1;
      v20 = v17;
      if (v15 + 1 == v14)
      {
        v20 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        v19 = v17 + 2;
        if (__OFADD__(1, v20))
        {
          BUG();
        }
      }

      if (v17 < 0)
      {
        BUG();
      }

      v21 = *(v34 + 16);
      if (v17 >= v21)
      {
        BUG();
      }

      if (v15 >= v21)
      {
        BUG();
      }

      v32 = v20;
      v41 = v16;
      v22 = 0;
      if ((_mm_cvtsi128_si32(_mm_or_pd(_mm_cmpeq_pd(*(v36 + 16 * v15 + 8), 0), _mm_cmpeq_pd(*(v36 + 16 * v17 + 8), 0))) & 1) == 0)
      {
        *&v18 = *&v18 / sqrt(*(v36 + 16 * v17 + 8) * *(v36 + 16 * v15 + 8));
        v22 = v18;
      }

      *score = v22;
      InteractionTableBuilder.insert(_:_:score:)(v17, v15, *&v22);
      InteractionTableBuilder.insert(_:_:score:)(v15, v17, score[0]);
      v14 = v40;
      v12 = v35;
      if (v19 >= v40)
      {
        break;
      }

      *&v16 = *&v41 + 1;
      v17 = v32;
      v15 = v19;
    }

    while (v32 < v33);
  }

  else
  {

    v13;
  }

  v37;

  v23 = InteractionTableBuilder.finalize()();

  return v23;
}

uint64_t specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v4 = a2[3];
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
    BUG();
  }

  if (v3 + 1 >= v5)
  {
    BUG();
  }

  v6 = *(v4 + 8 * v3 + 32);
  result = *(v4 + 8 * v3 + 40);
  if (v6 != result)
  {
    v8 = result - v6;
    if (__OFSUB__(result, v6))
    {
      BUG();
    }

    v9 = v2;
    v55 = result;
    v56 = a2[4];
    v48 = a2[5];
    v10 = *(v2 + 2);
    v57 = a2;
    v60 = v6;
    if (v10 >= v8)
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      v50 = 0.0;
    }

    else
    {
      v59 = specialized Dictionary.subscript.getter(a1, *(v2 + 14));
      if (v11)
      {
        qmemcpy(v34, v2, sizeof(v34));
        LODWORD(v10) = v34[2];
        v59 = specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(v34[9], v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*(v2 + 14));
        v35 = *(v2 + 14);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, a1, isUniquelyReferenced_nonNull_native);
        a2 = v57;
        *(v2 + 14) = v35;
      }

      v6 = v60;
      v50 = 1.0 - v10 / v8;
    }

    v13 = v55;
    if (v55 < v6)
    {
      BUG();
    }

    v14 = *(v2 + 12);
    if (!swift_isUniquelyReferenced_nonNull_native(v14))
    {
      v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
    }

    v15 = v56;
    v16 = a2;
    v17 = *(v48 + 16);
    v46 = *(v2 + 9);
    v54 = v46 + 32;
    v18 = *(v56 + 16);
    v40 = v13 - 1;
    result = v60;
    v19 = v60;
    v47 = v2;
    v43 = v17;
    v44 = v18;
    do
    {
      if (v19 >= v13)
      {
        BUG();
      }

      if (result < 0)
      {
        BUG();
      }

      if (v19 >= v18)
      {
        BUG();
      }

      if (v19 >= v17)
      {
        BUG();
      }

      v52 = v19 + 1;
      v20 = *(v15 + 4 * (v19 + 1) + 28);
      if (v20 < 0)
      {
        BUG();
      }

      if (*(v46 + 16) <= v20)
      {
        BUG();
      }

      v53 = 32 * v20;
      if (v59 >= *(v54 + 32 * v20))
      {
        v58 = v20;
        v21 = v52;
        v41 = *(v48 + 8 * v52 + 24);
        v42 = v16[3];
        v49 = v16[4];
        v61 = v16[5];
        outlined retain of SparseMatrix<Double>.MajorCollection(v16);
        if (v21 != v13)
        {
          v53 += v54;
          v22 = v19;
          v23 = v58;
          v24 = v61;
          v39 = v19;
          do
          {
            if (v52 <= v19 || (v25 = v22 + 1, v22 + 1 >= v13))
            {
              BUG();
            }

            if (v25 >= *(v49 + 16))
            {
              BUG();
            }

            if (v25 >= *(v24 + 16))
            {
              BUG();
            }

            v26 = *(v49 + 4 * v22 + 36);
            v36 = *(v24 + 8 * v22 + 40);
            if (v50 <= 0.0 || (v27 = COERCE_DOUBLE(specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v23, 0.0, 1.0)), v24 = v61, v23 = v58, v50 < v27))
            {
              v28 = *(v46 + 16);
              if (v28 <= v23)
              {
                BUG();
              }

              if (v26 < 0 || v28 <= v26)
              {
                BUG();
              }

              v45 = v14;
              if (*(v9 + 10) <= v23)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, "gularMatrix.swift" + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 61, 0);
                goto LABEL_73;
              }

              if (*(v9 + 11) <= v26)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, "Row out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 64, 0);
LABEL_73:
                BUG();
              }

              v37 = *(v53 + 16);
              v38 = *(v54 + 32 * v26 + 16);
              v29 = v9[13];
              v30 = 0.0;
              if (v23 < v26)
              {
                v31 = v45;
                v51 = v29;
                v32 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v23, v26);
                if (v32 < 0)
                {
                  BUG();
                }

                if (v32 >= *(v31 + 2))
                {
                  BUG();
                }

                v30 = *&v31[8 * v32 + 32];
                v23 = v58;
              }

              v51 = v30;
              if (v23 >= v26)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, "Column out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 52, 0);
                goto LABEL_73;
              }

              v14 = v45;
              v33 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v23, v26);
              if (!swift_isUniquelyReferenced_nonNull_native(v14))
              {
                v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
              }

              v9 = v47;
              v13 = v55;
              v24 = v61;
              v23 = v58;
              if (v33 < 0)
              {
                BUG();
              }

              if (v33 >= *(v14 + 2))
              {
                BUG();
              }

              *&v14[8 * v33 + 32] = (v36 - v38) * (v41 - v37) + v51;
            }

            v22 = v25;
            v19 = v39;
          }

          while (v40 != v25);
        }

        v49;
        v42;
        v16 = v57;
        result = v60;
        v15 = v56;
        v17 = v43;
        v18 = v44;
      }

      v19 = v52;
    }

    while (v52 != v13);
    *(v9 + 12) = v14;
  }

  return result;
}

{
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v4 = v2;
  v5 = a2;
  v6 = a2[3];
  v7 = *(v6 + 16);
  if (v3 >= v7)
  {
    BUG();
  }

  if (v3 + 1 >= v7)
  {
    BUG();
  }

  v8 = *(v6 + 8 * v3 + 32);
  result = *(v6 + 8 * v3 + 40);
  if (v8 != result)
  {
    v10 = result - v8;
    if (__OFSUB__(result, v8))
    {
      BUG();
    }

    v55 = result;
    v56 = a2[4];
    v51 = a2[5];
    v11 = v4[2];
    v57 = a2;
    v60 = v8;
    if (v11 >= v10)
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      v53 = 0.0;
    }

    else
    {
      v59 = specialized Dictionary.subscript.getter(a1, v4[14]);
      if (v12)
      {
        qmemcpy(v38, v4, sizeof(v38));
        LODWORD(v11) = v38[2];
        v59 = specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(v38[9], v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4[14]);
        v39 = v4[14];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, a1, isUniquelyReferenced_nonNull_native);
        v5 = v57;
        v4[14] = v39;
      }

      v8 = v60;
      v53 = 1.0 - v11 / v10;
    }

    v14 = v55;
    if (v55 < v8)
    {
      BUG();
    }

    v15 = v4[12];
    if (!swift_isUniquelyReferenced_nonNull_native(v15))
    {
      v15 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v15);
    }

    v16 = v56;
    v17 = *(v51 + 16);
    v49 = v4[9];
    v18 = v49 + 32;
    v19 = *(v56 + 16);
    v41 = v14 - 1;
    v20 = v60;
    v21 = v60;
    v50 = v4;
    v44 = v17;
    v45 = v49 + 32;
    v46 = v19;
    do
    {
      if (v21 >= v14)
      {
        BUG();
      }

      if (v20 < 0)
      {
        BUG();
      }

      if (v21 >= v19)
      {
        BUG();
      }

      if (v21 >= v17)
      {
        BUG();
      }

      v54 = v21 + 1;
      v22 = *(v16 + 4 * (v21 + 1) + 28);
      if (v22 < 0)
      {
        BUG();
      }

      if (*(v49 + 16) <= v22)
      {
        BUG();
      }

      v47 = *(v16 + 4 * (v21 + 1) + 28);
      if (v59 >= *(v18 + 16 * v22))
      {
        v48 = v21;
        v23 = v54;
        v42 = *(v51 + 8 * v54 + 24);
        v43 = v5[3];
        v58 = v5[4];
        v61 = v5[5];
        outlined retain of SparseMatrix<Double>.MajorCollection(v5);
        if (v23 != v14)
        {
          v26 = v48;
          v27 = v48;
          v24 = v15;
          v25 = v58;
          v28 = v61;
          while (1)
          {
            if (v54 <= v26 || (v29 = v27 + 1, v27 + 1 >= v14))
            {
              BUG();
            }

            if (v29 >= *(v25 + 16))
            {
              BUG();
            }

            if (v29 >= *(v28 + 16))
            {
              BUG();
            }

            v40 = v27 + 1;
            v30 = *(v25 + 4 * v27 + 36);
            v52 = *(v28 + 8 * v27 + 40);
            if (v53 > 0.0 && (v31 = v24, v32 = COERCE_DOUBLE(specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v28, 0.0, 1.0)), v24 = v31, v53 >= v32))
            {
              v28 = v61;
            }

            else
            {
              v33 = *(v49 + 16);
              if (v33 <= v30 || v30 < 0 || v33 <= v47)
              {
                BUG();
              }

              if (v4[10] <= v47)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, "gularMatrix.swift" + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 61, 0);
                goto LABEL_73;
              }

              if (v4[11] <= v30)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, "Row out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 64, 0);
                goto LABEL_73;
              }

              if (v47 >= v30)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, "Column out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 52, 0);
LABEL_73:
                BUG();
              }

              v34 = v4[13];
              v35 = v24;
              v36 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v47, v30);
              if (v36 < 0)
              {
                BUG();
              }

              if (v36 >= *(v35 + 16))
              {
                BUG();
              }

              v52 = v52 * v42 + *(v35 + 8 * v36 + 32);
              v37 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v47, v30);
              if (swift_isUniquelyReferenced_nonNull_native(v35))
              {
                v4 = v50;
                v14 = v55;
                v24 = v35;
              }

              else
              {
                v24 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v35);
                v4 = v50;
                v14 = v55;
              }

              v25 = v58;
              v28 = v61;
              if (v37 < 0)
              {
                BUG();
              }

              if (v37 >= *(v24 + 2))
              {
                BUG();
              }

              *&v24[8 * v37 + 32] = v52;
            }

            v27 = v40;
            v26 = v48;
            if (v41 == v40)
            {
              goto LABEL_47;
            }
          }
        }

        v24 = v15;
        v25 = v58;
LABEL_47:
        v15 = v24;

        v25;
        v43;
        v5 = v57;
        v20 = v60;
        v16 = v56;
        v17 = v44;
        v18 = v45;
        v19 = v46;
      }

      result = v54;
      v21 = v54;
    }

    while (v54 != v14);
    v4[12] = v15;
  }

  return result;
}

char *specialized ItemSimilarityTrainer.processUser<A>(userIndex:ratings:)(uint64_t a1, void *a2)
{
  v58 = v2;
  v3 = a2[6];
  if (v3 < 0)
  {
    BUG();
  }

  v4 = a2[3];
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
    BUG();
  }

  if (v3 + 1 >= v5)
  {
    BUG();
  }

  v6 = *(v4 + 8 * v3 + 32);
  result = *(v4 + 8 * v3 + 40);
  if (v6 != result)
  {
    v8 = (result - v6);
    if (__OFSUB__(result, v6))
    {
      BUG();
    }

    v55 = result;
    v56 = a2[4];
    v61 = a2;
    v50 = a2[5];
    v9 = v58;
    v10 = v58[2];
    v60 = v6;
    if (v10 >= v8)
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      v53 = 0.0;
    }

    else
    {
      v59 = specialized Dictionary.subscript.getter(a1, v58[14]);
      if (v11)
      {
        qmemcpy(v38, v58, sizeof(v38));
        LODWORD(v10) = v38[2];
        v59 = specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(v38[9], v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v9[14]);
        v39 = v9[14];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, a1, isUniquelyReferenced_nonNull_native);
        v9[14] = v39;
      }

      v6 = v60;
      v53 = 1.0 - v10 / v8;
    }

    v13 = v55;
    if (v55 < v6)
    {
      BUG();
    }

    v14 = v9[12];
    if (!swift_isUniquelyReferenced_nonNull_native(v14))
    {
      v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
    }

    v15 = v61;
    v16 = v56;
    v17 = v58[9];
    v18 = *(v50 + 16);
    v19 = v17 + 32;
    v20 = *(v56 + 16);
    v42 = v13 - 1;
    v21 = v60;
    v22 = v60;
    v44 = v17;
    v46 = v18;
    v47 = v17 + 32;
    v48 = v20;
    do
    {
      if (v22 >= v13)
      {
        BUG();
      }

      if (v21 < 0)
      {
        BUG();
      }

      if (v22 >= v20)
      {
        BUG();
      }

      if (v22 >= v18)
      {
        BUG();
      }

      v54 = v22 + 1;
      v23 = *(v16 + 4 * (v22 + 1) + 28);
      if (v23 < 0)
      {
        BUG();
      }

      if (*(v17 + 16) <= v23)
      {
        BUG();
      }

      if (v59 >= *(v19 + 16 * v23))
      {
        v57 = *(v16 + 4 * (v22 + 1) + 28);
        v24 = v54;
        v40 = *(v50 + 8 * v54 + 24);
        v45 = v15[3];
        v52 = v15[4];
        v62 = v15[5];
        outlined retain of SparseMatrix<Double>.MajorCollection(v15);
        if (v24 != v13)
        {
          v25 = v22;
          v26 = v57;
          v27 = v62;
          v41 = v22;
          do
          {
            if (v54 <= v22 || (v28 = v25 + 1, v25 + 1 >= v13))
            {
              BUG();
            }

            if (v28 >= *(v52 + 16))
            {
              BUG();
            }

            if (v28 >= *(v27 + 16))
            {
              BUG();
            }

            v29 = *(v52 + 4 * v25 + 36);
            v30 = *(v27 + 8 * v25 + 40);
            if (v53 <= 0.0 || (v51 = *(v27 + 8 * v25 + 40), v31 = COERCE_DOUBLE(specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v26, 0.0, 1.0)), v30 = v51, v27 = v62, v26 = v57, v53 < v31))
            {
              v32 = *(v17 + 16);
              if (v32 <= v29 || v29 < 0 || v32 <= v26)
              {
                BUG();
              }

              v49 = v14;
              if (v58[10] <= v26)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, "gularMatrix.swift" + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 61, 0);
                goto LABEL_74;
              }

              if (v58[11] <= v29)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, "Row out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 64, 0);
LABEL_74:
                BUG();
              }

              v33 = v58[13];
              v34 = 0.0;
              if (v26 < v29)
              {
                v51 = v30;
                v35 = v49;
                v43 = v33;
                v36 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v26, v29);
                if (v36 < 0)
                {
                  BUG();
                }

                if (v36 >= *(v35 + 2))
                {
                  BUG();
                }

                v34 = *&v35[8 * v36 + 32];
                v17 = v44;
                v26 = v57;
                v30 = v51;
              }

              if ((_mm_cvtsi128_si32(_mm_or_pd(_mm_cmpeq_pd(v40, 0), _mm_cmpeq_pd(v30, 0))) & 1) == 0)
              {
                v34 = v34 + 1.0;
              }

              v51.f64[0] = v34;
              if (v26 >= v29)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, "Column out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 52, 0);
                goto LABEL_74;
              }

              v14 = v49;
              v37 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v26, v29);
              if (!swift_isUniquelyReferenced_nonNull_native(v14))
              {
                v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
              }

              v13 = v55;
              v27 = v62;
              v26 = v57;
              if (v37 < 0)
              {
                BUG();
              }

              if (v37 >= *(v14 + 2))
              {
                BUG();
              }

              *&v14[8 * v37 + 32] = v51.f64[0];
            }

            v25 = v28;
            v22 = v41;
          }

          while (v42 != v28);
        }

        v52;
        v45;
        v15 = v61;
        v21 = v60;
        v16 = v56;
        v18 = v46;
        v19 = v47;
        v20 = v48;
      }

      v22 = v54;
      result = v58;
    }

    while (v54 != v13);
    v58[12] = v14;
  }

  return result;
}

uint64_t specialized ItemSimilarityTrainer.getItemCountThresholdForUser<A>(itemInfo:itemList:)(uint64_t a1, void *a2)
{
  ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(a2);
  v4 = *(v2 + 16);
  if (__OFADD__(1, v4))
  {
    BUG();
  }

  v5 = ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm;
  a1;
  v6 = specialized Collection.min(count:sortedBy:)(v4 + 1, v5, a1);
  v5;
  if (v4 < 0)
  {
    BUG();
  }

  if (v4 >= v6[2])
  {
    BUG();
  }

  v7 = v6[v4 + 4];
  v6;
  if (v7 < 0)
  {
    BUG();
  }

  if (v7 >= *(a1 + 16))
  {
    BUG();
  }

  return *(a1 + 32 * v7 + 32);
}

{
  ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF13LinearAlgebra12SparseMatrixV15MajorCollectionVySd_G_Sis5NeverOTg50127_s8CreateML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm(a2);
  v4 = *(v2 + 16);
  if (__OFADD__(1, v4))
  {
    BUG();
  }

  v5 = ML21ItemSimilarityTrainerV03getC21CountThresholdForUser8itemInfo0K4ListSiSayAA0C10StatisticsVy0C5ScoreQzGG_qd__tSlRd__z5_Sdt7b56Rtd__lFS2i_Sdt_tcfu0_33_39c69c9f4ee04694167b65f5fa330960z4_SdtZ10Tf3nnnpk_nTf1cn_nTm;
  a1;
  v6 = specialized Collection.min(count:sortedBy:)(v4 + 1, v5, a1);
  v5;
  if (v4 < 0)
  {
    BUG();
  }

  if (v4 >= v6[2])
  {
    BUG();
  }

  v7 = v6[v4 + 4];
  v6;
  if (v7 < 0)
  {
    BUG();
  }

  if (v7 >= *(a1 + 16))
  {
    BUG();
  }

  return *(a1 + 16 * v7 + 32);
}

void *specialized Collection.min(count:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    BUG();
  }

  v9 = a1;
  if (v8 < a1)
  {
    v9 = (a5 >> 1) - a4;
  }

  if (v9 < v8 / 10)
  {
    return specialized Sequence._minImplementation(count:sortedBy:)(a1, a2, a3, a4, a5);
  }

  v16 = a3;
  swift_unknownObjectRetain(a2);
  v15 = specialized ArraySlice._copyToContiguousArray()(a2, v16, a4, a5);
  specialized MutableCollection<>.sort(by:)(&v15, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v5)
  {
  }

  v11 = specialized Collection.prefix(_:)(v9, v15);
  return _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8CreateML11InteractionV_s10ArraySliceVyAFGTt0g5(v11, v12, v13, v14);
}

void *specialized Collection.min(count:sortedBy:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = v3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (a1)
  {
    v5 = *(a2 + 16);
    v6 = a1;
    if (v5 < a1)
    {
      v6 = *(a2 + 16);
    }

    v7 = *(a2 + 16) % 0xAuLL;
    if (v5 / 0xA <= a1)
    {
      v14 = a2;
      swift_bridgeObjectRetain_n(a3, 3);
      a2;
      v8 = v15;
      specialized MutableCollection<>.sort(by:)(&v14, a3, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      if (v8)
      {
        swift_bridgeObjectRelease_n(a3, 3);
      }

      else
      {
        v9 = specialized Collection.prefix(_:)(v6, v14);
        v6 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_s10ArraySliceVySiGTt0g5(v9, v10, v11, v12);
        swift_bridgeObjectRelease_n(a3, 3);
      }
    }

    else
    {
      a3;
      v6 = specialized Sequence._minImplementation(count:sortedBy:)(a1, a2, a3);
      a3;
    }
  }

  else
  {
    a3;
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

{
  v15 = v3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (a1)
  {
    v5 = *(a2 + 16);
    v6 = a1;
    if (v5 < a1)
    {
      v6 = *(a2 + 16);
    }

    v7 = *(a2 + 16) % 0xAuLL;
    if (v5 / 0xA <= a1)
    {
      v14 = a2;
      swift_bridgeObjectRetain_n(a3, 3);
      a2;
      v8 = v15;
      specialized MutableCollection<>.sort(by:)(&v14, a3, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
      if (v8)
      {
        swift_bridgeObjectRelease_n(a3, 3);
      }

      else
      {
        v9 = specialized Collection.prefix(_:)(v6, v14);
        v6 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_s10ArraySliceVySiGTt0g5(v9, v10, v11, v12);
        swift_bridgeObjectRelease_n(a3, 3);
      }
    }

    else
    {
      a3;
      v6 = specialized Sequence._minImplementation(count:sortedBy:)(a1, a2, a3);
      a3;
    }
  }

  else
  {
    a3;
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

uint64_t _s8CreateML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  a1;

  ML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5(a1, a2, a3);
  v5 = specialized _copyCollectionToContiguousArray<A>(_:)(ML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5);
  ML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5;
  v9[0] = v5;

  specialized MutableCollection<>.sort(by:)(v9, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

  v6 = v9[0];
  v7 = *(v9[0] + 16);

  _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML13MLRecommenderV10IdentifierO_Sis12Zip2SequenceVySayAIGSnySiGGTt0g5(v6, 0, v7);

  a1;
  return v6;
}

uint64_t specialized CategoricalLookupTable.index(of:)(Swift::UInt a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 1), (v7 & 1) != 0))
  {
    return *(*(a5 + 56) + 8 * v6);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized SparseMatrix.IndexedSequence.Iterator.next()()
{
  v1 = *(v0 + 48);
  if (*(v0 + 16))
  {
    v2 = *(v0 + 8);
    if (v1 < v2)
    {
      v3 = *(v0 + 56);
      if (v3 < 0)
      {
        BUG();
      }

      v4 = *(v0 + 32);
      if (v3 >= *(v4 + 16))
      {
        BUG();
      }

      v5 = *(v4 + 4 * v3 + 32);
      specialized ContiguousArray.subscript.getter(*(v0 + 56), *(v0 + 40));
      v6 = v3 + 1;
      *(v0 + 56) = v6;
      if (v1 < -1)
      {
        BUG();
      }

      v7 = *(v0 + 24);
      v8 = v1 + 1;
      v9 = *(v7 + 16);
      if (v1 + 1 >= v9)
      {
        BUG();
      }

      if (v6 >= *(v7 + 8 * v1 + 40))
      {
        if (v8 < v2)
        {
          if (v1 + 2 >= v9)
          {
            BUG();
          }

          if (v6 >= *(v7 + 8 * v1 + 48))
          {
            if (v1 + 2 >= v2)
            {
              v8 = v1 + 2;
            }

            else
            {
              if (v1 + 3 >= v9)
              {
                BUG();
              }

              v8 = v1 + 2;
              if (v6 >= *(v7 + 8 * v1 + 56))
              {
                v10 = v1 + 4;
                while (v10 - 1 < v2)
                {
                  if (v10 >= v9)
                  {
                    BUG();
                  }

                  v11 = v10 + 1;
                  v12 = v6 < *(v7 + 8 * v10++ + 32);
                  if (v12)
                  {
                    v8 = v11 - 2;
                    goto LABEL_40;
                  }
                }

                v8 = v2;
              }
            }
          }
        }

LABEL_40:
        *(v0 + 48) = v8;
      }

      return v5;
    }

    return 0;
  }

  v13 = *v0;
  if (v1 >= *v0)
  {
    return 0;
  }

  v14 = *(v0 + 56);
  if (v14 < 0)
  {
    BUG();
  }

  v15 = *(v0 + 32);
  if (v14 >= *(v15 + 16))
  {
    BUG();
  }

  v16 = *(v15 + 4 * v14 + 32);
  specialized ContiguousArray.subscript.getter(*(v0 + 56), *(v0 + 40));
  v17 = v14 + 1;
  *(v0 + 56) = v17;
  if (v1 < -1)
  {
    BUG();
  }

  v18 = *(v0 + 24);
  v19 = v1 + 1;
  v20 = *(v18 + 16);
  if (v1 + 1 >= v20)
  {
    BUG();
  }

  if (v17 >= *(v18 + 8 * v1 + 40))
  {
    if (v19 < v13)
    {
      if (v1 + 2 >= v20)
      {
        BUG();
      }

      if (v17 >= *(v18 + 8 * v1 + 48))
      {
        if (v1 + 2 >= v13)
        {
          v19 = v1 + 2;
        }

        else
        {
          if (v1 + 3 >= v20)
          {
            BUG();
          }

          v19 = v1 + 2;
          if (v17 >= *(v18 + 8 * v1 + 56))
          {
            v21 = v1 + 4;
            while (v21 - 1 < v13)
            {
              if (v21 >= v20)
              {
                BUG();
              }

              v22 = v21 + 1;
              v12 = v17 < *(v18 + 8 * v21++ + 32);
              if (v12)
              {
                v19 = v22 - 2;
                goto LABEL_43;
              }
            }

            v19 = v13;
          }
        }
      }
    }

LABEL_43:
    *(v0 + 48) = v19;
  }

  return v1;
}

void *_s8CreateML16RecommenderModelV15precisionRecall8expected9predicted7cutoffsSaySd0E0_Sd6recalltGSayq_G_AKSaySiGtFZAA13MLRecommenderV10IdentifierO_APTt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *(a2 + 16);
  if (v43)
  {
    v4 = a2;
    v6 = *(a3 + 16);
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);
    v8 = v6;
    v50 = v7;
    v53 = a2;
    if (v6)
    {
      v54 = a1;
      v9 = v7[2];
      v10 = 2 * v9;
      v11 = 0;
      do
      {
        v12 = v9;
        v13 = *(a3 + 8 * v11 + 32);
        v14 = v7[3];
        ++v9;
        if (v14 >> 1 <= v12)
        {
          v51 = v8;
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v9, 1, v7);
        }

        v7[2] = v9;
        v7[v10 + 4] = v13;
        v7[v10 + 5] = v11++;
        v10 += 2;
      }

      while (v8 != v11);
      v50 = v7;
      v4 = v53;
      a1 = v54;
    }

    specialized MutableCollection<>.sort(by:)(&v50, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
    v15 = 0;
    v16 = _sSa9repeating5countSayxGx_SitcfCSd_Sdt_Tt1g5(v8, 0.0, 0.0);
    v52 = a1;
    a1;
    specialized MutableCollection<>.sort(by:)(&v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
    v55 = v52;
    v44 = v50;
    if (v50[2])
    {
      v17 = v50[2];
      v54 = 0;
      v45 = v4 + 32;
      v18 = v50 + 5;
      v42 = _mm_loadh_ps(&qword_33D870);
      v19 = v17;
      do
      {
        v51 = v16;
        v20 = *(v18 - 1);
        v21 = v20;
        if (v43 < v20)
        {
          v21 = v43;
        }

        if (v20 < 0)
        {
          BUG();
        }

        v46.i64[0] = *(v18 - 1);
        v48 = v18;
        v49 = *v18;
        v22 = type metadata accessor for __ContiguousArrayStorageBase(0);
        swift_bridgeObjectRetain_n(v4, 2);
        swift_unknownObjectRetain_n(v4, 2);
        v23 = swift_dynamicCastClass(v4, v22);
        if (!v23)
        {
          v4;
          v23 = _swiftEmptyArrayStorage;
        }

        v24 = v23[2];

        if (v24 == v21)
        {
          v25 = v53;
          v26 = swift_dynamicCastClass(v53, v22);
          if (!v26)
          {
            v25;
            v26 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v25 = v53;
          v53;
          v26 = _swiftEmptyArrayStorage;
          if (v46.i64[0])
          {
            v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>);
            v26 = swift_allocObject(v35, 24 * v21 + 32, 7);
            v36 = (_swift_stdlib_malloc_size(v26) - 32);
            v26[1].i64[0] = v21;
            v26[1].i64[1] = 2 * (v36 / 24);
            swift_arrayInitWithCopy(&v26[2], v45, v21, &type metadata for MLRecommender.Identifier);
          }
        }

        v47 = v19;
        v25;
        v52 = v26;
        v27 = v54;
        specialized MutableCollection<>.sort(by:)(&v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
        v54 = v27;
        if (v27)
        {

          BUG();
        }

        v25;
        v28 = v55;
        ML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5 = _s8CreateML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5(v55, v52);

        v15.f64[0] = ML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5;
        v30 = _mm_unpacklo_epi64(_mm_loadl_epi64(&v46), _mm_loadl_epi64(v28 + 1));
        v31 = _mm_cmpeq_epi64(v30, 0);
        inserted = _mm_insert_epi64(v30, v21, 0);
        v15 = _mm_blendv_pd(_mm_div_pd(_mm_movedup_pd(v15), _mm_add_pd(_mm_sub_pd(_mm_or_si128(_mm_srli_epi64(inserted, 0x20u), xmmword_33FAC0), xmmword_33FAD0), _mm_or_si128(_mm_blend_epi16(inserted, 0, 204), xmmword_33FAB0))), v42, v31);
        v46 = v15;
        v16 = v51;
        if (!swift_isUniquelyReferenced_nonNull_native(v51))
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        v33 = v47;
        v34 = v48;
        v4 = v53;
        if (v49 < 0)
        {
          BUG();
        }

        if (v49 >= v16[2])
        {
          BUG();
        }

        *&v16[2 * v49 + 4] = v46;
        v18 = v34 + 2;
        v19 = v33 - 1;
      }

      while (v19);
    }

    v44;
    v37 = specialized _arrayForceCast<A, B>(_:)(v16);
    v16;
    return v37;
  }

  else
  {
    v39 = *(a3 + 16);
    if (!v39)
    {
      return _swiftEmptyArrayStorage;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (precision: Double, recall: Double));
    v41 = static Array._allocateBufferUninitialized(minimumCapacity:)(v39, v40);
    *(v41 + 16) = v39;
    __bzero(v41 + 32, 16 * v39);
    return v41;
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  swift_bridgeObjectRetain_n(a2, 2);
  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v4 = a3(v4);
  }

  v5 = *(v4 + 16);
  v7[0] = v4 + 32;
  v7[1] = v5;
  a2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n(a2, 3);
}

{
  v4 = *a1;
  swift_bridgeObjectRetain_n(a2, 2);
  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v4 = a3(v4);
  }

  v5 = *(v4 + 16);
  v7[0] = v4 + 32;
  v7[1] = v5;
  a2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n(a2, 3);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v4 = a2(v4);
  }

  v6 = *(v4 + 16);
  result = a3();
  *a1 = v4;
  return result;
}

{
  v3 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v3 = a2(v3);
  }

  v5 = *(v3 + 16);
  result = a3();
  *a1 = v3;
  return result;
}

uint64_t _s8CreateML16RecommenderModelV17intersectionCountySiSayq_G_AEtFZAA13MLRecommenderV10IdentifierO_AITt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v29 = 0;
      v25 = a2;
      v23 = *(a1 + 16);
      v24 = *(a2 + 16);
      while (1)
      {
        if (v5 >= v2)
        {
          BUG();
        }

        if (v4 >= v3)
        {
          BUG();
        }

        v6 = *(a1 + 24 * v5 + 32);
        v7 = *(a1 + 24 * v5 + 40);
        v8 = *(a1 + 24 * v5 + 48);
        v9 = *(a2 + 24 * v4 + 32);
        v10 = *(a2 + 24 * v4 + 40);
        v11 = *(a2 + 24 * v4 + 48);
        v30 = v9;
        v28 = v10;
        if (v8)
        {
          if (v11)
          {
            v9 = *(a2 + 24 * v4 + 32);
            if (v6 < v30)
            {
              goto LABEL_13;
            }

LABEL_22:
            if (v9 < v6)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }
        }

        else
        {
          if ((v11 & 1) == 0)
          {
            if (v6 != v9 || v7 != v10)
            {
              v17 = *(a1 + 24 * v5 + 40);
              v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v9, v10, 0);
              v7 = v17;
              v10 = v28;
              v9 = v30;
              if ((v18 & 1) == 0)
              {
                v19 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v17, v30, v28, 1);
                v7 = v17;
                v10 = v28;
                v9 = v30;
                if (v19)
                {
LABEL_13:
                  v16 = __OFADD__(1, v5++);
                  a2 = v25;
                  if (v16)
                  {
                    BUG();
                  }

                  goto LABEL_37;
                }
              }
            }

            goto LABEL_28;
          }

          v26 = *(a1 + 24 * v5 + 40);
          v7;
          v7 = v26;
        }

        v12 = v6;
        v27 = v5;
        v13 = v4;
        v14 = v6;
        v15 = v7;
        outlined consume of MLRecommender.Identifier(v12, v7, v8);
        v7 = v15;
        v6 = v14;
        v4 = v13;
        v5 = v27;
        v9 = v30;
        v10 = v28;
        if (v11 & ~v8)
        {
          goto LABEL_13;
        }

        if (v11)
        {
          if (v8)
          {
            goto LABEL_22;
          }

          goto LABEL_26;
        }

        if (v8)
        {
          v28;
          v10 = v28;
          v9 = v30;
LABEL_26:
          outlined consume of MLRecommender.Identifier(v9, v10, v11);
          if (~v11 & v8)
          {
            goto LABEL_32;
          }

          goto LABEL_34;
        }

LABEL_28:
        if (v9 != v6 || v10 != v7)
        {
          v20 = v7;
          if (_stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, v6, v7, 0) & 1) == 0 && (_stringCompareWithSmolCheck(_:_:expecting:)(v30, v28, v6, v20, 1))
          {
LABEL_32:
            v16 = __OFADD__(1, v4++);
            a2 = v25;
            if (v16)
            {
              BUG();
            }

            goto LABEL_37;
          }
        }

LABEL_34:
        if (__OFADD__(1, v29))
        {
          BUG();
        }

        v16 = __OFADD__(1, v5++);
        a2 = v25;
        if (v16)
        {
          BUG();
        }

        ++v29;
        v16 = __OFADD__(1, v4++);
        if (v16)
        {
          BUG();
        }

LABEL_37:
        v2 = v23;
        if (v5 != v23)
        {
          v3 = v24;
          if (v4 != v24)
          {
            continue;
          }
        }

        return v29;
      }
    }
  }

  return 0;
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Collection.prefix(_:)(a1, a2);
}

{
  if (a1 < 0)
  {
    BUG();
  }

  v2 = *(a2 + 16);
  v3 = specialized Array.index(_:offsetBy:limitedBy:)(0, a1, v2);
  if (v4)
  {
    v3 = v2;
  }

  if (v3 < 0)
  {
    BUG();
  }

  if (v2 < v3)
  {
    BUG();
  }

  return a2;
}

{
  return specialized Collection.prefix(_:)(a1, a2);
}

uint64_t _s8CreateML23RecommenderTrainingDataVyACyxq_GSayx4user_q_4itemSd6ratingtGcfCAA13MLRecommenderV10IdentifierO_ALTt0g5(uint64_t a1)
{
  v30 = v1;
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  KeyPath = swift_getKeyPath(&unk_33FCD0);
  a1;
  ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5 = _s8CreateML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5(a1, partial apply for specialized implicit closure #1 in RecommenderTrainingData.init(_:), KeyPath);
  v5 = v4;
  v22[0] = ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5;
  v22[1] = v4;
  v6 = swift_getKeyPath(&unk_33FCF0);
  v33 = a1;
  a1;
  ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5;
  v5;
  v7 = _s8CreateML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5(a1, partial apply for specialized implicit closure #2 in RecommenderTrainingData.init(_:), v6);
  v9 = v8;
  v22[2] = v7;
  v22[3] = v8;
  v10 = *(ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5 + 16);
  v7;
  v9;
  v28 = v5;
  v5;
  ML22CategoricalLookupTableVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAJ4user_AJ4itemSd6ratingtGAJGTt0g5;
  v11 = *(v7 + 16);
  v29 = v9;
  v9;
  v7;
  v22[4] = v10;
  v22[5] = v11;
  LOBYTE(v22[6]) = 0;
  v22[7] = _sSa9repeating5countSayxGx_SitcfCSi_Tt1gq5(0, v10 + 1);
  v22[8] = _swiftEmptyArrayStorage;
  v22[9] = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (v33 + 80);
    do
    {
      if (!*(v28 + 16))
      {
        BUG();
      }

      v14 = *(v13 - 6);
      v15 = *(v13 - 5);
      v31 = *(v13 - 3);
      v32 = *(v13 - 2);
      LOBYTE(v35) = *(v13 - 8);
      v24 = *v13;
      v16 = *(v13 - 32);
      v34 = v16;
      outlined copy of MLRecommender.Identifier(v14, v15, v16);
      v35 = v35;
      outlined copy of MLRecommender.Identifier(v31, v32, v35);
      v23 = v15;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v34);
      if ((v18 & 1) == 0)
      {
        BUG();
      }

      if (!*(v29 + 16))
      {
        BUG();
      }

      v26 = v14;
      v25 = v12;
      v27 = *(*(v28 + 56) + 8 * v17);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32, v35);
      if ((v20 & 1) == 0)
      {
        BUG();
      }

      specialized SparseMatrix.subscript.setter(v27, *(*(v29 + 56) + 8 * v19), v24);
      outlined consume of MLRecommender.Identifier(v31, v32, v35);
      outlined consume of MLRecommender.Identifier(v26, v23, v34);
      v13 += 7;
      v12 = v25 - 1;
    }

    while (v25 != 1);
  }

  result = v33;
  qmemcpy(v30, v22, 0x50uLL);
  return result;
}

__int128 *specialized Recommender.buildInteractionTable(_:nearestItems:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t (*a7)(__int128 *, uint64_t), uint64_t (*a8)(void))
{
  v27 = a3;
  if (a2)
  {
    v10 = a2;
    outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(a1);
    ML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm(a2, a1);
    if (!v8)
    {
      v12 = ML13MLRecommenderV10IdentifierO_AJSd5scoretG_Si_SiSdAKtsAE_pTg503_s8d148ML11RecommenderV21buildInteractionTable_12nearestItemsAA0e6LookupF0VAA0C12TrainingDataVyxq_G_Sayq__q_Sd5scoretGSgtKFSi_SiSdAKtq__q_SdAKt_tKXEfU_AA13f3V10G27O_AqA16CosineSimilarityVTG5AF0kvW0VyA2JGTf1cn_nTm;
      type metadata accessor for InteractionTableBuilder();
      v13 = v12;
      v10 = static InteractionTableBuilder.createFromItemInteractions(interactions:maximumInteractionsPerItem:minimumInteractionScore:)(v12, a5, v27);
      v13;
    }
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    v10 = v21;
    v21[0] = *(a1 + 32);
    v21[2] = v15;
    v21[1] = v14;
    v16 = *(a1 + 16);
    v23 = *(&v14 + 1);
    v24 = v15;
    v25 = *(v16 + 16);
    v26 = a7;
    outlined retain of [Int](&v23);
    outlined retain of [Int](&v24);
    outlined retain of ContiguousArray<Double>(&v24 + 1);
    _s8CreateML21ItemSimilarityTrainerV10similarity13configuration4data9itemCountACyxGxm_AA0cD13ConfigurationV13LinearAlgebra12SparseMatrixVySdGSitcfCAA07PearsonD0V_Ttt3g5Tm(a5, a6, v21, v25, v26, v27);
    v18 = a8();
    if (!v8)
    {
      v10 = v18;
    }

    qmemcpy(v20, v22, sizeof(v20));
    outlined release of ItemSimilarityTrainer<CosineSimilarity>(v20, &v23);
  }

  return v10;
}

unint64_t specialized RecommenderModel.computeStatistics(ratingCounts:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 16);
  v4 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v3, 0.0);
  *(v2 + 128);
  v5 = *(v2 + 32);
  v6 = *(v2 + 64);
  v16 = *(v2 + 48);
  v17 = v6;
  v15 = v5;
  v22 = *(&v16 + 1);
  v23 = *(&v6 + 1);
  v24[0] = v6;
  outlined retain of [Int](&v22);
  outlined retain of [Int](v24);
  outlined retain of ContiguousArray<Double>(&v23);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(&v15);
  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v4))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v9)
    {
      break;
    }

    if (v7 < 0)
    {
      BUG();
    }

    if (v7 >= v4[2])
    {
      BUG();
    }

    *&v4[v7 + 4] = v8 + *&v4[v7 + 4];
  }

  *(v2 + 128) = v4;
  v14[3] = v21;
  v14[2] = v20;
  v14[1] = v19;
  v14[0] = v18;
  result = outlined release of SparseMatrix<Double>.MajorCollection(v14, a2);
  *(v2 + 136) = xmmword_33FAE0;
  if (v3)
  {
    if (v3 > *(a1 + 16))
    {
      BUG();
    }

    v11 = INFINITY;
    v12 = -INFINITY;
    for (result = 0; result != v3; ++result)
    {
      if (result >= v4[2])
      {
        BUG();
      }

      v13 = *&v4[result + 4] / fmax(*(a1 + 8 * result + 32), 1.0);
      *&v4[result + 4] = v13;
      if (v11 > v13)
      {
        *(v2 + 136) = v13;
        v11 = v13;
      }

      if (v13 > v12)
      {
        *(v2 + 144) = v13;
        v12 = v13;
      }
    }

    *(v2 + 128) = v4;
  }

  return result;
}

unint64_t specialized closure #1 in Recommender.buildInteractionTable(_:nearestItems:)(uint64_t a1, uint64_t a2)
{
  v23 = *a1;
  v2 = *(a1 + 8);
  v25 = *(a1 + 16);
  v3 = *(a2 + 24);
  if (!*(v3 + 16) || (v4 = *(a1 + 24), v24 = *(a1 + 32), v26 = *(a1 + 40), v22 = *(a1 + 48), v5 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v2, v25), (v6 & 1) == 0))
  {
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v19 = v20;
    v12._object = "item identifiers." + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v12);
    *&v20 = v23;
    *(&v20 + 1) = v2;
    v13 = v25;
LABEL_8:
    v21 = v13;
    _print_unlocked<A, B>(_:_:)(&v20, &v19, &type metadata for MLRecommender.Identifier, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v15._object = "Nearest items entry " + 0x8000000000000000;
    v15._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v15);
    v16 = *(&v19 + 1);
    v8 = v19;
    v15._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v15._object, 0, 0);
    *v17 = __PAIR128__(v16, v8);
    *(v17 + 16) = 0;
    *(v17 + 32) = 0;
    *(v17 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v15._object);
    return v8;
  }

  v7 = v4;
  if (!*(v3 + 16) || (v8 = *(*(v3 + 56) + 8 * v5), v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v24, v26), (v10 & 1) == 0))
  {
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v19 = v20;
    v14._object = "item identifiers." + 0x8000000000000000;
    v14._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v14);
    *&v20 = v7;
    *(&v20 + 1) = v24;
    v13 = v26;
    goto LABEL_8;
  }

  v11 = *(*(v3 + 56) + 8 * v9);
  return v8;
}

void *specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v25 = a1;
  v24 = a1;
  while (1)
  {
    v7 = v24;
    if (v24 == a2)
    {
      break;
    }

    if (a2 < a1)
    {
      BUG();
    }

    if (v25 < a1)
    {
      BUG();
    }

    if (v24 >= a2)
    {
      BUG();
    }

    ++v24;
    if (*(a3 + 16) && (v8 = static Hasher._hash(seed:_:)(*(a3 + 40), v7), v9 = ~(-1 << *(a3 + 32)), v10 = v9 & v8, v11 = *(a3 + 8 * (v10 >> 6) + 56), _bittest64(&v11, v10)))
    {
      while (*(*(a3 + 48) + 8 * v10) != v7)
      {
        v10 = v9 & (v10 + 1);
        v12 = *(a3 + 8 * (v10 >> 6) + 56);
        if (!_bittest64(&v12, v10))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if ((a4 & 1) != 0 && *(a5 + 16) && (v13 = static Hasher._hash(seed:_:)(*(a5 + 40), v7), v14 = ~(-1 << *(a5 + 32)), v15 = v14 & v13, v16 = *(a5 + 8 * (v15 >> 6) + 56), _bittest64(&v16, v15)))
      {
        while (*(*(a5 + 48) + 8 * v15) != v7)
        {
          v15 = v14 & (v15 + 1);
          v17 = *(a5 + 8 * (v15 >> 6) + 56);
          if (!_bittest64(&v17, v15))
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v19 = v18 + 1;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v18)
        {
          v26 = v18 + 1;
          v22 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v19, 1);
          v19 = v26;
          v18 = v22;
        }

        _swiftEmptyArrayStorage[2] = v19;
        _swiftEmptyArrayStorage[v18 + 4] = v7;
        v25 = v24;
      }
    }
  }

  a5;
  a3;
  return _swiftEmptyArrayStorage;
}

void *specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(a1 + 32);
  v6 = a2;
  v7 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v7 = -1;
  }

  v8 = *(a1 + 56) & v7;
  v42 = a1 + 56;
  v41 = (63 - v5) >> 6;
  v39 = _swiftEmptyArrayStorage;
  v9 = 0;
  while (1)
  {
LABEL_4:
    if (v8)
    {
      v10 = v9;
      goto LABEL_25;
    }

    v11 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (v11 >= v41)
    {
      goto LABEL_43;
    }

    v8 = *(v42 + 8 * v11);
    if (v8)
    {
      v10 = v9 + 1;
      goto LABEL_25;
    }

    v10 = v9 + 2;
    if (v9 + 2 >= v41)
    {
      goto LABEL_43;
    }

    v8 = *(v42 + 8 * v11 + 8);
    if (!v8)
    {
      v10 = v9 + 3;
      if (v9 + 3 >= v41)
      {
        goto LABEL_43;
      }

      v8 = *(v42 + 8 * v11 + 16);
      if (!v8)
      {
        v10 = v9 + 4;
        if (v9 + 4 >= v41)
        {
          goto LABEL_43;
        }

        v8 = *(v42 + 8 * v11 + 24);
        if (!v8)
        {
          v10 = v9 + 5;
          if (v9 + 5 >= v41)
          {
            goto LABEL_43;
          }

          v8 = *(v42 + 8 * v11 + 32);
          if (!v8)
          {
            v10 = v9 + 6;
            if (v9 + 6 >= v41)
            {
              goto LABEL_43;
            }

            v8 = *(v42 + 8 * v11 + 40);
            if (!v8)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v13, v8);
    v8 &= v8 - 1;
    v14 = *(a1 + 48);
    v15 = (v10 << 9) | (8 * v13);
    v16 = *(v14 + v15);
    if (!*(v6 + 16))
    {
      goto LABEL_31;
    }

    v17 = static Hasher._hash(seed:_:)(*(v6 + 40), *(v14 + v15));
    v6 = a2;
    v18 = ~(-1 << *(a2 + 32));
    v19 = v18 & v17;
    v20 = *(a2 + 8 * (v19 >> 6) + 56);
    if (!_bittest64(&v20, v19))
    {
      goto LABEL_31;
    }

    v21 = *(a2 + 48);
    v9 = v10;
    if (*(v21 + 8 * v19) != v16)
    {
      while (1)
      {
        v19 = v18 & (v19 + 1);
        v22 = *(a2 + 8 * (v19 >> 6) + 56);
        if (!_bittest64(&v22, v19))
        {
          break;
        }

        if (*(v21 + 8 * v19) == v16)
        {
LABEL_37:
          v9 = v10;
          goto LABEL_4;
        }
      }

LABEL_31:
      if ((a3 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (!*(a4 + 16))
      {
        goto LABEL_38;
      }

      v23 = static Hasher._hash(seed:_:)(*(a4 + 40), v16);
      v6 = a2;
      v24 = ~(-1 << *(a4 + 32));
      v25 = v24 & v23;
      v26 = *(a4 + 8 * (v25 >> 6) + 56);
      if (!_bittest64(&v26, v25))
      {
        goto LABEL_38;
      }

      v27 = *(a4 + 48);
      v9 = v10;
      if (*(v27 + 8 * v25) != v16)
      {
        while (1)
        {
          v25 = v24 & (v25 + 1);
          v28 = *(a4 + 8 * (v25 >> 6) + 56);
          if (!_bittest64(&v28, v25))
          {
            break;
          }

          if (*(v27 + 8 * v25) == v16)
          {
            goto LABEL_37;
          }
        }

LABEL_38:
        v35 = v10;
        v29 = v39;
        v37 = v39;
        if (!swift_isUniquelyReferenced_nonNull_native(v39))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1);
          v29 = v39;
        }

        v30 = v29[2];
        v31 = v30 + 1;
        v6 = a2;
        v9 = v35;
        if (v29[3] >> 1 <= v30)
        {
          v40 = v30 + 1;
          v34 = v29[2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29[3] >= 2uLL, v31, 1);
          v31 = v40;
          v30 = v34;
          v9 = v35;
          v6 = a2;
          v29 = v37;
        }

        v29[2] = v31;
        v39 = v29;
        v29[v30 + 4] = v16;
      }
    }
  }

  v12 = v9 + 7;
  if (v9 + 7 >= v41)
  {
    goto LABEL_43;
  }

  v8 = *(v42 + 8 * v11 + 48);
  if (v8)
  {
    v10 = v9 + 7;
    goto LABEL_25;
  }

  while (1)
  {
    v10 = v12 + 1;
    if (v12 + 1 >= v41)
    {
      break;
    }

    v8 = *(a1 + 8 * v12++ + 64);
    if (v8)
    {
      goto LABEL_25;
    }
  }

LABEL_43:
  v32 = v6;
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  a4;
  v32;
  return v39;
}

void *specialized RecommenderModel.scoreAll<A>(itemIndices:userScores:)(void *a1, void *a2)
{
  v4 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, a2);
  if (v4)
  {
    return v4;
  }

  v6 = *(v2 + 120);
  v6;
  v5 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, v6);
  v6;
  if (!v5)
  {
    v26 = *(v2 + 136);
    v28 = *(v2 + 144);
    v7 = a1[2];
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0, _swiftEmptyArrayStorage);
    v9 = v7;
    v5 = v8;
    if (v9)
    {
      v29 = 1.0 / fmax(v28 - v26, 1.0);
      v25 = *(v2 + 128);
      v10 = *(v25 + 16);
      v27 = v9;
      a1;
      v11 = v10;
      v12 = v27;
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = a1[v13 + 4];
        if (v15 >= v11)
        {
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
          v16 = 0.0;
        }

        else
        {
          if (v15 < 0)
          {
            BUG();
          }

          v16 = (*(v25 + 8 * v15 + 32) - v26) * v29;
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
        }

        if (v19 <= v17)
        {
          v21 = v5;
          v22 = v14;
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v20, v14, v21);
          v14 = v22;
          v12 = v27;
          v5 = v23;
        }

        ++v13;
        v5[2] = v20;
        *&v5[v17 + 4] = v16;
      }

      while (v12 != v13);
      a1;
    }
  }

  return v5;
}

{
  v4 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, a2);
  if (v4)
  {
    return v4;
  }

  v6 = *(v2 + 120);
  v6;
  v5 = specialized RecommenderModel.score<A>(itemIndices:interactions:)(a1, v6);
  v6;
  if (!v5)
  {
    v26 = *(v2 + 136);
    v28 = *(v2 + 144);
    v7 = a1[2];
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0, _swiftEmptyArrayStorage);
    v9 = v7;
    v5 = v8;
    if (v9)
    {
      v29 = 1.0 / fmax(v28 - v26, 1.0);
      v25 = *(v2 + 128);
      v10 = *(v25 + 16);
      v27 = v9;
      a1;
      v11 = v10;
      v12 = v27;
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = a1[v13 + 4];
        if (v15 >= v11)
        {
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
          v16 = 0.0;
        }

        else
        {
          if (v15 < 0)
          {
            BUG();
          }

          v16 = (*(v25 + 8 * v15 + 32) - v26) * v29;
          v17 = v5[2];
          v18 = v5[3];
          v19 = v18 >> 1;
          v20 = v17 + 1;
        }

        if (v19 <= v17)
        {
          v21 = v5;
          v22 = v14;
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v20, v14, v21);
          v14 = v22;
          v12 = v27;
          v5 = v23;
        }

        ++v13;
        v5[2] = v20;
        *&v5[v17 + 4] = v16;
      }

      while (v12 != v13);
      a1;
    }
  }

  return v5;
}

char specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (*(a6 + 16) <= a1)
  {
    BUG();
  }

  v8 = *(a6 + 16 * a1 + 32);
  if (v8 < 0)
  {
    BUG();
  }

  v9 = v6;
  v10 = *(a5 + 16);
  if (v8 >= *(v10 + 16))
  {
    BUG();
  }

  v14 = *(a6 + 16 * a1 + 40);
  v11 = *(v10 + 24 * v8 + 32);
  v15 = *(v10 + 24 * v8 + 40);
  v12 = *(v10 + 24 * v8 + 48);
  v17 = a4 & 1;
  v16 = a3;
  outlined copy of MLRecommender.Identifier(a2, a3, a4);
  outlined copy of MLRecommender.Identifier(v11, v15, v12);
  *v9 = a2;
  *(v9 + 8) = v16;
  *(v9 + 16) = v17;
  *(v9 + 24) = v11;
  *(v9 + 32) = v15;
  result = v12;
  *(v9 + 40) = v12;
  *(v9 + 48) = v14;
  *(v9 + 56) = a1 + 1;
  return result;
}