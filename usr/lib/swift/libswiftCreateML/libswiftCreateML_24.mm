void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a2;
  v9 = a1;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v8 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v8 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v8 <= v12)
  {
    v8 = *(a4 + 16);
  }

  if (v8)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v27 = a6;
    v13 = *(__swift_instantiateConcreteTypeFromMangledName(a6) - 8);
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    v16 = (v15 + 32) & ~v15;
    v17 = swift_allocObject(v26, v16 + v14 * v8, v15 | 7);
    v18 = _swift_stdlib_malloc_size(v17);
    if (!v14)
    {
      BUG();
    }

    v19 = v18 - v16;
    if (__OFSUB__(-v19, 1) && v14 == -1)
    {
      BUG();
    }

    v17[2] = v12;
    v17[3] = 2 * (v19 / v14);
    a6 = v27;
    v9 = a1;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledName(a6);
  v21 = *(*(v20 - 8) + 80);
  v22 = (v21 + 32) & ~v21;
  v23 = v17 + v22;
  v24 = a4 + v22;
  if (v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v24, v12, v23, a6);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v23, v24, v12, v20);
  }

  a4;
  return v17;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v6 = a6;
  v7 = a4;
  v8 = a2;
  v9 = a1;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v8 = *(v7 + 24) >> 1;
    }

    else
    {
      a3 = 0x4000000000000000;
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v8 = v11;
      }
    }
  }

  v12 = *(v7 + 16);
  if (v8 <= v12)
  {
    v8 = *(v7 + 16);
  }

  if (v8)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v29 = v6;
    v13 = *(v6(0) - 8);
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    v16 = (v15 + 32) & ~v15;
    v17 = v16 + v14 * v8;
    v18 = swift_allocObject(v28, v17, v15 | 7);
    v19 = _swift_stdlib_malloc_size(v18);
    if (!v14)
    {
      BUG();
    }

    v20 = v19 - v16;
    if (__OFSUB__(-v20, 1) && v14 == -1)
    {
      BUG();
    }

    v21 = v20 % v14;
    v18[2] = v12;
    v18[3] = 2 * (v20 / v14);
    v6 = v29;
    v9 = a1;
    v22 = (v29)(0, v17, v21, -v20);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
    v22 = (a6)(0, a2, a3, a4);
  }

  v23 = *(*(v22 - 8) + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = v18 + v24;
  v26 = v7 + v24;
  if (v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v26, v12, v25, v6);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v25, v26, v12, v22);
  }

  v7;
  return v18;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 8 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 8);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 8 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v13 + 4, a4 + 4, v10, v15);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 16 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 16);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v15 = 2 * v10;
    if (&a4[v15 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, v15 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v13 + 4, a4 + 4, v10, v16);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 40 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[5 * v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 40 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v13 + 4, a4 + 4, v10, v15);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 48 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 48);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[6 * v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 48 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v13 + 4, a4 + 4, v10, v15);
  }

  a4;
  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 24 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[3 * v10 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, 24 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v13 + 4, a4 + 4, v10, v15);
  }

  return v13;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = a6;
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 32 * v7 + 32, 7);
    v14 = _swift_stdlib_malloc_size(v13);
    a6 = v11;
    v13[2] = v10;
    v13[3] = 2 * ((v14 - 32) / 32);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v15 = 4 * v10;
    if (&a4[v15 + 4] <= v13 + 4 || v13 != a4)
    {
      memmove(v13 + 4, a4 + 4, v15 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v13 + 4, a4 + 4, v10, v16);
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t a6)
{
  v8 = a2;
  if (a3)
  {
    v10 = *(a4 + 3);
    if ((v10 >> 1) >= a2)
    {
      v8 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v8 = v11;
      }
    }
  }

  v12 = *(a4 + 2);
  if (v8 <= v12)
  {
    v8 = *(a4 + 2);
  }

  if (v8)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 24 * v8 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v15 / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (&v17[24 * v12] <= v16 || v14 != a4)
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v16, v17, v12, a6);
  }

  a4;
  return v14;
}

uint64_t lazy protocol witness table accessor for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>()
{
  result = lazy protocol witness table cache variable for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>;
  if (!lazy protocol witness table cache variable for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
    lazy protocol witness table accessor for type URL and conformance URL();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> AnnotatedFeature<A, B>, v1);
    lazy protocol witness table cache variable for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B> = result;
  }

  return result;
}

void *ActionClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v41 = v1;
  v3 = a1;
  v2[2] = 0xD000000000000017;
  v2[3] = "training_accuracy" + 0x8000000000000000;
  v4 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  v5 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v32 = v4;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
  *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  v33 = v6;
  *(v2 + v6 + 8) = -1;
  *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v34 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v35 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v8 = empty;
  v9 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args;
  v10 = type metadata accessor for CMLParameters();
  v11 = swift_allocObject(v10, 24, 7);
  *(v11 + 16) = v8;
  v36 = v9;
  *(v2 + v9) = v11;
  v37 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters;
  outlined init with copy of MLTrainingSessionParameters(a1, v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v12 = v2[2];
  v13 = v2[3];
  if ((v13 & 0x1000000000000000) != 0 || !(v13 & 0x2000000000000000 | v12 & 0x1000000000000000))
  {
    v28 = v2[3];
    v28;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v12, v28, &type metadata for OpaquePointer);
    if (v41)
    {
      v28;
      goto LABEL_12;
    }

    v41 = 0;
    v28;
    v24 = v31;
    goto LABEL_16;
  }

  v39 = a1;
  v40 = v30;
  v14 = alloca(32);
  v15 = alloca(32);
  v32 = 0;
  v31 = closure #1 in CMLModel.init(name:);
  if ((v13 & 0x2000000000000000) != 0)
  {
    v30[0] = v12;
    v30[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    v13;
    v20 = v41;
    v21 = specialized handling<A, B>(_:_:)(v30);
    if (v20)
    {
      v13;
      goto LABEL_11;
    }

    v24 = v21;
    v3 = v39;
    if (!v21)
    {
      BUG();
    }

    v41 = 0;
    v13;
LABEL_16:
    v25 = type metadata accessor for CMLModel();
    v26 = swift_allocObject(v25, 24, 7);
    *(v26 + 16) = v24;
    outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLTrainingSessionParameters);
    *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model) = v26;
    return v2;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v16 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = _StringObject.sharedUTF8.getter(v12, v13);
    v17 = v29;
  }

  v38 = v13;
  v13;
  v18 = v41;
  v19 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v16, v17, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
  if (!v18)
  {
    v24 = v19;
    v41 = 0;
    v38;
    v3 = v39;
    goto LABEL_16;
  }

  v38;
LABEL_11:
  v3 = v39;
LABEL_12:
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLTrainingSessionParameters);
  v2[3];
  outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v2 + v33), *(v2 + v33 + 8));
  outlined consume of Result<_DataTable, Error>(*v34, *(v34 + 2));
  outlined consume of Result<_DataTable, Error>(*v35, *(v35 + 2));
  v22 = *(v2 + v36);

  v23 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v2, v23, *(*v2 + 48), *(*v2 + 52));
  return v2;
}

void *ActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v155 = v3;
  v150 = a3;
  v149 = a2;
  v153 = a1;
  v133 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v133 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v132 = v122;
  v138 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v137 = *(v138 - 8);
  v8 = *(v137 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v140 = v122;
  v129 = type metadata accessor for AnyColumn(0);
  v128 = *(v129 - 8);
  v11 = *(v128 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v136 = v122;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v130 = v122;
  v146 = type metadata accessor for DataFrame(0);
  v148 = *(v146 - 1);
  v16 = *(v148 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v131 = v122;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v143 = v122;
  v156 = type metadata accessor for MLActionClassifier.DataSource(0);
  v21 = *(*(v156 - 1) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v127 = v122;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v159 = v122;
  v147 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v26 = *(*(v147 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v151 = v122;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v158 = v122;
  v4[2] = 0xD000000000000017;
  v4[3] = "training_accuracy" + 0x8000000000000000;
  v32 = v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  v33 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v154 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
  *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  v125 = v34;
  *(v4 + v34 + 8) = -1;
  *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v139 = v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v157 = v4;
  v135 = v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
  static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v36 = empty;
  v37 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args;
  v38 = type metadata accessor for CMLParameters();
  v39 = swift_allocObject(v38, 24, 7);
  *(v39 + 16) = v36;
  v126 = v37;
  *(v157 + v37) = v39;
  v40 = v158;
  outlined init with copy of MLTrainingSessionParameters(v153, v158, type metadata accessor for MLActionClassifier.DataSource);
  v41 = v151;
  outlined init with copy of MLTrainingSessionParameters(v149, v151, type metadata accessor for MLActionClassifier.ModelParameters);
  v42 = v33[6];
  v145 = v33[7];
  v144 = v33[8];
  v152 = v33[9];
  outlined init with copy of MLTrainingSessionParameters(v41, &v40[v33[5]], type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v43 = v147;
  *&v40[v42] = *&v41[*(v147 + 20)];
  *&v40[v144] = *&v41[v43[7]];
  *&v40[v145] = *&v41[v43[6]];
  *&v40[v33[10]] = *&v41[v43[8]];
  v147 = *&v41[v43[10]];
  outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLActionClassifier.ModelParameters);
  v44 = v147;
  *&v40[v152] = v147;
  v147 = v33;
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v33);
  v45 = v154;
  swift_beginAccess(v154, &v141, 33, 0);
  outlined assign with take of MLActionClassifier.PersistentParameters?(v40, v45);
  swift_endAccess(&v141);
  v46 = v153;
  v47 = v159;
  outlined init with copy of MLTrainingSessionParameters(v153, v159, type metadata accessor for MLActionClassifier.DataSource);
  v48 = v156;
  if (swift_getEnumCaseMultiPayload(v47, v156) == 3)
  {
    v49 = *v47;
    v50 = *(v47 + 2);
    v146 = v47[2];
    v158 = v47[3];
    v144 = v47[4];
    v145 = v47[5];
    v151 = v47[6];
    v159 = v47[7];
    v51 = v139;
    swift_beginAccess(v139, v122, 1, 0);
    v52 = *v51;
    *v51 = v49;
    v53 = v50;
    v54 = v50 & 1;
    v55 = *(v51 + 8);
    *(v51 + 8) = v54;
    v152 = v49;
    outlined copy of Result<_DataTable, Error>(v49, v53);
    outlined consume of Result<_DataTable, Error>(v52, v55);
    swift_beginAccess(v51, &v141, 33, 0);
    v56 = v155;
    static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v51, v151, v159);
    if (v56)
    {
      v57 = 0;
      swift_endAccess(&v141);
      v158;
      v145;
      v159;
      v58 = v152;
LABEL_5:
      outlined consume of Result<_DataTable, Error>(v58, v53);
      outlined destroy of MLActivityClassifier.ModelParameters(v150, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v153, type metadata accessor for MLActionClassifier.DataSource);
LABEL_6:
      v59 = v157;
LABEL_37:
      v77 = v154;
      goto LABEL_38;
    }

    LODWORD(v148) = v53;
    swift_endAccess(&v141);
    swift_beginAccess(v51, &v141, 33, 0);
    v75 = v145;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v51, v146, v158, v151, v159, v144, v145);
    v155 = 0;
    v59 = v157;
    swift_endAccess(&v141);
    v158;
    v75;
    v159;
    outlined consume of Result<_DataTable, Error>(v152, v148);
LABEL_18:
    v86 = v154;
    v87 = v147;
    if (__swift_getEnumTagSinglePayload(v154, 1, v147))
    {
      goto LABEL_27;
    }

    v88 = v86 + *(v87 + 20);
    v89 = v132;
    outlined init with copy of MLTrainingSessionParameters(v88, v132, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v89, v133) == 1)
    {
      if (swift_getEnumCaseMultiPayload(v89, v156) == 3)
      {
        v90 = *v89;
        v91 = *(v89 + 8);
        v144 = *(v89 + 16);
        v158 = *(v89 + 24);
        v145 = *(v89 + 32);
        v159 = *(v89 + 40);
        v151 = *(v89 + 48);
        v156 = *(v89 + 56);
        v92 = v135;
        swift_beginAccess(v135, &v141, 1, 0);
        v152 = *v92;
        *v92 = v90;
        v93 = *(v92 + 8);
        *(v92 + 8) = v91 & 1;
        v147 = v90;
        v94 = v90;
        v95 = v91;
        outlined copy of Result<_DataTable, Error>(v94, v91);
        outlined consume of Result<_DataTable, Error>(v152, v93);
        swift_beginAccess(v92, v134, 33, 0);
        v96 = v151;
        v97 = v155;
        static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v92, v151, v156);
        if (v97)
        {
          v57 = 0;
          swift_endAccess(v134);
          v158;
          v159;
          v156;
          v53 = v95;
          v58 = v147;
          goto LABEL_5;
        }

        swift_endAccess(v134);
        swift_beginAccess(v92, v134, 33, 0);
        static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v92, v144, v158, v96, v156, v145, v159);
        v155 = 0;
        swift_endAccess(v134);
        v158;
        v159;
        v156;
        outlined consume of Result<_DataTable, Error>(v147, v91);
        v59 = v157;
LABEL_27:
        outlined init with copy of MLTrainingSessionParameters(v150, v59 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
        v99 = v59[2];
        v100 = v59[3];
        if ((v100 & 0x1000000000000000) != 0 || !(v100 & 0x2000000000000000 | v99 & 0x1000000000000000))
        {
          v59[3];
          v120 = v155;
          _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v99, v100, &type metadata for OpaquePointer);
          if (v120)
          {
            v100;
            goto LABEL_36;
          }

          v100;
          v112 = v124;
        }

        else
        {
          v101 = alloca(32);
          v102 = alloca(32);
          v124 = 0;
          v123 = closure #1 in CMLModel.init(name:);
          v156 = v122;
          if ((v100 & 0x2000000000000000) != 0)
          {
            v134[0] = v99;
            v134[1] = v100 & 0xFFFFFFFFFFFFFFLL;
            v100;
            v107 = v155;
            v108 = specialized handling<A, B>(_:_:)(v134);
            if (v107)
            {
LABEL_35:
              v100;
              v59 = v157;
LABEL_36:
              outlined destroy of MLActivityClassifier.ModelParameters(v150, type metadata accessor for MLTrainingSessionParameters);
              outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLActionClassifier.ModelParameters);
              outlined destroy of MLActivityClassifier.ModelParameters(v153, type metadata accessor for MLActionClassifier.DataSource);
              v57 = 1;
              goto LABEL_37;
            }

            v112 = v108;
            v59 = v157;
            if (!v108)
            {
              BUG();
            }

            v100;
          }

          else
          {
            if ((v99 & 0x1000000000000000) != 0)
            {
              v103 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v104 = v99 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v103 = _StringObject.sharedUTF8.getter(v99, v100);
              v104 = v121;
            }

            v100;
            v105 = v155;
            v106 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v103, v104, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
            if (v105)
            {
              goto LABEL_35;
            }

            v112 = v106;
            v100;
            v59 = v157;
          }
        }

        v113 = type metadata accessor for CMLModel();
        v114 = swift_allocObject(v113, 24, 7);
        *(v114 + 16) = v112;
        outlined destroy of MLActivityClassifier.ModelParameters(v150, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLActionClassifier.ModelParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v153, type metadata accessor for MLActionClassifier.DataSource);
        *(v59 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model) = v114;
        return v59;
      }

      v98 = type metadata accessor for MLActionClassifier.DataSource;
    }

    else
    {
      v98 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v89, v98);
    goto LABEL_27;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLActionClassifier.DataSource);
  v60 = v46;
  v61 = v127;
  outlined init with copy of MLTrainingSessionParameters(v60, v127, type metadata accessor for MLActionClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v61, v48) != 5)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLActionClassifier.DataSource);
    v59 = v157;
    goto LABEL_18;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
  v63 = v62[12];
  v144 = *(v61 + v63);
  v158 = *(v61 + v63 + 8);
  v64 = v62[16];
  v145 = *(v61 + v64);
  v151 = *(v61 + v64 + 8);
  v65 = v62[20];
  v66 = *(v61 + v65);
  v67 = *(v61 + v65 + 8);
  v68 = v143;
  (*(v148 + 32))(v143, v61, v146);
  v69 = v130;
  v152 = v66;
  v159 = v67;
  DataFrame.subscript.getter(v66, v67);
  v70 = AnyColumn.wrappedElementType.getter();
  (*(v128 + 8))(v69, v129);
  v71 = v70 == &type metadata for String;
  v72 = v155;
  if (v71)
  {
    DataFrame.subscript.getter(v152, v159, &type metadata for String);
    Column<A>.parseAsJSONArrays()();
    v76 = v159;
    if (v72)
    {
      v159;
      v151;
      v158;
      outlined destroy of MLActivityClassifier.ModelParameters(v150, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v153, type metadata accessor for MLActionClassifier.DataSource);
      (*(v137 + 8))(v140, v138);
      (*(v148 + 8))(v68, v146);
      v59 = v157;
      goto LABEL_15;
    }

    (*(v137 + 8))(v140, v138);
    v76;
    DataFrame.subscript.setter(v136, v152, v76);
  }

  v73 = v131;
  v74 = v148;
  *v44.i64 = (*(v148 + 16))(v131, v68, v146);
  MLDataTable.init(_:convertArraysToShapedArrays:)(v73, 0, v44);
  v59 = v157;
  if (!v72)
  {
    v155 = 0;
    v78 = v141;
    v79 = v142;
    v80 = v139;
    swift_beginAccess(v139, v122, 1, 0);
    v81 = *v80;
    *v80 = v78;
    v82 = *(v80 + 8);
    *(v80 + 8) = v79;
    outlined consume of Result<_DataTable, Error>(v81, v82);
    swift_beginAccess(v80, &v141, 33, 0);
    v83 = v152;
    v84 = v159;
    v85 = v155;
    static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v80, v152, v159);
    if (v85)
    {
      v57 = 0;
      swift_endAccess(&v141);
      v84;
      v151;
      v158;
      outlined destroy of MLActivityClassifier.ModelParameters(v150, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v153, type metadata accessor for MLActionClassifier.DataSource);
      (*(v148 + 8))(v143, v146);
      goto LABEL_6;
    }

    swift_endAccess(&v141);
    swift_beginAccess(v80, &v141, 33, 0);
    v115 = v83;
    v116 = v158;
    v117 = v84;
    v118 = v151;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v80, v144, v158, v115, v117, v145, v151);
    v155 = 0;
    v59 = v157;
    v119 = v146;
    swift_endAccess(&v141);
    v159;
    v118;
    v116;
    (*(v148 + 8))(v143, v119);
    goto LABEL_18;
  }

  v159;
  v151;
  v158;
  outlined destroy of MLActivityClassifier.ModelParameters(v150, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v149, type metadata accessor for MLActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v153, type metadata accessor for MLActionClassifier.DataSource);
  (*(v74 + 8))(v68, v146);
LABEL_15:
  v77 = v154;
  v57 = 0;
LABEL_38:
  v59[3];
  if (v57)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v59 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v59 + v125), *(v59 + v125 + 8));
  outlined consume of Result<_DataTable, Error>(*v139, *(v139 + 8));
  outlined consume of Result<_DataTable, Error>(*v135, *(v135 + 8));
  v109 = *(v59 + v126);

  v110 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v59, v110, *(*v59 + 48), *(*v59 + 52));
  return v59;
}

char ActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(int a1, __m128 a2)
{
  v4 = v3;
  v5 = a1 + *(type metadata accessor for MLActionClassifier.PersistentParameters(0) + 20);
  result = MLActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v29, &v27, a2);
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
        v17 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable, &v29, 1, 0);
        v38 = *(v4 + v17);
        *(v4 + v17) = v7;
        LODWORD(v37) = *(v4 + v17 + 8);
        *(v4 + v17 + 8) = v8;
        v18 = v8;
        outlined copy of Result<_DataTable, Error>(v7, v8);
        outlined consume of MLDataTable?(v38, v37);
        *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_13:
        v32 = v7;
        v33 = v18 & 1;
        v26 = MLDataTable.size.getter();
        outlined consume of MLDataTable?(v36, v39);
        outlined consume of Result<_DataTable, Error>(v32, v33);
LABEL_16:
        result = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
        *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = v26;
        return result;
      }

      *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      v41 = v30;
      v37 = v27;
      LOBYTE(v38) = v28;
      if (v28 == -1)
      {
        v19 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
        v20 = v30;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable, &v29, 1, 0);
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
        v10 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
        v11 = v30;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable, &v27, 1, 0);
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
        v15 = ActionClassifierTrainingSessionDelegate.sourceTable.modify(&v29);
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
      *(v4 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = v25;
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

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.setUp()()
{
  v12 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v11, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, &v10, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v10, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v10, &v10, type metadata accessor for MLActionClassifier.PersistentParameters);
  ActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(&v10, v1);
  outlined destroy of MLActivityClassifier.ModelParameters(&v10, type metadata accessor for MLActionClassifier.PersistentParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v209 = v1;
  v204 = v2;
  rawValue = from._rawValue;
  v193 = type metadata accessor for URL(0);
  v192 = *(v193 - 8);
  v4 = *(v192 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v194 = &v144;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v190 = &v144;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v189 = &v144;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v188 = &v144;
  v13 = alloca(v4);
  v14 = alloca(v4);
  v197 = &v144;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v186 = &v144;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v205 = &v144;
  v206 = type metadata accessor for MLCheckpoint(0);
  v187 = *(v206 - 8);
  v20 = *(v187 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v191 = &v144;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v203 = &v144;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v208 = &v144;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v34 = v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v182, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &v144, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v144, 1, v30) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v144, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v144, &v144, type metadata accessor for MLActionClassifier.PersistentParameters);
  v35 = v205;
  specialized BidirectionalCollection.last.getter(rawValue);
  v36 = v35;
  v37 = v206;
  if (__swift_getEnumTagSinglePayload(v36, 1, v206) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for MLCheckpoint?);
    v38 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v38, 0, 0);
    *v39 = 0xD00000000000001DLL;
    *(v39 + 8) = "reated." + 0x8000000000000000;
    *(v39 + 16) = 0;
    *(v39 + 32) = 0;
    *(v39 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v38);
    v40 = &v144;
LABEL_48:
    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLActionClassifier.PersistentParameters);
    return;
  }

  v207 = &v144;
  v41 = v37;
  v42 = 0xEB0000000064657ALL;
  v198 = 0x6974636172747865;
  v43 = 0x696C616974696E69;
  v44 = v208;
  outlined init with take of MLClassifierMetrics(v205, v208, type metadata accessor for MLCheckpoint);
  v205 = *(v41 + 20);
  v45 = *(v44 + v205);
  v46 = 0xEA0000000000676ELL;
  v195 = 0xEA0000000000676ELL;
  switch(v45)
  {
    case 0:
      goto LABEL_8;
    case 1:
LABEL_10:
      v46;
      goto LABEL_14;
    case 2:
      v43 = 0x676E696E69617274;
      v42 = 0xE800000000000000;
      goto LABEL_8;
    case 3:
      v43 = 0x697461756C617665;
      v42 = 0xEA0000000000676ELL;
      goto LABEL_8;
    case 4:
      v43 = 0x636E657265666E69;
      v42 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_8:
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)(v43, v42, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v42;
      if ((v47 & 1) == 0)
      {
        v46 = 0xE800000000000000;
        switch(*(v44 + v205))
        {
          case 0:
            JUMPOUT(0x18DDE9);
          case 1:
            v48 = 0x6974636172747865;
            goto LABEL_13;
          case 2:
            goto LABEL_10;
          case 3:
            v48 = 0x697461756C617665;
LABEL_13:
            v49 = _stringCompareWithSmolCheck(_:_:expecting:)(v48, 0xEA0000000000676ELL, 0x676E696E69617274, 0xE800000000000000, 0);
            0xEA0000000000676ELL;
            if (v49)
            {
              goto LABEL_14;
            }

            v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
            *v56 = 0xD00000000000003FLL;
            *(v56 + 8) = "not been properly initialized." + 0x8000000000000000;
            *(v56 + 16) = 0;
            *(v56 + 32) = 0;
            *(v56 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v55);
            v57 = v44;
            break;
          case 4:
            JUMPOUT(0x18DE09);
        }

        goto LABEL_47;
      }

LABEL_14:
      v50 = v207;
      v51 = v209;
      ActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(v207, v3);
      if (v51)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for MLCheckpoint);
        v40 = v50;
        goto LABEL_48;
      }

      v209 = 0;
      v52 = 0x676E696E69617274;
      switch(*(v208 + v205))
      {
        case 0:
          v54 = *(v208 + v205);
          v53 = 0xEB0000000064657ALL;
          v52 = 0x696C616974696E69;
          goto LABEL_20;
        case 1:
          0xEA0000000000676ELL;
          goto LABEL_32;
        case 2:
          v53 = 0xE800000000000000;
LABEL_20:
          v58 = *(v208 + v205);
          break;
        case 3:
          v52 = 0x697461756C617665;
          v53 = 0xEA0000000000676ELL;
          break;
        case 4:
          JUMPOUT(0x18DF5FLL);
      }

      v59 = *(v208 + v205);
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)(v52, v53, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v53;
      if ((v60 & 1) == 0)
      {
        v164 = rawValue;
        v61 = *(rawValue + 16);
        v62 = 1;
        if (v61)
        {
          v63 = v61 - 1;
          v64 = v63 * *(v187 + 72) + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + rawValue;
          rawValue = -*(v187 + 72);
          v197 = 0xEB00000000676E69;
          v65 = v191;
          outlined init with copy of MLTrainingSessionParameters(v64, v191, type metadata accessor for MLCheckpoint);
          switch(*(v65 + *(v206 + 20)))
          {
            case 0:
              v66 = *(v65 + *(v206 + 20));
              v67 = 0xEB0000000064657ALL;
              v68 = 0x696C616974696E69;
              goto LABEL_29;
            case 1:
              0xEA0000000000676ELL;
              outlined destroy of MLActivityClassifier.ModelParameters(v191, type metadata accessor for MLCheckpoint);
              goto LABEL_37;
            case 2:
              v67 = 0xE800000000000000;
              v68 = 0x676E696E69617274;
              goto LABEL_29;
            case 3:
              v67 = 0xEA0000000000676ELL;
              v68 = 0x697461756C617665;
              goto LABEL_29;
            case 4:
              v67 = v197;
              v68 = 0x636E657265666E69;
LABEL_29:
              v69 = _stringCompareWithSmolCheck(_:_:expecting:)(v68, v67, 0x6974636172747865, 0xEA0000000000676ELL, 0);
              v67;
              outlined destroy of MLActivityClassifier.ModelParameters(v191, type metadata accessor for MLCheckpoint);
              if ((v69 & 1) == 0)
              {
                JUMPOUT(0x18E115);
              }

LABEL_37:
              v62 = 0;
              break;
          }
        }

        else
        {
          v63 = 0;
        }

        v84 = alloca(24);
        v85 = alloca(32);
        v146 = &v164;
        v86 = v186;
        v87 = v209;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), &v144, v63, v62, v185);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v206);
        v209 = v87;
        if (EnumTagSinglePayload != 1)
        {
          outlined init with take of MLClassifierMetrics(v86, v203, type metadata accessor for MLCheckpoint);
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
          LOBYTE(v164) = 1;
          v165 = 44;
          v166 = 0xE100000000000000;
          v167 = 0;
          v168 = 0xE000000000000000;
          v169 = 92;
          v170 = 0xE100000000000000;
          v171 = 1;
          v172 = 34;
          v173 = 0xE100000000000000;
          v174 = 1;
          v175 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          v176 = 10;
          v177 = 0xE100000000000000;
          v178 = 0;
          v179 = 1;
          v180 = 0;
          outlined retain of MLDataTable.ParsingOptions(__src);
          outlined release of MLDataTable.ParsingOptions(&v164, 0xE000000000000000);
          memcpy(__dst, __src, sizeof(__dst));
          v94 = v209;
          MLDataTable.init(contentsOf:options:)(v189, __dst);
          if (!v94)
          {
            v95 = v199;
            LOBYTE(v206) = v200;
            v209 = 0;
            v96 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
            v97 = v204;
            swift_beginAccess(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, v184, 1, 0);
            v98 = *(v97 + v96);
            *(v97 + v96) = v95;
            v99 = *(v97 + v96 + 8);
            *(v97 + v96 + 8) = v206;
            outlined consume of Result<_DataTable, Error>(v98, v99);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v162[0]) = 1;
            *(&v162[0] + 1) = 44;
            v162[1] = 0xE100000000000000;
            *&v162[2] = 0xE000000000000000;
            *(&v162[2] + 1) = 92;
            *&v162[3] = 0xE100000000000000;
            BYTE8(v162[3]) = 1;
            *&v162[4] = 34;
            *(&v162[4] + 1) = 0xE100000000000000;
            LOBYTE(v162[5]) = 1;
            *(&v162[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v162[6] = 10;
            *(&v162[6] + 1) = 0xE100000000000000;
            v162[7] = 0;
            LOBYTE(v162[8]) = 1;
            *(&v162[8] + 1) = 0;
            LOBYTE(v145) = 1;
            v146 = (&stru_20 + 12);
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
            outlined retain of MLDataTable.ParsingOptions(v162);
            outlined release of MLDataTable.ParsingOptions(&v145, 92);
            memcpy(v163, v162, sizeof(v163));
            v100 = v209;
            MLDataTable.init(contentsOf:options:)(v190, v163);
            v77 = v100;
            if (!v100)
            {
              outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for MLCheckpoint);
              v103 = v201;
              LOBYTE(v206) = v202;
              v104 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
              v105 = v204;
              swift_beginAccess(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v163, 1, 0);
              v106 = *(v105 + v104);
              *(v105 + v104) = v103;
              v107 = *(v105 + v104 + 8);
              *(v105 + v104 + 8) = v206;
              outlined consume of Result<_DataTable, Error>(v106, v107);
              v83 = v208;
              switch(*(v208 + v205))
              {
                case 0:
                  goto LABEL_41;
                case 1:
                  goto LABEL_54;
                case 2:
                  goto LABEL_50;
                case 3:
                  goto LABEL_53;
                case 4:
                  goto LABEL_51;
              }
            }
          }

          outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for MLCheckpoint);
          v57 = v208;
          goto LABEL_47;
        }

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v86, &demangling cache variable for type metadata for MLCheckpoint?);
        v89 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
        v90 = v204;
        swift_beginAccess(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, &v164, 0, 0);
        v91 = *(v90 + v89 + 8);
        *&__src[0] = *(v90 + v89);
        BYTE8(__src[0]) = v91;
        outlined copy of Result<_DataTable, Error>(*&__src[0], v91);
        v92 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
        if (v92)
        {
          v83 = v208;
          v77 = v209;
          switch(*(v208 + v205))
          {
            case 0:
              goto LABEL_41;
            case 1:
              goto LABEL_54;
            case 2:
              goto LABEL_50;
            case 3:
              goto LABEL_53;
            case 4:
              goto LABEL_51;
          }
        }

        v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
        *v102 = 0xD000000000000028;
        *(v102 + 8) = "erly initialized." + 0x8000000000000000;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v101);
LABEL_46:
        v57 = v208;
LABEL_47:
        outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLCheckpoint);
        v40 = v207;
        goto LABEL_48;
      }

LABEL_32:
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
      LOBYTE(v164) = 1;
      v165 = 44;
      v166 = 0xE100000000000000;
      v167 = 0;
      v168 = 0xE000000000000000;
      v169 = 92;
      v170 = 0xE100000000000000;
      v171 = 1;
      v172 = 34;
      v173 = 0xE100000000000000;
      v174 = 1;
      v175 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v176 = 10;
      v177 = 0xE100000000000000;
      v178 = 0;
      v179 = 1;
      v180 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v164, 0xE000000000000000);
      memcpy(__dst, __src, sizeof(__dst));
      v70 = v209;
      MLDataTable.init(contentsOf:options:)(v197, __dst);
      if (v70)
      {
        goto LABEL_46;
      }

      v71 = v199;
      LOBYTE(v206) = v200;
      v209 = 0;
      v72 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
      v73 = v204;
      swift_beginAccess(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, v184, 1, 0);
      v74 = *(v73 + v72);
      *(v73 + v72) = v71;
      v75 = *(v73 + v72 + 8);
      *(v73 + v72 + 8) = v206;
      outlined consume of Result<_DataTable, Error>(v74, v75);
      URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
      LOBYTE(v162[0]) = 1;
      *(&v162[0] + 1) = 44;
      v162[1] = 0xE100000000000000;
      *&v162[2] = 0xE000000000000000;
      *(&v162[2] + 1) = 92;
      *&v162[3] = 0xE100000000000000;
      BYTE8(v162[3]) = 1;
      *&v162[4] = 34;
      *(&v162[4] + 1) = 0xE100000000000000;
      LOBYTE(v162[5]) = 1;
      *(&v162[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&v162[6] = 10;
      *(&v162[6] + 1) = 0xE100000000000000;
      v162[7] = 0;
      LOBYTE(v162[8]) = 1;
      *(&v162[8] + 1) = 0;
      v163[0] = 1;
      LOBYTE(v145) = 1;
      v146 = (&stru_20 + 12);
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
      outlined retain of MLDataTable.ParsingOptions(v162);
      outlined release of MLDataTable.ParsingOptions(&v145, 92);
      memcpy(v163, v162, sizeof(v163));
      v76 = v209;
      MLDataTable.init(contentsOf:options:)(v188, v163);
      v77 = v76;
      if (v76)
      {
        goto LABEL_46;
      }

      break;
  }

  v78 = v201;
  LOBYTE(v206) = v202;
  v79 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
  v80 = v204;
  swift_beginAccess(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v163, 1, 0);
  v81 = *(v80 + v79);
  *(v80 + v79) = v78;
  v82 = *(v80 + v79 + 8);
  *(v80 + v79 + 8) = v206;
  outlined consume of Result<_DataTable, Error>(v81, v82);
  v83 = v208;
  switch(*(v208 + v205))
  {
    case 0:
LABEL_41:
      v198 = 0x696C616974696E69;
      v93 = 0xEB0000000064657ALL;
      goto LABEL_52;
    case 1:
      goto LABEL_54;
    case 2:
LABEL_50:
      0xE800000000000000;
      goto LABEL_55;
    case 3:
LABEL_53:
      v198 = 0x697461756C617665;
      goto LABEL_54;
    case 4:
LABEL_51:
      v198 = 0x636E657265666E69;
      v93 = 0xEB00000000676E69;
LABEL_52:
      v195 = v93;
LABEL_54:
      v108 = v195;
      v109 = v83;
      v110 = _stringCompareWithSmolCheck(_:_:expecting:)(v198, v195, 0x676E696E69617274, 0xE800000000000000, 0);
      v108;
      v111 = (v110 & 1) == 0;
      v83 = v109;
      if (v111)
      {
        goto LABEL_74;
      }

LABEL_55:
      v209 = v77;
      (*(v192 + 16))(v194, v83, v193);
      v113 = URL.absoluteString.getter();
      v114 = v112;
      if ((v112 & 0x1000000000000000) != 0 || !(v112 & 0x2000000000000000 | v113 & 0x1000000000000000))
      {
        v142 = v209;
        _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v113, v112, &type metadata for OpaquePointer);
        v209 = v142;
        if (!v142)
        {
          goto LABEL_62;
        }

        v117 = v208;
        goto LABEL_64;
      }

      v115 = alloca(32);
      v116 = alloca(32);
      if ((v112 & 0x2000000000000000) == 0)
      {
        v117 = v208;
        if ((v113 & 0x1000000000000000) != 0)
        {
          v118 = (v112 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v119 = v113 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v118 = _StringObject.sharedUTF8.getter(v113, v112);
          v119 = v143;
        }

        v120 = v209;
        v121 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v118, v119, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
        v209 = v120;
        if (!v120)
        {
          __dst[0] = v121;
LABEL_62:
          v114;
          goto LABEL_67;
        }

LABEL_64:
        (*(v192 + 8))(v194, v193);
        v114;
        outlined destroy of MLActivityClassifier.ModelParameters(v117, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v207, type metadata accessor for MLActionClassifier.PersistentParameters);
        return;
      }

      *&__src[0] = v113;
      *(&__src[0] + 1) = v112 & 0xFFFFFFFFFFFFFFLL;
      v122 = v209;
      v123 = specialized handling<A, B>(_:_:)(__src);
      v209 = v122;
      v117 = v208;
      if (v122)
      {
        goto LABEL_64;
      }

      if (!v123)
      {
        BUG();
      }

      __dst[0] = v123;
      v114;
LABEL_67:
      v124 = __dst[0];
      (*(v192 + 8))(v194, v193);
      v125 = type metadata accessor for CMLModel();
      v126 = swift_allocObject(v125, 24, 7);
      *(v126 + 16) = v124;
      v127 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model;
      v128 = v204;
      v129 = *(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);
      *(v204 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model) = v126;

      v130 = *(v128 + v127);
      v131 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
      v132 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures + v128;
      swift_beginAccess(OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures + v128, __src, 0, 0);
      v133 = *(v128 + v131);
      if (*(v128 + v131 + 8))
      {
        v134 = *(v128 + v131);
        swift_willThrow(v132, __src);
        outlined copy of Result<_DataTable, Error>(v133, 1);
        outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v207, type metadata accessor for MLActionClassifier.PersistentParameters);
      }

      else
      {
        v205 = v130;
        v135 = *(v133 + 16);
        v136 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
        v137 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures + v128;
        swift_beginAccess(OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures + v128, __dst, 0, 0);
        v138 = *(v128 + v136);
        if (!*(v128 + v136 + 8))
        {
          v140 = *(v138 + 16);

          v141 = v209;
          CMLModel.resume(data:_:)(v135, v140);
          if (!v141)
          {

            v83 = v208;
LABEL_74:
            v57 = v83;
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        v139 = *(v128 + v136);
        swift_willThrow(v137, __dst);
        outlined copy of Result<_DataTable, Error>(v138, 1);
        outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v207, type metadata accessor for MLActionClassifier.PersistentParameters);
      }

      return;
  }
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v51 = v1;
  v48 = from;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = v36;
  v10 = v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v36, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v36, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  v44 = v6;
  if (__swift_getEnumTagSinglePayload(v36, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    BUG();
  }

  v11 = v50;
  outlined init with take of MLClassifierMetrics(v36, v50, type metadata accessor for MLActionClassifier.PersistentParameters);
  v12 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable + v2, v37, 0, 0);
  v13 = *(v2 + v12 + 8);
  if (v13 == 0xFF)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLActionClassifier.PersistentParameters);
LABEL_11:
    v25.finished = 1;
    v25._0 = 1;
    return v25;
  }

  v14 = *(v2 + v12);
  v45 = v2;
  v40 = v14;
  v15 = v13;
  v16 = v13 & 1;
  v41 = v16;
  outlined copy of Result<_DataTable, Error>(v14, v15);
  outlined copy of Result<_DataTable, Error>(v14, v15);
  MLDataTable.size.getter();
  v43 = v17;
  outlined consume of Result<_DataTable, Error>(v40, v41);
  if (v43 <= 0)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v14, v15);
    goto LABEL_11;
  }

  v49 = v14;
  v52 = v15;
  v18 = *(v45 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v19 = *(v45 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v23 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v23)
  {
    BUG();
  }

  if (v20 <= v48)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v49, v52);
    v25.finished = 1;
    v25._0 = 0;
  }

  else
  {
    v39 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
    v38 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTrainingRowCount;
    v21 = v45 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters;
    v43 = v18;
    v22 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v21);
    v23 = __OFADD__(v48, v22);
    v24 = v48 + v22;
    if (v43 <= v48)
    {
      if (v23)
      {
        BUG();
      }
    }

    else
    {
      v20 = v43;
      if (v23)
      {
        BUG();
      }
    }

    if (v20 < v24)
    {
      v24 = v20;
    }

    if (v24 < v48)
    {
      BUG();
    }

    v46 = v49;
    v47 = v16;
    outlined copy of Result<_DataTable, Error>(v49, v52);
    MLDataTable.subscript.getter(v48, v24);
    outlined consume of Result<_DataTable, Error>(v46, v47);
    v26 = v40;
    v27 = v41;
    type metadata accessor for MLActionClassifier.FeatureExtractor();
    v42 = v26;
    v46 = v26;
    v47 = v27;
    v28 = *(v44 + 36);
    v44 = v24;
    v29 = v50;
    v30 = v51;
    static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(&v46, *&v50[v28]);
    if (v30)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLActionClassifier.PersistentParameters);
      outlined consume of MLDataTable?(v49, v52);
      v25._0 = outlined consume of Result<_DataTable, Error>(v42, v27);
    }

    else
    {
      v31 = v27;
      v32 = v40;
      LOBYTE(v51) = v41;
      v46 = v40;
      v47 = v41 & 1;
      if (v43 <= v48)
      {
        v33 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
      }

      else
      {
        v33 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
      }

      swift_beginAccess(v45 + v33, &v40, 33, 0);
      MLDataTable.append(contentsOf:)(&v46);
      swift_endAccess(&v40);
      outlined consume of Result<_DataTable, Error>(v42, v31);
      outlined consume of MLDataTable?(v49, v52);
      outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLActionClassifier.PersistentParameters);
      outlined consume of Result<_DataTable, Error>(v32, v51);
      v25._0 = v44 - v48;
      if (__OFSUB__(v44, v48))
      {
        BUG();
      }

      v34 = *(v45 + v38);
      v23 = __OFADD__(*(v45 + v39), v34);
      v35 = *(v45 + v39) + v34;
      if (v23)
      {
        BUG();
      }

      v25.finished = v44 == v35;
    }
  }

  return v25;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v4 = v1;
  v49 = v2;
  v5 = *&v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters;
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = *(*(v6 + 20) + v5);
  if (__OFADD__(v7, from))
  {
    BUG();
  }

  v8 = *(v5 + *(v6 + 28));
  v9 = v8 - from;
  if (__OFSUB__(v8, from))
  {
    BUG();
  }

  if (v7 < v9)
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    BUG();
  }

  v44 = v8;
  v43 = v7 + from;
  v42 = v9;
  if (v9)
  {
    v47 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model;
    v10 = v49;
    v48 = *(*&v49 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args);
    while (1)
    {
      v11 = *(*&v10 + v47);

      CMLModel.callFunction(name:arguments:)(1, *&v48);
      if (v1)
      {
        break;
      }

      --v9;
      v10 = v49;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = v49;
LABEL_12:
    v47 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model;
    v12 = *(*&v10 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);
    v13 = *(*&v10 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args);

    v4 = CMLModel.callFunction(name:arguments:)(2, v13);

    if (!v1)
    {

      v15 = *(*&v10 + v47);

      CMLModel.getValue(field:)(0x676E696E69617274, 0xED000073736F6C5FLL);

      v26 = CMLVariant.featureValue()();

      specialized handling<A, B>(_:_:)(*(v26 + 16));
      v48 = *&v3;

      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLProgress.Metric, Double)>);
      inited = swift_initStackObject(v29, v38);
      *(inited + 16) = 1;
      *(inited + 24) = 2;
      *(inited + 32) = 0;
      *&v31 = v48;
      *(inited + 40) = v48;
      v32 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
      v48 = COERCE_DOUBLE(Dictionary.init(dictionaryLiteral:)(inited, &type metadata for MLProgress.Metric, &type metadata for Double, v32));
      v16 = *(*&v49 + v47);

      CMLModel.getValue(field:)(0xD000000000000011, ("rainingSessionDelegate" + 0x8000000000000000));

      v27 = CMLVariant.featureValue()();

      specialized handling<A, B>(_:_:)(*(v27 + 16));
      v46 = 0;
      v45 = *&v31;

      v33 = *&v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*&v48);
      v39[0] = *&v33;
      v35 = v45;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, v45);
      v48 = v39[0];
      v17 = v49;
      v18 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess(*&v49 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v39, 0, 0);
      v19 = *(*&v17 + v18 + 8);
      v40 = *(*&v17 + v18);
      v41 = v19;
      outlined copy of Result<_DataTable, Error>(*&v40, v19);
      v20 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(*&v40, v41);
      if (v20 > 0)
      {
        v21 = *(*&v17 + v47);

        v22 = v46;
        CMLModel.getValue(field:)(0xD000000000000013, ("should_apply_flip" + 0x8000000000000000));
        if (v22)
        {
          v22;
        }

        else
        {

          v28 = CMLVariant.featureValue()();

          specialized handling<A, B>(_:_:)(*(v28 + 16));
          v49 = v35;

          v36 = *&v48;
          v37 = swift_isUniquelyReferenced_nonNull_native(*&v48);
          v40 = *&v36;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v37, v49);
          v48 = v40;
        }
      }

      v4 = v43 >= v44;
      v23 = *&v48;
      v10 = COERCE_DOUBLE(specialized _dictionaryUpCast<A, B, C, D>(_:)(*&v48));
      v23;
      v14 = v42;
    }
  }

  v24 = v10;
  v25 = v4;
  result.metrics = *&v24;
  result._0 = v14;
  result.finished = v25;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActionClassifierTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v3 = *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);
  v4 = *(v2 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(4, v4);

  if (!v1)
  {
  }

  v5._0 = 1;
  v5.finished = 1;
  return v5;
}

uint64_t ActionClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v91 = v2;
  v87 = v3;
  v90 = a1;
  LODWORD(v3) = 0;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
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
    empty = tc_v1_parameters_create_empty(0);
    if (!empty)
    {
      BUG();
    }

    v21 = empty;
    v22 = type metadata accessor for CMLParameters();
    v92 = swift_allocObject(v22, 24, 7);
    *(v92 + 16) = v21;
    v23 = type metadata accessor for CMLFeatureValue();
    v24 = URL.path.getter(0);
    LODWORD(v3) = v23;
    v26 = CMLFeatureValue.__allocating_init(_:)(v24, v25);
    if (v91)
    {
      swift_setDeallocating(v92);
      tc_v1_release(v21);
      swift_deallocClassInstance(v92, 24, 7);
      return v3;
    }

    CMLParameters.add(key:featureValue:)(7, v26);

    v3 = *(v87 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);

    CMLModel.callFunction(name:arguments:)(6, v92);

    swift_setDeallocating(v92);
    tc_v1_release(*(v92 + 16));
    swift_deallocClassInstance(v92, 24, 7);

LABEL_15:
    LOBYTE(v3) = 1;
    return v3;
  }

  if (v15 != 1)
  {
    return v3;
  }

  v77 = __src;
  v92 = v4;
  v85 = __src;
  v78 = __src;
  v16 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures;
  v17 = v87;
  v79 = (v87 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures);
  swift_beginAccess(v87 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures, v58, 1, 0);
  v18 = *(v17 + v16 + 8);
  v60 = *(v17 + v16);
  LOBYTE(v61) = v18;
  outlined copy of Result<_DataTable, Error>(v60, v18);
  URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
  v3 = &v60;
  v19 = v91;
  MLDataTable.write(to:)(__src);
  if (!v19)
  {
    v91 = 0;
    v86 = *(v5 + 8);
    v86(__src, v92);
    outlined consume of Result<_DataTable, Error>(v60, v61);
    v27 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures;
    v28 = v87;
    v80 = (v87 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures);
    swift_beginAccess(v87 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures, v59, 1, 0);
    v29 = *(v28 + v27 + 8);
    v88 = *(v28 + v27);
    LOBYTE(v89) = v29;
    outlined copy of Result<_DataTable, Error>(v88, v29);
    v30 = v77;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    v3 = &v88;
    v31 = v91;
    MLDataTable.write(to:)(v30);
    if (v31)
    {
      v86(v30, v92);
      outlined consume of Result<_DataTable, Error>(v88, v89);
      return v3;
    }

    v86(v30, v92);
    outlined consume of Result<_DataTable, Error>(v88, v89);
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
    LOBYTE(v60) = 1;
    v61 = 44;
    v62 = 0xE100000000000000;
    v63 = 0;
    v64 = 0xE000000000000000;
    v65 = 92;
    v66 = 0xE100000000000000;
    v67 = 1;
    v68 = 34;
    v69 = 0xE100000000000000;
    v70 = 1;
    v71 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v72 = 10;
    v73 = 0xE100000000000000;
    v74 = 0;
    v75 = 1;
    v76 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(&v60, 34);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(v85, __dst);
    v33 = v82;
    v34 = v79;
    v35 = *v79;
    *v79 = v81;
    v36 = *(v34 + 2);
    *(v34 + 8) = v33;
    outlined consume of Result<_DataTable, Error>(v35, v36);
    v37 = v78;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    v91 = 0;
    LOBYTE(v56[0]) = 1;
    *(&v56[0] + 1) = 44;
    v56[1] = 0xE100000000000000;
    v3 = v57;
    *&v56[2] = 0xE000000000000000;
    *(&v56[2] + 1) = 92;
    *&v56[3] = 0xE100000000000000;
    BYTE8(v56[3]) = 1;
    *&v56[4] = 34;
    *(&v56[4] + 1) = 0xE100000000000000;
    LOBYTE(v56[5]) = 1;
    *(&v56[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    *&v56[6] = 10;
    *(&v56[6] + 1) = 0xE100000000000000;
    v56[7] = 0;
    LOBYTE(v56[8]) = 1;
    *(&v56[8] + 1) = 0;
    v57[0] = 1;
    LOBYTE(v45[0]) = 1;
    v45[1] = 44;
    v45[2] = 0xE100000000000000;
    v45[3] = 0;
    v45[4] = 0xE000000000000000;
    v45[5] = 92;
    v45[6] = 0xE100000000000000;
    v46 = 1;
    v47 = 34;
    v48 = 0xE100000000000000;
    v49 = 1;
    v50 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v51 = 10;
    v52 = 0xE100000000000000;
    v53 = 0;
    v54 = 1;
    v55 = 0;
    outlined retain of MLDataTable.ParsingOptions(v56);
    outlined release of MLDataTable.ParsingOptions(v45, 44);
    memcpy(v57, v56, sizeof(v57));
    v38 = v91;
    MLDataTable.init(contentsOf:options:)(v37, v57);
    if (v38)
    {
      return v3;
    }

    v39 = v84;
    v40 = v80;
    v41 = *v80;
    *v80 = v83;
    v42 = *(v40 + 2);
    *(v40 + 8) = v39;
    outlined consume of Result<_DataTable, Error>(v41, v42);
    goto LABEL_15;
  }

  (*(v5 + 8))(__src, v92);
  outlined consume of Result<_DataTable, Error>(v60, v61);
  return v3;
}

uint64_t ActionClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000030;
    *(v12 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v11);
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLActionClassifier.PersistentParameters);
    MLActionClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLActionClassifier.PersistentParameters);
  }
}

NSURL *ActionClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v34 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v13 = *(*(v31 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v33 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLActionClassifier.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = v34 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v34 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    v22 = v21;
    v23 = v31;
    if (__swift_getEnumTagSinglePayload(v22, 1, v31) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
      v24 = v32;
      outlined init with take of MLClassifierMetrics(v36, v32, type metadata accessor for MLActionClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLActionClassifier.PersistentParameters?(v24, v20);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v35, v33, type metadata accessor for MLActionClassifier.PersistentParameters);
      v26 = v36;
      ActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLActionClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLActionClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t ActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v147 = v2;
  v130._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v3 = *(*(v130._object - 1) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v129 = &v127;
  v139._object = type metadata accessor for MLActionClassifier.DataSource(0);
  v6 = *(*(v139._object - 1) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v128 = &v127;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v135 = &v127;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v132 = &v127;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v134 = &v127;
  v148 = type metadata accessor for DataFrame(0);
  v146 = *(v148 - 8);
  v15 = v146[8];
  v16 = alloca(v15);
  v17 = alloca(v15);
  v140._countAndFlagsBits = &v127;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v143._countAndFlagsBits = &v127;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v144 = &v127;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v142 = &v127;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v139._countAndFlagsBits = &v127;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v145 = &v127;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v31 = alloca(v24);
  v32 = alloca(v24);
  v33 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v34 = v33[6];
  v35 = *(a2 + v34);
  if (*(a1 + v34) != v35)
  {
    v140._object = *(a1 + v34);
    v46 = lazy protocol witness table accessor for type Int and conformance Int();
    v147 = BinaryInteger.description.getter(&type metadata for Int, v46);
    v148 = v47;
    v140._object = v35;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v46);
    v50 = v49;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = 0x6953206863746142;
    *(v52 + 8) = 0xEA0000000000657ALL;
LABEL_14:
    *(v52 + 16) = v147;
    *(v52 + 24) = v148;
    *(v52 + 32) = v48;
    *(v52 + 40) = v50;
    *(v52 + 48) = 3;
    return swift_willThrow(&type metadata for MLCreateError, v51);
  }

  v36 = v33[7];
  v37 = *(a2 + v36);
  if (*(a1 + v36) != v37)
  {
    v53 = "metricsAttributesDictionary" + 0x8000000000000000;
    v140._object = *(a1 + v36);
    v54 = lazy protocol witness table accessor for type Int and conformance Int();
    v147 = BinaryInteger.description.getter(&type metadata for Int, v54);
    v148 = v55;
    v140._object = v37;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v54);
    v50 = v56;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    v57 = 0xD000000000000012;
LABEL_13:
    *v52 = v57;
    *(v52 + 8) = v53;
    goto LABEL_14;
  }

  v38 = v33[8];
  v39 = *(a2 + v38);
  if (*(a1 + v38) != v39)
  {
    v53 = "Number of Labels" + 0x8000000000000000;
    v140._object = *(a1 + v38);
    v58 = lazy protocol witness table accessor for type Int and conformance Int();
    v147 = BinaryInteger.description.getter(&type metadata for Int, v58);
    v148 = v59;
    v140._object = v39;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v58);
    v50 = v60;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    v57 = 0xD000000000000016;
    goto LABEL_13;
  }

  v40 = v33[9];
  v41 = *(a1 + v40);
  if (v41 != *(a2 + v40))
  {
    v148 = *(a2 + v40);
    v147 = Double.description.getter(v41);
    v62 = v61;
    v63 = Double.description.getter(*&v148);
    v65 = v64;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v66 = 0xD000000000000011;
    *(v66 + 8) = "lassification algorithm." + 0x8000000000000000;
    *(v66 + 16) = v147;
    *(v66 + 24) = v62;
    *(v66 + 32) = v63;
    *(v66 + 40) = v65;
    *(v66 + 48) = 3;
    return swift_willThrow(&type metadata for MLCreateError, v51);
  }

  v42 = v33[10];
  v43 = *(a2 + v42);
  if (*(a1 + v42) != v43)
  {
    v53 = "Maximum Iterations" + 0x8000000000000000;
    v140._object = *(a1 + v42);
    v67 = lazy protocol witness table accessor for type Int and conformance Int();
    v147 = BinaryInteger.description.getter(&type metadata for Int, v67);
    v148 = v68;
    v140._object = v43;
    v48 = BinaryInteger.description.getter(&type metadata for Int, v67);
    v50 = v69;
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    v57 = 0xD000000000000014;
    goto LABEL_13;
  }

  v133 = a2;
  v44 = v147;
  result = MLActionClassifier.DataSource.gatherAnnotatedFileNames()();
  if (!v44)
  {
    v147 = a1;
    v143._object = &v127;
    MLActionClassifier.DataSource.gatherAnnotatedFileNames()();
    v131 = &v127;
    v136 = 0;
    countAndFlagsBits = v145;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143._object, v145, &demangling cache variable for type metadata for DataFrame?);
    v71 = v148;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(countAndFlagsBits, 1, v148);
    if (EnumTagSinglePayload != 1)
    {
      v73 = v142;
      v145 = v146[4];
      (v145)(v142, countAndFlagsBits, v71);
      countAndFlagsBits = v139._countAndFlagsBits;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, v139._countAndFlagsBits, &demangling cache variable for type metadata for DataFrame?);
      if (__swift_getEnumTagSinglePayload(countAndFlagsBits, 1, v71) != 1)
      {
        v89 = v144;
        (v145)(v144, countAndFlagsBits, v71);
        if (DataFrame.shape.getter(v89) > 0 && DataFrame.shape.getter(v89) > 0)
        {
          v90 = v136;
          v91 = ActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
          if (!v90)
          {
            v92 = v91;
            v93 = ActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
            LOBYTE(v147) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(v92, v93);
            v92;
            v93;
            if ((v147 & 1) == 0)
            {
              v94 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v94, 0, 0);
              *v95 = 1;
              *(v95 + 8) = 0;
              *(v95 + 24) = 0;
              *(v95 + 40) = 0;
              *(v95 + 48) = 4;
              swift_willThrow(&type metadata for MLCreateError, v94);
            }
          }

          v96 = v146[1];
          v97 = v148;
          v96(v144, v148);
          v98 = v142;
          goto LABEL_46;
        }

        v117 = v146[1];
        v118 = v148;
        v117(v144, v148);
        v117(v73, v118);
LABEL_21:
        v74 = v134;
        outlined init with copy of MLTrainingSessionParameters(v147, v134, type metadata accessor for MLActionClassifier.DataSource);
        object = v139._object;
        if (swift_getEnumCaseMultiPayload(v74, v139._object) == 3)
        {
          v145 = *v74;
          LOBYTE(v144) = *(v74 + 8);
          v130._countAndFlagsBits = *(v74 + 16);
          v142 = *(v74 + 24);
          v139._countAndFlagsBits = *(v74 + 32);
          v76 = *(v74 + 40);
          *(v74 + 56);
          v74 = v132;
          outlined init with copy of MLTrainingSessionParameters(v133, v132, type metadata accessor for MLActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(v74, object) == 3)
          {
            v147 = *v74;
            LODWORD(v148) = *(v74 + 8);
            v140._countAndFlagsBits = *(v74 + 16);
            v139._object = *(v74 + 24);
            v143._countAndFlagsBits = *(v74 + 32);
            v134 = *(v74 + 40);
            *(v74 + 56);
            v137 = v145;
            v77 = v144;
            LOBYTE(v144) = v144 & 1;
            v138 = v144;
            LODWORD(v146) = v77;
            outlined copy of Result<_DataTable, Error>(v145, v77);
            v78._countAndFlagsBits = v139._countAndFlagsBits;
            v78._object = v76;
            MLDataTable.subscript.getter(v78);
            v76;
            outlined consume of Result<_DataTable, Error>(v137, v138);
            v137 = v140._object;
            v138 = v141;
            v135 = Array<A>.init(_:)(&v137, v41);
            v137 = v147;
            LOBYTE(v139._countAndFlagsBits) = v148 & 1;
            v138 = v148 & 1;
            outlined copy of Result<_DataTable, Error>(v147, v148);
            v78._countAndFlagsBits = v143._countAndFlagsBits;
            v79 = v134;
            v78._object = v134;
            MLDataTable.subscript.getter(v78);
            v79;
            outlined consume of Result<_DataTable, Error>(v137, v138);
            v137 = v140._object;
            v138 = v141;
            v80 = Array<A>.init(_:)(&v137, v41);
            v81 = v135;
            ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v135, v80);
            v81;
            v80;
            if (ML11MLDataValueO_Tt1g5)
            {
              v137 = v145;
              v138 = v144;
              outlined copy of Result<_DataTable, Error>(v145, v146);
              v83._countAndFlagsBits = v130._countAndFlagsBits;
              v84 = v142;
              v83._object = v142;
              MLDataTable.subscript.getter(v83);
              v84;
              outlined consume of Result<_DataTable, Error>(v137, v138);
              v137 = v140._object;
              v138 = v141;
              v143._countAndFlagsBits = Array<A>.init(_:)(&v137, v41);
              v137 = v147;
              v138 = v139._countAndFlagsBits;
              LODWORD(v148) = v148;
              outlined copy of Result<_DataTable, Error>(v147, v148);
              v83._countAndFlagsBits = v140._countAndFlagsBits;
              v85 = v139._object;
              v83._object = v139._object;
              MLDataTable.subscript.getter(v83);
              v85;
              outlined consume of Result<_DataTable, Error>(v137, v138);
              v137 = v140._object;
              v138 = v141;
              v86 = Array<A>.init(_:)(&v137, v41);
              v87 = v143._countAndFlagsBits;
              v88 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v143._countAndFlagsBits, v86);
              v87;
              v86;
              if (v88)
              {
                outlined consume of Result<_DataTable, Error>(v147, v148);
                outlined consume of Result<_DataTable, Error>(v145, v146);
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v127, &demangling cache variable for type metadata for DataFrame?);
                return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143._object, &demangling cache variable for type metadata for DataFrame?);
              }

              v125 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v125, 0, 0);
              *v126 = 1;
              *(v126 + 8) = 0;
              *(v126 + 24) = 0;
              *(v126 + 40) = 0;
              *(v126 + 48) = 4;
              swift_willThrow(&type metadata for MLCreateError, v125);
              v122 = v147;
              v121 = v148;
            }

            else
            {
              v139._object;
              v142;
              v119 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v119, 0, 0);
              *v120 = 1;
              *(v120 + 8) = 0;
              *(v120 + 24) = 0;
              *(v120 + 40) = 0;
              *(v120 + 48) = 4;
              swift_willThrow(&type metadata for MLCreateError, v119);
              v121 = v148;
              v122 = v147;
            }

            outlined consume of Result<_DataTable, Error>(v122, v121);
            outlined consume of Result<_DataTable, Error>(v145, v146);
            goto LABEL_49;
          }

          outlined consume of Result<_DataTable, Error>(v145, v144);
          v76;
          v142;
        }

        outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLActionClassifier.DataSource);
        v99 = v135;
        outlined init with copy of MLTrainingSessionParameters(v147, v135, type metadata accessor for MLActionClassifier.DataSource);
        v100 = v139._object;
        if (swift_getEnumCaseMultiPayload(v99, v139._object) == 5)
        {
          v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v102 = v101[12];
          v142 = *(v99 + v102);
          v147 = *(v99 + v102 + 8);
          v103 = v101[16];
          v134 = *(v99 + v103);
          v145 = *(v99 + v103 + 8);
          *(v99 + v101[20] + 8);
          v144 = v146[4];
          (v144)(v143._countAndFlagsBits, v99, v148);
          v104 = v100;
          v105 = v128;
          outlined init with copy of MLTrainingSessionParameters(v133, v128, type metadata accessor for MLActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(v105, v104) == 5)
          {
            v106 = v101[12];
            v132 = *(v105 + v106);
            v139._object = *(v105 + v106 + 8);
            v107 = v101[16];
            v135 = *(v105 + v107);
            v139._countAndFlagsBits = *(v105 + v107 + 8);
            *(v105 + v101[20] + 8);
            (v144)(v140._countAndFlagsBits, v105, v148);
            v108 = v129;
            v109 = v145;
            DataFrame.subscript.getter(v134, v145);
            v109;
            v110 = *(v130._object + 13);
            v111 = v139._countAndFlagsBits;
            DataFrame.subscript.getter(v135, v139._countAndFlagsBits);
            v111;
            v112 = v136;
            LOBYTE(v111) = specialized Sequence.allSatisfy(_:)(v108);
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v108, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
            if (v111)
            {
              v113 = v147;
              v145 = v112;
              DataFrame.subscript.getter(v142, v147);
              v113;
              v114 = *(v130._object + 13);
              v115 = v139._object;
              DataFrame.subscript.getter(v132, v139._object);
              v115;
              LOBYTE(v115) = specialized Sequence.allSatisfy(_:)(v108);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v108, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
              if (v115)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v139._object;
              v147;
            }

            v123 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v123, 0, 0);
            *v124 = 1;
            *(v124 + 8) = 0;
            *(v124 + 24) = 0;
            *(v124 + 40) = 0;
            *(v124 + 48) = 4;
            swift_willThrow(&type metadata for MLCreateError, v123);
LABEL_45:
            v96 = v146[1];
            v97 = v148;
            v96(v140._countAndFlagsBits, v148);
            v98 = v143._countAndFlagsBits;
LABEL_46:
            v96(v98, v97);
LABEL_49:
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v127, &demangling cache variable for type metadata for DataFrame?);
            return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143._object, &demangling cache variable for type metadata for DataFrame?);
          }

          v145;
          v147;
          (v146[1])(v143._countAndFlagsBits, v148);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v127, &demangling cache variable for type metadata for DataFrame?);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143._object, &demangling cache variable for type metadata for DataFrame?);
          v116 = v105;
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for DataFrame?);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143._object, &demangling cache variable for type metadata for DataFrame?);
          v116 = v99;
        }

        return outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for MLActionClassifier.DataSource);
      }

      (v146[1])(v73, v71);
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(countAndFlagsBits, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_21;
  }

  return result;
}

uint64_t ActionClassifierTrainingSessionDelegate.pathsByLabel(for:)()
{
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v51 = *(v52 - 8);
  v0 = *(v51 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v53 = &v45;
  v3 = alloca(v0);
  v4 = alloca(v0);
  v5 = &v45;
  v6._countAndFlagsBits = 0x7461506F65646976;
  v6._object = 0xE900000000000068;
  if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v6))
  {
    DataFrame.subscript.getter(0x7461506F65646976, 0xE900000000000068, &type metadata for String);
    v7._countAndFlagsBits = 0x6C6562616CLL;
    v7._object = 0xE500000000000000;
    if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v7))
    {
      DataFrame.subscript.getter(0x6C6562616CLL, 0xE500000000000000, &type metadata for String);
      v8 = v52;
      v9 = Column.count.getter(v52);
      v47 = v9;
      if (v9 < 0)
      {
        BUG();
      }

      if (v9)
      {
        v50 = &v45;
        v56 = _swiftEmptyDictionarySingleton;
        v10 = 0;
        v11 = 0;
        do
        {
          Column.subscript.getter(v11, v8);
          if (v55)
          {
            v59 = v55;
            v58 = v54;
          }

          else
          {
            v58 = 0;
            v59 = 0xE000000000000000;
          }

          Column.subscript.getter(v11, v8);
          v46 = v11;
          if (v55)
          {
            v48 = v55;
            v49 = v54;
            _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v10, 0);
          }

          else
          {
            _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v10, 0);
            v49 = 0;
            v48 = 0xE000000000000000;
          }

          v12 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v56);
          v54 = v12;
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
          v15 = (v14 & 1) == 0;
          v16 = __OFADD__(v12[2], v15);
          v17 = v12[2] + v15;
          if (v16)
          {
            BUG();
          }

          v18 = v14;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          v19 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17);
          v20 = v54;
          if (v19)
          {
            v21 = v59;
            v22 = v59;
            v57 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
            LOBYTE(v25) = v25 & 1;
            if ((v18 & 1) != v25)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v22, v25, v23, v24);
              BUG();
            }
          }

          else
          {
            v21 = v59;
          }

          v26 = v20;
          if ((v18 & 1) == 0)
          {
            v27 = v57;
            v20[(v57 >> 6) + 8] |= 1 << v57;
            v28 = v20[6];
            v29 = 16 * v27;
            *(v28 + v29) = v58;
            *(v28 + v29 + 8) = v21;
            *(v20[7] + 8 * v27) = _swiftEmptyArrayStorage;
            v30 = v20[2];
            v20;
            v16 = __OFADD__(1, v30);
            v31 = v30 + 1;
            if (v16)
            {
              BUG();
            }

            v20[2] = v31;
            v26 = v21;
          }

          v59 = v21;
          v26;
          v32 = v20[7];

          v33 = v57;
          v34 = *(v32 + 8 * v57);
          v35 = swift_isUniquelyReferenced_nonNull_native(v34);
          v58 = v32;
          *(v32 + 8 * v33) = v34;
          v56 = v20;
          if (!v35)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
            *(v58 + 8 * v57) = v34;
          }

          v36 = v34[2];
          v37 = v59;
          if (v34[3] >> 1 <= v36)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34[3] >= 2uLL, v36 + 1, 1, v34);
            *(v58 + 8 * v57) = v34;
          }

          v38 = v46 + 1;
          v34[2] = v36 + 1;
          v11 = v38;
          v39 = 2 * v36;
          v34[v39 + 4] = v49;
          v34[v39 + 5] = v48;
          v37;
          v10 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v8 = v52;
        }

        while (v47 != v11);
        v5 = v50;
        v43 = v56;
        v59 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
      }

      else
      {
        v43 = _swiftEmptyDictionarySingleton;
        v59 = 0;
      }

      v44 = *(v51 + 8);
      v44(v53, v8);
      v44(v5, v8);
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v59, 0);
    }

    else
    {
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v43 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v42, &protocol witness table for String);
      (*(v51 + 8))(&v45, v52);
    }

    return v43;
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v40, &protocol witness table for String);
  }
}

uint64_t ActionClassifierTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable), *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures), *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures), *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_validationFeatures + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);

  v2 = *(v0 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_args);

  return v0;
}

uint64_t type metadata accessor for ActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActionClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for ActionClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for ActionClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for ActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  v4[0] = &unk_343CD8;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[1] = *(result - 8) + 64;
    result = type metadata accessor for MLActionClassifier.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = &unk_343CF0;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for Builtin.Int64 + 64;
      v4[6] = &unk_343D08;
      v4[7] = &unk_343D08;
      v4[8] = &value witness table for Builtin.NativeObject + 64;
      v4[9] = &value witness table for Builtin.NativeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 10, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLActionClassifier.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLActionClassifier.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLActionClassifier.PersistentParameters?)
  {
    v2 = type metadata accessor for MLActionClassifier.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLActionClassifier.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance ActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = ActionClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v7)
  {
    return (*(v2 + 8))(v5, v6, *(&v4 + 1));
  }

  else
  {
    return (*(v2 + 8))(v4, BYTE8(v4));
  }
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance ActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = ActionClassifierTrainingSessionDelegate.evaluate(from:)(a1);
  if (!v7)
  {
    v5 = 1;
    v6 = 1;
  }

  return (*(v2 + 8))(v5, v6, *(&v4 + 1));
}

uint64_t outlined assign with take of MLActionClassifier.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply(uint64_t a1, uint64_t a2)
{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)(a1, a2);
}

unint64_t MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  if (*(v0 + 8))
  {
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v3._object;
    v1 = 0xD000000000000031;
  }

  else
  {
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v3._object;
  }

  v5 = v3;
  String.append(_:)(v3);
  object, v5._object;
  return v1;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.FeatureExtractorType.validate()()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (v1 == 1)
    {
      return;
    }

    _StringGuts.grow(_:)(58);
    v2._object = "vggish revision " + 0x8000000000000000;
    v2._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v2);
    v3 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = v4;
    v2._countAndFlagsBits = v3;
    v2._object = v4;
    String.append(_:)(v2);
    v5;
    v2._object = "und in the model." + 0x8000000000000000;
    v2._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v2);
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    if (v1 == 1)
    {
      return;
    }

    _StringGuts.grow(_:)(45);
    0xE000000000000000;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v8._object;
    String.append(_:)(v8);
    object;
    v10._object = "und in the model." + 0x8000000000000000;
    v10._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v10);
    v6 = 0xD000000000000019;
    v7 = "eature print revision " + 0x8000000000000000;
  }

  v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
  *v12 = v6;
  *(v12 + 8) = v7;
  *(v12 + 16) = 0;
  *(v12 + 32) = 0;
  *(v12 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v11);
}

uint64_t MLGazetteer.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v18 = v2;
  v15 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v16 = *(v3 + 8);
  v9 = *(v3 + 24);
  v14 = &v13;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0x65657474657A6147, 0xE900000000000072, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v17 = v4;
    v18 = v5;
    v13 = v9;
    v11 = v9;
    v12 = v14;
    static MLGazetteer.write(dictionary:parameters:to:metadata:)(v16, &v13, v14, v15);

    return (*(v18 + 8))(v12, v17);
  }

  return result;
}

NSURL *static MLGazetteer.write(dictionary:parameters:to:metadata:)(uint64_t a1, void **a2, uint64_t a3, const void *a4)
{
  v4 = *a2;
  qmemcpy(v16, a4, sizeof(v16));
  v5 = static _TextUtilities.optionsDictionary(from:)(v16);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = NLLanguageUndetermined;
    v4 = 0;
  }

  v14 = objc_opt_self(NLGazetteer);
  v7 = v4;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v5;
  v16[0] = 0;
  LOBYTE(v10) = outlined bridged method (mnnnbnnn) of @objc static NLGazetteer.writeMLModel(for:language:to:options:)(v6.super.isa, v15, v9, v10, v16, v14);

  v11 = v16[0];
  if (v10)
  {
    v16[0];
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)(v11);

    swift_willThrow(v13, v15);
  }

  return __stack_chk_guard;
}

uint64_t MLGazetteer.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v15 = v2;
  v17 = a2;
  stringa = string._object;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v14 = *v3;
  v18 = *(v3 + 2);
  v9 = *(v3 + 3);
  v19 = &v11;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x65657474657A6147, 0xE900000000000072);
  if (!v2)
  {
    v11 = v14;
    v12 = v18;
    v13 = v9;
    MLGazetteer.write(to:metadata:)(v19, v17);
    return (*(v5 + 8))(v19, v4);
  }

  return result;
}

uint64_t outlined bridged method (mnnnbnnn) of @objc static NLGazetteer.writeMLModel(for:language:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a4, &type metadata for AnyHashable;
  LODWORD(a5) = [a6 writeGazetteerMLModelForDictionary:a1 language:a2 toURL:a3 options:isa error:a5];

  return a5;
}

id MLMultiArray.cast(to:)(char *a1)
{
  v4 = [v2 dataType];
  if (v4 == &loc_1003C + 4)
  {
    if (a1 == &loc_10020)
    {
      v17 = &v14;
      v9 = alloca(24);
      v10 = alloca(32);
      v16 = v2;
      v7 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
      v8 = partial apply for closure #2 in MLMultiArray.cast(to:);
LABEL_7:
      result = MLMultiArray.withUnsafeBytes<A>(_:)(v8, &v14, v7);
      if (!v1)
      {
        return v14;
      }

      return result;
    }
  }

  else if (v4 == &loc_10020 && a1 == &loc_1003C + 4)
  {
    v17 = &v14;
    v5 = alloca(24);
    v6 = alloca(32);
    v16 = v2;
    v7 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v8 = partial apply for closure #1 in MLMultiArray.cast(to:);
    goto LABEL_7;
  }

  if (v4 != a1)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v12._object = "CreateML/_CoreMLUtilities.swift" + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v12);
    v16 = [v2 dataType];
    v13 = type metadata accessor for MLMultiArrayDataType(0);
    _print_unlocked<A, B>(_:_:)(&v16, &v14, v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 0x60206F742060;
    v12._object = 0xE600000000000000;
    String.append(_:)(v12);
    v16 = a1;
    _print_unlocked<A, B>(_:_:)(&v16, &v14, v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v12);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v14, v15, "CreateML/_CoreMLUtilities.swift", 31, 2, 58, 0);
    BUG();
  }

  return v2;
}

id closure #1 in MLMultiArray.cast(to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = v3;
  if (a1)
  {
    v5 = a2 - a1;
    v15 = v5 / 4;
    v6 = [a3 shape];
  }

  else
  {
    v15 = 0;
    v6 = [a3 shape];
  }

  v7 = v6;
  v8 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v8);

  objc_allocWithZone(MLMultiArray);
  result = @nonobjc MLMultiArray.init(shape:dataType:)(v9, 65600);
  if (!v4)
  {
    v11 = result;
    v12 = alloca(32);
    v13 = alloca(32);
    v16 = a1;
    v17 = v15;
    MLMultiArray.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in closure #1 in MLMultiArray.cast(to:), &v14, &type metadata for () + 8);
    result = v14;
    *v14 = v11;
  }

  return result;
}

void closure #1 in closure #1 in MLMultiArray.cast(to:)(double *__C, uint64_t a2, uint64_t a3, const float *a4, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 8;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    BUG();
  }

  if (!a4)
  {
    BUG();
  }

  if (!__C)
  {
    BUG();
  }

  vDSP_vspdp(a4, 1, __C, 1, a5);
}

id closure #2 in MLMultiArray.cast(to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = v3;
  if (a1)
  {
    v5 = a2 - a1;
    v15 = v5 / 8;
    v6 = [a3 shape];
  }

  else
  {
    v15 = 0;
    v6 = [a3 shape];
  }

  v7 = v6;
  v8 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v8);

  objc_allocWithZone(MLMultiArray);
  result = @nonobjc MLMultiArray.init(shape:dataType:)(v9, &loc_10020);
  if (!v4)
  {
    v11 = result;
    v12 = alloca(32);
    v13 = alloca(32);
    v16 = a1;
    v17 = v15;
    MLMultiArray.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in closure #2 in MLMultiArray.cast(to:), &v14, &type metadata for () + 8);
    result = v14;
    *v14 = v11;
  }

  return result;
}

void closure #1 in closure #2 in MLMultiArray.cast(to:)(float *__C, uint64_t a2, uint64_t a3, const double *a4, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    BUG();
  }

  if (!a4)
  {
    BUG();
  }

  if (!__C)
  {
    BUG();
  }

  vDSP_vdpsp(a4, 1, __C, 1, a5);
}

id @nonobjc MLModel.__allocating_init(contentsOf:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v2 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = 0;
  v4 = [ObjCClassFromMetadata modelWithContentsOfURL:v2 error:&v12];
  v5 = v4;

  v6 = v12;
  if (v5)
  {
    v7 = type metadata accessor for URL(0);
    v8 = *(*(v7 - 8) + 8);
    v6;
    v8(a1, v7);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow();
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v5;
}

id key path getter for MLGazetteer.model : MLGazetteer(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v5 = *a1;
  result = MLGazetteer.model.getter();
  *v2 = result;
  return result;
}

void (*MLGazetteer.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

id MLGazetteer.modelParameters.getter()
{
  v2 = *(v1 + 24);
  *v0 = v2;
  return v2;
}

NSURL *MLGazetteer.init(dictionary:parameters:)(uint64_t a1, void **a2)
{
  v119 = v3;
  v104 = v2;
  v118 = type metadata accessor for UUID(0);
  isa = *(v118 - 1);
  v4 = *(isa + 8);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v116 = &v102;
  v107 = type metadata accessor for URL(0);
  v112 = *(v107 - 8);
  v7 = *(v112 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v103 = &v102;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v105 = &v102;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v102 = &v102;
  v14 = alloca(v7);
  v15 = alloca(v7);
  v110 = &v102;
  v16 = alloca(v7);
  v17 = alloca(v7);
  v115 = &v102;
  v18 = alloca(v7);
  v19 = alloca(v7);
  v111 = &v102;
  v20 = alloca(v7);
  v21 = alloca(v7);
  v113 = &v102;
  v22 = *a2;
  v23 = objc_opt_self(NSFileManager);
  v106 = v22;
  v24 = v22;
  v114 = v24;
  a1;
  v26 = [v23 defaultManager];
  v27 = v26;
  NSFileManager.createTemporaryModelDirectory()();
  if (v28)
  {

    swift_bridgeObjectRelease_n(a1, 2);
    v29 = v114;

    v30 = v29;
    goto LABEL_12;
  }

  v119 = 0;
  v109 = v27;
  NSFileManager.temporaryModelDirectory.getter();
  v31 = v116;
  UUID.init()();
  v32 = UUID.uuidString.getter();
  v117 = a1;
  v34 = v33;
  (*(isa + 1))(v31, v118);
  v120[0] = v32;
  v120[1] = v34;
  v35._countAndFlagsBits = 45;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v35._countAndFlagsBits = 0x65657474657A6147;
  v35._object = 0xE900000000000072;
  String.append(_:)(v35);
  v36 = v120[1];
  URL.appendingPathComponent(_:)(v120[0], v120[1]);
  v36;
  URL.appendingPathExtension(_:)(7627108, 0xE300000000000000);
  URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v37 = v114;
  v38 = v114;
  if (!v106)
  {
    v38 = NLLanguageUndetermined;
  }

  v39 = objc_opt_self(NLGazetteer);
  v118 = v37;
  URL._bridgeToObjectiveC()(v118);
  v41 = v40;
  v120[0] = 0;
  v42 = v39;
  v43 = isa;
  LOBYTE(v116) = [v42 writeGazetteerForDictionary:isa language:v38 toURL:v40 error:v120];

  v44 = v120[0];
  if (!v116)
  {
    v52 = v120[0];
    v117;
    v53 = v118;
    (objc_release)(v118);
    (objc_release)(v53);
    _convertNSErrorToError(_:)(v44);
    (objc_release)(v52);
    swift_willThrow(v52, "writeGazetteerForDictionary:language:toURL:error:");
    (objc_release)(v109);
    v54 = *(v112 + 8);
    v55 = v107;
    v54(v110, v107);
    v54(v115, v55);
    v54(v111, v55);
    v54(v113, v55);
    v117;
    goto LABEL_11;
  }

  v45 = v102;
  v46 = v107;
  isa = *(v112 + 16);
  (isa)(v102, v115, v107);
  objc_allocWithZone(NLGazetteer);
  v44;
  v47 = v119;
  v48 = @nonobjc NLGazetteer.init(contentsOf:)(v45);
  v119 = v47;
  v49 = v117;
  if (v47)
  {
    v117;

    v50 = v118;
    v51 = *(v112 + 8);
    v51(v110, v46);
    v51(v115, v46);
    v51(v111, v46);
    v51(v113, v46);
    v49;
LABEL_11:
    v30 = v114;
    goto LABEL_12;
  }

  v56 = v48;
  v121 = v106;
  memset(v120, 0, 72);
  v118 = v118;
  v57 = v56;
  v58 = v49;
  v59 = v49;
  v60 = v110;
  v61 = v119;
  static MLGazetteer.write(dictionary:parameters:to:metadata:)(v59, &v121, v110, v120);
  v119 = v61;
  if (v61)
  {
    v58;
    v62 = v60;
    v63 = v57;

    v64 = v118;
    v65 = v62;
    v66 = *(v112 + 8);
    v67 = v107;
    v66(v65, v107);
    v66(v115, v67);
    v66(v111, v67);
    v66(v113, v67);
    v117;

    goto LABEL_11;
  }

  v116 = v57;

  v69 = objc_opt_self(MLModel);
  URL._bridgeToObjectiveC()(v69);
  v71 = v70;
  v120[0] = 0;
  v72 = [(NSURL *)v69 compileModelAtURL:v70 error:v120];
  v73 = v72;

  v74 = v120[0];
  if (!v73)
  {
    v85 = v120[0];

    v117;
    v86 = v118;

    _convertNSErrorToError(_:)(v74);
    swift_willThrow(v85, "compileModelAtURL:error:");
    v87 = v110;
    $defer #1 () in MLGazetteer.init(dictionary:parameters:)();

    v88 = v87;
    v89 = *(v112 + 8);
    v90 = v107;
    v89(v88, v107);
    v89(v115, v90);
    v89(v111, v90);
    v89(v113, v90);
    v117;

    goto LABEL_11;
  }

  v75 = v105;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v73);
  v74;
  v76 = v73;
  v77 = v75;

  type metadata accessor for MLModel();
  v78 = v103;
  v79 = v107;
  (isa)(v103, v77, v107);
  v80 = v119;
  v81 = @nonobjc MLModel.__allocating_init(contentsOf:)(v78);
  v119 = v80;
  if (!v80)
  {
    v91 = v81;
    v92 = v117;
    v93 = *(v117 + 16);
    v117;
    v114 = v91;
    v94 = specialized _copyCollectionToContiguousArray<A>(_:)(v92);
    v92;
    v95 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_s15FlattenSequenceVySaySaySSGGGTt0g5(v94);
    v96 = *(v95 + 16);
    v95;
    static MLGazetteer.reportAnalytics(termCount:labelCount:language:)(v93, v96, v106);

    v97 = *(v112 + 8);
    v97(v105, v79);
    v98 = v110;
    $defer #1 () in MLGazetteer.init(dictionary:parameters:)();

    v97(v98, v79);
    v97(v115, v79);
    v97(v111, v79);
    v97(v113, v79);
    v99 = v104;
    v100 = v116;
    *v104 = v116;
    v99[1] = v92;
    v101 = v114;
    v99[2] = v114;
    v99[3] = v106;

    v92;
    (objc_release)(v100);
    return __stack_chk_guard;
  }

  v82 = *(v112 + 8);
  v82(v77, v79);

  v117;
  v83 = v118;

  v84 = v110;
  $defer #1 () in MLGazetteer.init(dictionary:parameters:)();

  v82(v84, v79);
  v82(v115, v79);
  v82(v111, v79);
  v82(v113, v79);
  v117;

  v30 = v114;
LABEL_12:

  return __stack_chk_guard;
}

NSURL *$defer #1 () in MLGazetteer.init(dictionary:parameters:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

char static MLGazetteer.reportAnalytics(termCount:labelCount:language:)(int a1, int a2, uint64_t a3)
{
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_gazetteer, __PAIR128__(0xEF736D7265542066, 0x6F207265626D754ELL), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_gazetteer, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), a2);
    if (a3)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
      v7 = v6;
    }

    else
    {
      v7 = "formers Text Embedding" + 0x8000000000000000;
      v5 = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_gazetteer, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), __PAIR128__(v7, v5));
    return v7;
  }

  return result;
}

uint64_t MLGazetteer.init(labeledData:textColumn:labelColumn:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, id *a6, double a7)
{
  v73._countAndFlagsBits = a4;
  v64 = v7;
  v72[0] = a2;
  v72[1] = a5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v67 = *a6;
  outlined copy of Result<_DataTable, Error>(*a1, v11);
  v12._countAndFlagsBits = a2;
  v12._object = a3;
  MLDataTable.subscript.getter(v12);
  a3;
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v72[0] = v68;
  HIBYTE(v73._object) = BYTE8(v68);
  *&v70 = v10;
  BYTE8(v70) = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v12._countAndFlagsBits = v73._countAndFlagsBits;
  v12._object = v72[1];
  MLDataTable.subscript.getter(v12);
  v72[1];
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v71 = v68;
  BYTE6(v73._object) = BYTE8(v68);
  *&v68 = v10;
  BYTE8(v68) = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v13 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v14 = specialized RandomAccessCollection<>.distance(from:to:)(0, v13, v10, v11);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  v63 = v14;
  if (v14 < 0)
  {
    BUG();
  }

  v15 = _swiftEmptyDictionarySingleton;
  if (v14)
  {
    v16 = 0;
    v17 = v71;
    while (1)
    {
      if (BYTE6(v73._object))
      {

        v15 = _swiftEmptyDictionarySingleton;
        v16 = 0;
        goto LABEL_29;
      }

      outlined copy of Result<_DataTable, Error>(v17, 0);
      _UntypedColumn.valueAtIndex(index:)(v16, a7);
      outlined consume of Result<_DataTable, Error>(v17, 0);
      v72[1] = *(&v68 + 1);
      if (v69 != 2)
      {
        break;
      }

      if (HIBYTE(v73._object))
      {

        outlined consume of MLDataValue(v68, v72[1], 2);
        v73._countAndFlagsBits = _swiftEmptyDictionarySingleton;
        _StringGuts.grow(_:)(32);
        0xE000000000000000;
        strcpy(&v70, "Current text ");
        HIWORD(v70) = -4864;
        v59._countAndFlagsBits = MLDataValue.description.getter();
        object = v59._object;
        String.append(_:)(v59);
        object;
        outlined consume of MLDataValue(0, 0, 6);
        v61._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v61);
        *&v72[1] = v70;
        v61._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v61._object, 0, 0);
        *v62 = v70;
        *(v62 + 16) = 0;
        *(v62 + 32) = 0;
        *(v62 + 48) = 1;
        swift_willThrow(&type metadata for MLCreateError, v61._object);
        v58 = v71;
        v57 = 0;
        goto LABEL_34;
      }

      v73._countAndFlagsBits = v68;
      v18 = v16;
      v19 = v15;
      outlined copy of Result<_DataTable, Error>(v72[0], 0);
      v66 = v18;
      _UntypedColumn.valueAtIndex(index:)(v18, a7);
      outlined consume of Result<_DataTable, Error>(v72[0], 0);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v21 = swift_allocObject(v20, 48, 7);
      *(v21 + 16) = 1;
      *(v21 + 24) = 2;
      *(v21 + 32) = v68;
      v65 = v21;
      *&v68 = v21;
      countAndFlagsBits = v73._countAndFlagsBits;
      if (v15[2])
      {
        v72[1];
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v73._countAndFlagsBits, v72[1]);
        if (v24)
        {
          v25 = *(v15[7] + 8 * v23);
          *(v19[7] + 8 * v23);
          outlined consume of MLDataValue(v73._countAndFlagsBits, v72[1], 2);
          v26 = v25;
          v15 = v19;
          specialized Array.append<A>(contentsOf:)(v26);
          v65 = v68;
          v27 = v72[1];
          countAndFlagsBits = v73._countAndFlagsBits;
        }

        else
        {
          countAndFlagsBits = v73._countAndFlagsBits;
          outlined consume of MLDataValue(v73._countAndFlagsBits, v72[1], 2);
          v27 = v72[1];
        }
      }

      else
      {
        v27 = v72[1];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v15);
      *&v70 = v15;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v27);
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v15[2], v31);
      v33 = v15[2] + v31;
      if (v32)
      {
        BUG();
      }

      v34 = v29;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
      {
        v35 = v72[1];
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v73._countAndFlagsBits, v72[1]);
        LOBYTE(v38) = v38 & 1;
        if ((v34 & 1) != v38)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v72[1], v38, v36, v37);
          BUG();
        }

        v39 = v34;
        v40 = v73._countAndFlagsBits;
      }

      else
      {
        v35 = v72[1];
        v40 = v73._countAndFlagsBits;
        v39 = v34;
      }

      v15 = v70;
      if (v39)
      {
        v41 = *(v70 + 56);
        v42 = *(v41 + 8 * v30);
        *(v41 + 8 * v30) = v65;
        v42;
        outlined consume of MLDataValue(v40, v35, 2);
        v17 = v71;
      }

      else
      {
        *(v70 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v43 = v15[6];
        v44 = 16 * v30;
        *(v43 + v44) = v40;
        *(v43 + v44 + 8) = v35;
        *(v15[7] + 8 * v30) = v65;
        v45 = v15[2];
        v32 = __OFADD__(1, v45);
        v46 = v45 + 1;
        v17 = v71;
        if (v32)
        {
          BUG();
        }

        v15[2] = v46;
      }

      v16 = v66 + 1;
      v47 = v72[0];
      if (v63 == v66 + 1)
      {
        goto LABEL_24;
      }
    }

    outlined consume of MLDataValue(v68, v72[1], v69);

LABEL_29:
    v73._countAndFlagsBits = v15;
    _StringGuts.grow(_:)(33);
    0xE000000000000000;
    strcpy(&v70, "Current label ");
    HIBYTE(v70) = -18;
    if (BYTE6(v73._object))
    {
      v51 = 6;
      v52 = 0;
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v17, 0);
      _UntypedColumn.valueAtIndex(index:)(v16, a7);
      outlined consume of Result<_DataTable, Error>(v17, 0);
      v52 = 0xE000000000000000;
      v51 = v69;
    }

    v53._countAndFlagsBits = MLDataValue.description.getter();
    v54 = v53._object;
    String.append(_:)(v53);
    v54;
    outlined consume of MLDataValue(0, v52, v51);
    v55._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v55);
    *&v72[1] = v70;
    v55._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v55._object, 0, 0);
    *v56 = v70;
    *(v56 + 16) = 0;
    *(v56 + 32) = 0;
    *(v56 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v55._object);
    v57 = BYTE6(v73._object);
    v58 = v71;
LABEL_34:
    outlined consume of Result<_DataTable, Error>(v58, v57);
    outlined consume of Result<_DataTable, Error>(v72[0], SHIBYTE(v73._object));
    v49 = v73._countAndFlagsBits;
  }

  else
  {
    v47 = v72[0];
    v17 = v71;
LABEL_24:
    v48 = v47;
    *&v70 = v67;
    v15;
    MLGazetteer.init(dictionary:parameters:)(v15, &v70);
    if (!v8)
    {
      outlined consume of Result<_DataTable, Error>(v17, SBYTE6(v73._object));
      outlined consume of Result<_DataTable, Error>(v48, SHIBYTE(v73._object));
      v15;
      result = v64;
      *v64 = v68;
      v64[1] = v69;
      return result;
    }

    outlined consume of Result<_DataTable, Error>(v17, SBYTE6(v73._object));
    outlined consume of Result<_DataTable, Error>(v48, SHIBYTE(v73._object));
    v49 = v15;
  }

  return v49;
}

uint64_t MLGazetteer.description.getter()
{
  v9 = *(v0 + 24);
  v1 = v9;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v9 = String.init<A>(describing:)(&v9, v3);
  v10 = v4;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v5._countAndFlagsBits = v9;
  v6 = v10;
  v9 = 0x65676175676E614CLL;
  v10 = 0xEA0000000000203ALL;
  v5._object = v6;
  String.append(_:)(v5);

  v6;
  v5._countAndFlagsBits = v9;
  v7 = v10;
  v9 = 0xD000000000000016;
  v10 = " is not a String." + 0x8000000000000000;
  v5._object = v7;
  String.append(_:)(v5);
  v7;
  return v9;
}

uint64_t MLGazetteer.debugDescription.getter()
{
  v1 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v8 = *(v0 + 24);
  v7 = v1;
  v5;
  v2 = v6;
  v3 = MLGazetteer.description.getter();

  v5;
  return v3;
}

uint64_t MLGazetteer.playgroundDescription.getter()
{
  v12 = v0;
  v2 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 24);
  v9 = v2;
  v7;
  v3 = v8;
  v4 = MLGazetteer.description.getter();
  v11 = v5;

  v7;
  v12[3] = &type metadata for String;
  *v12 = v4;
  result = v11;
  v12[1] = v11;
  return result;
}

id @nonobjc NLGazetteer.init(contentsOf:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [v1 initWithContentsOfURL:v2 error:&v12];

  v5 = v12;
  v11 = v4;
  if (v4)
  {
    v6 = type metadata accessor for URL(0);
    v7 = *(*(v6 - 8) + 8);
    v5;
    v7(a1, v6);
  }

  else
  {
    v8 = v12;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v11;
}

void destroy for MLGazetteer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8), a2;
}

void *initializeWithCopy for MLGazetteer(void *a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  a1[1] = v4;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = *(a2 + 24);
  a1[3] = v6;
  v3;
  v4;
  v5;
  v6;
  return a1;
}

uint64_t assignWithCopy for MLGazetteer(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;

  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  v5;
  v6, a2;
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v7;

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  *(a1 + 24) = v10;
  v10;

  return a1;
}

uint64_t assignWithTake for MLGazetteer(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3, a2;

  v4 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  return a1;
}

Swift::Int MLBoundingBoxAnchor.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor()
{
  result = lazy protocol witness table cache variable for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor;
  if (!lazy protocol witness table cache variable for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLBoundingBoxAnchor, &type metadata for MLBoundingBoxAnchor);
    lazy protocol witness table cache variable for type MLBoundingBoxAnchor and conformance MLBoundingBoxAnchor = result;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*(a3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v6)
    {
      return outlined init with copy of Any(*(a3 + 56) + 32 * result, v4);
    }
  }

  v4[1] = 0;
  *v4 = 0;
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v5 & 1) != 0))
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  return specialized Dictionary.subscript.getter(a1, a2, a3);
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v6;
  return v6;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56);
  v7 = 16 * v4;
  v8 = *(v6 + v7);
  *(v6 + v7 + 8);
  return v8;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  swift_unknownObjectRetain(v6);
  return v6;
}

{
  v4 = v3;
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for Tensor(0);
    (*(*(v10 - 8) + 16))(v4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    return __swift_storeEnumTagSinglePayload(v4, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for Tensor(0);
    return __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  }
}

{
  return specialized Dictionary.subscript.getter(a1, a2, a3);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.subscript.getter(a1, a2, specialized __RawDictionaryStorage.find<A>(_:), outlined init with copy of Any);
}

{
  return specialized Dictionary.subscript.getter(a1, a2, specialized __RawDictionaryStorage.find<A>(_:), outlined init with copy of Any);
}

{
  if (*(a2 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v3 & 1) != 0))
  {
    return *(*(a2 + 56) + 8 * v2);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a2 + 56) + 8 * v2);
  v4;
  return v4;
}

uint64_t specialized Dictionary.subscript.getter(unsigned int a1, uint64_t a2)
{
  return specialized Dictionary.subscript.getter(a1, a2);
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a2 + 56) + 8 * v2);

  return v4;
}

{
  return specialized Dictionary.subscript.getter(a1, a2);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, unint64_t (*a3)(uint64_t a1), uint64_t (*a4)(uint64_t, _OWORD *))
{
  v5 = result;
  if (*(a2 + 16))
  {
    result = a3(a1);
    if (v7)
    {
      return a4(*(a2 + 56) + 32 * result, v5);
    }
  }

  v5[1] = 0;
  *v5 = 0;
  return result;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      return outlined init with copy of Any(*(a2 + 56) + 32 * result, v3);
    }
  }

  v3[1] = 0;
  *v3 = 0;
  return result;
}

{
  v3 = result;
  if (*(a2 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      return outlined init with copy of Any(*(a2 + 56) + 32 * result, v3);
    }
  }

  v3[1] = 0;
  *v3 = 0;
  return result;
}

char MLDataTable.Row.subscript.getter(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v4;
  v6 = v3;
  v7 = *(v4 + 8);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = *(v5 + 16);
  a2;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v10 & 1) == 0)
  {
    LOBYTE(v3) = a2;
LABEL_5:
    *v6 = 0;
    *(v6 + 16) = -1;
    return v3;
  }

  v11 = *(*(v7 + 56) + 8 * v9);
  a2;

  v12 = CMLSequence.value(at:)(v11);
  MLDataValue.init(_:)(v12, a3);

  LOBYTE(v3) = v15;
  *v6 = v14;
  *(v6 + 16) = v15;
  return v3;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1)
{
  v1 = CMLSequence.size.getter();
  if (a1 < 0 || v1 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

{
  return specialized RandomAccessCollection<>.index(after:)(a1);
}

{
  return specialized RandomAccessCollection<>.index(after:)(a1, CMLDictionary.size.getter);
}

{

  v1 = CMLSequence.size.getter();
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1);

  if (a1 < 0 || v2 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

{
  return specialized RandomAccessCollection<>.index(after:)(a1, CMLSequence.size.getter);
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v3 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a2, v5);
  if (a1 < 0 || v3 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1, uint64_t (__cdecl *a2)())
{
  v2 = a2();
  if (a1 < 0 || v2 <= a1)
  {
    BUG();
  }

  return a1 + 1;
}

uint64_t MLDataTable.Row.Values.description.getter(double a1)
{
  v2 = *v1;
  v62 = 91;
  v63 = 0xE100000000000000;

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

  if (v6 < 0)
  {
    BUG();
  }

  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  v68 = v2;
  v2;
  if (v4 < 0 || v8 < v4)
  {
    BUG();
  }

  v9 = 10;
  if (v4 < 0xA)
  {
    v9 = v4;
  }

  if (v4)
  {
    v10 = 0;
    v58 = v9;
    while (2)
    {
      if (v10 != v9)
      {
        if (v10)
        {
          v11._countAndFlagsBits = 8236;
          v11._object = 0xE200000000000000;
          String.append(_:)(v11);
        }

        v12 = CMLSequence.value(at:)(v10);
        switch(CMLFeatureValue.type.getter())
        {
          case 0u:
            v13 = *(v12 + 16);

            v14 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v13));

            v12;
            object = 0;
            v16 = 0;
            goto LABEL_41;
          case 1u:
            v40 = *(v12 + 16);

            specialized handling<A, B>(_:_:)(v40);
            v67 = a1;

            v12;
            a1 = v67;
            v14 = v67;
            v16 = 1;
            goto LABEL_40;
          case 2u:

            v35 = CMLFeatureValue.stringValue()();
            if (v36)
            {
              v36;

              BUG();
            }

            v14 = *&v35._countAndFlagsBits;
            object = v35._object;

            v12;
            v16 = 2;
            goto LABEL_41;
          case 3u:
            v37 = *(v12 + 16);

            v38 = specialized handling<A, B>(_:_:)(v37);
            if (!v38)
            {
              BUG();
            }

            v39 = type metadata accessor for CMLSequence();
            v14 = COERCE_DOUBLE(swift_allocObject(v39, 25, 7));
            *(*&v14 + 16) = v38;
            *(*&v14 + 24) = 1;

            v12;
            v16 = 3;
            goto LABEL_40;
          case 4u:
            v17 = *(v12 + 16);

            v18 = specialized handling<A, B>(_:_:)(v17);
            if (!v18)
            {
              BUG();
            }

            v60 = v12;
            v59 = v10;
            v61 = type metadata accessor for CMLDictionary();
            *&v19 = COERCE_DOUBLE(swift_initStackObject(v61, v56));
            *(v19 + 16) = v18;
            v64 = _swiftEmptyDictionarySingleton;
            swift_retain_n(v19, 2);
            v20 = 0;
            v65 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
            v67 = *&v19;
            while (v20 != CMLDictionary.size.getter())
            {
              CMLDictionary.keyAndValue(at:)(v20);
              v22 = v21;
              v20 = specialized RandomAccessCollection<>.index(after:)(v20, CMLDictionary.size.getter);
              v23 = CMLFeatureValue.stringValue()();
              if (!v24)
              {
                v66 = v23;

                switch(CMLFeatureValue.type.getter())
                {
                  case 0u:
                    v25 = *(v22 + 16);

                    countAndFlagsBits = specialized handling<A, B>(_:_:)(v25);
                    JUMPOUT(0x194AFFLL);
                  case 1u:
                    v34 = *(v22 + 16);

                    specialized handling<A, B>(_:_:)(v34);
                    countAndFlagsBits = *&a1;
                    JUMPOUT(0x194C8FLL);
                  case 2u:

                    countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
                    if (!v29)
                    {
                      JUMPOUT(0x194BEFLL);
                    }

                    v29;

                    BUG();
                  case 3u:
                    v30 = *(v22 + 16);

                    v31 = specialized handling<A, B>(_:_:)(v30);
                    if (v31)
                    {
                      v32 = type metadata accessor for CMLSequence();
                      v33 = swift_allocObject(v32, 25, 7);
                      *(v33 + 16) = v31;
                      countAndFlagsBits = v33;
                      JUMPOUT(0x194C54);
                    }

                    BUG();
                  case 4u:
                    v26 = *(v22 + 16);

                    v27 = specialized handling<A, B>(_:_:)(v26);
                    if (v27)
                    {
                      v28 = swift_allocObject(v61, 24, 7);
                      *(v28 + 16) = v27;
                      v57[0] = v28;
                      v57[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                      v57[2] = 0;
                      v57[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                      v57[4] = 0;
                      v57[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                      v57[6] = 0;
                      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v57);
                      JUMPOUT(0x194BB3);
                    }

                    BUG();
                  case 5u:
                    JUMPOUT(0x194CB0);
                  case 6u:
                    JUMPOUT(0x194CCDLL);
                }
              }

              v24;

              *&v19 = v67;
            }

            v60;
            v19;
            v16 = 4;
            object = 0;
            v10 = v59;
            v14 = v65;
            goto LABEL_41;
          case 5u:

            v16 = 6;
            v14 = 0.0;
            goto LABEL_40;
          case 6u:

            MLDataValue.MultiArrayType.init(from:)(v12);
            if (v69 == 0.0)
            {
              BUG();
            }

            v14 = v69;

            v16 = 5;
LABEL_40:
            object = 0;
LABEL_41:
            v69 = v14;
            v70 = object;
            LOBYTE(v71) = v16;
            v41 = MLDataValue.description.getter();
            v42 = v10 + 1;
            v44 = v43;
            outlined consume of MLDataValue(*&v69, v70, v71);
            v45._countAndFlagsBits = v41;
            v45._object = v44;
            String.append(_:)(v45);
            v45._countAndFlagsBits = v44;
            v10 = v42;
            v45._countAndFlagsBits;
            v9 = v58;
            if (v10 == v58)
            {
              goto LABEL_44;
            }

            continue;
        }
      }

      break;
    }

    BUG();
  }

LABEL_44:
  v46 = v68;

  v47 = CMLSequence.size.getter();
  v48 = specialized RandomAccessCollection<>.distance(from:to:)(0, v47);

  v49 = CMLSequence.size.getter();
  v50 = specialized RandomAccessCollection<>.distance(from:to:)(0, v49);

  if (v50 < 0)
  {
    BUG();
  }

  v51 = CMLSequence.size.getter();
  v52 = specialized RandomAccessCollection<>.distance(from:to:)(0, v51);
  v46;
  if (v48 < 0 || v52 < v48)
  {
    BUG();
  }

  if (v9 < v48)
  {
    v53._countAndFlagsBits = 0x2E2E2E202CLL;
    v53._object = 0xE500000000000000;
    String.append(_:)(v53);
  }

  v54._countAndFlagsBits = 93;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  return v62;
}

uint64_t MLDataTable.Row.keys.getter()
{
  v2 = *v1;
  *v0 = *v1;
  return v2;
}

uint64_t MLDataTable.Row.values.getter()
{
  v2 = *(v1 + 16);
  *v0 = v2;
  return v2;
}

Swift::Int_optional __swiftcall MLDataTable.Row.index(forKey:)(Swift::String forKey)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16))
  {
    forKey._object;
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(forKey._countAndFlagsBits, forKey._object);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      v6 = 0;
    }

    else
    {
      v6 = 1;
      v5 = 0;
    }

    forKey._object;
  }

  else
  {
    v6 = 1;
    v5 = 0;
  }

  v7.value = v5;
  v7.is_nil = v6;
  return v7;
}

char MLDataTable.Row.Values.subscript.getter(uint64_t a1, double a2)
{
  v3 = *v2;
  v4 = CMLSequence.value(at:)(a1);
  return MLDataValue.init(_:)(v4, a2);
}

uint64_t MLDataTable.Row.subscript.getter(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7[1];
  if (*(v8 + 16))
  {
    v17 = a6;
    v19 = v6;
    v18 = a5;
    v9 = *v7;
    v10 = v7[2];

    v8;
    v20 = v10;

    a2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v12)
    {
      v13 = *(*(v8 + 56) + 8 * v11);
      a2;

      v14 = CMLSequence.value(at:)(v13);
      MLDataValue.init(_:)(v14, a3);
      v8;

      v20;
      return (*(v17 + 16))(v16);
    }

    v8;

    a2;
    a5 = v18;
    v6 = v19;
  }

  return __swift_storeEnumTagSinglePayload(v6, 1, 1, a5);
}

uint64_t static MLDataTable.Row.== infix(_:_:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[2];

  v7 = specialized Sequence<>.elementsEqual<A>(_:)();

  if (v7)
  {
    v10 = v4;
    v11[0] = v6;

    v8 = static MLDataTable.Row.Values.== infix(_:_:)(&v10, v11, a3);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t static MLDataTable.Row.Values.== infix(_:_:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a1;
  v39 = *a2;

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
  v3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  v44 = v3;

  v10 = CMLSequence.size.getter();
  v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);

  v12 = CMLSequence.size.getter();
  v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v12);

  if (v13 < 0)
  {
    BUG();
  }

  v14 = CMLSequence.size.getter();
  v15 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);
  v39;
  if (v11 < 0 || v15 < v11)
  {
    BUG();
  }

  if (v5 == v11)
  {

    v16 = CMLSequence.size.getter();
    if (specialized RandomAccessCollection<>.distance(from:to:)(0, v16))
    {
      v17 = 0;
      do
      {
        v33 = v17;
        v18 = CMLSequence.value(at:)(v17);
        v38 = 0;
        MLDataValue.init(_:)(v18, a3);
        v19 = v40;
        v20 = v41;
        v21 = v42;
        v22 = v42;
        outlined copy of MLDataValue(v40, v41, v42);
        v34 = v19;
        v37 = v20;
        v43 = v22;
        outlined consume of MLDataValue(v19, v20, v22);

        v23 = CMLSequence.size.getter();
        v24 = specialized RandomAccessCollection<>.distance(from:to:)(0, v23);

        if (v17 >= v24)
        {
          BUG();
        }

        v40 = v34;
        v41 = v37;
        v42 = v21;

        v25 = v38;
        v26 = CMLSequence.value(at:)(v17);
        if (v25)
        {
          swift_unexpectedError(v25, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v26, a3);

        a3 = *&v31;
        v35 = v31;
        LOBYTE(v36) = v32;
        LOBYTE(v27) = static MLDataValue.== infix(_:_:)(&v40, &v35);
        LODWORD(v5) = v27;
        outlined consume of MLDataValue(v35, *(&v35 + 1), v36);
        outlined consume of MLDataValue(v34, v37, v43);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v28 = CMLSequence.size.getter();
        v29 = specialized RandomAccessCollection<>.distance(from:to:)(0, v28);

        ++v17;
      }

      while (v33 + 1 != v29);
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

uint64_t MLDataTable.Row.count.getter()
{
  v1 = *(v0 + 16);

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v5 < 0)
  {
    BUG();
  }

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);
  v1;
  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  return v3;
}

BOOL MLDataTable.Row.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  v2;
  swift_retain_n(v3, 2);
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
  v2;

  v3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  return v5 == 0;
}

uint64_t MLDataTable.Row.endIndex.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  v2;
  swift_retain_n(v3, 2);
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
  v2;

  v3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  return v5;
}

Swift::Int __swiftcall MLDataTable.Row.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(1, after);
  v2 = after + 1;
  if (v1)
  {
    BUG();
  }

  return v2;
}

uint64_t MLDataTable.Row.subscript.getter(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v8 = *v3;

  v5 = MLDataTable.ColumnNames.subscript.getter(a3);

  v6 = CMLSequence.value(at:)(a3);
  MLDataValue.init(_:)(v6, a1);

  return v5;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataTable.Row(uint64_t a1)
{
  v2 = v1;
  result = MLDataTable.Row.endIndex.getter(a1);
  *v2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MLDataTable.Row(void *a1, uint64_t *a2, double a3))(uint64_t a1)
{
  v3 = malloc(0x68uLL);
  *a1 = v3;
  v4 = MLDataTable.Row.subscript.getter(a3, (v3 + 2), *a2);
  v3[10] = v5;
  *v3 = v4;
  v3[1] = v5;
  v3[5] = v4;
  v3[6] = v5;
  v6 = v3[2];
  v7 = v3[3];
  v3[11] = v6;
  v3[12] = v7;
  v8 = *(v3 + 8);
  *(v3 + 33) = v8;
  v3[7] = v6;
  v3[8] = v7;
  *(v3 + 72) = v8;
  v5;
  outlined copy of MLDataValue(v6, v7, v8);
  return protocol witness for Collection.subscript.read in conformance MLDataTable.Row;
}

void protocol witness for Collection.subscript.read in conformance MLDataTable.Row(uint64_t a1)
{
  v1 = *a1;
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 88);
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v8 = *(*a1 + 33);
  *(*a1 + 48);
  outlined consume of MLDataValue(v3, v4, v5);
  v2;
  outlined consume of MLDataValue(v7, v6, v8);
  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance MLDataTable.Row(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  result = specialized Collection.index(_:offsetBy:)(*a1, a2);
  *v4 = result;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Row(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v5 = result;
  *(v5 + 8) = v10 & 1;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance MLDataTable.Row(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return specialized Collection.distance(from:to:)(*a1, *a2);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Row(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Row(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Row(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Row(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

Swift::Int protocol witness for Collection.index(after:) in conformance MLDataTable.Row(Swift::Int *a1)
{
  v2 = v1;
  result = MLDataTable.Row.index(after:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataTable.Row(uint64_t *a1)
{
  result = *a1 + 1;
  if (__OFADD__(1, *a1))
  {
    BUG();
  }

  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance MLDataTable.Row()
{
  v2 = *(v1 + 16);
  *result = *v1;
  *(result + 16) = v2;
  *(result + 24) = 0;
  return result;
}

uint64_t MLDataTable.Row.description.getter()
{
  v25 = v0[2];
  v1 = 0.0;
  swift_retain_n(*v0, 2);
  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = MLDataTable.ColumnNames.subscript.getter(v4);
      v7 = v6;

      v8 = CMLSequence.size.getter();
      v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);

      if (v4 >= v9)
      {
        BUG();
      }

      v26._countAndFlagsBits = 34;
      v26._object = 0xE100000000000000;
      v10._countAndFlagsBits = v5;
      v10._object = v7;
      String.append(_:)(v10);
      v7;
      0;
      v10._countAndFlagsBits = 540680226;
      v10._object = 0xE400000000000000;
      String.append(_:)(v10);
      0xE100000000000000;

      v24 = v4;
      v11 = CMLSequence.value(at:)(v4);
      MLDataValue.init(_:)(v11, v1);

      *&v1 = 34;
      v12 = MLDataValue.description.getter();
      v14 = v13;
      outlined consume of MLDataValue(&stru_20.cmd + 2, 0xE100000000000000, v27);
      0;
      v10._countAndFlagsBits = v12;
      v10._object = v14;
      String.append(_:)(v10);
      v14;
      0xE100000000000000;
      String.append(_:)(v26);
      0xE100000000000000;

      v15 = CMLSequence.size.getter();
      v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);

      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        BUG();
      }

      if (v4 < v18)
      {
        v19._countAndFlagsBits = 8236;
        v19._object = 0xE200000000000000;
        String.append(_:)(v19);
      }

      ++v4;

      v20 = CMLSequence.size.getter();
      v21 = specialized RandomAccessCollection<>.distance(from:to:)(0, v20);
    }

    while (v24 + 1 != v21);
  }

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

uint64_t MLDataTable.Row.debugDescription.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];

  v4;

  v1 = MLDataTable.Row.description.getter(v5);

  v4;

  return v1;
}

uint64_t MLDataTable.Row.playgroundDescription.getter()
{
  v10 = v0;
  v2 = v1[1];
  v3 = v1[2];
  v9 = *v1;

  v2;

  v4 = MLDataTable.Row.description.getter(v3);
  v6 = v5;

  v2;

  objc_allocWithZone(NSAttributedString);
  v7 = @nonobjc NSAttributedString.init(string:attributes:)(v4, v6, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v10[3] = result;
  *v10 = v7;
  return result;
}

uint64_t MLDataTable.Row.Values.endIndex.getter()
{
  v1 = *v0;

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  return v3;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataTable.Row.Values(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataTable.Row.Values(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v4 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataTable.Row.Values(uint64_t a1)
{
  v2 = v1;
  result = MLDataTable.Row.Values.endIndex.getter(a1);
  *v2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MLDataTable.Row.Values(double a1, uint64_t a2, uint64_t *a3))(uint64_t a1)
{
  v4 = *v3;
  v5 = CMLSequence.value(at:)(*a3);
  MLDataValue.init(_:)(v5, a1);
  return protocol witness for Collection.subscript.read in conformance MLDataValue.SequenceType;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataTable.Row.Values()
{
  v2 = v0;
  v3 = *v1;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Row.Values(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v5 = result;
  *(v5 + 8) = v8 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Row.Values(a1, a2, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance MLDataTable.Row.Values(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v3 = result;
  return result;
}

uint64_t MLDataTable.Row.Values.debugDescription.getter(double a1)
{
  v4 = *v1;

  v2 = MLDataTable.Row.Values.description.getter(a1);

  return v2;
}

uint64_t MLDataTable.Row.Values.playgroundDescription.getter(double a1)
{
  v3 = v1;
  v9 = *v2;

  v4 = MLDataTable.Row.Values.description.getter(a1);
  v6 = v5;

  objc_allocWithZone(NSAttributedString);
  v7 = @nonobjc NSAttributedString.init(string:attributes:)(v4, v6, 0);
  result = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3[3] = result;
  *v3 = v7;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)(*(v2 + 40));
  String.hash(into:)(v5, a1);
  v3 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3);
}

{
  Hasher.init(_seed:)(*(v2 + 40));
  if (a2)
  {
    Hasher._combine(_:)(1u);
    a2;
    String.hash(into:)(v5, a1);
    a2;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3);
}

void specialized __RawDictionaryStorage.find<A>(_:)(__int128 a1, int a2, double a3)
{
  v11 = v3;
  v5 = a1;
  *&a1 = *(v3 + 40);
  v8 = v5;
  v9 = *(&a1 + 1);
  v10 = a2;
  Hasher.init(_seed:)(a1);
  MLDataValue.hash(into:)(v7);
  v6 = Hasher._finalize()();
  *&a1 = v5;
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = type metadata accessor for MetricsKey(0);
  v4 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)(v2, v3, v4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for MetricsKey, &lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &protocol conformance descriptor for MetricsKey);
}

{
  v2 = *(v1 + 40);
  v3 = type metadata accessor for CodingUserInfoKey(0);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)(v2, v3, &protocol witness table for CodingUserInfoKey);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = static Hasher._hash(seed:_:)(*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = *(v1 + 40);
  v3 = type metadata accessor for URL(0);
  v4 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)(v2, v3, v4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for URL, &lazy protocol witness table cache variable for type URL and conformance URL, &protocol conformance descriptor for URL);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1);
}

{
  v2 = AnyHashable._rawHashValue(seed:)(*(v1 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v9 = v1;
  v2 = *(v1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  v5 = v4;
  Hasher.init(_seed:)(v2);
  String.hash(into:)(v8, v3);
  v6 = Hasher._finalize()();
  v5;
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)(*(v1 + 40));
  specialized RawRepresentable<>.hash(into:)(v4, a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)(*(v3 + 40));
  if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v7, a1);
  }

  v5 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  v5 = v4 & a3;
  v6 = *(v3 + 8 * ((v4 & a3) >> 6) + 64);
  if (_bittest64(&v6, v4 & a3))
  {
    v9 = *(v3 + 48);
    v10 = *(v9 + 16 * v5);
    v11 = *(v9 + 16 * v5 + 8);
    if (a1 ^ v10 | a2 ^ v11)
    {
      v12 = a1;
      v16 = a2;
      v13 = a2;
      while ((_stringCompareWithSmolCheck(_:_:expecting:)(v10, v11, v12, v13, 0) & 1) == 0)
      {
        v5 = v4 & (v5 + 1);
        v14 = *(v3 + 8 * (v5 >> 6) + 64);
        if (!_bittest64(&v14, v5))
        {
          break;
        }

        v10 = *(v9 + 16 * v5);
        v11 = *(v9 + 16 * v5 + 8);
        v13 = v16;
        if (!(a1 ^ v10 | v16 ^ v11))
        {
          break;
        }

        v12 = a1;
      }
    }
  }

  return v5;
}

{
  v4 = ~(-1 << *(v3 + 32));
  v5 = v4 & a3;
  v6 = *(v3 + 8 * ((v4 & a3) >> 6) + 64);
  if (_bittest64(&v6, v4 & a3))
  {
    v9 = *(v3 + 48);
    v15 = ~(-1 << *(v3 + 32));
    do
    {
      v10 = *(v9 + 16 * v5 + 8);
      if (v10)
      {
        if (a2)
        {
          if (!(a1 ^ *(v9 + 16 * v5) | a2 ^ v10))
          {
            return v5;
          }

          v11 = a1;
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v9 + 16 * v5), v10, a1, a2, 0);
          a1 = v11;
          v4 = v15;
          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a2)
      {
        return v5;
      }

      v5 = v4 & (v5 + 1);
      v13 = *(v3 + 8 * (v5 >> 6) + 64);
    }

    while (_bittest64(&v13, v5));
  }

  return v5;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)(__int128 a1, int a2, uint64_t a3, double a4)
{
  v5 = a2;
  v6 = ~(-1 << *(v4 + 32)) & a3;
  v7 = *(v4 + 8 * (v6 >> 6) + 64);
  if (_bittest64(&v7, v6))
  {
    v8 = a1;
    v29 = ~(-1 << *(v4 + 32));
    v28 = *(&a1 + 1);
    v32 = a2 == 6 && a1 == 0;
    v24 = *&a1;
    v9 = *(v4 + 48);
    v10 = *(v9 + 24 * v6);
    v30 = *(v9 + 24 * v6 + 8);
    v11 = *(v9 + 24 * v6 + 16);
    v25 = v8;
    v27 = v4;
    v26 = a2;
    switch(v11)
    {
      case 0:
LABEL_11:
        v33 = v6;
        v15 = v10;
        if (v5)
        {
          goto LABEL_32;
        }

        outlined consume of MLDataValue(*&v10, v30, 0);
        outlined consume of MLDataValue(v8, v28, 0);
        if (*&v10 != v8)
        {
          goto LABEL_33;
        }

        return;
      case 1:
LABEL_6:
        v33 = v6;
        if (v5 != 1)
        {
          v15 = v10;
          goto LABEL_32;
        }

        v31 = *&v10;
        outlined consume of MLDataValue(*&v10, v30, 1);
        outlined consume of MLDataValue(v8, v28, 1);
        a4 = v10;
        if (v10 != v24)
        {
          goto LABEL_17;
        }

        return;
      case 2:
LABEL_19:
        v33 = v6;
        if (v5 != 2)
        {
          v15 = v10;
          v10 = *&v30;
          goto LABEL_31;
        }

        if (!(v8 ^ *&v10 | v28 ^ v30))
        {
          outlined copy of MLDataValue(v8, v28, 2u);
          outlined copy of MLDataValue(v8, v28, 2u);
          outlined consume of MLDataValue(v8, v28, 2);
          v12 = v8;
          v13 = v28;
          v14 = 2;
          goto LABEL_5;
        }

        LOBYTE(v31) = _stringCompareWithSmolCheck(_:_:expecting:)(*&v10, v30, v8, v28, 0);
        outlined copy of MLDataValue(v8, v28, 2u);
        outlined copy of MLDataValue(*&v10, v30, 2u);
        outlined consume of MLDataValue(*&v10, v30, 2);
        outlined consume of MLDataValue(v8, v28, 2);
        if ((v31 & 1) == 0)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_27:
        v33 = v6;
        if (v5 == 3)
        {
          v22 = v10;
          v23 = v8;
          v16 = v10;
          v17 = v30;
          outlined copy of MLDataValue(*&v10, v30, 3u);
          outlined copy of MLDataValue(v8, v28, 3u);
          outlined copy of MLDataValue(*&v10, v30, 3u);
          outlined copy of MLDataValue(v8, v28, 3u);
          outlined copy of MLDataValue(*&v10, v30, 3u);
          ML11MLDataValueO_AETt1g5 = static MLDataValue.SequenceType.== infix(_:_:)(&v22, &v23, a4);
          goto LABEL_16;
        }

        v15 = v10;
        swift_retain_n(*&v10, 2);
        goto LABEL_32;
      case 4:
LABEL_29:
        v33 = v6;
        if (v5 != 4)
        {
          v15 = v10;
LABEL_31:
          swift_bridgeObjectRetain_n(*&v10, 2);
          goto LABEL_32;
        }

        v16 = v10;
        v17 = v30;
        outlined copy of MLDataValue(*&v10, v30, 4u);
        outlined copy of MLDataValue(v8, v28, 4u);
        outlined copy of MLDataValue(*&v10, v30, 4u);
        outlined copy of MLDataValue(v8, v28, 4u);
        outlined copy of MLDataValue(*&v10, v30, 4u);
        ML11MLDataValueO_AETt1g5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(*&v10, v8);
LABEL_16:
        LOBYTE(v31) = ML11MLDataValueO_AETt1g5;
        sub_196DBC(*&v16, v17);
        break;
      case 5:
        while (2)
        {
          v33 = v6;
          if (v5 == 5)
          {
            v31 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
            outlined copy of MLDataValue(*&v10, v30, 5u);
            outlined copy of MLDataValue(v8, v28, 5u);
            outlined copy of MLDataValue(*&v10, v30, 5u);
            outlined copy of MLDataValue(v8, v28, 5u);
            outlined copy of MLDataValue(*&v10, v30, 5u);
            LOBYTE(v31) = static NSObject.== infix(_:_:)(*&v10, v8);
            sub_196DBC(*&v10, v30);
          }

          else
          {
            v15 = v10;
            v21 = *&v10;
            v21;
            v5 = v26;
LABEL_32:
            outlined copy of MLDataValue(v8, v28, v5);
            outlined consume of MLDataValue(*&v15, v30, v11);
            outlined consume of MLDataValue(v25, v28, v5);
            outlined consume of MLDataValue(*&v15, v30, v11);
LABEL_33:
            v4 = v27;
LABEL_17:
            v6 = v29 & (v33 + 1);
            v19 = *(v4 + 8 * (v6 >> 6) + 64);
            if (_bittest64(&v19, v6))
            {
              v20 = *(v4 + 48);
              v10 = *(v20 + 24 * v6);
              v30 = *(v20 + 24 * v6 + 8);
              v11 = *(v20 + 24 * v6 + 16);
              v8 = v25;
              v5 = v26;
              switch(v11)
              {
                case 0:
                  goto LABEL_11;
                case 1:
                  goto LABEL_6;
                case 2:
                  goto LABEL_19;
                case 3:
                  goto LABEL_27;
                case 4:
                  goto LABEL_29;
                case 5:
                  continue;
                case 6:
                  goto LABEL_34;
              }
            }
          }

          break;
        }

        break;
      case 6:
LABEL_34:
        v33 = v6;
        v15 = v10;
        if (!v32)
        {
          goto LABEL_32;
        }

        outlined consume of MLDataValue(*&v10, v30, 6);
        v12 = 0;
        v13 = 0;
        v14 = 6;
LABEL_5:
        outlined consume of MLDataValue(v12, v13, v14);
        return;
    }
  }
}

void sub_196DBC(void *a1, void *a2)
{
  outlined consume of MLDataValue(a1, a2, v5);
  outlined consume of MLDataValue(v6, v7, v5);
  outlined consume of MLDataValue(v6, v7, v5);
  outlined consume of MLDataValue(v2, v4, v5);
  outlined consume of MLDataValue(v2, v4, v5);
  if ((*(v3 - 64) & 1) == 0)
  {
    v8 = *(v3 - 80);
    v9 = *(v3 - 48);
    v10 = *(v3 - 96);
    JUMPOUT(0x196E12);
  }

  JUMPOUT(0x196C42);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, unint64_t a2)
{
  v11 = ~(-1 << *(v2 + 32));
  v3 = v11 & a2;
  v4 = *(v2 + 8 * ((v11 & a2) >> 6) + 64);
  if (_bittest64(&v4, v11 & a2))
  {
    v5 = a1;
    v6 = 0xE400000000000000;
    v7 = 1936945004;
    v8 = 0xE400000000000000;
    switch(*(*(v2 + 48) + v3))
    {
      case 0:
        goto LABEL_14;
      case 1:
        v10 = 1936945004;
        v8 = 0xEB0000000073736FLL;
        v7 = 0x4C746E65746E6F63;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 2:
        v10 = 1936945004;
        v8 = 0xE900000000000073;
        v7 = 0x736F4C656C797473;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 3:
        v10 = 1936945004;
        v8 = 0xE800000000000000;
        v7 = 0x7963617275636361;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 4:
        v10 = 1936945004;
        v8 = 0xEE0073736F4C6E6FLL;
        v7 = 0x69746164696C6176;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 5:
        v7 = 0xD000000000000012;
        v10 = 1936945004;
        v8 = "accuracy" + 0x8000000000000000;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 6:
        v10 = 1936945004;
        v8 = "validationAccuracy" + 0x8000000000000000;
        v7 = 0xD000000000000010;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 7:
        v7 = 0xD000000000000014;
        v10 = 1936945004;
        v8 = "stylizedImageURL" + 0x8000000000000000;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 8:
        v10 = 1936945004;
        v8 = 0xEC000000726F7272;
        v7 = 0x456D756D6978616DLL;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }

      case 9:
        v7 = 0xD00000000000001ELL;
        v10 = 1936945004;
        v8 = "rror" + 0x8000000000000000;
        switch(v5)
        {
          case 0:
            break;
          case 1:
LABEL_15:
            v10 = 0x4C746E65746E6F63;
            v6 = 0xEB0000000073736FLL;
            break;
          case 2:
LABEL_29:
            JUMPOUT(0x1973EBLL);
          case 3:
LABEL_18:
            v10 = 0x7963617275636361;
            v6 = 0xE800000000000000;
            break;
          case 4:
LABEL_19:
            v10 = 0x69746164696C6176;
            v6 = 0xEE0073736F4C6E6FLL;
            break;
          case 5:
LABEL_16:
            v10 = 0xD000000000000012;
            v6 = "accuracy" + 0x8000000000000000;
            break;
          case 6:
LABEL_21:
            v10 = 0xD000000000000010;
            v6 = "validationAccuracy" + 0x8000000000000000;
            break;
          case 7:
LABEL_22:
            v10 = 0xD000000000000014;
            v6 = "stylizedImageURL" + 0x8000000000000000;
            break;
          case 8:
LABEL_20:
            v10 = 0x456D756D6978616DLL;
            v6 = 0xEC000000726F7272;
            break;
          case 9:
LABEL_23:
            v10 = 0xD00000000000001ELL;
            v6 = "rror" + 0x8000000000000000;
            break;
          case 10:
LABEL_17:
            v10 = 0xD000000000000016;
            v6 = "validationRootMeanSquaredError" + 0x8000000000000000;
            break;
        }

LABEL_24:
        if (v7 != v10 || v8 != v6)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v10, v6, 0);
          JUMPOUT(0x19743ELL);
        }

        v8, a2;
        v6, a2;
        return v11 & a2;
      case 0xA:
        v7 = 0xD000000000000016;
        v8 = "validationRootMeanSquaredError" + 0x8000000000000000;
LABEL_14:
        v10 = 1936945004;
        switch(v5)
        {
          case 0:
            goto LABEL_24;
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_18;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_16;
          case 6:
            goto LABEL_21;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_23;
          case 10:
            goto LABEL_17;
        }
    }
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, unint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  result = v3 & a2;
  v5 = *(v2 + 8 * ((v3 & a2) >> 6) + 64);
  if (_bittest64(&v5, v3 & a2))
  {
    v6 = *(v2 + 48);
    if (*(v6 + 4 * result) != a1)
    {
      result = v3 & (result + 1);
      v7 = *(v2 + 8 * (result >> 6) + 64);
      if (_bittest64(&v7, result))
      {
        do
        {
          if (*(v6 + 4 * result) == a1)
          {
            break;
          }

          result = v3 & (result + 1);
          v8 = *(v2 + 8 * (result >> 6) + 64);
        }

        while (_bittest64(&v8, result));
      }
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v14 = a1;
  v4 = type metadata accessor for CodingUserInfoKey(0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = alloca(v6);
  v8 = alloca(v6);
  v15 = ~(-1 << *(v3 + 32));
  v9 = v15 & a2;
  v10 = *(v3 + 8 * ((v15 & a2) >> 6) + 64);
  if (_bittest64(&v10, v15 & a2))
  {
    v17 = v5[2];
    v16 = v5;
    v18 = v5[9];
    do
    {
      v17(&v14, *(v3 + 48) + v9 * v18, v4);
      v11 = dispatch thunk of static Equatable.== infix(_:_:)(&v14, v14, v4, &protocol witness table for CodingUserInfoKey);
      (v16[1])(&v14, v4);
      if (v11)
      {
        break;
      }

      v9 = v15 & (v9 + 1);
      v12 = *(v3 + 8 * (v9 >> 6) + 64);
    }

    while (_bittest64(&v12, v9));
  }

  return v9;
}

{
  v3 = ~(-1 << *(v2 + 32));
  result = v3 & a2;
  v5 = *(v2 + 8 * ((v3 & a2) >> 6) + 64);
  if (_bittest64(&v5, v3 & a2))
  {
    v6 = *(v2 + 48);
    if (*(v6 + 8 * result) != a1)
    {
      result = v3 & (result + 1);
      v7 = *(v2 + 8 * (result >> 6) + 64);
      if (_bittest64(&v7, result))
      {
        do
        {
          if (*(v6 + 8 * result) == a1)
          {
            break;
          }

          result = v3 & (result + 1);
          v8 = *(v2 + 8 * (result >> 6) + 64);
        }

        while (_bittest64(&v8, result));
      }
    }
  }

  return result;
}

{
  v3 = *(v2 + 32);
  v11 = a1;
  v4 = ~(-1 << v3);
  v5 = v4 & a2;
  v6 = *(v2 + 8 * ((v4 & a2) >> 6) + 64);
  if (_bittest64(&v6, v4 & a2))
  {
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v5, v10);
      v7 = static AnyHashable.== infix(_:_:)(v10, v11);
      outlined destroy of AnyHashable(v10);
      if (v7)
      {
        break;
      }

      v5 = v4 & (v5 + 1);
      v8 = *(v2 + 8 * (v5 >> 6) + 64);
    }

    while (_bittest64(&v8, v5));
  }

  return v5;
}

{
  v21 = ~(-1 << *(v2 + 32));
  v3 = v21 & a2;
  v4 = *(v2 + 8 * ((v21 & a2) >> 6) + 64);
  if (_bittest64(&v4, v21 & a2))
  {
    v22 = v2;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v2 + 48) + 8 * v3));
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
    v10 = v9;
    if (!(v8 ^ v5 | v9 ^ v7))
    {
LABEL_3:
      v7, a2;
      v10, a2;
      return v3;
    }

    a2 = v7;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v7, v8, v9, 0);
    v7, v7;
    v10, v7;
    if ((v11 & 1) == 0)
    {
      v3 = v21 & (v3 + 1);
      v12 = v22;
      v13 = *(v22 + 8 * (v3 >> 6) + 64);
      if (_bittest64(&v13, v3))
      {
        while (1)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v12 + 48) + 8 * v3));
          v7 = v15;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
          v10 = v17;
          if (!(v16 ^ v14 | v17 ^ v7))
          {
            break;
          }

          a2 = v7;
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v14, v7, v16, v17, 0);
          v7, v7;
          v10, v7;
          if ((v18 & 1) == 0)
          {
            v3 = v21 & (v3 + 1);
            v12 = v22;
            v19 = *(v22 + 8 * (v3 >> 6) + 64);
            if (_bittest64(&v19, v3))
            {
              continue;
            }
          }

          return v3;
        }

        goto LABEL_3;
      }
    }
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t a5)
{
  v19 = a5;
  v20 = a4;
  v6 = v5;
  v22 = a1;
  v21 = a3;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v23 = ~(-1 << *(v6 + 32));
  v12 = v23 & a2;
  v13 = *(v6 + 8 * ((v23 & a2) >> 6) + 64);
  if (_bittest64(&v13, v23 & a2))
  {
    v25 = v8[2];
    v24 = v8;
    v26 = v8[9];
    do
    {
      v25(&v18, *(v6 + 48) + v12 * v26, v7);
      v14 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(v20, v21, v19);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)(&v18, v22, v7, v14);
      (v24[1])(&v18, v7);
      if (v15)
      {
        break;
      }

      v12 = v23 & (v12 + 1);
      v16 = *(v6 + 8 * (v12 >> 6) + 64);
    }

    while (_bittest64(&v16, v12));
  }

  return v12;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v5 = ~(-1 << *(v4 + 32));
  v6 = v5 & a4;
  v7 = *(v4 + 8 * ((v5 & a4) >> 6) + 64);
  if (_bittest64(&v7, v5 & a4))
  {
    v8 = a2;
    v10 = *(v4 + 48);
    v17 = a3;
    do
    {
      v11 = *(v10 + 24 * v6);
      if (*(v10 + 24 * v6 + 16))
      {
        if ((a3 & 1) != 0 && v11 == a1)
        {
          return v6;
        }
      }

      else if ((a3 & 1) == 0)
      {
        v12 = *(v10 + 24 * v6 + 8);
        if (!(a1 ^ v11 | v8 ^ v12))
        {
          return v6;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v12, a1, v8, 0);
        v8 = a2;
        a3 = v17;
        if (v13)
        {
          return v6;
        }
      }

      v6 = v5 & (v6 + 1);
      v14 = *(v4 + 8 * (v6 >> 6) + 64);
    }

    while (_bittest64(&v14, v6));
  }

  return v6;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 24);
  if (v6 <= a1)
  {
    v6 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Double>);
  v7 = v6;
  v8 = v5;
  v47 = a2;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)(v5, v7, a2);
  if (!*(v8 + 16))
  {
    goto LABEL_43;
  }

  v44 = v2;
  v10 = 1 << *(v8 + 32);
  v46 = (v8 + 64);
  v11 = ~(-1 << v10);
  if (v10 >= 64)
  {
    v11 = -1;
  }

  v12 = *(v8 + 64) & v11;
  v43 = (v10 + 63) >> 6;
  swift_retain_n(v8, 2);
  v13 = 0;
  for (i = v8; ; v8 = i)
  {
    if (v12)
    {
      _BitScanForward64(&v14, v12);
      v12 &= v12 - 1;
      v15 = v14 | (v13 << 6);
      goto LABEL_16;
    }

    v16 = __OFADD__(1, v13);
    v17 = v13 + 1;
    if (v16)
    {
      BUG();
    }

    if (v17 >= v43)
    {
      break;
    }

    v18 = v46;
    j = v46[v17];
    if (j)
    {
      v20 = v17;
    }

    else
    {
      v20 = v17 + 1;
      if (v17 + 1 >= v43)
      {
        goto LABEL_36;
      }

      j = v46[v17 + 1];
      if (!j)
      {
        v20 = v17 + 2;
        if (v17 + 2 >= v43)
        {
LABEL_36:
          v8;
          goto LABEL_38;
        }

        for (j = v46[v17 + 2]; !j; j = v46[v20])
        {
          v16 = __OFADD__(1, v20++);
          if (v16)
          {
            BUG();
          }

          if (v20 >= v43)
          {
            goto LABEL_36;
          }
        }
      }
    }

    _BitScanForward64(&v21, j);
    v12 = j & (j - 1);
    v15 = v21 | (v20 << 6);
    v13 = v20;
LABEL_16:
    v22 = *(v8 + 48);
    v23 = *(v8 + 56);
    v45 = *(v22 + 16 * v15);
    v24 = *(v22 + 16 * v15 + 8);
    v41 = *(v23 + 8 * v15);
    if ((v47 & 1) == 0)
    {
      v24;
    }

    Hasher.init(_seed:)(*(v9 + 40));
    String.hash(into:)(v40, v45);
    v25 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
    v26 = v25 >> 6;
    v27 = ~*(v9 + 8 * (v25 >> 6) + 64) >> v25 << v25;
    if (v27)
    {
      _BitScanForward64(&v28, v27);
      v29 = v28 | v25 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - (-1 << *(v9 + 32))) >> 6;
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
        v33 = *(v9 + 8 * v26 + 64);
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

    *(v9 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v36 = *(v9 + 48);
    v37 = 16 * v29;
    *(v36 + v37) = v45;
    *(v36 + v37 + 8) = v24;
    *(*(v9 + 56) + 8 * v29) = v41;
    ++*(v9 + 16);
  }

  v8;
  v18 = v46;
LABEL_38:
  v3 = v44;
  if (v47)
  {
    v38 = 1 << *(v8 + 32);
    if (v38 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << (1 << *(v8 + 32));
    }

    *(v8 + 16) = 0;
  }

LABEL_43:

  *v3 = v9;
  return result;
}

{
  v45 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, MLDataValue>);
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {
    result = v3;
    v37 = v45;
    goto LABEL_53;
  }

  v6 = 1 << *(v3 + 32);
  v49 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v48 = (v6 + 63) >> 6;
  v3;
  v9 = 0;
  v41 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v44 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v48)
    {
      break;
    }

    i = v49[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v48)
      {
        break;
      }

      i = v49[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v48)
        {
          break;
        }

        i = v49[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v48)
          {
            break;
          }

          for (i = v49[v13 + 3]; !i; i = v49[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v48)
            {
              goto LABEL_46;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v44 = v15;
LABEL_18:
    v17 = 24 * v11;
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    v20 = *(v18 + v17);
    v46 = *(v18 + v17 + 8);
    v50 = *(v18 + v17 + 16);
    v21 = v50;
    v42 = *(v19 + v17);
    v43 = *(v19 + v17 + 8);
    v51 = *(v19 + v17 + 16);
    if ((v47 & 1) == 0)
    {
      outlined copy of MLDataValue(v20, v46, v50);
      outlined copy of MLDataValue(v42, v43, v51);
    }

    Hasher.init(_seed:)(*(v5 + 40));
    switch(v21)
    {
      case 0:
        Hasher._combine(_:)(v20);
        goto LABEL_28;
      case 1:
        v22 = v20 & 0x7FFFFFFFFFFFFFFFLL;
        if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v22 = v20;
        }

        Hasher._combine(_:)(v22);
        goto LABEL_28;
      case 2:
        String.hash(into:)(v40, v20);
        goto LABEL_28;
      case 3:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, "t be used as dictionary key" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 381, 0);
        goto LABEL_60;
      case 4:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, "t be used as dictionary key" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 383, 0);
        goto LABEL_60;
      case 5:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, "CreateML/MLDataValue.swift" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 385, 0);
LABEL_60:
        BUG();
      case 6:
        Hasher._combine(_:)(1uLL);
LABEL_28:
        v23 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
        v24 = v23 >> 6;
        v25 = ~*(v5 + 8 * (v23 >> 6) + 64) >> v23 << v23;
        if (v25)
        {
          _BitScanForward64(&v26, v25);
          v27 = v26 | v23 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = (63 - (-1 << *(v5 + 32))) >> 6;
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
            v31 = *(v5 + 8 * v24 + 64);
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

        v34 = 24 * v27;
        *(v5 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v35 = *(v5 + 48);
        *(v35 + v34) = v20;
        *(v35 + v34 + 8) = v46;
        *(v35 + v34 + 16) = v50;
        v36 = *(v5 + 56);
        *(v36 + v34) = v42;
        *(v36 + v34 + 8) = v43;
        *(v36 + v34 + 16) = v51;
        ++*(v5 + 16);
        v3 = v41;
        v9 = v44;
        break;
    }
  }

LABEL_46:
  v3;
  v37 = v45;
  if (v47)
  {
    v38 = 1 << *(v3 + 32);
    if (v38 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v49);
    }

    else
    {
      *v49 = -1 << v38;
    }

    *(v3 + 16) = 0;
  }

  result = v3;
LABEL_53:
  *v37 = v5;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &type metadata accessor for CSVType, &demangling cache variable for type metadata for _DictionaryStorage<String, CSVType>);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &type metadata accessor for JSONType, &demangling cache variable for type metadata for _DictionaryStorage<String, JSONType>);
}

{
  v42 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, Int>);
  v44 = a2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {

    v35 = v42;
    goto LABEL_53;
  }

  v6 = 1 << *(v3 + 32);
  v46 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v45 = (v6 + 63) >> 6;

  v9 = 0;
  v40 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v41 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v45)
    {
      break;
    }

    i = v46[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v45)
      {
        break;
      }

      i = v46[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v45)
        {
          break;
        }

        i = v46[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v45)
          {
            break;
          }

          for (i = v46[v13 + 3]; !i; i = v46[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v45)
            {
              goto LABEL_46;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v41 = v15;
LABEL_18:
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = *(v17 + 24 * v11);
    v43 = *(v17 + 24 * v11 + 8);
    v47 = *(v17 + 24 * v11 + 16);
    v20 = v47;
    v39 = *(v18 + 8 * v11);
    if ((v44 & 1) == 0)
    {
      outlined copy of MLDataValue(v19, v43, v47);
    }

    Hasher.init(_seed:)(*(v5 + 40));
    switch(v20)
    {
      case 0:
        Hasher._combine(_:)(v19);
        goto LABEL_28;
      case 1:
        v21 = v19 & 0x7FFFFFFFFFFFFFFFLL;
        if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = v19;
        }

        Hasher._combine(_:)(v21);
        goto LABEL_28;
      case 2:
        String.hash(into:)(v38, v19);
        goto LABEL_28;
      case 3:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, "t be used as dictionary key" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 381, 0);
        goto LABEL_60;
      case 4:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, "t be used as dictionary key" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 383, 0);
        goto LABEL_60;
      case 5:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, "CreateML/MLDataValue.swift" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 385, 0);
LABEL_60:
        BUG();
      case 6:
        Hasher._combine(_:)(1uLL);
LABEL_28:
        v22 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
        v23 = v22 >> 6;
        v24 = ~*(v5 + 8 * (v22 >> 6) + 64) >> v22 << v22;
        if (v24)
        {
          _BitScanForward64(&v25, v24);
          v26 = v25 | v22 & 0x7FFFFFFFFFFFFFC0;
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
            v30 = *(v5 + 8 * v23 + 64);
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

        *(v5 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v33 = *(v5 + 48);
        v34 = 24 * v26;
        *(v33 + v34) = v19;
        *(v33 + v34 + 8) = v43;
        *(v33 + v34 + 16) = v47;
        *(*(v5 + 56) + 8 * v26) = v39;
        ++*(v5 + 16);
        v3 = v40;
        v9 = v41;
        break;
    }
  }

LABEL_46:

  v35 = v42;
  if (v44)
  {
    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v46);
    }

    else
    {
      *v46 = -1 << v36;
    }

    *(v3 + 16) = 0;
  }

LABEL_53:
  *v35 = v5;
  return result;
}

{
  v44 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, MLUntypedColumn>);
  v45 = a2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {

    v36 = v44;
    goto LABEL_45;
  }

  v6 = 1 << *(v3 + 32);
  v47 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v46 = (v6 + 63) >> 6;

  v9 = 0;
  v40 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v43 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v46)
    {
      break;
    }

    i = v47[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v46)
      {
        break;
      }

      i = v47[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v46)
        {
          break;
        }

        i = v47[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v46)
          {
            break;
          }

          for (i = v47[v13 + 3]; !i; i = v47[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v46)
            {
              goto LABEL_38;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v43 = v15;
LABEL_18:
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = 16 * v11;
    v41 = *(v17 + v19);
    v20 = *(v17 + v19 + 8);
    v42 = *(v18 + v19);
    v21 = *(v18 + v19 + 8);
    if ((v45 & 1) == 0)
    {
      v20;
      outlined copy of Result<_DataTable, Error>(v42, v21);
    }

    Hasher.init(_seed:)(*(v5 + 40));
    String.hash(into:)(v39, v41);
    v22 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v23 = v22 >> 6;
    v24 = ~*(v5 + 8 * (v22 >> 6) + 64) >> v22 << v22;
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
        v30 = *(v5 + 8 * v23 + 64);
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

    *(v5 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v33 = *(v5 + 48);
    v34 = 16 * v26;
    *(v33 + v34) = v41;
    *(v33 + v34 + 8) = v20;
    v35 = *(v5 + 56);
    *(v35 + v34) = v42;
    *(v35 + v34 + 8) = v21 & 1;
    ++*(v5 + 16);
    v3 = v40;
    v9 = v43;
  }

LABEL_38:

  v36 = v44;
  if (v45)
  {
    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v47);
    }

    else
    {
      *v47 = -1 << (1 << *(v3 + 32));
    }

    *(v3 + 16) = 0;
  }

LABEL_45:
  *v36 = v5;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 24);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, String>);
  v44 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)(v4, v5, a2);
  if (*(v4 + 16))
  {
    v41 = v2;
    v7 = 1 << *(v4 + 32);
    v47 = (v4 + 64);
    v8 = ~(-1 << v7);
    if (v7 >= 64)
    {
      v8 = -1;
    }

    v9 = *(v4 + 64) & v8;
    v45 = (v7 + 63) >> 6;
    v46 = v4;

    v10 = 0;
    while (1)
    {
      if (v9)
      {
        _BitScanForward64(&v11, v9);
        v9 &= v9 - 1;
        v12 = v11 | (v10 << 6);
      }

      else
      {
        v13 = __OFADD__(1, v10);
        v14 = v10 + 1;
        if (v13)
        {
          BUG();
        }

        if (v14 >= v45)
        {
LABEL_38:
          v36 = v46;

          v3 = v41;
          if (v44)
          {
            v37 = 1 << *(v36 + 32);
            if (v37 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v47);
            }

            else
            {
              *v47 = -1 << (1 << *(v36 + 32));
            }

            *(v36 + 16) = 0;
          }

          break;
        }

        i = v47[v14];
        if (i)
        {
          v16 = v14;
        }

        else
        {
          v16 = v14 + 1;
          if (v14 + 1 >= v45)
          {
            goto LABEL_38;
          }

          i = v47[v14 + 1];
          if (!i)
          {
            v16 = v14 + 2;
            if (v14 + 2 >= v45)
            {
              goto LABEL_38;
            }

            i = v47[v14 + 2];
            if (!i)
            {
              v16 = v14 + 3;
              if (v14 + 3 >= v45)
              {
                goto LABEL_38;
              }

              for (i = v47[v14 + 3]; !i; i = v47[v16])
              {
                v13 = __OFADD__(1, v16++);
                if (v13)
                {
                  BUG();
                }

                if (v16 >= v45)
                {
                  goto LABEL_38;
                }
              }
            }
          }
        }

        _BitScanForward64(&v17, i);
        v9 = i & (i - 1);
        v12 = v17 | (v16 << 6);
        v10 = v16;
      }

      v18 = 16 * v12;
      v19 = *(v46 + 48);
      v20 = *(v46 + 56);
      v42 = *(v19 + v18);
      v21 = *(v19 + v18 + 8);
      v40 = *(v20 + v18);
      v43 = *(v20 + v18 + 8);
      if ((v44 & 1) == 0)
      {
        v21;
        v43;
      }

      Hasher.init(_seed:)(*(v6 + 40));
      String.hash(into:)(v39, v42);
      v22 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      v23 = v22 >> 6;
      v24 = ~*(v6 + 8 * (v22 >> 6) + 64) >> v22 << v22;
      if (v24)
      {
        _BitScanForward64(&v25, v24);
        v26 = v25 | v22 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - (-1 << *(v6 + 32))) >> 6;
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
          v30 = *(v6 + 8 * v23 + 64);
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

      *(v6 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = *(v6 + 48);
      v34 = 16 * v26;
      *(v33 + v34) = v42;
      *(v33 + v34 + 8) = v21;
      v35 = *(v6 + 56);
      *(v35 + v34) = v40;
      *(v35 + v34 + 8) = v43;
      ++*(v6 + 16);
    }
  }

  *v3 = v6;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 24);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Any>);
  v41 = a2;
  v6 = v4;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)(v4, v5, a2);
  if (*(v6 + 16))
  {
    v39 = v2;
    v8 = 1 << *(v6 + 32);
    v44 = (v6 + 64);
    v9 = ~(-1 << v8);
    if (v8 >= 64)
    {
      v9 = -1;
    }

    v10 = *(v6 + 64) & v9;
    v42 = (v8 + 63) >> 6;
    v43 = v6;

    v11 = 0;
    while (1)
    {
      if (v10)
      {
        _BitScanForward64(&v12, v10);
        v10 &= v10 - 1;
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

        if (v15 >= v42)
        {
LABEL_39:
          v34 = v43;

          v3 = v39;
          if (v41)
          {
            v35 = 1 << *(v34 + 32);
            if (v35 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v44);
            }

            else
            {
              *v44 = -1 << (1 << *(v34 + 32));
            }

            *(v34 + 16) = 0;
          }

          break;
        }

        i = v44[v15];
        if (i)
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 + 1;
          if (v15 + 1 >= v42)
          {
            goto LABEL_39;
          }

          i = v44[v15 + 1];
          if (!i)
          {
            v17 = v15 + 2;
            if (v15 + 2 >= v42)
            {
              goto LABEL_39;
            }

            i = v44[v15 + 2];
            if (!i)
            {
              v17 = v15 + 3;
              if (v15 + 3 >= v42)
              {
                goto LABEL_39;
              }

              for (i = v44[v15 + 3]; !i; i = v44[v17])
              {
                v14 = __OFADD__(1, v17++);
                if (v14)
                {
                  BUG();
                }

                if (v17 >= v42)
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
        v11 = v17;
      }

      v19 = *(v43 + 48);
      v40 = *(v19 + 16 * v13);
      v20 = *(v19 + 16 * v13 + 8);
      v21 = (*(v43 + 56) + 32 * v13);
      if (v41)
      {
        outlined init with take of Any(v21, v38);
      }

      else
      {
        outlined init with copy of Any(v21, v38);
        v20;
      }

      Hasher.init(_seed:)(*(v7 + 40));
      String.hash(into:)(v37, v40);
      v22 = Hasher._finalize()() & ~(-1 << *(v7 + 32));
      v23 = v22 >> 6;
      v24 = ~*(v7 + 8 * (v22 >> 6) + 64) >> v22 << v22;
      if (v24)
      {
        _BitScanForward64(&v24, v24);
        v25 = v24 | v22 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - (-1 << *(v7 + 32))) >> 6;
        v27 = 0;
        do
        {
          v28 = v23 + 1;
          if (v23 + 1 == v26 && (v27 & 1) != 0)
          {
            BUG();
          }

          v23 = 0;
          if (v28 != v26)
          {
            v23 = v28;
          }

          v27 |= v28 == v26;
          v29 = *(v7 + 8 * v23 + 64);
        }

        while (v29 == -1);
        v30 = ~v29;
        v31 = 64;
        if (v30)
        {
          _BitScanForward64(&v31, v30);
        }

        v25 = v31 + (v23 << 6);
      }

      *(v7 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = *(v7 + 48);
      v33 = 16 * v25;
      *(v32 + v33) = v40;
      *(v32 + v33 + 8) = v20;
      outlined init with take of Any(v38, (*(v7 + 56) + 32 * v25));
      ++*(v7 + 16);
    }
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 24);
  if (v6 <= a1)
  {
    v6 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
  v7 = v6;
  v8 = v5;
  v47 = a2;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)(v5, v7, a2);
  if (*(v8 + 16))
  {
    v44 = v2;
    v10 = 1 << *(v8 + 32);
    v46 = 0x8000000000000000;
    v49 = (v8 + 64);
    v11 = ~(-1 << v10);
    if (v10 >= 64)
    {
      v11 = -1;
    }

    v12 = *(v8 + 64) & v11;
    v48 = (v10 + 63) >> 6;
    v39 = "validationRootMeanSquaredError" + 0x8000000000000000;
    v40 = "rror" + 0x8000000000000000;
    v41 = "stylizedImageURL" + 0x8000000000000000;
    v42 = "validationAccuracy" + 0x8000000000000000;
    v43 = "accuracy" + 0x8000000000000000;

    v13 = 0;
    v46 -= 64;
    v45 = v8;
    while (1)
    {
      if (v12)
      {
        _BitScanForward64(&v14, v12);
        v12 &= v12 - 1;
        v15 = v14 | (v13 << 6);
      }

      else
      {
        v16 = __OFADD__(1, v13);
        v17 = v13 + 1;
        if (v16)
        {
          BUG();
        }

        if (v17 >= v48)
        {
LABEL_51:

          v3 = v44;
          if (v47)
          {
            v35 = 1 << *(v8 + 32);
            if (v35 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v49);
            }

            else
            {
              *v49 = -1 << (1 << *(v8 + 32));
            }

            *(v8 + 16) = 0;
          }

          break;
        }

        i = v49[v17];
        if (i)
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 + 1;
          if (v17 + 1 >= v48)
          {
            goto LABEL_51;
          }

          i = v49[v17 + 1];
          if (!i)
          {
            v19 = v17 + 2;
            if (v17 + 2 >= v48)
            {
              goto LABEL_51;
            }

            i = v49[v17 + 2];
            if (!i)
            {
              v19 = v17 + 3;
              if (v17 + 3 >= v48)
              {
                goto LABEL_51;
              }

              for (i = v49[v17 + 3]; !i; i = v49[v19])
              {
                v16 = __OFADD__(1, v19++);
                if (v16)
                {
                  BUG();
                }

                if (v19 >= v48)
                {
                  goto LABEL_51;
                }
              }
            }
          }
        }

        _BitScanForward64(&v20, i);
        v12 = i & (i - 1);
        v15 = v20 | (v19 << 6);
        v13 = v19;
      }

      v50 = *(*(v8 + 48) + v15);
      v21 = (*(v8 + 56) + 32 * v15);
      if (v47)
      {
        outlined init with take of Any(v21, v38);
      }

      else
      {
        outlined init with copy of Any(v21, v38);
      }

      v22 = v50;
      Hasher.init(_seed:)(*(v9 + 40));
      switch(v22)
      {
        case 0:
          v23 = 1936945004;
          v24 = 0xE400000000000000;
          break;
        case 1:
          v23 = 0x4C746E65746E6F63;
          v24 = 0xEB0000000073736FLL;
          break;
        case 2:
          v23 = 0x736F4C656C797473;
          v24 = 0xE900000000000073;
          break;
        case 3:
          v23 = 0x7963617275636361;
          v24 = 0xE800000000000000;
          break;
        case 4:
          v23 = 0x69746164696C6176;
          v24 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v23 = 0xD000000000000012;
          v24 = v43;
          break;
        case 6:
          v23 = 0xD000000000000010;
          v24 = v42;
          break;
        case 7:
          v23 = 0xD000000000000014;
          v24 = v41;
          break;
        case 8:
          v23 = 0x456D756D6978616DLL;
          v24 = 0xEC000000726F7272;
          break;
        case 9:
          v23 = 0xD00000000000001ELL;
          v24 = v40;
          break;
        case 10:
          v23 = 0xD000000000000016;
          v24 = v39;
          break;
      }

      String.hash(into:)(v37, v23);
      v24;
      v25 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
      v26 = v25 >> 6;
      v27 = ~*(v9 + 8 * (v25 >> 6) + 64) >> v25 << v25;
      if (v27)
      {
        _BitScanForward64(&v27, v27);
        v28 = v27 | v46 & v25;
        v8 = v45;
      }

      else
      {
        v29 = (63 - (-1 << *(v9 + 32))) >> 6;
        v30 = 0;
        v8 = v45;
        do
        {
          v31 = v26 + 1;
          if (v26 + 1 == v29 && (v30 & 1) != 0)
          {
            BUG();
          }

          v26 = 0;
          if (v31 != v29)
          {
            v26 = v31;
          }

          v30 |= v31 == v29;
          v32 = *(v9 + 8 * v26 + 64);
        }

        while (v32 == -1);
        v33 = ~v32;
        v34 = 64;
        if (v33)
        {
          _BitScanForward64(&v34, v33);
        }

        v28 = v34 + (v26 << 6);
      }

      *(v9 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(*(v9 + 48) + v28) = v50;
      outlined init with take of Any(v38, (*(v9 + 56) + 32 * v28));
      ++*(v9 + 16);
    }
  }

  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v5 = a1;
  v50 = type metadata accessor for URL(0);
  v51 = *(v50 - 8);
  v6 = *(v51 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = &v40;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v5 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, URL>);
  v10 = v9;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)(v9, v5, a2);
  if (*(v10 + 16))
  {
    v49 = v3;
    v12 = 1 << *(v10 + 32);
    v57 = (v10 + 64);
    v13 = ~(-1 << v12);
    if (v12 >= 64)
    {
      v13 = -1;
    }

    v14 = *(v10 + 64) & v13;
    v56 = (v12 + 63) >> 6;
    v44 = "validationRootMeanSquaredError" + 0x8000000000000000;
    v45 = "rror" + 0x8000000000000000;
    v46 = "stylizedImageURL" + 0x8000000000000000;
    v47 = "validationAccuracy" + 0x8000000000000000;
    v48 = "accuracy" + 0x8000000000000000;

    v55 = a2;
    v42 = 16 * (a2 & 1) + 16;
    v15 = 0;
    v43 = 0x7FFFFFFFFFFFFFC0;
    v54 = v10;
    while (1)
    {
      if (v14)
      {
        _BitScanForward64(&v16, v14);
        v14 &= v14 - 1;
        v53 = v15;
        v17 = v16 | (v15 << 6);
      }

      else
      {
        v18 = __OFADD__(1, v15);
        v19 = v15 + 1;
        if (v18)
        {
          BUG();
        }

        if (v19 >= v56)
        {
LABEL_48:

          v3 = v49;
          if (v55)
          {
            v38 = 1 << *(v10 + 32);
            if (v38 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v57);
            }

            else
            {
              *v57 = -1 << (1 << *(v10 + 32));
            }

            *(v10 + 16) = 0;
          }

          break;
        }

        i = v57[v19];
        if (i)
        {
          v21 = v19;
        }

        else
        {
          v21 = v19 + 1;
          if (v19 + 1 >= v56)
          {
            goto LABEL_48;
          }

          i = v57[v19 + 1];
          if (!i)
          {
            v21 = v19 + 2;
            if (v19 + 2 >= v56)
            {
              goto LABEL_48;
            }

            i = v57[v19 + 2];
            if (!i)
            {
              v21 = v19 + 3;
              if (v19 + 3 >= v56)
              {
                goto LABEL_48;
              }

              for (i = v57[v19 + 3]; !i; i = v57[v21])
              {
                v18 = __OFADD__(1, v21++);
                if (v18)
                {
                  BUG();
                }

                if (v21 >= v56)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }

        _BitScanForward64(&v22, i);
        v14 = i & (i - 1);
        v17 = v22 | (v21 << 6);
        v53 = v21;
      }

      v23 = *(*(v10 + 48) + v17);
      v24 = *(v51 + 72);
      (*(v51 + v42))(v52, *(v10 + 56) + v24 * v17, v50);
      Hasher.init(_seed:)(*(v11 + 40));
      v58 = v23;
      switch(v23)
      {
        case 0:
          v25 = 1936945004;
          v26 = 0xE400000000000000;
          break;
        case 1:
          v25 = 0x4C746E65746E6F63;
          v26 = 0xEB0000000073736FLL;
          break;
        case 2:
          v25 = 0x736F4C656C797473;
          v26 = 0xE900000000000073;
          break;
        case 3:
          v25 = 0x7963617275636361;
          v26 = 0xE800000000000000;
          break;
        case 4:
          v25 = 0x69746164696C6176;
          v26 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v25 = 0xD000000000000012;
          v26 = v48;
          break;
        case 6:
          v25 = 0xD000000000000010;
          v26 = v47;
          break;
        case 7:
          v25 = 0xD000000000000014;
          v26 = v46;
          break;
        case 8:
          v25 = 0x456D756D6978616DLL;
          v26 = 0xEC000000726F7272;
          break;
        case 9:
          v25 = 0xD00000000000001ELL;
          v26 = v45;
          break;
        case 10:
          v25 = 0xD000000000000016;
          v26 = v44;
          break;
      }

      String.hash(into:)(v41, v25);
      v26;
      v27 = Hasher._finalize()() & ~(-1 << *(v11 + 32));
      v28 = v27 >> 6;
      v29 = ~*(v11 + 8 * (v27 >> 6) + 64) >> v27 << v27;
      if (v29)
      {
        _BitScanForward64(&v30, v29);
        v31 = v30 | v43 & v27;
        v10 = v54;
      }

      else
      {
        v32 = (63 - (-1 << *(v11 + 32))) >> 6;
        v33 = 0;
        v10 = v54;
        do
        {
          v34 = v28 + 1;
          if (v28 + 1 == v32 && (v33 & 1) != 0)
          {
            BUG();
          }

          v28 = 0;
          if (v34 != v32)
          {
            v28 = v34;
          }

          v33 |= v34 == v32;
          v35 = *(v11 + 8 * v28 + 64);
        }

        while (v35 == -1);
        v36 = ~v35;
        v37 = 64;
        if (v36)
        {
          _BitScanForward64(&v37, v36);
        }

        v31 = v37 + (v28 << 6);
      }

      *(v11 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      *(*(v11 + 48) + v31) = v58;
      (*(v51 + 32))(*(v11 + 56) + v31 * v24, v52, v50);
      ++*(v11 + 16);
      v15 = v53;
    }
  }

  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 24);
  if (v6 <= a1)
  {
    v6 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Double>);
  v7 = v6;
  v8 = v5;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)(v5, v7, a2);
  if (*(v8 + 16))
  {
    v48 = a2;
    v45 = v2;
    v10 = 1 << *(v8 + 32);
    v47 = 0x8000000000000000;
    v50 = (v8 + 64);
    v11 = ~(-1 << v10);
    if (v10 >= 64)
    {
      v11 = -1;
    }

    v12 = *(v8 + 64) & v11;
    v49 = (v10 + 63) >> 6;
    v40 = "validationRootMeanSquaredError" + 0x8000000000000000;
    v41 = "rror" + 0x8000000000000000;
    v42 = "stylizedImageURL" + 0x8000000000000000;
    v43 = "validationAccuracy" + 0x8000000000000000;
    v44 = "accuracy" + 0x8000000000000000;

    v13 = 0;
    v47 -= 64;
    v46 = v8;
    while (1)
    {
      if (v12)
      {
        _BitScanForward64(&v14, v12);
        v12 &= v12 - 1;
        v15 = v14 | (v13 << 6);
      }

      else
      {
        v16 = __OFADD__(1, v13);
        v17 = v13 + 1;
        if (v16)
        {
          BUG();
        }

        if (v17 >= v49)
        {
LABEL_48:

          v3 = v45;
          if (v48)
          {
            v36 = 1 << *(v8 + 32);
            if (v36 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v50);
            }

            else
            {
              *v50 = -1 << (1 << *(v8 + 32));
            }

            *(v8 + 16) = 0;
          }

          break;
        }

        i = v50[v17];
        if (i)
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 + 1;
          if (v17 + 1 >= v49)
          {
            goto LABEL_48;
          }

          i = v50[v17 + 1];
          if (!i)
          {
            v19 = v17 + 2;
            if (v17 + 2 >= v49)
            {
              goto LABEL_48;
            }

            i = v50[v17 + 2];
            if (!i)
            {
              v19 = v17 + 3;
              if (v17 + 3 >= v49)
              {
                goto LABEL_48;
              }

              for (i = v50[v17 + 3]; !i; i = v50[v19])
              {
                v16 = __OFADD__(1, v19++);
                if (v16)
                {
                  BUG();
                }

                if (v19 >= v49)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }

        _BitScanForward64(&v20, i);
        v12 = i & (i - 1);
        v15 = v20 | (v19 << 6);
        v13 = v19;
      }

      v21 = *(v8 + 56);
      v22 = *(*(v8 + 48) + v15);
      v39 = *(v21 + 8 * v15);
      Hasher.init(_seed:)(*(v9 + 40));
      v51 = v22;
      switch(v22)
      {
        case 0:
          v23 = 1936945004;
          v24 = 0xE400000000000000;
          break;
        case 1:
          v23 = 0x4C746E65746E6F63;
          v24 = 0xEB0000000073736FLL;
          break;
        case 2:
          v23 = 0x736F4C656C797473;
          v24 = 0xE900000000000073;
          break;
        case 3:
          v23 = 0x7963617275636361;
          v24 = 0xE800000000000000;
          break;
        case 4:
          v23 = 0x69746164696C6176;
          v24 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v23 = 0xD000000000000012;
          v24 = v44;
          break;
        case 6:
          v23 = 0xD000000000000010;
          v24 = v43;
          break;
        case 7:
          v23 = 0xD000000000000014;
          v24 = v42;
          break;
        case 8:
          v23 = 0x456D756D6978616DLL;
          v24 = 0xEC000000726F7272;
          break;
        case 9:
          v23 = 0xD00000000000001ELL;
          v24 = v41;
          break;
        case 10:
          v23 = 0xD000000000000016;
          v24 = v40;
          break;
      }

      String.hash(into:)(v38, v23);
      v24;
      v25 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
      v26 = v25 >> 6;
      v27 = ~*(v9 + 8 * (v25 >> 6) + 64) >> v25 << v25;
      if (v27)
      {
        _BitScanForward64(&v28, v27);
        v29 = v28 | v47 & v25;
        v8 = v46;
      }

      else
      {
        v30 = (63 - (-1 << *(v9 + 32))) >> 6;
        v31 = 0;
        v8 = v46;
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
          v33 = *(v9 + 8 * v26 + 64);
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

      *(v9 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(*(v9 + 48) + v29) = v51;
      *(*(v9 + 56) + 8 * v29) = v39;
      ++*(v9 + 16);
    }
  }

  *v3 = v9;
  return result;
}

{
  v41 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Int>);
  v42 = a2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {

    v34 = v41;
    goto LABEL_45;
  }

  v6 = 1 << *(v3 + 32);
  v44 = (v3 + 64);
  v7 = ~(-1 << v6);
  if (v6 >= 64)
  {
    v7 = -1;
  }

  v8 = *(v3 + 64) & v7;
  v43 = (v6 + 63) >> 6;

  v9 = 0;
  v39 = v3;
  while (1)
  {
    if (v8)
    {
      _BitScanForward64(&v10, v8);
      v8 &= v8 - 1;
      v40 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_18;
    }

    v12 = __OFADD__(1, v9);
    v13 = v9 + 1;
    if (v12)
    {
      BUG();
    }

    if (v13 >= v43)
    {
      break;
    }

    i = v44[v13];
    if (i)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v43)
      {
        break;
      }

      i = v44[v13 + 1];
      if (!i)
      {
        v15 = v13 + 2;
        if (v13 + 2 >= v43)
        {
          break;
        }

        i = v44[v13 + 2];
        if (!i)
        {
          v15 = v13 + 3;
          if (v13 + 3 >= v43)
          {
            break;
          }

          for (i = v44[v13 + 3]; !i; i = v44[v15])
          {
            v12 = __OFADD__(1, v15++);
            if (v12)
            {
              BUG();
            }

            if (v15 >= v43)
            {
              goto LABEL_38;
            }
          }
        }
      }
    }

    _BitScanForward64(&v16, i);
    v8 = i & (i - 1);
    v11 = v16 | (v15 << 6);
    v40 = v15;
LABEL_18:
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = *(v17 + 16 * v11);
    v20 = *(v17 + 16 * v11 + 8);
    v38 = *(v18 + 8 * v11);
    if ((v42 & 1) == 0)
    {
      v20;
    }

    Hasher.init(_seed:)(*(v5 + 40));
    String.hash(into:)(v37, v19);
    v21 = Hasher._finalize()() & ~(-1 << *(v5 + 32));
    v22 = v21 >> 6;
    v23 = ~*(v5 + 8 * (v21 >> 6) + 64) >> v21 << v21;
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
        v29 = *(v5 + 8 * v22 + 64);
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

    *(v5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v32 = *(v5 + 48);
    v33 = 16 * v25;
    *(v32 + v33) = v19;
    *(v32 + v33 + 8) = v20;
    *(*(v5 + 56) + 8 * v25) = v38;
    ++*(v5 + 16);
    v3 = v39;
    v9 = v40;
  }

LABEL_38:

  v34 = v41;
  if (v42)
  {
    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v44);
    }

    else
    {
      *v44 = -1 << (1 << *(v3 + 32));
    }

    *(v3 + 16) = 0;
  }

LABEL_45:
  *v34 = v5;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  v5 = *(*v2 + 24);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [Double]>);
  v41 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)(v4, v5, a2);
  if (*(v4 + 16))
  {
    v38 = v2;
    v7 = 1 << *(v4 + 32);
    v44 = (v4 + 64);
    v8 = ~(-1 << v7);
    if (v7 >= 64)
    {
      v8 = -1;
    }

    v9 = *(v4 + 64) & v8;
    v42 = (v7 + 63) >> 6;
    v43 = v4;

    v10 = 0;
    while (1)
    {
      if (v9)
      {
        _BitScanForward64(&v11, v9);
        v9 &= v9 - 1;
        v12 = v11 | (v10 << 6);
      }

      else
      {
        v13 = __OFADD__(1, v10);
        v14 = v10 + 1;
        if (v13)
        {
          BUG();
        }

        if (v14 >= v42)
        {
LABEL_38:
          v34 = v43;

          v3 = v38;
          if (v41)
          {
            v35 = 1 << *(v34 + 32);
            if (v35 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v44);
            }

            else
            {
              *v44 = -1 << (1 << *(v34 + 32));
            }

            *(v34 + 16) = 0;
          }

          break;
        }

        i = v44[v14];
        if (i)
        {
          v16 = v14;
        }

        else
        {
          v16 = v14 + 1;
          if (v14 + 1 >= v42)
          {
            goto LABEL_38;
          }

          i = v44[v14 + 1];
          if (!i)
          {
            v16 = v14 + 2;
            if (v14 + 2 >= v42)
            {
              goto LABEL_38;
            }

            i = v44[v14 + 2];
            if (!i)
            {
              v16 = v14 + 3;
              if (v14 + 3 >= v42)
              {
                goto LABEL_38;
              }

              for (i = v44[v14 + 3]; !i; i = v44[v16])
              {
                v13 = __OFADD__(1, v16++);
                if (v13)
                {
                  BUG();
                }

                if (v16 >= v42)
                {
                  goto LABEL_38;
                }
              }
            }
          }
        }

        _BitScanForward64(&v17, i);
        v9 = i & (i - 1);
        v12 = v17 | (v16 << 6);
        v10 = v16;
      }

      v18 = *(v43 + 48);
      v19 = *(v43 + 56);
      v39 = *(v18 + 16 * v12);
      v20 = *(v18 + 16 * v12 + 8);
      v40 = *(v19 + 8 * v12);
      if ((v41 & 1) == 0)
      {
        v20;
        v40;
      }

      Hasher.init(_seed:)(*(v6 + 40));
      String.hash(into:)(v37, v39);
      v21 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      v22 = v21 >> 6;
      v23 = ~*(v6 + 8 * (v21 >> 6) + 64) >> v21 << v21;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
        v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - (-1 << *(v6 + 32))) >> 6;
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
          v29 = *(v6 + 8 * v22 + 64);
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

      *(v6 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = *(v6 + 48);
      v33 = 16 * v25;
      *(v32 + v33) = v39;
      *(v32 + v33 + 8) = v20;
      *(*(v6 + 56) + 8 * v25) = v40;
      ++*(v6 + 16);
    }
  }

  *v3 = v6;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, unsigned int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a1;
  v51 = a3(0);
  v48 = *(v51 - 8);
  v7 = *(v48 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v52 = v46;
  v50 = v4;
  v10 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v6 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledName(a4);
  v53 = a2;
  v11 = v10;
  v12 = static _DictionaryStorage.resize(original:capacity:move:)(v10, v6, a2);
  if (!*(v11 + 16))
  {
    result = v11;
    v43 = v50;
    goto LABEL_46;
  }

  v13 = 1 << *(v11 + 32);
  v56 = (v11 + 64);
  v14 = ~(-1 << v13);
  if (v13 >= 64)
  {
    v14 = -1;
  }

  v15 = *(v11 + 64) & v14;
  v54 = (v13 + 63) >> 6;
  v55 = v11;
  v11;
  for (i = 0; ; i = v49)
  {
    if (v15)
    {
      _BitScanForward64(&v17, v15);
      v15 &= v15 - 1;
      v49 = i;
      v18 = v17 | (i << 6);
      goto LABEL_18;
    }

    v19 = __OFADD__(1, i);
    v20 = i + 1;
    if (v19)
    {
      BUG();
    }

    if (v20 >= v54)
    {
      break;
    }

    j = v56[v20];
    if (j)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 + 1;
      if (v20 + 1 >= v54)
      {
        break;
      }

      j = v56[v20 + 1];
      if (!j)
      {
        v22 = v20 + 2;
        if (v20 + 2 >= v54)
        {
          break;
        }

        j = v56[v20 + 2];
        if (!j)
        {
          v22 = v20 + 3;
          if (v20 + 3 >= v54)
          {
            break;
          }

          for (j = v56[v20 + 3]; !j; j = v56[v22])
          {
            v19 = __OFADD__(1, v22++);
            if (v19)
            {
              BUG();
            }

            if (v22 >= v54)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    _BitScanForward64(&v23, j);
    v15 = j & (j - 1);
    v18 = v23 | (v22 << 6);
    v49 = v22;
LABEL_18:
    v24 = *(v55 + 48);
    v47 = *(v24 + 16 * v18);
    v25 = *(v24 + 16 * v18 + 8);
    v26 = *(v48 + 72);
    v27 = *(v55 + 56) + v26 * v18;
    if (v53)
    {
      (*(v48 + 32))(v52, v27, v51);
    }

    else
    {
      (*(v48 + 16))(v52, v27, v51);
      v25;
    }

    Hasher.init(_seed:)(*(v12 + 40));
    String.hash(into:)(v46, v47);
    v28 = Hasher._finalize()() & ~(-1 << *(v12 + 32));
    v29 = v28 >> 6;
    v30 = ~*(v12 + 8 * (v28 >> 6) + 64) >> v28 << v28;
    if (v30)
    {
      _BitScanForward64(&v31, v30);
      v32 = v31 | v28 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = (63 - (-1 << *(v12 + 32))) >> 6;
      v34 = 0;
      do
      {
        v35 = v29 + 1;
        if (v29 + 1 == v33 && (v34 & 1) != 0)
        {
          BUG();
        }

        v29 = 0;
        if (v35 != v33)
        {
          v29 = v35;
        }

        v34 |= v35 == v33;
        v36 = *(v12 + 8 * v29 + 64);
      }

      while (v36 == -1);
      v37 = ~v36;
      v38 = 64;
      if (v37)
      {
        _BitScanForward64(&v38, v37);
      }

      v32 = v38 + (v29 << 6);
    }

    *(v12 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    v39 = *(v12 + 48);
    v40 = v32 * v26;
    v41 = 16 * v32;
    *(v39 + v41) = v47;
    *(v39 + v41 + 8) = v25;
    (*(v48 + 32))(*(v12 + 56) + v40, v52, v51);
    ++*(v12 + 16);
  }

LABEL_39:
  v42 = v55;
  v55;
  v43 = v50;
  if (v53)
  {
    v44 = 1 << *(v42 + 32);
    if (v44 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v44 + 63) >> 6, v56);
    }

    else
    {
      *v56 = -1 << (1 << *(v42 + 32));
    }

    *(v42 + 16) = 0;
  }

  result = v42;
LABEL_46:
  *v43 = v12;
  return result;
}

uint64_t *specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, unsigned int a2)
{
  v24 = v2;
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLRecommender.Identifier, Int>);
  v27 = a2;
  v26 = static _DictionaryStorage.resize(original:capacity:move:)(v3, v4, a2);
  if (!*(v3 + 16))
  {
    goto LABEL_31;
  }

  v5 = 1 << *(v3 + 32);
  v29 = (v3 + 64);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v3 + 64) & v6;
  v28 = (v5 + 63) >> 6;

  v8 = 0;
  v23 = v3;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v7 &= v7 - 1;
      v25 = v8;
      v10 = v9 | (v8 << 6);
      goto LABEL_23;
    }

    v11 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v11 >= v28)
    {
      goto LABEL_26;
    }

    v12 = v29[v11];
    if (!v12)
    {
      break;
    }

    v13 = v8 + 1;
LABEL_22:
    _BitScanForward64(&v14, v12);
    v7 = v12 & (v12 - 1);
    v10 = v14 | (v13 << 6);
    v25 = v13;
LABEL_23:
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v17 = *(v15 + 24 * v10);
    v18 = *(v15 + 24 * v10 + 8);
    v19 = *(v16 + 8 * v10);
    v20 = *(v15 + 24 * v10 + 16);
    if ((v27 & 1) == 0)
    {
      outlined copy of MLRecommender.Identifier(*(v15 + 24 * v10), *(v15 + 24 * v10 + 8), *(v15 + 24 * v10 + 16));
    }

    specialized _NativeDictionary._unsafeInsertNew(key:value:)(v17, v18, v20, v19, v26);
    v3 = v23;
    v8 = v25;
  }

  v13 = v8 + 2;
  if (v8 + 2 >= v28)
  {
    goto LABEL_26;
  }

  v12 = v29[v11 + 1];
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 3;
  if (v8 + 3 >= v28)
  {
    goto LABEL_26;
  }

  v12 = v29[v11 + 2];
  if (v12)
  {
    goto LABEL_22;
  }

  v13 = v8 + 4;
  if (v8 + 4 >= v28)
  {
    goto LABEL_26;
  }

  v12 = v29[v11 + 3];
  if (v12)
  {
    goto LABEL_22;
  }

  while (v8 + 5 < v28)
  {
    v12 = *(v3 + 8 * v8++ + 104);
    if (v12)
    {
      v13 = v8 + 4;
      goto LABEL_22;
    }
  }

LABEL_26:

  if (v27)
  {
    v21 = 1 << *(v3 + 32);
    if (v21 > 63)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v21 + 63) >> 6, v29);
    }

    else
    {
      *v29 = -1 << (1 << *(v3 + 32));
    }

    *(v3 + 16) = 0;
  }

LABEL_31:

  result = v24;
  *v24 = v26;
  return result;
}