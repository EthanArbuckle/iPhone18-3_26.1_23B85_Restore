uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSf_Tt1g5(uint64_t a1, __m128 a2)
{
  v51 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v47 = a1;
  v48 = v4;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v44 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v50 = v45;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v44 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v38, v43, v4, v5);
      v13 = *v12;
      *v12;
      v11(v38, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v49 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v49;
          v16 = 0;
          v17 = v51;
          v46 = v13;
          v39 = v14;
          while (1)
          {
            v18 = *(v13 + 4 * v16 + 32);
            v38[3] = &type metadata for Float;
            LODWORD(v38[0]) = v18.i32[0];
            MLDataValue.init(fromAny:)(v38, v18);
            if (v17)
            {
              break;
            }

            a2 = v36;
            v19 = v37;
            v49 = v15;
            v20 = v15[2];
            v21 = v15[3];
            if (v21 >> 1 <= v20)
            {
              v52 = v37;
              v51 = 0;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v20 + 1, 1);
              v19 = v52;
              a2 = v36;
              v17 = v51;
              v15 = v49;
            }

            ++v16;
            v15[2] = v20 + 1;
            v22 = 3 * v20;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v19;
            v13 = v46;
            if (v39 == v16)
            {
              v51 = v17;
              goto LABEL_17;
            }
          }

          v51 = v17;
          v50;
          v13;
          v15;
          return (*(*(v48 - 8) + 8))(v47);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = v38[0];
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v50;
      v45 = v50;
      v26 = v50[2];
      v27 = v50[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v46) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v46;
        v25 = v45;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v50 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v48;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v43, v48, v41);
      v8 = v40;
      if (v40 == v44)
      {
        v35 = v50;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  v38[0] = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v38[0];
  (*(*(v48 - 8) + 8))(v47);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}

uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSd_Tt1g5(uint64_t a1, __m128 a2)
{
  v51 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Double]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v47 = a1;
  v48 = v4;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v44 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v50 = v45;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v44 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v38, v43, v4, v5);
      v13 = *v12;
      *v12;
      v11(v38, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v49 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v49;
          v16 = 0;
          v17 = v51;
          v46 = v13;
          v39 = v14;
          while (1)
          {
            v18 = *(v13 + 8 * v16 + 32);
            v38[3] = &type metadata for Double;
            v38[0] = v18.i64[0];
            MLDataValue.init(fromAny:)(v38, v18);
            if (v17)
            {
              break;
            }

            a2 = v36;
            v19 = v37;
            v49 = v15;
            v20 = v15[2];
            v21 = v15[3];
            if (v21 >> 1 <= v20)
            {
              v52 = v37;
              v51 = 0;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v20 + 1, 1);
              v19 = v52;
              a2 = v36;
              v17 = v51;
              v15 = v49;
            }

            ++v16;
            v15[2] = v20 + 1;
            v22 = 3 * v20;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v19;
            v13 = v46;
            if (v39 == v16)
            {
              v51 = v17;
              goto LABEL_17;
            }
          }

          v51 = v17;
          v50;
          v13;
          v15;
          return (*(*(v48 - 8) + 8))(v47);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = v38[0];
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v50;
      v45 = v50;
      v26 = v50[2];
      v27 = v50[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v46) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v46;
        v25 = v45;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v50 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v48;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v43, v48, v41);
      v8 = v40;
      if (v40 == v44)
      {
        v35 = v50;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  v38[0] = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v38[0];
  (*(*(v48 - 8) + 8))(v47);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}

uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSS_Tt1g5(uint64_t a1, __m128 a2)
{
  v49 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v50 = a1;
  v51 = v4;
  if (v6)
  {
    v48 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v45 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v53 = v48;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v45 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v43, v44, v4, v5);
      v13 = *v12;
      *v12;
      v11(v43, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v52 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v52;
          v46 = v13;
          v16 = (v13 + 40);
          while (1)
          {
            v17 = *(v16 - 1);
            v18 = *v16;
            v43[3] = &type metadata for String;
            v43[0] = v17;
            v43[1] = v18;
            swift_bridgeObjectRetain_n(v18, 2);
            v19 = v49;
            MLDataValue.init(fromAny:)(v43, a2);
            v49 = v19;
            if (v19)
            {
              break;
            }

            v18;
            a2 = v38;
            v20 = v39;
            v52 = v15;
            v21 = v15[2];
            v22 = v15[3];
            v23 = v21 + 1;
            if (v22 >> 1 <= v21)
            {
              v47 = v21 + 1;
              v54 = v39;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v23, 1);
              v23 = v47;
              v20 = v54;
              a2 = v38;
              v15 = v52;
            }

            v15[2] = v23;
            v24 = 3 * v21;
            *&v15[v24 + 4] = a2;
            LOBYTE(v15[v24 + 6]) = v20;
            v16 += 2;
            if (!--v14)
            {
              v13 = v46;
              goto LABEL_17;
            }
          }

          v53;
          v46;
          v15;
          v18;
          return (*(*(v51 - 8) + 8))(v50);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v26 = v43[0];
        v25 = 3;
      }

      else
      {
        v25 = 6;
        v26 = 0;
      }

      v27 = v53;
      v48 = v53;
      v28 = v53[2];
      v29 = v53[3];
      if (v29 >> 1 <= v28)
      {
        LOBYTE(v53) = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 >= 2, v28 + 1, 1);
        v25 = v53;
        v27 = v48;
      }

      v27[2] = v28 + 1;
      v30 = 3 * v28;
      v27[v30 + 4] = v26;
      v27[v30 + 5] = 0;
      v53 = v27;
      LOBYTE(v27[v30 + 6]) = v25;
      v4 = v51;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v44, v51, v41);
      v8 = v40;
      if (v40 == v45)
      {
        v37 = v53;
        goto LABEL_24;
      }
    }
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_24:
  v43[0] = v37;
  v32 = alloca(24);
  v33 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v36 = v35;
  v43[0];
  (*(*(v51 - 8) + 8))(v50);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(v42 + 8) = v36 & 1;
  return result;
}

uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCyp_Tt1g5(uint64_t a1, __m128 a2)
{
  v50 = v3;
  v44 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Any]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Any]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v51 = a1;
  v52 = v4;
  if (v6)
  {
    v49 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v46 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v54 = v49;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v46 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = &type metadata for Any + 8;
    v43 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v42 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v40, v45, v4, v5);
      v13 = *v12;
      *v12;
      v11(v40, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v53 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v53;
          v47 = v13;
          v16 = v13 + 32;
          while (1)
          {
            outlined init with copy of Any(v16, v40);
            v36[3] = v41;
            v36[0] = swift_allocObject(&unk_391570, 48, 7);
            outlined init with copy of Any(v40, v36[0] + 16);
            v17 = v50;
            MLDataValue.init(fromAny:)(v36, a2);
            if (v17)
            {
              break;
            }

            v50 = 0;
            __swift_destroy_boxed_opaque_existential_1Tm(v40);
            a2 = v38;
            v18 = v39;
            v53 = v15;
            v19 = v15[2];
            v20 = v15[3];
            v21 = v19 + 1;
            if (v20 >> 1 <= v19)
            {
              v48 = v19 + 1;
              v55 = v39;
              v37 = v38;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v21, 1);
              v21 = v48;
              v18 = v55;
              a2 = v37;
              v15 = v53;
            }

            v15[2] = v21;
            v22 = 3 * v19;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v18;
            v16 += 32;
            if (!--v14)
            {
              v13 = v47;
              goto LABEL_17;
            }
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          v54;
          v47;
          v15;
          return (*(*(v52 - 8) + 8))(v51);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = v40[0];
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v54;
      v49 = v54;
      v26 = v54[2];
      v27 = v54[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v54) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v54;
        v25 = v49;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v54 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v52;
      v5 = v43;
      dispatch thunk of Collection.formIndex(after:)(v45, v52, v43);
      v8 = v42;
      if (v42 == v46)
      {
        v35 = v54;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  v40[0] = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  v36[2] = v40;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v40[0];
  (*(*(v52 - 8) + 8))(v51);
  result = v44;
  *v44 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}

uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxSgGGKclufCyp_Tt1g5(uint64_t a1, __m128 a2)
{
  v36 = v3;
  v31 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Any?]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Any?]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v37 = a1;
  v38 = v4;
  if (v6)
  {
    v35 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v34 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v5;
    v9 = v35;
    v33 = v8;
    dispatch thunk of Collection.startIndex.getter(v4, v8);
    if (v34 < 0)
    {
      BUG();
    }

    v10 = 0;
    while (1)
    {
      if (__OFADD__(1, v10++))
      {
        BUG();
      }

      v12 = dispatch thunk of Collection.subscript.read(v27, v32, v38, v33);
      v14 = *v13;
      *v13;
      *a2.i64 = v12(v27, 0);
      v15 = v36;
      specialized closure #1 in MLUntypedColumn.init<A>(_:)(v14, a2);
      if (v15)
      {
        break;
      }

      v36 = 0;
      v14;
      a2 = v29;
      v16 = v30;
      v35 = v9;
      v17 = v9[2];
      v18 = v9[3];
      v19 = v17 + 1;
      if (v18 >> 1 <= v17)
      {
        v39 = v30;
        v28 = v29;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v19, 1);
        v16 = v39;
        a2 = v28;
        v9 = v35;
      }

      v9[2] = v19;
      v20 = 3 * v17;
      *&v9[v20 + 4] = a2;
      LOBYTE(v9[v20 + 6]) = v16;
      dispatch thunk of Collection.formIndex(after:)(v32, v38, v33);
      if (v10 == v34)
      {
        goto LABEL_13;
      }
    }

    v9;
    v14;
    return (*(*(v38 - 8) + 8))(v37);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_13:
    v27[0] = v9;
    v21 = alloca(24);
    v22 = alloca(32);
    v27[2] = v27;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
    v25 = v24;
    v27[0];
    (*(*(v38 - 8) + 8))(v37);
    result = v31;
    *v31 = ML14_UntypedColumnC_s5Error_pTt1g5;
    *(result + 8) = v25 & 1;
  }

  return result;
}

uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySDySSxGGKclufCSi_Tt1g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *), uint64_t (*a5)(uint64_t), double a6)
{
  v42 = a5;
  v44 = a4;
  v51 = v7;
  v43 = v6;
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledName(a2);
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(a3, a2, &protocol conformance descriptor for Column<A>);
  v13 = dispatch thunk of Collection.count.getter(v11, v12);
  v49 = v10;
  v50 = v11;
  if (v13)
  {
    v48 = _swiftEmptyArrayStorage;
    v14 = 0;
    if (v13 > 0)
    {
      v14 = v13;
    }

    v47 = v13;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v52 = v48;
    dispatch thunk of Collection.startIndex.getter(v11, v12);
    if (v47 < 0)
    {
      BUG();
    }

    v46 = v12;
    v15 = 0;
    while (1)
    {
      v16 = __OFADD__(1, v15);
      v17 = v15 + 1;
      if (v16)
      {
        BUG();
      }

      v41 = v17;
      v18 = dispatch thunk of Collection.subscript.read(v40, v45, v11, v46);
      v20 = *v19;
      *v19;
      v18(v40, 0);
      if (v20)
      {
        v21 = v51;
        v22 = v42(v20);
        if (v21)
        {
          v52;
          v20;
          return (*(*(v50 - 8) + 8))(v49);
        }

        v23 = v22;
        v51 = 0;
        v24 = *(v22 + 16);
        v25 = &_swiftEmptyDictionarySingleton;
        if (v24)
        {
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, MLDataValue>);
          v25 = static _DictionaryStorage.allocate(capacity:)(v24);
        }

        v40[0] = v25;
        v23;
        v26 = v51;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v23, 1, v40, a6);
        v51 = v26;
        if (v26)
        {
          swift_unexpectedError(v51, "Swift/Dictionary.swift", 22, 1, 489);
          BUG();
        }

        v20;
        v23;
        v27 = v40[0];
        v28 = 4;
      }

      else
      {
        v28 = 6;
        v27 = 0;
      }

      v29 = v52;
      v48 = v52;
      v30 = v52[2];
      v31 = v52[3];
      if (v31 >> 1 <= v30)
      {
        v52 = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 >= 2, v30 + 1, 1);
        v27 = v52;
        v29 = v48;
      }

      v29[2] = v30 + 1;
      v32 = 3 * v30;
      v29[v32 + 4] = v27;
      v29[v32 + 5] = 0;
      v52 = v29;
      LOBYTE(v29[v32 + 6]) = v28;
      v11 = v50;
      dispatch thunk of Collection.formIndex(after:)(v45, v50, v46);
      v15 = v41;
      if (v41 == v47)
      {
        v33 = v52;
        goto LABEL_19;
      }
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_19:
  v40[0] = v33;
  v34 = alloca(24);
  v35 = alloca(32);
  v40[2] = v40;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(v44);
  v38 = v37;
  v40[0];
  (*(*(v50 - 8) + 8))(v49);
  result = v43;
  *v43 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v38 & 1;
  return result;
}

uint64_t _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(uint64_t a1, double a2)
{
  v3 = a1;
  v4 = v2;
  v5 = tc_v1_flex_list_create(0);
  if (!v5)
  {
    BUG();
  }

  v6 = v5;
  v7 = type metadata accessor for CMLSequence();
  v8 = swift_allocObject(v7, 25, 7);
  *(v8 + 16) = v6;
  v28 = v8;
  *(v8 + 24) = 1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v26 = v4;
    a1;
    v10 = (a1 + 48);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v25 = *v10;
      v24 = v9;
      switch(*v10)
      {
        case 0:
          v13 = specialized handling<A, B>(_:_:)(v11);
          if (!v13)
          {
            BUG();
          }

          goto LABEL_11;
        case 1:
          a2 = *(v10 - 2);
          v13 = specialized handling<A, B>(_:_:)();
          if (!v13)
          {
            BUG();
          }

LABEL_11:
          v18 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v18, 25, 7);
          v19 = CMLFeatureValue.init(rawValue:ownsValue:)(v13, 1);
          goto LABEL_16;
        case 2:
          type metadata accessor for CMLFeatureValue();
          outlined copy of MLDataValue(v11, v12, 2u);
          swift_bridgeObjectRetain_n(v12, 2);
          v16 = CMLFeatureValue.__allocating_init(_:)(v11, v12);
          v17 = 2;
          v14 = v16;
          v15 = v12;
          goto LABEL_14;
        case 3:
          swift_retain_n(v11, 3);
          v14 = MLDataValue.SequenceType.featureValue.getter(a2);
          v11;
          v15 = v12;
          v23 = 3;
          goto LABEL_13;
        case 4:
          swift_bridgeObjectRetain_n(v11, 3);
          v14 = MLDataValue.DictionaryType.featureValue.getter();
          v11;
          v15 = v12;
          v23 = 4;
          goto LABEL_13;
        case 5:
          v20 = v11;
          v21 = v20;
          v21;
          v14 = MLDataValue.MultiArrayType.featureValue.getter();

          v15 = v12;
          v23 = 5;
LABEL_13:
          v17 = v23;
LABEL_14:
          outlined consume of MLDataValue(v11, v15, v17);
          break;
        case 6:
          type metadata accessor for CMLFeatureValue();
          v19 = CMLFeatureValue.__allocating_init()(0);
LABEL_16:
          v14 = v19;
          break;
      }

      CMLSequence.append(_:)(v14);
      v14;
      outlined consume of MLDataValue(v11, v12, v25);
      v10 += 24;
      --v9;
    }

    while (v24 != 1);
    v3 = a1;
    a1;
    v4 = v26;
  }

  v3;
  result = v28;
  *v4 = v28;
  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, __m128 a2)
{
  if (!a1)
  {
    *result = 0;
    *(result + 16) = 6;
    return result;
  }

  v18 = result;
  v23 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v22 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = a1 + 32;
    v17 = &type metadata for Any + 8;
    while (1)
    {
      v21 = v5;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v6, v12, &demangling cache variable for type metadata for Any?);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &v13, &demangling cache variable for type metadata for Any?);
      v16 = v4;
      if (v14)
      {
        outlined init with take of Any(&v13, v11);
        v14 = v17;
        *&v13 = swift_allocObject(&unk_391570, 48, 7);
        outlined init with copy of Any(v11, v13 + 16);
        v7 = v23;
        MLDataValue.init(fromAny:)(&v13, a2);
        v23 = v7;
        v5 = v21;
        if (v7)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
          return v5;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        v15 = v19;
        v24 = v20;
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v13, &demangling cache variable for type metadata for Any?);
        v19 = 0;
        v20 = 6;
        v15 = 0;
        v24 = 6;
        v5 = v21;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
      v22 = v5;
      v8 = v5[2];
      if (v5[3] >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5[3] >= 2uLL, v8 + 1, 1);
        v5 = v22;
      }

      v5[2] = v8 + 1;
      v9 = 3 * v8;
      a2 = v15;
      *&v5[v9 + 4] = v15;
      LOBYTE(v5[v9 + 6]) = v24;
      v6 += 32;
      v4 = v16 - 1;
      if (v16 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_14:
  _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v5, *a2.i64);
  result = v12[0];
  v10 = v18;
  *v18 = v12[0];
  v10[1] = 0;
  *(v10 + 16) = 3;
  return result;
}

char specialized closure #1 in closure #1 in MLUntypedColumn.init<A>(_:)(__m128 *a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a3, &v13, &demangling cache variable for type metadata for (key: String, value: Any?)?);
  if (v13.i64[1])
  {
    v4 = v13;
    v12 = v15;
    v11 = v14;
    v10 = v13;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &v13, &demangling cache variable for type metadata for (key: String, value: Any?));
    v13.i64[1];
    if (*(&v15 + 1))
    {
      outlined init with take of Any(&v14, v9);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &v13, &demangling cache variable for type metadata for (key: String, value: Any?));
      v16 = v3;
      v5 = v13;
      *a1 = v13;
      a1[1].i8[0] = 2;
      v8[3] = &type metadata for Any + 8;
      v8[0] = swift_allocObject(&unk_391570, 48, 7);
      outlined init with copy of Any(v9, v8[0] + 16);
      v6 = v16;
      MLDataValue.init(fromAny:)(v8, v4);
      if (v6)
      {
        outlined consume of MLDataValue(v5.i64[0], v5.i64[1], 2);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for (key: String, value: Any?));
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for Any?);
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for Any?);
      v13 = v10;
      v15 = v12;
      v14 = v11;
      *a1 = v10;
      a1[1].i8[0] = 2;
      *a2 = 0;
      *(a2 + 16) = 6;
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for Any?);
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v13, &demangling cache variable for type metadata for (key: String, value: Any?)?);
    *a1 = 0;
    result = 6;
    a1[1].i8[0] = 6;
    *a2 = 0;
    *(a2 + 16) = 6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, int a2, void *a3, double a4)
{
  v44 = v4;
  v51 = a3;
  v53 = a2;
  v43 = *(a1 + 16);
  a1;
  v50 = a1;
  v45 = (a1 + 72);
  v5 = 0;
  while (1)
  {
    if (v43 == v5)
    {
      return swift_bridgeObjectRelease_n(v50, 2);
    }

    if (v5 >= *(v50 + 16))
    {
      BUG();
    }

    v6 = *(v45 - 24);
    v55 = *v45;
    v7 = *(v45 - 1);
    v8 = *(v45 - 2);
    v9 = *(v45 - 5);
    v10 = *(v45 - 4);
    v54 = v6;
    v52 = v6;
    v42 = v5;
    outlined copy of MLDataValue(v9, v10, v6);
    v48 = v55;
    outlined copy of MLDataValue(v8, v7, v55);
    if (v52 == 0xFF)
    {
      return swift_bridgeObjectRelease_n(v50, 2);
    }

    v47 = v8;
    v46 = v7;
    v39[0] = v9;
    v39[1] = v10;
    v40 = v52;
    *&v11 = v9;
    v12 = *v51;
    v49 = v10;
    *(&v11 + 1) = v10;
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v52, a4);
    v15 = v14;
    *&v11 = (v13 & 1) == 0;
    v16 = __OFADD__(v12[2], v11);
    v17 = v12[2] + v11;
    if (v16)
    {
      BUG();
    }

    v18 = v13;
    if (v12[3] >= v17)
    {
      if ((v53 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLDataValue, MLDataValue>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, v53);
      v19 = *v51;
      *&v20 = v9;
      *(&v20 + 1) = v49;
      specialized __RawDictionaryStorage.find<A>(_:)(v20, v52, a4);
      v15 = v23;
      LOBYTE(v24) = v24 & 1;
      if ((v18 & 1) != v24)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v49, v24, v21, v22);
        BUG();
      }
    }

    v25 = v9;
    if (v18)
    {
      break;
    }

    v26 = *v51;
    v26[(v15 >> 6) + 8] |= 1 << v15;
    v27 = v26[6];
    v28 = 24 * v15;
    *(v27 + v28) = v9;
    *(v27 + v28 + 8) = v49;
    *(v27 + v28 + 16) = v54;
    v29 = v26[7];
    *(v29 + v28) = v47;
    *(v29 + v28 + 8) = v46;
    *(v29 + v28 + 16) = v55;
    v30 = v26[2];
    v16 = __OFADD__(1, v30);
    v31 = v30 + 1;
    if (v16)
    {
      BUG();
    }

    v26[2] = v31;
    v45 += 48;
    v5 = v42 + 1;
    LOBYTE(v26) = 1;
    v53 = v26;
  }

  v33 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v41 = v33;
  swift_errorRetain(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v41, v34, &type metadata for _MergeError, 0))
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v36._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)(v39, &v37, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v36._countAndFlagsBits = 39;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v37, v38, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v35 = v50;
  v50;
  outlined consume of MLDataValue(v47, v46, v48);
  outlined consume of MLDataValue(v25, v49, v52);
  v35;
  return v41;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2, a1);
  return a2;
}

uint64_t outlined copy of MLDataValue(void *a1, void *a2, unsigned __int8 a3)
{
  result = a3 - 2;
  switch(a3)
  {
    case 2u:
      a1 = a2;
      goto LABEL_3;
    case 3u:
      result = a1;
      break;
    case 4u:
LABEL_3:
      result = a1;
      break;
    case 5u:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Array<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *(*(a2 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *a1;
  if (*(a1 + 8))
  {
    outlined consume of Result<_DataTable, Error>(*a1, 1);
    return static Array._allocateUninitialized(_:)(0, a2);
  }

  else
  {
    v19 = Array.init()(a2);
    v16 = v19;
    v17 = v8;
    v18 = 0;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    v11 = type metadata accessor for MLDataColumn(0, a2, a3, v10);
    v12 = MLDataColumn.count.getter(0);
    outlined consume of Result<_DataTable, Error>(v8, 0);
    if (v12 < 0)
    {
      BUG();
    }

    if (v12)
    {
      v19 = v12;
      v13 = 0;
      v15 = v11;
      do
      {
        v17 = v8;
        v18 = 0;
        outlined copy of Result<_DataTable, Error>(v8, 0);
        MLDataColumn.subscript.getter(v13, v15, a4);
        outlined consume of Result<_DataTable, Error>(v8, 0);
        v14 = type metadata accessor for Array(0, a2);
        Array.append(_:)(&v15, v14);
        ++v13;
      }

      while (v19 != v13);
      outlined consume of Result<_DataTable, Error>(v8, 0);
      return v16;
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v8, 0);
      return v19;
    }
  }
}

uint64_t MLDataColumn.count.getter()
{
  if (v0[8])
  {
    return -1;
  }

  v2 = *v0;
  v3 = *(*v0 + 16);
  outlined copy of Result<_DataTable, Error>(v2, 0);
  v4 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v2, 0);
  return v4;
}

uint64_t MLDataColumn.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a2;
  v15 = v4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v6 + 16))(&v13, a1);
  MLUntypedColumn.init<A>(repeating:count:)(&v13, v17, a3, v16);
  (*(v6 + 8))(a1, a3);
  result = v13;
  v11 = v14;
  v12 = v15;
  *v15 = v13;
  *(v12 + 8) = v11;
  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1, uint64_t a2, double a3)
{
  v15 = v3;
  v5 = *(a2 + 16);
  v14 = type metadata accessor for Optional(0, v5);
  v13 = *(v14 - 8);
  v6 = *(v13 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(v4 + 8);
  v11 = *v4;
  v12 = v9;
  MLDataColumn.element(at:)(a1, a2, a3);
  if (__swift_getEnumTagSinglePayload(&v11, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(v15, &v11, v5);
  }

  (*(*(a2 + 24) + 24))(v5);
  result = __swift_getEnumTagSinglePayload(&v11, 1, v5);
  if (result != 1)
  {
    return (*(v13 + 8))(&v11, v14);
  }

  return result;
}

uint64_t MLDataColumn.init(from:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *result = *a1;
  *(result + 8) = v2;
  return result;
}

uint64_t MLDataColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v17 = a4;
  v16 = v5;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  (*(v7 + 16))(&v14, a1);
  MLUntypedColumn.init<A>(_:)(&v14, a3);
  (*(v7 + 8))(a1, a3);
  result = v14;
  v12 = v15;
  v13 = v16;
  *v16 = v14;
  *(v13 + 8) = v12;
  return result;
}

uint64_t MLDataColumn.element(at:)(uint64_t a1, uint64_t a2, double a3)
{
  if (*(v3 + 8))
  {
    v5 = 0;
    v6 = 6;
  }

  else
  {
    v7 = *v3;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    _UntypedColumn.valueAtIndex(index:)(a1, a3);
    outlined consume of Result<_DataTable, Error>(v7, 0);
    v5 = v10;
    v6 = v11;
  }

  v8 = *(a2 + 16);
  v10 = v5;
  v11 = v6;
  return (*(*(a2 + 24) + 16))(&v10, v8, *(a2 + 24));
}

uint64_t MLDataColumn.init<A>(column:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  MLDataColumn.map<A>(to:)(a2, a2, a3, a5);
  outlined consume of Result<_DataTable, Error>(v7, v8);
  result = v10;
  *v6 = v10;
  *(v6 + 8) = v11;
  return result;
}

uint64_t MLDataColumn.map<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  outlined copy of Result<_DataTable, Error>(*v4, v9);
  MLUntypedColumn.map<A>(to:)(a1, a3, a4);
  return outlined consume of Result<_DataTable, Error>(v8, v9);
}

BOOL MLDataColumn.isEmpty.getter()
{
  v1 = *v0;
  v5 = *(v0 + 8);
  v2 = *v0;
  outlined copy of Result<_DataTable, Error>(*v0, v5);
  v3 = MLDataColumn.count.getter(v2);
  outlined consume of Result<_DataTable, Error>(v1, v5);
  return v3 <= 0;
}

uint64_t MLDataColumn.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  outlined copy of Result<_DataTable, Error>(*v0, 1);
  return v1;
}

uint64_t MLDataColumn.init(repeating:count:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v4;
  v5 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v5, 24, 7);
  result = _UntypedColumn.init(repeating:count:)(&v7, a2);
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

uint64_t MLDataColumn.init()()
{
  v1 = v0;
  v2 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  result = swift_allocError(&type metadata for MLCreateError, v2, 0, 0);
  *v4 = 0xD00000000000001DLL;
  *(v4 + 8) = "id column named '" + 0x8000000000000000;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 1;
  *v1 = result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t MLDataColumn.append(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v1;
  if (*(v2 + 8))
  {
    if (v4)
    {
      outlined copy of Result<_DataTable, Error>(*a1, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(*a1, 0);
    }

    outlined copy of Result<_DataTable, Error>(v5, 1);
    v6 = 1;
  }

  else if (v4)
  {
    outlined copy of Result<_DataTable, Error>(*a1, 1);
    swift_errorRetain(v3);
    v6 = 1;
    v5 = v3;
  }

  else
  {
    v9 = *(a1 + 8);
    outlined copy of Result<_DataTable, Error>(v3, 0);
    outlined copy of Result<_DataTable, Error>(v5, 0);
    v7 = _UntypedColumn.appending(contentsOf:)(v3);
    outlined consume of Result<_DataTable, Error>(v5, 0);
    v5 = v7;
    v6 = 0;
    v4 = v9;
  }

  outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 2));
  result = outlined consume of Result<_DataTable, Error>(v3, v4);
  *v2 = v5;
  *(v2 + 8) = v6;
  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1)
{
  return MLDataColumn.subscript.getter(a1);
}

{
  v3 = v1;
  v4 = *(a1 + 8);
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *a1;
  v11 = v4;
  outlined copy of Result<_DataTable, Error>(v8, v9);
  outlined copy of Result<_DataTable, Error>(v10, v4);
  MLUntypedColumn.subscript.getter(&v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  outlined consume of Result<_DataTable, Error>(v8, v9);
  result = v6;
  *v3 = v6;
  *(v3 + 8) = v7;
  return result;
}

{
  return MLDataColumn.subscript.getter(a1);
}

char MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v26 = v6;
  v28 = a2;
  v32 = *v7;
  v11 = *(v7 + 8);
  v12 = swift_allocObject(&unk_391650, 64, 7);
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  v12[2] = v13;
  v29 = a5;
  v12[3] = a5;
  v15 = v27;
  v12[4] = v14;
  v30 = a6;
  v12[5] = a6;
  v12[6] = v28;
  v12[7] = v15;
  if (v11)
  {
    v16 = v32;
    v31 = v32;
    outlined copy of Result<_DataTable, Error>(v32, 1);

    outlined copy of Result<_DataTable, Error>(v32, 1);
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v18 = _getErrorEmbeddedNSError<A>(_:)(&v31, v17, &protocol self-conformance witness table for Error);
    if (v18)
    {
      v19 = v18;
      outlined consume of Result<_DataTable, Error>(v16, 1);
    }

    else
    {
      v19 = swift_allocError(v17, &protocol self-conformance witness table for Error, 0, 0);
      *v23 = v16;
    }

    outlined consume of Result<_DataTable, Error>(v16, 1);

    result = 1;
  }

  else
  {
    v20 = v32;
    v25 = v32;
    v21 = v13;

    outlined copy of Result<_DataTable, Error>(v32, 0);
    closure #2 in MLDataColumn.map<A>(skipUndefined:_:)(&v25, partial apply for closure #1 in MLDataColumn.map<A>(skipUndefined:_:), v12, v21, v29, v14, v30);
    outlined consume of Result<_DataTable, Error>(v20, 0);

    v19 = v31;
    result = 0;
  }

  v24 = v26;
  *v26 = v19;
  *(v24 + 8) = result;
  return result;
}

uint64_t closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8)
{
  v31 = a6;
  v26 = a3;
  v25 = a2;
  v28 = type metadata accessor for Optional(0, a5);
  v29 = *(v28 - 8);
  v10 = *(v29 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v27 = *(a5 - 8);
  v13 = *(v27 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v30 = &v23;
  v23 = type metadata accessor for Optional(0, a4);
  v24 = *(v23 - 8);
  v16 = *(v24 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  if (CMLFeatureValue.isUndefined.getter())
  {
    __swift_storeEnumTagSinglePayload(&v23, 1, 1, a4);
  }

  else
  {
    static MLDataValueConvertible.makeInstance(featureValue:)(a1, a4, v31, a7);
  }

  v25(&v23);
  if (__swift_getEnumTagSinglePayload(&v23, 1, a5) == 1)
  {
    (*(v29 + 8))(&v23, v28);
    type metadata accessor for CMLFeatureValue();
    v19 = CMLFeatureValue.__allocating_init()(0);
  }

  else
  {
    v20 = v30;
    v21 = v27;
    (*(v27 + 32))(v30, &v23, a5);
    v19 = MLDataValueConvertible.featureValue.getter(a5, a8);
    (*(v21 + 8))(v20, a5);
  }

  (*(v24 + 8))(&v23, v23);
  return v19;
}

uint64_t closure #2 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v9 = *a1;
  (*(a7 + 8))(a5);
  result = _UntypedColumn.map(_:skipUndefined:outputType:)(a2, a3, 0, v12);
  *v11 = result;
  return result;
}

uint64_t MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return MLDataColumn.map<A>(_:)(a1, a2, a3, a4, a5, &unk_391598, partial apply for closure #1 in MLDataColumn.map<A>(_:));
}

{
  return MLDataColumn.map<A>(_:)(a1, a2, a3, a4, a5, &unk_3915C0, partial apply for closure #1 in MLDataColumn.map<A>(_:));
}

uint64_t closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v5 = type metadata accessor for Optional(0, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v6 + 16))(v11, a1, v5);
  if (__swift_getEnumTagSinglePayload(v11, 1, a4) == 1)
  {
    BUG();
  }

  (v11[0])(v11);
  return (*(*(a4 - 8) + 8))(v11, a4);
}

uint64_t MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *v7;
  v14 = *(v7 + 8);
  v10 = swift_allocObject(a6, 64, 7);
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = a1;
  v10[7] = a2;

  MLDataColumn.map<A>(skipUndefined:_:)(1, a7, v10, a3, a4, a5);
}

uint64_t closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = a2;
  v7 = v5;
  v8 = type metadata accessor for Optional(0, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  (*(v9 + 16))(&v14, a1, v8);
  if (__swift_getEnumTagSinglePayload(&v14, 1, a4) == 1)
  {
    BUG();
  }

  v16(&v14);
  (*(*(a4 - 8) + 8))(&v14, a4);
  return __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
}

char MLDataColumn.mapMissing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *(v5 + 8);
  return MLDataColumn.map<A>(skipUndefined:_:)(0, a1, a2, a3, a4, a5);
}

char MLDataColumn.fillMissing(with:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v12[0] = *v3;
    swift_errorRetain(v5);
    outlined copy of Result<_DataTable, Error>(v5, 1);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v12, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v5;
    }

    outlined consume of Result<_DataTable, Error>(v5, 1);
    result = 1;
  }

  else
  {
    v11 = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 0);
    closure #1 in MLDataColumn.fillMissing(with:)(&v11, a1, *(a2 + 16), *(a2 + 24));
    outlined consume of Result<_DataTable, Error>(v5, 0);
    v8 = v12[0];
    result = 0;
  }

  *v4 = v8;
  *(v4 + 8) = result;
  return result;
}

uint64_t closure #1 in MLDataColumn.fillMissing(with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = v4;
  v6 = *a1;
  v7 = MLDataValueConvertible.featureValue.getter(a3, a4);
  v8 = specialized handling<A, B, C>(_:_:_:)(*(*(v6 + 16) + 16), *(v7 + 16));
  if (v5)
  {
  }

  v10 = v8;
  if (!v8)
  {
    BUG();
  }

  v11 = type metadata accessor for CMLColumn();
  v12 = swift_allocObject(v11, 24, 7);
  *(v12 + 16) = v10;
  v13 = type metadata accessor for _UntypedColumn();
  v14 = swift_allocObject(v13, 24, 7);
  *(v14 + 16) = v12;

  result = v15;
  *v15 = v14;
  return result;
}

uint64_t MLDataColumn.prefix(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  if (a1 <= 0)
  {
    v10 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v9 = swift_allocError(&type metadata for MLCreateError, v10, 0, 0);
    result = 0xD00000000000002BLL;
    *v12 = 0xD00000000000002BLL;
    *(v12 + 8) = "Column initialized as invalid" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 0;
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  v6 = *v4;
  if (*(v4 + 8))
  {
    v23[0] = *v4;
    swift_errorRetain(v6);
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(v23, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v16 = v6;
    }

    result = outlined consume of Result<_DataTable, Error>(v6, 1);
    goto LABEL_9;
  }

  v14 = *(*(v6 + 16) + 16);
  outlined copy of Result<_DataTable, Error>(v6, 0);
  v15 = a3(v14, a1);
  v18 = v15;
  if (!v15)
  {
    BUG();
  }

  v17 = 0;
  v19 = type metadata accessor for CMLColumn();
  v20 = swift_allocObject(v19, 24, 7);
  *(v20 + 16) = v18;
  v21 = v20;
  v22 = type metadata accessor for _UntypedColumn();
  v9 = swift_allocObject(v22, 24, 7);
  *(v9 + 16) = v21;
  result = outlined consume of Result<_DataTable, Error>(v6, 0);
LABEL_10:
  *v5 = v9;
  *(v5 + 8) = v17;
  return result;
}

uint64_t MLDataColumn.sort(byIncreasingOrder:)(char a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    v18[0] = *v2;
    swift_errorRetain(v4);
    outlined copy of Result<_DataTable, Error>(v4, 1);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v18, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v12 = 1;
  }

  else
  {
    v8 = *(*(v4 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v2, 0);
    v9 = specialized handling<A, B, C>(_:_:_:)(v8, a1);
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLColumn();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _UntypedColumn();
    v7 = swift_allocObject(v17, 24, 7);
    *(v7 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v12;
  return result;
}

uint64_t MLDataColumn.dropDuplicates()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v19[0] = *v3;
    swift_errorRetain(v5);
    outlined copy of Result<_DataTable, Error>(v5, 1);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v19, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v11 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    v13 = 1;
  }

  else
  {
    v9 = *(*(v5 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v3, 0);
    v10 = a2(v9);
    v14 = v10;
    if (!v10)
    {
      BUG();
    }

    v13 = 0;
    v15 = type metadata accessor for CMLColumn();
    v16 = swift_allocObject(v15, 24, 7);
    *(v16 + 16) = v14;
    v17 = v16;
    v18 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v18, 24, 7);
    *(v8 + 16) = v17;
    result = outlined consume of Result<_DataTable, Error>(v5, 0);
  }

  *v4 = v8;
  *(v4 + 8) = v13;
  return result;
}

uint64_t MLDataColumn.materialize()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    v5 = *v3;
    swift_willThrow(a1, a2);
    return outlined copy of Result<_DataTable, Error>(v4, 1);
  }

  else
  {
    v7 = v2;
    v8 = *(v4 + 16);
    outlined copy of Result<_DataTable, Error>(v4, 0);
    CMLColumn.materialize()();
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
    if (!v9)
    {
      *v7 = v4;
      *(v7 + 8) = 0;
      return outlined copy of Result<_DataTable, Error>(v4, 0);
    }
  }

  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v9 = *(v3 + 8);
  outlined copy of Result<_DataTable, Error>(*v3, v9);
  MLUntypedColumn.subscript.getter(a1, a2);
  outlined consume of Result<_DataTable, Error>(v8, v9);
  result = v6;
  *v4 = v6;
  *(v4 + 8) = v7;
  return result;
}

uint64_t MLDataColumn.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v20 = a3;
  v18 = a1;
  v6 = v4;
  v7 = *v5;
  v8 = *(v5 + 8);
  v15 = v7;
  LOBYTE(v16) = v8 & 1;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v9 = MLDataColumn.count.getter(v7);
  outlined consume of Result<_DataTable, Error>(v7, v8);
  if (v9 < 0)
  {
    BUG();
  }

  v14[0] = 0;
  v14[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v11 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v19 = v6;
  dispatch thunk of RangeExpression.relative<A>(to:)(v14, v10, v11, v20, v17);
  v12 = v15;
  v20 = v16;
  v15 = v7;
  LOBYTE(v16) = v8 & 1;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  MLDataColumn.subscript.getter(v12, v20);
  return outlined consume of Result<_DataTable, Error>(v7, v8);
}

uint64_t MLDataColumn.show()()
{
  v2 = v0;
  v3 = 0;
  if (!*(v1 + 8))
  {
    v4 = *v1;
    v5 = *(*(*v1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    outlined copy of Result<_DataTable, Error>(v4, 0);

    v6 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v5, "", "", "", 0);
    if (!v6)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLPlot();
    v3 = swift_allocObject(v7, 24, 7);
    *(v3 + 16) = v6;
    outlined consume of Result<_DataTable, Error>(v4, 0);

    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  v2[3] = &type metadata for ML1DVisualization;
  result = lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization();
  v2[4] = result;
  *v2 = v3;
  return result;
}

uint64_t MLDataColumn<>.init<A>(column:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for Int, &protocol witness table for Int);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for Double, &protocol witness table for Double);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for String, &protocol witness table for String);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for MLDataValue.SequenceType, &protocol witness table for MLDataValue.SequenceType);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &demangling cache variable for type metadata for [Int], &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &demangling cache variable for type metadata for [Double], &lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &demangling cache variable for type metadata for [String], &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
}

{
  return MLDataColumn<>.init<A>(column:)(a1, a2, a3, &type metadata for MLDataValue.DictionaryType, &protocol witness table for MLDataValue.DictionaryType);
}

uint64_t MLDataColumn<>.sum()()
{
  v1 = 0;
  if (!v0[8])
  {
    v2 = *v0;
    v3 = *(*v0 + 16);
    outlined copy of Result<_DataTable, Error>(v2, 0);
    v4 = CMLColumn.sum()();
    if (CMLFeatureValue.isInt64.getter(v2))
    {
      v1 = specialized handling<A, B>(_:_:)(*(v4 + 16));

      outlined consume of Result<_DataTable, Error>(v2, 0);
    }

    else
    {
      v1 = 0;
      outlined consume of Result<_DataTable, Error>(v2, 0);
    }
  }

  return v1;
}

uint64_t MLDataColumn<>.min()(uint64_t (*a1)(void))
{
  v2 = 0;
  if (!v1[8])
  {
    v3 = *v1;
    v4 = *(*v1 + 16);
    outlined copy of Result<_DataTable, Error>(v3, 0);
    v5 = a1();
    if (CMLFeatureValue.isInt64.getter(v3))
    {
      v2 = specialized handling<A, B>(_:_:)(*(v5 + 16));

      outlined consume of Result<_DataTable, Error>(v3, 0);
    }

    else
    {
      v2 = 0;
      outlined consume of Result<_DataTable, Error>(v3, 0);
    }
  }

  return v2;
}

uint64_t MLDataColumn<>.std()(double a1)
{
  return MLDataColumn<>.std()(CMLColumn.stdev(), a1);
}

{
  return MLDataColumn<>.std()(CMLColumn.stdev(), a1);
}

uint64_t MLDataColumn<>.mean()(double a1)
{
  return MLDataColumn<>.std()(CMLColumn.mean(), a1);
}

{
  return MLDataColumn<>.std()(CMLColumn.mean(), a1);
}

uint64_t MLDataColumn<>.min()(uint64_t (*a1)(void), double a2)
{
  v3 = 0;
  if (!v2[8])
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    outlined copy of Result<_DataTable, Error>(v4, 0);
    v6 = a1();
    if (CMLFeatureValue.isDouble.getter())
    {
      specialized handling<A, B>(_:_:)(*(v6 + 16));

      outlined consume of Result<_DataTable, Error>(v4, 0);
      return *&a2;
    }

    else
    {
      v3 = 0;
      outlined consume of Result<_DataTable, Error>(v4, 0);
    }
  }

  return v3;
}

uint64_t MLDataColumn<>.std()(uint64_t (*a1)(void), double a2)
{
  v3 = 0;
  if (!v2[8])
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    outlined copy of Result<_DataTable, Error>(v4, 0);
    v6 = a1();
    if (CMLFeatureValue.isDouble.getter())
    {
      specialized handling<A, B>(_:_:)(*(v6 + 16));

      outlined consume of Result<_DataTable, Error>(v4, 0);
      return *&a2;
    }

    else
    {
      v3 = 0;
      outlined consume of Result<_DataTable, Error>(v4, 0);
    }
  }

  return v3;
}

uint64_t MLDataColumn<>.stdev()(double a1)
{
  return MLDataColumn<>.stdev()(a1);
}

{
  v2 = 0;
  if (!v1[8])
  {
    v3 = *v1;
    v4 = *(*v1 + 16);
    outlined copy of Result<_DataTable, Error>(v3, 0);
    v5 = CMLColumn.stdev()();
    if (CMLFeatureValue.isDouble.getter())
    {
      specialized handling<A, B>(_:_:)(*(v5 + 16));

      outlined consume of Result<_DataTable, Error>(v3, 0);
      return *&a1;
    }

    else
    {
      v2 = 0;
      outlined consume of Result<_DataTable, Error>(v3, 0);
    }
  }

  return v2;
}

{
  return MLDataColumn<>.stdev()(a1);
}

uint64_t MLDataColumn<>.init<A>(column:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v17 = a3;
  v7 = v5;
  v18 = a2;
  v9 = *(a1 + 8);
  v15 = *a1;
  v16 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledName(a4);
  v11 = lazy protocol witness table accessor for type [String] and conformance <A> [A](a5, a4);
  MLDataColumn.init<A>(column:type:)(&v15, v10, v10, a2, v11);
  result = v13;
  *v7 = v13;
  *(v7 + 8) = v14;
  return result;
}

uint64_t MLDataColumn<>.init<A>(column:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *(a1 + 8);
  v11 = *a1;
  v12 = v7;
  MLDataColumn.init<A>(column:type:)(&v11, a4, a4, a2, a5);
  result = v9;
  *v6 = v9;
  *(v6 + 8) = v10;
  return result;
}

uint64_t MLDataColumn.customMirror.getter(uint64_t a1)
{
  v28 = a1;
  v24 = v1;
  v25 = type metadata accessor for Mirror.AncestorRepresentation(0);
  v26 = *(v25 - 8);
  v3 = *(v26 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v27 = &v21;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Mirror.DisplayStyle?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v29 = &v21;
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v12 = swift_allocObject(v11, 128, 7);
  v12[2] = 2;
  v12[3] = 4;
  v12[4] = 0x746E756F63;
  v12[5] = 0xE500000000000000;
  v22 = v9;
  v23 = v10;
  outlined copy of Result<_DataTable, Error>(v9, v10);
  v13 = MLDataColumn.count.getter(v9);
  outlined consume of Result<_DataTable, Error>(v9, v10);
  v12[9] = &type metadata for Int;
  v12[6] = v13;
  v12[10] = 1701869940;
  v12[11] = 0xE400000000000000;
  v14 = v28;
  v15 = *(v28 + 16);
  v12[15] = swift_getMetatypeMetadata(v15);
  v12[12] = v15;
  v22 = v14;
  LODWORD(v15) = enum case for Mirror.DisplayStyle.dictionary(_:);
  v16 = type metadata accessor for Mirror.DisplayStyle(0);
  v17 = v29;
  (*(*(v16 - 8) + 104))(v29, v15, v16);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v16);
  v18 = v27;
  (*(v26 + 104))(v27, enum case for Mirror.AncestorRepresentation.suppressed(_:), v25);
  MetatypeMetadata = swift_getMetatypeMetadata(v14);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)(&v22, v12, v17, v18, MetatypeMetadata);
}

uint64_t MLDataColumn.description.getter(uint64_t a1, double a2)
{
  v28 = *(a1 + 16);
  v4 = *(*(v28 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v29 = &v25;
  v7 = *v2;
  if (*(v2 + 8))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    v32._countAndFlagsBits = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v32, &v30, v8, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v30;
  }

  else
  {
    v30 = 91;
    v31 = 0xE100000000000000;
    v32._countAndFlagsBits = v7;
    LOBYTE(v32._object) = 0;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    outlined copy of Result<_DataTable, Error>(v7, 0);
    v10 = MLDataColumn.count.getter(v7);
    outlined consume of Result<_DataTable, Error>(v7, 0);
    v11 = 10;
    if (v10 < 10)
    {
      v11 = v10;
    }

    v25 = v11;
    if (v10 < 0)
    {
      BUG();
    }

    if (v10)
    {
      v27 = v10;
      v12 = 0;
      v26 = v7;
      do
      {
        if (v12)
        {
          v13._countAndFlagsBits = 8236;
          v13._object = 0xE200000000000000;
          String.append(_:)(v13);
        }

        _UntypedColumn.type.getter();
        if (LOBYTE(v32._countAndFlagsBits) == 2)
        {
          v32._countAndFlagsBits = v7;
          LOBYTE(v32._object) = 0;
          outlined copy of Result<_DataTable, Error>(v7, 0);
          v14 = v29;
          MLDataColumn.subscript.getter(v12, a1, a2);
          outlined consume of Result<_DataTable, Error>(v7, 0);
          v15._countAndFlagsBits = String.init<A>(describing:)(v14, v28);
          object = v15._object;
          v32._countAndFlagsBits = 34;
          v32._object = 0xE100000000000000;
          String.append(_:)(v15);
          object;
          v17 = v32._object;
          v32._object;
          v18._countAndFlagsBits = 34;
          v18._object = 0xE100000000000000;
          v7 = v26;
          String.append(_:)(v18);
          v17;
          v19 = v32;
          v20 = v32._object;
        }

        else
        {
          v32._countAndFlagsBits = v7;
          LOBYTE(v32._object) = 0;
          outlined copy of Result<_DataTable, Error>(v7, 0);
          v21 = v29;
          MLDataColumn.subscript.getter(v12, a1, a2);
          outlined consume of Result<_DataTable, Error>(v7, 0);
          v22._countAndFlagsBits = String.init<A>(describing:)(v21, v28);
          v20 = v22._object;
          v19 = v22;
        }

        String.append(_:)(v19);
        ++v12;
        v20;
      }

      while (v25 != v12);
      if (v27 >= 11)
      {
        v23._countAndFlagsBits = 0x2E2E2E202CLL;
        v23._object = 0xE500000000000000;
        String.append(_:)(v23);
      }
    }

    v24._countAndFlagsBits = 93;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    outlined consume of Result<_DataTable, Error>(v7, 0);
    return v30;
  }
}

uint64_t MLDataColumn.debugDescription.getter(uint64_t a1, double a2)
{
  v3 = *v2;
  v6 = *(v2 + 8);
  outlined copy of Result<_DataTable, Error>(*v2, v6);
  v4 = MLDataColumn.description.getter(a1, a2);
  outlined consume of Result<_DataTable, Error>(v3, v6);
  return v4;
}

uint64_t MLDataColumn.playgroundDescription.getter(uint64_t a1, double a2)
{
  v4 = v2;
  v5 = *v3;
  v11 = *(v3 + 8);
  outlined copy of Result<_DataTable, Error>(*v3, v11);
  v6 = MLDataColumn.description.getter(a1, a2);
  v8 = v7;
  outlined consume of Result<_DataTable, Error>(v5, v11);
  objc_allocWithZone(NSAttributedString);
  v9 = @nonobjc NSAttributedString.init(string:attributes:)(v6, v8, 0);
  result = type metadata accessor for NSAttributedString();
  v4[3] = result;
  *v4 = v9;
  return result;
}

uint64_t partial apply for closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1)
{
  return partial apply for closure #1 in MLDataColumn.map<A>(_:)(a1, closure #1 in MLDataColumn.map<A>(_:));
}

{
  return partial apply for closure #1 in MLDataColumn.map<A>(_:)(a1, closure #1 in MLDataColumn.map<A>(_:));
}

uint64_t lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization()
{
  result = lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization;
  if (!lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML1DVisualization, &type metadata for ML1DVisualization);
    lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization;
  if (!lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML1DVisualization, &type metadata for ML1DVisualization);
    lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization;
  if (!lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML1DVisualization, &type metadata for ML1DVisualization);
    lazy protocol witness table cache variable for type ML1DVisualization and conformance ML1DVisualization = result;
  }

  return result;
}

uint64_t specialized Sequence.allSatisfy(_:)(void (*a1)(void, void))
{
  v40 = a1;
  v1 = type metadata accessor for AnyColumn(0);
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v5 = *(*(v39 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>.Iterator);
  v8 = *(*(v37 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v41 = v27;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, v27, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v40 = *(v36 + 32);
  (v40)(v27, v27, v1);
  v38 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn(&lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn, &protocol conformance descriptor for AnyColumn);
  dispatch thunk of Sequence.makeIterator()(v1, v38);
  (v40)(v27, v27 + *(v39 + 52), v1);
  v11 = v37;
  v12 = v41;
  v34 = v41 + *(v37 + 52);
  v36 = v1;
  dispatch thunk of Sequence.makeIterator()(v1, v38);
  v35 = *(v11 + 56);
  *(v12 + v35) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<AnyColumn>);
  v13 = v12 + *(v37 + 36);
  v39 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn(&lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn, &protocol conformance descriptor for AnyColumn);
  v38 = v13;
  while (1)
  {
    v14 = v41;
    v15 = v36;
    dispatch thunk of Collection.endIndex.getter(v36, v39);
    if (*v13 == v33[0])
    {
      break;
    }

    v16 = v39;
    v17 = v13;
    v18 = dispatch thunk of Collection.subscript.read(v33, v13, v15, v39);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &v31, &demangling cache variable for type metadata for Any?);
    v18(v33, 0);
    dispatch thunk of Collection.formIndex(after:)(v17, v15, v16);
    v30 = v32;
    v29 = v31;
    v13 = *(v37 + 36);
    v20 = v34;
    dispatch thunk of Collection.endIndex.getter(v15, v16);
    if (*&v20[v13] == v33[0])
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v29, &demangling cache variable for type metadata for Any?);
      v14 = v41;
      break;
    }

    v21 = &v20[v13];
    v22 = v39;
    v40 = dispatch thunk of Collection.subscript.read(v33, v21, v15, v39);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &v31, &demangling cache variable for type metadata for Any?);
    v40(v33, 0);
    dispatch thunk of Collection.formIndex(after:)(v21, v15, v22);
    v28[1] = v32;
    v28[0] = v31;
    v27[0] = v29;
    v27[1] = v30;
    LOBYTE(v21) = closure #1 in HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v27, v28);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for (Any?, Any?));
    v24 = (v21 & 1) == 0;
    v13 = v38;
    if (v24)
    {
      v25 = v41;
      LODWORD(v13) = 0;
      goto LABEL_8;
    }
  }

  *(v14 + v35) = 1;
  v25 = v14;
  LOBYTE(v13) = 1;
LABEL_8:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>.Iterator);
  return v13;
}

uint64_t _s8CreateML11MLDataTableVyAA0C6ColumnVyxGSgSS_xmtcAA0C16ValueConvertibleRzluigSS_Tt1B5(Swift::String a1, uint64_t a2, char a3)
{
  v4 = v3;
  v11 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  MLDataTable.subscript.getter(a1);
  outlined consume of Result<_DataTable, Error>(a2, v11);
  v5 = v8;
  if (v9 || (v6 = 0, outlined copy of Result<_DataTable, Error>(v8, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v8, 0), a2 != 2))
  {
    result = outlined consume of Result<_DataTable, Error>(v8, v9);
    v6 = -1;
    v5 = 0;
  }

  *v4 = v5;
  *(v4 + 8) = v6;
  return result;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v1 + v4 + 8) = -1;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  v174 = v4;
  v168 = a3;
  v164 = a2;
  v167 = a1;
  v145 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v145 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v144 = v139;
  v155 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v154 = *(v155 - 8);
  v9 = *(v154 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v157 = v139;
  v141 = type metadata accessor for AnyColumn(0);
  v156 = *(v141 - 8);
  v12 = v156[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v153 = v139;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v142 = v139;
  v171 = type metadata accessor for DataFrame(0);
  v170 = *(v171 - 8);
  v17 = v170[8];
  v18 = alloca(v17);
  v19 = alloca(v17);
  v143 = v139;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v172 = v139;
  v161 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v22 = *(*(v161 - 1) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v163 = v139;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v173 = v139;
  v162 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v27 = *(*(v162 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v169 = v139;
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v160 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v34 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v5 + v35 + 8) = -1;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v151 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v146 = v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
  static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
  v152 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
  v165 = v5;
  *(v5 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with copy of MLTrainingSessionParameters(v167, v139, type metadata accessor for MLHandPoseClassifier.DataSource);
  v36 = v169;
  outlined init with copy of MLTrainingSessionParameters(v164, v169, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v37 = v34[6];
  v166 = v34[7];
  outlined init with copy of MLTrainingSessionParameters(v36, &v139[v34[5]], type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v38 = v162;
  v39 = v36;
  *&v139[v37] = *&v36[*(v162 + 20)];
  *&v139[v166] = *&v36[*(v38 + 24)];
  v40 = v161;
  *&v139[v34[8]] = *(v39 + *(v38 + 28));
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v39, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v162 = v34;
  v41 = v34;
  v42 = v173;
  __swift_storeEnumTagSinglePayload(v139, 0, 1, v41);
  v43 = v160;
  swift_beginAccess(v160, &v158, 33, 0);
  outlined assign with take of MLHandPoseClassifier.PersistentParameters?(v139, v43);
  v44 = v167;
  swift_endAccess(&v158);
  outlined init with copy of MLTrainingSessionParameters(v44, v42, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v42, v40) != 3)
  {
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v42, type metadata accessor for MLHandPoseClassifier.DataSource);
    v57 = v163;
    outlined init with copy of MLTrainingSessionParameters(v44, v163, type metadata accessor for MLHandPoseClassifier.DataSource);
    if (swift_getEnumCaseMultiPayload(v57, v40) != 5)
    {
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v57, type metadata accessor for MLHandPoseClassifier.DataSource);
      v72 = v174;
      v73 = static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(v44, a4);
      v174 = v72;
      if (v72)
      {
        v55 = 0;
LABEL_14:
        v82 = v168;
LABEL_15:
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v82, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v164, type metadata accessor for MLHandPoseClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v167, type metadata accessor for MLHandPoseClassifier.DataSource);
        if (v55)
        {
          v83 = v165;
LABEL_41:

          return v83;
        }

        goto LABEL_35;
      }

      v86 = v73;
      v87 = v74;
      v75;
      v86;
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = specialized _copyCollectionToContiguousArray<A>(_:)(v87);
      v87;
      goto LABEL_23;
    }

    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v59 = v58[12];
    v148 = *&v57[v59];
    v173 = *&v57[v59 + 8];
    v60 = v58[16];
    v147 = *&v57[v60];
    v169 = *&v57[v60 + 8];
    v61 = v58[20];
    v62 = *&v57[v61];
    v63 = *&v57[v61 + 8];
    (v170[4])(v172, v57, v171);
    v64 = v142;
    v166 = v62;
    DataFrame.subscript.getter(v62, v63);
    v65 = AnyColumn.wrappedElementType.getter();
    (v156[1])(v64, v141);
    if (v65 == &type metadata for String)
    {
      v84 = v166;
      DataFrame.subscript.getter(v166, v63, &type metadata for String);
      v85 = v174;
      Column<A>.parseAsJSONArrays()();
      v174 = v85;
      if (v85)
      {
        v63;
        v169;
        v173;
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v168, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v164, type metadata accessor for MLHandPoseClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v167, type metadata accessor for MLHandPoseClassifier.DataSource);
        (*(v154 + 8))(v157, v155);
        goto LABEL_34;
      }

      (*(v154 + 8))(v157, v155);
      v63;
      v163 = v63;
      v118 = v172;
      DataFrame.subscript.setter(v153, v84, v63);
      v66 = v170;
      v67 = v173;
      v68 = v118;
    }

    else
    {
      v163 = v63;
      v66 = v170;
      v67 = v173;
      v68 = v172;
    }

    v69 = v143;
    v70 = v171;
    *a4.i64 = (v66[2])(v143, v68, v171);
    v71 = v174;
    MLDataTable.init(_:convertArraysToShapedArrays:)(v69, 0, a4);
    v174 = v71;
    if (v71)
    {
      v163;
      v169;
      v67;
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v168, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v164, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v167, type metadata accessor for MLHandPoseClassifier.DataSource);
      (v66[1])(v172, v70);
      goto LABEL_35;
    }

    v89 = v158;
    v90 = v159;
    v91 = v151;
    swift_beginAccess(v151, v140, 1, 0);
    v92 = *v91;
    *v91 = v89;
    v93 = *(v91 + 8);
    *(v91 + 8) = v90;
    outlined consume of Result<_DataTable, Error>(v92, v93);
    swift_beginAccess(v91, &v158, 33, 0);
    v94 = v166;
    v95 = v163;
    v96 = v174;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(v91, v166, v163);
    v174 = v96;
    if (v96)
    {
      swift_endAccess(&v158);
      v95;
      v169;
      v173;
      v97 = v168;
    }

    else
    {
      swift_endAccess(&v158);
      swift_beginAccess(v91, &v158, 33, 0);
      v120 = v173;
      v121 = v94;
      v122 = v174;
      v123 = v169;
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v91, v148, v173, v121, v95, v147, v169);
      v174 = v122;
      if (!v122)
      {
        swift_endAccess(&v158);
        v95;
        v123;
        v120;
        swift_beginAccess(v91, &v158, 32, 0);
        v135._countAndFlagsBits = 0x6C6562616CLL;
        v135._object = 0xE500000000000000;
        specialized MLDataTable.subscript.getter(v135, *v91, *(v91 + 8));
        v136 = v149;
        v137 = v150;
        swift_endAccess(&v158);
        specialized MLDataColumn.dropDuplicates()(v136, v137);
        outlined consume of Result<_DataTable, Error>(v136, v137);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v158, v159, *a4.i64);
        (v170[1])(v172, v171);
        goto LABEL_23;
      }

      v124 = v168;
      swift_endAccess(&v158);
      v95;
      v123;
      v120;
      v97 = v124;
    }

    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v97, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v164, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v167, type metadata accessor for MLHandPoseClassifier.DataSource);
LABEL_34:
    (v170[1])(v172, v171);
    goto LABEL_35;
  }

  v45 = v42;
  v46 = *v42;
  v47 = *(v42 + 2);
  v156 = v45[2];
  v169 = v45[3];
  v163 = v45[4];
  v166 = v45[5];
  v172 = v45[6];
  v170 = v45[7];
  v48 = v151;
  swift_beginAccess(v151, v140, 1, 0);
  v171 = *v48;
  *v48 = v46;
  v49 = *(v48 + 8);
  *(v48 + 8) = v47 & 1;
  v173 = v46;
  v50 = v46;
  v51 = v47;
  outlined copy of Result<_DataTable, Error>(v50, v47);
  v52 = v170;
  outlined consume of Result<_DataTable, Error>(v171, v49);
  swift_beginAccess(v48, &v158, 33, 0);
  v53 = v172;
  v54 = v174;
  static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(v48, v172, v52);
  v174 = v54;
  if (v54)
  {
    v55 = 0;
    swift_endAccess(&v158);
    v52;
    v166;
    v169;
    v56 = v51;
LABEL_13:
    outlined consume of Result<_DataTable, Error>(v173, v56);
    goto LABEL_14;
  }

  LODWORD(v171) = v51;
  swift_endAccess(&v158);
  swift_beginAccess(v48, &v158, 33, 0);
  v76 = v169;
  v77 = v53;
  v78 = v52;
  v79 = v52;
  v80 = v174;
  v81 = v166;
  static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v48, v156, v169, v77, v79, v163, v166);
  v174 = v80;
  if (v80)
  {
    v55 = 0;
    swift_endAccess(&v158);
    v78;
    v81;
    v76;
    v56 = v171;
    goto LABEL_13;
  }

  swift_endAccess(&v158);
  v78;
  v81;
  v76;
  swift_beginAccess(v48, &v158, 32, 0);
  v98._countAndFlagsBits = 0x6C6562616CLL;
  v98._object = 0xE500000000000000;
  specialized MLDataTable.subscript.getter(v98, *v48, *(v48 + 8));
  v99 = v149;
  v100 = v150;
  swift_endAccess(&v158);
  specialized MLDataColumn.dropDuplicates()(v99, v100);
  outlined consume of Result<_DataTable, Error>(v99, v100);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v158, v159, *a4.i64);
  outlined consume of Result<_DataTable, Error>(v173, v171);
LABEL_23:
  v83 = v165;
  v101 = *(v165 + v152);
  *(v165 + v152) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v101;
  v102 = v160;
  v103 = v162;
  if (__swift_getEnumTagSinglePayload(v160, 1, v162))
  {
    v82 = v168;
LABEL_39:
    outlined init with copy of MLTrainingSessionParameters(v82, v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    v127 = *(v83 + v152);
    if (v127)
    {
      v128 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
      swift_allocObject(v128, *(v128 + 48), *(v128 + 52));
      v127;
      v129 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v127, 0, 21, 3, 1);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v82, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v164, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v167, type metadata accessor for MLHandPoseClassifier.DataSource);
      v130 = *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
      *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v129;
      goto LABEL_41;
    }

    v132 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v133 = swift_allocError(&type metadata for MLCreateError, v132, 0, 0);
    *v134 = 0xD00000000000003DLL;
    *(v134 + 8) = "ng a feature checkpoint." + 0x8000000000000000;
    *(v134 + 16) = 0;
    *(v134 + 32) = 0;
    *(v134 + 48) = 0;
    v174 = v133;
    swift_willThrow(&type metadata for MLCreateError, v132);
    v55 = 1;
    goto LABEL_15;
  }

  v104 = *(v103 + 20) + v102;
  v105 = v144;
  outlined init with copy of MLTrainingSessionParameters(v104, v144, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v105, v145);
  v82 = v168;
  if (EnumCaseMultiPayload != 1)
  {
    v119 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData;
LABEL_38:
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v105, v119);
    goto LABEL_39;
  }

  if (swift_getEnumCaseMultiPayload(v105, v161) != 3)
  {
    v119 = type metadata accessor for MLHandPoseClassifier.DataSource;
    goto LABEL_38;
  }

  v107 = *v105;
  LODWORD(v160) = *(v105 + 8);
  v170 = *(v105 + 16);
  v173 = *(v105 + 24);
  v172 = *(v105 + 32);
  v161 = *(v105 + 40);
  v166 = *(v105 + 48);
  v169 = *(v105 + 56);
  v108 = v146;
  swift_beginAccess(v146, &v158, 1, 0);
  v109 = *v108;
  *v108 = v107;
  v110 = v160;
  v111 = *(v108 + 8);
  *(v108 + 8) = v160 & 1;
  v162 = v107;
  v112 = v107;
  v113 = v110;
  outlined copy of Result<_DataTable, Error>(v112, v110);
  v114 = v109;
  v115 = v166;
  outlined consume of Result<_DataTable, Error>(v114, v111);
  swift_beginAccess(v108, &v149, 33, 0);
  v116 = v169;
  v117 = v174;
  static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(v108, v115, v169);
  v174 = v117;
  if (!v117)
  {
    swift_endAccess(&v149);
    swift_beginAccess(v108, &v149, 33, 0);
    v138 = v174;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v108, v170, v173, v115, v116, v172, v161);
    v174 = v138;
    v83 = v165;
    v82 = v168;
    if (v138)
    {
      swift_endAccess(&v149);
      v173;
      v161;
      v116;
      outlined consume of Result<_DataTable, Error>(v162, v160);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v82, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v164, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v167, type metadata accessor for MLHandPoseClassifier.DataSource);
      goto LABEL_36;
    }

    swift_endAccess(&v149);
    v173;
    v161;
    v116;
    outlined consume of Result<_DataTable, Error>(v162, v160);
    goto LABEL_39;
  }

  swift_endAccess(&v149);
  v173;
  v161;
  v116;
  outlined consume of Result<_DataTable, Error>(v162, v113);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v168, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v164, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v167, type metadata accessor for MLHandPoseClassifier.DataSource);
LABEL_35:
  v83 = v165;
LABEL_36:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable), *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures), *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures), *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures + 8));
  v125 = *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);

  *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
  *(v83 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  v126 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v83, v126, *(*v83 + 48), *(*v83 + 52));
  return v83;
}

char HandPoseClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(int a1, __m128 a2)
{
  v4 = v3;
  v5 = a1 + *(type metadata accessor for MLHandPoseClassifier.PersistentParameters(0) + 20);
  result = MLHandPoseClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v29, &v27, a2);
  if (!v2)
  {
    v36 = v29;
    v7 = v27;
    v8 = v28;
    v39 = v30;
    v31 = 0;
    if (v30 == 0xFF)
    {
      if (v28 != -1)
      {
        v17 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, &v29, 1, 0);
        v38 = *(v4 + v17);
        *(v4 + v17) = v7;
        LODWORD(v37) = *(v4 + v17 + 8);
        *(v4 + v17 + 8) = v8;
        v18 = v8;
        outlined copy of Result<_DataTable, Error>(v7, v8);
        outlined consume of MLDataTable?(v38, v37);
        *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_13:
        v32 = v7;
        v33 = v18 & 1;
        v26 = MLDataTable.size.getter();
        outlined consume of MLDataTable?(v36, v39);
        outlined consume of Result<_DataTable, Error>(v32, v33);
LABEL_16:
        result = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount;
        *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = v26;
        return result;
      }

      *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      v41 = v30;
      v37 = v27;
      LOBYTE(v38) = v28;
      if (v28 == -1)
      {
        v19 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        v20 = v30;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, &v29, 1, 0);
        v21 = *(v4 + v19);
        v22 = v36;
        *(v4 + v19) = v36;
        v40 = *(v4 + v19 + 8);
        *(v4 + v19 + 8) = v20;
        v13 = v22;
        outlined copy of MLDataTable?(v22, v20);
        outlined copy of Result<_DataTable, Error>(v13, v20);
        outlined consume of MLDataTable?(v21, v40);
      }

      else
      {
        v9 = v30 & 1;
        v10 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        v11 = v30;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, &v27, 1, 0);
        v35 = *(v4 + v10);
        v12 = v36;
        *(v4 + v10) = v36;
        v34 = *(v4 + v10 + 8);
        *(v4 + v10 + 8) = v9;
        v13 = v12;
        outlined copy of Result<_DataTable, Error>(v12, v11);
        outlined copy of MLDataTable?(v13, v11);
        v14 = v37;
        v40 = v38;
        outlined copy of MLDataTable?(v37, v38);
        outlined consume of MLDataTable?(v35, v34);
        v15 = HandPoseClassifierTrainingSessionDelegate.sourceTable.modify(&v29);
        if (*(v16 + 8) == 0xFF)
        {
          (v15)(&v29, 0);
        }

        else
        {
          v32 = v14;
          v35 = v15;
          v33 = v38 & 1;
          MLDataTable.append(contentsOf:)(&v32);
          (v35)(&v29, 0);
        }

        v23 = v14;
        v24 = v39;
        outlined consume of MLDataTable?(v13, v39);
        outlined consume of MLDataTable?(v23, v40);
        outlined copy of Result<_DataTable, Error>(v13, v24);
      }

      v32 = v13;
      v33 = v41 & 1;
      v25 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v32, v33);
      *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = v25;
      v18 = v38;
      if (v38 != 0xFF)
      {
        v7 = v37;
        goto LABEL_13;
      }
    }

    outlined consume of MLDataTable?(v36, v39);
    v26 = 0;
    goto LABEL_16;
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.setUp()()
{
  v12 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v11, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, &v10, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v10, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v10, &v10, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  HandPoseClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(&v10, v1);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v10, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v183 = v1;
  v179 = v2;
  rawValue = from._rawValue;
  v4 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v169 = &v123;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v168 = &v123;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v167 = &v123;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v172 = &v123;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v165 = &v123;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v180 = &v123;
  v181 = type metadata accessor for MLCheckpoint(0);
  v166 = *(v181 - 8);
  v18 = *(v166 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v170 = &v123;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v178 = &v123;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v184 = &v123;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = v179 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v179 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v162, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &v123, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v123, 1, v28) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v123, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v123, &v123, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  v33 = v180;
  specialized BidirectionalCollection.last.getter(rawValue);
  v34 = v181;
  v35 = &v123;
  if (__swift_getEnumTagSinglePayload(v33, 1, v181) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v180, &demangling cache variable for type metadata for MLCheckpoint?);
    v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
    *v37 = 0xD00000000000001DLL;
    *(v37 + 8) = "reated." + 0x8000000000000000;
    *(v37 + 16) = 0;
    *(v37 + 32) = 0;
    *(v37 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v36);
LABEL_20:
    v52 = v35;
    goto LABEL_21;
  }

  v38 = 0xEB0000000064657ALL;
  v173 = 0x6974636172747865;
  v182 = &v123;
  v39 = v184;
  outlined init with take of MLClassifierMetrics(v180, v184, type metadata accessor for MLCheckpoint);
  v180 = *(v34 + 20);
  v40 = 0x696C616974696E69;
  v35 = v182;
  v41 = 0xEA0000000000676ELL;
  switch(*(v39 + v180))
  {
    case 0:
      goto LABEL_8;
    case 1:
LABEL_10:
      v41;
      goto LABEL_14;
    case 2:
      v40 = 0x676E696E69617274;
      v38 = 0xE800000000000000;
      goto LABEL_8;
    case 3:
      v40 = 0x697461756C617665;
      v38 = 0xEA0000000000676ELL;
      goto LABEL_8;
    case 4:
      v40 = 0x636E657265666E69;
      v38 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_8:
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v40, v38, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v38;
      if ((v42 & 1) == 0)
      {
        v41 = 0xE800000000000000;
        switch(*(v39 + v180))
        {
          case 0:
            JUMPOUT(0x126B76);
          case 1:
            v43 = 0x6974636172747865;
            goto LABEL_13;
          case 2:
            goto LABEL_10;
          case 3:
            v43 = 0x697461756C617665;
LABEL_13:
            v44 = _stringCompareWithSmolCheck(_:_:expecting:)(v43, 0xEA0000000000676ELL, 0x676E696E69617274, 0xE800000000000000, 0);
            0xEA0000000000676ELL;
            if (v44)
            {
              goto LABEL_14;
            }

            v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
            *v51 = 0xD00000000000003FLL;
            *(v51 + 8) = "not been properly initialized." + 0x8000000000000000;
            *(v51 + 16) = 0;
            *(v51 + 32) = 0;
            *(v51 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v50);
            v46 = v39;
            break;
          case 4:
            JUMPOUT(0x126B96);
        }

        goto LABEL_19;
      }

LABEL_14:
      v45 = v183;
      HandPoseClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(v35, v3);
      if (v45)
      {
        goto LABEL_15;
      }

      v183 = 0;
      v47 = 0x676E696E69617274;
      switch(*(v184 + v180))
      {
        case 0:
          v49 = *(v184 + v180);
          v48 = 0xEB0000000064657ALL;
          v47 = 0x696C616974696E69;
          goto LABEL_26;
        case 1:
          0xEA0000000000676ELL;
          goto LABEL_38;
        case 2:
          v48 = 0xE800000000000000;
          goto LABEL_26;
        case 3:
          v47 = 0x697461756C617665;
          v48 = 0xEA0000000000676ELL;
          goto LABEL_26;
        case 4:
          v47 = 0x636E657265666E69;
          v48 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_26:
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)(v47, v48, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v48;
          if (v53)
          {
LABEL_38:
            URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
            LOBYTE(__src[0]) = 1;
            *(&__src[0] + 1) = 44;
            __src[1] = 0xE100000000000000;
            *&__src[2] = 0xE000000000000000;
            *(&__src[2] + 1) = 92;
            *&__src[3] = 0xE100000000000000;
            BYTE8(__src[3]) = 1;
            *&__src[4] = 34;
            *(&__src[4] + 1) = 0xE100000000000000;
            LOBYTE(__src[5]) = 1;
            *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&__src[6] = 10;
            *(&__src[6] + 1) = 0xE100000000000000;
            __src[7] = 0;
            LOBYTE(__src[8]) = 1;
            *(&__src[8] + 1) = 0;
            LOBYTE(__dst[0]) = 1;
            LOBYTE(v145) = 1;
            v146 = 44;
            v147 = 0xE100000000000000;
            v148 = 0;
            v149 = 0xE000000000000000;
            v150 = 92;
            v151 = 0xE100000000000000;
            v152 = 1;
            v153 = 34;
            v154 = 0xE100000000000000;
            v155 = 1;
            v156 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v157 = 10;
            v158 = 0xE100000000000000;
            v159 = 0;
            v160 = 1;
            v161 = 0;
            outlined retain of MLDataTable.ParsingOptions(__src);
            outlined release of MLDataTable.ParsingOptions(&v145, 34);
            memcpy(__dst, __src, sizeof(__dst));
            v65 = v183;
            MLDataTable.init(contentsOf:options:)(v172, __dst);
            if (v65)
            {
              goto LABEL_63;
            }

            v66 = v174;
            v67 = v175;
            v183 = 0;
            v68 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
            v69 = v179;
            swift_beginAccess(v179 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, v163, 1, 0);
            v70 = *(v69 + v68);
            *(v69 + v68) = v66;
            v71 = *(v69 + v68 + 8);
            *(v69 + v68 + 8) = v67;
            outlined consume of Result<_DataTable, Error>(v70, v71);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v124[0]) = 1;
            *(&v124[0] + 1) = 44;
            v124[1] = 0xE100000000000000;
            *&v124[2] = 0xE000000000000000;
            *(&v124[2] + 1) = 92;
            *&v124[3] = 0xE100000000000000;
            BYTE8(v124[3]) = 1;
            *&v124[4] = 34;
            *(&v124[4] + 1) = 0xE100000000000000;
            LOBYTE(v124[5]) = 1;
            *(&v124[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v124[6] = 10;
            *(&v124[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v124[7] = 0;
            LOBYTE(v124[8]) = 1;
            *(&v124[8] + 1) = 0;
            v144[0] = 1;
            LOBYTE(v126) = 1;
            v127 = 44;
            v128 = 0xE100000000000000;
            v129 = 0;
            v130 = 0xE000000000000000;
            v131 = 92;
            v132 = 0xE100000000000000;
            v133 = 1;
            v134 = 34;
            v135 = 0xE100000000000000;
            v136 = 1;
            v137 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v138 = 10;
            v139 = 0xE100000000000000;
            v140 = 0;
            v141 = 1;
            v142 = 0;
            outlined retain of MLDataTable.ParsingOptions(v124);
            outlined release of MLDataTable.ParsingOptions(&v126, 44);
            memcpy(v144, v124, sizeof(v144));
            v72 = v183;
            MLDataTable.init(contentsOf:options:)(v167, v144);
            v73 = v72;
            if (v72)
            {
              goto LABEL_63;
            }

            v74 = v176;
            LOBYTE(v181) = v177;
            v75 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
            swift_beginAccess(v69 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures, v144, 1, 0);
            v76 = *(v69 + v75);
            *(v69 + v75) = v74;
            v77 = *(v69 + v75 + 8);
            *(v69 + v75 + 8) = v181;
            outlined consume of Result<_DataTable, Error>(v76, v77);
            v78 = 0xEA0000000000676ELL;
            switch(*(v184 + v180))
            {
              case 0:
LABEL_47:
                v173 = 0x696C616974696E69;
                v78 = 0xEB0000000064657ALL;
                goto LABEL_56;
              case 1:
                goto LABEL_56;
              case 2:
LABEL_53:
                0xE800000000000000;
                goto LABEL_57;
              case 3:
LABEL_55:
                v173 = 0x697461756C617665;
                goto LABEL_56;
              case 4:
LABEL_54:
                v173 = 0x636E657265666E69;
                v78 = 0xEB00000000676E69;
LABEL_56:
                v105 = _stringCompareWithSmolCheck(_:_:expecting:)(v173, v78, 0x676E696E69617274, 0xE800000000000000, 0);
                v78;
                v35 = v182;
                if ((v105 & 1) == 0)
                {
                  break;
                }

LABEL_57:
                v183 = v73;
                v106 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
                v107 = v179;
                swift_beginAccess(v179 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, __src, 0, 0);
                v108 = *(v107 + v106);
                LOBYTE(v106) = *(v107 + v106 + 8);
                outlined copy of Result<_DataTable, Error>(v108, v106);
                v109._countAndFlagsBits = 0x6C6562616CLL;
                v109._object = 0xE500000000000000;
                specialized MLDataTable.subscript.getter(v109, v108, v106);
                outlined consume of Result<_DataTable, Error>(v108, v106);
                v110 = v126;
                LOBYTE(v106) = v127;
                specialized MLDataColumn.dropDuplicates()(v126, v127);
                outlined consume of Result<_DataTable, Error>(v110, v106);
                MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(__dst[0], __dst[1], *v3.i64);
                v112 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels;
                v109._countAndFlagsBits = *(v107 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
                *(v107 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
                v109._countAndFlagsBits;
                v113 = *(v107 + v112);
                if (!v113)
                {
                  v96 = "re not properly constructed." + 0x8000000000000000;
                  v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
                  v99 = 0xD00000000000002ELL;
                  goto LABEL_62;
                }

                v114 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
                swift_allocObject(v114, *(v114 + 48), *(v114 + 52));
                v113;
                v115 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v113, 0, 21, 3, 1);
                v116 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model;
                v117 = *(v107 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
                *(v107 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v115;

                v118 = *(v107 + v116);
                v35 = v182;
                if (v118)
                {

                  v119 = v184;
                  v120 = v183;
                  MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v184);
                  if (v120)
                  {

                    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v119, type metadata accessor for MLCheckpoint);
                    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v35, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
                    return;
                  }

                  MLHandActionClassifier.GraphCNN.initDevice()();
                }

                else
                {
                  v121 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v121, 0, 0);
                  *v122 = 0xD000000000000031;
                  *(v122 + 8) = "ning checkpoints are supported." + 0x8000000000000000;
                  *(v122 + 16) = 0;
                  *(v122 + 32) = 0;
                  *(v122 + 48) = 0;
                  swift_willThrow(&type metadata for MLCreateError, v121);
                }

                break;
            }

LABEL_15:
            v46 = v184;
LABEL_19:
            outlined destroy of MLActivityClassifier.ModelParameters.Validation(v46, type metadata accessor for MLCheckpoint);
            goto LABEL_20;
          }

          v145 = rawValue;
          v54 = *(rawValue + 16);
          v55 = 1;
          if (!v54)
          {
            v56 = 0;
            goto LABEL_44;
          }

          v56 = v54 - 1;
          v57 = v56 * *(v166 + 72) + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + rawValue;
          rawValue = -*(v166 + 72);
          v172 = 0xEB00000000676E69;
          break;
      }

      break;
  }

  while (2)
  {
    v58 = v170;
    outlined init with copy of MLTrainingSessionParameters(v57, v170, type metadata accessor for MLCheckpoint);
    switch(*(v58 + *(v181 + 20)))
    {
      case 0:
        v60 = *(v58 + *(v181 + 20));
        v59 = v57;
        v61 = 0xEB0000000064657ALL;
        v62 = 0x696C616974696E69;
        goto LABEL_34;
      case 1:
        0xEA0000000000676ELL;
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v170, type metadata accessor for MLCheckpoint);
        goto LABEL_43;
      case 2:
        v59 = v57;
        v61 = 0xE800000000000000;
        v62 = 0x676E696E69617274;
        goto LABEL_34;
      case 3:
        v59 = v57;
        v61 = 0xEA0000000000676ELL;
        v62 = 0x697461756C617665;
        goto LABEL_34;
      case 4:
        v59 = v57;
        v61 = v172;
        v62 = 0x636E657265666E69;
LABEL_34:
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)(v62, v61, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v61;
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v170, type metadata accessor for MLCheckpoint);
        if ((v63 & 1) == 0)
        {
          v57 = rawValue + v59;
          if (v56-- == 0)
          {
            v56 = 0;
            v55 = 1;
            goto LABEL_44;
          }

          continue;
        }

LABEL_43:
        v55 = 0;
LABEL_44:
        v79 = alloca(24);
        v80 = alloca(32);
        *(&v124[0] + 1) = &v145;
        v81 = v165;
        v82 = v183;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), &v123, v56, v55, v164);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v181);
        v183 = v82;
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, &demangling cache variable for type metadata for MLCheckpoint?);
          v84 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
          v85 = v179;
          swift_beginAccess(v179 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, &v145, 0, 0);
          v86 = *(v85 + v84 + 8);
          *&__src[0] = *(v85 + v84);
          BYTE8(__src[0]) = v86;
          outlined copy of Result<_DataTable, Error>(*&__src[0], v86);
          v87 = MLDataTable.size.getter();
          outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
          if (v87)
          {
            v73 = v183;
            v78 = 0xEA0000000000676ELL;
            switch(*(v184 + v180))
            {
              case 0:
                goto LABEL_47;
              case 1:
                goto LABEL_56;
              case 2:
                goto LABEL_53;
              case 3:
                goto LABEL_55;
              case 4:
                goto LABEL_54;
            }
          }

          v96 = "erly initialized." + 0x8000000000000000;
          v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
          v99 = 0xD000000000000028;
LABEL_62:
          *v98 = v99;
          *(v98 + 8) = v96;
          *(v98 + 16) = 0;
          *(v98 + 32) = 0;
          *(v98 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v97);
LABEL_63:
          v95 = v184;
        }

        else
        {
          outlined init with take of MLClassifierMetrics(v81, v178, type metadata accessor for MLCheckpoint);
          URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
          LOBYTE(__src[0]) = 1;
          *(&__src[0] + 1) = 44;
          __src[1] = 0xE100000000000000;
          *&__src[2] = 0xE000000000000000;
          *(&__src[2] + 1) = 92;
          *&__src[3] = 0xE100000000000000;
          BYTE8(__src[3]) = 1;
          *&__src[4] = 34;
          *(&__src[4] + 1) = 0xE100000000000000;
          LOBYTE(__src[5]) = 1;
          *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          *&__src[6] = 10;
          *(&__src[6] + 1) = 0xE100000000000000;
          __src[7] = 0;
          LOBYTE(__src[8]) = 1;
          *(&__src[8] + 1) = 0;
          LOBYTE(__dst[0]) = 1;
          LOBYTE(v145) = 1;
          v146 = 44;
          v147 = 0xE100000000000000;
          v148 = 0;
          v149 = 0xE000000000000000;
          v150 = 92;
          v151 = 0xE100000000000000;
          v152 = 1;
          v153 = 34;
          v154 = 0xE100000000000000;
          v155 = 1;
          v156 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          v157 = 10;
          v158 = 0xE100000000000000;
          v159 = 0;
          v160 = 1;
          v161 = 0;
          outlined retain of MLDataTable.ParsingOptions(__src);
          outlined release of MLDataTable.ParsingOptions(&v145, &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:));
          memcpy(__dst, __src, sizeof(__dst));
          v88 = v183;
          MLDataTable.init(contentsOf:options:)(v168, __dst);
          if (!v88)
          {
            v89 = v174;
            LOBYTE(v181) = v175;
            v183 = 0;
            v90 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
            v91 = v179;
            swift_beginAccess(v179 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, v163, 1, 0);
            v92 = *(v91 + v90);
            *(v91 + v90) = v89;
            v93 = *(v91 + v90 + 8);
            *(v91 + v90 + 8) = v181;
            outlined consume of Result<_DataTable, Error>(v92, v93);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v124[0]) = 1;
            *(&v124[0] + 1) = 44;
            v124[1] = 0xE100000000000000;
            *&v124[2] = 0xE000000000000000;
            *(&v124[2] + 1) = 92;
            *&v124[3] = 0xE100000000000000;
            BYTE8(v124[3]) = 1;
            *&v124[4] = 34;
            *(&v124[4] + 1) = 0xE100000000000000;
            LOBYTE(v124[5]) = 1;
            *(&v124[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v124[6] = 10;
            *(&v124[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v124[7] = 0;
            LOBYTE(v124[8]) = 1;
            *(&v124[8] + 1) = 0;
            v144[0] = 1;
            LOBYTE(v126) = 1;
            v127 = 44;
            v128 = 0xE100000000000000;
            v129 = 0;
            v130 = 0xE000000000000000;
            v131 = 92;
            v132 = 0xE100000000000000;
            v133 = 1;
            v134 = 34;
            v135 = 0xE100000000000000;
            v136 = 1;
            v137 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v138 = 10;
            v139 = 0xE100000000000000;
            v140 = 0;
            v141 = 1;
            v142 = 0;
            outlined retain of MLDataTable.ParsingOptions(v124);
            outlined release of MLDataTable.ParsingOptions(&v126, 92);
            memcpy(v144, v124, sizeof(v144));
            v94 = v183;
            MLDataTable.init(contentsOf:options:)(v169, v144);
            v73 = v94;
            if (!v94)
            {
              outlined destroy of MLActivityClassifier.ModelParameters.Validation(v178, type metadata accessor for MLCheckpoint);
              v100 = v176;
              LOBYTE(v181) = v177;
              v101 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
              v102 = v179;
              swift_beginAccess(v179 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures, v144, 1, 0);
              v103 = *(v102 + v101);
              *(v102 + v101) = v100;
              v104 = *(v102 + v101 + 8);
              *(v102 + v101 + 8) = v181;
              outlined consume of Result<_DataTable, Error>(v103, v104);
              v78 = 0xEA0000000000676ELL;
              switch(*(v184 + v180))
              {
                case 0:
                  goto LABEL_47;
                case 1:
                  goto LABEL_56;
                case 2:
                  goto LABEL_53;
                case 3:
                  goto LABEL_55;
                case 4:
                  goto LABEL_54;
              }
            }
          }

          outlined destroy of MLActivityClassifier.ModelParameters.Validation(v178, type metadata accessor for MLCheckpoint);
          v95 = v184;
        }

        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v95, type metadata accessor for MLCheckpoint);
        v52 = v182;
LABEL_21:
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v52, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
        return;
    }
  }
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v48 = v1;
  v3 = v2;
  v38 = from;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v33, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, v33, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  v8 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v33, 1, v8);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (v7 == 1)
  {
    BUG();
  }

  v9 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, v34, 0, 0);
  LOBYTE(v10._0) = *(v3 + v9 + 8);
  v10.finished = 1;
  v11 = 1;
  if (LOBYTE(v10._0) != 0xFF)
  {
    v12 = *(v3 + v9);
    v43 = v3;
    v36 = v12;
    v13 = LOBYTE(v10._0);
    LOBYTE(v44) = v10._0 & 1;
    v37 = v10._0 & 1;
    outlined copy of Result<_DataTable, Error>(v12, v10._0);
    outlined copy of Result<_DataTable, Error>(v12, v13);
    MLDataTable.size.getter();
    v15 = v14;
    outlined consume of Result<_DataTable, Error>(v36, v37);
    if (v15 <= 0)
    {
      outlined consume of MLDataTable?(v12, v13);
      v10.finished = 1;
      v11 = 1;
    }

    else
    {
      v47 = v12;
      v49 = v13;
      v16 = *(v43 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount);
      v17 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount;
      v18 = *(v43 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount);
      v23 = __OFADD__(v16, v18);
      v19 = v16 + v18;
      if (v23)
      {
        BUG();
      }

      v20 = v38;
      if (v19 <= v38)
      {
        outlined consume of MLDataTable?(v47, v49);
        v11 = 0;
        v10.finished = 1;
      }

      else
      {
        v35 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount;
        v21 = v43 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
        v39 = v16;
        v22 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v21);
        v23 = __OFADD__(v20, v22);
        v24 = v20 + v22;
        v41 = v17;
        if (v39 <= v20)
        {
          if (v23)
          {
            BUG();
          }
        }

        else
        {
          v19 = v39;
          if (v23)
          {
            BUG();
          }
        }

        if (v19 < v24)
        {
          v24 = v19;
        }

        v40 = v24;
        if (v24 < v20)
        {
          BUG();
        }

        v45 = v47;
        v46 = v44;
        outlined copy of Result<_DataTable, Error>(v47, v49);
        MLDataTable.subscript.getter(v20, v40);
        outlined consume of Result<_DataTable, Error>(v45, v46);
        v25 = v36;
        v26 = v37;
        type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
        v45 = v25;
        v46 = v26;
        v27 = v48;
        static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(&v45, v20);
        v28 = v20;
        if (v27)
        {
          outlined consume of MLDataTable?(v47, v49);
          v11 = v26;
          outlined consume of Result<_DataTable, Error>(v25, v26);
        }

        else
        {
          v44 = v25;
          v29 = v49;
          v48 = 0;
          v30 = v37;
          v42 = v36;
          v45 = v36;
          v46 = v37 & 1;
          if (v39 <= v28)
          {
            v31 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
          }

          else
          {
            v31 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
          }

          swift_beginAccess(v43 + v31, &v36, 33, 0);
          MLDataTable.append(contentsOf:)(&v45);
          swift_endAccess(&v36);
          outlined consume of MLDataTable?(v47, v29);
          outlined consume of Result<_DataTable, Error>(v44, v26);
          outlined consume of Result<_DataTable, Error>(v42, v30);
          v11 = v40 - v38;
          if (__OFSUB__(v40, v38))
          {
            BUG();
          }

          v32 = *(v43 + v35);
          v23 = __OFADD__(*(v43 + v41), v32);
          v10._0 = *(v43 + v41) + v32;
          if (v23)
          {
            BUG();
          }

          v10.finished = v40 == v10._0;
        }
      }
    }
  }

  v10._0 = v11;
  return v10;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v101 = v1;
  v112 = *&from;
  v97 = type metadata accessor for Tensor(0);
  v98 = *(v97 - 8);
  v4 = *(v98 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v99 = v90;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v105 = v90;
  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v104 = v90;
  v102 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v13 = *(*(v102 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v100 = v90;
  v16 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v111 = v90;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v110 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v23 = *(*(v110 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v116 = COERCE_DOUBLE(v90);
  v26 = alloca(v23);
  v27 = alloca(v23);
  v106 = v90;
  v28 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
  v29 = type metadata accessor for MLTrainingSessionParameters(0);
  v30 = *(*(v29 + 20) + v28);
  if (__OFADD__(v30, *&v112))
  {
    BUG();
  }

  v113 = v2;
  v31 = *(v28 + *(v29 + 28));
  v32 = v31 - *&v112;
  if (__OFSUB__(v31, *&v112))
  {
    BUG();
  }

  v94 = v31;
  v93 = v30 + *&v112;
  if (v30 < v32)
  {
    v32 = v30;
  }

  v33 = v113 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v113 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v90, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v90, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v90, 1, v16))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v90, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    v34 = "Augmentation options" + 0x8000000000000000;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    *v36 = 0xD000000000000026;
    *(v36 + 8) = "Augmentation options" + 0x8000000000000000;
    *(v36 + 16) = 0;
    *(v36 + 32) = 0;
    *(v36 + 48) = 0;
    v37 = swift_willThrow(&type metadata for MLCreateError, v35);
    goto LABEL_13;
  }

  v103 = v32;
  v38 = v111;
  outlined init with copy of MLTrainingSessionParameters(v90, v111, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v90, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  v39 = *&v116;
  outlined init with copy of MLTrainingSessionParameters(v38 + v16[5], *&v116, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v40 = *(v38 + v16[7]);
  v41 = *(v38 + v16[8]);
  v42 = v110;
  *(v39 + *(v110 + 20)) = *(v38 + v16[6]);
  *(v39 + v42[6]) = v40;
  *(v39 + v42[7]) = v41;
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v38, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  v43 = v106;
  outlined init with take of MLClassifierMetrics(v39, v106, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v32 = v113;
  v44 = *(v113 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
  if (!v44 || (v45 = *(v113 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels)) == 0)
  {
    v34 = "ve training parameters" + 0x8000000000000000;
    v61 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v61, 0, 0);
    *v62 = 0xD00000000000003CLL;
    *(v62 + 8) = "ve training parameters" + 0x8000000000000000;
    *(v62 + 16) = 0;
    *(v62 + 32) = 0;
    *(v62 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v61);
    v60 = v43;
    goto LABEL_12;
  }

  v116 = *(v43 + v42[7]);
  v46 = *(v43 + v42[5]);
  v47 = *(v43 + v42[6]);
  v48 = 0.0;
  v49 = v100;
  *v100 = 0;
  *(v49 + 16) = 256;
  v110 = v44;
  v111 = v45;
  v50 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v49, v50, 0);
  v51 = v102;
  *(v49 + *(v102 + 20)) = v46;
  *(v49 + v51[6]) = v47;
  *(v49 + v51[7]) = 1;
  *(v49 + v51[8]) = v116;
  *(v49 + v51[10]) = 0x403E000000000000;
  v52 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures + v32, v91, 0, 0);
  v116 = *(v32 + v52);
  v53 = *(v32 + v52 + 8);
  LODWORD(v102) = v53;
  v107 = v116;
  LOBYTE(v108) = v53;
  v34 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures + v32, v92, 0, 0);
  v54 = *&v34[v32];
  LODWORD(v34) = *&v34[v32 + 8];
  v114 = v54;
  LOBYTE(v115) = v34 & 1;

  v55 = v111;
  v111;
  outlined copy of Result<_DataTable, Error>(*&v116, v102);
  v56 = v54;
  v57 = v55;
  v58 = v34;
  LOBYTE(v34) = v49;
  outlined copy of Result<_DataTable, Error>(v56, v58);
  v32 = v105;
  v59 = v101;
  static MLHandActionClassifier.prepareDataset(classLabels:trainingFeatures:validationFeatures:parameters:)(v104, v105, v57, &v107, &v114, v49, 0.0);
  if (v59 != 0.0)
  {
    v57;

    outlined consume of MLDataTable?(v114, v115);
    outlined consume of Result<_DataTable, Error>(*&v107, v108);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v49, type metadata accessor for MLHandActionClassifier.ModelParameters);
    v60 = v106;
LABEL_12:
    v37 = outlined destroy of MLActivityClassifier.ModelParameters.Validation(v60, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    goto LABEL_13;
  }

  outlined consume of MLDataTable?(v114, v115);
  outlined consume of Result<_DataTable, Error>(*&v107, v108);
  if (v103 < 0)
  {
    BUG();
  }

  v65 = v112;
  if (v103)
  {
    v66 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    v67 = 0;
    do
    {
      v68 = __OFADD__(v67, *&v65);
      v69 = v67 + *&v65;
      if (v68)
      {
        BUG();
      }

      v70 = MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(v104, v32, v69, 0.0);
      ++v67;
      v71 = *(v113 + v66);
      *(v113 + v66) = v70;
      v71;
      v32 = v105;
      v65 = v112;
    }

    while (v103 != v67);
  }

  v72 = v113;
  v112 = *&OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary;
  v73 = *(v113 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  v73;
  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xED000073736F6C5FLL, v73);
  v73;
  if (!v109)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v107, &demangling cache variable for type metadata for Any?);
    goto LABEL_23;
  }

  if (!swift_dynamicCast(&v114, &v107, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_23:
    v75 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
    goto LABEL_24;
  }

  v116 = *&v114;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
  v107 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
  v48 = v116;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, v116);
  v75 = v107;
  v72 = v113;
LABEL_24:
  v76 = *(v72 + *&v112);
  v76;
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v76);
  v76;
  if (v109)
  {
    if (swift_dynamicCast(&v114, &v107, &type metadata for Any + 8, &type metadata for Double, 6))
    {
      v116 = *&v114;
      v77 = swift_isUniquelyReferenced_nonNull_native(*&v75);
      v107 = v75;
      v48 = v116;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, v77, v116);
      v116 = v107;
    }

    else
    {
      v116 = v75;
    }
  }

  else
  {
    v116 = v75;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v107, &demangling cache variable for type metadata for Any?);
  }

  v78 = *(v113 + *&v112);
  v78;
  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v78);
  v78;
  if (v109)
  {
    v79 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v114, &v107, &type metadata for Any + 8, v79, 6))
    {
      v80 = v99;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, v48, v3);
      v101 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v80, *(v111 + 2));
      (*(v98 + 8))(v80, v97);
      v81 = v116;
      v82 = swift_isUniquelyReferenced_nonNull_native(*&v116);
      v107 = v81;
      v48 = v101;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, v82, v101);

      v116 = v107;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v107, &demangling cache variable for type metadata for Any?);
  }

  v83 = *(v113 + *&v112);
  v83;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v83);
  v83;
  if (v109)
  {
    v84 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v114, &v107, &type metadata for Any + 8, v84, 6))
    {
      v113 = v114;
      v85 = v99;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, v48, v3);
      v86 = *(v111 + 2);
      v111;
      v112 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v85, v86);
      (*(v98 + 8))(v85, v97);
      v87 = v116;
      v88 = swift_isUniquelyReferenced_nonNull_native(*&v116);
      v107 = v87;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v88, v112);

      v116 = v107;
    }

    else
    {
      v111;
    }
  }

  else
  {
    v111;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v107, &demangling cache variable for type metadata for Any?);
  }

  LOBYTE(v34) = v93 >= v94;
  v89 = *&v116;
  v32 = specialized _dictionaryUpCast<A, B, C, D>(_:)(*&v116);
  v89;

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
  (*(v95 + 8))(v104, v96);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v100, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v106, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v37 = v103;
LABEL_13:
  v63 = v32;
  v64 = v34;
  result.metrics._rawValue = v63;
  result._0 = v37;
  result.finished = v64;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v1._0 = 1;
  v1.finished = 1;
  return v1;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v82 = v2;
  v81 = a1;
  LODWORD(v4) = 0;
  v5 = type metadata accessor for URL(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = alloca(v6);
  v12 = alloca(v6);
  v13 = alloca(v6);
  v14 = alloca(v6);
  v15 = *a2;
  if (v15 == 2)
  {
    LOBYTE(v4) = 1;
    if (*(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model))
    {
      v20 = *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);

      specialized _ModelCheckpoint<>.save(to:)(v81);
    }
  }

  else if (v15 == 1)
  {
    v80 = *(v5 - 8);
    v69 = __src;
    v79 = v5;
    v76 = __src;
    v70 = __src;
    v16 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
    v71 = (v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
    swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, v50, 1, 0);
    v17 = *(v3 + v16);
    v18 = *(v3 + v16 + 8);
    v4 = &v52;
    v52 = v17;
    LOBYTE(v53) = v18;
    outlined copy of Result<_DataTable, Error>(v17, v18);
    URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
    v19 = v82;
    MLDataTable.write(to:)(__src);
    if (v19)
    {
      (*(v80 + 8))(__src, v79);
      outlined consume of Result<_DataTable, Error>(v52, v53);
    }

    else
    {
      v82 = *(v80 + 8);
      v82(__src, v79);
      outlined consume of Result<_DataTable, Error>(v52, v53);
      v21 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
      v80 = v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures, v51, 1, 0);
      v22 = *(v3 + v21 + 8);
      v77 = *(v3 + v21);
      LOBYTE(v78) = v22;
      outlined copy of Result<_DataTable, Error>(v77, v22);
      v23 = v69;
      URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
      MLDataTable.write(to:)(v23);
      LODWORD(v4) = 0;
      v82(v23, v79);
      outlined consume of Result<_DataTable, Error>(v77, v78);
      v82 = 0;
      URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
      LOBYTE(__src[0]) = 1;
      *(&__src[0] + 1) = 44;
      __src[1] = 0xE100000000000000;
      *&__src[2] = 0xE000000000000000;
      *(&__src[2] + 1) = 92;
      *&__src[3] = 0xE100000000000000;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 34;
      *(&__src[4] + 1) = 0xE100000000000000;
      LOBYTE(__src[5]) = 1;
      *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&__src[6] = 10;
      *(&__src[6] + 1) = 0xE100000000000000;
      __src[7] = 0;
      LOBYTE(__src[8]) = 1;
      *(&__src[8] + 1) = 0;
      __dst[0] = 1;
      LOBYTE(v52) = 1;
      v53 = 44;
      v54 = 0xE100000000000000;
      v55 = 0;
      v56 = 0xE000000000000000;
      v57 = 92;
      v58 = 0xE100000000000000;
      v59 = 1;
      v60 = 34;
      v61 = 0xE100000000000000;
      v62 = 1;
      v63 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v64 = 10;
      v65 = 0xE100000000000000;
      v66 = 0;
      v67 = 1;
      v68 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v52, 34);
      memcpy(__dst, __src, sizeof(__dst));
      v25 = v82;
      MLDataTable.init(contentsOf:options:)(v76, __dst);
      if (!v25)
      {
        v26 = v73;
        v27 = v71;
        v28 = *v71;
        *v71 = v72;
        v29 = *(v27 + 2);
        *(v27 + 8) = v26;
        outlined consume of Result<_DataTable, Error>(v28, v29);
        v4 = v70;
        v82 = 0;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
        LOBYTE(v48[0]) = 1;
        *(&v48[0] + 1) = 44;
        v48[1] = 0xE100000000000000;
        *&v48[2] = 0xE000000000000000;
        *(&v48[2] + 1) = 92;
        *&v48[3] = 0xE100000000000000;
        BYTE8(v48[3]) = 1;
        *&v48[4] = 34;
        *(&v48[4] + 1) = 0xE100000000000000;
        LOBYTE(v48[5]) = 1;
        *(&v48[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        *&v48[6] = 10;
        *(&v48[6] + 1) = 0xE100000000000000;
        v48[7] = 0;
        LOBYTE(v48[8]) = 1;
        *(&v48[8] + 1) = 0;
        v49[0] = 1;
        LOBYTE(v37[0]) = 1;
        v37[1] = 44;
        v37[2] = 0xE100000000000000;
        v37[3] = 0;
        v37[4] = 0xE000000000000000;
        v37[5] = 92;
        v37[6] = 0xE100000000000000;
        v38 = 1;
        v39 = 34;
        v40 = 0xE100000000000000;
        v41 = 1;
        v42 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        v43 = 10;
        v44 = 0xE100000000000000;
        v45 = 0;
        v46 = 1;
        v47 = 0;
        outlined retain of MLDataTable.ParsingOptions(v48);
        outlined release of MLDataTable.ParsingOptions(v37, 44);
        memcpy(v49, v48, sizeof(v49));
        v30 = v82;
        MLDataTable.init(contentsOf:options:)(v4, v49);
        if (!v30)
        {
          v31 = v75;
          v32 = v80;
          v33 = *v80;
          *v80 = v74;
          v34 = *(v32 + 8);
          *(v32 + 8) = v31;
          outlined consume of Result<_DataTable, Error>(v33, v34);
          LOBYTE(v4) = 1;
        }
      }
    }
  }

  return v4;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.save(to:)(uint64_t a1, __m128 a2)
{
  v17 = v2;
  v18 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters + v3;
  swift_beginAccess(v11, v16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &v15, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v15, 1, v7) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    v12 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v12, 0, 0);
    *v13 = 0xD000000000000030;
    *(v13 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v12);
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v15, &v15, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
    MLHandPoseClassifier.PersistentParameters.save(toSessionDirectory:)(v18, a2);
    return outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v15, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  }
}

NSURL *HandPoseClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1, __m128 a2)
{
  v37 = v2;
  v35 = v3;
  v31 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v33 = &v28;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v36 = &v28;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v32 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v14 = *(*(v32 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v34 = &v28;
  v17 = alloca(v14);
  v18 = alloca(v14);
  (*(v10 + 16))(&v28, v31, v9);
  v19 = v37;
  result = MLHandPoseClassifier.PersistentParameters.init(sessionDirectory:)(&v28);
  if (!v19)
  {
    v37 = &v28;
    v21 = v35 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v35 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v29, 0, 0);
    v22 = v36;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, v36, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    v23 = v22;
    v24 = v32;
    if (__swift_getEnumTagSinglePayload(v23, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v37, v33, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
      swift_beginAccess(v21, v30, 33, 0);
      outlined assign with take of MLHandPoseClassifier.PersistentParameters?(v25, v21);
      return swift_endAccess(v30);
    }

    else
    {
      v26 = v34;
      outlined init with take of MLClassifierMetrics(v36, v34, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      v27 = v37;
      HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v37, v26, a2);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v26, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v27, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v138 = v3;
  v119 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v5 = *(*(v119 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v116 = &v115;
  v8 = type metadata accessor for DataFrame(0);
  v129 = *(v8 - 8);
  v9 = v129[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v130 = &v115;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v137 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v14 = *(*(v137 - 1) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v117._object = &v115;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v131 = &v115;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v123 = &v115;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v134 = &v115;
  v23 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v24 = v23[6];
  v25 = *(a2 + v24);
  if (*(a1 + v24) != v25)
  {
    v135 = *(a1 + v24);
    v34 = lazy protocol witness table accessor for type Int and conformance Int();
    v138 = BinaryInteger.description.getter(&type metadata for Int, v34);
    v137 = v35;
    v135 = v25;
    v36 = BinaryInteger.description.getter(&type metadata for Int, v34);
    v38 = v37;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0x6953206863746142;
    *(v40 + 8) = 0xEA0000000000657ALL;
LABEL_11:
    *(v40 + 16) = v138;
    *(v40 + 24) = v137;
    *(v40 + 32) = v36;
    *(v40 + 40) = v38;
    *(v40 + 48) = 3;
    return swift_willThrow(&type metadata for MLCreateError, v39);
  }

  v127 = &v115;
  v26 = v23[7];
  v27 = *(a2 + v26);
  if (*(a1 + v26) != v27)
  {
    v41 = "metricsAttributesDictionary" + 0x8000000000000000;
    v135 = *(a1 + v26);
    v42 = lazy protocol witness table accessor for type Int and conformance Int();
    v138 = BinaryInteger.description.getter(&type metadata for Int, v42);
    v137 = v43;
    v135 = v27;
    v36 = BinaryInteger.description.getter(&type metadata for Int, v42);
    v38 = v44;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    v45 = 0xD000000000000012;
LABEL_10:
    *v40 = v45;
    *(v40 + 8) = v41;
    goto LABEL_11;
  }

  v28 = v23[8];
  v29 = *(a2 + v28);
  if (*(a1 + v28) != v29)
  {
    v41 = "Maximum Iterations" + 0x8000000000000000;
    v135 = *(a1 + v28);
    v46 = lazy protocol witness table accessor for type Int and conformance Int();
    v138 = BinaryInteger.description.getter(&type metadata for Int, v46);
    v137 = v47;
    v135 = v29;
    v36 = BinaryInteger.description.getter(&type metadata for Int, v46);
    v38 = v48;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    v45 = 0xD000000000000014;
    goto LABEL_10;
  }

  v121 = a2;
  v124 = v8;
  v30 = v138;
  result = MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
  if (v30)
  {
    return result;
  }

  v32 = v135;
  v33 = v136;
  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
  v122 = 0;
  v138 = v135;
  v49 = v32;
  v50 = v136;
  v135 = v49;
  v51 = v33;
  v52 = v33 & 1;
  v136 = v52;
  v133 = v49;
  v139 = v51;
  outlined copy of Result<_DataTable, Error>(v49, v51);
  v132 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v135, v136);
  v140 = v50;
  if (v132 > 0)
  {
    v135 = v138;
    LOBYTE(v128) = v50 & 1;
    v136 = v50 & 1;
    outlined copy of Result<_DataTable, Error>(v138, v50);
    v132 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v135, v136);
    if (v132 > 0)
    {
      v135 = v133;
      v136 = v52;
      v53 = HandPoseClassifierTrainingSessionDelegate.pathsByLabel(for:)(&v135, *a3.i64);
      v135 = v138;
      v136 = v128;
      v54 = HandPoseClassifierTrainingSessionDelegate.pathsByLabel(for:)(&v135, *a3.i64);
      v55 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(v53, v54);
      v53;
      v54;
      if (v55)
      {
        outlined consume of Result<_DataTable, Error>(v133, v139);
        v56 = v138;
        v57 = v140;
        return outlined consume of Result<_DataTable, Error>(v56, v57);
      }

      v77 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v77, 0, 0);
      *v78 = 1;
      *(v78 + 8) = 0;
      *(v78 + 24) = 0;
      *(v78 + 40) = 0;
      *(v78 + 48) = 4;
      swift_willThrow(&type metadata for MLCreateError, v77);
LABEL_39:
      outlined consume of Result<_DataTable, Error>(v138, v140);
      v56 = v133;
      v57 = v139;
      return outlined consume of Result<_DataTable, Error>(v56, v57);
    }
  }

  v58 = v134;
  outlined init with copy of MLTrainingSessionParameters(a1, v134, type metadata accessor for MLHandPoseClassifier.DataSource);
  v59 = v137;
  if (swift_getEnumCaseMultiPayload(v58, v137) == 3)
  {
    v60 = *v58;
    LOBYTE(v132) = *(v58 + 8);
    v117._countAndFlagsBits = *(v58 + 16);
    v128 = *(v58 + 24);
    v118 = *(v58 + 32);
    v120 = *(v58 + 40);
    *(v58 + 56);
    v61 = v123;
    outlined init with copy of MLTrainingSessionParameters(v121, v123, type metadata accessor for MLHandPoseClassifier.DataSource);
    if (swift_getEnumCaseMultiPayload(v61, v59) == 3)
    {
      v137 = *v61;
      LODWORD(v134) = *(v61 + 8);
      v119 = *(v61 + 16);
      v130 = *(v61 + 24);
      v117._object = *(v61 + 32);
      v62 = v60;
      v63 = *(v61 + 40);
      *(v61 + 56);
      v125 = v62;
      v64 = v132;
      LOBYTE(v132) = v132 & 1;
      v126 = v132;
      v131 = v62;
      LODWORD(v129) = v64;
      outlined copy of Result<_DataTable, Error>(v62, v64);
      v65._countAndFlagsBits = v118;
      v66 = v120;
      v65._object = v120;
      MLDataTable.subscript.getter(v65);
      v66;
      outlined consume of Result<_DataTable, Error>(v125, v126);
      v125 = v135;
      v126 = v136;
      v67 = Array<A>.init(_:)(&v125, *a3.i64);
      v125 = v137;
      LOBYTE(v123) = v134 & 1;
      v126 = v134 & 1;
      outlined copy of Result<_DataTable, Error>(v137, v134);
      v65._countAndFlagsBits = v117._object;
      v65._object = v63;
      MLDataTable.subscript.getter(v65);
      v63;
      outlined consume of Result<_DataTable, Error>(v125, v126);
      v125 = v135;
      v126 = v136;
      v68 = Array<A>.init(_:)(&v125, *a3.i64);
      LOBYTE(v62) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v67, v68);
      v67;
      v68;
      if (v62)
      {
        v125 = v131;
        v126 = v132;
        outlined copy of Result<_DataTable, Error>(v131, v129);
        v69._countAndFlagsBits = v117._countAndFlagsBits;
        v70 = v128;
        v69._object = v128;
        MLDataTable.subscript.getter(v69);
        v70;
        outlined consume of Result<_DataTable, Error>(v125, v126);
        v125 = v135;
        v126 = v136;
        v71 = Array<A>.init(_:)(&v125, *a3.i64);
        v125 = v137;
        v126 = v123;
        LODWORD(v134) = v134;
        outlined copy of Result<_DataTable, Error>(v137, v134);
        v69._countAndFlagsBits = v119;
        v72 = v130;
        v69._object = v130;
        MLDataTable.subscript.getter(v69);
        v72;
        outlined consume of Result<_DataTable, Error>(v125, v126);
        v125 = v135;
        v126 = v136;
        v73 = Array<A>.init(_:)(&v125, *a3.i64);
        ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v71, v73);
        v71;
        v73;
        if (ML11MLDataValueO_Tt1g5)
        {
          outlined consume of Result<_DataTable, Error>(v133, v139);
          outlined consume of Result<_DataTable, Error>(v138, v140);
          outlined consume of Result<_DataTable, Error>(v137, v134);
          return outlined consume of Result<_DataTable, Error>(v131, v129);
        }

        v113 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v113, 0, 0);
        *v114 = 1;
        *(v114 + 8) = 0;
        *(v114 + 24) = 0;
        *(v114 + 40) = 0;
        *(v114 + 48) = 4;
        swift_willThrow(&type metadata for MLCreateError, v113);
        v109 = v137;
        v108 = v134;
      }

      else
      {
        v130;
        v128;
        v106 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v106, 0, 0);
        *v107 = 1;
        *(v107 + 8) = 0;
        *(v107 + 24) = 0;
        *(v107 + 40) = 0;
        *(v107 + 48) = 4;
        swift_willThrow(&type metadata for MLCreateError, v106);
        v108 = v134;
        v109 = v137;
      }

      outlined consume of Result<_DataTable, Error>(v109, v108);
      outlined consume of Result<_DataTable, Error>(v131, v129);
      goto LABEL_39;
    }

    outlined consume of Result<_DataTable, Error>(v60, v132);
    v120;
    v128;
    v76 = v133;
    v75 = v61;
  }

  else
  {
    v75 = v58;
    v76 = v133;
  }

  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v75, type metadata accessor for MLHandPoseClassifier.DataSource);
  v79 = a1;
  v80 = v131;
  outlined init with copy of MLTrainingSessionParameters(v79, v131, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v80, v59) != 5)
  {
    outlined consume of Result<_DataTable, Error>(v76, v139);
    outlined consume of Result<_DataTable, Error>(v138, v140);
    v105 = v80;
    return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v105, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
  v82 = v81[12];
  v128 = *(v80 + v82);
  v134 = *(v80 + v82 + 8);
  v83 = v81[16];
  v132 = *(v80 + v83);
  v123 = *(v80 + v83 + 8);
  *(v80 + v81[20] + 8);
  v84 = v80;
  v85 = v129;
  v131 = v129[4];
  (v131)(v127, v84, v124);
  object = v117._object;
  outlined init with copy of MLTrainingSessionParameters(v121, v117._object, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(object, v59) != 5)
  {
    (v85[1])(v127, v124);
    outlined consume of Result<_DataTable, Error>(v133, v139);
    outlined consume of Result<_DataTable, Error>(v138, v140);
    v123;
    v134;
    v105 = object;
    return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v105, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  v87 = v81[12];
  v118 = *&object[v87];
  v137 = *&object[v87 + 8];
  v88 = v81[16];
  v121 = *&object[v88];
  v120 = *&object[v88 + 8];
  *&object[v81[20] + 8];
  (v131)(v130, object, v124);
  v89 = v116;
  v90 = v123;
  DataFrame.subscript.getter(v132, v123);
  v90;
  v91 = *(v119 + 52);
  v92 = v120;
  DataFrame.subscript.getter(v121, v120);
  v93 = v89;
  v92;
  v94 = v122;
  LOBYTE(v89) = specialized Sequence.allSatisfy(_:)(v89);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v93, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  if (v89)
  {
    v95 = v134;
    v131 = v94;
    DataFrame.subscript.getter(v128, v134);
    v95;
    v96 = *(v119 + 52);
    v97 = v137;
    DataFrame.subscript.getter(v118, v137);
    v97;
    LOBYTE(v97) = specialized Sequence.allSatisfy(_:)(v93);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v93, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
    v98 = (v97 & 1) == 0;
    v99 = v133;
    v100 = v138;
    v101 = v129;
    if (v98)
    {
      v102 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v102, 0, 0);
      *v103 = 1;
      *(v103 + 8) = 0;
      *(v103 + 24) = 0;
      *(v103 + 40) = 0;
      *(v103 + 48) = 4;
      swift_willThrow(&type metadata for MLCreateError, v102);
    }

    outlined consume of Result<_DataTable, Error>(v100, v140);
    outlined consume of Result<_DataTable, Error>(v99, v139);
    v104 = v101[1];
  }

  else
  {
    v137;
    v134;
    v110 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v110, 0, 0);
    *v111 = 1;
    *(v111 + 8) = 0;
    *(v111 + 24) = 0;
    *(v111 + 40) = 0;
    *(v111 + 48) = 4;
    swift_willThrow(&type metadata for MLCreateError, v110);
    outlined consume of Result<_DataTable, Error>(v138, v140);
    outlined consume of Result<_DataTable, Error>(v133, v139);
    v104 = v129[1];
  }

  v112 = v124;
  v104(v130, v124);
  return (v104)(v127, v112);
}

uint64_t closure #1 in HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, v7, &demangling cache variable for type metadata for Any?);
  if (v8)
  {
    if (swift_dynamicCast(&v12, v7, &type metadata for Any + 8, &type metadata for AnyHashable, 6))
    {
      goto LABEL_6;
    }

    v13 = 0;
    v12 = 0;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Any?);
    v12 = 0;
    v13 = 0;
  }

  v14 = 0;
LABEL_6:
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a2, v7, &demangling cache variable for type metadata for Any?);
  if (v8)
  {
    if (swift_dynamicCast(&v15, v7, &type metadata for Any + 8, &type metadata for AnyHashable, 6))
    {
      goto LABEL_11;
    }

    v16 = 0;
    v15 = 0;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Any?);
    v15 = 0;
    v16 = 0;
  }

  v17 = 0;
LABEL_11:
  v2 = &v9;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v12, v7, &demangling cache variable for type metadata for AnyHashable?);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &v9, &demangling cache variable for type metadata for AnyHashable?);
  if (!v8)
  {
    if (!*(&v10 + 1))
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for AnyHashable?);
      LOBYTE(v2) = 1;
      goto LABEL_18;
    }

LABEL_17:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for (AnyHashable?, AnyHashable?));
    LODWORD(v2) = 0;
    goto LABEL_18;
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, v6, &demangling cache variable for type metadata for AnyHashable?);
  if (!*(&v10 + 1))
  {
    outlined destroy of AnyHashable(v6);
    goto LABEL_17;
  }

  v5 = v11;
  v4[1] = v10;
  v4[0] = v9;
  LODWORD(v2) = static AnyHashable.== infix(_:_:)(v6, v4);
  outlined destroy of AnyHashable(v4);
  outlined destroy of AnyHashable(v6);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for AnyHashable?);
LABEL_18:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for AnyHashable?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v12, &demangling cache variable for type metadata for AnyHashable?);
  return v2;
}

void *HandPoseClassifierTrainingSessionDelegate.pathsByLabel(for:)(uint64_t a1, double a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v3);
  v4._countAndFlagsBits = 0x7461506F65646976;
  v4._object = 0xE900000000000068;
  _s8CreateML11MLDataTableVyAA0C6ColumnVyxGSgSS_xmtcAA0C16ValueConvertibleRzluigSS_Tt1B5(v4, v2, v3);
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v5 = v43;
  if (v43 == 0xFF)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v34, &protocol witness table for String);
  }

  else
  {
    v38 = v42;
    outlined copy of Result<_DataTable, Error>(v2, v3);
    v6._countAndFlagsBits = 0x6C6562616CLL;
    v6._object = 0xE500000000000000;
    _s8CreateML11MLDataTableVyAA0C6ColumnVyxGSgSS_xmtcAA0C16ValueConvertibleRzluigSS_Tt1B5(v6, v2, v3);
    outlined consume of Result<_DataTable, Error>(v2, v3);
    v7 = v42;
    if ((v43 & 1) != 0 || (v39 = v42, v8 = v42[2], outlined copy of Result<_DataTable, Error>(v42, 0), v9 = CMLColumn.size.getter(), outlined consume of MLDataTable?(v42, v43), v35 = v9, v9 < 0))
    {
      BUG();
    }

    if (v9)
    {
      v10 = 0;
      v11 = v43;
      v40 = 0;
      v12 = v42;
      do
      {
        v46 = v10;
        if (v43)
        {
          outlined copy of MLDataTable?(v12, v11);
          v41 = 0;
          v45 = 0xE000000000000000;
        }

        else
        {
          outlined copy of MLDataTable?(v12, v11);
          _UntypedColumn.valueAtIndex(index:)(v40, a2);
          if (v44 == 2)
          {
            v41 = v42;
            v45 = v43;
          }

          else
          {
            outlined consume of MLDataValue(v42, v43, v44);
            v41 = 0;
            v45 = 0xE000000000000000;
          }

          v11 = v43;
        }

        outlined consume of MLDataTable?(v12, v11);
        outlined copy of MLDataTable?(v7, v5);
        _UntypedColumn.valueAtIndex(index:)(v40, a2);
        if (v44 == 2)
        {
          v37 = v43;
          v36 = v42;
        }

        else
        {
          outlined consume of MLDataValue(v42, v43, v44);
          v36 = 0;
          v37 = 0xE000000000000000;
        }

        outlined consume of MLDataTable?(v7, v5);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v46, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
        v42 = _swiftEmptyDictionarySingleton;
        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v45);
        v15 = (v14 & 1) == 0;
        v16 = __OFADD__(_swiftEmptyDictionarySingleton[2], v15);
        v17 = _swiftEmptyDictionarySingleton[2] + v15;
        if (v16)
        {
          BUG();
        }

        v18 = v14;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
        {
          v19 = v45;
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v45);
          LOBYTE(v22) = v22 & 1;
          if ((v18 & 1) != v22)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v45, v22, v20, v21);
            BUG();
          }
        }

        else
        {
          v19 = v45;
        }

        v23 = _swiftEmptyDictionarySingleton;
        if ((v18 & 1) == 0)
        {
          _swiftEmptyDictionarySingleton[(v47 >> 6) + 8] |= 1 << v47;
          v24 = _swiftEmptyDictionarySingleton[6];
          v25 = 16 * v47;
          *(v24 + v25) = v41;
          *(v24 + v25 + 8) = v19;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v47) = _swiftEmptyArrayStorage;
          v26 = _swiftEmptyDictionarySingleton[2];
          _swiftEmptyDictionarySingleton;
          v16 = __OFADD__(1, v26);
          v27 = v26 + 1;
          if (v16)
          {
            BUG();
          }

          _swiftEmptyDictionarySingleton[2] = v27;
          v23 = v19;
        }

        v23;
        v28 = _swiftEmptyDictionarySingleton[7];

        v29 = *(v28 + 8 * v47);
        v30 = swift_isUniquelyReferenced_nonNull_native(v29);
        *(v28 + 8 * v47) = v29;
        if (!v30)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
          *(v28 + 8 * v47) = v29;
        }

        v31 = v29[2];
        if (v29[3] >> 1 <= v31)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29[3] >= 2uLL, v31 + 1, 1, v29);
          *(v28 + 8 * v47) = v29;
        }

        v29[2] = v31 + 1;
        v32 = 2 * v31;
        v29[v32 + 4] = v36;
        v29[v32 + 5] = v37;
        v45;
        v10 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
        ++v40;
        v7 = v38;
        v12 = v39;
        v5 = v43;
        v11 = v43;
      }

      while (v35 != v40);
      outlined consume of MLDataTable?(v38, v43);
      outlined consume of MLDataTable?(v39, v43);
      return _swiftEmptyDictionarySingleton;
    }

    else
    {
      outlined consume of MLDataTable?(v42, v43);
      outlined consume of MLDataTable?(v42, v43);
      return _swiftEmptyDictionarySingleton;
    }
  }
}

uint64_t HandPoseClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable), *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures), *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures), *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);

  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  return v0;
}

uint64_t type metadata accessor for HandPoseClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for HandPoseClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for HandPoseClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for HandPoseClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for HandPoseClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandPoseClassifier.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = "\t";
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &unk_341CA8;
      v4[6] = &unk_341CA8;
      v4[7] = &unk_341CC0;
      v4[8] = &unk_341CC0;
      v4[9] = &value witness table for Builtin.BridgeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 10, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLHandPoseClassifier.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?)
  {
    v2 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLHandPoseClassifier.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance HandPoseClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = HandPoseClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v7)
  {
    return (*(v2 + 8))(v5, v6, *(&v4 + 1));
  }

  else
  {
    return (*(v2 + 8))(v4, BYTE8(v4));
  }
}

uint64_t lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for AnyColumn(255);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined assign with take of MLHandPoseClassifier.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t static _TextUtilities.getTextLabels(from:)(void *a1, uint64_t a2)
{
  *&v135 = v2;
  v131 = a2;
  v120 = a1;
  v3 = *(*(type metadata accessor for String.Encoding(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v111 = &v105;
  v124 = type metadata accessor for UTType(0);
  v125 = *(v124 - 8);
  v6 = *(v125 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v117 = &v105;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v122 = &v105;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v128 = &v105;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v18 = *(*(type metadata accessor for MLTextClassifier.DataSource(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLTextClassifier.DataSource(v131, &v105);
  v21 = v10;
  (*(v10 + 32))(&v105, &v105, v9);
  v22 = v135;
  v23 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)(&v105);
  *&v135 = v22;
  if (v22)
  {
    (*(v10 + 8))(&v105, v9);
    return 0x6C6562616CLL;
  }

  v24 = v23;
  v126 = *(v23 + 16);
  v136 = v9;
  v137 = v10;
  v130 = &v105;
  if (v126)
  {
    goto LABEL_5;
  }

  v23;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
  v26 = *(v10 + 80);
  v27 = (v26 + 32) & ~*(v10 + 80);
  v28 = swift_allocObject(v25, v27 + *(v137 + 72), v26 | 7);
  *(v28 + 16) = 1;
  *(v28 + 24) = 2;
  v29 = v28 + v27;
  v21 = v137;
  (*(v137 + 16))(v29, &v105, v9);
  v24 = v28;
  v126 = *(v28 + 16);
  if (v126)
  {
LABEL_5:
    v119 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v118 = v24 + v119;
    v113 = "are not properly constructed." + 0x8000000000000000;
    v30 = 0;
    v134 = _swiftEmptyArrayStorage;
    v138 = _swiftEmptyArrayStorage;
    v129._object = v24;
    while (2)
    {
      if (v30 >= v24[2])
      {
        BUG();
      }

      v31 = *(v21 + 16);
      v121 = *(v21 + 72);
      v32 = v21;
      v33 = v30;
      v34 = &v118[v30 * v121];
      v35 = v128;
      v110 = v31;
      v31(v128, v34, v9);
      v36 = v35;
      v129._countAndFlagsBits = URL.lastPathComponent.getter();
      v132 = v37;
      v38 = v117;
      static UTType.text.getter();
      v39 = v135;
      v40 = static _FileUtilities.readableFiles(at:type:)(v36, v38);
      *&v135 = v39;
      if (v39)
      {
        (*(v125 + 8))(v38, v124);
        v132;
        v80 = *(v32 + 8);
        v81 = v136;
        v80(v36, v136);
        v134;
        v138;
        v129._object;
      }

      else
      {
        v127 = v40;
        (*(v125 + 8))(v38, v124);
        v41 = v127;
        v42 = v127[2];
        if (v42)
        {
          v112 = v127[2];
          v115 = v42 - 1;
          v43 = v127 + v119;
          v44 = 0;
          v45 = 0;
          v123 = v33 + 1;
          v116 = v127 + v119;
LABEL_10:
          v114 = v44;
          v46 = &v43[v45 * v121];
          v9 = v136;
          do
          {
            if (v45 >= v41[2])
            {
              BUG();
            }

            v47 = v122;
            v131 = v46;
            v110(v122, v46, v9);
            v48 = v111;
            static String.Encoding.utf8.getter();
            v49 = v135;
            v50 = String.init(contentsOf:encoding:)(v47, v48);
            if (!v49)
            {
              v65 = v50;
              v66 = v51;
              *&v135 = 0;
              if (swift_isUniquelyReferenced_nonNull_native(v134))
              {
                v67 = v134;
              }

              else
              {
                v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134[2] + 1, 1, v134);
              }

              v68 = v67[2];
              v69 = v67[3];
              v70 = v68 + 1;
              if (v69 >> 1 <= v68)
              {
                v131 = v68 + 1;
                v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 >= 2, v70, 1, v67);
                v70 = v131;
              }

              v67[2] = v70;
              v71 = 2 * v68;
              v67[v71 + 4] = v65;
              v134 = v67;
              v67[v71 + 5] = v66;
              v132;
              v72 = v138;
              if (!swift_isUniquelyReferenced_nonNull_native(v138))
              {
                v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
              }

              v73 = v72[2];
              if (v72[3] >> 1 <= v73)
              {
                v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72[3] >= 2uLL, v73 + 1, 1, v72);
                v74 = v45;
                v138 = v79;
              }

              else
              {
                v74 = v45;
                v138 = v72;
              }

              v45 = v74 + 1;
              v75 = v138;
              v138[2] = v73 + 1;
              v76 = 2 * v73;
              v75[v76 + 4] = v129._countAndFlagsBits;
              v75[v76 + 5] = v132;
              v64 = *(v137 + 8);
              v77 = v74;
              v64(v122, v136);
              LOBYTE(v44) = 1;
              v78 = v115 == v77;
              v30 = v123;
              v41 = v127;
              v43 = v116;
              if (v78)
              {
                v127;
                v9 = v136;
                goto LABEL_29;
              }

              goto LABEL_10;
            }

            v108 = (v45 + 1);
            v49;
            *&v133 = 0;
            *(&v133 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v52 = *(&v133 + 1);
            *(&v133 + 1);
            *&v133 = 0xD00000000000001FLL;
            *(&v133 + 1) = v113;
            v53._countAndFlagsBits = URL.path.getter(v52);
            object = v53._object;
            String.append(_:)(v53);
            object;
            v55._countAndFlagsBits = 46;
            v55._object = 0xE100000000000000;
            String.append(_:)(v55);
            v58 = v133;
            v57 = v58 >> 64;
            v56 = v58;
            v109 = v133;
            LOBYTE(v135) = static os_log_type_t.info.getter();
            v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
            v60 = swift_allocObject(v59, 64, 7);
            *(v60 + 16) = 1;
            *(v60 + 24) = 2;
            *(v60 + 56) = &type metadata for String;
            *(v60 + 32) = __PAIR128__(v57, v56);
            v57;
            print(_:separator:terminator:)(v60, 32, 0xE100000000000000, 10, 0xE100000000000000);
            v60;
            type metadata accessor for OS_os_log();
            v61 = static OS_os_log.default.getter(0);
            v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
            v63 = swift_allocObject(v62, 72, 7);
            v63[2] = 1;
            v63[3] = 2;
            v63[7] = &type metadata for String;
            v63[8] = lazy protocol witness table accessor for type String and conformance String();
            v63[4] = v109;
            v63[5] = v57;
            v57;
            os_log(_:dso:log:type:_:)("%@\n", 3, 2, &dword_0, v61, v135, v63);
            v57;

            v63;
            v64 = *(v137 + 8);
            v9 = v136;
            v64(v47, v136);
            v45 = v108;
            v46 = v121 + v131;
            *&v135 = 0;
            v30 = v123;
            v41 = v127;
          }

          while (v112 != v108);
          v127;
          if ((v114 & 1) == 0)
          {
            v83 = v129._object;
            goto LABEL_34;
          }

          *&v135 = 0;
LABEL_29:
          v64(v128, v9);
          v132;
          v21 = v137;
          v24 = v129._object;
          if (v30 != v126)
          {
            continue;
          }

          v129._object;
          v84 = v134;
          goto LABEL_37;
        }

        v82 = v127;
        v129._object;
        v83 = v82;
LABEL_34:
        v83;
        v134;
        v138;
        *&v133 = 0;
        *(&v133 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);
        *(&v133 + 1);
        *&v133 = 0xD000000000000019;
        *(&v133 + 1) = "tted text file " + 0x8000000000000000;
        v85._countAndFlagsBits = v129._countAndFlagsBits;
        v85._object = v132;
        String.append(_:)(v85);
        v85._object = 0xE200000000000000;
        v85._countAndFlagsBits = 11815;
        String.append(_:)(v85);
        v86 = *(&v133 + 1);
        v87 = v133;
        v88 = static os_log_type_t.error.getter();
        log(_:type:)(__PAIR128__(v86, v87), v88);
        v86;
        *&v133 = 0;
        *(&v133 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);
        *(&v133 + 1);
        *&v133 = 0xD000000000000019;
        *(&v133 + 1) = "tted text file " + 0x8000000000000000;
        v85._countAndFlagsBits = v129._countAndFlagsBits;
        v89 = v132;
        v85._object = v132;
        String.append(_:)(v85);
        v89;
        v85._countAndFlagsBits = 11815;
        v85._object = 0xE200000000000000;
        String.append(_:)(v85);
        v135 = v133;
        v85._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v90 = swift_allocError(&type metadata for MLCreateError, v85._object, 0, 0);
        *v91 = v135;
        *(v91 + 16) = 0;
        *(v91 + 32) = 0;
        *(v91 + 48) = 0;
        *&v135 = v90;
        swift_willThrow(&type metadata for MLCreateError, v85._object);
        v80 = *(v137 + 8);
        v81 = v136;
        v80(v128, v136);
      }

      break;
    }

    v80(v130, v81);
    return 0x6C6562616CLL;
  }

  v28;
  v84 = _swiftEmptyArrayStorage;
  v138 = _swiftEmptyArrayStorage;
LABEL_37:
  v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v92, v106);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *(inited + 32) = 1954047348;
  *(inited + 40) = 0xE400000000000000;
  *&v133 = v84;
  v94 = alloca(24);
  v95 = alloca(32);
  v107 = &v133;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v96 & 1;
  v133;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  *&v133 = v138;
  v97 = alloca(24);
  v98 = alloca(24);
  v107 = &v133;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 88) = v99 & 1;
  v133;
  v100 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v101 = v135;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v100);
  *&v135 = v101;
  if (!v101)
  {
    v102 = BYTE8(v133);
    v103 = v120;
    *v120 = v133;
    *(v103 + 8) = v102;
  }

  (*(v137 + 8))(v130, v136);
  return 0x6C6562616CLL;
}

void *static _TextUtilities.getTextLabeledDictionary(from:)(uint64_t a1, double a2)
{
  v4 = static _TextUtilities.getTextLabels(from:)(&v71, a1);
  if (!v2)
  {
    v74._countAndFlagsBits = v4;
    v8 = v71;
    v62 = v72;
    v56 = v71;
    v9 = v72 & 1;
    v57 = v72 & 1;
    v63 = v7;
    v65 = v6;
    v10 = v5;
    outlined copy of Result<_DataTable, Error>(v71, v72);
    v11._countAndFlagsBits = v74._countAndFlagsBits;
    v11._object = v10;
    MLDataTable.subscript.getter(v11);
    v10;
    outlined consume of Result<_DataTable, Error>(v56, v57);
    v12 = v71;
    LOBYTE(v74._countAndFlagsBits) = v72;
    v59 = v8;
    outlined copy of Result<_DataTable, Error>(v8, v62);
    v11._countAndFlagsBits = v65;
    v11._object = v63;
    MLDataTable.subscript.getter(v11);
    v63;
    outlined consume of Result<_DataTable, Error>(v8, v9);
    if (LOBYTE(v74._countAndFlagsBits) || (v60 = v71, HIBYTE(v74._object) = v72, v13 = v12[2], outlined copy of Result<_DataTable, Error>(v12, 0), v14 = CMLColumn.size.getter(), outlined consume of Result<_DataTable, Error>(v12, 0), v58 = v14, v14 < 0))
    {
      BUG();
    }

    v3 = _swiftEmptyDictionarySingleton;
    if (v14)
    {
      v15 = 0;
      v61 = v12;
      do
      {
        v64 = v3;
        outlined copy of Result<_DataTable, Error>(v12, 0);
        v66 = v15;
        _UntypedColumn.valueAtIndex(index:)(v15, a2);
        outlined consume of Result<_DataTable, Error>(v12, 0);
        v16 = v71;
        v17 = v72;
        if (v73 != 2)
        {
          outlined consume of MLDataValue(v71, v72, v73);
          BUG();
        }

        if (v3[2] && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v72), (v19 & 1) != 0))
        {
          v74._countAndFlagsBits = *(v3[7] + 8 * v18);
          v74._countAndFlagsBits;
          outlined consume of MLDataValue(v16, v17, 2);

          _UntypedColumn.valueAtIndex(index:)(v66, a2);
          outlined consume of Result<_DataTable, Error>(v12, 0);
          v67 = v71;
          v69 = v72;
          if (v73 != 2)
          {
            outlined consume of MLDataValue(v71, v72, v73);
            BUG();
          }

          if (HIBYTE(v74._object))
          {
            goto LABEL_47;
          }

          outlined copy of Result<_DataTable, Error>(v60, 0);
          _UntypedColumn.valueAtIndex(index:)(v66, a2);
          outlined consume of Result<_DataTable, Error>(v60, 0);
          v20 = v71;
          v21 = v72;
          if (v73 != 2)
          {
            outlined consume of MLDataValue(v71, v72, v73);
LABEL_47:
            BUG();
          }

          v72;
          if (!swift_isUniquelyReferenced_nonNull_native(v74._countAndFlagsBits))
          {
            v74._countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74._countAndFlagsBits + 16) + 1, 1, v74._countAndFlagsBits);
          }

          v22 = *(v74._countAndFlagsBits + 16);
          if (*(v74._countAndFlagsBits + 24) >> 1 <= v22)
          {
            v74._countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v74._countAndFlagsBits + 24) >= 2uLL, v22 + 1, 1, v74._countAndFlagsBits);
          }

          countAndFlagsBits = v74._countAndFlagsBits;
          *(v74._countAndFlagsBits + 16) = v22 + 1;
          v24 = 16 * v22;
          *(countAndFlagsBits + v24 + 32) = v20;
          *(countAndFlagsBits + v24 + 40) = v21;
          outlined consume of MLDataValue(v20, v21, 2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v64);
          v71 = v64;
          v27 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v69);
          v28 = (v26 & 1) == 0;
          v29 = __OFADD__(v64[2], v28);
          v30 = v64[2] + v28;
          if (v29)
          {
            BUG();
          }

          v31 = v26;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
          {
            v32 = v69;
            v27 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v69);
            LOBYTE(v35) = v35 & 1;
            if ((v31 & 1) != v35)
            {
LABEL_49:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v32, v35, v33, v34);
              BUG();
            }
          }

          v3 = v71;
          if ((v31 & 1) == 0)
          {
            v71[(v27 >> 6) + 8] |= 1 << v27;
            v52 = v3[6];
            v53 = 16 * v27;
            *(v52 + v53) = v67;
            *(v52 + v53 + 8) = v69;
            *(v3[7] + 8 * v27) = v74._countAndFlagsBits;
            v54 = v3[2];
            v29 = __OFADD__(1, v54);
            v51 = v54 + 1;
            v12 = v61;
            if (v29)
            {
              BUG();
            }

LABEL_34:
            v3[2] = v51;
            goto LABEL_35;
          }

          v36 = v71[7];
          *(v36 + 8 * v27);
          *(v36 + 8 * v27) = v74._countAndFlagsBits;
          outlined consume of MLDataValue(v67, v69, 2);
          v12 = v61;
        }

        else
        {
          outlined consume of MLDataValue(v16, v17, 2);

          _UntypedColumn.valueAtIndex(index:)(v66, a2);
          outlined consume of Result<_DataTable, Error>(v12, 0);
          v70 = v71;
          v74._countAndFlagsBits = v72;
          if (v73 != 2)
          {
            outlined consume of MLDataValue(v71, v74._countAndFlagsBits, v73);
            BUG();
          }

          v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
          v38 = swift_allocObject(v37, 48, 7);
          *(v38 + 16) = 1;
          *(v38 + 24) = 2;
          if (HIBYTE(v74._object))
          {
            goto LABEL_43;
          }

          v39 = v38;
          outlined copy of Result<_DataTable, Error>(v60, 0);
          _UntypedColumn.valueAtIndex(index:)(v66, a2);
          outlined consume of Result<_DataTable, Error>(v60, 0);
          v40 = v72;
          if (v73 != 2)
          {
            outlined consume of MLDataValue(v71, v72, v73);
LABEL_43:
            BUG();
          }

          *(v39 + 32) = v71;
          v68 = v39;
          *(v39 + 40) = v40;
          v41 = swift_isUniquelyReferenced_nonNull_native(v3);
          v71 = v3;
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v74._countAndFlagsBits);
          v44 = (v42 & 1) == 0;
          v29 = __OFADD__(v64[2], v44);
          v45 = v64[2] + v44;
          if (v29)
          {
            BUG();
          }

          v46 = v42;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v41, v45))
          {
            v32 = v74._countAndFlagsBits;
            v43 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v74._countAndFlagsBits);
            LOBYTE(v35) = v35 & 1;
            v12 = v61;
            if ((v46 & 1) != v35)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v12 = v61;
          }

          v3 = v71;
          if ((v46 & 1) == 0)
          {
            v71[(v43 >> 6) + 8] |= 1 << v43;
            v48 = v3[6];
            v49 = 16 * v43;
            *(v48 + v49) = v70;
            *(v48 + v49 + 8) = v74._countAndFlagsBits;
            *(v3[7] + 8 * v43) = v68;
            v50 = v3[2];
            v29 = __OFADD__(1, v50);
            v51 = v50 + 1;
            if (v29)
            {
              BUG();
            }

            goto LABEL_34;
          }

          v47 = v71[7];
          *(v47 + 8 * v43);
          *(v47 + 8 * v43) = v68;
          outlined consume of MLDataValue(v70, v74._countAndFlagsBits, 2);
        }

LABEL_35:
        v15 = v66 + 1;
      }

      while (v58 != v66 + 1);
    }

    outlined consume of Result<_DataTable, Error>(v59, v62);
    outlined consume of Result<_DataTable, Error>(v12, 0);
    outlined consume of Result<_DataTable, Error>(v60, SHIBYTE(v74._object));
  }

  return v3;
}

uint64_t static _TextUtilities.optionsDictionary(from:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v73 = a1[2];
  v3 = a1[3];
  v74 = a1[4];
  v72 = a1[5];
  v71 = a1[6];
  v70 = a1[7];
  v4 = a1[8];
  v5 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  if (!v2)
  {
    v52 = NSFullUserName();
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)(v53);
    v56 = v55;

    v65 = &type metadata for String;
    *&v64 = v54;
    *(&v64 + 1) = v56;
    v75 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
    v58 = 0x726F68747561;
    v59 = 0xE600000000000000;
    goto LABEL_40;
  }

  v69 = v4;
  v65 = &type metadata for String;
  *&v64 = v1;
  *(&v64 + 1) = v2;
  v2;
  v6 = swift_isUniquelyReferenced_nonNull_native(v5);
  v75 = v5;
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v64, 0x726F68747561, 0xE600000000000000, v6);
  v7 = v75;
  outlined destroy of Any?(v66);
  v65 = &type metadata for String;
  *&v64 = v73;
  *(&v64 + 1) = v3;
  v3;
  v8 = swift_isUniquelyReferenced_nonNull_native(v7);
  v75 = v7;
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v64, 0xD000000000000011, ("No data found for label '" + 0x8000000000000000), v8);
  v9 = v75;
  outlined destroy of Any?(v66);
  if (v72)
  {
    v65 = &type metadata for String;
    *&v64 = v74;
    *(&v64 + 1) = v72;
    v72;
    v10 = swift_isUniquelyReferenced_nonNull_native(v9);
    v75 = v9;
    specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v64, 0x65736E6563696CLL, 0xE700000000000000, v10);
    v9 = v75;
    outlined destroy of Any?(v66);
  }

  v65 = &type metadata for String;
  *&v64 = v71;
  *(&v64 + 1) = v70;
  v70;
  v11 = swift_isUniquelyReferenced_nonNull_native(v9);
  v75 = v9;
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v64, 0x5F6E6F6973726576, 0xEE00676E69727473, v11);
  v68 = v75;
  outlined destroy of Any?(v66);
  v12 = v69;
  if (!v69)
  {
    return v68;
  }

  v69;
  v13 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v14 = 1 << *(v12 + 32);
  v15 = ~(-1 << v14);
  if (v14 >= 64)
  {
    v15 = -1;
  }

  v16 = v13;
  v17 = *(v12 + 64) & v15;
  v76 = (v14 + 63) >> 6;
  v18 = 0;
  while (1)
  {
    if (v17)
    {
LABEL_9:
      v19 = v18;
      goto LABEL_24;
    }

    v20 = v18 + 1;
    if (__OFADD__(1, v18))
    {
      BUG();
    }

    if (v20 >= v76)
    {
      goto LABEL_39;
    }

    v17 = *(v12 + 8 * v20 + 64);
    if (v17)
    {
      v19 = v18 + 1;
      goto LABEL_24;
    }

    v19 = v18 + 2;
    if (v18 + 2 >= v76)
    {
      goto LABEL_39;
    }

    v17 = *(v12 + 8 * v20 + 72);
    if (!v17)
    {
      v19 = v18 + 3;
      if (v18 + 3 >= v76)
      {
        goto LABEL_39;
      }

      v17 = *(v12 + 8 * v20 + 80);
      if (!v17)
      {
        v19 = v18 + 4;
        if (v18 + 4 >= v76)
        {
          goto LABEL_39;
        }

        v17 = *(v12 + 8 * v20 + 88);
        if (!v17)
        {
          v19 = v18 + 5;
          if (v18 + 5 >= v76)
          {
            goto LABEL_39;
          }

          v17 = *(v12 + 8 * v20 + 96);
          if (!v17)
          {
            v19 = v18 + 6;
            if (v18 + 6 >= v76)
            {
              goto LABEL_39;
            }

            v17 = *(v12 + 8 * v20 + 104);
            if (!v17)
            {
              break;
            }
          }
        }
      }
    }

LABEL_24:
    v70 = v17;
    _BitScanForward64(&v21, v17);
    v67 = v19;
    v22 = (v19 << 10) | (16 * v21);
    v23 = *(v12 + 48);
    v24 = *(v12 + 56);
    v25 = *(v23 + v22);
    v26 = *(v23 + v22 + 8);
    v73 = *(v24 + v22);
    v27 = *(v24 + v22 + 8);
    v26;
    v72 = v27;
    v27;
    v28 = swift_isUniquelyReferenced_nonNull_native(v16);
    v66[0] = v16;
    v74 = v25;
    v29 = v25;
    v71 = v26;
    v30 = v16;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v26);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v30[2], v33);
    v35 = v30[2] + v33;
    if (v34)
    {
      BUG();
    }

    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v35))
    {
      v37 = v71;
      v38 = v71;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v71);
      LOBYTE(v41) = v41 & 1;
      if ((v36 & 1) != v41)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v38, v41, v39, v40);
        BUG();
      }

      v42 = v70;
    }

    else
    {
      v42 = v70;
      v37 = v71;
    }

    v17 = v42 & (v42 - 1);
    v16 = v66[0];
    if (v36)
    {
      v43 = *(v66[0] + 56);
      v44 = 16 * v32;
      v45 = *(v43 + v44 + 8);
      *(v43 + v44) = v73;
      *(v43 + v44 + 8) = v72;
      v37;
      v45;
    }

    else
    {
      *(v66[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v46 = v16[6];
      v47 = 16 * v32;
      *(v46 + v47) = v74;
      *(v46 + v47 + 8) = v37;
      v48 = v16[7];
      *(v48 + v47) = v73;
      *(v48 + v47 + 8) = v72;
      v49 = v16[2];
      v34 = __OFADD__(1, v49);
      v50 = v49 + 1;
      if (v34)
      {
        BUG();
      }

      v16[2] = v50;
    }

    v18 = v67;
    v12 = v69;
  }

  v51 = v18 + 7;
  while (v51 < v76)
  {
    v17 = *(v12 + 8 * v51++ + 64);
    if (v17)
    {
      v18 = v51 - 1;
      goto LABEL_9;
    }
  }

LABEL_39:

  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : String]);
  *&v64 = v16;
  v60 = v68;
  v61 = swift_isUniquelyReferenced_nonNull_native(v68);
  v75 = v60;
  isUniquelyReferenced_nonNull_native = v61;
  v58 = 0x6665645F72657375;
  v59 = 0xEC00000064656E69;
LABEL_40:
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v64, v58, v59, isUniquelyReferenced_nonNull_native);
  v62 = v75;
  outlined destroy of Any?(v66);
  return v62;
}

uint64_t outlined init with copy of MLTextClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

_OWORD *specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, Swift::Bool a4)
{
  v6 = v5;
  v21 = v4;
  v7 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(*(v7 + 16), v10);
  v12 = *(v7 + 16) + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v12))
  {
    v14 = *v6;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v17) = v17 & 1;
    if ((v13 & 1) != v17)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v17, v15, v16);
      BUG();
    }
  }

  v18 = *v6;
  if (v13)
  {
    v19 = 32 * v9;
    outlined init with take of Any((v19 + v18[7]), v21);
    return outlined init with take of Any(a1, (v18[7] + v19));
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a3, a1, v18);
    v21[1] = 0;
    *v21 = 0;
    return a3;
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLBoostedTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v17;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v17, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(&v17, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
    v10 = v21;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v19;
    v14 = v18;
    (*(v18 + 32))(v19, &v17, v2);
    v15 = v21;
    (*(v14 + 16))(v21, v13, v2);
    v20 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLBoostedTreeClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLBoostedTreeClassifier.ModelParameters.validationData : MLBoostedTreeClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLBoostedTreeClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLBoostedTreeClassifier.ModelParameters.validationData : MLBoostedTreeClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLBoostedTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLBoostedTreeClassifier.ModelParameters.validationData.getter(a2);
  return MLBoostedTreeClassifier.ModelParameters.validationData.modify;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLBoostedTreeClassifier.ModelParameters.validation : MLBoostedTreeClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(a1, v6);
  return MLBoostedTreeClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLBoostedTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLBoostedTreeClassifier.ModelParameters.validation.modify;
}

void MLBoostedTreeClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v8 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  if (a2)
  {
    outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.earlyStoppingRounds.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10, double a11)
{
  v22 = a4;
  v26 = a3;
  v12 = v11;
  v23 = a11;
  v24 = a10;
  v27 = a5;
  v28 = a9;
  v29 = a8;
  v30 = a7;
  v25 = a1;
  v14 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 32) = a2;
  *(v12 + 40) = v26;
  *(v12 + 48) = v30;
  *(v12 + 56) = v29;
  *(v12 + 64) = v22;
  *(v12 + 72) = v28;
  *(v12 + 80) = v27;
  *(v12 + 88) = a6 & 1;
  *(v12 + 96) = v24;
  *(v12 + 104) = v23;
  v18 = v25;
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v25, v21);
  v21[3] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v21, boxed_opaque_existential_0);
  outlined assign with take of Any?(v21, v12);
  return outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v18);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a7;
  *(v11 + 56) = a8;
  *(v11 + 64) = a4;
  *(v11 + 72) = a9;
  *(v11 + 80) = a5;
  *(v11 + 88) = a6 & 1;
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  v15 = v12;
  v16 = v13;
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v15);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = v16;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.maximumIterations.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 56) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 64) = BoostedTreeConfiguration.randomSeed.getter();
  *(v3 + 72) = BoostedTreeConfiguration.learningRate.getter();
  *(v3 + 80) = BoostedTreeConfiguration.earlyStoppingIterationCount.getter();
  *(v3 + 88) = v11 & 1;
  *(v3 + 96) = BoostedTreeConfiguration.rowSubsample.getter();
  *(v3 + 104) = BoostedTreeConfiguration.columnSubsample.getter();
  v18 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLBoostedTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v16, 1, v7) == 1)
  {
    v12 = v19;
    swift_storeEnumTagMultiPayload(v19, v7, 3);
    if (__swift_getEnumTagSinglePayload(v16, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, &demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v12 = v19;
    outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v16, v19);
  }

  v17[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v12, boxed_opaque_existential_0);
  outlined assign with take of Any?(v17, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for DataFrame?);
  v14 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.description.getter()
{
  v29._countAndFlagsBits = v0[4];
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  v3 = v1;
  String.append(_:)(v1);
  object, v3._object;
  v3._object = 0xE100000000000000;
  v3._countAndFlagsBits = 10;
  String.append(_:)(v3);
  _StringGuts.grow(_:)(19);
  0xE000000000000000, 0xE100000000000000;
  v29._countAndFlagsBits = 0xD000000000000010;
  v29._object = "ansformer have different types." + 0x8000000000000000;
  v27 = v0[5];
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v5 = v4._object;
  v6 = v4;
  String.append(_:)(v4);
  v5, v6._object;
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = "ansformer have different types." + 0x8000000000000000;
  String.append(_:)(v6);
  "ansformer have different types." + 0x8000000000000000, "ansformer have different types." + 0x8000000000000000;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v6._object = "Max Iterations: " + 0x8000000000000000;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v26 = v0[6];
  Double.write<A>(to:)(&v29, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v29;
  v8 = v29._object;
  String.append(_:)(v29);
  v8, v7._object;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v7._object = "Min Loss Reduction: " + 0x8000000000000000;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  Double.write<A>(to:)(&v29, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v9 = v29;
  v10 = v29._object;
  String.append(_:)(v29);
  v10, v9._object;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v29._object, v9._object;
  strcpy(&v29, "Random Seed: ");
  HIWORD(v29._object) = -4864;
  v28 = v0[8];
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v12 = v11._object;
  v13 = v11;
  String.append(_:)(v11);
  v12, v13._object;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v29;
  v15 = v29._object;
  String.append(_:)(v29);
  v15, v14._object;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x7A69532070657453;
  v14._object = 0xEB00000000203A65;
  String.append(_:)(v14);
  v16 = v0[9];
  Double.write<A>(to:)(&v29, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v17 = v29;
  v18 = v29._object;
  String.append(_:)(v29);
  v18, v17._object;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v17._countAndFlagsBits = 0x7362755320776F52;
  v17._object = 0xEF203A656C706D61;
  String.append(_:)(v17);
  v19 = v0[12];
  Double.write<A>(to:)(&v29, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v17._countAndFlagsBits = 10;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v20 = v29;
  v21 = v29._object;
  String.append(_:)(v29);
  v21, v20._object;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v20._object = "Min Child Weight: " + 0x8000000000000000;
  v20._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v20);
  v22 = v0[13];
  Double.write<A>(to:)(&v29, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v23 = v29;
  v24 = v29._object;
  String.append(_:)(v29);
  v24, v23._object;
  return 0x747065442078614DLL;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLBoostedTreeClassifier.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t type metadata completion function for RecommendationMetrics(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v5[0] = *(v1 - 8) + 64;
    v5[1] = &value witness table for Builtin.Int64 + 64;
    v5[2] = &value witness table for Builtin.Int64 + 64;
    v5[3] = &value witness table for Builtin.Int64 + 64;
    v5[4] = &value witness table for Builtin.Int64 + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 5, v5, a1 + 24);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for RecommendationMetrics(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x1000F8) != 0 || (v6 = *(v4 + 64), ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18))
  {
    v13 = *a2;
    *v3 = *a2;
    v14 = v13 + (((v5 | 7) + 16) & ~(v5 | 7u));
    v13;
    return v14;
  }

  else
  {
    (*(v4 + 16))(a1, a2);
    v7 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v8 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v7 = *v8;
    v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v10;
    v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 16))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 24))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 40))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RecommendationMetrics(int *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 < a2)
  {
    v7 = ((((((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v8 = a2 - v6 + 1;
    v9 = 2;
    if ((v7 & 0xFFFFFFF8) == 0)
    {
      v9 = v8;
    }

    v10 = 1;
    if (v9 >= 0x100)
    {
      v10 = 2 * (v9 >= &loc_10000) + 2;
    }

    result = 0;
    if (v9 < 2)
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 0:
        goto LABEL_18;
      case 1:
        v12 = *(a1 + v7);
        goto LABEL_14;
      case 2:
        v12 = *(a1 + v7);
        goto LABEL_14;
      case 3:
        BUG();
      case 4:
        v12 = *(a1 + v7);
LABEL_14:
        if (v12)
        {
          v13 = v12 - 1;
          v14 = 0;
          if ((v7 & 0xFFFFFFF8) != 0)
          {
            v13 = 0;
            v14 = *a1;
          }

          return v6 + (v13 | v14) + 1;
        }

LABEL_18:
        if (!v6)
        {
          return result;
        }

        break;
    }
  }

  return __swift_getEnumTagSinglePayload(a1, v6, v4);
}

uint64_t storeEnumTagSinglePayload for RecommendationMetrics(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = ((((((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = 0;
  v9 = 1;
  if (v6 < a3)
  {
    v10 = a3 - v6 + 1;
    v11 = 2;
    if (!v7)
    {
      v11 = v10;
    }

    v12 = 2 * (v11 >= &loc_10000) + 2;
    if (v11 < 0x100)
    {
      v12 = 1;
    }

    v8 = 0;
    if (v11 >= 2)
    {
      v8 = v12;
    }
  }

  if (a2 > v6)
  {
    if (v7)
    {
      __bzero(a1, v7);
      *a1 = a2 + ~v6;
    }

    else
    {
      v9 = a2 - v6;
    }

    result = v8;
    switch(v8)
    {
      case 0u:
        return result;
      case 1u:
        *(a1 + v7) = v9;
        return result;
      case 2u:
        *(a1 + v7) = v9;
        return result;
      case 3u:
        goto LABEL_23;
      case 4u:
        *(a1 + v7) = v9;
        return result;
    }
  }

  result = v8;
  switch(v8)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v7) = 0;
      break;
    case 2u:
      *(a1 + v7) = 0;
      break;
    case 3u:
LABEL_23:
      BUG();
    case 4u:
      *(a1 + v7) = 0;
      break;
  }

  if (a2)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, v6, v4);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.indices.getter()
{
  return specialized RandomAccessCollection<>.indices.getter(CMLDictionary.size.getter);
}

{
  if (CMLSequence.size.getter() < 0)
  {
    BUG();
  }

  return 0;
}

{
  return specialized RandomAccessCollection<>.indices.getter();
}

{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);

  if (v1 < 0)
  {
    BUG();
  }

  return 0;
}

{
  return specialized RandomAccessCollection<>.indices.getter();
}

uint64_t specialized RandomAccessCollection<>.indices.getter(uint64_t a1, char a2)
{
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  if (v2 < 0)
  {
    BUG();
  }

  return 0;
}

uint64_t specialized RandomAccessCollection<>.indices.getter(uint64_t (__cdecl *a1)())
{
  if (a1() < 0)
  {
    BUG();
  }

  return 0;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2)
{
  return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, CMLDictionary.size.getter);
}

{
  v2 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v3 = CMLSequence.size.getter();
  if (v2 < 0 || v3 < v2)
  {
    BUG();
  }

  return a2 + a1;
}

{
  return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2);
}

{
  v2 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  if (v2 < 0 || v4 < v2)
  {
    BUG();
  }

  return a2 + a1;
}

{
  return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2);
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v8 = a4 & 1;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v5 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a3, v8);
  if (v4 < 0 || v5 < v4)
  {
    BUG();
  }

  return a2 + a1;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t (__cdecl *a3)())
{
  v3 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v4 = a3();
  if (v3 < 0 || v4 < v3)
  {
    BUG();
  }

  return a2 + a1;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, specialized RandomAccessCollection<>.distance(from:to:), CMLDictionary.size.getter);
}

{
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(a1, a3);
  if (a2 <= 0)
  {
    v4 = v3 <= 0;
    v5 = v3 > a2;
  }

  else
  {
    v4 = v3 >= 0;
    v5 = v3 < a2;
  }

  if (v5 && v4)
  {
    return 0;
  }

  v6 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v7 = CMLSequence.size.getter();
  if (v6 < 0 || v7 < v6)
  {
    BUG();
  }

  return v6;
}

{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3);
}

{

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (a1 < 0 || v5 < a1)
  {
    BUG();
  }

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (a3 < 0 || v7 < a3)
  {
    BUG();
  }

  v8 = a3 - a1;
  if (a2 <= 0)
  {
    v9 = v8 <= 0;
    v10 = v8 > a2;
  }

  else
  {
    v9 = v8 >= 0;
    v10 = v8 < a2;
  }

  if (v10 && v9)
  {
    return 0;
  }

  v11 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v12 = CMLSequence.size.getter();
  v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v12);

  if (v11 < 0 || v13 < v11)
  {
    BUG();
  }

  return v11;
}

{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3);
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a5 & 1;
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(a1, a3, a4, a5 & 1);
  if (a2 <= 0)
  {
    v8 = v7 <= 0;
    v9 = v7 > a2;
  }

  else
  {
    v8 = v7 >= 0;
    v9 = v7 < a2;
  }

  if (v9 && v8)
  {
    return 0;
  }

  else
  {
    return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a4, v6);
  }
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2), uint64_t (__cdecl *a5)())
{
  v6 = a4(a1, a3);
  if (a2 <= 0)
  {
    v7 = v6 <= 0;
    v8 = v6 > a2;
  }

  else
  {
    v7 = v6 >= 0;
    v8 = v6 < a2;
  }

  if (v8 && v7)
  {
    return 0;
  }

  else
  {
    return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a5);
  }
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1)
{
  return specialized RandomAccessCollection<>.index(before:)(a1);
}

{
  v1 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v1 < 0 || v1 >= v3)
  {
    BUG();
  }

  return a1 - 1;
}

{
  v1 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v2 = CMLSequence.size.getter();
  if (v1 < 0 || v1 >= v2)
  {
    BUG();
  }

  return a1 - 1;
}

{
  return specialized RandomAccessCollection<>.index(before:)(a1, CMLDictionary.size.getter);
}

{
  return specialized RandomAccessCollection<>.index(before:)(a1);
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v6 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v4 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a2, v6);
  if (v3 < 0 || v3 >= v4)
  {
    BUG();
  }

  return a1 - 1;
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, uint64_t (__cdecl *a2)())
{
  v2 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v3 = a2();
  if (v2 < 0 || v2 >= v3)
  {
    BUG();
  }

  return a1 - 1;
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2)
{
  return specialized Collection<>.subscript.getter(a1, a2, CMLDictionary.size.getter);
}

{
  v3 = v2;
  v4 = specialized Dictionary.startIndex.getter(a2);
  if (v6)
  {
    BUG();
  }

  v7 = *(a2 + 36);
  v8 = 1 << *(a2 + 32);
  if (v7 != v5)
  {
    BUG();
  }

  if (v8 < v4)
  {
    BUG();
  }

  v9 = v4;
  v10 = v5;
  outlined copy of [A : B].Index._Variant<A, B>(v4, v5, 0);
  outlined copy of [A : B].Index._Variant<A, B>(v8, v7, 0);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v8, v7, 0);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v9, v10, 0);
  if (*(a1 + 16))
  {
    BUG();
  }

  if (*(a1 + 8) != v7)
  {
    BUG();
  }

  v11 = v9;
  if (*a1 < v9)
  {
    BUG();
  }

  if (*(a1 + 40))
  {
    BUG();
  }

  if (v7 != *(a1 + 32))
  {
    BUG();
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
    BUG();
  }

  v17 = *(a1 + 12);
  v16 = *(a1 + 36);
  v15 = *a1;
  v19 = *(a1 + 16);
  v18 = *(a1 + 40);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v11, v10, 0);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v8, v7, 0);
  *(v3 + 48) = a2;
  *v3 = v15;
  *(v3 + 8) = v7;
  *(v3 + 12) = v17;
  *(v3 + 16) = v19;
  *(v3 + 24) = v12;
  *(v3 + 32) = v7;
  *(v3 + 36) = v16;
  *(v3 + 40) = v18;
  a2;
  return outlined retain of Range<MLDataValue.DictionaryType.Index>(a1);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = CMLSequence.size.getter();
  if (v6 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v6 < a2)
  {
    BUG();
  }

  v5[2] = a3;
  *v5 = a1;
  v5[1] = a2;
}

{
  return specialized Collection<>.subscript.getter(a1, a2, a3);
}

{
  v5 = v3;

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v7 < a2)
  {
    BUG();
  }

  v5[2] = a3;
  *v5 = a1;
  v5[1] = a2;
}

{
  return specialized Collection<>.subscript.getter(a1, a2, a3);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, Swift::Int a2, uint64_t a3, char a4)
{
  v7 = v4;
  v11 = a4 & 1;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v8 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a3, v11);
  if (v8 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v8 < a2)
  {
    BUG();
  }

  *(v7 + 16) = a3;
  *(v7 + 24) = a4 & 1;
  *v7 = a1;
  *(v7 + 8) = a2;
  return outlined copy of Result<_DataTable, Error>(a3, a4);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;

  a4;
  swift_retain_n(a5, 2);
  v9 = CMLSequence.size.getter();
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(0, v9);

  v11 = CMLSequence.size.getter();
  v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

  if (v12 < 0)
  {
    BUG();
  }

  v13 = CMLSequence.size.getter();
  v14 = specialized RandomAccessCollection<>.distance(from:to:)(0, v13);
  a4;

  a5;
  if (v10 < 0 || v14 < v10)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v10 < a2)
  {
    BUG();
  }

  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  *v8 = a1;
  v8[1] = a2;

  a4;
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (__cdecl *a3)())
{
  v3 = a3();
  if (v3 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v3 < a2)
  {
    BUG();
  }

  return a1;
}

void specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < a3 || a4 < a2)
  {
    BUG();
  }
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4);
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    BUG();
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    BUG();
  }

  if (*a1 < *a2)
  {
    BUG();
  }

  if (*(a2 + 40) & 1) != 0 || (*(a1 + 40))
  {
    BUG();
  }

  if (*(a2 + 32) != *(a1 + 32))
  {
    BUG();
  }

  result = *(a1 + 24);
  if (*(a2 + 24) < result)
  {
    BUG();
  }

  return result;
}

uint64_t specialized Collection.underestimatedCount.getter()
{
  v0 = CMLDictionary.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v0);
}

{
  return specialized Collection.underestimatedCount.getter();
}

{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v3 < 0)
  {
    BUG();
  }

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v1 < 0 || v5 < v1)
  {
    BUG();
  }

  return v1;
}

{
  v0 = CMLSequence.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v0);
}

{
  return specialized Collection.underestimatedCount.getter();
}

uint64_t specialized Collection.underestimatedCount.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 < 0)
  {
    BUG();
  }

  v8 = CMLSequence.size.getter();
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);
  a3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  return v5;
}

uint64_t *specialized Collection._copyToContiguousArray()()
{
  v0 = specialized _copyCollectionToContiguousArray<A>(_:)();

  return v0;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1)
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  a1;
  return v1;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, double a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);

  return v2;
}

{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);

  return v2;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, char a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2 & 1);
  outlined consume of Result<_DataTable, Error>(a1, a2);
  return v2;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3);

  a2;

  return v3;
}

uint64_t *specialized Collection._copyToContiguousArray()(uint64_t a1)
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

  return v1;
}

void *specialized Collection._copyToContiguousArray()()
{
  v0 = specialized _copyCollectionToContiguousArray<A>(_:)();

  return v0;
}

uint64_t Array<A>.featureValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CMLFeatureValue();
  v4 = Array<A>.featureSequence.getter(a1, a2, a3);
  return CMLFeatureValue.__allocating_init(_:)(v4);
}

uint64_t MLDataValue.SequenceType.description.getter()
{
  return MLDataValue.SequenceType.description.getter(closure #1 in MLDataValue.SequenceType.description.getter);
}

{
  v8 = *v0;

  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
  v2 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>, &demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>, lazy protocol witness table accessor for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType, &protocol conformance descriptor for <> LazyMapSequence<A, B>);
  v3 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v1, v2);
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);
  v5;
  0;
  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  0xE100000000000000;
  return 91;
}

uint64_t *MLDataValue.SequenceType.init<A>(_:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v41 = a1;
  v37 = v4;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  AssociatedConformanceWitness = v34;
  v47 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v38 = *(AssociatedTypeWitness - 8);
  v10 = *(v38 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v43 = v34;
  v13 = tc_v1_flex_list_create(0);
  if (!v13)
  {
    BUG();
  }

  v14 = v13;
  v15 = type metadata accessor for CMLSequence();
  v16 = swift_allocObject(v15, 25, 7);
  *(v16 + 16) = v14;
  v40 = v16;
  *(v16 + 24) = 1;
  v39 = v5;
  (*(v5 + 16))(AssociatedConformanceWitness, v41, a2);
  v17 = v47;
  dispatch thunk of Sequence.makeIterator()(a2, v47);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v17, a2, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v34[1] = a2;
  v35 = AssociatedTypeWitness;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()(AssociatedTypeWitness, AssociatedConformanceWitness);
    v18 = v46;
    v19 = v44;
    v20 = v45;
    v47 = v45;
    switch(v46)
    {
      case 0:
        v21 = specialized handling<A, B>(_:_:)(v44);
        if (!v21)
        {
          BUG();
        }

        v22 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v22, 25, 7);
        v23 = CMLFeatureValue.init(rawValue:ownsValue:)(v21, 1);
        v24 = v19;
        v25 = v47;
        v26 = 0;
        goto LABEL_14;
      case 1:
        a4 = *&v44;
        v29 = specialized handling<A, B>(_:_:)();
        if (!v29)
        {
          BUG();
        }

        v30 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v30, 25, 7);
        v23 = CMLFeatureValue.init(rawValue:ownsValue:)(v29, 1);
        v24 = v19;
        v25 = v47;
        v33 = 1;
        goto LABEL_13;
      case 2:
        v36 = type metadata accessor for CMLFeatureValue();
        outlined copy of MLDataValue(v19, v20, 2u);
        outlined copy of MLDataValue(v19, v20, 2u);
        v25 = v20;
        v23 = CMLFeatureValue.__allocating_init(_:)(v19, v20);
        v24 = v19;
        v33 = 2;
        goto LABEL_13;
      case 3:
        outlined copy of MLDataValue(v44, v45, 3u);
        outlined copy of MLDataValue(v19, v20, 3u);
        v28 = v20;
        v23 = MLDataValue.SequenceType.featureValue.getter(a4);

        v24 = v19;
        v25 = v28;
        v33 = 3;
        goto LABEL_13;
      case 4:
        outlined copy of MLDataValue(v44, v45, 4u);
        outlined copy of MLDataValue(v19, v20, 4u);
        v27 = v20;
        v23 = MLDataValue.DictionaryType.featureValue.getter();
        v44;
        v24 = v19;
        v25 = v27;
        v33 = 4;
        goto LABEL_13;
      case 5:
        outlined copy of MLDataValue(v44, v45, 5u);
        outlined copy of MLDataValue(v19, v20, 5u);
        v31 = v20;
        v23 = MLDataValue.MultiArrayType.featureValue.getter();

        v24 = v19;
        v25 = v31;
        v33 = 5;
        goto LABEL_13;
      case 6:
        type metadata accessor for CMLFeatureValue();
        v25 = v20;
        v23 = CMLFeatureValue.__allocating_init()(0);
        v24 = v19;
        v33 = 6;
LABEL_13:
        v26 = v33;
LABEL_14:
        outlined consume of MLDataValue?(v24, v25, v26);
        CMLSequence.append(_:)(v23);

        outlined consume of MLDataValue?(v19, v47, v18);
        AssociatedTypeWitness = v35;
        break;
      default:
        (*(v39 + 8))(v41, v44);
        (*(v38 + 8))(v43, v20);
        result = v37;
        *v37 = v40;
        return result;
    }
  }
}

uint64_t MLDataValue.SequenceType.init()()
{
  v1 = v0;
  v2 = tc_v1_flex_list_create(0);
  if (!v2)
  {
    BUG();
  }

  v3 = v2;
  v4 = type metadata accessor for CMLSequence();
  result = swift_allocObject(v4, 25, 7);
  *(result + 16) = v3;
  *(result + 24) = 1;
  *v1 = result;
  return result;
}

uint64_t *MLDataValue.SequenceType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v6 = a2;
  v7 = a1;
  v36 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v40 = *(AssociatedTypeWitness - 8);
  v9 = *(v40 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v35 = v31;
  v37 = AssociatedTypeWitness;
  v12 = *(*(type metadata accessor for Optional(0, AssociatedTypeWitness) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v43 = v31;
  v42 = *(v6 - 8);
  v15 = *(v42 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v39 = v31;
  AssociatedConformanceWitness = a3;
  v44 = swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v38 = *(v44 - 8);
  v18 = *(v38 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = tc_v1_flex_list_create(0);
  if (!v21)
  {
    BUG();
  }

  v22 = v21;
  v23 = type metadata accessor for CMLSequence();
  v24 = swift_allocObject(v23, 25, 7);
  *(v24 + 16) = v22;
  v41 = v24;
  *(v24 + 24) = 1;
  (*(v42 + 16))(v39, a1, v6);
  v45 = v31;
  v25 = AssociatedConformanceWitness;
  dispatch thunk of Sequence.makeIterator()(v6, AssociatedConformanceWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, v6, v44, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v26 = v37;
  v33 = a1;
  v34 = v6;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()(v44, AssociatedConformanceWitness);
    v27 = v43;
    if (__swift_getEnumTagSinglePayload(v43, 1, v26) == 1)
    {
      break;
    }

    v28 = v35;
    (*(v40 + 32))(v35, v27, v26);
    v29 = MLDataValueConvertible.featureValue.getter(v26, v32);
    CMLSequence.append(_:)(v29);
    (*(v40 + 8))(v28, v26);

    v6 = v34;
    v7 = v33;
  }

  (*(v42 + 8))(v7, v6);
  (*(v38 + 8))(v45, v44);
  result = v36;
  *v36 = v41;
  return result;
}

char MLDataValue.SequenceType.subscript.getter(uint64_t a1, double a2)
{
  v3 = *v2;
  v4 = CMLSequence.value(at:)(a1);
  return MLDataValue.init(_:)(v4, a2);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v2 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    BUG();
  }

  v3 = *v1;
  result = CMLSequence.size.getter();
  if (v2 < 0 || v2 >= result)
  {
    BUG();
  }

  *a1 = v2;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataValue.SequenceType(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v4 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataValue.SequenceType(uint64_t a1)
{
  v2 = v1;
  result = MLDataValue.SequenceType.endIndex.getter(a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataValue.SequenceType()
{
  v2 = v0;
  v3 = *v1;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataValue.SequenceType(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v5 = result;
  *(v5 + 8) = v8 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataValue.SequenceType(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.SequenceType(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

uint64_t protocol witness for Collection.index(after:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  result = CMLSequence.size.getter();
  if (v3 < 0 || v3 >= result)
  {
    BUG();
  }

  *a1 = v3 + 1;
  return result;
}

uint64_t *MLDataValue.SequenceType.init(arrayLiteral:)(uint64_t a1, double a2)
{
  v24 = v2;
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v5 = type metadata accessor for CMLSequence();
  v6 = swift_allocObject(v5, 25, 7);
  *(v6 + 16) = v4;
  v25 = v6;
  *(v6 + 24) = 1;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v23 = *v8;
      v22 = v7;
      switch(*v8)
      {
        case 0:
          v11 = specialized handling<A, B>(_:_:)(v9);
          if (!v11)
          {
            BUG();
          }

          goto LABEL_11;
        case 1:
          a2 = *(v8 - 2);
          v11 = specialized handling<A, B>(_:_:)();
          if (!v11)
          {
            BUG();
          }

LABEL_11:
          v16 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v16, 25, 7);
          v17 = CMLFeatureValue.init(rawValue:ownsValue:)(v11, 1);
          goto LABEL_16;
        case 2:
          type metadata accessor for CMLFeatureValue();
          outlined copy of MLDataValue(v9, v10, 2u);
          swift_bridgeObjectRetain_n(v10, 2);
          v14 = CMLFeatureValue.__allocating_init(_:)(v9, v10);
          v15 = 2;
          v12 = v14;
          v13 = v10;
          goto LABEL_14;
        case 3:
          v27 = *(v8 - 2);
          swift_retain_n(v9, 3);
          v12 = MLDataValue.SequenceType.featureValue.getter(a2);

          v13 = v10;
          v21 = 3;
          goto LABEL_13;
        case 4:
          swift_bridgeObjectRetain_n(v9, 3);
          v12 = MLDataValue.DictionaryType.featureValue.getter();
          v9;
          v13 = v10;
          v21 = 4;
          goto LABEL_13;
        case 5:
          v18 = v9;
          v19 = v18;
          v19;
          v12 = MLDataValue.MultiArrayType.featureValue.getter();

          v13 = v10;
          v21 = 5;
LABEL_13:
          v15 = v21;
LABEL_14:
          outlined consume of MLDataValue(v9, v13, v15);
          break;
        case 6:
          type metadata accessor for CMLFeatureValue();
          v17 = CMLFeatureValue.__allocating_init()(0);
LABEL_16:
          v12 = v17;
          break;
      }

      CMLSequence.append(_:)(v12);

      outlined consume of MLDataValue(v9, v10, v23);
      v8 += 24;
      --v7;
    }

    while (v22 != 1);
  }

  a1;
  result = v24;
  *v24 = v25;
  return result;
}

uint64_t static MLDataValue.SequenceType.== infix(_:_:)(void *a1, uint64_t *a2, double a3)
{
  v3 = *a1;
  v4 = *a2;
  *a1;
  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);
  v53 = v3;
  v3;
  v4;
  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  v52 = v4;
  v4;
  v9 = 0;
  if (v6 == v8)
  {
    v53;
    v10 = CMLSequence.size.getter();
    v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);
    v53;
    v44 = v11;
    if (v11 < 0)
    {
      BUG();
    }

    if (v11)
    {
      --v44;
      v12 = 0;
      while (2)
      {
        v53;
        v13 = CMLSequence.value(at:)(v12);
        switch(CMLFeatureValue.type.getter())
        {
          case 0u:
            v14 = *(v13 + 16);
            v13;
            v15 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v14));
            v53;
            v13, 2;
            object = 0;
            v17 = 0;
            goto LABEL_18;
          case 1u:
            v27 = *(v13 + 16);
            v13;
            specialized handling<A, B>(_:_:)(v27);
            v45 = a3;
            v53;
            v13, 2;
            a3 = v45;
            v15 = v45;
            v17 = 1;
            goto LABEL_17;
          case 2u:
            v13;
            v22 = CMLFeatureValue.stringValue()();
            if (v23)
            {
              v23;
              v13;
              BUG();
            }

            v15 = *&v22._countAndFlagsBits;
            object = v22._object;
            v53;
            v13, 2;
            v17 = 2;
            goto LABEL_18;
          case 3u:
            v24 = *(v13 + 16);
            v13;
            v25 = specialized handling<A, B>(_:_:)(v24);
            if (!v25)
            {
              BUG();
            }

            v26 = type metadata accessor for CMLSequence();
            v15 = COERCE_DOUBLE(swift_allocObject(v26, 25, 7));
            *(*&v15 + 16) = v25;
            *(*&v15 + 24) = 1;
            v53;
            v13, 2;
            v17 = 3;
            goto LABEL_17;
          case 4u:
            v18 = *(v13 + 16);
            v13;
            v19 = specialized handling<A, B>(_:_:)(v18);
            if (!v19)
            {
              BUG();
            }

            v20 = type metadata accessor for CMLDictionary();
            v21 = swift_allocObject(v20, 24, 7);
            *(v21 + 16) = v19;
            v42[0] = v21;
            v42[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
            v42[2] = 0;
            v42[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
            v42[4] = 0;
            v42[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
            v42[6] = 0;
            v46 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
            v21;
            specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v42, 1, &v46);
            v53;
            v13, 2;
            v21;
            v15 = v46;
            v17 = 4;
            goto LABEL_17;
          case 5u:
            v53;
            v13;
            v17 = 6;
            v15 = 0.0;
            goto LABEL_17;
          case 6u:
            v13;
            MLDataValue.MultiArrayType.init(from:)(v13);
            v15 = v46;
            if (v46 == 0.0)
            {
              BUG();
            }

            v53;
            v13;
            v17 = 5;
LABEL_17:
            object = 0;
LABEL_18:
            v46 = v15;
            v47 = object;
            LOBYTE(v48) = v17;
            v52;
            v28 = CMLSequence.value(at:)(v12);
            switch(CMLFeatureValue.type.getter())
            {
              case 0u:
                v29 = *(v28 + 16);
                v28;
                specialized handling<A, B>(_:_:)(v29);
                JUMPOUT(0x12F8E6);
              case 1u:
                v36 = *(v28 + 16);
                v28;
                specialized handling<A, B>(_:_:)(v36);
                v45 = a3;
                JUMPOUT(0x12FAA5);
              case 2u:
                v28;
                CMLFeatureValue.stringValue()();
                if (!v34)
                {
                  JUMPOUT(0x12F9FDLL);
                }

                v34;
                v28;
                BUG();
              case 3u:
                v35 = *(v28 + 16);
                v28;
                specialized handling<A, B>(_:_:)(v35);
                JUMPOUT(0x12FA2FLL);
              case 4u:
                v30 = *(v28 + 16);
                v28;
                v31 = specialized handling<A, B>(_:_:)(v30);
                if (v31)
                {
                  v32 = type metadata accessor for CMLDictionary();
                  v33 = swift_allocObject(v32, 24, 7);
                  *(v33 + 16) = v31;
                  v43[0] = v33;
                  v43[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                  v43[2] = 0;
                  v43[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                  v43[4] = 0;
                  v43[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                  v43[6] = 0;
                  v49 = &_swiftEmptyDictionarySingleton;
                  v33;
                  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v43, 1, &v49);
                  v52;
                  JUMPOUT(0x12F9C6);
                }

                BUG();
              case 5u:
                v52;
                v28;
                v37 = 6;
                v38 = 0;
                break;
              case 6u:
                v28;
                MLDataValue.MultiArrayType.init(from:)(v28);
                v38 = v49;
                if (!v49)
                {
                  BUG();
                }

                v52;
                v28;
                v37 = 5;
                break;
            }

            v49 = v38;
            v50 = 0;
            LOBYTE(v51) = v37;
            LOBYTE(v39) = static MLDataValue.== infix(_:_:)(&v46, &v49);
            v9 = v39;
            outlined consume of MLDataValue(v49, v50, v51);
            outlined consume of MLDataValue(*&v46, v47, v48);
            if ((v9 & 1) == 0)
            {
              return v9;
            }

            if (v44 == v12++)
            {
              return v9;
            }

            continue;
        }
      }
    }

    return 1;
  }

  return v9;
}

void closure #1 in MLDataValue.SequenceType.description.getter(uint64_t a1)
{
  v2 = v1;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  outlined copy of MLDataValue(*a1, v7, v8);
  v3 = MLDataValue.description.getter();
  v5 = v4;
  outlined consume of MLDataValue(v6, v7, v8);
  *v2 = v3;
  v2[1] = v5;
}

uint64_t closure #1 in MLDataValue.SequenceType.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = v4;
  outlined copy of MLDataValue(v7[0], v3, v4);
  result = String.init<A>(reflecting:)(v7, &type metadata for MLDataValue);
  *v2 = result;
  v2[1] = v6;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CMLSequence(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(before:)(*a1, CMLSequence.size.getter);
  *v3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMLSequence(uint64_t *a1)
{
  v2 = *v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1, CMLSequence.size.getter);
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance CMLSequence(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, CMLSequence.size.getter);
  *v4 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CMLSequence()
{
  v2 = v0;
  v3 = *v1;
  result = CMLSequence.endIndex.getter();
  *v2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CMLSequence(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = *v2;
  v4 = CMLSequence.subscript.getter(*a2);
  a1[1] = v4;
  *a1 = v4;
  return protocol witness for Collection.subscript.read in conformance CMLSequence;
}

uint64_t protocol witness for Collection.subscript.getter in conformance CMLSequence(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized Collection<>.subscript.getter(*a1, a1[1], CMLSequence.size.getter);
  *v3 = result;
  v3[1] = v6;
  v3[2] = v7;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance CMLSequence()
{
  v2 = v0;
  v3 = *v1;
  result = specialized RandomAccessCollection<>.indices.getter(CMLSequence.size.getter);
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMLSequence(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, specialized RandomAccessCollection<>.distance(from:to:), CMLSequence.size.getter);
  *v5 = result;
  *(v5 + 8) = v8 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance CMLSequence(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMLSequence(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

uint64_t protocol witness for Collection.index(after:) in conformance CMLSequence(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance CMLSequence(uint64_t *a1)
{
  v2 = *v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a1 = result;
  return result;
}

void MLDataValue.SequenceType.init(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 != 3)
  {
    outlined consume of MLDataValue(v4, *(a1 + 8), v5);
    v4 = 0;
  }

  *v3 = v4;
}

uint64_t MLDataValue.SequenceType.dataValue.getter()
{
  v2 = *v1;
  *v0 = *v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 3;
  return v2;
}

uint64_t MLDataValue.SequenceType.init(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  if (!v3)
  {
    BUG();
  }

  v4 = type metadata accessor for CMLSequence();
  v5 = swift_allocObject(v4, 25, 7);
  *(v5 + 16) = v3;
  *(v5 + 24) = 1;

  *v2 = v5;
  return result;
}

uint64_t MLDataValue.SequenceType.featureValue.getter(double a1)
{
  v2 = *v1;
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v91 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v91, v81);
  *(inited + 16) = v4;
  v96 = inited;
  *(inited + 24) = 1;
  v2;
  if (CMLSequence.size.getter())
  {
    v6 = 0;
    v90 = v2;
    while (2)
    {
      v7 = CMLSequence.value(at:)(v6);
      v8 = CMLFeatureValue.type.getter();
      v89 = v6;
      switch(v8)
      {
        case 0:
          v9 = *(v7 + 16);
          v7;
          *&countAndFlagsBits = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v9));
          v7, 2;
          object = 0;
          v11 = 0;
          goto LABEL_41;
        case 1:
          v55 = *(v7 + 16);
          v7;
          specialized handling<A, B>(_:_:)(v55);
          v99 = a1;
          v7, 2;
          a1 = v99;
          *&countAndFlagsBits = v99;
          v11 = 1;
          goto LABEL_40;
        case 2:
          v7;
          v50 = CMLFeatureValue.stringValue()();
          countAndFlagsBits = v50._countAndFlagsBits;
          if (v51)
          {
            v51;
            v7;
            BUG();
          }

          object = v50._object;
          v7, 2;
          v11 = 2;
          goto LABEL_41;
        case 3:
          v52 = *(v7 + 16);
          v7;
          v53 = specialized handling<A, B>(_:_:)(v52);
          if (!v53)
          {
            BUG();
          }

          *&v54 = COERCE_DOUBLE(swift_allocObject(v91, 25, 7));
          *(v54 + 16) = v53;
          countAndFlagsBits = v54;
          *(v54 + 24) = 1;
          v7, 2;
          v11 = 3;
          goto LABEL_40;
        case 4:
          v12 = *(v7 + 16);
          v7;
          v13 = specialized handling<A, B>(_:_:)(v12);
          if (!v13)
          {
            BUG();
          }

          v87 = v7;
          v88 = type metadata accessor for CMLDictionary();
          *&v14 = COERCE_DOUBLE(swift_initStackObject(v88, v82));
          *(v14 + 16) = v13;
          v92 = &_swiftEmptyDictionarySingleton;
          v99 = *&v14;
          swift_retain_n(v14, 2);
          v15 = 0;
          *&countAndFlagsBits = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
          while (1)
          {
            v16 = v99;
            if (v15 == CMLDictionary.size.getter())
            {
              break;
            }

            v17 = CMLDictionary.keyAndValue(at:)(v15);
            v19 = v18;
            v15 = specialized RandomAccessCollection<>.index(after:)(v15);
            v20 = CMLFeatureValue.stringValue()();
            if (v21)
            {
              v21;
              v19;
              v17;
            }

            else
            {
              v93 = v20;
              v19;
              switch(CMLFeatureValue.type.getter())
              {
                case 0u:
                  v22 = *(v19 + 16);
                  v19;
                  v97 = specialized handling<A, B>(_:_:)(v22);
                  JUMPOUT(0x13041FLL);
                case 1u:
                  v31 = *(v19 + 16);
                  v19;
                  specialized handling<A, B>(_:_:)(v31);
                  v97 = *&a1;
                  JUMPOUT(0x1305B2);
                case 2u:
                  v19;
                  v97 = CMLFeatureValue.stringValue()()._countAndFlagsBits;
                  if (!v26)
                  {
                    JUMPOUT(0x13050FLL);
                  }

                  v26;
                  v19;
                  BUG();
                case 3u:
                  v27 = *(v19 + 16);
                  v19;
                  v28 = specialized handling<A, B>(_:_:)(v27);
                  if (!v28)
                  {
                    BUG();
                  }

                  v29 = swift_allocObject(v91, 25, 7);
                  *(v29 + 16) = v28;
                  v97 = v29;
                  *(v29 + 24) = 1;
                  v17;
                  v19, 3;
                  v30 = 3;
                  v98 = 0;
                  break;
                case 4u:
                  v23 = *(v19 + 16);
                  v19;
                  v24 = specialized handling<A, B>(_:_:)(v23);
                  if (v24)
                  {
                    v25 = swift_allocObject(v88, 24, 7);
                    *(v25 + 16) = v24;
                    v85[0] = v25;
                    v85[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                    v85[2] = 0;
                    v85[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                    v85[4] = 0;
                    v85[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                    v85[6] = 0;
                    _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v85);
                    JUMPOUT(0x1304D3);
                  }

                  BUG();
                case 5u:
                  JUMPOUT(0x1305D5);
                case 6u:
                  v19;
                  MLDataValue.MultiArrayType.init(from:)(v19);
                  v97 = v94._countAndFlagsBits;
                  if (!v94._countAndFlagsBits)
                  {
                    BUG();
                  }

                  v17;
                  v19, 2;
                  v30 = 5;
                  v98 = 0;
                  break;
              }

              v94 = v93;
              LOBYTE(v95) = 2;
              v32 = countAndFlagsBits;
              specialized __RawDictionaryStorage.find<A>(_:)(*&v93, 2, a1);
              v35 = (v34 & 1) == 0;
              v36 = __OFADD__(v32[2], v35);
              v37 = v32[2] + v35;
              if (v36)
              {
                BUG();
              }

              v38 = v34;
              if (v32[3] < v37)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1u);
                v39 = v93;
                specialized __RawDictionaryStorage.find<A>(_:)(*&v93, 2, a1);
                LOBYTE(v41) = v41 & 1;
                v42 = v38;
                if ((v38 & 1) != v41)
                {
                  LOBYTE(v42) = v38 & 1;
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v39._object, v41, v42, v40);
                  BUG();
                }
              }

              v43 = v98;
              if (v38)
              {
                v77 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                swift_willThrow();
                v86 = v77;
                swift_errorRetain(v77);
                v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v86, v78, &type metadata for _MergeError, 0))
                {
                  v83 = 0;
                  v84 = 0xE000000000000000;
                  _StringGuts.grow(_:)(30);
                  v79._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                  v79._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v79);
                  _print_unlocked<A, B>(_:_:)(&v94, &v83, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                  v79._countAndFlagsBits = 39;
                  v79._object = 0xE100000000000000;
                  String.append(_:)(v79);
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v83, v84, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                  BUG();
                }

                v80 = v99;
                *&v99;
                outlined consume of MLDataValue(v97, v98, v30);
                outlined consume of MLDataValue(v94._countAndFlagsBits, v94._object, v95);
                *&v80;
                v86;
                swift_unexpectedError(v77, "Swift/Dictionary.swift", 22, 1, 489);
                BUG();
              }

              v44 = v92;
              v92[(v33 >> 6) + 8] |= 1 << v33;
              v45 = v44[6];
              v46 = 24 * v33;
              *(v45 + v46) = v93;
              *(v45 + v46 + 16) = 2;
              v47 = v44[7];
              *(v47 + v46) = v97;
              *(v47 + v46 + 8) = v43;
              *(v47 + v46 + 16) = v30;
              v48 = v44[2];
              v36 = __OFADD__(1, v48);
              v49 = v48 + 1;
              if (v36)
              {
                BUG();
              }

              countAndFlagsBits = v44;
              v44[2] = v49;
            }
          }

          v87, 2;
          *&v16, 3;
          v11 = 4;
          object = 0;
          goto LABEL_41;
        case 5:
          v7;
          v11 = 6;
          *&countAndFlagsBits = 0.0;
          goto LABEL_40;
        case 6:
          v7;
          MLDataValue.MultiArrayType.init(from:)(v7);
          countAndFlagsBits = v94._countAndFlagsBits;
          if (!v94._countAndFlagsBits)
          {
            BUG();
          }

          v7;
          v11 = 5;
LABEL_40:
          object = 0;
LABEL_41:
          if (v89 < CMLSequence.size.getter())
          {
            switch(v11)
            {
              case 0u:
                v56 = specialized handling<A, B>(_:_:)(countAndFlagsBits);
                if (!v56)
                {
                  BUG();
                }

                goto LABEL_49;
              case 1u:
                a1 = *&countAndFlagsBits;
                v56 = specialized handling<A, B>(_:_:)();
                if (!v56)
                {
                  BUG();
                }

LABEL_49:
                v66 = type metadata accessor for CMLFeatureValue();
                swift_allocObject(v66, 25, 7);
                v67 = CMLFeatureValue.init(rawValue:ownsValue:)(v56, 1);
                goto LABEL_53;
              case 2u:
                *&v99 = v11;
                type metadata accessor for CMLFeatureValue();
                swift_bridgeObjectRetain_n(object, 2);
                v61 = object;
                v62 = countAndFlagsBits;
                v59 = CMLFeatureValue.__allocating_init(_:)(countAndFlagsBits, v61);
                outlined consume of MLDataValue(v62, v61, 2);
                object = v61;
                v11 = LOBYTE(v99);
                goto LABEL_54;
              case 3u:
                *&v99 = v11;
                v63 = object;
                v64 = countAndFlagsBits;
                v94._countAndFlagsBits = countAndFlagsBits;
                swift_retain_n(countAndFlagsBits, 2);
                v59 = MLDataValue.SequenceType.featureValue.getter();
                v64;
                v65 = v64;
                object = v63;
                v11 = LOBYTE(v99);
                outlined consume of MLDataValue(v65, object, 3);
                goto LABEL_54;
              case 4u:
                *&v99 = v11;
                v57 = object;
                v58 = countAndFlagsBits;
                v94._countAndFlagsBits = countAndFlagsBits;
                swift_bridgeObjectRetain_n(countAndFlagsBits, 2);
                v59 = MLDataValue.DictionaryType.featureValue.getter();
                v94._countAndFlagsBits;
                v60 = v58;
                object = v57;
                v11 = LOBYTE(v99);
                outlined consume of MLDataValue(v60, object, 4);
                goto LABEL_54;
              case 5u:
                *&v99 = v11;
                v68 = object;
                v69 = countAndFlagsBits;
                v94._countAndFlagsBits = countAndFlagsBits;
                v70 = countAndFlagsBits;
                v70;
                v59 = MLDataValue.MultiArrayType.featureValue.getter();

                v71 = v69;
                object = v68;
                v11 = LOBYTE(v99);
                outlined consume of MLDataValue(v71, object, 5);
                goto LABEL_54;
              case 6u:
                type metadata accessor for CMLFeatureValue();
                v67 = CMLFeatureValue.__allocating_init()(0);
LABEL_53:
                v59 = v67;
LABEL_54:
                CMLSequence.append(_:)(v59);
                v59;
                v72 = v11;
                v6 = v89 + 1;
                outlined consume of MLDataValue(countAndFlagsBits, object, v72);
                v2 = v90;
                if (v6 == CMLSequence.size.getter())
                {
                  goto LABEL_57;
                }

                continue;
            }
          }

          BUG();
      }
    }
  }

LABEL_57:
  v2;
  type metadata accessor for CMLFeatureValue();
  v73 = v96;
  v96;
  v74 = CMLFeatureValue.__allocating_init(_:)(v73);
  swift_setDeallocating(v73);
  v75 = CMLFeatureValue.deinit();
  swift_deallocClassInstance(v75, 25, 7);
  return v74;
}

uint64_t Array<A>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v41 = a3;
  v5 = type metadata accessor for Optional(0, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v42 = *(a2 - 8);
  v10 = *(v42 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v43 = v39;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v44 = v39;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17 != 3)
  {
    outlined consume of MLDataValue(*a1, v16, v17);
    return 0;
  }

  v46 = v5;
  v49 = v16;
  v56 = 0;
  v54 = a2;
  v18 = Array.init()(a2);
  v53 = v18;

  v58 = v15;
  if (CMLSequence.size.getter())
  {
    v47 = v6;
    v57 = 0;
    v45 = v39;
    while (1)
    {
      v19 = v56;
      v20 = CMLSequence.value(at:)(v57);
      v56 = v19;
      if (v19)
      {
        swift_unexpectedError(v56, "CreateML/SequenceType.swift", 27, 1, 36);
        BUG();
      }

      MLDataValue.init(_:)(v20, a4);
      v21 = v50;
      v22 = v51;
      v23 = v52;
      outlined copy of MLDataValue(v50, v51, v52);
      v55 = v21;
      v24 = v21;
      v25 = v23;
      outlined consume of MLDataValue(v24, v22, v23);
      if (v57 >= CMLSequence.size.getter())
      {
        BUG();
      }

      v50 = v55;
      v51 = v22;
      v52 = v23;
      v26 = v41;
      v40 = *(v41 + 16);
      v48 = v22;
      outlined copy of MLDataValue(v55, v22, v25);
      v27 = v45;
      v28 = v26;
      v29 = v54;
      v40(&v50, v54, v28);
      if (__swift_getEnumTagSinglePayload(v27, 1, v29) == 1)
      {
        break;
      }

      ++v57;
      v30 = v44;
      v31 = v27;
      v32 = v42;
      (*(v42 + 32))(v44, v31, v29);
      v33 = v43;
      (*(v32 + 16))(v43, v30, v29);
      v34 = type metadata accessor for Array(0, v29);
      Array.append(_:)(v33, v34);
      outlined consume of MLDataValue(v55, v48, v25);
      v35 = v30;
      v36 = v57;
      (*(v32 + 8))(v35, v29);
      v37 = v58;
      if (v36 == CMLSequence.size.getter())
      {
        v18 = v53;
        goto LABEL_11;
      }
    }

    outlined consume of MLDataValue(v55, v48, v25);
    outlined consume of MLDataValue(v58, v49, 3);

    v53;
    (*(v47 + 8))(v27, v46);
    return 0;
  }

  v37 = v58;
LABEL_11:

  outlined consume of MLDataValue(v37, v49, 3);
  return v18;
}

{
  v41 = a3;
  v45 = type metadata accessor for Optional(0, a2);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v40 = v37;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v42 = v37;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v43 = v37;
  v14 = 0;
  v15 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  v51 = a1;
  v44 = v8;
  v49 = a2;
  v46 = v4;
  if (!v15)
  {
    BUG();
  }

  v16 = v15;
  v17 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v17, v38);
  *(inited + 16) = v16;
  *(inited + 24) = 1;
  v19 = Array.init()(v49);
  v50 = v19;

  if (CMLSequence.size.getter())
  {
    v20 = 0;
    while (1)
    {
      v21 = CMLSequence.value(at:)(v20);
      v48 = v14;
      if (v14)
      {
        swift_unexpectedError(v48, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v22 = v21;
      v23 = specialized RandomAccessCollection<>.index(after:)(v20);
      v24 = inited;
      v25 = v40;
      v47 = v22;
      v26 = v49;
      static MLDataValueConvertible.makeInstance(featureValue:)(v22, v49, v41, a4);
      v27 = v25;
      v28 = v26;
      if (__swift_getEnumTagSinglePayload(v27, 1, v26) == 1)
      {
        break;
      }

      v39 = v23;
      v29 = v43;
      v30 = v27;
      v31 = v44;
      (*(v44 + 32))(v43, v30, v26);
      v32 = v42;
      (*(v31 + 16))(v42, v29, v28);
      v33 = type metadata accessor for Array(0, v28);
      Array.append(_:)(v32, v33);

      v34 = v29;
      v20 = v39;
      (*(v31 + 8))(v34, v28);
      inited = v24;
      v35 = CMLSequence.size.getter();
      v14 = v48;
      if (v20 == v35)
      {
        inited;
        v19 = v50;
        goto LABEL_9;
      }
    }

    v24;

    v50;
    (*(v46 + 8))(v27, v45);
    return 0;
  }

  else
  {
    inited;
LABEL_9:
  }

  return v19;
}

uint64_t Array<A>.dataValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = v3;
  *&v13 = a1;
  v4 = type metadata accessor for Array(0, a2);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v4);
  v21 = WitnessTable;
  Sequence.lazy.getter(v4, WitnessTable);
  v20 = v15;
  v17 = v15;
  v6 = swift_allocObject(&unk_391800, 32, 7);
  *(v6 + 16) = a2;
  *(v6 + 24) = v19;
  v7 = type metadata accessor for LazySequence(0, v4, WitnessTable);
  v8 = swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v7);
  LazySequenceProtocol.map<A>(_:)(partial apply for closure #1 in Array<A>.dataValue.getter, v6, v7, &type metadata for MLDataValue, v8);
  v20;

  v15 = v13;
  v16 = v14;
  v9 = type metadata accessor for LazyMapSequence(0, v4, &type metadata for MLDataValue, v21);
  v10 = swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v9);
  MLDataValue.SequenceType.init<A>(_:)(&v15, v9, v10, *&a1);
  result = v17;
  v12 = v18;
  *v18 = v17;
  v12[1] = 0;
  *(v12 + 16) = 3;
  return result;
}

uint64_t Array<A>.featureSequence.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v3 = a1;
  v38 = 0;
  v37 = *(a2 - 8);
  v4 = *(v37 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v31 = &v28;
  v33 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = &v28;
  v10 = tc_v1_flex_list_create(0);
  if (!v10)
  {
    BUG();
  }

  v11 = v10;
  v12 = type metadata accessor for CMLSequence();
  v13 = swift_allocObject(v12, 25, 7);
  *(v13 + 16) = v11;
  v35 = v13;
  *(v13 + 24) = 1;
  a1;
  v14 = Array.startIndex.getter(a1, a2);
  after = v14;
  if (v14 != Array.endIndex.getter(a1, a2))
  {
    v36 = a1;
    v32 = &v28;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)(v14, IsNativeType, v3, a2);
      if (IsNativeType)
      {
        v17 = v37;
        (*(v37 + 16))(v9, v3 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v14, a2);
        v18 = v9;
      }

      else
      {
        v23 = _ArrayBuffer._getElementSlowPath(_:)(v14, v3, a2);
        if (v33 != 8)
        {
          BUG();
        }

        v24 = v23;
        v29 = v23;
        v25 = v9;
        v18 = v9;
        v26 = v37;
        (*(v37 + 16))(v25, &v29, a2);
        v27 = v24;
        v17 = v26;
        swift_unknownObjectRelease(v27);
      }

      Array.formIndex(after:)(&after);
      v19 = v31;
      (*(v17 + 32))(v31, v18, a2);
      v20 = MLDataValueConvertible.featureValue.getter(a2, v30);
      v21 = v38;
      CMLSequence.append(_:)(v20);
      v38 = v21;
      if (v21)
      {

        swift_unexpectedError(v38, "CreateML/SequenceType.swift", 27, 1, 145);
        BUG();
      }

      (*(v37 + 8))(v19, a2);

      v3 = v36;
      v22 = Array.endIndex.getter(v36, a2);
      v14 = after;
      v9 = v32;
    }

    while (after != v22);
  }

  v3;
  return v35;
}