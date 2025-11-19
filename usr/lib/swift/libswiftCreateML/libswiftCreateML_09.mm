uint64_t _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSf_Tt3g5(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a1;
  *v3 = a2;
  *(v3 + 16) = a3 & 1;
  v4 = *(a2 + 16);
  v34 = v3;
  if (v4)
  {
    v35 = a3;
    a2;
    v33 = a2;
    v5 = (a2 + 56);
    v36 = _swiftEmptyArrayStorage;
    v6 = 0;
    do
    {
      v31 = v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      v30 = *(v5 - 2);
      v30;
      v9 = v8;
      v10 = v7;
      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v7, v9);
      v29 = v6;
      if (!swift_isUniquelyReferenced_nonNull_native(v36))
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v11 = v36[2];
      if (v36[3] >> 1 <= v11)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2uLL, v11 + 1, 1, v36);
      }

      v12 = v36;
      v36[2] = v11 + 1;
      v13 = v29;
      v12[v11 + 4] = v29;
      v14 = v13;
      v15 = ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(v7, v9);
      v30;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v10, v9);
      v16 = __OFADD__(v15, v14);
      v6 = v15 + v14;
      if (v16)
      {
        BUG();
      }

      v5 += 32;
      v4 = v31 - 1;
    }

    while (v31 != 1);
    v33;
    *(v34 + 8) = v36;
    if ((v35 & 1) == 0)
    {
      v17 = 0;
      v18 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    *(v3 + 8) = _swiftEmptyArrayStorage;
    v6 = 0;
    v18 = 0;
    v17 = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = v6;
  v16 = __OFADD__(1, v6++);
  v17 = 1;
  if (v16)
  {
    BUG();
  }

LABEL_13:
  LODWORD(v28[0]) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
  v20 = *(v19 + 44) + v34;
  v21 = lazy protocol witness table accessor for type Float and conformance Float();
  v22 = v6;
  v23 = v32;
  result = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v32, v22, 0, v28, &type metadata for Float, v21);
  if (v17)
  {
    if (v23 < 0)
    {
      BUG();
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        v26 = specialized DenseMatrix.subscript.modify(v28, i, v18);
        *v27 = 1065353216;
        result = (v26)(v28, 0);
      }
    }
  }

  return result;
}

uint64_t _s8CreateML20FeatureMatrixBuilderV8rowCount18featureDescriptors12includesBiasACyxGSi_SayAA16ColumnDescriptorVGSbtcfCSd_Tt3g5(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a1;
  v4 = v3;
  *v3 = a2;
  *(v3 + 16) = a3 & 1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v35 = a3;
    v33 = v3;
    a2;
    v34 = a2;
    v6 = (a2 + 56);
    v36 = _swiftEmptyArrayStorage;
    v7 = 0;
    do
    {
      v31 = v5;
      v8 = *(v6 - 1);
      v9 = *v6;
      v30 = *(v6 - 2);
      v30;
      v10 = v9;
      v11 = v8;
      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v8, v10);
      v29 = v7;
      if (!swift_isUniquelyReferenced_nonNull_native(v36))
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v12 = v36[2];
      if (v36[3] >> 1 <= v12)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2uLL, v12 + 1, 1, v36);
      }

      v13 = v36;
      v36[2] = v12 + 1;
      v14 = v29;
      v13[v12 + 4] = v29;
      v15 = v14;
      v16 = ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(v8, v10);
      v30;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v11, v10);
      v17 = __OFADD__(v16, v15);
      v7 = v16 + v15;
      if (v17)
      {
        BUG();
      }

      v6 += 32;
      v5 = v31 - 1;
    }

    while (v31 != 1);
    v34;
    v4 = v33;
    *(v33 + 8) = v36;
    if ((v35 & 1) == 0)
    {
      v18 = 0;
      v19 = v7;
      goto LABEL_13;
    }
  }

  else
  {
    *(v3 + 8) = _swiftEmptyArrayStorage;
    v7 = 0;
    v19 = 0;
    v18 = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v19 = v7;
  v17 = __OFADD__(1, v7++);
  v18 = 1;
  if (v17)
  {
    BUG();
  }

LABEL_13:
  v28[0] = 0;
  v20 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44) + v4;
  v21 = lazy protocol witness table accessor for type Double and conformance Double();
  v22 = v7;
  v23 = v32;
  result = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v32, v22, 0, v28, &type metadata for Double, v21);
  if (v18)
  {
    if (v23 < 0)
    {
      BUG();
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        v26 = specialized DenseMatrix.subscript.modify(v28, i, v19);
        *v27 = 0x3FF0000000000000;
        result = (v26)(v28, 0);
      }
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger(from:column:)(__int128 *a1, uint64_t a2)
{
  v81 = v2;
  v78 = v3;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v7 = *(v72 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v10 = *(v69 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v22 = *(v58 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v82 = &v57;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v79 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    v30 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v26 + 8))(&v57, v25, v30);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v35 = v32;
    v36 = v59;
    v37 = v58;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v38 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v39 = v80;
  if (v38)
  {
    v40 = v62;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v40, v39);
    v35 = v40;
    v36 = v61;
    v37 = v60;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v82 = a1;
  v41 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v42 = v65;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v39);
    v35 = v42;
    v36 = v64;
    v37 = v63;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Int64))
  {
    v43 = v68;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v39, &demangling cache variable for type metadata for Column<Int64>);
    v35 = v43;
    v36 = v67;
    v37 = v66;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Float))
  {
    v44 = v71;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v39);
    v35 = v44;
    v36 = v70;
    v37 = v69;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Double))
  {
    v45 = v74;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v45, v39);
    v35 = v45;
    v36 = v73;
    v37 = v72;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v46 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v41, v46))
  {
    v47 = v77;
    v34 = AnyColumn.assumingType<A>(_:)(v46, v46);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v47, v80, *&v34);
    v35 = v47;
    v36 = v76;
    v37 = v75;
    return (*(v37 + 8))(v35, v36, v34);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v48._object = "sessionDirectory" + 0x8000000000000000;
  v48._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v48);
  v49 = AnyColumn.name.getter();
  v51 = v50;
  v48._countAndFlagsBits = v49;
  v48._object = v50;
  String.append(_:)(v48);
  v51;
  v48._countAndFlagsBits = 0x6720747562202C27;
  v48._object = 0xEB0000000020746FLL;
  String.append(_:)(v48);
  v52 = AnyColumn.wrappedElementType.getter();
  v53 = _typeName(_:qualified:)(v52, 0);
  v55 = v54;
  v48._countAndFlagsBits = v53;
  v48._object = v54;
  String.append(_:)(v48);
  v55;
  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v80 = v57;
  v48._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v48._object, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v48._object);
}

{
  v81 = v2;
  v78 = v3;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v7 = *(v72 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v10 = *(v69 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v22 = *(v58 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v82 = &v57;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v79 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    v30 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v26 + 8))(&v57, v25, v30);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v35 = v32;
    v36 = v59;
    v37 = v58;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v38 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v39 = v80;
  if (v38)
  {
    v40 = v62;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v40, v39);
    v35 = v40;
    v36 = v61;
    v37 = v60;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v82 = a1;
  v41 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v42 = v65;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v39);
    v35 = v42;
    v36 = v64;
    v37 = v63;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Int64))
  {
    v43 = v68;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v39, &demangling cache variable for type metadata for Column<Int64>);
    v35 = v43;
    v36 = v67;
    v37 = v66;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Float))
  {
    v44 = v71;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v39);
    v35 = v44;
    v36 = v70;
    v37 = v69;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Double))
  {
    v45 = v74;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v45, v39);
    v35 = v45;
    v36 = v73;
    v37 = v72;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v46 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v41, v46))
  {
    v47 = v77;
    v34 = AnyColumn.assumingType<A>(_:)(v46, v46);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v47, v80, *&v34);
    v35 = v47;
    v36 = v76;
    v37 = v75;
    return (*(v37 + 8))(v35, v36, v34);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v48._object = "sessionDirectory" + 0x8000000000000000;
  v48._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v48);
  v49 = AnyColumn.name.getter();
  v51 = v50;
  v48._countAndFlagsBits = v49;
  v48._object = v50;
  String.append(_:)(v48);
  v51;
  v48._countAndFlagsBits = 0x6720747562202C27;
  v48._object = 0xEB0000000020746FLL;
  String.append(_:)(v48);
  v52 = AnyColumn.wrappedElementType.getter();
  v53 = _typeName(_:qualified:)(v52, 0);
  v55 = v54;
  v48._countAndFlagsBits = v53;
  v48._object = v54;
  String.append(_:)(v48);
  v55;
  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v80 = v57;
  v48._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v48._object, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v48._object);
}

uint64_t specialized FeatureMatrixBuilder.fillCategorical(from:categories:column:)(uint64_t a1, void *a2, uint64_t a3)
{
  v154 = v3;
  v163 = v4;
  v162 = a3;
  v169 = a2;
  v167 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v159 = *(v167 - 1);
  v5 = *(v159 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v158 = &v148;
  v155 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v157 = *(v155 - 8);
  v8 = *(v157 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v156 = &v148;
  v164 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v153 = *(v164 - 8);
  v11 = *(v153 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v161 = &v148;
  v160 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v152 = *(v160 - 8);
  v14 = *(v152 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v151 = &v148;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v148 = *(v17 - 8);
  v18 = *(v148 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v21, &type metadata for String))
  {
    v22 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v23 = Column.count.getter(v17);
    v164 = v23;
    if (v23 < 0)
    {
      BUG();
    }

    v167 = &v148;
    v166 = v17;
    if (v23)
    {
      v165 = v169[2];
      v169 += 5;
      v172 = 0;
      while (!v165)
      {
LABEL_15:
        v172 = (v172 + 1);
        if (v172 == v164)
        {
          goto LABEL_16;
        }
      }

      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v168 = (v163 + *(v24 + 44));
      v25 = v169;
      v26 = 0;
      while (1)
      {
        v27 = v26 + v162;
        if (__OFADD__(v26, v162))
        {
          BUG();
        }

        v171 = *(v25 - 1);
        *&v170 = *v25;
        v170;
        Column.subscript.getter(v172, v166);
        v28 = *(&v149[0] + 1);
        if (!*(&v149[0] + 1))
        {
          break;
        }

        if (*&v149[0] ^ v171 | v170 ^ *(&v149[0] + 1))
        {
          LOBYTE(v171) = _stringCompareWithSmolCheck(_:_:expecting:)(v171, v170, *&v149[0], *(&v149[0] + 1), 0);
          v170;
          v28;
          v29 = 1065353216;
          if ((v171 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v170;
          v28;
          v29 = 1065353216;
        }

LABEL_14:
        LODWORD(v170) = v29;
        v26 = (v26 + 1);
        v30 = specialized DenseMatrix.subscript.modify(v149, v172, v27);
        *&v22 = v170;
        *v31 = v170;
        (v30)(v149, 0);
        v25 += 2;
        if (v165 == v26)
        {
          goto LABEL_15;
        }
      }

      v170;
LABEL_13:
      v29 = 0;
      goto LABEL_14;
    }

LABEL_16:
    v32 = v167;
    v33 = v166;
    v34 = v148;
    return (*(v34 + 8))(v32, v33, v22);
  }

  v35 = AnyColumn.wrappedElementType.getter();
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (swift_dynamicCastMetatype(v35, v36))
  {
    v37 = v151;
    v22 = AnyColumn.assumingType<A>(_:)(v36, v36);
    v38 = v160;
    v161 = Column.count.getter(v160);
    if (v161 < 0)
    {
      BUG();
    }

    v34 = v152;
    if (!v161)
    {
LABEL_54:
      v32 = v37;
      v33 = v38;
      return (*(v34 + 8))(v32, v33, v22);
    }

    v168 = v169[2];
    v169 += 4;
    v39 = 0;
    while (1)
    {
      v167 = v39;
      Column.subscript.getter(v39, v38);
      v40 = *&v149[0];
      if (!*&v149[0])
      {
        v40 = _swiftEmptyArrayStorage;
      }

      v41 = Set.init(minimumCapacity:)(v40[2], &type metadata for String, &protocol witness table for String);
      v150 = v41;
      v42 = v40[2];
      if (v42)
      {
        *&v170 = v40;
        v43 = v40 + 5;
        do
        {
          v44 = *(v43 - 1);
          v45 = *v43;
          *v43;
          specialized Set._Variant.insert(_:)(v149, v44, v45);
          *(&v149[0] + 1);
          v43 += 2;
          --v42;
        }

        while (v42);
        v170;
        v46 = v150;
      }

      else
      {
        v47 = v41;
        v40;
        v46 = v47;
      }

      v48 = v167;
      if (v168)
      {
        break;
      }

LABEL_53:
      v78 = (v48 + 1);
      v46;
      v79 = v78 == v161;
      v39 = v78;
      v38 = v160;
      v34 = v152;
      v37 = v151;
      if (v79)
      {
        goto LABEL_54;
      }
    }

    *&v170 = v46;
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
    v46 = v170;
    v166 = v163 + *(v49 + 44);
    v50 = 0;
    while (1)
    {
      v51 = v50 + v162;
      if (__OFADD__(v50, v162))
      {
        BUG();
      }

      if (*(v46 + 16))
      {
        break;
      }

      LODWORD(v172) = 0;
LABEL_49:
      v50 = (v50 + 1);
      v76 = specialized DenseMatrix.subscript.modify(v149, v48, v51);
      *&v22 = v172;
      *v77 = v172;
      (v76)(v149, 0);
      v46 = v170;
      if (v50 == v168)
      {
        goto LABEL_53;
      }
    }

    v165 = v50;
    v52 = 2 * v50;
    v53 = v169[2 * v50];
    v54 = v169[v52 + 1];
    Hasher.init(_seed:)(*(v170 + 40));
    v54;
    v171 = v53;
    v172 = v54;
    String.hash(into:)(v149, v53);
    v55 = Hasher._finalize()();
    v56 = ~(-1 << *(v170 + 32));
    v57 = v56 & v55;
    v58 = *(v170 + 8 * ((v56 & v55) >> 6) + 56);
    if (_bittest64(&v58, v57))
    {
      v59 = *(v170 + 48);
      v60 = *(v59 + 16 * v57);
      v164 = v59;
      v61 = *(v59 + 16 * v57 + 8);
      v62 = v172;
      v50 = v165;
      if (v60 == v171)
      {
        v63 = 1065353216;
        if (v61 == v172)
        {
          goto LABEL_48;
        }
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)(v60, v61, v171, v172, 0);
      v62 = v172;
      v63 = 1065353216;
      if (v64)
      {
        goto LABEL_48;
      }

      v65 = v56 & (v57 + 1);
      v66 = *(v170 + 8 * (v65 >> 6) + 56);
      if (_bittest64(&v66, v65))
      {
        v67 = *(v164 + 16 * v65);
        v68 = *(v164 + 16 * v65 + 8);
        if (v67 == v171)
        {
          v63 = 1065353216;
          if (v68 == v172)
          {
            goto LABEL_48;
          }
        }

        v69 = _stringCompareWithSmolCheck(_:_:expecting:)(v67, v68, v171, v172, 0);
        v70 = v171;
        v62 = v172;
        v63 = 1065353216;
        if (v69)
        {
          goto LABEL_48;
        }

        v71 = v56 & (v65 + 1);
        v72 = *(v170 + 8 * (v71 >> 6) + 56);
        if (_bittest64(&v72, v71))
        {
          while (1)
          {
            v73 = *(v164 + 16 * v71);
            v74 = *(v164 + 16 * v71 + 8);
            if (v73 == v70 && v74 == v62)
            {
              v63 = 1065353216;
              goto LABEL_48;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v73, v74, v70, v62, 0))
            {
              break;
            }

            v71 = v56 & (v71 + 1);
            v75 = *(v170 + 8 * (v71 >> 6) + 56);
            v62 = v172;
            v70 = v171;
            if (!_bittest64(&v75, v71))
            {
              goto LABEL_45;
            }
          }

          v63 = 1065353216;
          v62 = v172;
          goto LABEL_48;
        }
      }

LABEL_45:
      v63 = 0;
    }

    else
    {
      v63 = 0;
      v62 = v172;
      v50 = v165;
    }

LABEL_48:
    LODWORD(v172) = v63;
    v62;
    v48 = v167;
    goto LABEL_49;
  }

  v81 = AnyColumn.wrappedElementType.getter();
  v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
  if (swift_dynamicCastMetatype(v81, v82))
  {
    v83 = v161;
    v84 = AnyColumn.assumingType<A>(_:)(v82, v82);
    v85 = v164;
    v86 = Column.count.getter(v164);
    v160 = v86;
    if (v86 < 0)
    {
      BUG();
    }

    v87 = v153;
    if (v86)
    {
      v166 = v169[2];
      v169 += 5;
      v88 = 0;
      do
      {
        v168 = v88;
        Column.subscript.getter(v88, v85);
        v89 = *&v149[0];
        if (!*&v149[0])
        {
          v89 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
        }

        if (v166)
        {
          v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v167 = (v163 + *(v90 + 44));
          v91 = v169;
          v92 = 0;
          v172 = v89;
          do
          {
            v93 = v92 + v162;
            if (__OFADD__(v92, v162))
            {
              BUG();
            }

            if (*(v89 + 16))
            {
              v94 = v91;
              v95 = *v91;
              v171 = v94;
              *&v170 = *(v94 - 8);
              v95;
              v96 = v170;
              *&v170 = v95;
              v97 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v95);
              v98 = 0;
              if (v99)
              {
                v98 = *(v172[7] + 8 * v97);
              }

              v165 = v98;
              v170;
              v100 = *&v165;
              v101 = v168;
              v91 = v171;
            }

            else
            {
              v100 = 0.0;
              v101 = v168;
            }

            ++v92;
            v102 = v100;
            *&v170 = v102;
            v103 = specialized DenseMatrix.subscript.modify(v149, v101, v93);
            *&v84 = v170;
            *v104 = v170;
            (v103)(v149, 0);
            v91 += 2;
            v89 = v172;
          }

          while (v166 != v92);
          v172;
          v87 = v153;
          v85 = v164;
          v83 = v161;
        }

        else
        {
          v89;
        }

        v88 = v168 + 1;
      }

      while ((v168 + 1) != v160);
    }

    return (*(v87 + 8))(v83, v85, v84);
  }

  v105 = AnyColumn.wrappedElementType.getter();
  v106 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
  if (swift_dynamicCastMetatype(v105, v106))
  {
    v83 = v156;
    v84 = AnyColumn.assumingType<A>(_:)(v106, v106);
    v85 = v155;
    v107 = Column.count.getter(v155);
    v164 = v107;
    if (v107 < 0)
    {
      BUG();
    }

    v87 = v157;
    if (v107)
    {
      v166 = v169[2];
      v169 += 5;
      v108 = 0;
      do
      {
        v168 = v108;
        Column.subscript.getter(v108, v85);
        v109 = *&v149[0];
        if (!*&v149[0])
        {
          v109 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
        }

        if (v166)
        {
          v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v167 = (v163 + *(v110 + 44));
          v111 = v169;
          v112 = 0;
          v172 = v109;
          do
          {
            v113 = v112 + v162;
            if (__OFADD__(v112, v162))
            {
              BUG();
            }

            if (*(v109 + 16))
            {
              v114 = v111;
              v115 = *v111;
              v165 = v114;
              *&v170 = *(v114 - 1);
              v115;
              v171 = v115;
              v116 = specialized __RawDictionaryStorage.find<A>(_:)(v170, v115);
              v117 = 0;
              if (v118)
              {
                v117 = *(v172[7] + 4 * v116);
              }

              LODWORD(v170) = v117;
              v171;
              v111 = v165;
            }

            else
            {
              LODWORD(v170) = 0;
            }

            ++v112;
            v119 = specialized DenseMatrix.subscript.modify(v149, v168, v113);
            *&v84 = v170;
            *v120 = v170;
            (v119)(v149, 0);
            v111 += 2;
            v109 = v172;
          }

          while (v166 != v112);
          v172;
          v87 = v157;
          v85 = v155;
          v83 = v156;
        }

        else
        {
          v109;
        }

        v108 = v168 + 1;
      }

      while ((v168 + 1) != v164);
    }

    return (*(v87 + 8))(v83, v85, v84);
  }

  v121 = AnyColumn.wrappedElementType.getter();
  v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (swift_dynamicCastMetatype(v121, v122))
  {
    v83 = v158;
    v84 = AnyColumn.assumingType<A>(_:)(v122, v122);
    v85 = v167;
    v123 = Column.count.getter(v167);
    v164 = v123;
    if (v123 < 0)
    {
      BUG();
    }

    v87 = v159;
    if (v123)
    {
      v165 = v169[2];
      v169 += 5;
      v124 = 0;
      do
      {
        v171 = v124;
        Column.subscript.getter(v124, v85);
        v125 = *&v149[0];
        if (!*&v149[0])
        {
          v125 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
        }

        if (v165)
        {
          v126 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v166 = v163 + *(v126 + 44);
          v127 = v169;
          v128 = 0;
          v168 = v125;
          do
          {
            v129 = v128 + v162;
            if (__OFADD__(v128, v162))
            {
              BUG();
            }

            if (*(v125 + 16))
            {
              v130 = v127;
              v131 = *v127;
              v172 = v130;
              *&v170 = *(v130 - 8);
              v131;
              v132 = v170;
              *&v170 = v131;
              v133 = specialized __RawDictionaryStorage.find<A>(_:)(v132, v131);
              if (v134)
              {
                v135 = *(*(v125 + 56) + 8 * v133);
              }

              else
              {
                LODWORD(v135) = 0;
              }

              v170;
              v127 = v172;
            }

            else
            {
              LODWORD(v135) = 0;
            }

            v128 = (v128 + 1);
            *&v170 = v135;
            v136 = specialized DenseMatrix.subscript.modify(v149, v171, v129);
            *&v84 = v170;
            *v137 = v170;
            (v136)(v149, 0);
            v127 += 2;
            v125 = v168;
          }

          while (v165 != v128);
          v168;
          v87 = v159;
          v85 = v167;
          v83 = v158;
        }

        else
        {
          v125;
        }

        v124 = v171 + 1;
      }

      while (v171 + 1 != v164);
    }

    return (*(v87 + 8))(v83, v85, v84);
  }

  *&v149[0] = 0;
  *(&v149[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v138._object = "', but got shape " + 0x8000000000000000;
  v138._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v138);
  v139 = AnyColumn.name.getter();
  v141 = v140;
  v138._countAndFlagsBits = v139;
  v138._object = v140;
  String.append(_:)(v138);
  v141;
  v138._countAndFlagsBits = 0x6720747562202C27;
  v138._object = 0xEB0000000020746FLL;
  String.append(_:)(v138);
  v142 = AnyColumn.wrappedElementType.getter();
  v143 = _typeName(_:qualified:)(v142, 0);
  v145 = v144;
  v138._countAndFlagsBits = v143;
  v138._object = v144;
  String.append(_:)(v138);
  v145;
  v138._countAndFlagsBits = 46;
  v138._object = 0xE100000000000000;
  String.append(_:)(v138);
  v170 = v149[0];
  v138._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v146 = swift_allocError(&type metadata for MLCreateError, v138._object, 0, 0);
  *v147 = v170;
  *(v147 + 16) = 0;
  *(v147 + 32) = 0;
  *(v147 + 48) = 0;
  v154 = v146;
  return swift_willThrow(&type metadata for MLCreateError, v138._object);
}

{
  v153 = v3;
  v162 = v4;
  v161 = a3;
  v168 = a2;
  v166 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v158 = *(v166 - 1);
  v5 = *(v158 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v157 = &v147;
  v154 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v156 = *(v154 - 8);
  v8 = *(v156 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v155 = &v147;
  v163 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v152 = *(v163 - 8);
  v11 = *(v152 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v160 = &v147;
  v159 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v151 = *(v159 - 8);
  v14 = *(v151 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v150 = &v147;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v147 = *(v17 - 8);
  v18 = *(v147 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v21, &type metadata for String))
  {
    v22 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v23 = Column.count.getter(v17);
    v163 = v23;
    if (v23 < 0)
    {
      BUG();
    }

    v166 = &v147;
    v165 = v17;
    if (v23)
    {
      v164 = v168[2];
      v168 += 5;
      v171 = 0;
      while (!v164)
      {
LABEL_15:
        v171 = (v171 + 1);
        if (v171 == v163)
        {
          goto LABEL_16;
        }
      }

      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v167 = (v162 + *(v24 + 44));
      v25 = v168;
      v26 = 0;
      while (1)
      {
        v27 = v26 + v161;
        if (__OFADD__(v26, v161))
        {
          BUG();
        }

        v170 = *(v25 - 1);
        *&v169 = *v25;
        v169;
        Column.subscript.getter(v171, v165);
        v28 = *(&v148[0] + 1);
        if (!*(&v148[0] + 1))
        {
          break;
        }

        if (*&v148[0] ^ v170 | v169 ^ *(&v148[0] + 1))
        {
          LOBYTE(v170) = _stringCompareWithSmolCheck(_:_:expecting:)(v170, v169, *&v148[0], *(&v148[0] + 1), 0);
          v169;
          v28;
          v29 = 0x3FF0000000000000;
          if ((v170 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v169;
          v28;
          v29 = 0x3FF0000000000000;
        }

LABEL_14:
        *&v169 = v29;
        v26 = (v26 + 1);
        v30 = specialized DenseMatrix.subscript.modify(v148, v171, v27);
        v22 = *&v169;
        *v31 = v169;
        (v30)(v148, 0);
        v25 += 2;
        if (v164 == v26)
        {
          goto LABEL_15;
        }
      }

      v169;
LABEL_13:
      v29 = 0;
      goto LABEL_14;
    }

LABEL_16:
    v32 = v166;
    v33 = v165;
    v34 = v147;
    return (*(v34 + 8))(v32, v33, v22);
  }

  v35 = AnyColumn.wrappedElementType.getter();
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (swift_dynamicCastMetatype(v35, v36))
  {
    v37 = v150;
    v22 = AnyColumn.assumingType<A>(_:)(v36, v36);
    v38 = v159;
    v160 = Column.count.getter(v159);
    if (v160 < 0)
    {
      BUG();
    }

    v34 = v151;
    if (!v160)
    {
LABEL_54:
      v32 = v37;
      v33 = v38;
      return (*(v34 + 8))(v32, v33, v22);
    }

    v167 = v168[2];
    v168 += 4;
    v39 = 0;
    while (1)
    {
      v166 = v39;
      Column.subscript.getter(v39, v38);
      v40 = *&v148[0];
      if (!*&v148[0])
      {
        v40 = _swiftEmptyArrayStorage;
      }

      v41 = Set.init(minimumCapacity:)(v40[2], &type metadata for String, &protocol witness table for String);
      v149 = v41;
      v42 = v40[2];
      if (v42)
      {
        *&v169 = v40;
        v43 = v40 + 5;
        do
        {
          v44 = *(v43 - 1);
          v45 = *v43;
          *v43;
          specialized Set._Variant.insert(_:)(v148, v44, v45);
          *(&v148[0] + 1);
          v43 += 2;
          --v42;
        }

        while (v42);
        v169;
        v46 = v149;
      }

      else
      {
        v47 = v41;
        v40;
        v46 = v47;
      }

      v48 = v166;
      if (v167)
      {
        break;
      }

LABEL_53:
      v78 = (v48 + 1);
      v46;
      v79 = v78 == v160;
      v39 = v78;
      v38 = v159;
      v34 = v151;
      v37 = v150;
      if (v79)
      {
        goto LABEL_54;
      }
    }

    *&v169 = v46;
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
    v46 = v169;
    v165 = v162 + *(v49 + 44);
    v50 = 0;
    while (1)
    {
      v51 = v50 + v161;
      if (__OFADD__(v50, v161))
      {
        BUG();
      }

      if (*(v46 + 16))
      {
        break;
      }

      v171 = 0;
LABEL_49:
      v50 = (v50 + 1);
      v76 = specialized DenseMatrix.subscript.modify(v148, v48, v51);
      v22 = *&v171;
      *v77 = v171;
      (v76)(v148, 0);
      v46 = v169;
      if (v50 == v167)
      {
        goto LABEL_53;
      }
    }

    v164 = v50;
    v52 = 2 * v50;
    v53 = v168[2 * v50];
    v54 = v168[v52 + 1];
    Hasher.init(_seed:)(*(v169 + 40));
    v54;
    v170 = v53;
    v171 = v54;
    String.hash(into:)(v148, v53);
    v55 = Hasher._finalize()();
    v56 = ~(-1 << *(v169 + 32));
    v57 = v56 & v55;
    v58 = *(v169 + 8 * ((v56 & v55) >> 6) + 56);
    if (_bittest64(&v58, v57))
    {
      v59 = *(v169 + 48);
      v60 = *(v59 + 16 * v57);
      v163 = v59;
      v61 = *(v59 + 16 * v57 + 8);
      v62 = v171;
      v50 = v164;
      if (v60 == v170)
      {
        v63 = 0x3FF0000000000000;
        if (v61 == v171)
        {
          goto LABEL_48;
        }
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)(v60, v61, v170, v171, 0);
      v62 = v171;
      v63 = 0x3FF0000000000000;
      if (v64)
      {
        goto LABEL_48;
      }

      v65 = v56 & (v57 + 1);
      v66 = *(v169 + 8 * (v65 >> 6) + 56);
      if (_bittest64(&v66, v65))
      {
        v67 = *(v163 + 16 * v65);
        v68 = *(v163 + 16 * v65 + 8);
        if (v67 == v170)
        {
          v63 = 0x3FF0000000000000;
          if (v68 == v171)
          {
            goto LABEL_48;
          }
        }

        v69 = _stringCompareWithSmolCheck(_:_:expecting:)(v67, v68, v170, v171, 0);
        v70 = v170;
        v62 = v171;
        v63 = 0x3FF0000000000000;
        if (v69)
        {
          goto LABEL_48;
        }

        v71 = v56 & (v65 + 1);
        v72 = *(v169 + 8 * (v71 >> 6) + 56);
        if (_bittest64(&v72, v71))
        {
          while (1)
          {
            v73 = *(v163 + 16 * v71);
            v74 = *(v163 + 16 * v71 + 8);
            if (v73 == v70 && v74 == v62)
            {
              v63 = 0x3FF0000000000000;
              goto LABEL_48;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v73, v74, v70, v62, 0))
            {
              break;
            }

            v71 = v56 & (v71 + 1);
            v75 = *(v169 + 8 * (v71 >> 6) + 56);
            v62 = v171;
            v70 = v170;
            if (!_bittest64(&v75, v71))
            {
              goto LABEL_45;
            }
          }

          v63 = 0x3FF0000000000000;
          v62 = v171;
          goto LABEL_48;
        }
      }

LABEL_45:
      v63 = 0;
    }

    else
    {
      v63 = 0;
      v62 = v171;
      v50 = v164;
    }

LABEL_48:
    v171 = v63;
    v62;
    v48 = v166;
    goto LABEL_49;
  }

  v81 = AnyColumn.wrappedElementType.getter();
  v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
  if (swift_dynamicCastMetatype(v81, v82))
  {
    v83 = v160;
    v84 = AnyColumn.assumingType<A>(_:)(v82, v82);
    v85 = v163;
    v86 = Column.count.getter(v163);
    v159 = v86;
    if (v86 < 0)
    {
      BUG();
    }

    v87 = v152;
    if (v86)
    {
      v165 = v168[2];
      v168 += 5;
      v88 = 0;
      do
      {
        v167 = v88;
        Column.subscript.getter(v88, v85);
        v89 = *&v148[0];
        if (!*&v148[0])
        {
          v89 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
        }

        if (v165)
        {
          v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v166 = (v162 + *(v90 + 44));
          v91 = v168;
          v92 = 0;
          v171 = v89;
          do
          {
            v93 = v92 + v161;
            if (__OFADD__(v92, v161))
            {
              BUG();
            }

            if (*(v89 + 16))
            {
              v94 = v91;
              v95 = *v91;
              v164 = v94;
              *&v169 = *(v94 - 1);
              v95;
              v170 = v95;
              v96 = specialized __RawDictionaryStorage.find<A>(_:)(v169, v95);
              v97 = 0;
              if (v98)
              {
                v97 = *(v171[7] + 8 * v96);
              }

              *&v169 = v97;
              v170;
              v99 = v167;
              v91 = v164;
            }

            else
            {
              *&v169 = 0;
              v99 = v167;
            }

            ++v92;
            v100 = specialized DenseMatrix.subscript.modify(v148, v99, v93);
            v84 = *&v169;
            *v101 = v169;
            (v100)(v148, 0);
            v91 += 2;
            v89 = v171;
          }

          while (v165 != v92);
          v171;
          v87 = v152;
          v85 = v163;
          v83 = v160;
        }

        else
        {
          v89;
        }

        v88 = v167 + 1;
      }

      while ((v167 + 1) != v159);
    }

    return (*(v87 + 8))(v83, v85, v84);
  }

  v102 = AnyColumn.wrappedElementType.getter();
  v103 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
  if (swift_dynamicCastMetatype(v102, v103))
  {
    v83 = v155;
    v84 = AnyColumn.assumingType<A>(_:)(v103, v103);
    v85 = v154;
    v104 = Column.count.getter(v154);
    v163 = v104;
    if (v104 < 0)
    {
      BUG();
    }

    v87 = v156;
    if (v104)
    {
      v165 = v168[2];
      v168 += 5;
      v105 = 0;
      do
      {
        v167 = v105;
        Column.subscript.getter(v105, v85);
        v106 = *&v148[0];
        if (!*&v148[0])
        {
          v106 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
        }

        if (v165)
        {
          v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v166 = (v162 + *(v107 + 44));
          v108 = v168;
          v109 = 0;
          v171 = v106;
          do
          {
            v110 = v109 + v161;
            if (__OFADD__(v109, v161))
            {
              BUG();
            }

            if (*(v106 + 16))
            {
              v111 = v108;
              v112 = *v108;
              v170 = v111;
              *&v169 = *(v111 - 8);
              v112;
              v113 = v169;
              *&v169 = v112;
              v114 = specialized __RawDictionaryStorage.find<A>(_:)(v113, v112);
              v115 = 0;
              if (v116)
              {
                v115 = *(v171[7] + 4 * v114);
              }

              LODWORD(v164) = v115;
              v169;
              v117 = *&v164;
              v108 = v170;
            }

            else
            {
              v117 = 0.0;
            }

            ++v109;
            *&v169 = v117;
            v118 = specialized DenseMatrix.subscript.modify(v148, v167, v110);
            v84 = *&v169;
            *v119 = v169;
            (v118)(v148, 0);
            v108 += 2;
            v106 = v171;
          }

          while (v165 != v109);
          v171;
          v87 = v156;
          v85 = v154;
          v83 = v155;
        }

        else
        {
          v106;
        }

        v105 = v167 + 1;
      }

      while ((v167 + 1) != v163);
    }

    return (*(v87 + 8))(v83, v85, v84);
  }

  v120 = AnyColumn.wrappedElementType.getter();
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (swift_dynamicCastMetatype(v120, v121))
  {
    v83 = v157;
    v84 = AnyColumn.assumingType<A>(_:)(v121, v121);
    v85 = v166;
    v122 = Column.count.getter(v166);
    v163 = v122;
    if (v122 < 0)
    {
      BUG();
    }

    v87 = v158;
    if (v122)
    {
      v164 = v168[2];
      v168 += 5;
      v123 = 0;
      do
      {
        v170 = v123;
        Column.subscript.getter(v123, v85);
        v124 = *&v148[0];
        if (!*&v148[0])
        {
          v124 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
        }

        if (v164)
        {
          v125 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v165 = v162 + *(v125 + 44);
          v126 = v168;
          v127 = 0;
          v167 = v124;
          do
          {
            v128 = v127 + v161;
            if (__OFADD__(v127, v161))
            {
              BUG();
            }

            if (*(v124 + 16))
            {
              v129 = v126;
              v130 = *v126;
              v171 = v129;
              *&v169 = *(v129 - 8);
              v130;
              v131 = v169;
              *&v169 = v130;
              v132 = specialized __RawDictionaryStorage.find<A>(_:)(v131, v130);
              if (v133)
              {
                v134 = *(*(v124 + 56) + 8 * v132);
              }

              else
              {
                LODWORD(v134) = 0;
              }

              v169;
              v126 = v171;
            }

            else
            {
              LODWORD(v134) = 0;
            }

            v127 = (v127 + 1);
            *&v169 = v134;
            v135 = specialized DenseMatrix.subscript.modify(v148, v170, v128);
            v84 = *&v169;
            *v136 = v169;
            (v135)(v148, 0);
            v126 += 2;
            v124 = v167;
          }

          while (v164 != v127);
          v167;
          v87 = v158;
          v85 = v166;
          v83 = v157;
        }

        else
        {
          v124;
        }

        v123 = v170 + 1;
      }

      while (v170 + 1 != v163);
    }

    return (*(v87 + 8))(v83, v85, v84);
  }

  *&v148[0] = 0;
  *(&v148[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v137._object = "', but got shape " + 0x8000000000000000;
  v137._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v137);
  v138 = AnyColumn.name.getter();
  v140 = v139;
  v137._countAndFlagsBits = v138;
  v137._object = v139;
  String.append(_:)(v137);
  v140;
  v137._countAndFlagsBits = 0x6720747562202C27;
  v137._object = 0xEB0000000020746FLL;
  String.append(_:)(v137);
  v141 = AnyColumn.wrappedElementType.getter();
  v142 = _typeName(_:qualified:)(v141, 0);
  v144 = v143;
  v137._countAndFlagsBits = v142;
  v137._object = v143;
  String.append(_:)(v137);
  v144;
  v137._countAndFlagsBits = 46;
  v137._object = 0xE100000000000000;
  String.append(_:)(v137);
  v169 = v148[0];
  v137._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v145 = swift_allocError(&type metadata for MLCreateError, v137._object, 0, 0);
  *v146 = v169;
  *(v146 + 16) = 0;
  *(v146 + 32) = 0;
  *(v146 + 48) = 0;
  v153 = v145;
  return swift_willThrow(&type metadata for MLCreateError, v137._object);
}

uint64_t specialized FeatureMatrixBuilder.fillDictionary(from:descriptors:column:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v71 = a4;
  *&v67 = v4;
  v68 = v5;
  v69 = a3;
  v70 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  v64 = *(v65 - 8);
  v6 = *(v64 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v50;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v61 = *(v62 - 8);
  v9 = *(v61 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v63 = &v50;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v58 = *(v59 - 8);
  v12 = *(v58 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v60 = &v50;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  v55 = *(v56 - 8);
  v15 = *(v55 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v57 = &v50;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  v53 = *(v54 - 8);
  v18 = *(v53 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v52 = &v50;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v51 = *(v72 - 8);
  v21 = *(v51 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = AnyColumn.wrappedElementType.getter();
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (swift_dynamicCastMetatype(v24, v25))
  {
    v26 = AnyColumn.assumingType<A>(_:)(v25, v25);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(&v50, v70, v69, v71);
    v27 = &v50;
    v28 = v72;
    v29 = v51;
    return (*(v29 + 8))(v27, v28, v26);
  }

  v30 = v52;
  v72 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : UInt8]);
  if (swift_dynamicCastMetatype(v24, v31))
  {
    v26 = AnyColumn.assumingType<A>(_:)(v31, v31);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v30, v70, v69, v71);
    v27 = v30;
    v28 = v54;
    v29 = v53;
    return (*(v29 + 8))(v27, v28, v26);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int32]);
  if (swift_dynamicCastMetatype(v24, v32))
  {
    v33 = v57;
    v26 = AnyColumn.assumingType<A>(_:)(v32, v32);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v33, v70, v69, v71);
    v27 = v33;
    v28 = v56;
    v29 = v55;
    return (*(v29 + 8))(v27, v28, v26);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
  if (swift_dynamicCastMetatype(v24, v34))
  {
    v35 = v60;
    v26 = AnyColumn.assumingType<A>(_:)(v34, v34);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v35, v70, v69, v71);
    v27 = v35;
    v28 = v59;
    v29 = v58;
    return (*(v29 + 8))(v27, v28, v26);
  }

  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
  if (swift_dynamicCastMetatype(v24, v36))
  {
    v37 = v63;
    v26 = AnyColumn.assumingType<A>(_:)(v36, v36);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v37, v70, v69, v71);
    v27 = v37;
    v28 = v62;
    v29 = v61;
    return (*(v29 + 8))(v27, v28, v26);
  }

  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any?]);
  if (swift_dynamicCastMetatype(v24, v38))
  {
    v39 = v66;
    v26 = AnyColumn.assumingType<A>(_:)(v38, v38);
    specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(v39, v70, v69, v71);
    v27 = v39;
    v28 = v65;
    v29 = v64;
    return (*(v29 + 8))(v27, v28, v26);
  }

  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v41._object = "values for feature '" + 0x8000000000000000;
  v41._countAndFlagsBits = 0xD000000000000028;
  String.append(_:)(v41);
  v42 = AnyColumn.name.getter();
  v44 = v43;
  v41._countAndFlagsBits = v42;
  v41._object = v43;
  String.append(_:)(v41);
  v44;
  v41._countAndFlagsBits = 0x6720747562202C27;
  v41._object = 0xEB0000000020746FLL;
  String.append(_:)(v41);
  v45 = AnyColumn.wrappedElementType.getter();
  v46 = _typeName(_:qualified:)(v45, 0);
  v48 = v47;
  v41._countAndFlagsBits = v46;
  v41._object = v47;
  String.append(_:)(v41);
  v48;
  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v67 = v50;
  v41._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v41._object, 0, 0);
  *v49 = v67;
  *(v49 + 16) = 0;
  *(v49 + 32) = 0;
  *(v49 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v41._object);
}

uint64_t specialized FeatureMatrixBuilder.fillFloat(from:column:)(__int128 *a1, uint64_t a2)
{
  v81 = v2;
  v78 = v3;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v7 = *(v72 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v10 = *(v69 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v22 = *(v58 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v82 = &v57;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v79 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    v30 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v26 + 8))(&v57, v25, v30);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v35 = v32;
    v36 = v59;
    v37 = v58;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v38 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v39 = v80;
  if (v38)
  {
    v40 = v62;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v40, v39);
    v35 = v40;
    v36 = v61;
    v37 = v60;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v82 = a1;
  v41 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v42 = v65;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v39);
    v35 = v42;
    v36 = v64;
    v37 = v63;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Int64))
  {
    v43 = v68;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v39, &demangling cache variable for type metadata for Column<Int64>);
    v35 = v43;
    v36 = v67;
    v37 = v66;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Float))
  {
    v44 = v71;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v39);
    v35 = v44;
    v36 = v70;
    v37 = v69;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Double))
  {
    v45 = v74;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v45, v39);
    v35 = v45;
    v36 = v73;
    v37 = v72;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v46 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v41, v46))
  {
    v47 = v77;
    v34 = AnyColumn.assumingType<A>(_:)(v46, v46);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v47, v80, *&v34);
    v35 = v47;
    v36 = v76;
    v37 = v75;
    return (*(v37 + 8))(v35, v36, v34);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v48._object = " values for feature '" + 0x8000000000000000;
  v48._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v48);
  v49 = AnyColumn.name.getter();
  v51 = v50;
  v48._countAndFlagsBits = v49;
  v48._object = v50;
  String.append(_:)(v48);
  v51;
  v48._countAndFlagsBits = 0x6720747562202C27;
  v48._object = 0xEB0000000020746FLL;
  String.append(_:)(v48);
  v52 = AnyColumn.wrappedElementType.getter();
  v53 = _typeName(_:qualified:)(v52, 0);
  v55 = v54;
  v48._countAndFlagsBits = v53;
  v48._object = v54;
  String.append(_:)(v48);
  v55;
  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v80 = v57;
  v48._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v48._object, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v48._object);
}

{
  v81 = v2;
  v78 = v3;
  *&v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v77 = &v57;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v72 = *(v73 - 8);
  v7 = *(v72 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v74 = &v57;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v69 = *(v70 - 8);
  v10 = *(v69 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v71 = &v57;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v68 = &v57;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v65 = &v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v62 = &v57;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v58 = *(v59 - 8);
  v22 = *(v58 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v82 = &v57;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v79 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v79, &type metadata for Int))
  {
    v30 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(&v57, v80, &demangling cache variable for type metadata for Column<Int>);
    return (*(v26 + 8))(&v57, v25, v30);
  }

  v32 = v82;
  v33 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int8))
  {
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v32, v80);
    v35 = v32;
    v36 = v59;
    v37 = v58;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v38 = swift_dynamicCastMetatype(v33, &type metadata for Int16);
  v39 = v80;
  if (v38)
  {
    v40 = v62;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int16, &type metadata for Int16);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v40, v39);
    v35 = v40;
    v36 = v61;
    v37 = v60;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v82 = a1;
  v41 = v79;
  if (swift_dynamicCastMetatype(v79, &type metadata for Int32))
  {
    v42 = v65;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v42, v39);
    v35 = v42;
    v36 = v64;
    v37 = v63;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Int64))
  {
    v43 = v68;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v43, v39, &demangling cache variable for type metadata for Column<Int64>);
    v35 = v43;
    v36 = v67;
    v37 = v66;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Float))
  {
    v44 = v71;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v44, v39);
    v35 = v44;
    v36 = v70;
    v37 = v69;
    return (*(v37 + 8))(v35, v36, v34);
  }

  if (swift_dynamicCastMetatype(v41, &type metadata for Double))
  {
    v45 = v74;
    v34 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(v45, v39);
    v35 = v45;
    v36 = v73;
    v37 = v72;
    return (*(v37 + 8))(v35, v36, v34);
  }

  v46 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCastMetatype(v41, v46))
  {
    v47 = v77;
    v34 = AnyColumn.assumingType<A>(_:)(v46, v46);
    specialized FeatureMatrixBuilder.fillInteger(from:column:)(v47, v80, *&v34);
    v35 = v47;
    v36 = v76;
    v37 = v75;
    return (*(v37 + 8))(v35, v36, v34);
  }

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v48._object = " values for feature '" + 0x8000000000000000;
  v48._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v48);
  v49 = AnyColumn.name.getter();
  v51 = v50;
  v48._countAndFlagsBits = v49;
  v48._object = v50;
  String.append(_:)(v48);
  v51;
  v48._countAndFlagsBits = 0x6720747562202C27;
  v48._object = 0xEB0000000020746FLL;
  String.append(_:)(v48);
  v52 = AnyColumn.wrappedElementType.getter();
  v53 = _typeName(_:qualified:)(v52, 0);
  v55 = v54;
  v48._countAndFlagsBits = v53;
  v48._object = v54;
  String.append(_:)(v48);
  v55;
  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v80 = v57;
  v48._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v48._object, 0, 0);
  *v56 = v80;
  *(v56 + 16) = 0;
  *(v56 + 32) = 0;
  *(v56 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v48._object);
}

uint64_t specialized FeatureMatrixBuilder.fillArray(from:size:column:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v84 = v3;
  *&v82 = v4;
  v85 = a3;
  v86 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v74 = *(v80 - 8);
  v5 = *(v74 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v75 = &v59;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v76 = &v59;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v73 = &v59;
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v70 = *(v71 - 8);
  v13 = *(v70 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v72 = &v59;
  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v69 = &v59;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v64 = *(v65 - 8);
  v19 = *(v64 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v66 = &v59;
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v22 = *(v63 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v62 = &v59;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v61 = *(v81 - 8);
  v26 = *(v61 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v77 = a1;
  v29 = AnyColumn.wrappedElementType.getter();
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v83 = v29;
  if (swift_dynamicCastMetatype(v29, v30))
  {
    v31 = AnyColumn.assumingType<A>(_:)(v30, v30);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(&v59, v86, v85);
    v32 = &v59;
    v33 = v81;
    v34 = v61;
    return (*(v34 + 8))(v32, v33, v31);
  }

  v36 = v62;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v83, v37))
  {
    v38 = AnyColumn.assumingType<A>(_:)(v37, v37);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v36, v86, v85);
    return (*(v22 + 8))(v36, v63, v38);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v83, v39))
    {
      v40 = v66;
      v31 = AnyColumn.assumingType<A>(_:)(v39, v39);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v40, v86, v85);
      v32 = v40;
      v33 = v65;
      v34 = v64;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
    if (swift_dynamicCastMetatype(v83, v41))
    {
      v42 = v69;
      v31 = AnyColumn.assumingType<A>(_:)(v41, v41);
      specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v42, v86, v85);
      v32 = v42;
      v33 = v68;
      v34 = v67;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
    if (swift_dynamicCastMetatype(v83, v43))
    {
      v44 = v72;
      v31 = AnyColumn.assumingType<A>(_:)(v43, v43);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v44, v86, v85);
      v32 = v44;
      v33 = v71;
      v34 = v70;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    if (swift_dynamicCastMetatype(v83, v45))
    {
      v46 = v73;
      v31 = AnyColumn.assumingType<A>(_:)(v45, v45);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v46, v86, v85);
      v32 = v46;
      v33 = v79;
      v34 = v78;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v81 = v45;
    v47 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    if (swift_dynamicCastMetatype(v83, v47))
    {
      v48 = v75;
      v31 = AnyColumn.assumingType<A>(_:)(v47, v47);
      v49 = v76;
      Column.mapNonNil<A>(_:)(closure #1 in FeatureMatrixBuilder.fillArray(from:size:column:), 0, v80, v81);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v49, v86, v85);
      (*(v78 + 8))(v49, v79, v31);
      v32 = v48;
      v33 = v80;
      v34 = v74;
      return (*(v34 + 8))(v32, v33, v31);
    }

    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v50._object = "g-point values for feature '" + 0x8000000000000000;
    v50._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v50);
    v51 = AnyColumn.name.getter();
    v53 = v52;
    v50._countAndFlagsBits = v51;
    v50._object = v52;
    String.append(_:)(v50);
    v53;
    v50._countAndFlagsBits = 0x6720747562202C27;
    v50._object = 0xEB0000000020746FLL;
    String.append(_:)(v50);
    v54 = AnyColumn.wrappedElementType.getter();
    v55 = _typeName(_:qualified:)(v54, 0);
    v57 = v56;
    v50._countAndFlagsBits = v55;
    v50._object = v56;
    String.append(_:)(v50);
    v57;
    v50._countAndFlagsBits = 46;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    v82 = v60;
    v50._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50._object, 0, 0);
    *v58 = v82;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v50._object);
  }
}

{
  v84 = v3;
  *&v82 = v4;
  v85 = a3;
  v86 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v74 = *(v80 - 8);
  v5 = *(v74 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v75 = &v59;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v76 = &v59;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v73 = &v59;
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v70 = *(v71 - 8);
  v13 = *(v70 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v72 = &v59;
  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v69 = &v59;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v64 = *(v65 - 8);
  v19 = *(v64 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v66 = &v59;
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v22 = *(v63 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v62 = &v59;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v61 = *(v81 - 8);
  v26 = *(v61 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v77 = a1;
  v29 = AnyColumn.wrappedElementType.getter();
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v83 = v29;
  if (swift_dynamicCastMetatype(v29, v30))
  {
    v31 = AnyColumn.assumingType<A>(_:)(v30, v30);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(&v59, v86, v85);
    v32 = &v59;
    v33 = v81;
    v34 = v61;
    return (*(v34 + 8))(v32, v33, v31);
  }

  v36 = v62;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v83, v37))
  {
    v38 = AnyColumn.assumingType<A>(_:)(v37, v37);
    specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v36, v86, v85);
    return (*(v22 + 8))(v36, v63, v38);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v83, v39))
    {
      v40 = v66;
      v31 = AnyColumn.assumingType<A>(_:)(v39, v39);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v40, v86, v85);
      v32 = v40;
      v33 = v65;
      v34 = v64;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
    if (swift_dynamicCastMetatype(v83, v41))
    {
      v42 = v69;
      v31 = AnyColumn.assumingType<A>(_:)(v41, v41);
      specialized FeatureMatrixBuilder.fillArray(from:size:column:)(v42, v86, v85);
      v32 = v42;
      v33 = v68;
      v34 = v67;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
    if (swift_dynamicCastMetatype(v83, v43))
    {
      v44 = v72;
      v31 = AnyColumn.assumingType<A>(_:)(v43, v43);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v44, v86, v85);
      v32 = v44;
      v33 = v71;
      v34 = v70;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    if (swift_dynamicCastMetatype(v83, v45))
    {
      v46 = v73;
      v31 = AnyColumn.assumingType<A>(_:)(v45, v45);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v46, v86, v85);
      v32 = v46;
      v33 = v79;
      v34 = v78;
      return (*(v34 + 8))(v32, v33, v31);
    }

    v81 = v45;
    v47 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    if (swift_dynamicCastMetatype(v83, v47))
    {
      v48 = v75;
      v31 = AnyColumn.assumingType<A>(_:)(v47, v47);
      v49 = v76;
      Column.mapNonNil<A>(_:)(closure #1 in FeatureMatrixBuilder.fillArray(from:size:column:), 0, v80, v81);
      specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(v49, v86, v85);
      (*(v78 + 8))(v49, v79, v31);
      v32 = v48;
      v33 = v80;
      v34 = v74;
      return (*(v34 + 8))(v32, v33, v31);
    }

    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v50._object = "g-point values for feature '" + 0x8000000000000000;
    v50._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v50);
    v51 = AnyColumn.name.getter();
    v53 = v52;
    v50._countAndFlagsBits = v51;
    v50._object = v52;
    String.append(_:)(v50);
    v53;
    v50._countAndFlagsBits = 0x6720747562202C27;
    v50._object = 0xEB0000000020746FLL;
    String.append(_:)(v50);
    v54 = AnyColumn.wrappedElementType.getter();
    v55 = _typeName(_:qualified:)(v54, 0);
    v57 = v56;
    v50._countAndFlagsBits = v55;
    v50._object = v56;
    String.append(_:)(v50);
    v57;
    v50._countAndFlagsBits = 46;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    v82 = v60;
    v50._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50._object, 0, 0);
    *v58 = v82;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v50._object);
  }
}

{
  v52 = v3;
  v51 = v4;
  v48 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = &v44;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v55 = a1;
  result = Column.count.getter(v56);
  v50 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v61 = v9;
    v62 = &v44;
    *&v57 = a2;
    while (1)
    {
      v15 = v54;
      v59 = v14;
      Column.subscript.getter(v14, v56);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v54;
        if (__swift_getEnumTagSinglePayload(v54, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
        }
      }

      else
      {
        (*(v60 + 32))(v62, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v57;
      v5 = v57;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v57 < 0)
      {
        BUG();
      }

      v49 = v59 + 1;
      if (v57)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v47 = v51 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v48;
          if (__OFADD__(v22, v48))
          {
            BUG();
          }

          v46 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v61, v26);
          v25;
          v58 = SLODWORD(v45[0]);
          v27 = specialized DenseMatrix.subscript.modify(v45, v59, v23);
          *v28 = v58;
          (v27)(v45, 0);
          v22 = v46;
          v5 = v57;
        }

        while (v57 != v46);
      }

      v9 = v61;
      (*(v60 + 8))(v62, v61);
      result = v49;
      v14 = v49;
      if (v49 == v50)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v53 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v56);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v61);
    v37 = Array.description.getter(v36, &type metadata for Int);
    v39 = v38;
    v29._countAndFlagsBits = v37;
    v29._object = v38;
    String.append(_:)(v29);
    v36;
    v39;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v53 = v59;
    v40 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v42 = v41;
    v29._countAndFlagsBits = v40;
    v29._object = v41;
    String.append(_:)(v29);
    v42;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v57 = v45[0];
    v29._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29._object, 0, 0);
    *v43 = v57;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v29._object);
    return (*(v60 + 8))(v62, v61);
  }

  return result;
}

{
  v52 = v3;
  v51 = v4;
  v48 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v44;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v55 = a1;
  result = Column.count.getter(v56);
  v50 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v60 = v9;
    v61 = v44;
    *&v57 = a2;
    while (1)
    {
      v15 = v54;
      v58 = v14;
      Column.subscript.getter(v14, v56);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v54;
        if (__swift_getEnumTagSinglePayload(v54, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
        }
      }

      else
      {
        (*(v59 + 32))(v61, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v57;
      v5 = v57;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v57 < 0)
      {
        BUG();
      }

      v49 = v58 + 1;
      if (v57)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v47 = v51 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v48;
          if (__OFADD__(v22, v48))
          {
            BUG();
          }

          v45 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v60, v26);
          v25;
          v46 = SLODWORD(v44[0]);
          v27 = specialized DenseMatrix.subscript.modify(v44, v58, v23);
          *v28 = v46;
          (v27)(v44, 0);
          v22 = v45;
          v5 = v57;
        }

        while (v57 != v45);
      }

      v9 = v60;
      (*(v59 + 8))(v61, v60);
      result = v49;
      v14 = v49;
      if (v49 == v50)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v53 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v56);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v60);
    v37 = Array.description.getter(v36, &type metadata for Int);
    v39 = v38;
    v29._countAndFlagsBits = v37;
    v29._object = v38;
    String.append(_:)(v29);
    v36;
    v39;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v53 = v58;
    v40 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v42 = v41;
    v29._countAndFlagsBits = v40;
    v29._object = v41;
    String.append(_:)(v29);
    v42;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v57 = v44[0];
    v29._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29._object, 0, 0);
    *v43 = v57;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v29._object);
    return (*(v59 + 8))(v61, v60);
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(uint64_t a1, unint64_t a2)
{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0.0;
      if (!BYTE1(v9[0]))
      {
        v6 = SLOBYTE(v9[0]);
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0.0;
      if (!BYTE2(v9[0]))
      {
        v6 = SLOWORD(v9[0]);
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0.0;
      if (!BYTE4(v9[0]))
      {
        v6 = SLODWORD(v9[0]);
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE1(v9[0]))
      {
        v6 = SLOBYTE(v9[0]);
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int16>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE2(v9[0]))
      {
        v6 = SLOWORD(v9[0]);
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE4(v9[0]))
      {
        v6 = SLODWORD(v9[0]);
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v13 = v2;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v11 = a1;
  result = Column.count.getter(v12);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v13 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v12);
      v6 = 0;
      if (!BYTE4(v9[0]))
      {
        v6 = v9[0];
      }

      v14 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v10);
      *v8 = v14;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!v10)
      {
        v6 = v9;
      }

      v15 = v6;
      v7 = specialized DenseMatrix.subscript.modify(&v9, i, v11);
      *v8 = v15;
      result = (v7)(&v9, 0);
    }
  }

  return result;
}

{
  v14 = v2;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v13);
      v6 = 0.0;
      if (!BYTE4(v9[0]))
      {
        v6 = *v9;
      }

      v10 = v6;
      v7 = specialized DenseMatrix.subscript.modify(v9, i, v11);
      *v8 = v10;
      result = (v7)(v9, 0);
    }
  }

  return result;
}

{
  v15 = v2;
  v12 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v13 = a1;
  result = Column.count.getter(v14);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v4 = result;
    v15 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v4; ++i)
    {
      Column.subscript.getter(i, v14);
      v6 = 0;
      if (!v10)
      {
        v6 = v9;
      }

      v11 = v6;
      v7 = specialized DenseMatrix.subscript.modify(&v9, i, v12);
      *v8 = v11;
      result = (v7)(&v9, 0);
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger<A>(from:column:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v15 = v3;
  v12 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledName(a3);
  v13 = a1;
  result = Column.count.getter(v14);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v15 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v14);
      v7 = 0.0;
      if (!v11)
      {
        v7 = v10;
      }

      v16 = v7;
      v8 = specialized DenseMatrix.subscript.modify(&v10, i, v12);
      *v9 = v16;
      result = (v8)(&v10, 0);
    }
  }

  return result;
}

{
  v16 = v3;
  v13 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledName(a3);
  v14 = a1;
  result = Column.count.getter(v15);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v16 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v15);
      v7 = 0.0;
      if (!v11)
      {
        v7 = v10;
      }

      v12 = v7;
      v8 = specialized DenseMatrix.subscript.modify(&v10, i, v13);
      *v9 = v12;
      result = (v8)(&v10, 0);
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillInteger(from:column:)(uint64_t a1, unint64_t a2, float a3)
{
  v14 = v3;
  v11 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v12 = a1;
  result = Column.count.getter(v13);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v14 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v13);
      v7 = v10[0];
      if (v10[0])
      {
        [v10[0] floatValue];
        v15 = a3;
      }

      else
      {
        v15 = 0.0;
      }

      v8 = specialized DenseMatrix.subscript.modify(v10, i, v11);
      a3 = v15;
      *v9 = v15;
      result = (v8)(v10, 0);
    }
  }

  return result;
}

{
  v15 = v3;
  v12 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<NSNumber>);
  v13 = a1;
  result = Column.count.getter(v14);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v15 += *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>) + 44);
    for (i = 0; i != v5; ++i)
    {
      Column.subscript.getter(i, v14);
      v7 = v11[0];
      if (v11[0])
      {
        [v11[0] floatValue];
        *&v16 = a3;

        v8 = *&v16;
      }

      else
      {
        v8 = 0.0;
      }

      v16 = v8;
      v9 = specialized DenseMatrix.subscript.modify(v11, i, v12);
      a3 = *&v16;
      *v10 = v16;
      result = (v9)(v11, 0);
    }
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillArray<A>(from:size:column:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33 = v4;
  v31 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v35 = a1;
  result = Column.count.getter(v36);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v34 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v36);
      v8 = *&v30[0];
      if (!*&v30[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v39 = v7;
      v40 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v11 = v33 + *(v10 + 44);
        v12 = 0;
        do
        {
          v13 = v12 + v31;
          if (__OFADD__(v12, v31))
          {
            BUG();
          }

          v37[0] = v40[v12++ + 4];
          v14 = specialized DenseMatrix.subscript.modify(v30, v39, v13);
          *v15 = LODWORD(v37[0]);
          (v14)(v30, 0);
        }

        while (a2 != v12);
      }

      v7 = v39 + 1;
      result = v40;
      if (v7 == v32)
      {
        return result;
      }
    }

    *&v30[0] = 0;
    *v37 = v9;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v16._object = "ues for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v16);
    v38 = a2;
    v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v19 = v18;
    v16._countAndFlagsBits = v17;
    v16._object = v18;
    String.append(_:)(v16);
    v19;
    v16._object = "Expected arrays with " + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v16);
    v20 = Column.name.getter(v36);
    v22 = v21;
    v16._countAndFlagsBits = v20;
    v16._object = v21;
    String.append(_:)(v16);
    v22;
    v16._countAndFlagsBits = 0x6720747562202C27;
    v16._object = 0xEB0000000020746FLL;
    String.append(_:)(v16);
    v40;
    v38 = *v37;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v16._countAndFlagsBits = v23;
    v16._object = v24;
    String.append(_:)(v16);
    v25;
    v16._object = " elements for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v16);
    v38 = v39;
    v26 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v28 = v27;
    v16._countAndFlagsBits = v26;
    v16._object = v27;
    String.append(_:)(v16);
    v28;
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    *v37 = v30[0];
    v16._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v16._object, 0, 0);
    *v29 = *v37;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v16._object);
  }

  return result;
}

{
  v33 = v4;
  v31 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v35 = a1;
  result = Column.count.getter(v36);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v34 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v36);
      v8 = *&v30[0];
      if (!*&v30[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v39 = v7;
      v40 = v8;
      v9 = *(v8 + 2);
      if (*&v9 != a2)
      {
        break;
      }

      if (a2)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v11 = v33 + *(v10 + 44);
        v12 = 0;
        do
        {
          v13 = v12 + v31;
          if (__OFADD__(v12, v31))
          {
            BUG();
          }

          v37[0] = v40[v12++ + 4];
          v14 = specialized DenseMatrix.subscript.modify(v30, v39, v13);
          *v15 = *&v37[0];
          (v14)(v30, 0);
        }

        while (a2 != v12);
      }

      v7 = v39 + 1;
      result = v40;
      if (v7 == v32)
      {
        return result;
      }
    }

    *&v30[0] = 0;
    v37[0] = v9;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v16._object = "ues for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v16);
    v38 = a2;
    v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v19 = v18;
    v16._countAndFlagsBits = v17;
    v16._object = v18;
    String.append(_:)(v16);
    v19;
    v16._object = "Expected arrays with " + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v16);
    v20 = Column.name.getter(v36);
    v22 = v21;
    v16._countAndFlagsBits = v20;
    v16._object = v21;
    String.append(_:)(v16);
    v22;
    v16._countAndFlagsBits = 0x6720747562202C27;
    v16._object = 0xEB0000000020746FLL;
    String.append(_:)(v16);
    v40;
    v38 = *&v37[0];
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v16._countAndFlagsBits = v23;
    v16._object = v24;
    String.append(_:)(v16);
    v25;
    v16._object = " elements for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v16);
    v38 = v39;
    v26 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v28 = v27;
    v16._countAndFlagsBits = v26;
    v16._object = v27;
    String.append(_:)(v16);
    v28;
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    *v37 = v30[0];
    v16._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v16._object, 0, 0);
    *v29 = *v37;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v16._object);
  }

  return result;
}

{
  v33 = v4;
  v31 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v35 = a1;
  result = Column.count.getter(v36);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v34 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v36);
      v8 = *&v30[0];
      if (!*&v30[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v39 = v7;
      v40 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v11 = v33 + *(v10 + 44);
        v12 = 0;
        do
        {
          v13 = v12 + v31;
          if (__OFADD__(v12, v31))
          {
            BUG();
          }

          LODWORD(v37) = *(v40 + v12++ + 8);
          v14 = specialized DenseMatrix.subscript.modify(v30, v39, v13);
          *v15 = v37;
          (v14)(v30, 0);
        }

        while (a2 != v12);
      }

      v7 = v39 + 1;
      result = v40;
      if (v7 == v32)
      {
        return result;
      }
    }

    *&v30[0] = 0;
    *&v37 = v9;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v16._object = "ues for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v16);
    v38 = a2;
    v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v19 = v18;
    v16._countAndFlagsBits = v17;
    v16._object = v18;
    String.append(_:)(v16);
    v19;
    v16._object = "Expected arrays with " + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v16);
    v20 = Column.name.getter(v36);
    v22 = v21;
    v16._countAndFlagsBits = v20;
    v16._object = v21;
    String.append(_:)(v16);
    v22;
    v16._countAndFlagsBits = 0x6720747562202C27;
    v16._object = 0xEB0000000020746FLL;
    String.append(_:)(v16);
    v40;
    v38 = v37;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v16._countAndFlagsBits = v23;
    v16._object = v24;
    String.append(_:)(v16);
    v25;
    v16._object = " elements for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v16);
    v38 = v39;
    v26 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v28 = v27;
    v16._countAndFlagsBits = v26;
    v16._object = v27;
    String.append(_:)(v16);
    v28;
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v37 = v30[0];
    v16._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v16._object, 0, 0);
    *v29 = v37;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v16._object);
  }

  return result;
}

{
  v34 = v4;
  v32 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v36 = a1;
  result = Column.count.getter(v37);
  v33 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v35 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v37);
      v8 = *&v31[0];
      if (!*&v31[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v40 = v7;
      v41 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v11 = v34 + *(v10 + 44);
        v12 = 0;
        do
        {
          v13 = v12 + v32;
          if (__OFADD__(v12, v32))
          {
            BUG();
          }

          v14 = *&v41[v12 + 4];
          v38[0] = v14;
          ++v12;
          v15 = specialized DenseMatrix.subscript.modify(v31, v40, v13);
          *v16 = LODWORD(v38[0]);
          (v15)(v31, 0);
        }

        while (a2 != v12);
      }

      v7 = v40 + 1;
      result = v41;
      if (v7 == v33)
      {
        return result;
      }
    }

    *&v31[0] = 0;
    *v38 = v9;
    *(&v31[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v17._object = "ues for feature '" + 0x8000000000000000;
    v17._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v17);
    v39 = a2;
    v18 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v20 = v19;
    v17._countAndFlagsBits = v18;
    v17._object = v19;
    String.append(_:)(v17);
    v20;
    v17._object = "Expected arrays with " + 0x8000000000000000;
    v17._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v17);
    v21 = Column.name.getter(v37);
    v23 = v22;
    v17._countAndFlagsBits = v21;
    v17._object = v22;
    String.append(_:)(v17);
    v23;
    v17._countAndFlagsBits = 0x6720747562202C27;
    v17._object = 0xEB0000000020746FLL;
    String.append(_:)(v17);
    v41;
    v39 = *v38;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v17._countAndFlagsBits = v24;
    v17._object = v25;
    String.append(_:)(v17);
    v26;
    v17._object = " elements for feature '" + 0x8000000000000000;
    v17._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v17);
    v39 = v40;
    v27 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v29 = v28;
    v17._countAndFlagsBits = v27;
    v17._object = v28;
    String.append(_:)(v17);
    v29;
    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    *v38 = v31[0];
    v17._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17._object, 0, 0);
    *v30 = *v38;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v17._object);
  }

  return result;
}

{
  v33 = v4;
  v31 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v35 = a1;
  result = Column.count.getter(v36);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v34 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v36);
      v8 = *&v30[0];
      if (!*&v30[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v39 = v7;
      v40 = v8;
      v9 = *(v8 + 2);
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v11 = v33 + *(v10 + 44);
        v12 = 0;
        do
        {
          v13 = v12 + v31;
          if (__OFADD__(v12, v31))
          {
            BUG();
          }

          *&v37 = v40[v12++ + 8];
          v14 = specialized DenseMatrix.subscript.modify(v30, v39, v13);
          *v15 = v37;
          (v14)(v30, 0);
        }

        while (a2 != v12);
      }

      v7 = v39 + 1;
      result = v40;
      if (v7 == v32)
      {
        return result;
      }
    }

    *&v30[0] = 0;
    *&v37 = v9;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v16._object = "ues for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v16);
    v38 = a2;
    v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v19 = v18;
    v16._countAndFlagsBits = v17;
    v16._object = v18;
    String.append(_:)(v16);
    v19;
    v16._object = "Expected arrays with " + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v16);
    v20 = Column.name.getter(v36);
    v22 = v21;
    v16._countAndFlagsBits = v20;
    v16._object = v21;
    String.append(_:)(v16);
    v22;
    v16._countAndFlagsBits = 0x6720747562202C27;
    v16._object = 0xEB0000000020746FLL;
    String.append(_:)(v16);
    v40;
    v38 = v37;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v16._countAndFlagsBits = v23;
    v16._object = v24;
    String.append(_:)(v16);
    v25;
    v16._object = " elements for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v16);
    v38 = v39;
    v26 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v28 = v27;
    v16._countAndFlagsBits = v26;
    v16._object = v27;
    String.append(_:)(v16);
    v28;
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v37 = v30[0];
    v16._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v16._object, 0, 0);
    *v29 = v37;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v16._object);
  }

  return result;
}

{
  v33 = v4;
  v31 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v35 = a1;
  result = Column.count.getter(v36);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v34 = v3;
    v7 = 0;
    while (1)
    {
      Column.subscript.getter(v7, v36);
      v8 = *&v30[0];
      if (!*&v30[0])
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v39 = v7;
      v40 = v8;
      v9 = v8[2];
      if (v9 != a2)
      {
        break;
      }

      if (a2)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v11 = v33 + *(v10 + 44);
        v12 = 0;
        do
        {
          v13 = v12 + v31;
          if (__OFADD__(v12, v31))
          {
            BUG();
          }

          *&v37 = v40[v12++ + 4];
          v14 = specialized DenseMatrix.subscript.modify(v30, v39, v13);
          *v15 = v37;
          (v14)(v30, 0);
        }

        while (a2 != v12);
      }

      v7 = v39 + 1;
      result = v40;
      if (v7 == v32)
      {
        return result;
      }
    }

    *&v30[0] = 0;
    *&v37 = v9;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v16._object = "ues for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v16);
    v38 = a2;
    v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v19 = v18;
    v16._countAndFlagsBits = v17;
    v16._object = v18;
    String.append(_:)(v16);
    v19;
    v16._object = "Expected arrays with " + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v16);
    v20 = Column.name.getter(v36);
    v22 = v21;
    v16._countAndFlagsBits = v20;
    v16._object = v21;
    String.append(_:)(v16);
    v22;
    v16._countAndFlagsBits = 0x6720747562202C27;
    v16._object = 0xEB0000000020746FLL;
    String.append(_:)(v16);
    v40;
    v38 = v37;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v16._countAndFlagsBits = v23;
    v16._object = v24;
    String.append(_:)(v16);
    v25;
    v16._object = " elements for feature '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v16);
    v38 = v39;
    v26 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v28 = v27;
    v16._countAndFlagsBits = v26;
    v16._object = v27;
    String.append(_:)(v16);
    v28;
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v37 = v30[0];
    v16._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v16._object, 0, 0);
    *v29 = v37;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v16._object);
  }

  return result;
}

{
  v52 = v3;
  v51 = v4;
  v48 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = &v44;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v55 = a1;
  result = Column.count.getter(v56);
  v50 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v61 = v9;
    v62 = &v44;
    *&v57 = a2;
    while (1)
    {
      v15 = v54;
      v59 = v14;
      Column.subscript.getter(v14, v56);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v54;
        if (__swift_getEnumTagSinglePayload(v54, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Float>?);
        }
      }

      else
      {
        (*(v60 + 32))(v62, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v57;
      v5 = v57;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v57 < 0)
      {
        BUG();
      }

      v49 = v59 + 1;
      if (v57)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v47 = v51 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v48;
          if (__OFADD__(v22, v48))
          {
            BUG();
          }

          v46 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v61, v26);
          v25;
          v58 = v45[0];
          v27 = specialized DenseMatrix.subscript.modify(v45, v59, v23);
          *v28 = v58;
          (v27)(v45, 0);
          v22 = v46;
          v5 = v57;
        }

        while (v57 != v46);
      }

      v9 = v61;
      (*(v60 + 8))(v62, v61);
      result = v49;
      v14 = v49;
      if (v49 == v50)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v53 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v56);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v61);
    v37 = Array.description.getter(v36, &type metadata for Int);
    v39 = v38;
    v29._countAndFlagsBits = v37;
    v29._object = v38;
    String.append(_:)(v29);
    v36;
    v39;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v53 = v59;
    v40 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v42 = v41;
    v29._countAndFlagsBits = v40;
    v29._object = v41;
    String.append(_:)(v29);
    v42;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v57 = v45[0];
    v29._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29._object, 0, 0);
    *v43 = v57;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v29._object);
    return (*(v60 + 8))(v62, v61);
  }

  return result;
}

{
  v53 = v3;
  v52 = v4;
  v49 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v55 = &v45;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v56 = a1;
  result = Column.count.getter(v57);
  v51 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v62 = v9;
    v63 = &v45;
    *&v58 = a2;
    while (1)
    {
      v15 = v55;
      v60 = v14;
      Column.subscript.getter(v14, v57);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v55;
        if (__swift_getEnumTagSinglePayload(v55, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Double>?);
        }
      }

      else
      {
        (*(v61 + 32))(v63, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v58;
      v5 = v58;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v58 < 0)
      {
        BUG();
      }

      v50 = v60 + 1;
      if (v58)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v48 = v52 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v49;
          if (__OFADD__(v22, v49))
          {
            BUG();
          }

          v47 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v62, v26);
          v25;
          v27 = v46[0];
          v59 = v27;
          v28 = specialized DenseMatrix.subscript.modify(v46, v60, v23);
          *v29 = v59;
          (v28)(v46, 0);
          v22 = v47;
          v5 = v58;
        }

        while (v58 != v47);
      }

      v9 = v62;
      (*(v61 + 8))(v63, v62);
      result = v50;
      v14 = v50;
      if (v50 == v51)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    v46[0] = 0.0;
    v46[1] = -2.681561585988519e154;
    _StringGuts.grow(_:)(84);
    v30._object = " elements at row " + 0x8000000000000000;
    v30._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v30);
    v54 = v5;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v30._countAndFlagsBits = v31;
    v30._object = v32;
    String.append(_:)(v30);
    v33;
    v30._countAndFlagsBits = 0x656620726F66205DLL;
    v30._object = 0xEF27206572757461;
    String.append(_:)(v30);
    v34 = Column.name.getter(v57);
    v36 = v35;
    v30._countAndFlagsBits = v34;
    v30._object = v35;
    String.append(_:)(v30);
    v36;
    v30._object = "arrays with shape [" + 0x8000000000000000;
    v30._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v30);
    v37 = MLShapedArray.shape.getter(v62);
    v38 = Array.description.getter(v37, &type metadata for Int);
    v40 = v39;
    v30._countAndFlagsBits = v38;
    v30._object = v39;
    String.append(_:)(v30);
    v37;
    v40;
    v30._countAndFlagsBits = 0x20776F7220746120;
    v30._object = 0xE800000000000000;
    String.append(_:)(v30);
    v54 = v60;
    v41 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v43 = v42;
    v30._countAndFlagsBits = v41;
    v30._object = v42;
    String.append(_:)(v30);
    v43;
    v30._countAndFlagsBits = 46;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v58 = *v46;
    v30._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v30._object, 0, 0);
    *v44 = v58;
    *(v44 + 16) = 0;
    *(v44 + 32) = 0;
    *(v44 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v30._object);
    return (*(v61 + 8))(v63, v62);
  }

  return result;
}

{
  v52 = v3;
  v51 = v4;
  v48 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v44;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v55 = a1;
  result = Column.count.getter(v56);
  v50 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v60 = v9;
    v61 = v44;
    *&v57 = a2;
    while (1)
    {
      v15 = v54;
      v58 = v14;
      Column.subscript.getter(v14, v56);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v54;
        if (__swift_getEnumTagSinglePayload(v54, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Float>?);
        }
      }

      else
      {
        (*(v59 + 32))(v61, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v57;
      v5 = v57;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v57 < 0)
      {
        BUG();
      }

      v49 = v58 + 1;
      if (v57)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v47 = v51 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v48;
          if (__OFADD__(v22, v48))
          {
            BUG();
          }

          v45 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v60, v26);
          v25;
          v46 = *v44;
          v27 = specialized DenseMatrix.subscript.modify(v44, v58, v23);
          *v28 = v46;
          (v27)(v44, 0);
          v22 = v45;
          v5 = v57;
        }

        while (v57 != v45);
      }

      v9 = v60;
      (*(v59 + 8))(v61, v60);
      result = v49;
      v14 = v49;
      if (v49 == v50)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v53 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v56);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v60);
    v37 = Array.description.getter(v36, &type metadata for Int);
    v39 = v38;
    v29._countAndFlagsBits = v37;
    v29._object = v38;
    String.append(_:)(v29);
    v36;
    v39;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v53 = v58;
    v40 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v42 = v41;
    v29._countAndFlagsBits = v40;
    v29._object = v41;
    String.append(_:)(v29);
    v42;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v57 = v44[0];
    v29._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29._object, 0, 0);
    *v43 = v57;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v29._object);
    return (*(v59 + 8))(v61, v60);
  }

  return result;
}

{
  v52 = v3;
  v51 = v4;
  v48 = a3;
  v5 = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v44;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v55 = a1;
  result = Column.count.getter(v56);
  v50 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v14 = 0;
    v60 = v9;
    v61 = v44;
    *&v57 = a2;
    while (1)
    {
      v15 = v54;
      v58 = v14;
      Column.subscript.getter(v14, v56);
      if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
      {
        v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v9, v16);
        v17 = v54;
        if (__swift_getEnumTagSinglePayload(v54, 1, v9) != 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLShapedArray<Double>?);
        }
      }

      else
      {
        (*(v59 + 32))(v61, v15, v9);
      }

      v18 = MLShapedArray.shape.getter(v9);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v19 = *(v18 + 32);
      v18;
      v20 = v19 == v57;
      v5 = v57;
      if (!v20)
      {
        goto LABEL_18;
      }

      if (v57 < 0)
      {
        BUG();
      }

      v49 = v58 + 1;
      if (v57)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v47 = v51 + *(v21 + 44);
        v22 = 0;
        do
        {
          v23 = v22 + v48;
          if (__OFADD__(v22, v48))
          {
            BUG();
          }

          v45 = v22 + 1;
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v25 = swift_allocObject(v24, 40, 7);
          v25[2] = 1;
          v25[3] = 2;
          v25[4] = v22;
          v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
          MLShapedArrayProtocol.subscript.getter(v25, v60, v26);
          v25;
          v46 = *&v44[0];
          v27 = specialized DenseMatrix.subscript.modify(v44, v58, v23);
          *v28 = v46;
          (v27)(v44, 0);
          v22 = v45;
          v5 = v57;
        }

        while (v57 != v45);
      }

      v9 = v60;
      (*(v59 + 8))(v61, v60);
      result = v49;
      v14 = v49;
      if (v49 == v50)
      {
        return result;
      }
    }

    v18;
LABEL_18:
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v29._object = " elements at row " + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v29);
    v53 = v5;
    v30 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v32 = v31;
    v29._countAndFlagsBits = v30;
    v29._object = v31;
    String.append(_:)(v29);
    v32;
    v29._countAndFlagsBits = 0x656620726F66205DLL;
    v29._object = 0xEF27206572757461;
    String.append(_:)(v29);
    v33 = Column.name.getter(v56);
    v35 = v34;
    v29._countAndFlagsBits = v33;
    v29._object = v34;
    String.append(_:)(v29);
    v35;
    v29._object = "arrays with shape [" + 0x8000000000000000;
    v29._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v29);
    v36 = MLShapedArray.shape.getter(v60);
    v37 = Array.description.getter(v36, &type metadata for Int);
    v39 = v38;
    v29._countAndFlagsBits = v37;
    v29._object = v38;
    String.append(_:)(v29);
    v36;
    v39;
    v29._countAndFlagsBits = 0x20776F7220746120;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v53 = v58;
    v40 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v42 = v41;
    v29._countAndFlagsBits = v40;
    v29._object = v41;
    String.append(_:)(v29);
    v42;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v57 = v44[0];
    v29._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29._object, 0, 0);
    *v43 = v57;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v29._object);
    return (*(v59 + 8))(v61, v60);
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fillDictionary<A>(from:descriptors:column:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v30 = a4;
  v44 = v4;
  v31 = v5;
  v29 = a3;
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  result = Column.count.getter(v8);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v39 = *(a2 + 16);
    v33 = (a2 + 56);
    v10 = 0;
    v40 = a2;
    v34 = a1;
    v35 = v8;
    while (1)
    {
      v38 = v10;
      Column.subscript.getter(v10, v8);
      v43 = *&v36[0];
      if (!*&v36[0])
      {
        v43 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
      }

      if (v39)
      {
        break;
      }

      result = v43;
LABEL_19:
      v10 = v38 + 1;
      if (v38 + 1 == v32)
      {
        return result;
      }
    }

    v6;
    v11 = 0;
    v12 = v33;
    v13 = v44;
    while (1)
    {
      v37 = v11;
      v44 = v13;
      v41 = *(v12 - 3);
      v14 = *(v12 - 2);
      v42 = *(v12 - 1);
      v28 = v12;
      LOBYTE(v17) = *v12;
      v15 = v43;
      v16 = *(v43 + 16);
      v14;
      v17 = v17;
      v45 = v17;
      if (v16)
      {
        v14;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v42, v17);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v14);
        if (v19)
        {
          v20 = *(*(v15 + 56) + 8 * v18);
          v14;
          v27 = &type metadata for Int;
          *&v26 = v20;
          outlined init with take of Any(&v26, v36);
          v21 = v44;
          v22 = v37;
          v23 = v42;
          v17 = v45;
          goto LABEL_14;
        }

        v14;
        v21 = v44;
        v23 = v42;
        v17 = v45;
      }

      else
      {
        v24 = v42;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v42, v17);
        v21 = v44;
        v23 = v24;
      }

      memset(v36, 0, sizeof(v36));
      v22 = v37;
LABEL_14:
      if (__OFADD__(v22, v29))
      {
        BUG();
      }

      v25 = v23;
      v30(v36, v41, v14, v23, v17, v38, v22 + v29);
      v13 = v21;
      if (v21)
      {
        v44 = v21;
        v14;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v25, v45);
        v43;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
        return v40;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
      v14;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v25, v45);
      v12 = v28 + 32;
      v11 = v22 + 1;
      if (v39 == v11)
      {
        v44 = 0;
        v43;
        v6 = v40;
        result = v40;
        v8 = v35;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v30 = a4;
  v44 = v4;
  v31 = v5;
  v29 = a3;
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  result = Column.count.getter(v8);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v39 = *(a2 + 16);
    v33 = (a2 + 56);
    v10 = 0;
    v40 = a2;
    v34 = a1;
    v35 = v8;
    while (1)
    {
      v38 = v10;
      Column.subscript.getter(v10, v8);
      v43 = *&v36[0];
      if (!*&v36[0])
      {
        v43 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for UInt8, &protocol witness table for String);
      }

      if (v39)
      {
        break;
      }

      result = v43;
LABEL_19:
      v10 = v38 + 1;
      if (v38 + 1 == v32)
      {
        return result;
      }
    }

    v6;
    v11 = 0;
    v12 = v33;
    v13 = v44;
    while (1)
    {
      v37 = v11;
      v44 = v13;
      v41 = *(v12 - 3);
      v14 = *(v12 - 2);
      v42 = *(v12 - 1);
      v28 = v12;
      LOBYTE(v17) = *v12;
      v15 = v43;
      v16 = *(v43 + 16);
      v14;
      v17 = v17;
      v45 = v17;
      if (v16)
      {
        v14;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v42, v17);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v14);
        if (v19)
        {
          v20 = *(*(v15 + 56) + v18);
          v14;
          v27 = &type metadata for UInt8;
          LOBYTE(v26) = v20;
          outlined init with take of Any(&v26, v36);
          v21 = v44;
          v22 = v37;
          v23 = v42;
          v17 = v45;
          goto LABEL_14;
        }

        v14;
        v21 = v44;
        v23 = v42;
        v17 = v45;
      }

      else
      {
        v24 = v42;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v42, v17);
        v21 = v44;
        v23 = v24;
      }

      memset(v36, 0, sizeof(v36));
      v22 = v37;
LABEL_14:
      if (__OFADD__(v22, v29))
      {
        BUG();
      }

      v25 = v23;
      v30(v36, v41, v14, v23, v17, v38, v22 + v29);
      v13 = v21;
      if (v21)
      {
        v44 = v21;
        v14;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v25, v45);
        v43;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
        return v40;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
      v14;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v25, v45);
      v12 = v28 + 32;
      v11 = v22 + 1;
      if (v39 == v11)
      {
        v44 = 0;
        v43;
        v6 = v40;
        result = v40;
        v8 = v35;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v30 = a4;
  v44 = v4;
  v31 = v5;
  v29 = a3;
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  result = Column.count.getter(v8);
  v32 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v39 = *(a2 + 16);
    v33 = (a2 + 56);
    v10 = 0;
    v40 = a2;
    v34 = a1;
    v35 = v8;
    while (1)
    {
      v38 = v10;
      Column.subscript.getter(v10, v8);
      v43 = *&v36[0];
      if (!*&v36[0])
      {
        v43 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int32, &protocol witness table for String);
      }

      if (v39)
      {
        break;
      }

      result = v43;
LABEL_19:
      v10 = v38 + 1;
      if (v38 + 1 == v32)
      {
        return result;
      }
    }

    v6;
    v11 = 0;
    v12 = v33;
    v13 = v44;
    while (1)
    {
      v37 = v11;
      v44 = v13;
      v41 = *(v12 - 3);
      v14 = *(v12 - 2);
      v42 = *(v12 - 1);
      v28 = v12;
      LOBYTE(v17) = *v12;
      v15 = v43;
      v16 = *(v43 + 16);
      v14;
      v17 = v17;
      v45 = v17;
      if (v16)
      {
        v14;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v42, v17);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v14);
        if (v19)
        {
          v20 = *(*(v15 + 56) + 4 * v18);
          v14;
          v27 = &type metadata for Int32;
          LODWORD(v26) = v20;
          outlined init with take of Any(&v26, v36);
          v21 = v44;
          v22 = v37;
          v23 = v42;
          v17 = v45;
          goto LABEL_14;
        }

        v14;
        v21 = v44;
        v23 = v42;
        v17 = v45;
      }

      else
      {
        v24 = v42;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v42, v17);
        v21 = v44;
        v23 = v24;
      }

      memset(v36, 0, sizeof(v36));
      v22 = v37;
LABEL_14:
      if (__OFADD__(v22, v29))
      {
        BUG();
      }

      v25 = v23;
      v30(v36, v41, v14, v23, v17, v38, v22 + v29);
      v13 = v21;
      if (v21)
      {
        v44 = v21;
        v14;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v25, v45);
        v43;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
        return v40;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
      v14;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v25, v45);
      v12 = v28 + 32;
      v11 = v22 + 1;
      if (v39 == v11)
      {
        v44 = 0;
        v43;
        v6 = v40;
        result = v40;
        v8 = v35;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v33 = a4;
  v48 = v4;
  v34 = v5;
  v32 = a3;
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  result = Column.count.getter(v8);
  v36 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v42 = *(a2 + 16);
    v37 = (a2 + 56);
    v10 = 0;
    v43 = a2;
    v38 = a1;
    v39 = v8;
    while (1)
    {
      v41 = v10;
      Column.subscript.getter(v10, v8);
      v11 = *&v31[0];
      if (!*&v31[0])
      {
        v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
      }

      if (v42)
      {
        break;
      }

      result = v11;
LABEL_19:
      v10 = v41 + 1;
      if (v41 + 1 == v36)
      {
        return result;
      }
    }

    v46 = v11;
    v6;
    v44 = 0;
    v12 = v37;
    v13 = v48;
    while (1)
    {
      v48 = v13;
      v47 = *(v12 - 3);
      v14 = *(v12 - 1);
      LOBYTE(v16) = *v12;
      v15 = *(v46 + 16);
      v45 = *(v12 - 2);
      v45;
      v16 = v16;
      v49 = v16;
      if (v15)
      {
        v17 = v45;
        v45;
        v40 = v14;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v14, v16);
        v18 = v46;
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v17);
        if (v20)
        {
          v35 = *(*(v18 + 56) + 8 * v19);
          v21 = v45;
          v45;
          v30 = &type metadata for Double;
          *&v29 = v35;
          outlined init with take of Any(&v29, v31);
          v22 = v48;
          v23 = v40;
          v16 = v49;
          v24 = v21;
          goto LABEL_14;
        }

        v25 = v45;
        v45;
        v22 = v48;
        v23 = v40;
        v16 = v49;
        v24 = v25;
      }

      else
      {
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v14, v16);
        v22 = v48;
        v23 = v14;
        v24 = v45;
      }

      memset(v31, 0, sizeof(v31));
LABEL_14:
      v26 = v47;
      if (__OFADD__(v44, v32))
      {
        BUG();
      }

      v47 = v12;
      v27 = v24;
      v28 = v23;
      v33(v31, v26, v24, v23, v16, v41, v44 + v32);
      v13 = v22;
      if (v22)
      {
        v48 = v22;
        v27;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v49);
        v46;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for Any?);
        return v43;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for Any?);
      v27;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v49);
      v12 = v47 + 32;
      if (v42 == ++v44)
      {
        v48 = 0;
        v46;
        v6 = v43;
        result = v43;
        v8 = v39;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v33 = a4;
  v48 = v4;
  v34 = v5;
  v32 = a3;
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  result = Column.count.getter(v8);
  v35 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v41 = *(a2 + 16);
    v36 = (a2 + 56);
    v10 = 0;
    v42 = a2;
    v37 = a1;
    v38 = v8;
    while (1)
    {
      v40 = v10;
      Column.subscript.getter(v10, v8);
      v11 = *&v31[0];
      if (!*&v31[0])
      {
        v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
      }

      if (v41)
      {
        break;
      }

      result = v11;
LABEL_19:
      v10 = v40 + 1;
      if (v40 + 1 == v35)
      {
        return result;
      }
    }

    v46 = v11;
    v6;
    v44 = 0;
    v12 = v36;
    v13 = v48;
    while (1)
    {
      v48 = v13;
      v47 = *(v12 - 3);
      v14 = *(v12 - 1);
      LOBYTE(v16) = *v12;
      v15 = *(v46 + 16);
      v45 = *(v12 - 2);
      v45;
      v16 = v16;
      v49 = v16;
      if (v15)
      {
        v17 = v45;
        v45;
        v39 = v14;
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v14, v16);
        v18 = v46;
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v17);
        if (v20)
        {
          v43 = *(*(v18 + 56) + 4 * v19);
          v21 = v45;
          v45;
          v30 = &type metadata for Float;
          LODWORD(v29) = v43;
          outlined init with take of Any(&v29, v31);
          v22 = v48;
          v23 = v39;
          v16 = v49;
          v24 = v21;
          goto LABEL_14;
        }

        v25 = v45;
        v45;
        v22 = v48;
        v23 = v39;
        v16 = v49;
        v24 = v25;
      }

      else
      {
        outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v14, v16);
        v22 = v48;
        v23 = v14;
        v24 = v45;
      }

      memset(v31, 0, sizeof(v31));
LABEL_14:
      v26 = v47;
      if (__OFADD__(v44, v32))
      {
        BUG();
      }

      v47 = v12;
      v27 = v24;
      v28 = v23;
      v33(v31, v26, v24, v23, v16, v40, v44 + v32);
      v13 = v22;
      if (v22)
      {
        v48 = v22;
        v27;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v49);
        v46;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for Any?);
        return v42;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for Any?);
      v27;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v49);
      v12 = v47 + 32;
      if (v41 == ++v44)
      {
        v48 = 0;
        v46;
        v6 = v42;
        result = v42;
        v8 = v38;
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v35 = a4;
  v50 = v4;
  v36 = v5;
  v34 = a3;
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  result = Column.count.getter(v8);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v10 = result;
    v45 = *(a2 + 16);
    v37 = (a2 + 56);
    v11 = 0;
    v46 = a2;
    v38 = a1;
    v39 = v8;
    v40 = result;
    while (1)
    {
      v44 = v11;
      Column.subscript.getter(v11, v8);
      v51 = *&v41[0];
      if (!*&v41[0])
      {
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
        v51 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v12, &protocol witness table for String);
      }

      if (v45)
      {
        break;
      }

      result = v51;
LABEL_21:
      v11 = v44 + 1;
      if (v44 + 1 == v10)
      {
        return result;
      }
    }

    v6;
    v48 = 0;
    v13 = v37;
    while (1)
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = v51;
      v18 = *(v51 + 16) == 0;
      v32 = v13;
      v19 = *v13;
      v49 = v16;
      v47 = v19;
      v31 = v14;
      if (v18)
      {
        break;
      }

      v33 = v15;
      swift_bridgeObjectRetain_n(v15, 2);
      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v16, v19);
      v20 = v33;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v33);
      if (v22)
      {
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v17 + 56) + 32 * v21, &v42, &demangling cache variable for type metadata for Any?);
      }

      else
      {
        v42 = 0;
        *&v43 = 0;
        *(&v43 + 1) = 2;
      }

      v20;
      v24 = v49;
      if (*(&v43 + 1) == 2)
      {
        goto LABEL_14;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
      v25 = swift_allocObject(&unk_3902C0, 48, 7);
      *&v29 = v25;
      v26 = v43;
      *(v25 + 16) = v42;
      *(v25 + 32) = v26;
      outlined init with take of Any(&v29, v41);
LABEL_16:
      v27 = v47;
      if (__OFADD__(v48, v34))
      {
        BUG();
      }

      v28 = v50;
      v35(v41, v31, v20, v24, v47, v44, v48 + v34);
      v50 = v28;
      if (v28)
      {
        v20;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, v27);
        v51;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for Any?);
        return v46;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for Any?);
      v20;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v49, v27);
      v13 = v32 + 32;
      if (v45 == ++v48)
      {
        v51;
        v6 = v46;
        result = v46;
        v8 = v39;
        v10 = v40;
        goto LABEL_21;
      }
    }

    v42 = 0;
    *&v43 = 0;
    *(&v43 + 1) = 2;
    v23 = v15;
    v15;
    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v16, v19);
    v24 = v16;
    v20 = v23;
LABEL_14:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, &demangling cache variable for type metadata for Any??);
    memset(v41, 0, sizeof(v41));
    goto LABEL_16;
  }

  return result;
}

uint64_t specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7)
{
  v114 = v7;
  v110._object = v8;
  *&v111 = a6;
  v115 = a4;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v107, &demangling cache variable for type metadata for Any?);
  if (!*(&v108 + 1))
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v107, &demangling cache variable for type metadata for Any?);
  }

  outlined init with take of Any(&v107, &v102);
  switch(a5)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
      specialized FeatureMatrixBuilder.fillArray(_:descriptor:size:row:column:)(&v102, a2, a3, v115, a5, v115, v111, a7, &demangling cache variable for type metadata for FeatureMatrixBuilder<Float>, specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:));
      return __swift_destroy_boxed_opaque_existential_1Tm(&v102);
    case 4u:
      outlined init with copy of Any(&v102, &v107);
      v35 = v115;
      v115;
      if (!swift_dynamicCast(&v104, &v107, &type metadata for Any + 8, &type metadata for String, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v35, 4);
        v43 = a2;
        v44 = a3;
        *&v107 = 0;
        *(&v107 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v45._object = "', but got shape " + 0x8000000000000000;
        v45._countAndFlagsBits = 0xD000000000000024;
        goto LABEL_34;
      }

      v112 = *(&v104 + 1);
      v101 = *(v35 + 16);
      if (v101)
      {
        v110._countAndFlagsBits = v104;
        v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
        v110._object = v110._object + *(v36 + 44);
        v37 = (v115 + 40);
        v38 = 0;
        do
        {
          v39 = v38 + a7;
          if (__OFADD__(v38, a7))
          {
            BUG();
          }

          v40 = 1065353216;
          if (v110._countAndFlagsBits ^ *(v37 - 1) | v112 ^ *v37)
          {
            v40 = 1065353216;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)(*(v37 - 1), *v37, v110._countAndFlagsBits, v112, 0) & 1) == 0)
            {
              v40 = 0;
            }
          }

          LODWORD(v113) = v40;
          ++v38;
          v41 = specialized DenseMatrix.subscript.modify(&v107, v111, v39);
          *v42 = v113;
          (v41)(&v107, 0);
          v37 += 2;
        }

        while (v101 != v38);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v102);
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v115, 4);
      return v112;
    case 5u:
      outlined init with copy of Any(&v102, &v107);
      v12 = v115;
      v115;
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      if (!swift_dynamicCast(&v104, &v107, &type metadata for Any + 8, v13, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v12, 5);
        v43 = a2;
        v44 = a3;
        *&v107 = 0;
        *(&v107 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(66);
        v45._object = "values for feature '" + 0x8000000000000000;
        v45._countAndFlagsBits = 0xD000000000000028;
        goto LABEL_34;
      }

      v14 = v104;
      v98 = *(v12 + 16);
      if (v98)
      {
        v15 = (v12 + 56);
        v113 = 0;
        v100 = v104;
        while (1)
        {
          v16 = *(v15 - 3);
          v17 = *(v15 - 2);
          v18 = *(v15 - 1);
          v19 = *(v14 + 16) == 0;
          v97 = v15;
          v20 = *v15;
          v110._countAndFlagsBits = v16;
          v112 = v17;
          LODWORD(v101) = v20;
          if (v19)
          {
            v108 = 0;
            v107 = 0;
            v17;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v18, v20);
            v27 = v18;
          }

          else
          {
            v21 = v17;
            v22 = v16;
            swift_bridgeObjectRetain_n(v21, 2);
            v99 = v18;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v18, v20);
            v23 = v22;
            v24 = v112;
            v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v112);
            if (v26)
            {
              outlined init with copy of Any(*(v14 + 56) + 32 * v25, &v107);
            }

            else
            {
              v108 = 0;
              v107 = 0;
            }

            v24;
            v27 = v99;
          }

          if (__OFADD__(v113, a7))
          {
            BUG();
          }

          v28 = v112;
          v29 = v114;
          specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(&v107, v110._countAndFlagsBits, v112, v27, v101, v111, v113 + a7);
          v28;
          v114 = v29;
          if (v29)
          {
            break;
          }

          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v101);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v107, &demangling cache variable for type metadata for Any?);
          v15 = v97 + 32;
          v113 = (v113 + 1);
          v14 = v100;
          if (v98 == v113)
          {
            v100;
            v12 = v115;
            goto LABEL_42;
          }
        }

        v100;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v27, v101);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v107, &demangling cache variable for type metadata for Any?);
        v71 = v115;
      }

      else
      {
        v104;
LABEL_42:
        v71 = v12;
      }

      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v71, 5);
      goto LABEL_52;
    case 6u:
      if (v115)
      {
        outlined init with copy of Any(&v102, v96);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
        if (!swift_dynamicCast(&v104, v96, &type metadata for Any + 8, v30, 6))
        {
          v105 = 0;
          v104 = 0;
          v106 = 0;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v104, &demangling cache variable for type metadata for BinaryInteger?);
          outlined init with copy of Any(&v102, v96);
          v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
          if (!swift_dynamicCast(&v104, v96, &type metadata for Any + 8, v31, 6))
          {
            v32 = 0.0;
            v105 = 0;
            v104 = 0;
            v106 = 0;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v104, &demangling cache variable for type metadata for BinaryFloatingPoint?);
            outlined init with copy of Any(&v102, &v107);
            v33 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            if (swift_dynamicCast(&v104, &v107, &type metadata for Any + 8, v33, 6))
            {
              v34 = v104;
              [v104 floatValue];
              goto LABEL_51;
            }

LABEL_54:
            v43 = a2;
            v44 = a3;
            *&v107 = 0;
            *(&v107 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(63);
            v45._object = "sessionDirectory" + 0x8000000000000000;
            v45._countAndFlagsBits = 0xD000000000000025;
LABEL_34:
            String.append(_:)(v45);
            v44;
            v46._countAndFlagsBits = v43;
            v46._object = v44;
            String.append(_:)(v46);
            v44;
            v46._countAndFlagsBits = 0x6720747562202C27;
            v46._object = 0xEB0000000020746FLL;
            String.append(_:)(v46);
            v47 = v103;
            v48 = __swift_project_boxed_opaque_existential_0Tm(&v102, v103);
            DynamicType = swift_getDynamicType(v48, v47, 1);
            v50 = _typeName(_:qualified:)(DynamicType, 0);
            v52 = v51;
            v46._countAndFlagsBits = v50;
            v46._object = v51;
            String.append(_:)(v46);
            v52;
            v46._countAndFlagsBits = 0x20776F7220746120;
            v46._object = 0xE800000000000000;
            String.append(_:)(v46);
            *&v104 = v111;
            v53 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            v55 = v54;
            v46._countAndFlagsBits = v53;
            v46._object = v54;
            String.append(_:)(v46);
            v55;
            v46._countAndFlagsBits = 46;
            v46._object = 0xE100000000000000;
            String.append(_:)(v46);
            v111 = v107;
            v46._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v46._object, 0, 0);
            *v56 = v111;
            *(v56 + 16) = 0;
            *(v56 + 32) = 0;
            *(v56 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v46._object);
            v57 = &v102;
            return __swift_destroy_boxed_opaque_existential_1Tm(v57);
          }

          goto LABEL_44;
        }
      }

      else
      {
        outlined init with copy of Any(&v102, v96);
        v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
        if (!swift_dynamicCast(&v104, v96, &type metadata for Any + 8, v58, 6))
        {
          v105 = 0;
          v104 = 0;
          v106 = 0;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v104, &demangling cache variable for type metadata for BinaryInteger?);
          outlined init with copy of Any(&v102, v96);
          v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
          if (!swift_dynamicCast(&v104, v96, &type metadata for Any + 8, v72, 6))
          {
            v105 = 0;
            v104 = 0;
            v106 = 0;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v104, &demangling cache variable for type metadata for BinaryFloatingPoint?);
            outlined init with copy of Any(&v102, &v107);
            v86 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            if (swift_dynamicCast(&v104, &v107, &type metadata for Any + 8, v86, 6))
            {
              v34 = v104;
              v32 = [v104 integerValue];
LABEL_51:
              *&v113 = v32;
              v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
              v88 = v110._object + *(v87 + 44);
              v89 = specialized DenseMatrix.subscript.modify(&v107, v111, a7);
              *v90 = v113;
              (v89)(&v107, 0);

LABEL_52:
              v84 = &v102;
              return __swift_destroy_boxed_opaque_existential_1Tm(v84);
            }

            goto LABEL_54;
          }

LABEL_44:
          outlined init with take of TabularRegressionTask(&v104, &v107);
          v73 = *(&v108 + 1);
          v74 = v109;
          v75 = __swift_project_boxed_opaque_existential_0Tm(&v107, *(&v108 + 1));
          v76 = *(v73 - 8);
          v77 = *(v76 + 64);
          v78 = alloca(v77);
          v79 = alloca(v77);
          (*(v76 + 16))(&v95, v75, v73);
          specialized BinaryFloatingPoint.init<A>(_:)(&v95, v73, v74);
          LODWORD(v113) = 0;
          v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
          v81 = v110._object + *(v80 + 44);
          v82 = specialized DenseMatrix.subscript.modify(&v104, v111, a7);
          *v83 = v113;
          (v82)(&v104, 0);
          __swift_destroy_boxed_opaque_existential_1Tm(&v102);
          v84 = &v107;
          return __swift_destroy_boxed_opaque_existential_1Tm(v84);
        }
      }

      outlined init with take of TabularRegressionTask(&v104, &v107);
      v59 = *(&v108 + 1);
      v60 = v109;
      v61 = __swift_project_boxed_opaque_existential_0Tm(&v107, *(&v108 + 1));
      v113 = &v95;
      v62 = *(v59 - 8);
      v63 = *(v62 + 64);
      v64 = alloca(v63);
      v65 = alloca(v63);
      v112 = v62;
      (*(v62 + 16))(&v95, v61, v59);
      v115 = v60;
      if (dispatch thunk of BinaryInteger.bitWidth.getter(v59, v60) >= 65)
      {
        v66 = lazy protocol witness table accessor for type Float and conformance Float();
        v67 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        static BinaryFloatingPoint<>._convert<A>(from:)(&v104, &v95, &type metadata for Float, v59, v66, v115, v67);
        (*(v112 + 8))(&v95, v59);
        v68 = *&v104;
LABEL_40:
        *&v115 = v68;
        goto LABEL_57;
      }

      v69 = v115;
      LOBYTE(v110._countAndFlagsBits) = dispatch thunk of static BinaryInteger.isSigned.getter(v59, v115);
      v70 = dispatch thunk of BinaryInteger._lowWord.getter(v59, v69);
      (*(v112 + 8))(&v95, v59);
      if (v110._countAndFlagsBits)
      {
        v68 = v70;
        goto LABEL_40;
      }

      if (v70 < 0)
      {
        v85 = ((v70 >> 1) | v70 & 1) + ((v70 >> 1) | v70 & 1);
      }

      else
      {
        v85 = v70;
      }

      *&v115 = v85;
LABEL_57:
      v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v92 = v110._object + *(v91 + 44);
      v93 = specialized DenseMatrix.subscript.modify(&v104, v111, a7);
      *v94 = v115;
      (v93)(&v104, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v102);
      v57 = &v107;
      return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }
}

uint64_t specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, __m128d a7, unint64_t a8)
{
  v115 = v8;
  v111._object = v9;
  *&v112 = a6;
  v113.i64[0] = a4;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v108, &demangling cache variable for type metadata for Any?);
  if (!*(&v109 + 1))
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v108, &demangling cache variable for type metadata for Any?);
  }

  outlined init with take of Any(&v108, &v103);
  switch(a5)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
      specialized FeatureMatrixBuilder.fillArray(_:descriptor:size:row:column:)(&v103, a2, a3, v113.i64[0], a5, v113.i64[0], v112, a8, &demangling cache variable for type metadata for FeatureMatrixBuilder<Double>, specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:), specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:));
      return __swift_destroy_boxed_opaque_existential_1Tm(&v103);
    case 4u:
      outlined init with copy of Any(&v103, &v108);
      v36 = v113.i64[0];
      v113.i8[0];
      if (!swift_dynamicCast(&v105, &v108, &type metadata for Any + 8, &type metadata for String, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v36, 4);
        v44 = a2;
        v45 = a3;
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v46._object = "', but got shape " + 0x8000000000000000;
        v46._countAndFlagsBits = 0xD000000000000024;
        goto LABEL_34;
      }

      v114 = *(&v105 + 1);
      v102 = *(v36 + 16);
      if (v102)
      {
        v111._countAndFlagsBits = v105;
        v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v111._object = v111._object + *(v37 + 44);
        v38 = (v113.i64[0] + 40);
        v39 = 0;
        do
        {
          v40 = v39 + a8;
          if (__OFADD__(v39, a8))
          {
            BUG();
          }

          v41 = 0x3FF0000000000000;
          if (v111._countAndFlagsBits ^ *(v38 - 1) | v114 ^ *v38)
          {
            v41 = 0x3FF0000000000000;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)(*(v38 - 1), *v38, v111._countAndFlagsBits, v114, 0) & 1) == 0)
            {
              v41 = 0;
            }
          }

          v116 = *&v41;
          ++v39;
          v42 = specialized DenseMatrix.subscript.modify(&v108, v112, v40);
          *v43 = v116;
          (v42)(&v108, 0);
          v38 += 2;
        }

        while (v102 != v39);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v103);
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v113.i64[0], 4);
      return v114;
    case 5u:
      outlined init with copy of Any(&v103, &v108);
      v13 = v113.i64[0];
      v113.i8[0];
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      if (!swift_dynamicCast(&v105, &v108, &type metadata for Any + 8, v14, 6))
      {
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v13, 5);
        v44 = a2;
        v45 = a3;
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(66);
        v46._object = "values for feature '" + 0x8000000000000000;
        v46._countAndFlagsBits = 0xD000000000000028;
        goto LABEL_34;
      }

      v15 = v105;
      v99 = *(v13 + 16);
      if (v99)
      {
        v16 = (v13 + 56);
        v116 = 0.0;
        v101 = v105;
        while (1)
        {
          v17 = *(v16 - 3);
          v18 = *(v16 - 2);
          v19 = *(v16 - 1);
          v20 = *(v15 + 16) == 0;
          v98 = v16;
          v21 = *v16;
          v111._countAndFlagsBits = v17;
          v114 = v18;
          LODWORD(v102) = v21;
          if (v20)
          {
            v109 = 0;
            v108 = 0;
            v18;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v19, v21);
            v28 = v19;
          }

          else
          {
            v22 = v18;
            v23 = v17;
            swift_bridgeObjectRetain_n(v22, 2);
            v100 = v19;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v19, v21);
            v24 = v23;
            v25 = v114;
            v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v114);
            if (v27)
            {
              outlined init with copy of Any(*(v15 + 56) + 32 * v26, &v108);
            }

            else
            {
              v109 = 0;
              v108 = 0;
            }

            v25;
            v28 = v100;
          }

          if (__OFADD__(*&v116, a8))
          {
            BUG();
          }

          v29 = v114;
          v30 = v115;
          specialized FeatureMatrixBuilder.fill(_:descriptor:row:column:)(&v108, v111._countAndFlagsBits, v114, v28, v102, v112, *&v116 + a8);
          v29;
          v115 = v30;
          if (v30)
          {
            break;
          }

          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v102);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v108, &demangling cache variable for type metadata for Any?);
          v16 = v98 + 32;
          ++*&v116;
          v15 = v101;
          if (v99 == *&v116)
          {
            v101;
            v13 = v113.i64[0];
            goto LABEL_41;
          }
        }

        v101;
        outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v28, v102);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v108, &demangling cache variable for type metadata for Any?);
        v71 = v113.i64[0];
      }

      else
      {
        v105;
LABEL_41:
        v71 = v13;
      }

      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v71, 5);
      goto LABEL_53;
    case 6u:
      if (v113.i64[0])
      {
        outlined init with copy of Any(&v103, v97);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
        if (!swift_dynamicCast(&v105, v97, &type metadata for Any + 8, v31, 6))
        {
          v106 = 0;
          v105 = 0;
          v107 = 0;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for BinaryInteger?);
          outlined init with copy of Any(&v103, v97);
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
          if (!swift_dynamicCast(&v105, v97, &type metadata for Any + 8, v32, 6))
          {
            v106 = 0;
            v105 = 0;
            v107 = 0;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for BinaryFloatingPoint?);
            outlined init with copy of Any(&v103, &v108);
            v33 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            if (swift_dynamicCast(&v105, &v108, &type metadata for Any + 8, v33, 6))
            {
              v34 = v105;
              [v105 floatValue];
              v35 = 0.0;
              goto LABEL_52;
            }

LABEL_55:
            v44 = a2;
            v45 = a3;
            *&v108 = 0;
            *(&v108 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(63);
            v46._object = "sessionDirectory" + 0x8000000000000000;
            v46._countAndFlagsBits = 0xD000000000000025;
LABEL_34:
            String.append(_:)(v46);
            v45;
            v47._countAndFlagsBits = v44;
            v47._object = v45;
            String.append(_:)(v47);
            v45;
            v47._countAndFlagsBits = 0x6720747562202C27;
            v47._object = 0xEB0000000020746FLL;
            String.append(_:)(v47);
            v48 = v104;
            v49 = __swift_project_boxed_opaque_existential_0Tm(&v103, v104);
            DynamicType = swift_getDynamicType(v49, v48, 1);
            v51 = _typeName(_:qualified:)(DynamicType, 0);
            v53 = v52;
            v47._countAndFlagsBits = v51;
            v47._object = v52;
            String.append(_:)(v47);
            v53;
            v47._countAndFlagsBits = 0x20776F7220746120;
            v47._object = 0xE800000000000000;
            String.append(_:)(v47);
            *&v105 = v112;
            v54 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            v56 = v55;
            v47._countAndFlagsBits = v54;
            v47._object = v55;
            String.append(_:)(v47);
            v56;
            v47._countAndFlagsBits = 46;
            v47._object = 0xE100000000000000;
            String.append(_:)(v47);
            v112 = v108;
            v47._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v47._object, 0, 0);
            *v57 = v112;
            *(v57 + 16) = 0;
            *(v57 + 32) = 0;
            *(v57 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v47._object);
            v58 = &v103;
            return __swift_destroy_boxed_opaque_existential_1Tm(v58);
          }

          goto LABEL_43;
        }

LABEL_36:
        outlined init with take of TabularRegressionTask(&v105, &v108);
        v60 = *(&v109 + 1);
        v61 = v110;
        v62 = __swift_project_boxed_opaque_existential_0Tm(&v108, *(&v109 + 1));
        v116 = COERCE_DOUBLE(&v96);
        v63 = *(v60 - 8);
        v64 = *(v63 + 64);
        v65 = alloca(v64);
        v66 = alloca(v64);
        v114 = v63;
        (*(v63 + 16))(&v96, v62, v60);
        v113.i64[0] = v61;
        if (dispatch thunk of BinaryInteger.bitWidth.getter(v60, v61) < 65)
        {
          v69 = v113.i64[0];
          LOBYTE(v111._countAndFlagsBits) = dispatch thunk of static BinaryInteger.isSigned.getter(v60, v113.i64[0]);
          v70 = dispatch thunk of BinaryInteger._lowWord.getter(v60, v69);
          (*(v114 + 8))(&v96, v60);
          if (v111._countAndFlagsBits)
          {
            a7.f64[0] = v70;
          }

          else
          {
            v86 = _mm_sub_pd(_mm_unpacklo_epi32(v70, xmmword_33D8B0), xmmword_33D8C0);
            a7 = _mm_hadd_pd(v86, v86);
          }
        }

        else
        {
          v67 = lazy protocol witness table accessor for type Double and conformance Double();
          v68 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
          static BinaryFloatingPoint<>._convert<A>(from:)(&v105, &v96, &type metadata for Double, v60, v67, v113.i64[0], v68);
          (*(v114 + 8))(&v96, v60);
          a7 = v105;
        }

        v113 = a7;
        v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
        v88 = v111._object + *(v87 + 44);
        v89 = specialized DenseMatrix.subscript.modify(&v105, v112, a8);
        *v90 = v113.i64[0];
        (v89)(&v105, 0);
        __swift_destroy_boxed_opaque_existential_1Tm(&v103);
        v58 = &v108;
        return __swift_destroy_boxed_opaque_existential_1Tm(v58);
      }

      outlined init with copy of Any(&v103, v97);
      v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryInteger);
      if (swift_dynamicCast(&v105, v97, &type metadata for Any + 8, v59, 6))
      {
        goto LABEL_36;
      }

      v106 = 0;
      v105 = 0;
      v107 = 0;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for BinaryInteger?);
      outlined init with copy of Any(&v103, v97);
      v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BinaryFloatingPoint);
      if (!swift_dynamicCast(&v105, v97, &type metadata for Any + 8, v72, 6))
      {
        v106 = 0;
        v105 = 0;
        v107 = 0;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for BinaryFloatingPoint?);
        outlined init with copy of Any(&v103, &v108);
        v91 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        if (swift_dynamicCast(&v105, &v108, &type metadata for Any + 8, v91, 6))
        {
          v34 = v105;
          v35 = [v105 integerValue];
LABEL_52:
          v116 = v35;
          v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
          v93 = v111._object + *(v92 + 44);
          v94 = specialized DenseMatrix.subscript.modify(&v108, v112, a8);
          *v95 = v116;
          (v94)(&v108, 0);

LABEL_53:
          v85 = &v103;
          return __swift_destroy_boxed_opaque_existential_1Tm(v85);
        }

        goto LABEL_55;
      }

LABEL_43:
      outlined init with take of TabularRegressionTask(&v105, &v108);
      v73 = *(&v109 + 1);
      v74 = v110;
      v75 = __swift_project_boxed_opaque_existential_0Tm(&v108, *(&v109 + 1));
      v76 = *(v73 - 8);
      v77 = *(v76 + 64);
      v78 = alloca(v77);
      v79 = alloca(v77);
      v80 = (*(v76 + 16))(&v96, v75, v73);
      v116 = specialized BinaryFloatingPoint.init<A>(_:)(&v96, v73, v74, v80);
      v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v82 = v111._object + *(v81 + 44);
      v83 = specialized DenseMatrix.subscript.modify(&v105, v112, a8);
      *v84 = v116;
      (v83)(&v105, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v103);
      v85 = &v108;
      return __swift_destroy_boxed_opaque_existential_1Tm(v85);
  }
}

void specialized FeatureMatrixBuilder.fillArray(_:descriptor:size:row:column:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8, uint64_t *a9, void (*a10)(uint64_t *, uint64_t, void, uint64_t, void, uint64_t, void *, uint64_t), void (*a11)(uint64_t *, uint64_t, void, uint64_t, void, uint64_t, void *, uint64_t), void (*a12)(uint64_t *, uint64_t, void, uint64_t, void, uint64_t, void *, uint64_t))
{
  v91 = v12;
  v92 = v13;
  v93 = a6;
  v96 = a5;
  v94 = a4;
  *&v90 = a3;
  v95._countAndFlagsBits = a2;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v79 = &v73;
  v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v82 = &v73;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v81 = &v73;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v78 = &v73;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v87 = *(v77 - 8);
  v25 = *(v87 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v80 = &v73;
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v76 = &v73;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v86 = &v73;
  v95._object = a1;
  outlined init with copy of Any(a1, v74);
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for any Collection<Self.Collection.Element == Int>);
  if (swift_dynamicCast(v75, v74, &type metadata for Any + 8, v36, 6))
  {
    outlined init with take of TabularRegressionTask(v75, &v83);
    v37 = v84;
    v95._object = v85;
    v38 = __swift_project_boxed_opaque_existential_0Tm(&v83, v84);
    v39 = __swift_instantiateConcreteTypeFromMangledName(a9);
    v40 = lazy protocol witness table accessor for type Int and conformance Int();
    FeatureMatrixBuilder.fillArray<A, B>(_:descriptor:size:row:column:)(v38, v95._countAndFlagsBits, v90, v94, v96, v93, a7, a8, v39, v37, &type metadata for Int, v95._object, v40);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(&v83);
    return;
  }

  outlined init with copy of Any(v95._object, v74);
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for any Collection<Self.Collection.Element == Float>);
  if (swift_dynamicCast(v75, v74, &type metadata for Any + 8, v41, 6))
  {
    outlined init with take of TabularRegressionTask(v75, &v83);
    v42 = v84;
    v95._object = v85;
    v43 = __swift_project_boxed_opaque_existential_0Tm(&v83, v84);
    v44 = __swift_instantiateConcreteTypeFromMangledName(a9);
    v45 = lazy protocol witness table accessor for type Float and conformance Float();
    v46 = &type metadata for Float;
LABEL_7:
    FeatureMatrixBuilder.fillArray<A, B>(_:descriptor:size:row:column:)(v43, v95._countAndFlagsBits, v90, v94, v96, v93, a7, a8, v44, v42, v46, v95._object, v45);
    goto LABEL_8;
  }

  outlined init with copy of Any(v95._object, v74);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for any Collection<Self.Collection.Element == Double>);
  if (swift_dynamicCast(v75, v74, &type metadata for Any + 8, v47, 6))
  {
    outlined init with take of TabularRegressionTask(v75, &v83);
    v42 = v84;
    v95._object = v85;
    v43 = __swift_project_boxed_opaque_existential_0Tm(&v83, v84);
    v44 = __swift_instantiateConcreteTypeFromMangledName(a9);
    v45 = lazy protocol witness table accessor for type Double and conformance Double();
    v46 = &type metadata for Double;
    goto LABEL_7;
  }

  outlined init with copy of Any(v95._object, &v83);
  v48 = v76;
  if (swift_dynamicCast(v76, &v83, &type metadata for Any + 8, v31, 6))
  {
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v31);
    v49 = v86;
    (*(v32 + 32))(v86, v48, v31);
    a10(v49, v95._countAndFlagsBits, v90, v94, v96, v93, a7, a8);
    (*(v32 + 8))(v86, v31);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v31);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v48, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
    outlined init with copy of Any(v95._object, &v83);
    v50 = v78;
    v51 = v77;
    if (swift_dynamicCast(v78, &v83, &type metadata for Any + 8, v77, 6))
    {
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      v52 = v80;
      (*(v87 + 32))(v80, v50, v51);
      a11(v52, v95._countAndFlagsBits, v90, v94, v96, v93, a7, a8);
      (*(v87 + 8))(v52, v51);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v51);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      outlined init with copy of Any(v95._object, &v83);
      v53 = v79;
      v54 = v89;
      if (swift_dynamicCast(v79, &v83, &type metadata for Any + 8, v89, 6))
      {
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
        v55 = v81;
        v56 = v54;
        v57 = v88;
        (*(v88 + 32))(v81, v53, v56);
        a12(v55, v95._countAndFlagsBits, v90, v94, v96, v93, a7, a8);
        (*(v57 + 8))(v55, v89);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v53, 1, 1, v54);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for MLShapedArray<Double>?);
        outlined init with copy of Any(v95._object, &v83);
        v58 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
        if (swift_dynamicCast(v75, &v83, &type metadata for Any + 8, v58, 6))
        {
          v59 = v75[0];
          v60 = v82;
          MLShapedArray.init(_:)(v59, &type metadata for Double, &protocol witness table for Double);
          a12(v60, v95._countAndFlagsBits, v90, v94, v96, v93, a7, a8);
          (*(v88 + 8))(v60, v89);
        }

        else
        {
          *&v83 = 0;
          *(&v83 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(75);
          v61._object = "g-point values for feature '" + 0x8000000000000000;
          v61._countAndFlagsBits = 0xD000000000000031;
          String.append(_:)(v61);
          v62 = v90;
          v90;
          v61._countAndFlagsBits = v95._countAndFlagsBits;
          v61._object = v62;
          String.append(_:)(v61);
          v62;
          v61._countAndFlagsBits = 0x6720747562202C27;
          v61._object = 0xEB0000000020746FLL;
          String.append(_:)(v61);
          v63 = *(v95._object + 3);
          v64 = __swift_project_boxed_opaque_existential_0Tm(v95._object, v63);
          DynamicType = swift_getDynamicType(v64, v63, 1);
          v66 = _typeName(_:qualified:)(DynamicType, 0);
          v68 = v67;
          v61._countAndFlagsBits = v66;
          v61._object = v67;
          String.append(_:)(v61);
          v68;
          v61._countAndFlagsBits = 0x20776F7220746120;
          v61._object = 0xE800000000000000;
          String.append(_:)(v61);
          v75[0] = a7;
          v69 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          v71 = v70;
          v61._countAndFlagsBits = v69;
          v61._object = v70;
          String.append(_:)(v61);
          v71;
          v61._countAndFlagsBits = 46;
          v61._object = 0xE100000000000000;
          String.append(_:)(v61);
          v90 = v83;
          v61._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v61._object, 0, 0);
          *v72 = v90;
          *(v72 + 16) = 0;
          *(v72 + 32) = 0;
          *(v72 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v61._object);
        }
      }
    }
  }
}

uint64_t specialized FeatureMatrixBuilder.fillArray<A>(_:descriptor:size:row:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7, uint64_t a8)
{
  v42 = v8;
  v41 = v9;
  *&v43 = a3;
  v44._countAndFlagsBits = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v37, v35);
  inited[2] = 1;
  inited[3] = 2;
  v44._object = a6;
  inited[4] = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v39 = a1;
  v12 = MLShapedArray.shape.getter(v40);
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  v12;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v44._object < 0)
    {
      BUG();
    }

    if (v44._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v41 += *(v15 + 44);
      v16 = 0;
      object = v44._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v43 = v16 + 1;
        v18 = swift_allocObject(v37, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v40, v19);
        v18;
        *&v44._countAndFlagsBits = SLODWORD(v36[0]);
        v20 = specialized DenseMatrix.subscript.modify(v36, a7, v16 + a8);
        *v21 = v44._countAndFlagsBits;
        (v20)(v36, 0);
        result = v43;
        v16 = v43;
      }

      while (object != v43);
    }
  }

  else
  {
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v38 = v44._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v43;
    v43;
    v22._countAndFlagsBits = v44._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v40);
    v28 = Array.description.getter(v27, &type metadata for Int);
    v30 = v29;
    v22._countAndFlagsBits = v28;
    v22._object = v29;
    String.append(_:)(v22);
    v27;
    v30;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v38 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v43 = v36[0];
    v22._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v22._object, 0, 0);
    *v34 = v43;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v22._object);
  }

  return result;
}

{
  v42 = v8;
  v41 = v9;
  *&v43 = a3;
  v44._countAndFlagsBits = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v37, v35);
  inited[2] = 1;
  inited[3] = 2;
  v44._object = a6;
  inited[4] = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v39 = a1;
  v12 = MLShapedArray.shape.getter(v40);
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  v12;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v44._object < 0)
    {
      BUG();
    }

    if (v44._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v41 += *(v15 + 44);
      v16 = 0;
      object = v44._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v43 = v16 + 1;
        v18 = swift_allocObject(v37, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v40, v19);
        v18;
        *&v44._countAndFlagsBits = SLODWORD(v36[0]);
        v20 = specialized DenseMatrix.subscript.modify(v36, a7, v16 + a8);
        *v21 = v44._countAndFlagsBits;
        (v20)(v36, 0);
        result = v43;
        v16 = v43;
      }

      while (object != v43);
    }
  }

  else
  {
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v38 = v44._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v43;
    v43;
    v22._countAndFlagsBits = v44._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v40);
    v28 = Array.description.getter(v27, &type metadata for Int);
    v30 = v29;
    v22._countAndFlagsBits = v28;
    v22._object = v29;
    String.append(_:)(v22);
    v27;
    v30;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v38 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v43 = v36[0];
    v22._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v22._object, 0, 0);
    *v34 = v43;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v22._object);
  }

  return result;
}

{
  v42 = v8;
  v41 = v9;
  *&v43 = a3;
  v44._countAndFlagsBits = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v37, v35);
  inited[2] = 1;
  inited[3] = 2;
  v44._object = a6;
  inited[4] = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v39 = a1;
  v12 = MLShapedArray.shape.getter(v40);
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  v12;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v44._object < 0)
    {
      BUG();
    }

    if (v44._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v41 += *(v15 + 44);
      v16 = 0;
      object = v44._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v43 = v16 + 1;
        v18 = swift_allocObject(v37, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v40, v19);
        v18;
        LODWORD(v44._countAndFlagsBits) = v36[0];
        v20 = specialized DenseMatrix.subscript.modify(v36, a7, v16 + a8);
        *v21 = v44._countAndFlagsBits;
        (v20)(v36, 0);
        result = v43;
        v16 = v43;
      }

      while (object != v43);
    }
  }

  else
  {
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v38 = v44._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v43;
    v43;
    v22._countAndFlagsBits = v44._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v40);
    v28 = Array.description.getter(v27, &type metadata for Int);
    v30 = v29;
    v22._countAndFlagsBits = v28;
    v22._object = v29;
    String.append(_:)(v22);
    v27;
    v30;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v38 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v43 = v36[0];
    v22._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v22._object, 0, 0);
    *v34 = v43;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v22._object);
  }

  return result;
}

{
  v43 = v8;
  v42 = v9;
  *&v44 = a3;
  v45._countAndFlagsBits = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v38, v36);
  inited[2] = 1;
  inited[3] = 2;
  v45._object = a6;
  inited[4] = a6;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v40 = a1;
  v12 = MLShapedArray.shape.getter(v41);
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  v12;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v45._object < 0)
    {
      BUG();
    }

    if (v45._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Float>);
      v42 += *(v15 + 44);
      v16 = 0;
      object = v45._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v44 = v16 + 1;
        v18 = swift_allocObject(v38, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v41, v19);
        v18;
        v20 = v37[0];
        *&v45._countAndFlagsBits = v20;
        v21 = specialized DenseMatrix.subscript.modify(v37, a7, v16 + a8);
        *v22 = v45._countAndFlagsBits;
        (v21)(v37, 0);
        result = v44;
        v16 = v44;
      }

      while (object != v44);
    }
  }

  else
  {
    v37[0] = 0.0;
    v37[1] = -2.681561585988519e154;
    _StringGuts.grow(_:)(84);
    v23._object = " elements at row " + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v23);
    v39 = v45._object;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v23._countAndFlagsBits = v24;
    v23._object = v25;
    String.append(_:)(v23);
    v26;
    v23._countAndFlagsBits = 0x656620726F66205DLL;
    v23._object = 0xEF27206572757461;
    String.append(_:)(v23);
    v27 = v44;
    v44;
    v23._countAndFlagsBits = v45._countAndFlagsBits;
    v23._object = v27;
    String.append(_:)(v23);
    v27;
    v23._object = "arrays with shape [" + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v23);
    v28 = MLShapedArray.shape.getter(v41);
    v29 = Array.description.getter(v28, &type metadata for Int);
    v31 = v30;
    v23._countAndFlagsBits = v29;
    v23._object = v30;
    String.append(_:)(v23);
    v28;
    v31;
    v23._countAndFlagsBits = 0x20776F7220746120;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v39 = a7;
    v32 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v34 = v33;
    v23._countAndFlagsBits = v32;
    v23._object = v33;
    String.append(_:)(v23);
    v34;
    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v44 = *v37;
    v23._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v23._object, 0, 0);
    *v35 = v44;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v23._object);
  }

  return result;
}

{
  v42 = v8;
  v41 = v9;
  *&v43 = a3;
  v44._countAndFlagsBits = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v37, v35);
  inited[2] = 1;
  inited[3] = 2;
  v44._object = a6;
  inited[4] = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v39 = a1;
  v12 = MLShapedArray.shape.getter(v40);
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  v12;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v44._object < 0)
    {
      BUG();
    }

    if (v44._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v41 += *(v15 + 44);
      v16 = 0;
      object = v44._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v43 = v16 + 1;
        v18 = swift_allocObject(v37, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v40, v19);
        v18;
        *&v44._countAndFlagsBits = *v36;
        v20 = specialized DenseMatrix.subscript.modify(v36, a7, v16 + a8);
        *v21 = v44._countAndFlagsBits;
        (v20)(v36, 0);
        result = v43;
        v16 = v43;
      }

      while (object != v43);
    }
  }

  else
  {
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v38 = v44._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v43;
    v43;
    v22._countAndFlagsBits = v44._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v40);
    v28 = Array.description.getter(v27, &type metadata for Int);
    v30 = v29;
    v22._countAndFlagsBits = v28;
    v22._object = v29;
    String.append(_:)(v22);
    v27;
    v30;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v38 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v43 = v36[0];
    v22._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v22._object, 0, 0);
    *v34 = v43;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v22._object);
  }

  return result;
}

{
  v42 = v8;
  v41 = v9;
  *&v43 = a3;
  v44._countAndFlagsBits = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v37, v35);
  inited[2] = 1;
  inited[3] = 2;
  v44._object = a6;
  inited[4] = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v39 = a1;
  v12 = MLShapedArray.shape.getter(v40);
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(inited, v12);
  v12;
  result = swift_setDeallocating(inited);
  if (v13)
  {
    if (v44._object < 0)
    {
      BUG();
    }

    if (v44._object)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureMatrixBuilder<Double>);
      v41 += *(v15 + 44);
      v16 = 0;
      object = v44._object;
      do
      {
        if (__OFADD__(v16, a8))
        {
          BUG();
        }

        *&v43 = v16 + 1;
        v18 = swift_allocObject(v37, 40, 7);
        v18[2] = 1;
        v18[3] = 2;
        v18[4] = v16;
        v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
        MLShapedArrayProtocol.subscript.getter(v18, v40, v19);
        v18;
        v44._countAndFlagsBits = *&v36[0];
        v20 = specialized DenseMatrix.subscript.modify(v36, a7, v16 + a8);
        *v21 = v44._countAndFlagsBits;
        (v20)(v36, 0);
        result = v43;
        v16 = v43;
      }

      while (object != v43);
    }
  }

  else
  {
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v22._object = " elements at row " + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v22);
    v38 = v44._object;
    v23 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v25 = v24;
    v22._countAndFlagsBits = v23;
    v22._object = v24;
    String.append(_:)(v22);
    v25;
    v22._countAndFlagsBits = 0x656620726F66205DLL;
    v22._object = 0xEF27206572757461;
    String.append(_:)(v22);
    v26 = v43;
    v43;
    v22._countAndFlagsBits = v44._countAndFlagsBits;
    v22._object = v26;
    String.append(_:)(v22);
    v26;
    v22._object = "arrays with shape [" + 0x8000000000000000;
    v22._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v22);
    v27 = MLShapedArray.shape.getter(v40);
    v28 = Array.description.getter(v27, &type metadata for Int);
    v30 = v29;
    v22._countAndFlagsBits = v28;
    v22._object = v29;
    String.append(_:)(v22);
    v27;
    v30;
    v22._countAndFlagsBits = 0x20776F7220746120;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v38 = a7;
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v22._countAndFlagsBits = v31;
    v22._object = v32;
    String.append(_:)(v22);
    v33;
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v43 = v36[0];
    v22._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v22._object, 0, 0);
    *v34 = v43;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v22._object);
  }

  return result;
}

void specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v3 = _mm_cvtepi8_epi64(256);
    v4 = 0;
    si128 = _mm_load_si128(&xmmword_33D700);
    v6 = _mm_xor_si128(_mm_shuffle_epi32((a2 - 1), 68), si128);
    v7 = _mm_cvtepi8_epi64(514);
    do
    {
      v8 = _mm_xor_si128(v3, si128);
      v9 = _mm_cmpgt_epi32(v8, v6);
      v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v6), 245), v9));
      if (~_mm_cvtsi128_si32(v10))
      {
        *(a3 + 8 * v4) = a1;
      }

      if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
      {
        *(a3 + 8 * v4 + 8) = a1;
      }

      v4 += 2;
      v3 = _mm_add_epi64(v3, v7);
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }
}

char specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v29 = v3;
  v5 = *v3;
  Hasher.init(_seed:)(*(*v3 + 40));
  v5;
  String.hash(into:)(v28, a2);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  v8 = v7 & v6;
  v9 = *(v5 + 8 * ((v7 & v6) >> 6) + 56);
  v10 = _bittest64(&v9, v8);
  v31 = a2;
  if (!v10)
  {
    v13 = a3;
    goto LABEL_5;
  }

  v11 = *(v5 + 48);
  v12 = *(v11 + 16 * v8);
  v30 = v11;
  if (a2 ^ v12 | a3 ^ *(v11 + 16 * v8 + 8))
  {
    v13 = a3;
    if (_stringCompareWithSmolCheck(_:_:expecting:)(v12, *(v11 + 16 * v8 + 8), a2, a3, 0))
    {
      goto LABEL_7;
    }

    v8 = v7 & (v8 + 1);
    v25 = *(v5 + 8 * (v8 >> 6) + 56);
    if (_bittest64(&v25, v8))
    {
      v26 = v30;
      while (v31 ^ *(v26 + 16 * v8) | v13 ^ *(v26 + 16 * v8 + 8) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v26 + 16 * v8), *(v26 + 16 * v8 + 8), v31, v13, 0) & 1) == 0)
      {
        v8 = v7 & (v8 + 1);
        v27 = *(v5 + 8 * (v8 >> 6) + 56);
        if (!_bittest64(&v27, v8))
        {
          goto LABEL_5;
        }
      }

      goto LABEL_7;
    }

LABEL_5:
    v5;
    v14 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v29);
    v28[0] = *v14;
    v13;
    v16 = isUniquelyReferenced_nonNull_native;
    v17 = v31;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v31, v13, v8, v16);
    *v14 = v28[0];
    v18 = v32;
    *v32 = v17;
    v18[1] = v13;
    return 1;
  }

  v13 = a3;
LABEL_7:
  v13;
  v5;
  v20 = *(v5 + 48);
  v21 = 16 * v8;
  v22 = *(v20 + v21);
  v23 = *(v20 + v21 + 8);
  v24 = v32;
  *v32 = v22;
  v24[1] = v23;
  v23;
  return 0;
}

{
  v4 = v3;
  v33 = a1;
  v6 = *v3;
  Hasher.init(_seed:)(*(*v3 + 40));
  v34 = a2;
  v32 = a3;
  if (a3)
  {
    Hasher._combine(_:)(1u);
    v6;
    a3;
    String.hash(into:)(v30, a2);
    a3;
  }

  else
  {
    Hasher._combine(_:)(0);
    v6;
  }

  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v6 + 32));
  v9 = v8 & v7;
  v10 = *(v6 + 8 * ((v8 & v7) >> 6) + 56);
  v11 = v6;
  v12 = v33;
  if (!_bittest64(&v10, v9))
  {
    v6;
    v20 = v12;
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
    v30[0] = *v4;
    v22 = v32;
    v32;
    v23 = isUniquelyReferenced_nonNull_native;
    v24 = v34;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v34, v22, v9, v23);
    *v4 = v30[0];
    *v20 = v24;
    v20[1] = v22;
    return 1;
  }

  v31 = v4;
  v13 = *(v6 + 48);
  v14 = v34;
  v15 = v32;
  while (1)
  {
    v16 = *(v13 + 16 * v9 + 8);
    if (v16)
    {
      break;
    }

    if (!v15)
    {
      goto LABEL_17;
    }

LABEL_12:
    v9 = v8 & (v9 + 1);
    v19 = *(v11 + 8 * (v9 >> 6) + 56);
    if (!_bittest64(&v19, v9))
    {
      v11;
      v20 = v33;
      v4 = v31;
      goto LABEL_15;
    }
  }

  if (!v15)
  {
    goto LABEL_12;
  }

  if (v14 ^ *(v13 + 16 * v9) | v15 ^ v16)
  {
    v17 = v11;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v13 + 16 * v9), v16, v34, v15, 0);
    v15 = v32;
    v11 = v17;
    v14 = v34;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v26 = v11;
  v15;
  v11 = v26;
LABEL_17:
  v27 = v11;
  v11;
  v28 = *(v27 + 48);
  v29 = *(v28 + 16 * v9 + 8);
  *v33 = *(v28 + 16 * v9);
  v29;
  return 0;
}

char specialized Set._Variant.insert(_:)(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v7 = *v3;
  Hasher.init(_seed:)(*(*v3 + 40));
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  v10 = v9 & v8;
  v11 = *(v7 + 8 * ((v9 & v8) >> 6) + 56);
  if (_bittest64(&v11, v10))
  {
    v12 = *(v7 + 48);
    do
    {
      v13 = *(v12 + 16 * v10);
      v14 = *(v12 + 16 * v10 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          v6 = v13;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v13 == v6)
      {
        result = 0;
        goto LABEL_13;
      }

      v10 = v9 & (v10 + 1);
      v15 = *(v7 + 8 * (v10 >> 6) + 56);
    }

    while (_bittest64(&v15, v10));
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
  v18 = *v4;
  specialized _NativeSet.insertNew(_:at:isUnique:)(v6, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v4 = v18;
  result = 1;
  v14 = a3;
LABEL_13:
  *a1 = v6;
  *(a1 + 8) = v14 & 1;
  return result;
}

char specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = static Hasher._hash(seed:_:)(*(v4 + 40), a2);
  v6 = ~(-1 << *(v4 + 32));
  v7 = v6 & v5;
  v8 = *(v4 + 8 * ((v6 & v5) >> 6) + 56);
  if (_bittest64(&v8, v7))
  {
    while (*(*(v4 + 48) + 8 * v7) != a2)
    {
      v7 = v6 & (v7 + 1);
      v9 = *(v4 + 8 * (v7 >> 6) + 56);
      if (!_bittest64(&v9, v7))
      {
        goto LABEL_4;
      }
    }

    result = 0;
  }

  else
  {
LABEL_4:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v12 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v3 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

char specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t *a2)
{
  v39 = a2;
  v34 = a1;
  v3 = type metadata accessor for URL(0);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v36 = &v29;
  v35 = v2;
  v7 = *v2;
  v8 = *(*v2 + 40);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v7;
  v40 = v3;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)(v8, v3, v9);
  v11 = v7;
  v31 = ~(-1 << *(v7 + 32));
  v12 = v31 & v10;
  v13 = *(v7 + 8 * ((v31 & v10) >> 6) + 56);
  if (_bittest64(&v13, v12))
  {
    v14 = v38;
    v37 = *(v38 + 16);
    v32 = *(v38 + 72);
    v33 = v11;
    v15 = v40;
    while (1)
    {
      v16 = v12 * v32;
      v17 = v36;
      v37(v36, v12 * v32 + *(v11 + 48), v15);
      v18 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      isUniquelyReferenced_nonNull_native = dispatch thunk of static Equatable.== infix(_:_:)(v17, v39, v15, v18);
      v19 = v14;
      v20 = *(v14 + 8);
      v20(v36, v15);
      if (isUniquelyReferenced_nonNull_native)
      {
        break;
      }

      v12 = v31 & (v12 + 1);
      v11 = v33;
      v21 = *(v33 + 8 * (v12 >> 6) + 56);
      v14 = v19;
      if (!_bittest64(&v21, v12))
      {
        v33;
        v22 = v35;
        v23 = v37;
        goto LABEL_7;
      }
    }

    v27 = v33;
    v33;
    v28 = v40;
    v20(v39, v40);
    v37(v34, *(v27 + 48) + v16, v28);
    return 0;
  }

  else
  {
    v7;
    v23 = *(v38 + 16);
    v22 = v35;
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v22);
    v24 = v36;
    v25 = v39;
    v23(v36, v39, v40);
    v30 = *v22;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v24, v12, isUniquelyReferenced_nonNull_native);
    *v22 = v30;
    (*(v38 + 32))(v34, v25, v40);
    return 1;
  }
}

char specialized Set._Variant.insert(_:)(void *a1, Swift::UInt a2, uint64_t a3, int a4)
{
  v34 = a1;
  v33 = v4;
  v7 = *v4;
  Hasher.init(_seed:)(*(*v4 + 40));
  v37 = a4;
  v36 = a3;
  v35 = a2;
  if (a4)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a2);
    v7;
  }

  else
  {
    Hasher._combine(_:)(0);
    v7;
    String.hash(into:)(v32, a2);
  }

  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  v10 = v9 & v8;
  v11 = *(v7 + 8 * ((v9 & v8) >> 6) + 56);
  if (!_bittest64(&v11, v10))
  {
    v13 = v36;
    v14 = v35;
    v15 = v37;
LABEL_16:
    v20 = v13;
    v21 = v14;
    v7;
    v22 = v33;
    LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native(*v33);
    v32[0] = *v22;
    outlined copy of MLRecommender.Identifier(v21, v20, v15);
    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v20, v15 & 1, v10, v36);
    *v22 = v32[0];
    v23 = v34;
    *v34 = v21;
    v23[1] = v20;
    *(v23 + 16) = v15 & 1;
    return 1;
  }

  v12 = *(v7 + 48);
  v13 = v36;
  v14 = v35;
  v15 = v37;
  while (1)
  {
    v16 = 24 * v10;
    v17 = *(v12 + 24 * v10);
    if (!*(v12 + 24 * v10 + 16))
    {
      break;
    }

    if ((v15 & 1) != 0 && v17 == v14)
    {
      v7;
      goto LABEL_18;
    }

LABEL_13:
    v10 = v9 & (v10 + 1);
    v19 = *(v7 + 8 * (v10 >> 6) + 56);
    if (!_bittest64(&v19, v10))
    {
      goto LABEL_16;
    }
  }

  if (v15)
  {
    goto LABEL_13;
  }

  if (v14 ^ v17 | v13 ^ *(v12 + v16 + 8))
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v17, *(v12 + v16 + 8), v14, v13, 0);
    v15 = v37;
    v14 = v35;
    v13 = v36;
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v25 = v13;
  v26 = v14;
  v7;
  outlined consume of MLRecommender.Identifier(v26, v25, 0);
LABEL_18:
  v27 = *(v7 + 48);
  v28 = *(v27 + 24 * v10);
  v29 = *(v27 + v16 + 8);
  v30 = *(v27 + v16 + 16);
  v31 = v34;
  *v34 = v28;
  v31[1] = v29;
  *(v31 + 16) = v30;
  outlined copy of MLRecommender.Identifier(v28, v29, v30);
  return 0;
}

char specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v30 = a1;
  v29 = v2;
  v3 = *v2;
  v4 = *(*v2 + 40);
  v32 = a2;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
  v7 = v6;
  Hasher.init(_seed:)(v4);
  v3;
  v8 = v3;
  String.hash(into:)(v28, v5);
  v9 = Hasher._finalize()();
  v7;
  v10 = ~(-1 << *(v8 + 32));
  v11 = v10 & v9;
  v12 = *(v8 + 8 * (v11 >> 6) + 56);
  if (_bittest64(&v12, v11))
  {
    v31 = v8;
    while (1)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v8 + 48) + 8 * v11));
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(v32);
      v18 = v17;
      if (!(v16 ^ v13 | v17 ^ v15))
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)(v13, v15, v16, v17, 0);
      v15;
      v18;
      if (v19)
      {
        goto LABEL_8;
      }

      v11 = v10 & (v11 + 1);
      v8 = v31;
      v20 = *(v31 + 8 * (v11 >> 6) + 56);
      if (!_bittest64(&v20, v11))
      {
        goto LABEL_6;
      }
    }

    v15;
    v18;
LABEL_8:
    v25 = v30;
    v26 = v31;

    v26;
    v27 = *(*(v26 + 48) + 8 * v11);
    *v25 = v27;
    v27;
    return 0;
  }

  else
  {
LABEL_6:
    v8;
    v21 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v29);
    v28[0] = *v21;
    v23 = v32;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v23, v11, isUniquelyReferenced_nonNull_native);
    *v21 = v28[0];
    *v30 = v23;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 1);
  if (!*(v3 + 16))
  {
    goto LABEL_40;
  }

  v41 = v1;
  v6 = 1 << *(v3 + 32);
  v43 = (v3 + 56);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v40 = (v6 + 63) >> 6;
  v44 = v3;
  v3;
  for (i = 0; ; i = v42)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v42 = i;
      v11 = v10 | (i << 6);
      goto LABEL_16;
    }

    v12 = __OFADD__(1, i);
    v13 = i + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v40)
    {
      break;
    }

    v14 = v43;
    j = v43[v13];
    if (j)
    {
      v16 = v13;
    }

    else
    {
      v16 = v13 + 1;
      if (v13 + 1 >= v40)
      {
        goto LABEL_34;
      }

      j = v43[v13 + 1];
      if (!j)
      {
        v16 = v13 + 2;
        if (v13 + 2 >= v40)
        {
LABEL_34:
          v3 = v44;
          v44;
          goto LABEL_36;
        }

        for (j = v43[v13 + 2]; !j; j = v43[v16])
        {
          v12 = __OFADD__(1, v16++);
          if (v12)
          {
            BUG();
          }

          if (v16 >= v40)
          {
            goto LABEL_34;
          }
        }
      }
    }

    _BitScanForward64(&v17, j);
    v8 = j & (j - 1);
    v11 = v17 | (v16 << 6);
    v42 = v16;
LABEL_16:
    v18 = *(v44 + 48);
    v19 = 16 * v11;
    v20 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    Hasher.init(_seed:)(*(v5 + 40));
    v38 = v20;
    v39 = v21;
    String.hash(into:)(v37, v20);
    v22 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v23 = v22 >> 6;
    v24 = ~*(v5 + 8 * (v22 >> 6) + 56) >> v22 << v22;
    if (v24)
    {
      _BitScanForward64(&v25, v24);
      v26 = v25 | v22 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - (-1 << *(v5 + 32))) >> 6;
      v28 = 0;
      do
      {
        v29 = v23 + 1;
        if (v23 + 1 == v27 && (v28 & 1) != 0)
        {
          BUG();
        }

        v23 = 0;
        if (v29 != v27)
        {
          v23 = v29;
        }

        v28 |= v29 == v27;
        v30 = *(v5 + 8 * v23 + 56);
      }

      while (v30 == -1);
      v31 = ~v30;
      v32 = 64;
      if (v31)
      {
        _BitScanForward64(&v32, v31);
      }

      v26 = v32 + (v23 << 6);
    }

    *(v5 + 8 * (v26 >> 6) + 56) |= 1 << v26;
    v33 = *(v5 + 48);
    v34 = 16 * v26;
    *(v33 + v34) = v38;
    *(v33 + v34 + 8) = v39;
    ++*(v5 + 16);
  }

  v3 = v44;
  v44;
  v14 = v43;
LABEL_36:
  v35 = 1 << *(v3 + 32);
  v2 = v41;
  if (v35 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v14);
  }

  else
  {
    *v14 = -1 << (1 << *(v3 + 32));
  }

  *(v3 + 16) = 0;
LABEL_40:
  result = v3;
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
  v5 = v4;
  v6 = v3;
  v7 = static _SetStorage.resize(original:capacity:move:)(v3, v5, 1);
  if (*(v6 + 16))
  {
    v8 = 1 << *(v6 + 32);
    v9 = ~(-1 << v8);
    if (v8 >= 64)
    {
      v9 = -1;
    }

    v10 = *(v6 + 56) & v9;
    v42 = (v6 + 56);
    v41 = (v8 + 63) >> 6;
    v11 = 0;
    v39 = v6;
    while (1)
    {
      if (v10)
      {
        _BitScanForward64(&v12, v10);
        v10 &= v10 - 1;
        v40 = v11;
        v13 = v12 | (v11 << 6);
      }

      else
      {
        v14 = __OFADD__(1, v11);
        v15 = v11 + 1;
        if (v14)
        {
          BUG();
        }

        if (v15 >= v41)
        {
LABEL_39:
          v37 = 1 << *(v6 + 32);
          if (v37 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v42);
          }

          else
          {
            *v42 = -1 << v37;
          }

          v2 = v1;
          *(v6 + 16) = 0;
          break;
        }

        i = v42[v15];
        if (i)
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 + 1;
          if (v15 + 1 >= v41)
          {
            goto LABEL_39;
          }

          i = v42[v15 + 1];
          if (!i)
          {
            v17 = v15 + 2;
            if (v15 + 2 >= v41)
            {
              goto LABEL_39;
            }

            i = v42[v15 + 2];
            if (!i)
            {
              v17 = v15 + 3;
              if (v15 + 3 >= v41)
              {
                goto LABEL_39;
              }

              for (i = v42[v15 + 3]; !i; i = v42[v17])
              {
                v14 = __OFADD__(1, v17++);
                if (v14)
                {
                  BUG();
                }

                if (v17 >= v41)
                {
                  goto LABEL_39;
                }
              }
            }
          }
        }

        _BitScanForward64(&v18, i);
        v10 = i & (i - 1);
        v13 = v18 | (v17 << 6);
        v40 = v17;
      }

      v19 = *(v6 + 48);
      v20 = 16 * v13;
      v21 = *(v19 + v20);
      v22 = *(v19 + v20 + 8);
      Hasher.init(_seed:)(*(v7 + 40));
      v43 = v22;
      if (v22 == 1)
      {
        v23 = v21;
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v23 = v21;
        Hasher._combine(_:)(v21);
      }

      v24 = Hasher._finalize()() & ~(-1 << *(v7 + 32));
      v25 = v24 >> 6;
      v26 = ~*(v7 + 8 * (v24 >> 6) + 56) >> v24 << v24;
      if (v26)
      {
        _BitScanForward64(&v27, v26);
        v28 = v27 | v24 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = (63 - (-1 << *(v7 + 32))) >> 6;
        v30 = 0;
        do
        {
          v31 = v25 + 1;
          if (v25 + 1 == v29 && (v30 & 1) != 0)
          {
            BUG();
          }

          v25 = 0;
          if (v31 != v29)
          {
            v25 = v31;
          }

          v30 |= v31 == v29;
          v32 = *(v7 + 8 * v25 + 56);
        }

        while (v32 == -1);
        v33 = ~v32;
        v34 = 64;
        if (v33)
        {
          _BitScanForward64(&v34, v33);
        }

        v28 = v34 + (v25 << 6);
      }

      *(v7 + 8 * (v28 >> 6) + 56) |= 1 << v28;
      v35 = *(v7 + 48);
      v36 = 16 * v28;
      *(v35 + v36) = v23;
      *(v35 + v36 + 8) = v43;
      ++*(v7 + 16);
      v6 = v39;
      v11 = v40;
    }
  }

  *v2 = v7;
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
  v5 = static _SetStorage.resize(original:capacity:move:)(v3, v4, 1);
  if (!*(v3 + 16))
  {
    goto LABEL_28;
  }

  v19 = v1;
  v6 = 1 << *(v3 + 32);
  v20 = (v3 + 56);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 56) & v7;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v11, v8);
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      goto LABEL_23;
    }

    v13 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v13 >= v9)
    {
      goto LABEL_24;
    }

    v14 = v20[v13];
    if (!v14)
    {
      break;
    }

    v15 = v10 + 1;
LABEL_22:
    _BitScanForward64(&v16, v14);
    v8 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v10 = v15;
LABEL_23:
    specialized _NativeSet._unsafeInsertNew(_:)(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8), v5);
  }

  v15 = v10 + 2;
  if (v10 + 2 >= v9)
  {
    goto LABEL_24;
  }

  v14 = v20[v13 + 1];
  if (v14)
  {
    goto LABEL_22;
  }

  v15 = v10 + 3;
  if (v10 + 3 >= v9)
  {
    goto LABEL_24;
  }

  v14 = v20[v13 + 2];
  if (v14)
  {
    goto LABEL_22;
  }

  v15 = v10 + 4;
  if (v10 + 4 >= v9)
  {
    goto LABEL_24;
  }

  v14 = v20[v13 + 3];
  if (v14)
  {
    goto LABEL_22;
  }

  while (v10 + 5 < v9)
  {
    v14 = *(v3 + 8 * v10++ + 96);
    if (v14)
    {
      v15 = v10 + 4;
      goto LABEL_22;
    }
  }

LABEL_24:

  v17 = 1 << *(v3 + 32);
  if (v17 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v17 + 63) >> 6, v20);
  }

  else
  {
    *v20 = -1 << (1 << *(v3 + 32));
  }

  v2 = v19;
  *(v3 + 16) = 0;
LABEL_28:

  *v2 = v5;
  return result;
}

{
  v32 = v1;
  v2 = *v1;
  v3 = *(*v1 + 24);
  if (v3 <= a1)
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int>);
  v4 = static _SetStorage.resize(original:capacity:move:)(v2, v3, 1);
  if (!*(v2 + 16))
  {

    v29 = v1;
    goto LABEL_41;
  }

  v5 = 1 << *(v2 + 32);
  v31 = -1 << v5;
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v34 = (v2 + 56);
  v7 = *(v2 + 56) & v6;
  v30 = 1 << *(v2 + 32);
  v33 = (v5 + 63) >> 6;
  v8 = 0;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v7 &= v7 - 1;
      v10 = v9 | (v8 << 6);
      goto LABEL_18;
    }

    v11 = __OFADD__(1, v8);
    v12 = v8 + 1;
    if (v11)
    {
      BUG();
    }

    if (v12 >= v33)
    {
      break;
    }

    i = v34[v12];
    if (i)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 + 1;
      if (v12 + 1 >= v33)
      {
        break;
      }

      i = v34[v12 + 1];
      if (!i)
      {
        v14 = v12 + 2;
        if (v12 + 2 >= v33)
        {
          break;
        }

        i = v34[v12 + 2];
        if (!i)
        {
          v14 = v12 + 3;
          if (v12 + 3 >= v33)
          {
            break;
          }

          for (i = v34[v12 + 3]; !i; i = v34[v14])
          {
            v11 = __OFADD__(1, v14++);
            if (v11)
            {
              BUG();
            }

            if (v14 >= v33)
            {
              goto LABEL_36;
            }
          }
        }
      }
    }

    _BitScanForward64(&v15, i);
    v7 = i & (i - 1);
    v10 = v15 | (v14 << 6);
    v8 = v14;
LABEL_18:
    v16 = *(*(v2 + 48) + 8 * v10);
    v17 = static Hasher._hash(seed:_:)(*(v4 + 40), v16) & ~(-1 << *(v4 + 32));
    v18 = v17 >> 6;
    v19 = ~*(v4 + 8 * (v17 >> 6) + 56) >> v17 << v17;
    if (v19)
    {
      _BitScanForward64(&v20, v19);
      v21 = v20 | v17 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = (63 - (-1 << *(v4 + 32))) >> 6;
      v23 = 0;
      do
      {
        v24 = v18 + 1;
        if (v18 + 1 == v22 && (v23 & 1) != 0)
        {
          BUG();
        }

        v18 = 0;
        if (v24 != v22)
        {
          v18 = v24;
        }

        v23 |= v24 == v22;
        v25 = *(v4 + 8 * v18 + 56);
      }

      while (v25 == -1);
      v26 = ~v25;
      v27 = 64;
      if (v26)
      {
        _BitScanForward64(&v27, v26);
      }

      v21 = v27 + (v18 << 6);
    }

    *(v4 + 8 * (v21 >> 6) + 56) |= 1 << v21;
    *(*(v4 + 48) + 8 * v21) = v16;
    ++*(v4 + 16);
  }

LABEL_36:
  if (v30 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v33, v34);
  }

  else
  {
    *v34 = v31;
  }

  v29 = v32;
  *(v2 + 16) = 0;

LABEL_41:
  *v29 = v4;
  return result;
}

{
  v2 = v1;
  v3 = a1;
  v43 = type metadata accessor for URL(0);
  v41 = *(v43 - 8);
  v4 = v41[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v44 = &v39;
  v7 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<URL>);
  v8 = v7;
  v9 = static _SetStorage.resize(original:capacity:move:)(v7, v3, 1);
  if (*(v8 + 16))
  {
    v42 = v2;
    v10 = 1 << *(v8 + 32);
    v49 = (v8 + 56);
    v11 = ~(-1 << v10);
    if (v10 >= 64)
    {
      v11 = -1;
    }

    v12 = *(v8 + 56) & v11;
    v48 = (v10 + 63) >> 6;

    v13 = 0;
    v47 = v8;
    v14 = v43;
    while (1)
    {
      if (v12)
      {
        _BitScanForward64(&v15, v12);
        v46 = (v12 - 1) & v12;
        v45 = v13;
        v16 = v15 | (v13 << 6);
      }

      else
      {
        v17 = __OFADD__(1, v13);
        v18 = v13 + 1;
        if (v17)
        {
          BUG();
        }

        if (v18 >= v48)
        {
LABEL_36:

          v37 = 1 << *(v8 + 32);
          v2 = v42;
          if (v37 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v49);
          }

          else
          {
            *v49 = -1 << v37;
          }

          *(v8 + 16) = 0;
          break;
        }

        i = v49[v18];
        if (i)
        {
          v20 = v18;
        }

        else
        {
          v20 = v18 + 1;
          if (v18 + 1 >= v48)
          {
            goto LABEL_36;
          }

          i = v49[v18 + 1];
          if (!i)
          {
            v20 = v18 + 2;
            if (v18 + 2 >= v48)
            {
              goto LABEL_36;
            }

            i = v49[v18 + 2];
            if (!i)
            {
              v20 = v18 + 3;
              if (v18 + 3 >= v48)
              {
                goto LABEL_36;
              }

              for (i = v49[v18 + 3]; !i; i = v49[v20])
              {
                v17 = __OFADD__(1, v20++);
                if (v17)
                {
                  BUG();
                }

                if (v20 >= v48)
                {
                  goto LABEL_36;
                }
              }
            }
          }
        }

        _BitScanForward64(&v21, i);
        v46 = i & (i - 1);
        v16 = v21 | (v20 << 6);
        v45 = v20;
      }

      v22 = v41[9];
      v23 = *(v8 + 48) + v22 * v16;
      v40 = v41[4];
      v40(v44, v23, v14);
      v24 = *(v9 + 40);
      v25 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)(v24, v14, v25) & ~(-1 << *(v9 + 32));
      v27 = v26 >> 6;
      v28 = ~*(v9 + 8 * (v26 >> 6) + 56) >> v26 << v26;
      if (v28)
      {
        _BitScanForward64(&v29, v28);
        v30 = v29 | v26 & 0xFFFFFFFFFFFFFFC0;
        v8 = v47;
      }

      else
      {
        v31 = (63 - (-1 << *(v9 + 32))) >> 6;
        v32 = 0;
        v8 = v47;
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
          v34 = *(v9 + 8 * v27 + 56);
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

      *(v9 + 8 * (v30 >> 6) + 56) |= 1 << v30;
      v40((*(v9 + 48) + v30 * v22), v44, v43);
      ++*(v9 + 16);
      v13 = v45;
      v12 = v46;
    }
  }

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
  v5 = v4;
  v6 = v3;
  v7 = static _SetStorage.resize(original:capacity:move:)(v3, v5, 1);
  if (*(v6 + 16))
  {
    v43 = v1;
    v8 = 1 << *(v6 + 32);
    v47 = (v6 + 56);
    v9 = ~(-1 << v8);
    if (v8 >= 64)
    {
      v9 = -1;
    }

    v10 = *(v6 + 56) & v9;
    v46 = (v8 + 63) >> 6;

    v11 = 0;
    v42 = v6;
    while (1)
    {
      if (v10)
      {
        _BitScanForward64(&v12, v10);
        v45 = (v10 - 1) & v10;
        v44 = v11;
        v13 = v12 | (v11 << 6);
      }

      else
      {
        v14 = __OFADD__(1, v11);
        v15 = v11 + 1;
        if (v14)
        {
          BUG();
        }

        if (v15 >= v46)
        {
LABEL_39:

          v38 = 1 << *(v6 + 32);
          v2 = v43;
          if (v38 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v47);
          }

          else
          {
            *v47 = -1 << (1 << *(v6 + 32));
          }

          *(v6 + 16) = 0;
          break;
        }

        i = v47[v15];
        if (i)
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 + 1;
          if (v15 + 1 >= v46)
          {
            goto LABEL_39;
          }

          i = v47[v15 + 1];
          if (!i)
          {
            v17 = v15 + 2;
            if (v15 + 2 >= v46)
            {
              goto LABEL_39;
            }

            i = v47[v15 + 2];
            if (!i)
            {
              v17 = v15 + 3;
              if (v15 + 3 >= v46)
              {
                goto LABEL_39;
              }

              for (i = v47[v15 + 3]; !i; i = v47[v17])
              {
                v14 = __OFADD__(1, v17++);
                if (v14)
                {
                  BUG();
                }

                if (v17 >= v46)
                {
                  goto LABEL_39;
                }
              }
            }
          }
        }

        _BitScanForward64(&v18, i);
        v45 = i & (i - 1);
        v13 = v18 | (v17 << 6);
        v44 = v17;
      }

      v19 = *(v6 + 48);
      v20 = 24 * v13;
      v21 = *(v19 + v20);
      v22 = *(v19 + v20 + 8);
      v23 = *(v19 + v20 + 16);
      Hasher.init(_seed:)(*(v7 + 40));
      v48 = v23;
      v41 = v21;
      if (v23)
      {
        v24 = v22;
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v21);
      }

      else
      {
        Hasher._combine(_:)(0);
        v24 = v22;
        String.hash(into:)(v40, v21);
      }

      v25 = Hasher._finalize()() & ~(-1 << *(v7 + 32));
      v26 = v25 >> 6;
      v27 = ~*(v7 + 8 * (v25 >> 6) + 56) >> v25 << v25;
      if (v27)
      {
        _BitScanForward64(&v28, v27);
        v29 = v28 | v25 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = (63 - (-1 << *(v7 + 32))) >> 6;
        v31 = 0;
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
          v33 = *(v7 + 8 * v26 + 56);
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

      v36 = 24 * v29;
      *(v7 + 8 * (v29 >> 6) + 56) |= 1 << v29;
      v37 = *(v7 + 48);
      *(v37 + v36) = v41;
      *(v37 + v36 + 8) = v24;
      *(v37 + v36 + 16) = v48;
      ++*(v7 + 16);
      v6 = v42;
      v11 = v44;
      v10 = v45;
    }
  }

  *v2 = v7;
  return result;
}

uint64_t *specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v36 = v1;
  v2 = *v1;
  v3 = *(*v1 + 24);
  if (v3 <= a1)
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<NSURLResourceKey>);
  v4 = static _SetStorage.resize(original:capacity:move:)(v2, v3, 1);
  if (*(v2 + 16))
  {
    v5 = 1 << *(v2 + 32);
    v41 = (v2 + 56);
    v6 = ~(-1 << v5);
    if (v5 >= 64)
    {
      v6 = -1;
    }

    v7 = *(v2 + 56) & v6;
    v40 = (v5 + 63) >> 6;
    v2;
    v8 = 0;
    v38 = v2;
    while (1)
    {
      if (v7)
      {
        _BitScanForward64(&v9, v7);
        v39 = (v7 - 1) & v7;
        v37 = v8;
        v10 = v9 | (v8 << 6);
      }

      else
      {
        v11 = __OFADD__(1, v8);
        v12 = v8 + 1;
        if (v11)
        {
          BUG();
        }

        if (v12 >= v40)
        {
LABEL_36:
          v2;
          v32 = 1 << *(v2 + 32);
          if (v32 > 63)
          {
            specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v32 + 63) >> 6, v41);
          }

          else
          {
            *v41 = -1 << v32;
          }

          *(v2 + 16) = 0;
          break;
        }

        i = v41[v12];
        if (i)
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 + 1;
          if (v12 + 1 >= v40)
          {
            goto LABEL_36;
          }

          i = v41[v12 + 1];
          if (!i)
          {
            v14 = v12 + 2;
            if (v12 + 2 >= v40)
            {
              goto LABEL_36;
            }

            i = v41[v12 + 2];
            if (!i)
            {
              v14 = v12 + 3;
              if (v12 + 3 >= v40)
              {
                goto LABEL_36;
              }

              for (i = v41[v12 + 3]; !i; i = v41[v14])
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
        v39 = i & (i - 1);
        v10 = v15 | (v14 << 6);
        v37 = v14;
      }

      v16 = *(v4 + 40);
      v35 = *(*(v2 + 48) + 8 * v10);
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(v35);
      v19 = v18;
      Hasher.init(_seed:)(v16);
      String.hash(into:)(v34, v17);
      v20 = Hasher._finalize()();
      v19;
      v21 = v20 & ~(-1 << *(v4 + 32));
      v22 = v21 >> 6;
      v23 = ~*(v4 + 8 * (v21 >> 6) + 56) >> v21 << v21;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
        v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
        v2 = v38;
        v7 = v39;
      }

      else
      {
        v26 = (63 - (-1 << *(v4 + 32))) >> 6;
        v27 = 0;
        v2 = v38;
        v7 = v39;
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
          v29 = *(v4 + 8 * v22 + 56);
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

      *(v4 + 8 * (v25 >> 6) + 56) |= 1 << v25;
      *(*(v4 + 48) + 8 * v25) = v35;
      ++*(v4 + 16);
      v8 = v37;
    }
  }

  v2;
  result = v36;
  *v36 = v4;
  return result;
}

uint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)(*(a3 + 40));
  if (a2)
  {
    Hasher._combine(_:)(1u);
    a2;
    String.hash(into:)(v8, a1);
    a2, a1;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();
  v5 = _HashTable.nextHole(atOrAfter:)(~(-1 << *(a3 + 32)) & v4, a3 + 56);
  *(a3 + 8 * (v5 >> 6) + 56) |= 1 << v5;
  v6 = *(a3 + 48);
  result = 16 * v5;
  *(v6 + result) = a1;
  *(v6 + result + 8) = a2;
  ++*(a3 + 16);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  v23 = v4;
  if ((a4 & (v8 > v7)) == 0)
  {
    v9 = v7 + 1;
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v9);
    }

    else
    {
      if (v8 > v7)
      {
        specialized _NativeSet.copy()();
        goto LABEL_12;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v9);
    }

    v10 = *v4;
    Hasher.init(_seed:)(*(*v4 + 40));
    String.hash(into:)(v22, a1);
    v11 = Hasher._finalize()();
    v12 = ~(-1 << *(v10 + 32));
    a3 = v12 & v11;
    v13 = *(v10 + 8 * ((v12 & v11) >> 6) + 56);
    if (_bittest64(&v13, a3))
    {
      v24 = v10;
      v14 = *(v10 + 48);
      do
      {
        if (!(a1 ^ *(v14 + 16 * a3) | a2 ^ *(v14 + 16 * a3 + 8)) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v14 + 16 * a3), *(v14 + 16 * a3 + 8), a1, a2, 0) & 1) != 0)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
          BUG();
        }

        a3 = v12 & (a3 + 1);
        v15 = *(v24 + 8 * (a3 >> 6) + 56);
      }

      while (_bittest64(&v15, a3));
    }
  }

LABEL_12:
  result = *v23;
  *(result + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(result + 48);
  v18 = 16 * a3;
  *(v17 + v18) = a1;
  *(v17 + v18 + 8) = a2;
  v19 = *(result + 16);
  v20 = __OFADD__(1, v19);
  v21 = v19 + 1;
  if (v20)
  {
    BUG();
  }

  *(result + 16) = v21;
  return result;
}

{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  v27 = v4;
  if ((a4 & (v9 > v8)) != 0)
  {
    goto LABEL_21;
  }

  v10 = v8 + 1;
  v28 = a1;
  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v10);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
LABEL_20:
      a1 = v28;
      goto LABEL_21;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10);
  }

  v11 = *v4;
  Hasher.init(_seed:)(*(*v4 + 40));
  if (a2)
  {
    Hasher._combine(_:)(1u);
    a2;
    String.hash(into:)(v26, v28);
    a2;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(v11 + 32));
  a3 = v13 & v12;
  v14 = *(v11 + 8 * ((v13 & v12) >> 6) + 56);
  if (!_bittest64(&v14, a3))
  {
    goto LABEL_20;
  }

  v15 = *(v11 + 48);
  a1 = v28;
  do
  {
    v16 = *(v15 + 16 * a3 + 8);
    if (v16)
    {
      if (a2)
      {
        if (!(a1 ^ *(v15 + 16 * a3) | a2 ^ v16) || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v15 + 16 * a3), v16, a1, a2, 0), a1 = v28, (v17 & 1) != 0))
        {
LABEL_24:
          v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v25);
          BUG();
        }
      }
    }

    else if (!a2)
    {
      goto LABEL_24;
    }

    a3 = v13 & (a3 + 1);
    v18 = *(v11 + 8 * (a3 >> 6) + 56);
  }

  while (_bittest64(&v18, a3));
LABEL_21:
  result = *v27;
  *(result + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = *(result + 48);
  v21 = 16 * a3;
  *(v20 + v21) = a1;
  *(v20 + v21 + 8) = a2;
  v22 = *(result + 16);
  v23 = __OFADD__(1, v22);
  v24 = v22 + 1;
  if (v23)
  {
    BUG();
  }

  *(result + 16) = v24;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt a1, char a2, unint64_t a3, unsigned __int8 a4)
{
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if ((a4 & (v7 > v6)) != 0)
  {
    goto LABEL_20;
  }

  v22 = a1;
  v8 = v6 + 1;
  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(v8);
LABEL_19:
      a1 = v22;
      goto LABEL_20;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8);
  }

  v9 = *v4;
  Hasher.init(_seed:)(*(*v4 + 40));
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v22);
  }

  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(v9 + 32));
  a3 = v11 & v10;
  v12 = *(v9 + 8 * ((v11 & v10) >> 6) + 56);
  if (!_bittest64(&v12, a3))
  {
    goto LABEL_19;
  }

  v13 = *(v9 + 48);
  a1 = v22;
  do
  {
    if (*(v13 + 16 * a3 + 8))
    {
      if (a2)
      {
        goto LABEL_23;
      }
    }

    else if ((a2 & 1) == 0 && *(v13 + 16 * a3) == v22)
    {
LABEL_23:
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v21);
      BUG();
    }

    a3 = v11 & (a3 + 1);
    v14 = *(v9 + 8 * (a3 >> 6) + 56);
  }

  while (_bittest64(&v14, a3));
LABEL_20:
  result = *v4;
  *(result + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(result + 48);
  v17 = 16 * a3;
  *(v16 + v17) = a1;
  *(v16 + v17 + 8) = a2 & 1;
  v18 = *(result + 16);
  v19 = __OFADD__(1, v18);
  v20 = v18 + 1;
  if (v19)
  {
    BUG();
  }

  *(result + 16) = v20;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if ((a3 & (v7 > v6)) == 0)
  {
    v8 = v6 + 1;
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v8);
    }

    else
    {
      if (v7 > v6)
      {
        specialized _NativeSet.copy()(v8);
        goto LABEL_10;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v8);
    }

    v9 = *v3;
    v10 = static Hasher._hash(seed:_:)(*(*v3 + 40), a1);
    v11 = ~(-1 << *(v9 + 32));
    a2 = v11 & v10;
    v12 = *(v9 + 8 * ((v11 & v10) >> 6) + 56);
    if (_bittest64(&v12, a2))
    {
      do
      {
        if (*(*(v9 + 48) + 8 * a2) == a1)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int);
          BUG();
        }

        a2 = v11 & (a2 + 1);
        v13 = *(v9 + 8 * (a2 >> 6) + 56);
      }

      while (_bittest64(&v13, a2));
    }
  }

LABEL_10:
  result = *v3;
  *(result + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(result + 48) + 8 * a2) = a1;
  v15 = *(result + 16);
  v16 = __OFADD__(1, v15);
  v17 = v15 + 1;
  if (v16)
  {
    BUG();
  }

  *(result + 16) = v17;
  return result;
}

{
  v30 = a1;
  v6 = type metadata accessor for URL(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  if ((a3 & (v11 > v10)) == 0)
  {
    v12 = v10 + 1;
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v12);
    }

    else
    {
      if (v11 > v10)
      {
        specialized _NativeSet.copy()(v12);
        goto LABEL_11;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v12);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    v15 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)(v14, v6, v15);
    v26 = ~(-1 << *(v13 + 32));
    a2 = v26 & v16;
    v17 = *(v13 + 8 * ((v26 & v16) >> 6) + 56);
    if (_bittest64(&v17, a2))
    {
      v27 = *(v31 + 16);
      v28 = *(v31 + 72);
      do
      {
        v27(&v25, *(v13 + 48) + a2 * v28, v6);
        v18 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v19 = dispatch thunk of static Equatable.== infix(_:_:)(&v25, v30, v6, v18);
        (*(v31 + 8))(&v25, v6);
        if (v19)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v6);
          BUG();
        }

        a2 = v26 & (a2 + 1);
        v20 = *(v13 + 8 * (a2 >> 6) + 56);
      }

      while (_bittest64(&v20, a2));
    }
  }

LABEL_11:
  v21 = *v29;
  *(v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  (*(v31 + 32))(*(v21 + 48) + *(v31 + 72) * a2, v30, v6);
  v22 = *(v21 + 16);
  v23 = __OFADD__(1, v22);
  result = v22 + 1;
  if (v23)
  {
    BUG();
  }

  *(v21 + 16) = result;
  return result;
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v34 = v3;
  if ((a3 & (v7 > v6)) == 0)
  {
    v8 = v6 + 1;
    v37 = a1;
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v8);
    }

    else
    {
      if (v7 > v6)
      {
        specialized _NativeSet.copy()();
LABEL_14:
        a1 = v37;
        goto LABEL_15;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v8);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(v37);
    v13 = v12;
    Hasher.init(_seed:)(v10);
    String.hash(into:)(v33, v11);
    v14 = Hasher._finalize()();
    v13;
    v35 = ~(-1 << *(v9 + 32));
    a2 = v35 & v14;
    v15 = *(v9 + 8 * (a2 >> 6) + 56);
    if (_bittest64(&v15, a2))
    {
      v36 = v9;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v9 + 48) + 8 * a2));
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v37);
      v21 = v20;
      if (v19 ^ v16 | v20 ^ v18)
      {
        for (i = v16; ; i = v25)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)(i, v18, v19, v21, 0);
          v18;
          v21;
          if (v23)
          {
            break;
          }

          a2 = v35 & (a2 + 1);
          v24 = *(v36 + 8 * (a2 >> 6) + 56);
          a1 = v37;
          if (!_bittest64(&v24, a2))
          {
            goto LABEL_15;
          }

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v36 + 48) + 8 * a2));
          v18 = v26;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
          v21 = v27;
          if (!(v19 ^ v25 | v27 ^ v18))
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        v18;
        v21;
      }

      v32 = type metadata accessor for NSURLResourceKey(0);
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v32);
      BUG();
    }

    goto LABEL_14;
  }

LABEL_15:
  result = *v34;
  *(result + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(result + 48) + 8 * a2) = a1;
  v29 = *(result + 16);
  v30 = __OFADD__(1, v29);
  v31 = v29 + 1;
  if (v30)
  {
    BUG();
  }

  *(result + 16) = v31;
  return result;
}