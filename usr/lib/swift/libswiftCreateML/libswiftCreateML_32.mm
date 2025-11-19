uint64_t MLActivityClassifier.Trainer.validateData(_:_:)(uint64_t a1, void *a2)
{
  v85 = v2;
  v75._object = a2;
  v89 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v78 = *(v79 - 8);
  v4 = *(v78 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v82 = &v69;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v80 = *(v81 - 8);
  v7 = *(v80 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v83 = &v69;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v76 = &v69;
  v13 = type metadata accessor for DataFrame(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v93 = &v69;
  v87 = type metadata accessor for AnyColumn(0);
  v72 = *(v87 - 8);
  v18 = *(v72 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v73 = &v69;
  v77 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
  v21 = *(v3 + v77 + 40);
  v22 = *(v21 + 16);
  v90 = v14;
  v91 = v13;
  if (!v22)
  {
LABEL_9:
    v29 = v76;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75._object, v76, &demangling cache variable for type metadata for DataFrame?);
    if (__swift_getEnumTagSinglePayload(v29, 1, v13) == 1)
    {
      return outlined destroy of Tensor?(v29, &demangling cache variable for type metadata for DataFrame?);
    }

    (*(v14 + 32))(v93, v29, v13);
    v31 = *(v3 + v77 + 56);
    v86 = *(v3 + v77 + 48);
    v87 = v31;
    v92 = MLActivityClassifier.Trainer.getClassLabels(_:_:)(v89);
    v32 = DataFrame.columns.getter();
    v33 = *(v32 + 16);
    v32;
    v34 = DataFrame.columns.getter();
    v35 = *(v34 + 16);
    v34;
    if (v33 == v35)
    {
      v36 = DataFrame.columns.getter();
      v37 = v85;
      MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v36);
      v36;
      v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
      v40 = v93;
      v41 = DataFrame.columns.getter();
      v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v41);
      v89 = v37;
      v41;
      LOBYTE(v41) = specialized Set._isDisjoint<A>(with:)(v42, v39);
      v42;
      v39;
      if (v41)
      {
        v92;
        v43 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v43, 0, 0);
        *v44 = 0xD00000000000002CLL;
        *(v44 + 8) = " or [Float], found: " + 0x8000000000000000;
        *(v44 + 16) = 0;
        *(v44 + 32) = 0;
        *(v44 + 48) = 0;
        swift_willThrow();
        v45 = v40;
        return (*(v90 + 8))(v45, v91);
      }

      v60 = v82;
      DataFrame.subscript.getter(v86, v87, &type metadata for String);
      v70 = 0;
      v71 = 0xE000000000000000;
      v61 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v62 = v83;
      v63 = v79;
      OptionalColumnProtocol.filled(with:)(&v70, v79, v61);
      (*(v78 + 8))(v60, v63);
      v64 = specialized Sequence.first(where:)(v62, v92);
      v66 = v65;
      (*(v80 + 8))(v62, v81);
      if (!v66)
      {
LABEL_21:
        v45 = v93;
        return (*(v90 + 8))(v45, v91);
      }

      v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
      v68._countAndFlagsBits = v64;
      v68._object = v66;
      static MLCreateError.validationClassNotFound(className:)(v68);
      v66;
    }

    else
    {
      v92;
      v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
      *v49 = 0xD00000000000002CLL;
      *(v49 + 8) = " or [Float], found: " + 0x8000000000000000;
      *(v49 + 16) = 0;
      *(v49 + 32) = 0;
      *(v49 + 48) = 0;
    }

    swift_willThrow();
    goto LABEL_21;
  }

  v74 = v22;
  v84 = v3;
  v21;
  v88 = v21;
  v23 = (v21 + 40);
  while (1)
  {
    v24 = *(v23 - 1);
    v25 = *v23;
    *v23;
    v26._countAndFlagsBits = v24;
    v26._object = v25;
    if (DataFrame.indexOfColumn(_:)(v26).is_nil)
    {
      v88;
      v46 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v46, 0, 0);
      v47._countAndFlagsBits = v24;
      v47._object = v25;
      static MLCreateError.featureNotFound(feature:)(v47);
      v25;
      return swift_willThrow();
    }

    v86 = v23;
    v27 = v73;
    v75._countAndFlagsBits = v24;
    v92 = v25;
    DataFrame.subscript.getter(v24, v25);
    v28 = AnyColumn.wrappedElementType.getter();
    (*(v72 + 8))(v27, v87);
    if (v28 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]) && v28 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]) && v28 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]) && v28 != &type metadata for Double && v28 != &type metadata for Float)
    {
      break;
    }

    v92;
    v23 = v86 + 2;
    if (!--v74)
    {
      v88;
      v14 = v90;
      v13 = v91;
      v3 = v84;
      goto LABEL_9;
    }
  }

  v88;
  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v50._object = "No training data provided" + 0x8000000000000000;
  v50._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v50);
  v69 = v28;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any.Type);
  v52 = String.init<A>(describing:)(&v69, v51);
  v54 = v53;
  v50._countAndFlagsBits = v52;
  v50._object = v53;
  String.append(_:)(v50);
  v54;
  v55 = v70;
  v56 = v71;
  v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
  v50._countAndFlagsBits = v75._countAndFlagsBits;
  v58 = v92;
  v50._object = v92;
  v59._countAndFlagsBits = v55;
  v59._object = v56;
  static MLCreateError.featureFormatNotSupported(feature:message:)(v50, v59);
  v56;
  v58;
  return swift_willThrow();
}

Swift::Void __swiftcall DataFrame.convertNumericColumnsToFloat(except:)(Swift::String except)
{
  object = except._object;
  countAndFlagsBits = except._countAndFlagsBits;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v34 = &v31;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v42 = &v31;
  v43 = type metadata accessor for AnyColumn(0);
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v35 = v1;
  v13 = DataFrame.columns.getter();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v39 = v5;
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v16 = v9;
    v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v36 = v14;
    v18 = v17 + v14;
    v31 = *(v9 + 16);
    v32 = *(v9 + 72);
    v19 = v43;
    v41 = v16;
    while (1)
    {
      v31(&v31, v18, v19);
      if (AnyColumn.wrappedElementType.getter() != v37)
      {
        v20 = AnyColumn.name.getter();
        v22 = v21;
        if (countAndFlagsBits ^ v20 | object ^ v21)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)(v20, v21, countAndFlagsBits, object, 0);
          v22;
          v24 = (v23 & 1) == 0;
          v19 = v43;
          if (v24)
          {
            v25 = v34;
            AnyColumn.convertedToFloatArrays()();
            v26 = v39;
            if (__swift_getEnumTagSinglePayload(v25, 1, v39) == 1)
            {
              (*(v41 + 8))(&v31, v43);
              v27 = v25;
              v19 = v43;
              outlined destroy of Tensor?(v27, &demangling cache variable for type metadata for Column<[Float]>?);
              goto LABEL_8;
            }

            (*(v40 + 32))(v42, v25, v26);
            v28 = AnyColumn.name.getter();
            v30 = v29;
            DataFrame.replaceColumn<A>(_:with:)(v28, v29, v42, v37);
            v30;
            (*(v40 + 8))(v42, v39);
            v19 = v43;
          }
        }

        else
        {
          v21;
        }
      }

      (*(v41 + 8))(&v31, v19);
LABEL_8:
      v18 += v32;
      if (!--v15)
      {
        v36;
        return;
      }
    }
  }

  v13;
}

char *MLActivityClassifier.Trainer.getClassLabels(_:_:)(uint64_t a1)
{
  v38 = a1;
  v32 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v2 = *(*(v37 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v35 = v29;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
  DataFrame.subscript.getter(*(v1 + v12 + 48), *(v1 + v12 + 56), &type metadata for String);
  v34 = v29;
  v33 = v6;
  (*(v6 + 16))(v29, v29, v5);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v14 = v35;
  v38 = v5;
  dispatch thunk of Sequence.makeIterator()(v5, v13);
  v37 = &v14[*(v37 + 36)];
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v39 = _swiftEmptyArrayStorage;
  v31 = v15;
LABEL_2:
  v16 = v35;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v38, v15);
    if (*v37 == v30[0])
    {
      break;
    }

    v17 = dispatch thunk of Collection.subscript.read(v30, v37, v38, v15);
    v19 = *v18;
    v20 = v18[1];
    v20;
    v17(v30, 0);
    v15 = v31;
    dispatch thunk of Collection.formIndex(after:)(v37, v38, v31);
    if (v20)
    {
      v36 = v19;
      if (!swift_isUniquelyReferenced_nonNull_native(v39))
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v21 = v39[2];
      v22 = v36;
      if (v39[3] >> 1 <= v21)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39[3] >= 2uLL, v21 + 1, 1, v39);
        v22 = v36;
        v39 = v25;
      }

      v23 = v39;
      v39[2] = v21 + 1;
      v24 = 2 * v21;
      v23[v24 + 4] = v22;
      v23[v24 + 5] = v20;
      goto LABEL_2;
    }
  }

  outlined destroy of Tensor?(v16, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  (*(v33 + 8))(v34, v38);
  v26 = v39;
  v27 = specialized Sequence.sorted(by:)(v39, specialized closure #1 in Sequence<>.uniqued(), 0);
  v26;
  return v27;
}

uint64_t MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(void (*a1)(uint64_t *, uint64_t), char *a2, uint64_t a3, int a4, double a5, double a6)
{
  v74 = v7;
  LODWORD(v79) = a4;
  v66 = a3;
  v80 = a2;
  v75 = a1;
  v76 = v6;
  v69 = type metadata accessor for DataFrame.Rows(0);
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v64 = v60;
  i = type metadata accessor for DataFrame(0);
  v78 = *(i - 8);
  v12 = *(v78 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v81 = v60;
  v15 = *(*(type metadata accessor for MLActivityClassifier.DataBatcher(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v82 = v60;
  v18 = (*(type metadata accessor for MLActivityClassifier.Trainer(0) + 20) + v8);
  v19 = v18[8];
  v67 = v8;
  v20 = v18[9];
  v21._countAndFlagsBits = v19;
  v21._object = v20;
  if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSi_Tt0g5(v21))
  {
    (*(v78 + 16))(v81, v80, i);
    v78 = v18[6];
    v72 = v19;
    v73 = v18[7];
    v22 = v73;
    i = v18[4];
    v80 = v18[5];
    v23 = v79 & 1;
    v20;
    v22;
    v24 = v80;
    v80;
    v25 = v74;
    result = MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v81, v72, v20, v78, v73, v24, a5, i, 0, v23);
    if (!v25)
    {
      v27 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v18, v75, a5, a6);
      specialized Sequence<>.makeDataset(configuration:)(v18, v27);
      v27;
      return outlined destroy of MLActivityClassifier.ModelParameters(v82, type metadata accessor for MLActivityClassifier.DataBatcher);
    }

    return result;
  }

  v65 = v18;
  v28 = type metadata accessor for MLActivityClassifier.Model(0);
  v29 = v66;
  v30 = *(v66 + *(v28 + 64) + 40);
  swift_bridgeObjectRetain_n(v30, 2);
  v82 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v30);
  v31 = v80;
  v32 = DataFrame.columns.getter();
  v78 = *(v32 + 16);
  if (v78)
  {
    v70 = v30;
    v33 = 0;
    v34 = *(type metadata accessor for AnyColumn(0) - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v71 = v32;
    v72 = v35 + v32;
    v73 = *(v34 + 72);
    while (1)
    {
      v36 = AnyColumn.name.getter();
      v81 = v37;
      if (!*(v82 + 2))
      {
        goto LABEL_14;
      }

      v38 = *(v82 + 5);
      v79 = v36;
      Hasher.init(_seed:)(v38);
      String.hash(into:)(v60, v79);
      v39 = Hasher._finalize()();
      v40 = v79;
      v41 = ~(-1 << v82[32]);
      v42 = v41 & v39;
      v43 = *&v82[8 * ((v41 & v39) >> 6) + 56];
      if (_bittest64(&v43, v42))
      {
        v44 = *(v82 + 6);
        v45 = 16 * v42;
        v46 = *(v44 + 16 * v42);
        for (i = v44; ; v46 = *(i + 16 * v42))
        {
          v47 = *(v44 + v45 + 8);
          if (v46 == v40 && v47 == v81)
          {
            break;
          }

          v48 = _stringCompareWithSmolCheck(_:_:expecting:)(v46, v47, v40, v81, 0);
          v40 = v79;
          if (v48)
          {
            break;
          }

          v42 = v41 & (v42 + 1);
          v49 = *&v82[8 * (v42 >> 6) + 56];
          if (!_bittest64(&v49, v42))
          {
            goto LABEL_14;
          }

          v45 = 16 * v42;
          v44 = i;
        }

        v81;
        if (AnyColumn.wrappedElementType.getter() != &type metadata for Double && AnyColumn.wrappedElementType.getter() != &type metadata for Float)
        {
          v82;
          v50 = v71;
          v71;
          v51 = v64;
          DataFrame.rows.getter(v50, v47, v52, v53);
          v81 = v60;
          v54 = alloca(40);
          v55 = alloca(48);
          v61 = v67;
          v56 = v70;
          v62 = v70;
          v63 = v75;
          v57 = v74;
          ML08WeightedE6SampleVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData0E5FrameV4RowsV_8CreateML08WeightedE6SampleVsAE_pTg5(partial apply for closure #2 in MLActivityClassifier.Trainer.makeDataset(_:_:using:for:), v60);
          if (v57)
          {
            v56;
            return (*(v68 + 8))(v51, v69);
          }

          else
          {
            v59 = ML08WeightedE6SampleVsAE_pTg5;
            (*(v68 + 8))(v51, v69);
            v56;
            specialized Sequence<>.makeDataset(configuration:)(v65, v59);
            return v59;
          }
        }
      }

      else
      {
LABEL_14:
        v81;
      }

      if (++v33 == v78)
      {
        v82;
        v71;
        v31 = v80;
        v29 = v66;
        v30 = v70;
        goto LABEL_20;
      }
    }
  }

  v82;
  v32;
LABEL_20:
  v30;
  return MLActivityClassifier.Trainer.makeFlatDataset(_:_:using:)(v75, v31, v29);
}

uint64_t MLActivityClassifier.Trainer.update(_:using:on:)(char *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, double a4, double a5)
{
  v108 = v6;
  v109 = a3;
  v110 = a2;
  v111 = a1;
  v89 = v5;
  v105 = type metadata accessor for TensorShape(0);
  v91 = *(v105 - 8);
  v7 = *(v91 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v94 = v83;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v101 = v83;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v92 = v83;
  v14 = type metadata accessor for Tensor(0);
  v112 = v14;
  v107 = *(v14 - 8);
  v15 = *(v107 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v97 = v83;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v103 = v83;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v106 = v83;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v98 = v83;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v95 = v83;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v93 = v83;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v102 = v83;
  v31 = alloca(v24);
  v32 = alloca(v24);
  v90 = v83;
  v33 = alloca(v24);
  v34 = alloca(v24);
  v100 = v83;
  v35 = alloca(v24);
  v36 = alloca(v24);
  v37 = alloca(v24);
  v38 = alloca(v24);
  v39 = alloca(v24);
  v40 = alloca(v24);
  v104 = v83;
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v14);
  v84 = v109;
  v85 = v104;
  v99 = v83;
  v86 = v83;
  v109 = v83;
  v87 = v83;
  v88 = v108;
  v41 = type metadata accessor for MLActivityClassifier.Model(0);
  v42 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v43 = v111;
  v44 = valueWithGradient<A>(at:of:)(v98, v111, partial apply for closure #1 in MLActivityClassifier.Trainer.update(_:using:on:), v83, v41, v42);
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  Adam.update(_:with:)(v43, v44, v45);
  v44;
  v46 = v43;
  v47 = v104;
  v48 = *(v41 + 72);
  if (*&v46[v48])
  {
    v49 = *&v46[v48];
    v50 = v100;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, v100, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v50, 1, v112) == 1)
    {
      BUG();
    }

    v96 = v49;
    v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v51 = swift_allocObject(v108, 48, 7);
    v51[2] = 2;
    v51[3] = 4;
    v51[4] = -1;
    v52 = v90;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, v90, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v52, 1, v112) == 1)
    {
      BUG();
    }

    v53 = v92;
    Tensor.shape.getter();
    v110 = *(v107 + 8);
    v110(v52, v112);
    v111 = specialized BidirectionalCollection.last.getter();
    v55 = v54;
    v56 = *(v91 + 8);
    (v56)(v53, v105);
    if (v55)
    {
      BUG();
    }

    v51[5] = v111;
    v57 = v101;
    TensorShape.init(_:)(v51, a4, a5);
    v58 = v100;
    Tensor.reshaped(to:)(v57);
    v111 = v56;
    (v56)(v57, v105);
    v59 = v112;
    v110(v58, v112);
    v60 = v99;
    v61 = v102;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v99, v102, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v61, 1, v59) == 1)
    {
      BUG();
    }

    v62 = swift_allocObject(v108, 48, 7);
    v62[2] = 2;
    v62[3] = 4;
    v62[4] = -1;
    v63 = v93;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, v93, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v63, 1, v59) == 1)
    {
      BUG();
    }

    v64 = v94;
    Tensor.shape.getter();
    v110(v63, v59);
    v65 = specialized BidirectionalCollection.last.getter();
    v67 = v66;
    v68 = v64;
    v69 = v105;
    (v111)(v68, v105);
    if (v67)
    {
      BUG();
    }

    v62[5] = v65;
    v70 = v101;
    TensorShape.init(_:)(v62, a4, a5);
    v71 = v102;
    Tensor.reshaped(to:)(v70);
    (v111)(v70, v69);
    v72 = v112;
    v73 = v110;
    v110(v71, v112);
    v74 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, 1, v72);
    v76 = v95;
    if (!EnumTagSinglePayload)
    {
      v77 = v97;
      v78 = v112;
      (*(v107 + 16))(v97, v109, v112);
      Tensor.flattened()();
      v73(v77, v78);
      v74 = 0;
    }

    v79 = v112;
    __swift_storeEnumTagSinglePayload(v76, v74, 1, v112);
    v80 = v103;
    _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:weights:)(v106, v103, v76);
    outlined destroy of Tensor?(v76, &demangling cache variable for type metadata for Tensor?);
    v81 = v110;
    v110(v80, v79);
    v81(v106, v79);
    v47 = v104;
  }

  (*(v107 + 32))(v89, v98, v112);
  outlined destroy of Tensor?(v109, &demangling cache variable for type metadata for Tensor?);
  outlined destroy of Tensor?(v99, &demangling cache variable for type metadata for Tensor?);
  return outlined destroy of Tensor?(v47, &demangling cache variable for type metadata for Tensor?);
}

uint64_t MLActivityClassifier.Trainer.evaluate(model:using:classLabels:confussionMatrix:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void (**a6)(char *, uint64_t *, uint64_t))
{
  v189 = v6;
  v165 = a6;
  v177 = a1;
  v166 = type metadata accessor for TensorShape(0);
  v167 = *(v166 - 8);
  v7 = *(v167 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v168 = &v154;
  v178 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: Tensor));
  v10 = *(*(v178 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v179 = &v154;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v164 = &v154;
  v156 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v15 = *(*(v156 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v157 = &v154;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v169 = &v154;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v185 = &v154;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v193 = &v154;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v158 = &v154;
  v27 = alloca(v18);
  v28 = alloca(v18);
  v159 = &v154;
  v29 = alloca(v18);
  v30 = alloca(v18);
  v196 = &v154;
  v160 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v31 = *(*(v160 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v161 = &v154;
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v162 = &v154;
  v163 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v37 = *(*(v163 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v173 = &v154;
  v40 = type metadata accessor for WeightedDataSample(0);
  v41 = *(*(v40 - 8) + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v203 = &v154;
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v182 = &v154;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v48 = *(*(v47 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v205 = type metadata accessor for Tensor(0);
  v202 = *(v205 - 8);
  v51 = *(v202 + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v180 = &v154;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v188 = &v154;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v187 = &v154;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v183 = &v154;
  v60 = alloca(v51);
  v61 = alloca(v51);
  v184 = &v154;
  v62 = alloca(v51);
  v63 = alloca(v51);
  v175 = &v154;
  v64 = alloca(v51);
  v65 = alloca(v51);
  v176 = &v154;
  v66 = alloca(v51);
  v67 = alloca(v51);
  v197 = &v154;
  v68 = alloca(v51);
  v69 = alloca(v51);
  v201 = &v154;
  v70 = alloca(v51);
  v71 = alloca(v51);
  v186 = &v154;
  v72 = alloca(v51);
  v73 = alloca(v51);
  v192 = &v154;
  static Tensor.zero.getter();
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  Dataset.makeIterator()(v74);
  v75 = *(v47 + 44);
  v170 = *(&v154 + v75);
  v191 = &v154;
  v171 = *(&v154 + v75 + 8);
  v155 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
  v199 = _swiftEmptyArrayStorage;
  v198 = _swiftEmptyArrayStorage;
  v204 = _swiftEmptyArrayStorage;
  for (i = v40; ; v40 = i)
  {
    v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
    dispatch thunk of IteratorProtocol.next()(v76, v155);
    v77 = v172;
    if (v172)
    {
      v154 = v172;
      v78 = v182;
      v170(&v154);
      v79 = v77;
      v80 = v78;
      v79;
      v81 = v78;
      v82 = 0;
    }

    else
    {
      v80 = v182;
      v81 = v182;
      v82 = 1;
    }

    __swift_storeEnumTagSinglePayload(v81, v82, 1, v40);
    v83 = v202;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v40);
    v85 = v80;
    v86 = v203;
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    outlined init with take of WeightedDataSample(v85, v203);
    v87 = v189;
    static Task<>.checkCancellation()();
    v189 = v87;
    if (v87)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for WeightedDataSample);
      outlined destroy of Tensor?(v191, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
      v198;
      (*(v83 + 8))(v192, v205);
      v199;
      return v204;
    }

    v88 = type metadata accessor for LSTM.State(0);
    v89 = v162;
    __swift_storeEnumTagSinglePayload(v162, 1, 1, v88);
    v90 = v161;
    v91 = v161 + *(v160 + 48);
    outlined init with take of DataFrame?(v89, v161, &demangling cache variable for type metadata for LSTM.State?);
    v200 = *(v83 + 16);
    v200(v91, v203, v205);
    v92 = type metadata accessor for MLActivityClassifier.Model(0);
    v93 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v94 = v173;
    Layer.callAsFunction(_:)(v90, v92, v93);
    outlined destroy of Tensor?(v90, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
    v194 = v94 + *(v163 + 48);
    v95 = v203 + *(i + 20);
    v96 = v157;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, v157, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v97 = v156;
    v98 = v96 + *(v156 + 48);
    v195 = *(v202 + 32);
    v195(v197, v96, v205);
    outlined destroy of Tensor?(v98, &demangling cache variable for type metadata for Tensor?);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, v96, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v99 = v159;
    outlined init with take of DataFrame?(v96 + *(v97 + 48), v159, &demangling cache variable for type metadata for Tensor?);
    v100 = *(v202 + 8);
    v100(v96, v205);
    v101 = v186;
    v102 = v197;
    static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v186, v201, v196, v194, v197, v99);
    v103 = v99;
    v104 = v100;
    outlined destroy of Tensor?(v103, &demangling cache variable for type metadata for Tensor?);
    v105 = v102;
    v106 = v205;
    v100(v105, v205);
    v200(v176, v101, v106);
    if (swift_isUniquelyReferenced_nonNull_native(v198))
    {
      v107 = v198;
    }

    else
    {
      v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v198[2] + 1, 1, v198);
    }

    v108 = v107[2];
    if (v107[3] >> 1 <= v108)
    {
      v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107[3] >= 2uLL, v108 + 1, 1, v107);
    }

    v107[2] = v108 + 1;
    v109 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    v198 = v107;
    v194 = *(v202 + 72);
    v110 = v205;
    v195((v107 + v109 + v194 * v108), v176, v205);
    v200(v175, v201, v110);
    if (swift_isUniquelyReferenced_nonNull_native(v199))
    {
      v111 = v199;
    }

    else
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v199[2] + 1, 1, v199);
    }

    v112 = v111[2];
    v113 = v111[3];
    v190 = v104;
    if (v113 >> 1 <= v112)
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113 >= 2, v112 + 1, 1, v111);
    }

    v111[2] = v112 + 1;
    v199 = v111;
    v181 = v109;
    v114 = v111 + v109 + v194 * v112;
    v115 = v205;
    v116 = v195;
    v195(v114, v175, v205);
    v117 = v158;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v196, v158, &demangling cache variable for type metadata for Tensor?);
    if (__swift_getEnumTagSinglePayload(v117, 1, v115) == 1)
    {
      outlined destroy of Tensor?(v117, &demangling cache variable for type metadata for Tensor?);
      v118 = v190;
    }

    else
    {
      v119 = v184;
      v116(v184, v117, v115);
      v200(v183, v119, v115);
      if (!swift_isUniquelyReferenced_nonNull_native(v204))
      {
        v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v204[2] + 1, 1, v204);
      }

      v120 = v190;
      v121 = v181;
      v122 = v204[2];
      if (v204[3] >> 1 <= v122)
      {
        v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v204[3] >= 2uLL, v122 + 1, 1, v204);
      }

      v123 = v204;
      v204[2] = v122 + 1;
      v115 = v205;
      v195((v123 + v121 + v194 * v122), v183, v205);
      v120(v184, v115);
      v118 = v120;
    }

    v124 = v197;
    v125 = v196;
    static MLActivityClassifier.Trainer.weightedCrossEntropy(logits:labels:weights:axis:)(v186, v201, v196, -1);
    static Tensor.+= infix(_:_:)(v192, v124);
    v118(v124, v115);
    outlined destroy of Tensor?(v125, &demangling cache variable for type metadata for Tensor?);
    v118(v201, v115);
    v118(v186, v115);
    outlined destroy of Tensor?(v173, &demangling cache variable for type metadata for (LSTM.State, Tensor));
    outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for WeightedDataSample);
  }

  outlined destroy of Tensor?(v191, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v126 = v198;
  v197 = v198[2];
  v127 = 0;
  while (v197 != v127)
  {
    if (v127 >= v126[2])
    {
      BUG();
    }

    v128 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v129 = v127 * *(v83 + 72);
    v130 = v164 + *(v178 + 48);
    v131 = *(v83 + 16);
    v203 = v127;
    v131(v130, v126 + v128 + v129, v205);
    v132 = v179 + *(v178 + 48);
    *v179 = v203;
    v201 = v132;
    v133 = v130;
    v134 = v205;
    (*(v202 + 32))(v132, v133, v205);
    v135 = type metadata accessor for MLActivityClassifier.Model(0);
    if (v203 >= v199[2])
    {
      BUG();
    }

    v195 = *(*(v177 + *(v135 + 60)) + 16);
    v200 = v131;
    v131(v187, v199 + v128 + v129, v134);
    v136 = v204[2];
    v137 = 1;
    if (v136)
    {
      if (v203 >= v136)
      {
        BUG();
      }

      v200(v193, (v204 + v128 + v129), v134);
      v137 = 0;
    }

    __swift_storeEnumTagSinglePayload(v193, v137, 1, v134);
    v200 = *v165;
    v196 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v138 = swift_allocObject(v196, 48, 7);
    v138[2] = 2;
    v138[3] = 4;
    v138[4] = -1;
    v139 = v195;
    v138[5] = v195;
    v140 = v168;
    TensorShape.init(_:)(v138, a2, a3);
    Tensor.reshaped(to:)(v140);
    v201 = *(v167 + 8);
    v141 = v166;
    (v201)(v140, v166);
    v142 = swift_allocObject(v196, 48, 7);
    v142[2] = 2;
    v142[3] = 4;
    v142[4] = -1;
    v142[5] = v139;
    TensorShape.init(_:)(v142, a2, a3);
    Tensor.reshaped(to:)(v140);
    (v201)(v140, v141);
    v143 = v169;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193, v169, &demangling cache variable for type metadata for Tensor?);
    v144 = v205;
    if (__swift_getEnumTagSinglePayload(v143, 1, v205) == 1)
    {
      outlined destroy of Tensor?(v143, &demangling cache variable for type metadata for Tensor?);
      v145 = 1;
      v146 = v185;
    }

    else
    {
      v146 = v185;
      Tensor.flattened()();
      (*(v202 + 8))(v143, v144);
      v145 = 0;
    }

    v147 = v144;
    __swift_storeEnumTagSinglePayload(v146, v145, 1, v144);
    v148 = v180;
    _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:weights:)(v188, v180, v146);
    outlined destroy of Tensor?(v146, &demangling cache variable for type metadata for Tensor?);
    v149 = v147;
    v150 = *(v202 + 8);
    v150(v148, v149);
    v150(v188, v149);
    outlined destroy of Tensor?(v193, &demangling cache variable for type metadata for Tensor?);
    v150(v187, v149);
    outlined destroy of Tensor?(v179, &demangling cache variable for type metadata for (offset: Int, element: Tensor));
    v127 = v203 + 1;
    v83 = v202;
    v126 = v198;
  }

  v126;
  v152 = v83;
  v153 = v192;
  Tensor.scalar<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
  (*(v152 + 8))(v153, v205);
  v199;
  return v204;
}

uint64_t MLActivityClassifier.Trainer.ModelContainer.init(model:)(uint64_t a1)
{
  v39 = v1;
  v38 = a1;
  v30 = type metadata accessor for LearningPhase(0);
  v31 = *(v30 - 8);
  v2 = *(v31 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v32 = &v27;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v34 = &v27;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v33 = type metadata accessor for MLActivityClassifier.Model(0);
  v11 = *(*(v33 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v36 = &v27;
  v17 = v1 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  v35 = v1 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  outlined init with copy of MLTrainingSessionParameters(v38, v1 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, type metadata accessor for MLActivityClassifier.Model);
  swift_beginAccess(v17, v28, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v17, &v27, type metadata accessor for MLActivityClassifier.Model);
  v18 = type metadata accessor for GradientClippingMode(0);
  __swift_storeEnumTagSinglePayload(&v27, 1, 1, v18);
  v19 = type metadata accessor for RegularizationKind(0);
  v20 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v19);
  v37 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v21 = v36;
  v22 = v33;
  Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(&v27, 0, &v27, v20, v33, v37, 0.001, 0.89999998, 0.99900001, 0.0000000099999999, 1.0);
  outlined destroy of MLActivityClassifier.ModelParameters(&v27, type metadata accessor for MLActivityClassifier.Model);
  outlined init with take of DataFrame?(v21, v39 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v23 = v32;
  v24 = v30;
  v25 = v31;
  (*(v31 + 104))(v32, enum case for LearningPhase.training(_:), v30);
  swift_beginAccess(v35, v29, 33, 0);
  Layer.prepare(for:)(v23, v22, v37);
  swift_endAccess(v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLActivityClassifier.Model);
  (*(v25 + 8))(v23, v24);
  return v39;
}

void *MLActivityClassifier.Trainer.ModelContainer.trainableSublayers()()
{
  v54 = type metadata accessor for LSTM(0);
  v63 = *(v54 - 8);
  v1 = *(v63 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v61 = &v41;
  v58 = type metadata accessor for Dense(0);
  v62 = *(v58 - 8);
  v4 = *(v62 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v59 = &v41;
  v55 = type metadata accessor for Conv2D(0);
  v60 = *(v55 - 8);
  v7 = *(v60 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v56 = &v41;
  v10 = type metadata accessor for BatchNorm(0);
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v53 = &v41;
  v14 = type metadata accessor for MLActivityClassifier.Model(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0;
  swift_beginAccess(v18, v43, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v18, &v41, type metadata accessor for MLActivityClassifier.Model);
  v19 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v20 = Layer.sublayers(recursively:)(1, v14, v19);
  outlined destroy of MLActivityClassifier.ModelParameters(&v41, type metadata accessor for MLActivityClassifier.Model);

  v65 = dispatch thunk of _AnySequenceBox._makeIterator()(v20);
  v64 = v20;
  v21 = v20;

  v67 = _swiftEmptyArrayStorage;
  v66 = v10;
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()(v21);
    if (!v46)
    {
      break;
    }

    outlined init with take of TabularRegressionTask(&v45, v47);
    outlined init with copy of TabularRegressionTask(v47, v44);
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v23 = v53;
    if (swift_dynamicCast(v53, v44, v22, v10, 0))
    {
      (*(v57 + 8))(v23, v10);
    }

    else
    {
      v24 = v56;
      v25 = v55;
      v26 = swift_dynamicCast(v56, v44, v22, v55, 0);
      v27 = v54;
      if (v26)
      {
        v28 = v24;
        v29 = v25;
        v30 = v60;
      }

      else
      {
        v31 = v59;
        v32 = v58;
        if (swift_dynamicCast(v59, v44, v22, v58, 0))
        {
          v28 = v31;
          v29 = v32;
          v30 = v62;
        }

        else
        {
          v33 = v61;
          if (!swift_dynamicCast(v61, v44, v22, v27, 0))
          {
            v36 = v48;
            v37 = v49;
            __swift_project_boxed_opaque_existential_0Tm(v47, v48);
            v38 = Layer.parameters(recursively:)(0, v36, v37);
            v39 = *(v38 + 16);
            v38;
            if (v39)
            {
              outlined init with copy of TabularRegressionTask(v47, &v50);
            }

            else
            {
              v51 = 0;
              v50 = 0;
              v52 = 0;
            }

            v10 = v66;
            __swift_destroy_boxed_opaque_existential_1Tm(v44);
            goto LABEL_13;
          }

          v28 = v33;
          v29 = v27;
          v30 = v63;
        }
      }

      (*(v30 + 8))(v28, v29);
      v10 = v66;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    outlined init with copy of TabularRegressionTask(v47, &v50);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    if (*(&v51 + 1))
    {
      outlined init with take of TabularRegressionTask(&v50, v42);
      outlined init with take of TabularRegressionTask(v42, &v50);
      if (!swift_isUniquelyReferenced_nonNull_native(v67))
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
      }

      v34 = v67[2];
      if (v67[3] >> 1 <= v34)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67[3] >= 2uLL, v34 + 1, 1, v67);
      }

      v35 = v67;
      v67[2] = v34 + 1;
      v21 = &v50;
      outlined init with take of TabularRegressionTask(&v50, &v35[5 * v34 + 4]);
    }

    else
    {
      v21 = &v50;
      outlined destroy of Tensor?(&v50, &demangling cache variable for type metadata for Layer?);
    }
  }

  return v67;
}

uint64_t MLActivityClassifier.Trainer.ModelContainer.getCheckpointStatesDictionary()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer;
  swift_beginAccess(v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer, v9, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &v8, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v5 = MLActivityClassifier.Trainer.ModelContainer.trainableSublayers()();
  v6 = specialized _ModelCheckpoint<>.getCheckpointStatesDictionary<A>(optimizer:trainableSublayers:)(&v8, v5);
  outlined destroy of Tensor?(&v8, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v5;
  return v6;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLActivityClassifier.Trainer.ModelContainer.compileModel()()
{
  v10 = type metadata accessor for MLActivityClassifier.Model(0);
  v1 = *(*(v10 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0;
  swift_beginAccess(OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0, v9, 1, 0);
  outlined init with copy of MLTrainingSessionParameters(v4, v9, type metadata accessor for MLActivityClassifier.Model);
  v5.super.isa = MLActivityClassifier.Model.makeMLModel()().super.isa;
  outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLActivityClassifier.Model);
  if (!v6)
  {
    v7 = *(v10 + 68);
    v8 = *(v4 + v7);
    *(v4 + v7) = v5;
  }
}

uint64_t MLActivityClassifier.Trainer.ModelContainer.__deallocating_deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, type metadata accessor for MLActivityClassifier.Model);
  outlined destroy of Tensor?(v0 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  return swift_deallocClassInstance(v0, *(*v0 + 48), *(*v0 + 52));
}

uint64_t type metadata completion function for MLActivityClassifier.Trainer.ModelContainer(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for Adam<MLActivityClassifier.Model>(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      result = swift_updateClassMetadata2(a1, 256, 2, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Adam<MLActivityClassifier.Model>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Adam<MLActivityClassifier.Model>;
  if (!lazy cache variable for type metadata for Adam<MLActivityClassifier.Model>)
  {
    v2 = type metadata accessor for MLActivityClassifier.Model(255);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    result = type metadata accessor for Adam(a1, v2, v3);
    if (!v4)
    {
      lazy cache variable for type metadata for Adam<MLActivityClassifier.Model> = result;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WeightedDataSample(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Tensor(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v7((a1 + v8), (a2 + v8), v6);
    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
    v12 = &v9[v11];
    v13 = &v10[v11];
    if (__swift_getEnumTagSinglePayload(v13, 1, v6))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }

    else
    {
      v7(v12, v13, v6);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
    }
  }

  return v3;
}

uint64_t destroy for WeightedDataSample(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Tensor(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = a1 + *(a2 + 20);
  v3(v4, v2);
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  result = __swift_getEnumTagSinglePayload(v5, 1, v2);
  if (!result)
  {
    return v3(v5, v2);
  }

  return result;
}

char *initializeWithCopy for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  if (__swift_getEnumTagSinglePayload(v11, 1, v4))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v5(v10, v11, v4);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  }

  return a1;
}

char *assignWithCopy for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 24);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  v13 = __swift_getEnumTagSinglePayload(v11, 1, v4);
  if (!EnumTagSinglePayload)
  {
    if (!v13)
    {
      v5(v10, v11, v4);
      return a1;
    }

    (*(v16 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v16 + 16))(v10, v11, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  return a1;
}

char *initializeWithTake for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  if (__swift_getEnumTagSinglePayload(v11, 1, v4))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v5(v10, v11, v4);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  }

  return a1;
}

char *assignWithTake for WeightedDataSample(char *a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for Tensor(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 40);
  v5(a1, a2, v4);
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v5(&a1[v6], &a2[v6], v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?)) + 48);
  v10 = &v7[v9];
  v11 = &v8[v9];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  v13 = __swift_getEnumTagSinglePayload(v11, 1, v4);
  if (!EnumTagSinglePayload)
  {
    if (!v13)
    {
      v5(v10, v11, v4);
      return a1;
    }

    (*(v16 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v16 + 32))(v10, v11, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  return a1;
}

uint64_t sub_227F48(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for Tensor(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_227FA5(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for Tensor(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for WeightedDataSample(uint64_t a1)
{
  result = type metadata accessor for Tensor(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v7[0] = v3;
    result = type metadata accessor for Tensor?(319);
    if (v4 <= 0x3F)
    {
      v5 = *(result - 8);
      swift_getTupleTypeLayout2(v6, v3);
      v7[1] = v6;
      swift_initStructMetadata(a1, 256, 2, v7, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Tensor?(uint64_t a1)
{
  result = lazy cache variable for type metadata for Tensor?;
  if (!lazy cache variable for type metadata for Tensor?)
  {
    v2 = type metadata accessor for Tensor(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for Tensor? = result;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v23 = a2[1];
    a1[1] = v23;
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *(a1 + v5) = *(a2 + v5);
    *(a1 + v5 + 8) = *(a2 + v5 + 8);
    *(a1 + v5 + 16) = *(a2 + v5 + 16);
    *(a1 + v5 + 24) = *(a2 + v5 + 24);
    v24 = *(a2 + v5 + 40);
    *(a1 + v5 + 40) = v24;
    *(a1 + v5 + 48) = *(a2 + v5 + 48);
    v25 = *(a2 + v5 + 56);
    *(a1 + v5 + 56) = v25;
    *(a1 + v5 + 64) = *(a2 + v5 + 64);
    v26 = *(a2 + v5 + 72);
    *(a1 + v5 + 72) = v26;
    v22 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v8 = *(v22 + 44);
    v20 = v6;
    v9 = &v6[v8];
    v21 = v7;
    v10 = &v7[v8];
    v11 = type metadata accessor for DataFrame(0);
    v23;
    v24;
    v25;
    v26;
    if (__swift_getEnumTagSinglePayload(v10, 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v9, v10, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 16))(v9, v10, v11);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    }

    v14 = *(v22 + 48);
    v15 = &v20[v14];
    v16 = &v21[v14];
    if (__swift_getEnumTagSinglePayload(&v21[v14], 1, v11))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v15, v16, *(*(v17 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 16))(v15, v16, v11);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v11);
    }

    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.Trainer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8);
  v2 = (a1 + *(a2 + 20));
  v2[5];
  v2[7];
  v2[9];
  v3 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v4 = v2 + *(v3 + 44);
  v5 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  v6 = v2 + *(v3 + 48);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v6, v5);
  }

  v7 = *(a1 + *(a2 + 24));
}

void *initializeWithCopy for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v20 = a2[1];
  a1[1] = v20;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  *(a1 + v3 + 8) = *(a2 + v3 + 8);
  *(a1 + v3 + 16) = *(a2 + v3 + 16);
  *(a1 + v3 + 24) = *(a2 + v3 + 24);
  v21 = *(a2 + v3 + 40);
  *(a1 + v3 + 40) = v21;
  *(a1 + v3 + 48) = *(a2 + v3 + 48);
  v22 = *(a2 + v3 + 56);
  *(a1 + v3 + 56) = v22;
  *(a1 + v3 + 64) = *(a2 + v3 + 64);
  v23 = *(a2 + v3 + 72);
  *(a1 + v3 + 72) = v23;
  v19 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v6 = *(v19 + 44);
  v17 = v4;
  v7 = &v4[v6];
  v18 = v5;
  v8 = &v5[v6];
  v9 = type metadata accessor for DataFrame(0);
  v20;
  v21;
  v22;
  v23;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v7, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(v7, v8, v9);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  }

  v11 = *(v19 + 48);
  v12 = &v17[v11];
  v13 = &v18[v11];
  if (__swift_getEnumTagSinglePayload(&v18[v11], 1, v9))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v12, v13, *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(v12, v13, v9);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v9);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

void *assignWithCopy for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6;
  v33 = a3;
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  __src = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = *(a2 + v7 + 8);
  *(a1 + v7 + 16) = *(a2 + v7 + 16);
  *(a1 + v7 + 24) = *(a2 + v7 + 24);
  *(a1 + v7 + 32) = *(a2 + v7 + 32);
  v9 = *(a2 + v7 + 40);
  v10 = *(a1 + v7 + 40);
  *(a1 + v7 + 40) = v9;
  v9;
  v10;
  *(a1 + v7 + 48) = *(a2 + v7 + 48);
  v11 = *(a2 + v7 + 56);
  v12 = *(a1 + v7 + 56);
  *(a1 + v7 + 56) = v11;
  v11;
  v12;
  *(a1 + v7 + 64) = *(a2 + v7 + 64);
  v13 = *(a2 + v7 + 72);
  v14 = *(a1 + v7 + 72);
  *(a1 + v7 + 72) = v13;
  v13;
  v14;
  v34 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v15 = *(v34 + 44);
  v36 = v8;
  v16 = &v8[v15];
  v17 = &__src[v15];
  v18 = type metadata accessor for DataFrame(0);
  __dst = v16;
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v16, 1, v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  if (v16)
  {
    if (EnumTagSinglePayload)
    {
      v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v21 = __dst;
LABEL_6:
      memcpy(v21, v17, v20);
      goto LABEL_9;
    }

    (*(*(v18 - 8) + 16))(__dst, v17, v18);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v18);
  }

  else
  {
    v22 = *(v18 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v22 + 8))(__dst, v18);
      v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v21 = __dst;
      goto LABEL_6;
    }

    (*(v22 + 24))(__dst, v17, v18);
  }

LABEL_9:
  v23 = *(v34 + 48);
  v24 = &__src[v23];
  v37 = &v36[v23];
  v25 = __swift_getEnumTagSinglePayload(v37, 1, v18);
  v26 = __swift_getEnumTagSinglePayload(v24, 1, v18);
  if (v25)
  {
    if (!v26)
    {
      (*(*(v18 - 8) + 16))(v37, v24, v18);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v18);
      goto LABEL_17;
    }

    v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v28 = v37;
  }

  else
  {
    v29 = *(v18 - 8);
    if (!v26)
    {
      (*(v29 + 24))(v37, v24, v18);
      goto LABEL_17;
    }

    (*(v29 + 8))(v37, v18);
    v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v28 = v37;
  }

  memcpy(v28, v24, v27);
LABEL_17:
  v30 = *(v33 + 24);
  v31 = *(a1 + v30);
  *(a1 + v30) = *(a2 + v30);

  return a1;
}

_OWORD *initializeWithTake for MLActivityClassifier.Trainer(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  *(a1 + v3 + 8) = *(a2 + v3 + 8);
  *(a1 + v3 + 16) = *(a2 + v3 + 16);
  *(a1 + v3 + 24) = *(a2 + v3 + 24);
  *(a1 + v3 + 40) = *(a2 + v3 + 40);
  *(a1 + v3 + 48) = *(a2 + v3 + 48);
  *(a1 + v3 + 64) = *(a2 + v3 + 64);
  v17 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v6 = *(v17 + 44);
  v16 = v4;
  __dst = &v4[v6];
  v7 = &v5[v6];
  v8 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 32))(__dst, v7, v8);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
  }

  v10 = *(v17 + 48);
  v11 = &v16[v10];
  v12 = &v5[v10];
  if (__swift_getEnumTagSinglePayload(v12, 1, v8))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 32))(v11, v12, v8);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void *assignWithTake for MLActivityClassifier.Trainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v28 = a3;
  v6 = *(a3 + 20);
  __src = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 24) = *(a2 + v6 + 24);
  v7 = *(a1 + v6 + 40);
  *(a1 + v6 + 40) = *(a2 + v6 + 40);
  v7;
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v8 = *(a1 + v6 + 56);
  *(a1 + v6 + 56) = *(a2 + v6 + 56);
  v8;
  *(a1 + v6 + 64) = *(a2 + v6 + 64);
  v9 = *(a1 + v6 + 72);
  *(a1 + v6 + 72) = *(a2 + v6 + 72);
  v9;
  v29 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v10 = *(v29 + 44);
  v31 = a1 + v6;
  v11 = a1 + v6 + v10;
  v12 = a2 + v6 + v10;
  v13 = type metadata accessor for DataFrame(0);
  __dst = v11;
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v11, 1, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (v11)
  {
    if (EnumTagSinglePayload)
    {
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v16 = __dst;
LABEL_6:
      memcpy(v16, v12, v15);
      goto LABEL_9;
    }

    (*(*(v13 - 8) + 32))(__dst, v12, v13);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v13);
  }

  else
  {
    v17 = *(v13 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v17 + 8))(__dst, v13);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v16 = __dst;
      goto LABEL_6;
    }

    (*(v17 + 40))(__dst, v12, v13);
  }

LABEL_9:
  v18 = *(v29 + 48);
  v19 = &__src[v18];
  v32 = &v31[v18];
  v20 = __swift_getEnumTagSinglePayload(v32, 1, v13);
  v21 = __swift_getEnumTagSinglePayload(v19, 1, v13);
  if (v20)
  {
    if (!v21)
    {
      (*(*(v13 - 8) + 32))(v32, v19, v13);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v13);
      goto LABEL_17;
    }

    v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v23 = v32;
  }

  else
  {
    v24 = *(v13 - 8);
    if (!v21)
    {
      (*(v24 + 40))(v32, v19, v13);
      goto LABEL_17;
    }

    (*(v24 + 8))(v32, v13);
    v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v23 = v32;
  }

  memcpy(v23, v19, v22);
LABEL_17:
  v25 = *(v28 + 24);
  v26 = *(a1 + v25);
  *(a1 + v25) = *(a2 + v25);

  return a1;
}

uint64_t sub_228C1C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLActivityClassifier.Configuration(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 20) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_228C95(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLActivityClassifier.Configuration(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 20) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.Trainer(uint64_t a1)
{
  v3[0] = &unk_346800;
  result = type metadata accessor for MLActivityClassifier.Configuration(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_346818;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

void static MLCreateError.featureFormatNotSupported(feature:message:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v4 = v2;
  _StringGuts.grow(_:)(47);
  0xE000000000000000, a1._object;
  *&v6 = 0x2065727574616546;
  *(&v6 + 1) = 0xEF206E6D756C6F63;
  String.append(_:)(a1);
  v5._object = " was not found in the model" + 0x8000000000000000;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v5);
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  String.append(_:)(v5);
  *v4 = v6;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 1;
}

void static MLCreateError.validationClassNotFound(className:)(Swift::String a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(46);
  0xE000000000000000, a1._object;
  *&v4 = 0xD000000000000011;
  *(&v4 + 1) = "does not match training data" + 0x8000000000000000;
  String.append(_:)(a1);
  v3._object = "Validation class " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v3);
  *v2 = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
}

uint64_t static MLActivityClassifier.Trainer.weightedCrossEntropy(logits:labels:weights:axis:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v59 = a2;
  v6 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = &v49;
  v10 = type metadata accessor for Tensor(0);
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v52 = &v49;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v58 = &v49;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v55 = &v49;
  v18 = alloca(v11);
  v19 = alloca(v11);
  v63 = &v49;
  v20 = alloca(v11);
  v21 = alloca(v11);
  v53 = &v49;
  v22 = alloca(v11);
  v23 = alloca(v11);
  v54 = &v49;
  v24 = alloca(v11);
  v25 = alloca(v11);
  v26 = alloca(v11);
  v27 = alloca(v11);
  v62 = &v49;
  if (a4 < 0)
  {
    v28 = Tensor.rank.getter();
    v29 = __OFADD__(v28, a4);
    a4 += v28;
    if (v29)
    {
      BUG();
    }
  }

  v60 = v6;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v56 = v10;
  v65 = v30;
  v31 = swift_allocObject(v30, 40, 7);
  v31[2] = 1;
  v31[3] = 2;
  v31[4] = a4;
  Tensor.max(alongAxes:)(v31);
  v31;
  v32 = v62;
  static Tensor.- infix(_:_:)(a1, &v49);
  v64 = *(v57 + 8);
  v64(&v49, v56);
  exp(_:)(v32);
  v33 = swift_allocObject(v65, 40, 7);
  v33[2] = 1;
  v33[3] = 2;
  v61 = a4;
  v33[4] = a4;
  v34 = v53;
  Tensor.sum(alongAxes:)(v33);
  v33;
  v35 = v34;
  v36 = v56;
  v37 = &v49;
  log(_:)(v35);
  v38 = v55;
  static Tensor.- infix(_:_:)(v62, v55);
  v39 = v64;
  v64(v38, v36);
  v40 = v63;
  static Tensor.- prefix(_:)(&v49);
  v39(&v49, v36);
  v41 = v50;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, v50, &demangling cache variable for type metadata for Tensor?);
  if (__swift_getEnumTagSinglePayload(v41, 1, v36) == 1)
  {
    outlined destroy of Tensor?(v41, &demangling cache variable for type metadata for Tensor?);
    static Tensor.* infix(_:_:)(v59, v40);
    v42 = swift_allocObject(v65, 40, 7);
    v42[2] = 1;
    v42[3] = 2;
    v42[4] = v61;
    Tensor.sum(alongAxes:)(v42);
    v42;
    v43 = v64;
    v64(v38, v36);
    Tensor.sum()();
  }

  else
  {
    v44 = v58;
    (*(v57 + 32))(v58, v41, v36);
    v45 = v52;
    static Tensor.* infix(_:_:)(v59, v44);
    static Tensor.* infix(_:_:)(v45, v63);
    v46 = v45;
    v43 = v64;
    v64(v46, v36);
    v47 = swift_allocObject(v65, 40, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[4] = v61;
    Tensor.sum(alongAxes:)(v47);
    v47;
    v43(v38, v36);
    Tensor.sum()();
    v43(&v49, v36);
    v37 = v58;
  }

  v43(v37, v36);
  v43(v63, v36);
  v43(v53, v36);
  v43(v54, v36);
  return (v43)(v62, v36);
}

uint64_t closure #1 in MLActivityClassifier.Trainer.update(_:using:on:)(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v74 = a4;
  v63 = a3;
  v78 = a2;
  v76 = a1;
  v69 = v5;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v6 = *(*(v65 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v63;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v63;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v64 = &v63;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v67 = &v63;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v70 = &v63;
  v18 = type metadata accessor for Tensor(0);
  v79 = *(v18 - 8);
  v19 = *(v79 + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v72 = &v63;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v71 = &v63;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v73 = &v63;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v27 = *(*(v26 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v33 = *(*(v77 - 1) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v36 = type metadata accessor for LSTM.State(0);
  __swift_storeEnumTagSinglePayload(&v63, 1, 1, v36);
  v37 = &v63 + *(v26 + 48);
  outlined init with take of DataFrame?(&v63, &v63, &demangling cache variable for type metadata for LSTM.State?);
  (*(v79 + 2))(v37, v78, v18);
  v38 = type metadata accessor for MLActivityClassifier.Model(0);
  v39 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  Layer.callAsFunction(_:)(&v63, v38, v39);
  outlined destroy of Tensor?(&v63, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v40 = *(v77 + 12);
  v77 = &v63;
  v76 = &v63 + v40;
  v41 = v18;
  v42 = v78 + *(type metadata accessor for WeightedDataSample(0) + 20);
  v43 = v66;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, v66, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v44 = v65;
  v45 = v43 + *(v65 + 48);
  v78 = *(v79 + 4);
  v78(v72, v43, v41);
  outlined destroy of Tensor?(v45, &demangling cache variable for type metadata for Tensor?);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, v43, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v46 = v67;
  outlined init with take of DataFrame?(v43 + *(v44 + 48), v67, &demangling cache variable for type metadata for Tensor?);
  v47 = *(v79 + 1);
  v48 = v43;
  v49 = v41;
  v47(v48, v41);
  v50 = v74;
  v51 = v72;
  static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v73, v71, v70, v76, v72, v46);
  outlined destroy of Tensor?(v46, &demangling cache variable for type metadata for Tensor?);
  v79 = v47;
  v47(v51, v49);
  v52 = v63;
  outlined destroy of Tensor?(v63, &demangling cache variable for type metadata for Tensor?);
  v53 = v49;
  v54 = v49;
  v55 = v78;
  v78(v52, v73, v53);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v54);
  outlined destroy of Tensor?(v50, &demangling cache variable for type metadata for Tensor?);
  v55(v50, v71, v54);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v54);
  v56 = v70;
  outlined assign with take of Tensor?(v70, v75);
  v57 = v64;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, v64, &demangling cache variable for type metadata for Tensor?);
  v58 = v57;
  v59 = v54;
  if (__swift_getEnumTagSinglePayload(v57, 1, v54) == 1)
  {
    BUG();
  }

  v60 = v68;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, v68, &demangling cache variable for type metadata for Tensor?);
  if (__swift_getEnumTagSinglePayload(v60, 1, v54) == 1)
  {
    BUG();
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, v56, &demangling cache variable for type metadata for Tensor?);
  static MLActivityClassifier.Trainer.weightedCrossEntropy(logits:labels:weights:axis:)(v58, v60, v56, -1);
  outlined destroy of Tensor?(v56, &demangling cache variable for type metadata for Tensor?);
  outlined destroy of Tensor?(v77, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v61 = v79;
  v79(v60, v59);
  return v61(v58, v59);
}

uint64_t MLActivityClassifier.Trainer.makeFlatDataset(_:_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v225 = v4;
  v254 = v5;
  v267 = *&a3;
  v213 = a1;
  v226 = v3;
  v215 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v7 = *(*(v215 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v216 = &v200;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v217 = &v200;
  v218 = type metadata accessor for WeightedDataSample(0);
  v219 = *(v218 - 8);
  v12 = *(v219 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v249 = &v200;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v220 = &v200;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v257 = &v200;
  v242 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<String>);
  v243 = *(v242 - 8);
  v20 = *(v243 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v251 = &v200;
  v252 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v244 = *(v252 - 8);
  v23 = *(v244 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v253 = &v200;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v214 = &v200;
  v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Float>>);
  v29 = *(*(v204 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v256 = &v200;
  v262 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<Float>);
  v230 = *(v262 - 8);
  v32 = *(v230 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v205 = &v200;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v231 = &v200;
  v232 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v206 = *(v232 - 8);
  v37 = *(v206 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v233 = &v200;
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v248 = &v200;
  v208 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Double>>);
  v43 = *(*(v208 - 8) + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v227 = &v200;
  v271 = type metadata accessor for Tensor(0);
  v269 = *(v271 - 8);
  v46 = *(v269 + 64);
  v47 = alloca(v46);
  v48 = alloca(v46);
  v250 = &v200;
  v49 = alloca(v46);
  v50 = alloca(v46);
  v240 = &v200;
  v51 = alloca(v46);
  v52 = alloca(v46);
  v241 = &v200;
  v53 = alloca(v46);
  v54 = alloca(v46);
  v260 = &v200;
  v55 = alloca(v46);
  v56 = alloca(v46);
  v207 = &v200;
  v57 = alloca(v46);
  v58 = alloca(v46);
  v235 = &v200;
  v59 = alloca(v46);
  v60 = alloca(v46);
  v210 = &v200;
  v263 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<Double>);
  v236 = *(v263 - 8);
  v61 = *(v236 + 64);
  v62 = alloca(v61);
  v63 = alloca(v61);
  v209 = &v200;
  v64 = alloca(v61);
  v65 = alloca(v61);
  v237 = &v200;
  v238 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v211 = *(v238 - 8);
  v66 = *(v211 + 64);
  v67 = alloca(v66);
  v68 = alloca(v66);
  v239 = &v200;
  v229 = type metadata accessor for AnyColumn(0);
  v202 = *(v229 - 8);
  v69 = *(v202 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v259 = &v200;
  v272 = type metadata accessor for DataFrame.Rows(0);
  v270 = *(v272 - 1);
  v72 = v270[8];
  v73 = alloca(v72);
  v74 = alloca(v72);
  v75 = *(type metadata accessor for MLActivityClassifier.Model(0) + 64);
  v266 = *(a3 + v75 + 40);
  v76 = v266;
  v266;
  v265 = a2;
  DataFrame.rows.getter(v76, a2, v77, v78);
  v79 = DataFrame.Rows.count.getter();
  (v270[1])(&v200, v272);
  v80 = *(*&v267 + v75 + 32);
  if (!v80)
  {
    BUG();
  }

  if (__OFSUB__(-v79, 1) && v80 == -1)
  {
    BUG();
  }

  v81 = v79 / v80;
  v82 = 0;
  if (v79 / v80 > 0)
  {
    v82 = v79 / v80;
  }

  v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0, _swiftEmptyArrayStorage);
  v221 = v79 / v80;
  if (v81 < 0)
  {
    BUG();
  }

  v261 = v83;
  if (v81)
  {
    v84 = 0;
    v222 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
    v85 = *(v254 + v222 + 40);
    v234 = *(v85 + 16);
    v247 = v85;
    v203 = v85 + 32;
    v224 = (v266 + 40);
    v86 = v259;
    v223 = v80;
    while (1)
    {
      v258 = v84 * v80;
      if (!is_mul_ok(v84, v80))
      {
        BUG();
      }

      v87 = v84 + 1;
      if (!is_mul_ok(v87, v80))
      {
        BUG();
      }

      if ((v87 * v80) < v258)
      {
        BUG();
      }

      v246 = v87 * v80;
      v212 = v87;
      v88 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v271, &protocol witness table for String);
      if (v234)
      {
        v247;
        v89 = 0;
        do
        {
          if (v89 >= *(v247 + 16))
          {
            BUG();
          }

          v268 = v88;
          v201 = v89;
          v90 = *(v203 + 16 * v89);
          v91 = *(v203 + 16 * v89 + 8);
          v91;
          v264 = v90;
          DataFrame.subscript.getter(v90, v91);
          v92 = AnyColumn.wrappedElementType.getter();
          v272 = *(v202 + 8);
          v272(v86, v229);
          v228 = v91;
          if (v92 == &type metadata for Double)
          {
            DataFrame.subscript.getter(v264, v91, &type metadata for Double);
            v123 = v237;
            Column.subscript.getter(v258, v246, v238);
            v124 = v123;
            v125 = v263;
            (*(v236 + 16))(v209, v124, v263);
            v126 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Double> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Double>, &protocol conformance descriptor for ColumnSlice<A>);
            v127 = v227;
            dispatch thunk of Sequence.makeIterator()(v125, v126);
            v245 = (v127 + *(v208 + 36));
            v128 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Double> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Double>, &protocol conformance descriptor for ColumnSlice<A>);
            v129 = v127;
            v130 = v125;
            v131 = v128;
            v272 = _swiftEmptyArrayStorage;
            while (1)
            {
              v132 = v131;
              dispatch thunk of Collection.endIndex.getter(v130, v131);
              v133 = v245;
              if (*v245 == v255[0])
              {
                break;
              }

              v134 = v263;
              v135 = dispatch thunk of Collection.subscript.read(v255, v245, v263, v132);
              v267 = *v136;
              LOBYTE(v270) = *(v136 + 8);
              v135(v255, 0);
              dispatch thunk of Collection.formIndex(after:)(v133, v134, v132);
              if (v270)
              {
                BUG();
              }

              if (!swift_isUniquelyReferenced_nonNull_native(v272))
              {
                v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v272 + 2) + 1, 1, v272);
              }

              v137 = *(v272 + 2);
              v130 = v263;
              if (*(v272 + 3) >> 1 <= v137)
              {
                v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v272 + 3) >= 2uLL, v137 + 1, 1, v272);
                v131 = v132;
                v130 = v263;
                v272 = v140;
              }

              else
              {
                v131 = v132;
              }

              v138 = v267;
              v139 = v272;
              *(v272 + 2) = v137 + 1;
              v139[v137 + 8] = v138;
              v129 = v227;
            }

            outlined destroy of Tensor?(v129, &demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Double>>);
            v255[0] = v272;
            v141 = type metadata accessor for ComputeDevice(0);
            v142 = v248;
            __swift_storeEnumTagSinglePayload(v248, 1, 1, v141);
            v143 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
            v144 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
            v145 = v210;
            Tensor.init<A>(_:on:)(v255, v142, v143, v144);
            v146 = v235;
            (*(v269 + 32))(v235, v145, v271);
            v147 = v268;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v268);
            v255[0] = v147;
            v149 = v228;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v146, v264, v228, isUniquelyReferenced_nonNull_native);
            v149;
            v88 = v255[0];
            (*(v236 + 8))(v237, v263);
            v120 = v239;
            v121 = v238;
            v122 = v211;
          }

          else
          {
            DataFrame.subscript.getter(v264, v91);
            v93 = AnyColumn.wrappedElementType.getter();
            v272(v86, v229);
            if (v93 != &type metadata for Float)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000023, "count mismatch, expected " + 0x8000000000000000, "CreateML/MLActivityClassifier+Training.swift", 44, 2, 527, 0);
              BUG();
            }

            DataFrame.subscript.getter(v264, v91, &type metadata for Float);
            v94 = v231;
            Column.subscript.getter(v258, v246, v232);
            v95 = v94;
            v96 = v262;
            (*(v230 + 16))(v205, v95, v262);
            v97 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Float> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Float>, &protocol conformance descriptor for ColumnSlice<A>);
            v98 = v256;
            dispatch thunk of Sequence.makeIterator()(v96, v97);
            v245 = (v98 + *(v204 + 36));
            v99 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Float> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Float>, &protocol conformance descriptor for ColumnSlice<A>);
            v100 = v96;
            v101 = v99;
            v272 = _swiftEmptyArrayStorage;
            while (1)
            {
              v102 = v101;
              dispatch thunk of Collection.endIndex.getter(v100, v101);
              v103 = v245;
              if (*v245 == v255[0])
              {
                break;
              }

              v104 = v262;
              v105 = dispatch thunk of Collection.subscript.read(v255, v245, v262, v102);
              LODWORD(v267) = *v106;
              LOBYTE(v270) = *(v106 + 4);
              v105(v255, 0);
              dispatch thunk of Collection.formIndex(after:)(v103, v104, v102);
              if (v270)
              {
                BUG();
              }

              if (!swift_isUniquelyReferenced_nonNull_native(v272))
              {
                v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v272 + 2) + 1, 1, v272);
              }

              v107 = *(v272 + 2);
              v100 = v262;
              if (*(v272 + 3) >> 1 <= v107)
              {
                v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v272 + 3) >= 2uLL, v107 + 1, 1, v272);
                v101 = v102;
                v100 = v262;
                v272 = v109;
              }

              else
              {
                v101 = v102;
              }

              v108 = v272;
              *(v272 + 2) = v107 + 1;
              *(v108 + v107 + 8) = LODWORD(v267);
            }

            outlined destroy of Tensor?(v256, &demangling cache variable for type metadata for IndexingIterator<ColumnSlice<Float>>);
            v255[0] = v272;
            v110 = type metadata accessor for ComputeDevice(0);
            v111 = v248;
            __swift_storeEnumTagSinglePayload(v248, 1, 1, v110);
            v112 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
            v113 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
            v114 = v207;
            Tensor.init<A>(_:on:)(v255, v111, v112, v113);
            v115 = v235;
            (*(v269 + 32))(v235, v114, v271);
            v116 = v268;
            v117 = swift_isUniquelyReferenced_nonNull_native(v268);
            v255[0] = v116;
            v118 = v115;
            v119 = v228;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v118, v264, v228, v117);
            v119;
            v88 = v255[0];
            (*(v230 + 8))(v231, v262);
            v120 = v233;
            v121 = v232;
            v122 = v206;
          }

          (*(v122 + 8))(v120, v121);
          v89 = v201 + 1;
          v150 = v257;
          v86 = v259;
        }

        while (v201 + 1 != v234);
        v247;
      }

      else
      {
        v150 = v257;
      }

      v151 = _swiftEmptyArrayStorage;
      v272 = *(v266 + 16);
      v268 = v88;
      if (v272)
      {
        break;
      }

LABEL_56:
      v166 = type metadata accessor for ScalarType(0);
      v167 = v214;
      __swift_storeEnumTagSinglePayload(v214, 1, 1, v166);
      Tensor.init(stacking:alongAxis:scalarType:)(v151, 0, v167);
      DataFrame.subscript.getter(*(v254 + v222 + 48), *(v254 + v222 + 56), &type metadata for String);
      Column.subscript.getter(v258, v246, v252);
      v168 = specialized Collection<>.mostFrequent()();
      v170 = 0x3E656E6F6E3CLL;
      v171 = 0xE600000000000000;
      if ((v169 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v170 = v168;
        v171 = v169;
      }

      *&v172 = v170;
      *(&v172 + 1) = v171;
      v173 = v213;
      v174 = specialized Collection<>.firstIndex(of:)(v172, v213);
      if (v175)
      {
        v266;
        v261;
        v197 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v197, 0, 0);
        v198._countAndFlagsBits = v170;
        v198._object = v171;
        static MLCreateError.validationClassNotFound(className:)(v198);
        v171;
        swift_willThrow(v171, v171);
        (*(v243 + 8))(v251, v242);
        (*(v244 + 8))(v253, v252);
        (*(v269 + 8))(v260, v271);
        v196 = v268;
        return v196;
      }

      v176 = v174;
      v171;
      v177 = *(v173 + 16);
      v178 = type metadata accessor for ComputeDevice(0);
      v179 = v248;
      __swift_storeEnumTagSinglePayload(v248, 1, 1, v178);
      Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v176, v177, v179, 1.0, 0.0);
      v180 = *(v269 + 16);
      v181 = v271;
      v180(v249, v260, v271);
      v182 = v220;
      __swift_storeEnumTagSinglePayload(v220, 1, 1, v181);
      v183 = v217;
      v180(v217, v250, v181);
      v184 = v215;
      outlined init with take of DataFrame?(v182, v183 + *(v215 + 48), &demangling cache variable for type metadata for Tensor?);
      v185 = v216;
      outlined init with take of DataFrame?(v183, v216, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
      v186 = v185 + *(v184 + 48);
      v187 = v249 + *(v218 + 20);
      (*(v269 + 32))(v187, v185, v271);
      outlined init with take of DataFrame?(v186, &v187[*(v184 + 48)], &demangling cache variable for type metadata for Tensor?);
      v188 = v261;
      v189 = v261[2];
      if (v261[3] >> 1 <= v189)
      {
        v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v261[3] >= 2uLL, v189 + 1, 1, v261);
      }

      v86 = v259;
      v190 = v268;
      v188[2] = v189 + 1;
      v191 = *(v219 + 80);
      v261 = v188;
      outlined init with take of WeightedDataSample(v249, v188 + ((v191 + 32) & ~v191) + *(v219 + 72) * v189);
      v192 = *(v269 + 8);
      v193 = v271;
      v192(v250, v271);
      (*(v243 + 8))(v251, v242);
      (*(v244 + 8))(v253, v252);
      v192(v260, v193);
      v190;
      v84 = v212;
      v80 = v223;
      if (v212 == v221)
      {
        goto LABEL_62;
      }
    }

    v266;
    v152 = v224;
    v270 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (*(v88 + 16))
      {
        v153 = *v152;
        v154 = *(v152 - 1);
        *v152;
        v155 = v154;
        v150 = v257;
        v156 = specialized __RawDictionaryStorage.find<A>(_:)(v155, v153);
        v158 = 1;
        if (v157)
        {
          (*(v269 + 16))(v150, *(v268 + 56) + *(v269 + 72) * v156, v271);
          v158 = 0;
        }

        v159 = v271;
        __swift_storeEnumTagSinglePayload(v150, v158, 1, v271);
        v153;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v150, 1, v159);
        v88 = v268;
        if (EnumTagSinglePayload != 1)
        {
          v161 = *(v269 + 32);
          v162 = v271;
          v161(v241, v150, v271);
          v267 = *&v161;
          v161(v240, v241, v162);
          if (swift_isUniquelyReferenced_nonNull_native(v270))
          {
            v163 = v270;
          }

          else
          {
            v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v270[2] + 1, 1, v270);
          }

          v164 = v163[2];
          v88 = v268;
          if (v163[3] >> 1 <= v164)
          {
            v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v163[3] >= 2uLL, v164 + 1, 1, v163);
          }

          v163[2] = v164 + 1;
          v165 = *(v269 + 80);
          v270 = v163;
          (*&v267)(v163 + ((v165 + 32) & ~v165) + *(v269 + 72) * v164, v240, v271);
          v150 = v257;
          goto LABEL_53;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v150, 1, 1, v271);
      }

      outlined destroy of Tensor?(v150, &demangling cache variable for type metadata for Tensor?);
LABEL_53:
      v152 += 2;
      v272 = (v272 - 1);
      if (!v272)
      {
        v266;
        v151 = v270;
        goto LABEL_56;
      }
    }
  }

LABEL_62:
  v266;
  v194 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v195 = v261;
  specialized Sequence<>.makeDataset(configuration:)(*(v194 + 20) + v254, v261);
  v196 = v195;
  return v196;
}

uint64_t WeightedDataSample.init(features:labels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v19 = a1;
  v20 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v23 = &v19;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = type metadata accessor for Tensor(0);
  v11 = *(*(v10 - 8) + 32);
  v11(&v19, a2, v10);
  v12 = v11;
  v22 = v11;
  v13 = v4;
  outlined init with take of DataFrame?(v21, &v19 + *(v4 + 48), &demangling cache variable for type metadata for Tensor?);
  v14 = v20;
  v12(v20, v19, v10);
  v15 = v23;
  outlined init with take of DataFrame?(&v19, v23, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v16 = v15 + *(v13 + 48);
  v17 = (v14 + *(type metadata accessor for WeightedDataSample(0) + 20));
  v22(v17, v23, v10);
  return outlined init with take of DataFrame?(v16, v17 + *(v13 + 48), &demangling cache variable for type metadata for Tensor?);
}

uint64_t *closure #2 in MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v133 = a5;
  v137 = v6;
  v151 = a4;
  v152 = a3;
  v143 = a1;
  v148 = v5;
  v153 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v7 = *(*(v153 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v138 = &v127;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v139 = &v127;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v140 = &v127;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v145 = &v127;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v135 = &v127;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v144 = &v127;
  v23 = type metadata accessor for Tensor(0);
  v158 = *(v23 - 1);
  v24 = *(v158 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v149 = &v127;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v146 = &v127;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v132 = &v127;
  v31 = alloca(v24);
  v32 = alloca(v24);
  v155 = &v127;
  v33 = alloca(v24);
  v34 = alloca(v24);
  v154 = &v127;
  v35 = alloca(v24);
  v36 = alloca(v24);
  v130 = &v127;
  v159 = _swiftEmptyArrayStorage;
  v160._object = v23;
  v37 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v23, &protocol witness table for String);
  v38 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
  v134 = a2;
  v136 = v38;
  v39 = *(a2 + v38 + 40);
  v40 = *(v39 + 16);
  v147 = 1;
  if (v40)
  {
    v131 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v39;
    v150 = v39;
    v41 = (v39 + 40);
    do
    {
      v141 = v40;
      v42 = *(v41 - 1);
      v43 = *v41;
      *v41;
      v160._countAndFlagsBits = v42;
      v161 = v43;
      v44 = v43;
      v45 = v131;
      DataFrame.Row.subscript.getter(v42, v44, v131);
      if (!v156)
      {
        v150;
        v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v99 = swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
        v102._countAndFlagsBits = v160._countAndFlagsBits;
        v103 = v161;
        v102._object = v161;
        static MLCreateError.featureNotFound(feature:)(v102);
        v103;
        swift_willThrow(v103, v102._object);
        v104 = v37;
        goto LABEL_41;
      }

      v142 = v41;
      v46 = type metadata accessor for ComputeDevice(0);
      v47 = v45;
      v48 = v144;
      __swift_storeEnumTagSinglePayload(v144, 1, 1, v46);
      v49 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v50 = v130;
      Tensor.init<A>(_:on:)(&v156, v48, v47, v49);
      v129 = *(v158 + 32);
      v129(v154, v50, v160._object);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v37);
      v156 = v37;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v160._countAndFlagsBits, v161);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v37[2], v54);
      v56 = v37[2] + v54;
      if (v55)
      {
        BUG();
      }

      v57 = v52;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Tensor>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
      {
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v160._countAndFlagsBits, v161);
        LOBYTE(v60) = v60 & 1;
        v61 = v154;
        v62 = v142;
        if ((v57 & 1) != v60)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v154, v60, v58, v59);
          BUG();
        }

        v63 = v57;
        v64 = v141;
        countAndFlagsBits = v160._countAndFlagsBits;
      }

      else
      {
        v61 = v154;
        v64 = v141;
        v62 = v142;
        countAndFlagsBits = v160._countAndFlagsBits;
        v63 = v57;
      }

      v37 = v156;
      if (v63)
      {
        (*(v158 + 40))(v156[7] + v53 * *(v158 + 72), v61, v160._object);
        v161;
      }

      else
      {
        v156[(v53 >> 6) + 8] |= 1 << v53;
        v66 = v37[6];
        v67 = 16 * v53;
        *(v66 + v67) = countAndFlagsBits;
        *(v66 + v67 + 8) = v161;
        v129((v37[7] + v53 * *(v158 + 72)), v61, v160._object);
        v68 = v37[2];
        v55 = __OFADD__(1, v68);
        v69 = v68 + 1;
        if (v55)
        {
          BUG();
        }

        v37[2] = v69;
      }

      v41 = v62 + 2;
      v40 = v64 - 1;
    }

    while (v40);
    v161 = v37;
    v150;
  }

  else
  {
    v161 = v37;
  }

  v70 = *(v152 + 16);
  v71 = v151;
  if (v70 != v161[2])
  {
    v156 = 0;
    v157 = 0xE000000000000000;
    v88 = v161;
    _StringGuts.grow(_:)(56);
    v89._object = "smatch: expected " + 0x8000000000000000;
    v89._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v89);
    v128 = v70;
    v90 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v92 = v91;
    v89._countAndFlagsBits = v90;
    v89._object = v91;
    String.append(_:)(v89);
    v92;
    v89._countAndFlagsBits = 0x756F662074756220;
    v89._object = 0xEB0000000020646ELL;
    String.append(_:)(v89);
    v128 = v88[2];
    v93 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v95 = v94;
    v89._countAndFlagsBits = v93;
    v89._object = v94;
    String.append(_:)(v89);
    v95;
    v96 = v156;
    v97 = v157;
    v98 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v99 = swift_allocError(&type metadata for MLCreateError, v98, 0, 0);
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v100._countAndFlagsBits = v96;
    v100._object = v97;
    static MLCreateError.featureFormatNotSupported(feature:message:)(v89, v100);
    v97;
    swift_willThrow(v97, 0xE000000000000000);
    goto LABEL_40;
  }

  if (!v70)
  {
    goto LABEL_34;
  }

  v72 = v152;
  v152;
  v73 = (v72 + 40);
  v159 = _swiftEmptyArrayStorage;
  do
  {
    if (!v161[2])
    {
      v79 = v145;
      __swift_storeEnumTagSinglePayload(v145, 1, 1, v160._object);
LABEL_29:
      outlined destroy of Tensor?(v79, &demangling cache variable for type metadata for Tensor?);
      goto LABEL_30;
    }

    v160._countAndFlagsBits = v70;
    v74 = *v73;
    v75 = *(v73 - 1);
    *v73;
    v76 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v74);
    v78 = 1;
    v79 = v145;
    if (v77)
    {
      (*(v158 + 16))(v145, v161[7] + *(v158 + 72) * v76, v160._object);
      v78 = 0;
    }

    object = v160._object;
    __swift_storeEnumTagSinglePayload(v79, v78, 1, v160._object);
    v74;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, object);
    v71 = v151;
    v70 = v160._countAndFlagsBits;
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_29;
    }

    v82 = *(v158 + 32);
    v83 = v132;
    v84 = v79;
    v85 = v160._object;
    v82(v132, v84, v160._object);
    v154 = v82;
    v82(v146, v83, v85);
    if (!swift_isUniquelyReferenced_nonNull_native(v159))
    {
      v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159[2] + 1, 1, v159);
    }

    v86 = v159[2];
    v71 = v151;
    if (v159[3] >> 1 <= v86)
    {
      v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v159[3] >= 2uLL, v86 + 1, 1, v159);
    }

    v87 = v159;
    v159[2] = v86 + 1;
    (v154)(v87 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v86, v146, v160._object);
    v70 = v160._countAndFlagsBits;
LABEL_30:
    v73 += 2;
    --v70;
  }

  while (v70);
  v152;
LABEL_34:
  v105 = type metadata accessor for ScalarType(0);
  v106 = v135;
  __swift_storeEnumTagSinglePayload(v135, 1, 1, v105);
  Tensor.init(stacking:alongAxis:scalarType:)(v159, 0, v106);
  DataFrame.Row.subscript.getter(*(v134 + v136 + 48), *(v134 + v136 + 56), &type metadata for String);
  v107 = v156;
  if (!v157)
  {
    v107 = 0;
  }

  v108 = 0xE000000000000000;
  if (v157)
  {
    v108 = v157;
  }

  *&v109 = v107;
  *(&v109 + 1) = v108;
  v110 = specialized Collection<>.firstIndex(of:)(v109, v71);
  if (v111)
  {
    v112 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v99 = swift_allocError(&type metadata for MLCreateError, v112, 0, 0);
    v113._countAndFlagsBits = v107;
    v113._object = v108;
    static MLCreateError.validationClassNotFound(className:)(v113);
    v108;
    swift_willThrow(v108, v108);
    (*(v158 + 8))(v155, v160._object);
LABEL_40:
    v104 = v161;
LABEL_41:
    v104;
    result = v133;
    *v133 = v99;
  }

  else
  {
    v115 = v71;
    v116 = v110;
    v108;
    v117 = *(v115 + 16);
    v118 = type metadata accessor for ComputeDevice(0);
    v119 = v144;
    __swift_storeEnumTagSinglePayload(v144, 1, 1, v118);
    Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v116, v117, v119, 1.0, 0.0);
    v120 = *(v158 + 32);
    v121 = v160._object;
    v120(v148, v155, v160._object);
    v160._countAndFlagsBits = v120;
    v122 = v140;
    __swift_storeEnumTagSinglePayload(v140, 1, 1, v121);
    v123 = v139;
    v120(v139, v149, v121);
    outlined init with take of DataFrame?(v122, v123 + *(v153 + 48), &demangling cache variable for type metadata for Tensor?);
    v124 = v138;
    outlined init with take of DataFrame?(v123, v138, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v125 = v124 + *(v153 + 48);
    v126 = v148 + *(type metadata accessor for WeightedDataSample(0) + 20);
    (v160._countAndFlagsBits)(v126, v124, v121);
    outlined init with take of DataFrame?(v125, v126 + *(v153 + 48), &demangling cache variable for type metadata for Tensor?);
    v161;
    result = v137;
    v147 = v137;
  }

  return result;
}

uint64_t MLActivityClassifier.DataBatcher.next()(uint64_t a1, uint64_t a2)
{
  v19 = v2;
  v4 = type metadata accessor for DataFrame.Rows(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(v3 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 48));
  v18[1] = v3;
  DataFrame.rows.getter(0, a2, v10, v11);
  v12 = DataFrame.Rows.count.getter();
  (*(v5 + 8))(v18, v4);
  if (v9 >= v12)
  {
    v15 = 1;
    v14 = v19;
  }

  else
  {
    v13 = timestampSeed()();
    v14 = v19;
    MLActivityClassifier.DataBatcher.generateNextBatch(rowCount:seed:)(1, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for DataFrame(0);
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

void *specialized Sequence._copyToContiguousArray()()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of MLActivityClassifier.ModelParameters(v0, type metadata accessor for MLActivityClassifier.DataBatcher);
  return v1;
}

uint64_t protocol witness for DataSampleProtocol.features.getter in conformance WeightedDataSample()
{
  v2 = v0;
  v3 = type metadata accessor for Tensor(0);
  return (*(*(v3 - 8) + 16))(v2, v1, v3);
}

uint64_t protocol witness for DataSampleProtocol.labels.getter in conformance WeightedDataSample(uint64_t a1)
{
  v13 = a1;
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = v3 + *(v4 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(a1 + 20), v12, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v9 = &v12[*(v4 + 48)];
  v10 = type metadata accessor for Tensor(0);
  (*(*(v10 - 8) + 32))(v3, v12, v10);
  return outlined init with take of DataFrame?(v9, v8, &demangling cache variable for type metadata for Tensor?);
}

uint64_t WeightedDataSample.init<A>(collating:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v64 = a1;
  v47 = v3;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v5 = *(*(v52 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v48 = v46;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v49 = v46;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v60 = v46;
  v13 = *(a3 + 8);
  v57 = type metadata accessor for LazySequence(0, a2, v13);
  v63 = *(v57 - 8);
  v14 = *(v63 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v51 = v46;
  v17 = type metadata accessor for Tensor(255);
  v62 = v17;
  v55 = v13;
  v59 = type metadata accessor for LazyMapSequence(0, a2, v17, v13);
  v18 = *(*(v59 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v50 = *(v17 - 8);
  v21 = *(v50 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v54 = v46;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v53 = v46;
  v58 = a2;
  v65 = Sequence.allSatisfy(_:)(closure #1 in WeightedDataSample.init<A>(collating:), 0, a2, v13);
  v26 = v51;
  Sequence.lazy.getter(a2, v13);
  v27 = v57;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v57);
  LazySequenceProtocol.map<A>(_:)(specialized implicit closure #1 in WeightedDataSample.init<A>(collating:), 0, v27, v62, WitnessTable);
  v63 = *(v63 + 8);
  v28 = v27;
  (v63)(v26, v27);
  v46[1] = v61;
  v29 = v59;
  v30 = swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v59);
  Tensor.init<A>(collating:)(v46, v29, v30);
  Sequence.lazy.getter(v58, v55);
  LazySequenceProtocol.map<A>(_:)(specialized implicit closure #2 in WeightedDataSample.init<A>(collating:), 0, v28, v62, WitnessTable);
  (v63)(v26, v28);
  v61 = v30;
  Tensor.init<A>(collating:)(v46, v59, v30);
  if (v65)
  {
    Sequence.lazy.getter(v58, v55);
    v31 = v57;
    LazySequenceProtocol.map<A>(_:)(closure #2 in WeightedDataSample.init<A>(collating:), 0, v57, v62, WitnessTable);
    (v63)(v26, v31);
    v32 = v60;
    Tensor.init<A>(collating:)(v46, v59, v61);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = v60;
  }

  (*(*(v58 - 8) + 8))(v64);
  v34 = v32;
  v35 = v62;
  __swift_storeEnumTagSinglePayload(v34, v33, 1, v62);
  v36 = *(v50 + 32);
  v37 = v49;
  v36(v49, v54, v35);
  v38 = v36;
  v64 = v36;
  v39 = v52;
  outlined init with take of DataFrame?(v60, v37 + *(v52 + 48), &demangling cache variable for type metadata for Tensor?);
  v40 = v47;
  v38(v47, v53, v35);
  v41 = v37;
  v42 = v48;
  outlined init with take of DataFrame?(v41, v48, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v43 = *(v39 + 48) + v42;
  v44 = v40 + *(type metadata accessor for WeightedDataSample(0) + 20);
  v64(v44, v42, v35);
  return outlined init with take of DataFrame?(v43, v44 + *(v52 + 48), &demangling cache variable for type metadata for Tensor?);
}

uint64_t closure #1 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for WeightedDataSample(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + *(v8 + 20), v11, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  outlined init with take of DataFrame?(&v11[*(v1 + 48)], v11, &demangling cache variable for type metadata for Tensor?);
  v9 = type metadata accessor for Tensor(0);
  (*(*(v9 - 8) + 8))(v11, v9);
  LOBYTE(v9) = __swift_getEnumTagSinglePayload(v11, 1, v9) != 1;
  outlined destroy of Tensor?(v11, &demangling cache variable for type metadata for Tensor?);
  return v9;
}

uint64_t specialized implicit closure #1 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Tensor(0);
  return (*(*(v3 - 8) + 16))(v2, a1, v3);
}

uint64_t specialized implicit closure #2 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v11[0] = v1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for WeightedDataSample(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + *(v7 + 20), v11, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v8 = v11 + *(v3 + 48);
  v9 = type metadata accessor for Tensor(0);
  (*(*(v9 - 8) + 32))(v2, v11, v9);
  return outlined destroy of Tensor?(v8, &demangling cache variable for type metadata for Tensor?);
}

uint64_t closure #2 in WeightedDataSample.init<A>(collating:)(uint64_t a1)
{
  v13[0] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for WeightedDataSample(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + *(v9 + 20), v13, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  outlined init with take of DataFrame?(v13 + *(v2 + 48), v13, &demangling cache variable for type metadata for Tensor?);
  v10 = type metadata accessor for Tensor(0);
  v11 = *(v10 - 8);
  (*(v11 + 8))(v13, v10);
  if (__swift_getEnumTagSinglePayload(v13, 1, v10) == 1)
  {
    BUG();
  }

  return (*(v11 + 32))(v13[0], v13, v10);
}

uint64_t static MLCreateError.featureCountMismatch(expected:actual:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _StringGuts.grow(_:)(46);
  0xE000000000000000, a2;
  *&v11 = 0xD000000000000021;
  *(&v11 + 1) = "were found in the input data" + 0x8000000000000000;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v4._object;
  v6 = v4;
  String.append(_:)(v4);
  object, v6._object;
  v6._countAndFlagsBits = 0x6C6175746361202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  v9 = v7;
  String.append(_:)(v7);
  result = v8, v9._object;
  *v3 = v11;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  return result;
}

uint64_t closure #2 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v40 = type metadata accessor for Tensor(0);
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v37 = &v31;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v31;
  v12 = *a2;
  v13 = *(*a2 + 16);
  if (v13)
  {
    v35 = v3;
    v14 = *a1;
    v42 = _swiftEmptyArrayStorage;
    v39 = v12;
    v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    if (v14 < 0)
    {
      BUG();
    }

    v15 = v14;
    v32 = v13;
    v36 = v5;
    v16 = v42;
    v17 = 0;
    v18 = v40;
    v19 = v38;
    v33 = v14;
    do
    {
      v20 = *(v39 + 8 * v17 + 32);
      if (v15 >= *(v20 + 16))
      {
        BUG();
      }

      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v31 = *(v19 + 72);
      (*(v19 + 16))(v37, v21 + v20 + v15 * v31, v18);
      v42 = v16;
      v22 = v18;
      v23 = v16[2];
      v24 = v16[3];
      v25 = v23 + 1;
      if (v24 >> 1 <= v23)
      {
        v41 = v23 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 >= 2, v25, 1);
        v25 = v41;
        v22 = v40;
        v16 = v42;
      }

      ++v17;
      v16[2] = v25;
      v26 = v16 + v21 + v31 * v23;
      v18 = v22;
      v27 = v38;
      (*(v38 + 32))(v26, v37);
      v19 = v27;
      v15 = v33;
    }

    while (v32 != v17);
    v39;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v28 = type metadata accessor for ScalarType(0);
  v29 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v28);
  return Tensor.init(stacking:alongAxis:scalarType:)(v16, 0, v29);
}

uint64_t closure #3 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v11 = v3;
    a2;
    v4;
    v6 = specialized Sequence.compactMap<A>(_:)(v4, a2);
    v4;
    v7 = v6[2];
    if (v7 == *(a3 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 40)))
    {
      result = v11;
      *v11 = v6;
      return result;
    }

    v6;
  }

  v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
  *v10 = 0xD00000000000002CLL;
  *(v10 + 8) = "found in the input data" + 0x8000000000000000;
  *(v10 + 16) = 0;
  *(v10 + 32) = 0;
  *(v10 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v9);
}

uint64_t closure #5 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v21 = &v19;
  v8 = *a1;
  if (*a1 && (v22 = v3, v9 = v4, v10 = *(v8 + 16), v10 == *(a2 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 40))))
  {
    v20 = v8;
    v11 = type metadata accessor for ComputeDevice(0);
    v12 = v21;
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v11);
    v8;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
    Tensor.init<A>(_:on:)(&v20, v12, v13, v14);
    v15 = type metadata accessor for Tensor(0);
    return __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  }

  else
  {
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = 0xD000000000000027;
    *(v18 + 8) = "Unsupported target shape: " + 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v17);
  }
}

uint64_t closure #6 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v31 = &v31;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v32 = &v31;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  if (a1 < 0)
  {
    BUG();
  }

  if (*(a3 + 16) <= a1)
  {
    BUG();
  }

  v34 = &v31;
  v36 = v7;
  v17 = type metadata accessor for Tensor(0);
  if (*(a4 + 16) <= a1)
  {
    BUG();
  }

  v18 = v17;
  v37 = v8;
  v35 = *(v17 - 8);
  v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v20 = *(v35 + 72) * a1;
  v21 = v20 + v19 + a3;
  v22 = v20 + v19 + a4;
  v23 = *(v35 + 16);
  v23(v36, v33, v18);
  v24 = v34;
  v23(v34, v22, v18);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v18);
  v25 = v32;
  v23(v32, v21, v18);
  v26 = v37;
  outlined init with take of DataFrame?(v24, v25 + *(v37 + 48), &demangling cache variable for type metadata for Tensor?);
  v27 = v31;
  outlined init with take of DataFrame?(v25, v31, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v28 = v27 + *(v26 + 48);
  v29 = v36 + *(type metadata accessor for WeightedDataSample(0) + 20);
  (*(v35 + 32))(v29, v27, v18);
  return outlined init with take of DataFrame?(v28, v29 + *(v37 + 48), &demangling cache variable for type metadata for Tensor?);
}

uint64_t specialized Set._isDisjoint<A>(with:)(void *a1, void *a2)
{
  LOBYTE(v2) = 1;
  v20 = a2;
  if (!a2[2])
  {
    return v2;
  }

  v3 = a1[2];
  if (!v3)
  {
    return v2;
  }

  v18 = a1 + 4;
  v21 = a1;
  a1;
  v4 = 0;
  v19 = v3;
  while (!v20[2])
  {
LABEL_12:
    if (++v4 == v3)
    {
      LOBYTE(v2) = 1;
      v14 = v21;
      goto LABEL_15;
    }
  }

  v17 = v4;
  v2 = v18[2 * v4];
  v5 = v18[2 * v4 + 1];
  v6 = v20;
  Hasher.init(_seed:)(v20[5]);
  v5;
  a2 = v2;
  String.hash(into:)(v16, v2);
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v6 + 32));
  v9 = v8 & v7;
  v10 = v6[((v8 & v7) >> 6) + 7];
  if (!_bittest64(&v10, v9))
  {
LABEL_11:
    v5, a2;
    v3 = v19;
    v4 = v17;
    goto LABEL_12;
  }

  v11 = v20[6];
  while (1)
  {
    v12 = *(v11 + 16 * v9);
    a2 = *(v11 + 16 * v9 + 8);
    if (v12 == v2 && a2 == v5)
    {
      break;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)(v12, a2, v2, v5, 0))
    {
      break;
    }

    v9 = v8 & (v9 + 1);
    v13 = v20[(v9 >> 6) + 7];
    if (!_bittest64(&v13, v9))
    {
      goto LABEL_11;
    }
  }

  v21, a2;
  LODWORD(v2) = 0;
  v14 = v5;
LABEL_15:
  v14, a2;
  return v2;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = 0;
  v105 = type metadata accessor for Date(0);
  v93 = *(v105 - 8);
  v2 = *(v93 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v106 = v88;
  v103 = type metadata accessor for DataFrame.Rows(0);
  v91 = *(v103 - 8);
  v5 = *(v91 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v97 = v88;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v96 = v88;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v92 = v88;
  v108 = type metadata accessor for DataFrame(0);
  v12 = *(v108 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v101 = v88;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v95 = v88;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v100 = v88;
  v20 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = v88;
  v102 = v12;
  v25 = *(v12 + 80);
  v115 = _swiftEmptyArrayStorage;
  v99 = (v25 + 32) & ~v25;
  v114 = _swiftEmptyArrayStorage + v99;
  v26 = v88;
  outlined init with copy of MLTrainingSessionParameters(a1, v88, type metadata accessor for MLActivityClassifier.DataBatcher);
  v94 = v20;
  v104 = *(v20 + 48);
  v98 = v25 | 7;
  v109 = 0;
  v112 = v88;
  while (1)
  {
    v29 = *&v24[v104];
    v30 = v92;
    DataFrame.rows.getter(a1, v26, v27, v28);
    v31 = DataFrame.Rows.count.getter();
    v32 = *(v91 + 8);
    v32(v30, v103);
    v107 = v29;
    if (v29 >= v31)
    {
      break;
    }

    v110 = *&v32;
    v33 = v106;
    Date.init()(v30);
    v113 = Date.timeIntervalSince1970.getter(v30);
    v34 = *(v93 + 8);
    v34(v33, v105);
    v35 = v113 * 1000.0;
    if (COERCE__INT64(fabs(v113 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      BUG();
    }

    if (v35 <= -9.223372036854778e18)
    {
      BUG();
    }

    if (v35 >= 9.223372036854776e18)
    {
      BUG();
    }

    v36 = v112;
    v37 = *&v112[*(v94 + 32)];
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v39 = swift_dynamicCastMetatype(v37, v38);
    v111 = v1;
    if (v39)
    {
      v42 = v107 + 1;
      v113 = *&v34;
      v43 = v96;
      DataFrame.rows.getter(v37, v38, v40, v41);
      v44 = DataFrame.Rows.count.getter();
      (*&v110)(v43, v103);
      if (v44 < v42)
      {
        v42 = v44;
      }

      *(v36 + v104) = v42;
      v45 = v106;
      Date.init()(v43);
      v110 = Date.timeIntervalSince1970.getter(v43);
      (*&v113)(v45, v105);
      v46 = v110 * 1000.0;
      if (COERCE__INT64(fabs(v110 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v46 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v46 >= 9.223372036854776e18)
      {
        BUG();
      }

      v24 = v36;
      v47 = v101;
      v48 = v109;
      _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(v107, 1, v46);
    }

    else
    {
      v49 = v34;
      v50 = v37;
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      if (!swift_dynamicCastMetatype(v37, v51))
      {
        v89 = 0;
        v90 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);
        v90;
        v89 = 0xD000000000000016;
        v90 = "ityClassifier+Batching.swift" + 0x8000000000000000;
        v86._countAndFlagsBits = _typeName(_:qualified:)(v37, 0);
        object = v86._object;
        String.append(_:)(v86);
        object;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v89, v90, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 348, 0);
        BUG();
      }

      v54 = v107 + 1;
      v55 = v97;
      v56 = v112;
      DataFrame.rows.getter(v50, v51, v52, v53);
      v57 = DataFrame.Rows.count.getter();
      v58 = v55;
      v24 = v56;
      (*&v110)(v58, v103);
      if (v57 < v54)
      {
        v54 = v57;
      }

      *(v56 + v104) = v54;
      v59 = v106;
      Date.init()(v58);
      v113 = Date.timeIntervalSince1970.getter(v58);
      v49(v59, v105);
      v60 = v113 * 1000.0;
      if (COERCE__INT64(fabs(v113 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v60 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v60 >= 9.223372036854776e18)
      {
        BUG();
      }

      v47 = v101;
      v48 = v109;
      _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(v107, 1, v60);
    }

    v61 = v48;
    if (v48)
    {
      v1 = v111;
      v61;
      break;
    }

    v109 = 0;
    v62 = v111;
    v63 = *(v102 + 32);
    v64 = v95;
    v65 = v47;
    v66 = v108;
    v63(v95, v65, v108);
    v63(v100, v64, v66);
    if (v62)
    {
      v67 = v115;
      v68 = v114;
      goto LABEL_38;
    }

    if ((v115[3] >> 1) + 0x4000000000000000 < 0)
    {
      BUG();
    }

    v69 = v115[3] & 0xFFFFFFFFFFFFFFFELL;
    if (v69 < 2)
    {
      v69 = 1;
    }

    v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<DataFrame>);
    v71 = *(v102 + 72);
    v72 = v99;
    v67 = swift_allocObject(v70, v99 + v69 * v71, v98);
    v73 = _swift_stdlib_malloc_size(v67);
    if (!v71)
    {
      BUG();
    }

    v74 = v73 - v72;
    v75 = v72;
    if (v74 == 0x8000000000000000 && v71 == -1)
    {
      BUG();
    }

    v76 = v74 / v71;
    v67[2] = v69;
    v67[3] = 2 * (v74 / v71);
    v114 = v67 + v75;
    v77 = v115;
    v78 = v115[3] >> 1;
    v79 = v78 * v71;
    if (v115[2])
    {
      v80 = v115 + v75;
      if (v67 < v115 || v114 >= &v80[v79])
      {
        swift_arrayInitWithTakeFrontToBack(v114, v80, v115[3] >> 1, v108);
LABEL_35:
        v77 = v115;
      }

      else if (v67 != v115)
      {
        swift_arrayInitWithTakeBackToFront(v114, v80, v115[3] >> 1, v108);
        goto LABEL_35;
      }

      v77[2] = 0;
    }

    v68 = &v114[v79];
    v62 = (v76 & 0x7FFFFFFFFFFFFFFFLL) - v78;

    v24 = v112;
LABEL_38:
    v81 = __OFSUB__(v62, 1);
    v1 = v62 - 1;
    if (v81)
    {
      BUG();
    }

    a1 = v68;
    v26 = v100;
    v63(v68, v100, v108);
    v114 = &v68[*(v102 + 72)];
    v115 = v67;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v112, type metadata accessor for MLActivityClassifier.DataBatcher);
  result = v115;
  v83 = v115[3];
  if (v83 >= 2)
  {
    v84 = v83 >> 1;
    v81 = __OFSUB__(v84, v1);
    v85 = v84 - v1;
    if (v81)
    {
      BUG();
    }

    v115[2] = v85;
  }

  return result;
}

uint64_t outlined assign with take of Tensor?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t outlined consume of ClassificationMetricsContainer?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1;
    a2;
    return a3, a2;
  }

  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = 0;
  a1;

  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  UniquedSequence.Iterator.init(base:projection:)(&v34, a2, a3, v4, &type metadata for String, v5, &protocol witness table for String);
  v6 = v30;
  v39 = v31;
  v44 = v32;
  v41 = v33;
  v38 = *(v29 + 16);
  v45 = _swiftEmptyArrayStorage;
  v47 = &_swiftEmptyArrayStorage[4];
  v43 = v29;
  v7 = v29 + 40;
  v46 = 0;
  v8 = v30;
  v40 = v29 + 40;
LABEL_2:
  v9 = (v7 + 16 * v6);
  while (v38 != v8)
  {
    if (v6 < 0)
    {
      BUG();
    }

    if (v8 >= *(v43 + 16))
    {
      BUG();
    }

    v42 = v8;
    v10 = *(v9 - 1);
    v11 = *v9;
    v29 = v10;
    v30 = v11;
    v11;
    v39(&v29);
    v12 = specialized Set._Variant.insert(_:)(&v34, v36, v37);
    v35;
    if (v12)
    {
      v13 = v46;
      if (!v46)
      {
        v14 = v45;
        if ((v45[3] >> 1) + 0x4000000000000000 < 0)
        {
          BUG();
        }

        v15 = v45[3] & 0xFFFFFFFFFFFFFFFELL;
        if (v15 < 2)
        {
          v15 = 1;
        }

        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        v17 = swift_allocObject(v16, 16 * v15 + 32, 7);
        v18 = (_swift_stdlib_malloc_size(v17) - 32) / 16;
        v17[2] = v15;
        v17[3] = 2 * v18;
        v19 = v14[3] >> 1;
        v20 = 2 * v19;
        if (v14[2])
        {
          if (v17 + 4 >= &v14[v20 + 4] || v17 != v14)
          {
            v47 = v17;
            v46 = v18;
            memmove(v17 + 4, v14 + 4, v20 * 8);
            v17 = v47;
            v18 = v46;
          }

          v14[2] = 0;
        }

        v47 = &v17[v20 + 4];
        v21 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v13 = v21;
        v45 = v17;
      }

      v22 = __OFSUB__(v13, 1);
      v23 = v13 - 1;
      if (v22)
      {
        BUG();
      }

      v46 = v23;
      v8 = v42 + 1;
      v24 = v47;
      *v47 = v10;
      v24[1] = v11;
      v47 = v24 + 2;
      v6 = v8;
      v7 = v40;
      goto LABEL_2;
    }

    v11;
    v9 += 2;
    v8 = v42 + 1;
  }

  v43;
  v41;
  result = v45;
  v26 = v45[3];
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v22 = __OFSUB__(v27, v46);
    v28 = v27 - v46;
    if (v22)
    {
      BUG();
    }

    v45[2] = v28;
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(double a1, double a2, double a3)
{
  *&v27 = a2;
  *&v28 = a3;
  v3 = specialized StrideTo.underestimatedCount.getter();
  v4 = v3;
  if (v3 <= 0)
  {
    if (v3 < 0)
    {
      BUG();
    }

    v9 = _swiftEmptyArrayStorage[3] >> 1;
    *(&v28 + 1) = _swiftEmptyArrayStorage;
    v8 = &_swiftEmptyArrayStorage[4];
    v12 = a3;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v6 = swift_allocObject(v5, 8 * v4 + 32, 7);
    v7 = (_swift_stdlib_malloc_size(v6) - 32) / 8;
    v6[2] = v4;
    v6[3] = 2 * v7;
    *(&v28 + 1) = v6;
    v8 = v6 + 4;
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - v4;
    v10 = 0;
    v11 = a1;
    v12 = *&v28;
    do
    {
      v13 = *&v27 >= v11;
      if (v12 > 0.0)
      {
        v13 = v11 >= *&v27;
      }

      if (v13)
      {
        BUG();
      }

      a1 = ++v10;
      *(&v27 + 1) = v11;
      fma(v26, v27, v28);
      v12 = *&v28;
      *v8++ = *(&v27 + 1);
      v11 = v10;
    }

    while (v4 != v10);
  }

  while (1)
  {
    v21 = *&v27 >= a1;
    if (v12 > 0.0)
    {
      v21 = a1 >= *&v27;
    }

    if (v21)
    {
      break;
    }

    v14 = __OFADD__(1, v4++);
    if (v14)
    {
      BUG();
    }

    *(&v27 + 1) = a1;
    a1 = v4;
    fma(v26, v27, v28);
    if (!v9)
    {
      *&v26 = v4;
      if ((*(*(&v28 + 1) + 24) >> 1) + 0x4000000000000000 < 0)
      {
        BUG();
      }

      *(&v26 + 1) = v4;
      v15 = *(*(&v28 + 1) + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v15 < 2)
      {
        v15 = 1;
      }

      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
      v17 = swift_allocObject(v16, 8 * v15 + 32, 7);
      v18 = (_swift_stdlib_malloc_size(v17) - 32) / 8;
      v17[2] = v15;
      v17[3] = 2 * v18;
      v19 = *(*(&v28 + 1) + 24) >> 1;
      if (*(*(&v28 + 1) + 16))
      {
        v20 = v17 + 4;
        if (v17 != *(&v28 + 1) || v20 >= *(&v28 + 1) + 8 * v19 + 32)
        {
          memmove(v20, (*(&v28 + 1) + 32), 8 * v19);
        }

        *(*(&v28 + 1) + 16) = 0;
      }

      v8 = &v17[v19 + 4];
      v9 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v19;

      *(&v28 + 1) = v17;
    }

    v14 = __OFSUB__(v9--, 1);
    v12 = *&v28;
    if (v14)
    {
      BUG();
    }

    *v8++ = *(&v27 + 1);
  }

  result = *(&v28 + 1);
  v23 = *(*(&v28 + 1) + 24);
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v14 = __OFSUB__(v24, v9);
    v25 = v24 - v9;
    if (v14)
    {
      BUG();
    }

    *(*(&v28 + 1) + 16) = v25;
  }

  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v2;
  if (v3 < v2)
  {
    v4 = *(a2 + 16);
  }

  if (!v4)
  {
    v8 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[3] >> 1;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v5 = a2;
  v32 = *(a2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
  v7 = v4;
  v8 = swift_allocObject(v6, 32 * v4 + 32, 7);
  v9 = a1;
  v10 = (_swift_stdlib_malloc_size(v8) - 32) / 32;
  v8[2] = v7;
  v8[3] = 2 * v10;
  v11 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 40);
  v13 = *(v5 + 32);
  v14 = *(v5 + 40);
  v8[4] = *(v9 + 32);
  v8[5] = v12;
  v8[6] = v13;
  v33 = v14;
  v8[7] = v14;
  v27 = v7;
  if (v7 != 1)
  {
    v31 = v8;
    v29 = v11;
    v28 = v2;
    v17 = 2;
    for (i = 0; ; i += 4)
    {
      v19 = *(v9 + i * 4 + 56);
      v20 = *(v5 + i * 4 + 48);
      v21 = v5;
      v16 = *(v5 + i * 4 + 56);
      v31[i + 8] = *(v9 + i * 4 + 48);
      v31[i + 9] = v19;
      v31[i + 10] = v20;
      v31[i + 11] = v16;
      if (v27 == v17)
      {
        break;
      }

      v19;
      v16;
      v9 = a1;
      ++v17;
      v5 = v21;
    }

    v12;
    v33;
    v15 = v29 - v17;
    LOBYTE(v12) = v19;
    v2 = v28;
    v3 = v32;
    v8 = v31;
    if (v28 > v32)
    {
      goto LABEL_6;
    }

LABEL_14:
    v12;
    v16;
    goto LABEL_15;
  }

  v15 = v11 - 1;
  v3 = v32;
  LOBYTE(v16) = v14;
  if (v2 == 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v12;
  v16;
LABEL_8:
  if (v3 >= v2)
  {
    BUG();
  }

LABEL_15:
  v22 = v8[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v24 = __OFSUB__(v23, v15);
    v25 = v23 - v15;
    if (v24)
    {
      BUG();
    }

    v8[2] = v25;
  }

  return v8;
}

uint64_t specialized closure #1 in Sequence<>.uniqued()(uint64_t *a1)
{
  v2 = v1;
  result = specialized closure #1 in Sequence<>.uniqued()(*a1, a1[1]);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t outlined destroy of Tensor?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MLDecisionTreeClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLDecisionTreeClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeClassifier;
  if (!type metadata singleton initialization cache for MLDecisionTreeClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeClassifier);
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v15 = v3;
  v16 = v2;
  v17 = type metadata accessor for DataFrame(0);
  v18 = *(v17 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  outlined copy of Result<_DataTable, Error>(v13, v10);
  DataFrame.init(_:)(&v13);
  v11 = v15;
  MLDecisionTreeClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLDecisionTreeClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLDecisionTreeClassifier(0);
  v9 = *(v8 + 28);
  v28 = v2;
  v10._rawValue = *(v2 + v9);
  v27 = a1;
  DataFrame.validateContainsColumns(_:context:)(v10, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v11)
  {
    goto LABEL_6;
  }

  v29 = &v25;
  v30 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v12, v26);
  inited[2] = 1;
  inited[3] = 2;
  v14 = *(v8 + 24);
  v15 = *(v28 + v14 + 8);
  inited[4] = *(v28 + v14);
  inited[5] = v15;
  v15;
  v16 = v27;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  if (v11)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v4 = v30;
LABEL_6:
    *v4 = v11;
    v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v19 = 2;
    v20 = v4;
    v21 = v18;
    return swift_storeEnumTagMultiPayload(v20, v21, v19);
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v17 = v29;
  AnyTreeClassifierModel.computeMetrics(on:)(v16);
  v23 = v17;
  v24 = v30;
  outlined init with take of MLClassifierMetrics(v23, v30, type metadata accessor for AnyClassificationMetrics);
  v20 = v24;
  v21 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v19 = 0;
  return swift_storeEnumTagMultiPayload(v20, v21, v19);
}

{
  v11 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v7);
  DataFrame.init(_:)(&v9);
  MLDecisionTreeClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLDecisionTreeClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v44 = v3;
  v49 = a2;
  v50 = a1;
  v4 = *(*(type metadata accessor for AnyTreeClassifierModel(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v34;
  v47 = type metadata accessor for Model(0);
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v43 = &v34;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v42, v49, sizeof(v42));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0xD000000000000016, (" be Float or Double" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v45 = 0;
    v51 = &v34;
    v48 = v7;
    v49 = v11;
    v50 = v12;
    v17 = v46;
    outlined init with copy of MLTrainingSessionParameters(v44, v46, type metadata accessor for AnyTreeClassifierModel);
    v18 = *&v42[8];
    if (*&v42[8])
    {
      v19 = *v42;
      v20 = *&v42[16];
      v21 = *&v42[24];
      v22 = *&v42[32];
      v23 = *&v42[48];
      v24 = *&v42[56];
      v25 = *&v42[64];
    }

    else
    {
      v26 = NSFullUserName();
      v27 = v26;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v27);
      v18 = v28;

      v21 = "RandomForestRegressor" + 0x8000000000000000;
      v36[0] = v19;
      v36[1] = v18;
      v36[2] = 0xD000000000000033;
      v36[3] = "RandomForestRegressor" + 0x8000000000000000;
      v37 = 0;
      v38 = 49;
      v39 = 0xE100000000000000;
      v40 = 0;
      *v41 = v19;
      *&v41[8] = v18;
      *&v41[16] = 0xD000000000000033;
      *&v41[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v41[32] = 0;
      *&v41[48] = 49;
      *&v41[56] = 0xE100000000000000;
      *&v41[64] = 0;
      outlined retain of MLModelMetadata(v36);
      outlined release of MLModelMetadata(v41, v17);
      v24 = 0xE100000000000000;
      v23 = 49;
      v22 = 0;
      v20 = 0xD000000000000033;
      v25 = 0;
    }

    *v41 = v19;
    *&v41[8] = v18;
    *&v41[16] = v20;
    *&v41[24] = v21;
    *&v41[32] = v22;
    *&v41[48] = v23;
    *&v41[56] = v24;
    *&v41[64] = v25;
    qmemcpy(v35, v41, sizeof(v35));
    outlined retain of MLModelMetadata?(v42);
    v29 = v43;
    v30 = v46;
    v31 = v45;
    specialized CoreMLExportable.export(metadata:)(v35);
    v32 = v49;
    outlined release of MLModelMetadata(v41, v42);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for AnyTreeClassifierModel);
    if (v31)
    {
      return (*(v50 + 8))(v51, v32);
    }

    else
    {
      Model.write(to:)(v51);
      v33 = v50;
      (*(v48 + 8))(v29, v47);
      return (*(v33 + 8))(v51, v32);
    }
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v18 = v3;
  v22 = a3;
  v20 = a2;
  v19 = a1;
  v23 = type metadata accessor for URL.DirectoryHint(0);
  v21 = *(v23 - 8);
  v4 = *(v21 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v24 = v17;
  v10 = type metadata accessor for URL(0);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v17, v22, sizeof(v17));
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v10);
  (*(v21 + 104))(v17, enum case for URL.DirectoryHint.inferFromPath(_:), v23);
  v14 = v20;
  v20;
  v15 = URL.init(filePath:directoryHint:relativeTo:)(v19, v14, v17, v24);
  MLDecisionTreeClassifier.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLDecisionTreeClassifier.debugDescription.getter()
{
  v1 = v0;
  v27._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v27._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLDecisionTreeClassifier(0);
  v6 = v0 + v5[8];
  v27._countAndFlagsBits = MLDecisionTreeClassifier.ModelParameters.description.getter();
  v8 = v7;
  v9 = v1 + v5[9];
  v24._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v24._object = v10;
  v11 = v5[10];
  v12 = v8;
  outlined init with copy of MLTrainingSessionParameters(v1 + v11, &v22, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v8) = swift_getEnumCaseMultiPayload(&v22, v27._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v22, type metadata accessor for MLClassifierMetrics.Contents);
  v27._object = MLClassifierMetrics.description.getter();
  v14 = v13;
  v25 = 0xD000000000000023;
  v26 = "DecisionTreeClassifier" + 0x8000000000000000;
  v15._countAndFlagsBits = v27._countAndFlagsBits;
  v27._countAndFlagsBits = v12;
  v15._object = v12;
  String.append(_:)(v15);
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  v23._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v24._object;
  String.append(_:)(v24);
  v17 = v23._object;
  String.append(_:)(v23);
  v17;
  if (v8 > 1)
  {
    v20 = object;
  }

  else
  {
    v23._countAndFlagsBits = 0xD000000000000020;
    v23._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v18._countAndFlagsBits = v27._object;
    v18._object = v14;
    String.append(_:)(v18);
    v19 = v23._object;
    String.append(_:)(v23);
    object;
    v20 = v14;
    v14 = v19;
  }

  v20;
  v14;
  v27._countAndFlagsBits;
  return v25;
}

NSAttributedString MLDecisionTreeClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLDecisionTreeClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLDecisionTreeClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLDecisionTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLDecisionTreeClassifier.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLDecisionTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLDecisionTreeClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLDecisionTreeClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeClassifier(0);
  return outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLDecisionTreeClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLDecisionTreeClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLDecisionTreeClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLDecisionTreeClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)()
{
  v1 = *(v0 + 80);
  v19 = *(v0 + 72);
  v21 = *(v0 + 64);
  v16 = *(v0 + 48);
  v15 = *(v0 + 32);
  v2 = *(v0 + 16);
  v18 = v2;
  v17 = type metadata accessor for MLDecisionTreeClassifier(0);
  *(v0 + 88) = v17;
  v3 = v17[9];
  *(v0 + 120) = v3;
  v4 = v2 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v5 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v6 = *(v5 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v1);
  v7 = *(v5 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v19 + 8))(v1, v21);
  *(v18 + v3) = 0;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v4, v20, 1);
  v8 = v17[10];
  *(v0 + 124) = v8;
  v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v10 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
  *v11 = 0xD0000000000000C0;
  *(v11 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v11 + 16) = 0;
  *(v11 + 32) = 0;
  *(v11 + 48) = 0;
  *(v18 + v8) = v10;
  swift_storeEnumTagMultiPayload(v18 + v8, v20, 2);
  *(v18 + v17[7]) = v16;
  *(v18 + v17[6]) = v15;
  v12 = swift_task_alloc(288);
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  v13 = *(v0 + 24);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v4 + *(v1 + 20)) = *(v0 + 112);
  outlined init with take of MLClassifierMetrics(v5, v4, type metadata accessor for AnyTreeClassifierModel);
  v6 = *(v1 + 32);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  *(v4 + v6 + 48) = v3[3];
  *(v4 + v6 + 32) = v9;
  *(v4 + v6 + 16) = v8;
  *(v4 + v6) = v7;
  v2;
  return (*(v0 + 8))();
}

{
  v8 = *(v0 + 80);
  v9 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v2 + *(v0 + 124);
  v5 = v2 + *(v0 + 120);
  outlined destroy of MLDecisionTreeClassifier.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for AnyTreeClassifierModel);
  v1;
  v9;
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v8;
  v6 = *(v0 + 104);
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 96);
  v4 = *v2;
  *(*v2 + 104) = v1;
  v5;
  if (v1)
  {
    v6 = MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 112) = a1;
    v6 = MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void *a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v219 = a4;
  _ = a3;
  v7 = v5;
  v210._countAndFlagsBits = a2;
  quantity = v6;
  v214 = a5;
  v210._object = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v192 = &v168;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v183 = &v168;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v186 = &v168;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v184 = &v168;
  v181 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v18 = *(v181 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v179 = &v168;
  v180 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v208 = &v168;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v177 = &v168;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v193 = &v168;
  v189 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v189 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v194 = &v168;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v200 = &v168;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v187 = &v168;
  v36 = *(*(type metadata accessor for AnyTreeClassifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v206 = &v168;
  v218 = type metadata accessor for DataFrame(0);
  v202 = *(v218 - 8);
  v39 = *(v202 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v191 = &v168;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v195 = &v168;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v190 = &v168;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v203 = &v168;
  v209 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v209 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v216 = &v168;
  v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v204 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v185 = &v168;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v182 = &v168;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v188 = &v168;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v205 = &v168;
  v60 = alloca(v51);
  v61 = alloca(v51);
  v176 = &v168;
  v62 = alloca(v51);
  v63 = alloca(v51);
  v217 = &v168;
  v212 = type metadata accessor for BoostedTreeConfiguration(0);
  v211 = *(v212 - 8);
  v64 = *(v211 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v178 = &v168;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v213 = &v168;
  v197 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v198 = *(v197 - 8);
  v69 = *(v198 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v201 = type metadata accessor for MLDecisionTreeClassifier(0);
  v199 = *(v201 + 9);
  v72 = v7 + v199;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v73 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v74 = *(v73 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v168);
  v75 = *(v73 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v168);
  (*(v198 + 8))(&v168, v197);
  v196 = v7;
  *(v7 + v199) = 0;
  v76 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v197 = v72;
  swift_storeEnumTagMultiPayload(v72, v76, 1);
  v77 = *(v201 + 10);
  v78 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v79 = swift_allocError(&type metadata for MLCreateError, v78, 0, 0);
  *v80 = 0xD0000000000000C0;
  *(v80 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v80 + 16) = 0;
  *(v80 + 32) = 0;
  *(v80 + 48) = 0;
  *(v196 + v77) = v79;
  v198 = v7 + v77;
  v199 = v76;
  swift_storeEnumTagMultiPayload(v7 + v77, v76, 2);
  v81 = v214;
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v214, v170);
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.maximumIterations.setter(1);
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.maximumDepth.setter(*&v170[0]);
  BoostedTreeConfiguration.minimumLossReduction.setter(v171);
  BoostedTreeConfiguration.minimumChildWeight.setter(v172);
  BoostedTreeConfiguration.randomSeed.setter(v173);
  outlined destroy of MLDecisionTreeClassifier.ModelParameters(v170);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81 + 8, &v174, &demangling cache variable for type metadata for Any?);
  if (!v175)
  {
    BUG();
  }

  v82 = v217;
  v83 = v217 + *(v204 + 48);
  outlined init with take of Any(&v174, v170);
  swift_dynamicCast(v216, v170, &type metadata for Any + 8, v209, 7);
  v84 = v82;
  object = v210._object;
  v86 = quantity;
  MLDecisionTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v84, v83, v210._object);
  if (v86)
  {
    _;
    v219;
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
    (*(v202 + 8))(object, v218);
    outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
LABEL_4:
    (*(v211 + 8))(v213, v212);
LABEL_6:
    outlined destroy of MLActivityClassifier.ModelParameters(v197, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v198, type metadata accessor for MLClassifierMetrics);
  }

  quantity = v83;
  outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v87 = v219;
  v88 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v217, v210._countAndFlagsBits, _, v219);
  v216 = 0;
  v89 = v218;
  v209 = v88;
  v87;
  v91 = v176;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v176, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v92 = v91 + *(v204 + 48);
  if (__swift_getEnumTagSinglePayload(v92, 1, v89) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v92, &demangling cache variable for type metadata for DataFrame?);
    v219 = *(v202 + 8);
    v219(v91, v89);
  }

  else
  {
    v105 = v92;
    v106 = v202;
    (*(v202 + 32))(v203, v105, v89);
    v219 = *(v106 + 8);
    v219(v91, v89);
    v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v107, v169);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v210._countAndFlagsBits;
    v109 = _;
    inited[5] = _;
    v109;
    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
    if (v110)
    {
      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      _;
      v209;
      outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
      v111 = v219;
      v219(v210._object, v89);
      v111(v203, v89);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v211 + 8))(v213, v212);
      goto LABEL_6;
    }

    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v120 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
    v121 = swift_allocObject(v120, 48, 7);
    v121[2] = 2;
    v121[3] = 4;
    v121[4] = &type metadata for String;
    v121[5] = &type metadata for Int;
    v122._countAndFlagsBits = v210._countAndFlagsBits;
    v122._object = _;
    DataFrame.validateColumnTypes(_:_:context:)(v122, v121, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
    if (v123)
    {
      _;
      v209;
      v121;
      outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
      v124 = v218;
      v125 = v219;
      v219(v210._object, v218);
      v125(v203, v124);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      goto LABEL_4;
    }

    v216 = 0;
    v219(v203, v218);
    v121;
  }

  v93 = _;
  v94 = v217;
  v95 = v205;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v205, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  DataFrame.subscript.getter(v210._countAndFlagsBits, v93);
  v96 = v95;
  v97 = v218;
  v98 = v219;
  v219(v96, v218);
  v99 = v94;
  v100 = v188;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v99, v188, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v101 = v177;
  outlined init with take of DataFrame?(v100 + *(v204 + 48), v177);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v97);
  v103 = v98;
  if (EnumTagSinglePayload == 1)
  {
    v98(v100, v218);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v101, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v193, 1, 1, v189);
    v104 = _;
  }

  else
  {
    v112 = v193;
    v104 = _;
    v113 = v103;
    DataFrame.subscript.getter(v210._countAndFlagsBits, _);
    v114 = v101;
    v115 = v218;
    v113(v114, v218);
    __swift_storeEnumTagSinglePayload(v112, 0, 1, v189);
    v113(v188, v115);
  }

  v205 = (v205 + *(v204 + 48));
  v116 = v178;
  (*(v211 + 16))(v178, v213, v212);
  v104;
  v117 = v209;
  v209;
  v118 = v216;
  AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(v187, v193, v210._countAndFlagsBits, v104, v117, v116);
  if (v118)
  {
    v104;
    v117;
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
    v219(v210._object, v218);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v211 + 8))(v213, v212);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_6;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for DataFrame?);
  AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(v217, quantity, 0, 0);
  v119 = v218;
  v216 = 0;
  if (!AnalyticsReporter.init()())
  {
    v126 = v217;
    v127 = v182;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v182, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v128 = v127 + *(v204 + 48);
    quantity = DataFrame.shape.getter(v126);
    v219(v127, v119);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_decisionTreeClassifier, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), quantity);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v128, &demangling cache variable for type metadata for DataFrame?);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_decisionTreeClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), *(v206[3] + 16));
  }

  v129 = v201;
  v130 = *(v201 + 6);
  v131 = v196;
  *(v196 + v130) = v210._countAndFlagsBits;
  *(v131 + v130 + 8) = _;
  quantity = v131 + v129[8];
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v214, quantity);
  *(v131 + v129[7]) = v209;
  v132 = v179;
  outlined init with copy of MLTrainingSessionParameters(v208, v179, type metadata accessor for AnyTreeClassifierModel);
  v133 = *(v181 + 80);
  v134 = ~*(v181 + 80) & (v133 + 16);
  v135 = swift_allocObject(&unk_393EB8, v134 + v180, v133 | 7);
  outlined init with take of MLClassifierMetrics(v132, v135 + v134, type metadata accessor for AnyTreeClassifierModel);
  v136 = v216;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v135);
  if (v136)
  {
    v216 = v136;

    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
    v219(v210._object, v218);
    outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v211 + 8))(v213, v212);
    outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for AnyTreeClassifier);
    v209;
    _;
LABEL_25:
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(quantity);
    goto LABEL_6;
  }

  v138 = v137;

  v139 = *(v201 + 5);
  v201 = v138;
  *(v131 + v139) = v138;
  outlined init with copy of MLTrainingSessionParameters(v208, v131, type metadata accessor for AnyTreeClassifierModel);
  AnyTreeClassifierModel.applied(to:eventHandler:)(v217, 0, 0);
  v216 = 0;
  v140 = *v131;
  v141 = v131[1];
  DataFrame.subscript.getter(v140, v141);
  v142 = v194;
  v210._countAndFlagsBits = v140;
  v143 = v140;
  v205 = v141;
  v144 = v217;
  DataFrame.subscript.getter(v143, v141);
  v145 = v183;
  AnyClassificationMetrics.init(_:_:)(v200, v142);
  v146 = v218;
  v147 = v219;
  v219(v190, v218);
  v148 = v145;
  v149 = v184;
  outlined init with take of MLClassifierMetrics(v148, v184, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v149, v199, 0);
  outlined assign with take of MLClassifierMetrics(v149, v197);
  v150 = v144;
  v151 = v185;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150, v185, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v152 = v151 + *(v204 + 48);
  if (__swift_getEnumTagSinglePayload(v152, 1, v146) == 1)
  {
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
    v153 = v218;
    v147(v210._object, v218);
    outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v211 + 8))(v213, v212);
    outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for AnyTreeClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v152, &demangling cache variable for type metadata for DataFrame?);
    return (v147)(v151, v153);
  }

  else
  {
    v154 = v151;
    v155 = v195;
    v156 = v152;
    v157 = v218;
    (*(v202 + 32))(v195, v156, v218);
    v219 = v147;
    v147(v154, v157);
    v158 = v216;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v155, 0, 0);
    if (v158)
    {
      v216 = v158;
      outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
      v159 = v218;
      v160 = v219;
      v219(v210._object, v218);
      v160(v195, v159);
      v161 = v196;
      outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for AnyTreeClassifierModel);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v211 + 8))(v213, v212);
      outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for AnyTreeClassifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v161, type metadata accessor for AnyTreeClassifierModel);
      v209;
      _;

      goto LABEL_25;
    }

    countAndFlagsBits = v210._countAndFlagsBits;
    v163 = v205;
    DataFrame.subscript.getter(v210._countAndFlagsBits, v205);
    v164 = v195;
    DataFrame.subscript.getter(countAndFlagsBits, v163);
    AnyClassificationMetrics.init(_:_:)(v200, v194);
    v165 = v218;
    v166 = v219;
    v219(v191, v218);
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(v214);
    v166(v210._object, v165);
    v166(v164, v165);
    outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v211 + 8))(v213, v212);
    v167 = v186;
    outlined init with take of MLClassifierMetrics(v192, v186, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v167, v199, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for AnyTreeClassifier);
    return outlined assign with take of MLClassifierMetrics(v167, v198);
  }
}

uint64_t closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v5;
  if (v1)
  {
    return (*(v6 + 8))();
  }

  *(v4 + 32) = a1;
  return swift_task_switch(closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  DataFrame.init(_:)(&v11);
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters(a5, &v11);
  MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLDecisionTreeClassifier.ModelParameters(a5);
}

uint64_t MLDecisionTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  v80 = v2;
  v99 = a1;
  v3 = v1;
  v93 = v1;
  v90 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v90 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v89 = v79;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v88 = v79;
  v9 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v81 = v79;
  v92 = type metadata accessor for AnyTreeClassifier(0);
  v12 = *(*(v92 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v83 = v79;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v97 = v79;
  v87 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v17 = *(v87 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v84 = v79;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v86 = v79;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v82 = v79;
  v85 = v17;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v98 = v79;
  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v94 = *(v96 - 8);
  v26 = *(v94 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = type metadata accessor for MLDecisionTreeClassifier(0);
  v95 = *(v29 + 36);
  v30 = v95 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v31 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v32 = *(v31 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v79);
  v33 = *(v31 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v79);
  (*(v94 + 8))(v79, v96);
  v34 = v93;
  *(v93 + v95) = 0;
  v35 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v94 = v30;
  swift_storeEnumTagMultiPayload(v30, v35, 1);
  v91 = v29;
  v36 = *(v29 + 40);
  v96 = v36 + v34;
  v95 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v37 = swift_allocError(&type metadata for MLCreateError, v95, 0, 0);
  *v38 = 0xD0000000000000C0;
  *(v38 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v38 + 16) = 0;
  *(v38 + 32) = 0;
  *(v38 + 48) = 0;
  v39 = v96;
  *(v34 + v36) = v37;
  v40 = v99;
  swift_storeEnumTagMultiPayload(v39, v35, 2);
  switch(*(v40 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v41 = 0x696C616974696E69;
      v42 = 0xEB0000000064657ALL;
      break;
    case 1:
      v41 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      v43 = v92;
      v44 = v97;
      goto LABEL_9;
    case 3:
      v41 = 0x697461756C617665;
LABEL_7:
      v42 = 0xEA0000000000676ELL;
      break;
    case 4:
      v42 = 0xEB00000000676E69;
      v41 = 0x636E657265666E69;
      break;
    case 5:
      JUMPOUT(0x230294);
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)(v41, v42, 0x676E696E69617274, 0xE800000000000000, 0);
  v42;
  v43 = v92;
  v44 = v97;
  if (v45)
  {
LABEL_9:
    v46 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    v47 = v81;
    BoostedTreeConfiguration.init()();
    v48 = v46;
    v49 = v47;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v48, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v47);
    v50 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
    v51 = v82;
    v97 = v50;
    v52 = v80;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v99, v43, v50);
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for AnyTreeClassifier);
    if (v52)
    {
      v53 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
      BoostedTreeConfiguration.init()();
      v54 = v49;
      v55 = v83;
      AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v53, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v54);
      v56 = v84;
      UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v99, v92, v97);
      outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for AnyTreeClassifier);
      v52;
      v59 = v56;
    }

    else
    {
      v59 = v51;
    }

    v60 = v98;
    outlined init with take of MLClassifierMetrics(v59, v98, type metadata accessor for AnyTreeClassifierModel);
    v61 = v60;
    v62 = v86;
    outlined init with copy of MLTrainingSessionParameters(v61, v86, type metadata accessor for AnyTreeClassifierModel);
    v63 = *(v87 + 80);
    v64 = ~*(v87 + 80) & (v63 + 16);
    v65 = swift_allocObject(&unk_393EE0, v64 + v85, v63 | 7);
    outlined init with take of MLClassifierMetrics(v62, v65 + v64, type metadata accessor for AnyTreeClassifierModel);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeClassifier.init(checkpoint:), v65);
    v67 = v66;

    v69 = v91;
    v70 = v93;
    *(v93 + *(v91 + 20)) = v67;
    outlined init with copy of MLTrainingSessionParameters(v98, v70, type metadata accessor for AnyTreeClassifierModel);
    v71 = v88;
    *v88 = 0;
    *(v71 + 16) = 256;
    swift_storeEnumTagMultiPayload(v71, v90, 0);
    v72 = v70 + *(v69 + 32) + 8;
    *(v72 + 16) = 0;
    *v72 = 0;
    *(v72 - 8) = 6;
    *(v72 + 32) = _mm_loadh_ps(&qword_33D880);
    *(v72 + 48) = 42;
    v73 = v89;
    outlined init with copy of MLTrainingSessionParameters(v71, v89, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    v79[3] = v90;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v79);
    outlined init with take of MLClassifierMetrics(v73, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?(v79, v72);
    outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    v75 = v91;
    v76 = *(v91 + 24);
    v77 = v93;
    *(v93 + v76) = 0;
    *(v77 + v76 + 8) = 0xE000000000000000;
    v78 = v77;
    outlined destroy of MLActivityClassifier.ModelParameters(v99, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v98, type metadata accessor for AnyTreeClassifierModel);
    result = *(v75 + 28);
    *(v78 + result) = _swiftEmptyArrayStorage;
  }

  else
  {
    v57 = v95;
    swift_allocError(&type metadata for MLCreateError, v95, 0, 0);
    *v58 = 0xD00000000000004ELL;
    *(v58 + 8) = "sifier\n\nParameters\n" + 0x8000000000000000;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v57);
    outlined destroy of MLActivityClassifier.ModelParameters(v99, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v94, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v96, type metadata accessor for MLClassifierMetrics);
  }

  return result;
}

void *static MLDecisionTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v7 = type metadata accessor for DataFrame(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(a1 + 8);
  v19 = *a1;
  v20 = v12;
  outlined copy of Result<_DataTable, Error>(v19, v12);
  DataFrame.init(_:)(&v19);
  v13 = static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v7 = type metadata accessor for DataFrame(0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 8);
  v14 = *a1;
  v15 = v11;
  outlined copy of Result<_DataTable, Error>(v14, v11);
  DataFrame.init(_:)(&v14);
  v12 = static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLDecisionTreeClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLDecisionTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = v6;
  v59 = a6;
  v56 = a4;
  v57 = a3;
  v51 = a2;
  v50 = a1;
  v8 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v55 = &v42;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v42;
  v13 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v53 = &v42;
  v16 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v20 = *(*(v62 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v61 = &v42;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v58 = &v42;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v54 = a5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a5 + 8, &v42, &demangling cache variable for type metadata for Any?);
  if (!v43)
  {
    BUG();
  }

  v27 = &v42 + *(v62 + 48);
  v60 = &v42;
  outlined init with take of Any(&v42, &v44);
  v28 = v60;
  swift_dynamicCast(&v42, &v44, &type metadata for Any + 8, v16, 7);
  v29 = v63;
  MLDecisionTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v28, v27, v50);
  outlined destroy of MLActivityClassifier.ModelParameters(&v42, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  if (!v29)
  {
    v30 = v58;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, v58, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v31 = v62;
    v63 = v30 + *(v62 + 48);
    v32 = v28;
    v33 = v61;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, v61, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v62 = v33 + *(v31 + 48);
    outlined init with copy of MLDecisionTreeClassifier.ModelParameters(v54, &v44);
    v56;
    v57;
    v34 = v53;
    BoostedTreeConfiguration.init()();
    BoostedTreeConfiguration.maximumIterations.setter(1);
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.maximumDepth.setter(v44);
    BoostedTreeConfiguration.minimumLossReduction.setter(v47);
    BoostedTreeConfiguration.minimumChildWeight.setter(v48);
    BoostedTreeConfiguration.randomSeed.setter(v49);
    outlined destroy of MLDecisionTreeClassifier.ModelParameters(&v44);
    v35 = v52;
    outlined init with copy of MLTrainingSessionParameters(v59, v52, type metadata accessor for MLTrainingSessionParameters);
    v36 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_allocObject(v36, *(v36 + 48), *(v36 + 52));
    v37 = TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v58, v62, v51, v57, v56, v34, v35);
    v38 = type metadata accessor for DataFrame(0);
    (*(*(v38 - 8) + 8))(v61, v38);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, &demangling cache variable for type metadata for DataFrame?);
    v45 = v36;
    v46 = &protocol witness table for TreeClassifierTrainingSessionDelegate;
    *&v44 = v37;
    v39 = v55;
    outlined init with copy of MLTrainingSessionParameters(v59, v55, type metadata accessor for MLTrainingSessionParameters);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>);
    swift_allocObject(v40, *(v40 + 48), *(v40 + 52));

    v28 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v44, v39, 3);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v28;
}

uint64_t static MLDecisionTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 3);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLDecisionTreeClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  if (a2)
  {
    v19 = a1;
    swift_storeEnumTagMultiPayload(&v19, v6, 1);
    swift_errorRetain(a1);
    v23(&v19);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_393F18, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLDecisionTreeClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_7E17D1DEF38C9D8FEB24863D1630C03BLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLDecisionTreeClassifier, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[31] = a2;
  v2[30] = a1;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v2[32] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[33] = swift_task_alloc(v4);
  v2[34] = swift_task_alloc(v4);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[35] = swift_task_alloc(v5);
  v2[36] = swift_task_alloc(v5);
  v6 = type metadata accessor for MLClassifierMetrics(0);
  v2[37] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[38] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLDecisionTreeClassifier(0);
  v2[39] = v8;
  v2[40] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[41] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[42] = v10;
  v11 = *(v10 - 8);
  v2[43] = v11;
  v2[44] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[45] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[46] = v13;
  v2[47] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLDecisionTreeClassifier.init(delegate:), 0, 0);
}

uint64_t MLDecisionTreeClassifier.init(delegate:)()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v0[31];
  swift_beginAccess(v3, v0 + 18, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[47];
  v5 = v0[46];
  v6 = v0[44];
  v18 = v0[43];
  v15 = v0[42];
  v16 = v0[41];
  v7 = v0[31];
  v14 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[45], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLDecisionTreeClassifier.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, v0 + 21, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLDecisionTreeClassifier.ModelParameters((v0 + 2), (v0 + 10));
  v19;
  v9;
  v12 = swift_task_alloc(128);
  v0[48] = v12;
  *v12 = v0;
  v12[1] = MLDecisionTreeClassifier.init(delegate:);
  return MLDecisionTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(v0[40], v0[38], v17, v19, v9, (v0 + 10));
}

{
  v2 = *(*v1 + 384);
  *(*v1 + 392) = v0;
  v2;
  if (v0)
  {
    v3 = MLDecisionTreeClassifier.init(delegate:);
  }

  else
  {
    v3 = MLDecisionTreeClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 248);
  outlined init with take of MLClassifierMetrics(*(v0 + 320), *(v0 + 240), type metadata accessor for MLDecisionTreeClassifier);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 192, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 376);
  v22 = *(v0 + 312);
  v6 = *(v0 + 296);
  v7 = *(v0 + 288);
  v29 = *(v0 + 280);
  v26 = *(v0 + 256);
  v24 = *(v0 + 240);
  v8 = *(v0 + 248);
  outlined destroy of MLDecisionTreeClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined init with take of MLClassifierMetrics(v7, v6, type metadata accessor for AnyClassificationMetrics);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v6, v9, 0);
  outlined assign with take of MLClassifierMetrics(v6, v24 + *(v22 + 36));
  v10 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, v0 + 216, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v29, &demangling cache variable for type metadata for AnyClassificationMetrics?);

  if (__swift_getEnumTagSinglePayload(v29, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 280), &demangling cache variable for type metadata for AnyClassificationMetrics?);
  }

  else
  {
    v30 = *(v0 + 312);
    v11 = *(v0 + 272);
    v12 = *(v0 + 240);
    v27 = v9;
    v13 = *(v0 + 264);
    outlined init with take of MLClassifierMetrics(*(v0 + 280), v11, type metadata accessor for AnyClassificationMetrics);
    outlined init with take of MLClassifierMetrics(v11, v13, type metadata accessor for AnyClassificationMetrics);
    v14 = v12 + *(v30 + 40);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined init with take of MLClassifierMetrics(v13, v14, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v14, v27, 0);
  }

  v15 = *(v0 + 360);
  v16 = *(v0 + 352);
  v17 = *(v0 + 328);
  v18 = *(v0 + 320);
  v20 = *(v0 + 304);
  v25 = *(v0 + 296);
  v23 = *(v0 + 288);
  v21 = *(v0 + 280);
  v28 = *(v0 + 264);
  v31 = *(v0 + 272);
  *(v0 + 376);
  v15;
  v16;
  v17;
  v18;
  v20;
  v25;
  v23;
  v21;
  v31;
  v28;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v14 = *(v0 + 328);
  v13 = *(v0 + 320);
  v12 = *(v0 + 304);
  v11 = *(v0 + 296);
  v10 = *(v0 + 288);
  v9 = *(v0 + 280);
  v8 = *(v0 + 272);
  v4 = *(v0 + 248);
  v7 = *(v0 + 264);

  outlined destroy of MLDecisionTreeClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v14;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  v7;
  v5 = *(v0 + 392);
  return (*(v0 + 8))();
}

uint64_t outlined init with take of DataFrame?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t partial apply for closure #1 in MLDecisionTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(checkpoint:)(a1);
}

id sub_2316E2()
{
  v1 = v0;
  result = MLDecisionTreeClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v6 = a2[1];
    v4[1] = v6;
    v7 = a2[2];
    v6;
    if (v7)
    {
      v4[2] = v7;
      v4[3] = a2[3];
      v8 = a2[4];
      v4[4] = v8;
      v7;
      v8;
    }

    else
    {
      v4[4] = a2[4];
      *(v4 + 1) = *(a2 + 1);
    }

    v10 = type metadata accessor for AnyTreeClassifierModel(0);
    v11 = *(v10 + 24);
    v12 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v12 - 8) + 16))(v4 + v11, a2 + v11, v12);
    v13 = *(v10 + 28);
    v14 = *(a2 + v13);
    v15 = *(a2 + v13 + 8);
    *(v4 + v13) = v14;
    *(v4 + v13 + 8) = v15;
    v16 = a3[5];
    v57 = *(a2 + v16);
    *(v4 + v16) = v57;
    v17 = a3[6];
    *(v4 + v17) = *(a2 + v17);
    v18 = *(a2 + v17 + 8);
    *(v4 + v17 + 8) = v18;
    v19 = a3[7];
    v59 = *(a2 + v19);
    *(v4 + v19) = v59;
    v20 = a3[8];
    v68 = v4 + v20;
    v63 = a2 + v20;
    v21 = (a2 + v20 + 8);
    v65 = (v4 + v20 + 8);
    *(v4 + v20) = *(a2 + v20);
    v22 = *(a2 + v20 + 32);
    v14;
    v57;
    v18;
    v59;
    if (v22)
    {
      *(v68 + 4) = v22;
      (**(v22 - 8))(v65, v21, v22);
    }

    else
    {
      v23 = *v21;
      v65[1] = v21[1];
      *v65 = v23;
    }

    *(v68 + 40) = *(v63 + 40);
    *(v68 + 7) = *(v63 + 7);
    v24 = a3[9];
    v25 = (v4 + v24);
    v26 = a2 + v24;
    v64 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v64);
    if (EnumCaseMultiPayload == 2)
    {
      v32 = v25;
      v33 = *v26;
      swift_errorRetain(*v26);
      *v32 = v33;
      v25 = v32;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v25 = *v26;
      v58 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v66 = v25;
      v28 = v58[5];
      v56 = v66 + v28;
      v29 = type metadata accessor for DataFrame(0);
      v60 = *(*(v29 - 8) + 16);
      v30 = &v26[v28];
      v25 = v66;
      v60(v56, v30, v29);
      v31 = v29;
      EnumCaseMultiPayload = 1;
      v60(v66 + v58[6], &v26[v58[6]], v31);
    }

    else
    {
      v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v34 = swift_getEnumCaseMultiPayload(v26, v69);
      v67 = v34 == 1;
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v34 == 1)
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
      (*(*(v36 - 8) + 16))(v25, v26, v36);
      swift_storeEnumTagMultiPayload(v25, v69, v67);
    }

    swift_storeEnumTagMultiPayload(v25, v64, EnumCaseMultiPayload);
    v37 = a3[10];
    v38 = (v4 + v37);
    v39 = (a2 + v37);
    v40 = swift_getEnumCaseMultiPayload(v39, v64);
    if (v40 == 2)
    {
      v45 = *v39;
      swift_errorRetain(v45);
      *v38 = v45;
      v55 = 2;
    }

    else
    {
      if (v40 != 1)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v50 = swift_getEnumCaseMultiPayload(v39, v49);
        v51 = v50 == 1;
        v52 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v50 == 1)
        {
          v52 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v53 = __swift_instantiateConcreteTypeFromMangledName(v52);
        (*(*(v53 - 8) + 16))(v38, v39, v53);
        swift_storeEnumTagMultiPayload(v38, v49, v51);
        v47 = v38;
        v48 = v64;
        v46 = 0;
        goto LABEL_24;
      }

      *v38 = *v39;
      v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v41 = *(v62 + 20);
      v70 = v38 + v41;
      v42 = type metadata accessor for DataFrame(0);
      v43 = v39 + v41;
      v44 = *(*(v42 - 8) + 16);
      v44(v70, v43, v42);
      v44(v38 + *(v62 + 24), v39 + *(v62 + 24), v42);
      v55 = 1;
    }

    v46 = v55;
    v47 = v38;
    v48 = v64;
LABEL_24:
    swift_storeEnumTagMultiPayload(v47, v48, v46);
    return v4;
  }

  v9 = *a2;
  *v4 = *a2;
  v4 = (v9 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for MLDecisionTreeClassifier(void *a1, int *a2)
{
  a1[1];
  v4 = a1[2];
  if (v4)
  {
    v4;
    a1[4];
  }

  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  v6 = a1 + *(v5 + 24);
  v7 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v7 - 8) + 8))(v6, v7);
  *(a1 + *(v5 + 28));

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v8 = a2[8];
  if (*(a1 + v8 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8 + 8));
  }

  v9 = a1 + a2[9];
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v9;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = &v9[*(v30 + 20)];
      v29 = v10;
      v15 = type metadata accessor for DataFrame(0);
      v16 = v14;
      v17 = *(*(v15 - 8) + 8);
      v17(v16, v15);
      v18 = v15;
      v10 = v29;
      v17(&v9[*(v30 + 24)], v18);
      break;
    case 0:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v9, v12) == 1)
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v19 - 8) + 8))(v9, v19);
      break;
  }

  v20 = (a1 + a2[10]);
  result = swift_getEnumCaseMultiPayload(v20, v10);
  switch(result)
  {
    case 2:
      return *v20;
    case 1:
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = v20 + *(v24 + 20);
      v26 = type metadata accessor for DataFrame(0);
      v27 = *(*(v26 - 8) + 8);
      v27(v25, v26);
      return (v27)(v20 + *(v24 + 24), v26);
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

      v28 = __swift_instantiateConcreteTypeFromMangledName(v23);
      return (*(*(v28 - 8) + 8))(v20, v28);
  }

  return result;
}

void *initializeWithCopy for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v5 = a2[2];
  v4;
  if (v5)
  {
    a1[2] = v5;
    a1[3] = a2[3];
    v6 = a2[4];
    a1[4] = v6;
    v5;
    v6;
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = type metadata accessor for AnyTreeClassifierModel(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = *(v7 + 28);
  v11 = *(a2 + v10);
  v12 = *(a2 + v10 + 8);
  *(a1 + v10) = v11;
  *(a1 + v10 + 8) = v12;
  v13 = a3[5];
  v14 = *(a2 + v13);
  *(a1 + v13) = v14;
  v15 = a3[6];
  *(a1 + v15) = *(a2 + v15);
  v16 = a1;
  v17 = *(a2 + v15 + 8);
  *(v16 + v15 + 8) = v17;
  v18 = a3[7];
  v19 = *(a2 + v18);
  *(v16 + v18) = v19;
  v20 = a3[8];
  v62 = v16 + v20;
  v53 = a2 + v20;
  v21 = (a2 + v20 + 8);
  v52 = v16;
  v55 = (v16 + v20 + 8);
  *(v16 + v20) = *(a2 + v20);
  v22 = *(a2 + v20 + 32);
  v11;
  v14;
  v17;
  v19;
  if (v22)
  {
    *(v62 + 4) = v22;
    (**(v22 - 8))(v55, v21, v22);
  }

  else
  {
    v23 = *v21;
    v55[1] = v21[1];
    *v55 = v23;
  }

  *(v62 + 40) = *(v53 + 40);
  *(v62 + 7) = *(v53 + 7);
  v24 = a3[9];
  v25 = v52 + v24;
  v26 = a2 + v24;
  v54 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v54);
  if (EnumCaseMultiPayload == 2)
  {
    v32 = *v26;
    swift_errorRetain(*v26);
    *v25 = v32;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v25 = *v26;
    v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v28 = *(v63 + 20);
    v56 = &v25[v28];
    v29 = type metadata accessor for DataFrame(0);
    v30 = &v26[v28];
    v31 = *(*(v29 - 8) + 16);
    v31(v56, v30, v29);
    v31(&v25[*(v63 + 24)], &v26[*(v63 + 24)], v29);
  }

  else
  {
    v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v26, v64);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 16))(v25, v26, v36);
    swift_storeEnumTagMultiPayload(v25, v64, v34);
  }

  swift_storeEnumTagMultiPayload(v25, v54, EnumCaseMultiPayload);
  v37 = a3[10];
  v38 = v52 + v37;
  v39 = a2 + v37;
  v40 = swift_getEnumCaseMultiPayload(a2 + v37, v54);
  if (v40 == 2)
  {
    v45 = *v39;
    swift_errorRetain(v45);
    *v38 = v45;
  }

  else if (v40 == 1)
  {
    *v38 = *v39;
    v58 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v58 + 20);
    v60 = &v38[v41];
    v42 = type metadata accessor for DataFrame(0);
    v43 = &v39[v41];
    v44 = *(*(v42 - 8) + 16);
    v44(v60, v43, v42);
    v44(&v38[*(v58 + 24)], &v39[*(v58 + 24)], v42);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v39, v46);
    v61 = v39;
    v48 = v47 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 16))(v38, v61, v50);
    swift_storeEnumTagMultiPayload(v38, v46, v48);
  }

  swift_storeEnumTagMultiPayload(v38, v54, v40);
  return v52;
}

void *assignWithCopy for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v4;
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (v9)
    {
      a1[2] = v9;
      v9;
      v8;
      v10 = a2;
      a1[3] = a2[3];
      v11 = a2[4];
      v12 = a1[4];
      a1[4] = v11;
      v11;
      v12;
      goto LABEL_9;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
    *v6 = *v7;
    a1[4] = a2[4];
  }

  else
  {
    if (v9)
    {
      a1[2] = v9;
      v10 = a2;
      a1[3] = a2[3];
      v13 = a2[4];
      a1[4] = v13;
      v9;
      v13;
      goto LABEL_9;
    }

    a1[4] = a2[4];
    *v6 = *v7;
  }

  v10 = a2;
LABEL_9:
  v14 = type metadata accessor for AnyTreeClassifierModel(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v16 - 8) + 24))(a1 + v15, &v10[v15], v16);
  v17 = *(v14 + 28);
  v18 = *&v10[v17];
  v19 = v10[v17 + 8];
  v20 = *(a1 + v17);
  *(a1 + v17) = v18;
  *(a1 + v17 + 8) = v19;
  v18;
  v20;
  v21 = a3[5];
  v22 = *&v10[v21];
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v22;

  v24 = a3[6];
  *(a1 + v24) = *&v10[v24];
  v25 = *&v10[v24 + 8];
  v26 = *(a1 + v24 + 8);
  *(a1 + v24 + 8) = v25;
  v25;
  v26;
  v27 = a3[7];
  v28 = *&v10[v27];
  v29 = *(a1 + v27);
  *(a1 + v27) = v28;
  v28;
  v29;
  v30 = a3[8];
  v31 = (a1 + v30);
  v32 = v10;
  v33 = &v10[v30];
  v34 = v32 + v30 + 8;
  v35 = (a1 + v30 + 8);
  *(a1 + v30) = *(v32 + v30);
  v36 = *(v32 + v30 + 32);
  if (*(a1 + v30 + 32))
  {
    if (v36)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + v30 + 8), v34);
      goto LABEL_16;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v30 + 8));
  }

  else if (v36)
  {
    v31[4] = v36;
    (**(v36 - 8))(v35, v34);
    goto LABEL_16;
  }

  v37 = *v34;
  v35[1] = *(v34 + 16);
  *v35 = v37;
LABEL_16:
  v31[5] = *(v33 + 5);
  v31[6] = *(v33 + 6);
  v31[7] = *(v33 + 7);
  v38 = a2;
  if (a1 != a2)
  {
    v39 = a3[9];
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLClassifierMetrics.Contents);
    v42 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v41, v42);
    v67 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v47 = *v41;
      swift_errorRetain(v47);
      *v40 = v47;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v40 = *v41;
      v72 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v69 = v42;
      v44 = *(v72 + 20);
      v65 = v40 + v44;
      v66 = type metadata accessor for DataFrame(0);
      v45 = *(*(v66 - 8) + 16);
      v46 = v41 + v44;
      v42 = v69;
      v45(v65, v46, v66);
      v45(v40 + *(v72 + 24), v41 + *(v72 + 24), v66);
      v38 = a2;
    }

    else
    {
      v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v48 = swift_getEnumCaseMultiPayload(v41, v70);
      v73 = v48 == 1;
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v48 == 1)
      {
        v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
      (*(*(v50 - 8) + 16))(v40, v41, v50);
      swift_storeEnumTagMultiPayload(v40, v70, v73);
    }

    swift_storeEnumTagMultiPayload(v40, v42, v67);
    v51 = a3[10];
    v52 = (a1 + v51);
    v53 = (v38 + v51);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v51, type metadata accessor for MLClassifierMetrics.Contents);
    v54 = swift_getEnumCaseMultiPayload(v53, v42);
    if (v54 == 2)
    {
      v59 = *v53;
      swift_errorRetain(v59);
      *v52 = v59;
    }

    else
    {
      v76 = v54;
      if (v54 == 1)
      {
        *v52 = *v53;
        v68 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v55 = *(v68 + 20);
        v74 = v52 + v55;
        v71 = v42;
        v56 = type metadata accessor for DataFrame(0);
        v78 = *(*(v56 - 8) + 16);
        v57 = v53 + v55;
        v54 = 1;
        v78(v74, v57, v56);
        v58 = v56;
        v42 = v71;
        v78(v52 + *(v68 + 24), v53 + *(v68 + 24), v58);
      }

      else
      {
        v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v60 = swift_getEnumCaseMultiPayload(v53, v79);
        v61 = v60 == 1;
        v62 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v60 == 1)
        {
          v62 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v63 = __swift_instantiateConcreteTypeFromMangledName(v62);
        (*(*(v63 - 8) + 16))(v52, v53, v63);
        swift_storeEnumTagMultiPayload(v52, v79, v61);
        v54 = v76;
      }
    }

    swift_storeEnumTagMultiPayload(v52, v42, v54);
  }

  return a1;
}

uint64_t initializeWithTake for MLDecisionTreeClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(v5 + 28);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v9 = a3[8];
  v10 = *(a2 + v9);
  v11 = *(a2 + v9 + 16);
  v12 = *(a2 + v9 + 32);
  *(a1 + v9 + 48) = *(a2 + v9 + 48);
  *(a1 + v9 + 32) = v12;
  *(a1 + v9 + 16) = v11;
  *(a1 + v9) = v10;
  v51 = a3;
  v13 = a3[9];
  v14 = (v13 + a1);
  v15 = (a2 + v13);
  v16 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
  if (EnumCaseMultiPayload == 1)
  {
    *v14 = *v15;
    v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v25 = *(v49 + 20);
    v50 = &v14[v25];
    v55 = v16;
    v26 = type metadata accessor for DataFrame(0);
    v27 = &v15[v25];
    v28 = *(*(v26 - 8) + 32);
    v28(v50, v27, v26);
    v29 = v26;
    v16 = v55;
    v28(&v14[*(v49 + 24)], &v15[*(v49 + 24)], v29);
    v24 = 1;
    v22 = v14;
    v23 = v55;
LABEL_7:
    swift_storeEnumTagMultiPayload(v22, v23, v24);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v18 = swift_getEnumCaseMultiPayload(v15, v54);
    v19 = v18 == 1;
    v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v18 == 1)
    {
      v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
    (*(*(v21 - 8) + 32))(v14, v15, v21);
    swift_storeEnumTagMultiPayload(v14, v54, v19);
    v22 = v14;
    v23 = v16;
    v24 = 0;
    goto LABEL_7;
  }

  memcpy(v14, v15, *(*(v16 - 8) + 64));
LABEL_9:
  v30 = v51[10];
  v31 = (a1 + v30);
  v32 = (v30 + a2);
  v33 = swift_getEnumCaseMultiPayload(v32, v16);
  if (v33 == 1)
  {
    *v31 = *v32;
    v43 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v56 = v16;
    v44 = *(v43 + 20);
    v52 = &v31[v44];
    v45 = type metadata accessor for DataFrame(0);
    v46 = &v32[v44];
    v47 = *(*(v45 - 8) + 32);
    v47(v52, v46, v45);
    v47(&v31[*(v43 + 24)], &v32[*(v43 + 24)], v45);
    v42 = 1;
    v40 = v31;
    v41 = v56;
  }

  else
  {
    if (v33)
    {
      memcpy(v31, v32, *(*(v16 - 8) + 64));
      return a1;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v35 = swift_getEnumCaseMultiPayload(v32, v34);
    v36 = v16;
    v37 = v35 == 1;
    v38 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v35 == 1)
    {
      v38 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledName(v38);
    (*(*(v39 - 8) + 32))(v31, v32, v39);
    swift_storeEnumTagMultiPayload(v31, v34, v37);
    v40 = v31;
    v41 = v36;
    v42 = 0;
  }

  swift_storeEnumTagMultiPayload(v40, v41, v42);
  return a1;
}

void *assignWithTake for MLDecisionTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  if (v7)
  {
    v8 = a2[2];
    if (v8)
    {
      a1[2] = v8;
      v7;
      a1[3] = a2[3];
      v9 = a1[4];
      a1[4] = a2[4];
      v9;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = type metadata accessor for AnyTreeClassifierModel(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(v10 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
  v16 = a3[5];
  v17 = *(a1 + v16);
  *(a1 + v16) = *(a2 + v16);

  v18 = a3[6];
  *(a1 + v18) = *(a2 + v18);
  v19 = *(a1 + v18 + 8);
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  v19;
  v20 = a3[7];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);
  v21;
  v22 = a3[8];
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (a2 + v22 + 8);
  v26 = (a1 + v22 + 8);
  *(a1 + v22) = *(a2 + v22);
  if (*(a1 + v22 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v22 + 8));
  }

  v27 = *v25;
  v26[1] = v25[1];
  *v26 = v27;
  *(v23 + 40) = *(v24 + 40);
  *(v23 + 7) = *(v24 + 7);
  v28 = a2;
  if (a1 == a2)
  {
    return a1;
  }

  v29 = a3[9];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v71);
  if (EnumCaseMultiPayload == 1)
  {
    *v30 = *v31;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v66 + 20);
    v64 = v30 + v41;
    v42 = type metadata accessor for DataFrame(0);
    v43 = *(*(v42 - 8) + 32);
    v44 = v31 + v41;
    v45 = v42;
    v43(v64, v44);
    (v43)(v30 + *(v66 + 24), v31 + *(v66 + 24), v45);
    v28 = a2;
    v40 = 1;
    v37 = v30;
    v38 = v71;
    v39 = v71;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v46 = v31;
      v38 = v71;
      memcpy(v30, v46, *(*(v71 - 8) + 64));
      goto LABEL_17;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v31, v65);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 32))(v30, v31, v36);
    swift_storeEnumTagMultiPayload(v30, v65, v34);
    v37 = v30;
    v38 = v71;
    v39 = v71;
    v40 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v39, v40);
LABEL_17:
  v47 = a3[10];
  v48 = a1 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v38);
  if (v50 == 1)
  {
    *v48 = *v49;
    v70 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v70 + 20);
    v68 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = &v49[v59];
    v62 = *(*(v60 - 8) + 32);
    v62(v68, v61, v60);
    v62(&v48[*(v70 + 24)], &v49[*(v70 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v71;
  }

  else
  {
    if (v50)
    {
      memcpy(v48, v49, *(*(v38 - 8) + 64));
      return a1;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v52 = swift_getEnumCaseMultiPayload(v49, v51);
    v53 = v52 == 1;
    v54 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v52 == 1)
    {
      v54 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledName(v54);
    (*(*(v55 - 8) + 32))(v48, v49, v55);
    swift_storeEnumTagMultiPayload(v48, v51, v53);
    v56 = v48;
    v57 = v71;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return a1;
}

uint64_t sub_232CDB(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLClassifierMetrics(0);
    v4 = *(a3 + 36) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_232D68(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for AnyTreeClassifierModel(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = *(a4 + 20);
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLClassifierMetrics(0);
    v6 = *(a4 + 36) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLDecisionTreeClassifier(uint64_t a1)
{
  result = type metadata accessor for AnyTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_346A40;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_346A58;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 7, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t sub_232E8D()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v5 = v1[6];
  v6 = swift_task_alloc(64);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in static MLDecisionTreeClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVy6CoreML13MLShapedArrayVySfGGAJySSGG_18CreateMLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v114 = *(v113 - 8);
  v1 = *(v114 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v116 = &v104;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v117 = &v104;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v105 = &v104;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v104 = &v104;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v129 = &v104;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v107 = &v104;
  v15 = alloca(v6);
  v16 = alloca(v6);
  v115 = &v104;
  v17 = alloca(v6);
  v18 = alloca(v6);
  v121 = &v104;
  v112 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
  v19 = *(*(v112 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v106 = &v104;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v108 = &v104;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v109 = &v104;
  v120 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  i = *(v120 - 8);
  v26 = *(i + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v119 = &v104;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v30 = *(v29 - 8);
  v124 = v29;
  v125 = v30;
  v31 = *(v30 + 8);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v122 = &v104;
  v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
  v34 = *(*(v134 - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  *&v131 = &v104;
  v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>.Iterator);
  v37 = *(*(v118 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v133 = &v104;
  v110 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
  v111 = a1;
  v40 = dispatch thunk of Sequence.underestimatedCount.getter(v29, v110);
  v41 = a1 + *(v134 + 52);
  v123 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v42 = v120;
  v43 = dispatch thunk of Sequence.underestimatedCount.getter(v120, v123);
  if (v43 < v40)
  {
    v40 = v43;
  }

  v132 = _swiftEmptyArrayStorage;
  v44 = 0;
  if (v40 > 0)
  {
    v44 = v40;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
  v128 = v132;
  v45 = v131;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v111, v131, &demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
  v46 = v45;
  v47 = v124;
  v125[4](v122, v46, v124);
  v48 = v47;
  v49 = v133;
  dispatch thunk of Sequence.makeIterator()(v48, v110);
  (*(i + 32))(v119, v131 + *(v134 + 52), v42);
  v125 = (v49 + *(v118 + 52));
  dispatch thunk of Sequence.makeIterator()(v42, v123);
  v122 = v40;
  if (v40 < 0)
  {
    BUG();
  }

  v50 = v49;
  if (v40)
  {
    v134 = v49 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<MLShapedArray<Float>>>) + 36);
    v51 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
    v123 = v51;
    while (1)
    {
      v52 = v124;
      v53 = v51;
      dispatch thunk of Collection.endIndex.getter(v124, v51);
      if (*v134 == v126)
      {
        goto LABEL_33;
      }

      *&v131 = dispatch thunk of Collection.subscript.read(&v126, v134, v52, v53);
      v54 = v53;
      v55 = v104;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, v104, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      (v131)(&v126, 0);
      dispatch thunk of Collection.formIndex(after:)(v134, v52, v54);
      outlined init with take of DataFrame?(v55, v129, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      v57 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36);
      v58 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v59 = v125;
      v60 = v120;
      v61 = v58;
      dispatch thunk of Collection.endIndex.getter(v120, v58);
      if (*(v59 + v57) == v126)
      {
        break;
      }

      v62 = v59 + v57;
      i = v61;
      v119 = dispatch thunk of Collection.subscript.read(&v126, v62, v60, v61);
      *&v131 = *v63;
      v64 = v63[1];
      v64;
      (v119)(&v126, 0);
      dispatch thunk of Collection.formIndex(after:)(v62, v60, i);
      v65 = *(v112 + 48);
      v66 = v106;
      outlined init with take of DataFrame?(v129, v106, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      *(v66 + v65) = v131;
      *(v66 + v65 + 8) = v64;
      v67 = v105;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, v105, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
      if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
      {
        BUG();
      }

      v69 = v131;
      if (!v64)
      {
        v69 = 0;
      }

      v70 = v64;
      if (!v64)
      {
        v70 = 0xE000000000000000;
      }

      v126 = v69;
      v127 = v70;
      v64;
      v71 = v116;
      AnnotatedFeature.init(feature:annotation:)(v67, &v126, v68, &type metadata for String);
      outlined destroy of Any?(v66, &demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
      v72 = v71;
      v73 = v128;
      v132 = v128;
      v74 = v128[2];
      if (v128[3] >> 1 <= v74)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v128[3] >= 2uLL, v74 + 1, 1);
        v72 = v116;
        v73 = v132;
      }

      v73[2] = v74 + 1;
      v75 = *(v114 + 80);
      v128 = v73;
      (*(v114 + 32))(v73 + ((v75 + 32) & ~v75) + *(v114 + 72) * v74, v72, v113);
      v76 = v122 == (&dword_0 + 1);
      v122 = (v122 - 1);
      v50 = v133;
      v51 = v123;
      if (v76)
      {
        goto LABEL_18;
      }
    }

    outlined destroy of Any?(v129, &demangling cache variable for type metadata for MLShapedArray<Float>?);
LABEL_33:
    BUG();
  }

LABEL_18:
  v134 = v50 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<MLShapedArray<Float>>>) + 36);
  v77 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
  v78 = v124;
  for (i = v77; ; v77 = i)
  {
    v79 = v78;
    v80 = v77;
    dispatch thunk of Collection.endIndex.getter(v78, v77);
    if (*v134 == v126)
    {
      break;
    }

    v81 = dispatch thunk of Collection.subscript.read(&v126, v134, v79, v80);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, v115, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    v81(&v126, 0);
    dispatch thunk of Collection.formIndex(after:)(v134, v79, v80);
    outlined init with take of DataFrame?(v115, v121, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    v83 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36);
    v84 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v85 = v125;
    v86 = v120;
    dispatch thunk of Collection.endIndex.getter(v120, v84);
    if (*(v85 + v83) == v126)
    {
      outlined destroy of Any?(v121, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      break;
    }

    v87 = v85 + v83;
    v129 = dispatch thunk of Collection.subscript.read(&v126, v87, v86, v84);
    v131 = *v88;
    *(v88 + 1);
    (v129)(&v126, 0);
    dispatch thunk of Collection.formIndex(after:)(v87, v86, v84);
    v89 = v112;
    v90 = *(v112 + 48);
    v91 = v108;
    outlined init with take of DataFrame?(v121, v108, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    *(v91 + v90) = v131;
    v92 = v109;
    outlined init with take of DataFrame?(v91, v109, &demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
    v93 = *(v89 + 48);
    v94 = *(v92 + v93);
    v95 = *(v92 + v93 + 8);
    v96 = v107;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v92, v107, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    *&v131 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
    if (__swift_getEnumTagSinglePayload(v96, 1, v131) == 1)
    {
      BUG();
    }

    if (!v95)
    {
      v94 = 0;
    }

    v97 = v95;
    if (!v95)
    {
      v97 = 0xE000000000000000;
    }

    v126 = v94;
    v127 = v97;
    v95;
    v98 = v117;
    AnnotatedFeature.init(feature:annotation:)(v96, &v126, v131, &type metadata for String);
    outlined destroy of Any?(v92, &demangling cache variable for type metadata for (MLShapedArray<Float>?, String?));
    v99 = v128;
    v132 = v128;
    v100 = v128[2];
    if (v128[3] >> 1 <= v100)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v128[3] >= 2uLL, v100 + 1, 1);
      v98 = v117;
      v99 = v132;
    }

    v99[2] = v100 + 1;
    v101 = *(v114 + 80);
    v128 = v99;
    (*(v114 + 32))(v99 + ((v101 + 32) & ~v101) + *(v114 + 72) * v100, v98, v113);
    v78 = v124;
  }

  v102 = v133;
  *(v133 + *(v118 + 56)) = 1;
  outlined destroy of Any?(v102, &demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>.Iterator);
  return v128;
}

uint64_t specialized Collection.first.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v1 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v0, v1);
  dispatch thunk of Collection.endIndex.getter(v0, v1);
  if (v7[0] == v6[0])
  {
    return 0;
  }

  v3 = dispatch thunk of Collection.subscript.read(v6, v7, v0, v1);
  v2 = *v4;
  v4[1];
  v3(v6, 0);
  return v2;
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Int]>, &lazy protocol witness table cache variable for type Column<[Int]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Int32]>, &lazy protocol witness table cache variable for type Column<[Int32]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[UInt8]>, &lazy protocol witness table cache variable for type Column<[UInt8]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>, &lazy protocol witness table cache variable for type Column<MLShapedArray<Int32>> and conformance Column<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Float]>, &lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for MLShapedArray<Float>?);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<[Double]>, &lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>);
}

{
  return specialized Collection.first.getter(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>, &lazy protocol witness table cache variable for type Column<MLShapedArray<Double>> and conformance Column<A>, &demangling cache variable for type metadata for MLShapedArray<Double>?);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v1 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLMultiArray> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLMultiArray>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v0, v1);
  dispatch thunk of Collection.endIndex.getter(v0, v1);
  if (v7[0] == v6[0])
  {
    return 2;
  }

  v3 = dispatch thunk of Collection.subscript.read(v6, v7, v0, v1);
  v2 = *v4;
  *v4;
  v3(v6, 0);
  return v2;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v5 = v4;
  if (v3)
  {
    (*(*(v4 - 8) + 16))(v2, ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + a1, v4);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v2, v6, 1, v5);
}

{
  v25 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: MLProgram.Block));
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v24 = &v24;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = v7;
  v10 = v9;
  v11 = specialized Dictionary.Keys.endIndex.getter(a1);
  if (v10 & 1) != 0 || (v13)
  {
    BUG();
  }

  if (v8 != v12)
  {
    BUG();
  }

  if (v6 == v11)
  {
    return __swift_storeEnumTagSinglePayload(v25, 1, 1, v2);
  }

  v26 = v2;
  v15 = *(v2 + 48);
  v16 = v24;
  v17 = v24 + v15;
  v18 = specialized Dictionary.subscript.getter(v17, v6, v8, 0, a1);
  v20 = v19;
  *v16 = v18;
  v16[1] = v19;
  v21 = v25;
  *v25 = v18;
  v21[1] = v19;
  v22 = v21 + *(v26 + 48);
  v23 = type metadata accessor for MLProgram.Block(0);
  (*(*(v23 - 8) + 16))(v22, v17, v23);
  v20;
  outlined destroy of Any?(v16, &demangling cache variable for type metadata for (key: String, value: MLProgram.Block));
  return __swift_storeEnumTagSinglePayload(v21, 0, 1, v26);
}

{
  v1 = specialized _NativeDictionary.startIndex.getter(a1);
  v3 = v2;
  v5 = v4;
  v6 = specialized Dictionary.Keys.endIndex.getter(a1);
  if (v5 & 1) != 0 || (v8)
  {
    BUG();
  }

  if (v3 != v7)
  {
    BUG();
  }

  if (v1 == v6)
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.Keys.subscript.getter(v1, v3, 0, a1);
  }
}

{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = 0;
  v5 = type metadata accessor for FeatureDescription(0);
  v6 = v5;
  if (v3)
  {
    (*(*(v5 - 8) + 16))(v2, ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a1, v5);
  }

  else
  {
    v4 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v2, v4, 1, v6);
}

{
  v25 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v24 = &v24;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = v7;
  v10 = v9;
  v11 = specialized Dictionary.Keys.endIndex.getter(a1);
  if (v10 & 1) != 0 || (v13)
  {
    BUG();
  }

  if (v8 != v12)
  {
    BUG();
  }

  if (v6 == v11)
  {
    return __swift_storeEnumTagSinglePayload(v25, 1, 1, v2);
  }

  v26 = v2;
  v15 = *(v2 + 48);
  v16 = v24;
  v17 = v24 + v15;
  v18 = specialized Dictionary.subscript.getter(v17, v6, v8, 0, a1);
  v20 = v19;
  *v16 = v18;
  v16[1] = v19;
  v21 = v25;
  *v25 = v18;
  v21[1] = v19;
  v22 = v21 + *(v26 + 48);
  v23 = type metadata accessor for Tensor(0);
  (*(*(v23 - 8) + 16))(v22, v17, v23);
  v20;
  outlined destroy of Any?(v16, &demangling cache variable for type metadata for (key: String, value: Tensor));
  return __swift_storeEnumTagSinglePayload(v21, 0, 1, v26);
}

uint64_t specialized Collection.first.getter(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  result = a1[4];
  v2 = a1[5];
  return result;
}

_OWORD *specialized Collection.first.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return outlined init with copy of Any(a1 + 32, result);
  }

  result[1] = 0;
  *result = 0;
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(a2, a1, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v2, v3);
  dispatch thunk of Collection.endIndex.getter(v2, v3);
  if (v9[0] == v8[0])
  {
    return 2;
  }

  v5 = dispatch thunk of Collection.subscript.read(v8, v9, v2, v3);
  v4 = *v6;
  *v6;
  v5(v8, 0);
  return v4;
}

uint64_t specialized Collection.first.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v16 = a3;
  v17 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(a2, a1, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Collection.startIndex.getter(v4, v5);
  dispatch thunk of Collection.endIndex.getter(v4, v5);
  if (v15 == v14[0])
  {
    v6 = 1;
    v7 = v17;
    v8 = v16;
  }

  else
  {
    v9 = dispatch thunk of Collection.subscript.read(v14, &v15, v4, v5);
    v7 = v17;
    v10 = v16;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, v17, v16);
    v6 = 0;
    v9(v14, 0);
    v8 = v10;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledName(v8);
  return __swift_storeEnumTagSinglePayload(v7, v6, 1, v12);
}

Swift::OpaquePointer_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.DataSource.annotatedFeatures()()
{
  v50 = v0;
  v51 = v1;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
  v2 = *(*(v39 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v37 = v35;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v48 = v35;
  v42 = type metadata accessor for AnyColumn(0);
  v41 = *(v42 - 8);
  v9 = *(v41 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v36 = v35;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v43 = *(v44 - 8);
  v12 = *(v43 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v40 = v35;
  v15 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v46 = type metadata accessor for DataFrame(0);
  v47 = *(v46 - 8);
  v19 = *(v47 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLSoundClassifier.DataSource(v51, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v35, v15);
  if (EnumCaseMultiPayload == 3)
  {
    v49 = v5;
    v25 = v36;
    v26 = v37;
    v45 = v38;
    v51 = v39;
    DataFrame.init(_:)(v35);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      outlined destroy of MLSoundClassifier.DataSource(v35);
      MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n = 0;
      goto LABEL_9;
    }

    v49 = v5;
    v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    v24 = *(v23 + 48);
    v25 = *&v35[v24];
    v26 = *&v35[v24 + 8];
    v27 = *(v23 + 64);
    v45 = *&v35[v27];
    v51 = *&v35[v27 + 8];
    (*(v47 + 32))(v35, v35, v46);
  }

  v28 = v36;
  DataFrame.subscript.getter(v25, v26);
  v26;
  MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n = v40;
  v30 = v50;
  static MLSoundClassifier.convertFeatures(_:)(v28);
  if (v30)
  {
    v51;
    (*(v41 + 8))(v28, v42);
    (*(v47 + 8))(v35, v46);
  }

  else
  {
    (*(v41 + 8))(v28, v42);
    v32 = v51;
    DataFrame.subscript.getter(v45, v51, &type metadata for String);
    v32;
    v50 = v35;
    v33 = v37;
    (*(v43 + 16))(v37, MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n, v44);
    v34 = v38;
    (*(v38 + 16))(v33 + *(v39 + 52), v48, v49);
    MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVy6CoreML13MLShapedArrayVySfGGAJySSGG_18CreateMLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n(v33);
    outlined destroy of Any?(v33, &demangling cache variable for type metadata for Zip2Sequence<Column<MLShapedArray<Float>>, Column<String>>);
    (*(v34 + 8))(v48, v49);
    (*(v43 + 8))(v40, v44);
    (*(v47 + 8))(v50, v46);
  }

LABEL_9:
  v31.value._rawValue = MLComponents16AnnotatedFeatureVyANSSGs5NeverOTg503_s6i4ML13kl13VySfGSgSSSg18m14MLComponents16opt21ADSSGIgngr_AE_AFtAJs5q43OIegnrzr_TR03_s8e75ML17MLSoundClassifierV10g64SourceO17annotatedFeaturesSay0A12MLComponents16gh4Vy04a4B013cD30tU36GSSGGSgyKFAnMSg_SSSgtXEfU_Tf3nnnpf_nTf1cn_n;
  return v31;
}

uint64_t static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = v3;
  v56 = a3;
  *&v54 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v49 = *(v43 - 8);
  v4 = *(v49 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v41;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v45 = &v41;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v50 = &v41;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v44 = *(v51 - 8);
  v11 = *(v44 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v52 = &v41;
  v14 = type metadata accessor for AnyColumn(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v53 = &v41;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v57 = a2;
  DataFrame.subscript.getter(a2, v56);
  v21 = AnyColumn.wrappedElementType.getter();
  v22 = *(v15 + 8);
  v22(&v41, v14);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
  if (swift_dynamicCastMetatype(v21, v23))
  {
    v24 = v56;
    DataFrame.subscript.getter(v57, v56, v23);
    v47 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v25 = v50;
    v26 = v55;
    Column.map<A>(_:)(closure #1 in static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:), 0, v51);
    v55 = v26;
    v27 = v46;
    v28 = v25;
    v29 = v43;
    (*(v49 + 16))(v46, v28, v43);
    v48 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLMultiArray> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLMultiArray>, &protocol conformance descriptor for Column<A>);
    swift_bridgeObjectRetain_n(v24, 2);
    v30 = v45;
    Column.init<A>(name:contents:)(v57, v24, v27, v47, v29, v48);
    v31 = v53;
    Column.eraseToAnyColumn()(v29);
    v32 = *(v49 + 8);
    v32(v30, v29);
    DataFrame.subscript.setter(v31, v57, v56);
    v32(v50, v29);
    return (*(v44 + 8))(v52, v51);
  }

  else
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v34._object = "of labels missing files: " + 0x8000000000000000;
    v34._countAndFlagsBits = 0xD000000000000062;
    String.append(_:)(v34);
    v35 = v53;
    DataFrame.subscript.getter(v57, v56);
    v36 = AnyColumn.wrappedElementType.getter();
    v22(v35, v14);
    v37 = _typeName(_:qualified:)(v36, 0);
    v39 = v38;
    v34._countAndFlagsBits = v37;
    v34._object = v38;
    String.append(_:)(v34);
    v39;
    v34._countAndFlagsBits = 46;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v54 = v42;
    v34._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34._object, 0, 0);
    *v40 = v54;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v34._object);
  }
}

void *specialized stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v71 = a2;
  v72 = a1;
  v77 = type metadata accessor for URL(0);
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  a3;
  v89 = specialized _copyCollectionToContiguousArray<A>(_:)(a3);
  specialized MutableCollection<>.sort(by:)(&v89);
  v81 = v3;
  if (v3)
  {

    BUG();
  }

  a3;
  v9 = v89;
  v74 = *(v89 + 2);
  if (v74)
  {
    v73 = v89 + 32;
    v10 = 0;
    v88 = _swiftEmptyArrayStorage;
    v76 = a3;
    v69 = &v64;
    v84 = v5;
    v78 = v89;
    while (1)
    {
      if (v10 >= *(v9 + 2))
      {
        BUG();
      }

      v75 = v10;
      v11 = 16 * v10;
      v12 = *&v73[v11];
      v13 = *&v73[v11 + 8];
      swift_bridgeObjectRetain_n(v13, 2);
      v80 = v12;
      v14 = specialized Dictionary.subscript.getter(v12, v13, a3);
      v86 = v13;
      v13;
      if (!v14)
      {
        BUG();
      }

      v82 = v14;
      v15 = specialized _copyCollectionToContiguousArray<A>(_:)(0, *(v14 + 16));
      v16 = v72;
      v17 = v81;
      v18 = specialized randomSplit<A>(indices:proportions:generator:)(v15, v72, v71);
      v81 = v17;
      if (v17)
      {
        break;
      }

      v85 = v18;

      v70 = *(v16 + 16);
      if (v70)
      {
        v19 = 0;
        v20 = v84;
        v21 = v88;
        v22 = v85;
        do
        {
          v23 = v21[2] <= v19;
          v24 = v21;
          v83 = v19;
          if (v23)
          {
            v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
            v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v25, &protocol witness table for String);
            if (!swift_isUniquelyReferenced_nonNull_native(v24))
            {
              v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
            }

            v27 = v24[2];
            v19 = v83;
            if (v24[3] >> 1 <= v27)
            {
              v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24[3] >= 2uLL, v27 + 1, 1, v24);
              v19 = v83;
              v24 = v61;
            }

            v22 = v85;
            v24[2] = v27 + 1;
            v24[v27 + 4] = v26;
            v20 = v84;
          }

          if (v19 >= *(v22 + 16))
          {
            BUG();
          }

          v28 = *(v22 + 8 * v19 + 32);
          v29 = *(v28 + 16);
          v87 = _swiftEmptyArrayStorage;
          if (v29)
          {
            v88 = v24;
            v89 = _swiftEmptyArrayStorage;
            v28;
            v66 = v29;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
            v87 = v89;
            v67 = (*(v20 + 80) + 32) & ~*(v20 + 80);
            v68 = v67 + v82;
            v30 = 0;
            v31 = v77;
            v65 = v28;
            do
            {
              v32 = *(v28 + 8 * v30 + 32);
              if (v32 < 0)
              {
                BUG();
              }

              if (v32 >= *(v82 + 16))
              {
                BUG();
              }

              v79 = *(v20 + 72);
              v33 = v69;
              (*(v20 + 16))(v69, v68 + v79 * v32, v31);
              v34 = v87;
              v89 = v87;
              v35 = v20;
              v36 = *(v87 + 2);
              v37 = *(v87 + 3);
              v38 = v36 + 1;
              if (v37 >> 1 <= v36)
              {
                v87 = (v36 + 1);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 >= 2, v38, 1);
                v38 = v87;
                v35 = v84;
                v31 = v77;
                v34 = v89;
              }

              ++v30;
              *(v34 + 2) = v38;
              v87 = v34;
              v39 = &v34[v67 + v79 * v36];
              v20 = v35;
              (*(v35 + 32))(v39, v33, v31);
              v28 = v65;
            }

            while (v66 != v30);
            v65;
            v24 = v88;
          }

          v86;
          if (!swift_isUniquelyReferenced_nonNull_native(v24))
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          }

          if (v83 >= v24[2])
          {
            BUG();
          }

          v40 = v83;
          LOBYTE(v79) = swift_isUniquelyReferenced_nonNull_native(v24[v83 + 4]);
          v89 = v24[v40 + 4];
          v41 = v89;
          v88 = v24;
          v24[v40 + 4] = 0x8000000000000000;
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v86);
          v44 = (v42 & 1) == 0;
          v45 = __OFADD__(*(v41 + 2), v44);
          v46 = *(v41 + 2) + v44;
          if (v45)
          {
            BUG();
          }

          v47 = v42;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v79, v46))
          {
            v48 = v86;
            v43 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v86);
            LOBYTE(v51) = v51 & 1;
            if ((v47 & 1) != v51)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v48, v51, v49, v50);
              BUG();
            }
          }

          v52 = v47;
          a3 = v76;
          v53 = v89;
          if (v52)
          {
            v54 = *(v89 + 7);
            *(v54 + 8 * v43);
            *(v54 + 8 * v43) = v87;
            v86;
          }

          else
          {
            *&v89[8 * (v43 >> 6) + 64] |= 1 << v43;
            v55 = *(v53 + 6);
            v56 = 16 * v43;
            *(v55 + v56) = v80;
            *(v55 + v56 + 8) = v86;
            *(*(v53 + 7) + 8 * v43) = v87;
            v57 = *(v53 + 2);
            v45 = __OFADD__(1, v57);
            v58 = v57 + 1;
            if (v45)
            {
              BUG();
            }

            *(v53 + 2) = v58;
          }

          v21 = v88;
          v59 = v83;
          v88[v83 + 4] = v53;
          v19 = v59 + 1;
          v20 = v84;
          v60 = v75;
          v22 = v85;
        }

        while (v19 != v70);
      }

      else
      {
        v21 = v88;
        v60 = v75;
        v22 = v85;
      }

      v88 = v21;
      v62 = v22;
      v86;
      v82;
      v62;
      v10 = v60 + 1;
      v9 = v78;
      if (v60 + 1 == v74)
      {

        return v88;
      }
    }

    v88;

    v82;
    v86;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t specialized randomSplit<A>(indices:proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v7 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v59 = *(a2 + 16);
  v5 = COERCE_DOUBLE(specialized Sequence<>.min()(a2));
  if (v6)
  {
    BUG();
  }

  if (v5 < 0.0)
  {
    v3 = 0xD00000000000002ALL;
    v7 = "";
LABEL_16:
    v18 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v18, 0, 0);
    *v19 = v3;
    *(v19 + 8) = v7 | 0x8000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 0;
    return swift_willThrow();
  }

  v8 = COERCE_DOUBLE(specialized Sequence<>.max()(a2));
  if (v9)
  {
    BUG();
  }

  if (v8 <= 0.0)
  {
    v3 = 0xD00000000000002DLL;
    v7 = "e proportions are allowed.";
    goto LABEL_16;
  }

  v10 = 0;
  v55 = *(a1 + 16);
  v56 = specialized _copyCollectionToContiguousArray<A>(_:)(0, v55);
  specialized MutableCollection<>.shuffle<A>(using:)(a3);
  v11 = 0.0;
  do
  {
    v11 = v11 + *(a2 + 8 * v10++ + 32);
  }

  while (v59 != v10);
  v12 = 0;
  v60 = v11;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
  v13 = a2;
  v14 = v59;
  v15 = _swiftEmptyArrayStorage[2];
  do
  {
    v16 = *(v13 + 8 * v12 + 32);
    v17 = v15 + 1;
    if (_swiftEmptyArrayStorage[3] >> 1 <= v15)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v17, 1);
      v11 = v60;
      v17 = v15 + 1;
      v13 = a2;
      v14 = v59;
    }

    ++v12;
    _swiftEmptyArrayStorage[2] = v17;
    *&_swiftEmptyArrayStorage[v15 + 4] = v16 / v11;
    v15 = v17;
  }

  while (v14 != v12);
  v63 = v17;
  _swiftEmptyArrayStorage;
  v21 = 0;
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v23 = v22[2];
  v24 = 8 * v23;
  v25 = &_swiftEmptyArrayStorage[4];
  do
  {
    if (v21 + v23)
    {
      v26 = *(&v22[v21 + 3] + v24);
    }

    else
    {
      v26 = 0;
    }

    v27 = *&v25[v21];
    v28 = v23 + v21 + 1;
    if (v22[3] >> 1 <= (v21 + v23))
    {
      v29 = v22[3] >= 2uLL;
      v30 = v22;
      v61 = v23;
      v67 = v24;
      v31 = v25;
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v23 + v21 + 1, 1, v30);
      v26 = *&v26.f64[0];
      v25 = v31;
      v24 = v67;
      v23 = v61;
      v17 = v63;
      v22 = v32;
    }

    v22[2] = v28;
    *(&v22[v21++ + 4] + v24) = v27 + v26.f64[0];
  }

  while (v17 != v21);
  _swiftEmptyArrayStorage, 2;
  a1;
  ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sis5NeverOTg5058_s8CreateML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n(v22, a1, v26);
  v22;
  v34 = 0;
  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  v62 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  do
  {
    if (v35 >= ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n[2])
    {
      BUG();
    }

    v68 = v35;
    if (v34 >= ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n[v35 + 4])
    {
      v37 = _swiftEmptyArrayStorage;
    }

    else
    {
      v64 = v36;
      v57 = v34;
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v38 = v34;
      v39 = v68;
      v36 = v64;
      v40 = v62;
      v41 = a1;
      v42 = v55;
      v43 = v56;
      do
      {
        if (v38 < 0)
        {
          BUG();
        }

        if (v34 >= v43[2])
        {
          BUG();
        }

        v44 = v43[v34 + 4];
        if (v44 >= v42)
        {
          BUG();
        }

        v45 = *(v41 + 8 * v44 + 32);
        v46 = v37[2];
        if (v37[3] >> 1 <= v46)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37[3] >= 2uLL, v46 + 1, 1, v37);
          v38 = v57;
          v39 = v68;
          v36 = v64;
          v40 = v62;
          v43 = v56;
          v42 = v55;
          v41 = a1;
        }

        v37[2] = v46 + 1;
        v37[v46 + 4] = v45;
        ++v34;
      }

      while (v34 < v40[v39 + 4]);
    }

    v65 = v37;
    v47 = v36;
    if (swift_isUniquelyReferenced_nonNull_native(v36))
    {
      v36 = v47;
    }

    else
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 16) + 1, 1, v47);
    }

    v48 = v36[2];
    v49 = v59;
    ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = v62;
    v50 = v68;
    v51 = v65;
    if (v36[3] >> 1 <= v48)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2uLL, v48 + 1, 1, v36);
      v51 = v65;
      v50 = v68;
      ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = v62;
      v49 = v59;
      v36 = v52;
    }

    v35 = v50 + 1;
    v36[2] = v48 + 1;
    v36[v48 + 4] = v51;
  }

  while (v35 != v49);
  v53 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  v54 = v36;
  v53;

  return v54;
}

uint64_t MLSoundClassifier.DataSource.labeledSounds()()
{
  *&v101 = v0;
  v109 = v1;
  v2 = type metadata accessor for UTType(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v105 = &v101;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v106 = &v101;
  v107 = type metadata accessor for URL(0);
  v108 = *(v107 - 8);
  v9 = v108[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v103 = &v101;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v110 = &v101;
  v14 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  outlined init with copy of MLSoundClassifier.DataSource(v109, &v101);
  switch(swift_getEnumCaseMultiPayload(&v101, v14))
  {
    case 0u:
      v109 = v2;
      v18 = v110;
      (v108[4])(v110, &v101, v107);
      v19 = v106;
      static UTType.audio.getter();
      v20 = v101;
      v21 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v18, v19);
      v22 = v20;
      if (v20)
      {
        (*(v3 + 8))(v106, v109);
        v23 = v110;
        return (v108[1])(v23, v107);
      }

      v26 = v21;
      (*(v3 + 8))(v106, v109);
      v37 = v110;
      goto LABEL_13;
    case 1u:
      v109 = v2;
      v33 = v103;
      (v108[4])(v103, &v101, v107);
      v34 = v105;
      static UTType.audio.getter();
      v35 = v101;
      v36 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v33, v34);
      v22 = v35;
      if (!v35)
      {
        v26 = v36;
        (*(v3 + 8))(v105, v109);
        v37 = v103;
LABEL_13:
        (v108[1])(v37, v107);
LABEL_14:
        v38 = 1 << *(v26 + 32);
        v39 = ~(-1 << v38);
        if (v38 >= 64)
        {
          v39 = -1;
        }

        v40 = v26[4] & v39;
        v104 = (v38 + 63) >> 6;
        v108 = _swiftEmptyDictionarySingleton;
        v41 = 0;
        v110 = v26;
        while (1)
        {
          *&v101 = v22;
          if (!v40)
          {
            v42 = v41 + 1;
            if (__OFADD__(1, v41))
            {
              BUG();
            }

            if (v42 >= v104)
            {
LABEL_45:

              v69 = v108;
              v108;
              v70 = specialized _NativeDictionary.filter(_:)(v69);
              v69;
              v71 = 1 << *(v70 + 32);
              v72 = ~(-1 << v71);
              if (v71 >= 64)
              {
                v72 = -1;
              }

              v73 = v70[8] & v72;
              v110 = ((v71 + 63) >> 6);
              v103 = ("tted text file " + 0x8000000000000000);
              v106 = v70;

              v74 = 0;
              *&v101 = v22;
              while (1)
              {
                if (v73)
                {
                  v75 = v74;
                  v76 = v106;
                }

                else
                {
                  v77 = v74 + 1;
                  v76 = v106;
                  if (__OFADD__(1, v74))
                  {
                    BUG();
                  }

                  if (v77 >= v110)
                  {
LABEL_69:

                    if (*(v76 + 16))
                    {
                      v108;
                      *&v102 = 0;
                      *(&v102 + 1) = 0xE000000000000000;
                      _StringGuts.grow(_:)(69);
                      v91._object = "eature data sources." + 0x8000000000000000;
                      v91._countAndFlagsBits = 0xD000000000000017;
                      String.append(_:)(v91);
                      v92 = specialized Collection.first.getter(v76);
                      if (!v93)
                      {
                        v92 = 0;
                      }

                      v94._object = 0xE000000000000000;
                      if (v93)
                      {
                        v94._object = v93;
                      }

                      v94._countAndFlagsBits = v92;
                      String.append(_:)(v94);
                      v94._object;
                      v95._object = "Missing data for label " + 0x8000000000000000;
                      v95._countAndFlagsBits = 0xD000000000000029;
                      String.append(_:)(v95);
                      v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
                      v97 = Dictionary.Keys.description.getter(v76, &type metadata for String, v96, &protocol witness table for String);
                      v99 = v98;
                      v95._countAndFlagsBits = v97;
                      v95._object = v98;
                      String.append(_:)(v95);
                      v99;
                      v95._countAndFlagsBits = 46;
                      v95._object = 0xE100000000000000;
                      String.append(_:)(v95);
                      v101 = v102;
                      v95._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                      swift_allocError(&type metadata for MLCreateError, v95._object, 0, 0);
                      *v100 = v101;
                      *(v100 + 16) = 0;
                      *(v100 + 32) = 0;
                      *(v100 + 48) = 0;
                      swift_willThrow(&type metadata for MLCreateError, v95._object);
                    }

                    else
                    {

                      return v108;
                    }
                  }

                  v73 = *(v106 + v77 + 8);
                  if (v73)
                  {
                    v75 = v74 + 1;
                  }

                  else
                  {
                    v75 = v74 + 2;
                    if (v74 + 2 >= v110)
                    {
                      goto LABEL_69;
                    }

                    v73 = *(v106 + v77 + 9);
                    if (!v73)
                    {
                      v75 = v74 + 3;
                      if (v74 + 3 >= v110)
                      {
                        goto LABEL_69;
                      }

                      v73 = *(v106 + v77 + 10);
                      if (!v73)
                      {
                        v75 = v74 + 4;
                        if (v74 + 4 >= v110)
                        {
                          goto LABEL_69;
                        }

                        v73 = *(v106 + v77 + 11);
                        if (!v73)
                        {
                          v75 = v74 + 5;
                          if (v74 + 5 >= v110)
                          {
                            goto LABEL_69;
                          }

                          v73 = *(v106 + v77 + 12);
                          if (!v73)
                          {
                            v75 = v74 + 6;
                            if (v74 + 6 >= v110)
                            {
                              goto LABEL_69;
                            }

                            v73 = *(v106 + v77 + 13);
                            if (!v73)
                            {
                              v78 = v74 + 7;
                              do
                              {
                                if (v78 >= v110)
                                {
                                  goto LABEL_69;
                                }

                                v73 = *(v106 + v78++ + 8);
                              }

                              while (!v73);
                              v75 = v78 - 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                _BitScanForward64(&v79, v73);
                v109 = (v73 - 1) & v73;
                v80 = *(v76 + 48);
                v107 = v75;
                v81 = (v75 << 10) | (16 * v79);
                v82 = *(v80 + v81);
                v83 = *(v80 + v81 + 8);
                *&v102 = 0;
                *(&v102 + 1) = 0xE000000000000000;
                v83;
                _StringGuts.grow(_:)(29);
                *(&v102 + 1);
                *&v102 = 0xD000000000000019;
                *(&v102 + 1) = v103;
                v84._countAndFlagsBits = v82;
                v84._object = v83;
                String.append(_:)(v84);
                v83;
                v84._countAndFlagsBits = 11815;
                v84._object = 0xE200000000000000;
                String.append(_:)(v84);
                v85 = v102;
                LOBYTE(v105) = static os_log_type_t.error.getter();
                v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
                v87 = swift_allocObject(v86, 64, 7);
                *(v87 + 16) = 1;
                *(v87 + 24) = 2;
                *(v87 + 56) = &type metadata for String;
                *(v87 + 32) = v85;
                BYTE8(v85);
                print(_:separator:terminator:)(v87, 32, 0xE100000000000000, 10, 0xE100000000000000);
                v87;
                type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
                v88 = static OS_os_log.default.getter(0);
                v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
                v90 = swift_allocObject(v89, 72, 7);
                *(v90 + 16) = 1;
                *(v90 + 24) = 2;
                *(v90 + 56) = &type metadata for String;
                *(v90 + 64) = lazy protocol witness table accessor for type String and conformance String();
                *(v90 + 32) = v85;
                BYTE8(v85);
                os_log(_:dso:log:type:_:)("%@\n", 3, 2, &dword_0, v88, v105, v90);
                *(&v85 + 1);
                v84._countAndFlagsBits = v88;
                v73 = v109;

                v90;
                v74 = v107;
              }
            }

            v40 = *(v26 + v42 + 8);
            if (v40)
            {
              ++v41;
            }

            else
            {
              v43 = (v41 + 2);
              if (v41 + 2 >= v104)
              {
                goto LABEL_45;
              }

              v40 = *(v26 + v42 + 9);
              if (v40)
              {
                goto LABEL_32;
              }

              v43 = (v41 + 3);
              if (v41 + 3 >= v104)
              {
                goto LABEL_45;
              }

              v40 = *(v26 + v42 + 10);
              if (v40)
              {
                goto LABEL_32;
              }

              v43 = (v41 + 4);
              if (v41 + 4 >= v104)
              {
                goto LABEL_45;
              }

              v40 = *(v26 + v42 + 11);
              if (v40)
              {
                goto LABEL_32;
              }

              v43 = (v41 + 5);
              if (v41 + 5 >= v104)
              {
                goto LABEL_45;
              }

              v40 = *(v26 + v42 + 12);
              if (v40)
              {
                goto LABEL_32;
              }

              v43 = (v41 + 6);
              if (v41 + 6 >= v104)
              {
                goto LABEL_45;
              }

              v40 = *(v26 + v42 + 13);
              if (v40)
              {
LABEL_32:
                v41 = v43;
              }

              else
              {
                v68 = v41 + 7;
                do
                {
                  if (v68 >= v104)
                  {
                    goto LABEL_45;
                  }

                  v40 = *(v26 + v68++ + 8);
                }

                while (!v40);
                *&v101 = v22;
                v41 = v68 - 1;
              }
            }
          }

          v103 = v40;
          _BitScanForward64(&v44, v40);
          v106 = v41;
          v45 = v44 | (v41 << 6);
          v46 = *(*(v26 + 7) + 8 * v45);
          v45 *= 16;
          v47 = *(v26 + 6);
          v48 = *(v47 + v45);
          v49 = *(v47 + v45 + 8);
          v49;
          v46;
          v105 = static _AudioUtilities.validateAudioURLs(from:)(v46);
          v46;
          v50 = v108;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v108);
          *&v102 = v50;
          v107 = v48;
          v109 = v49;
          v53 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49);
          v54 = (v52 & 1) == 0;
          v55 = __OFADD__(v50[2], v54);
          v56 = v50[2] + v54;
          if (v55)
          {
            BUG();
          }

          v57 = v52;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
          {
            v58 = v109;
            v53 = specialized __RawDictionaryStorage.find<A>(_:)(v107, v109);
            LOBYTE(v61) = v61 & 1;
            if ((v57 & 1) != v61)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v58, v61, v59, v60);
              BUG();
            }
          }

          v26 = v110;
          v62 = v102;
          v108 = v102;
          if (v57)
          {
            v63 = *(v102 + 56);
            *(v63 + 8 * v53);
            *(v63 + 8 * v53) = v105;
            v109;
          }

          else
          {
            *(v102 + 8 * (v53 >> 6) + 64) |= 1 << v53;
            v64 = v62[6];
            v65 = 16 * v53;
            *(v64 + v65) = v107;
            *(v64 + v65 + 8) = v109;
            *(v62[7] + 8 * v53) = v105;
            v66 = v62[2];
            v55 = __OFADD__(1, v66);
            v67 = v66 + 1;
            if (v55)
            {
              BUG();
            }

            v62[2] = v67;
          }

          v40 = (v103 - 1) & v103;
          v22 = v101;
          v41 = v106;
        }
      }

      (*(v3 + 8))(v105, v109);
      v23 = v103;
      return (v108[1])(v23, v107);
    case 2u:
      v26 = v101;
      v22 = v101;
      goto LABEL_14;
    case 3u:
      v27 = *(&v102 + 1);
      v28 = v104;
      outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
      v28;
      v27;
      goto LABEL_7;
    case 4u:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *(&v101 + *(v24 + 48) + 8);
      *(&v101 + *(v24 + 64) + 8);
      v25 = type metadata accessor for DataFrame(0);
      (*(*(v25 - 8) + 8))(&v101, v25);
LABEL_7:
      v29 = static os_log_type_t.info.getter();
      v30._countAndFlagsBits = 0xD000000000000044;
      v30._object = "equires a training checkpoint." + 0x8000000000000000;
      log(_:type:)(v30, v29);
      v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
      return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v31, &protocol witness table for String);
  }
}

uint64_t MLSoundClassifier.DataSource.validate(modelParameters:)(uint64_t a1)
{
  v37 = v1;
  v36 = a1;
  v44 = type metadata accessor for DataFrame(0);
  v38 = *(v44 - 8);
  v3 = *(v38 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v45 = &v30;
  v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLSoundClassifier.DataSource(v2, &v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v30, v8);
  if (EnumCaseMultiPayload == 3)
  {
    v25 = v31;
    v46 = v32;
    v26 = v33;
    v39 = v34;
    v27 = v35;
    v43 = v36;
    v35 = v37;
    LOBYTE(v42) = v38;
    v41 = v34;
    LOBYTE(v31) = v31 & 1;
    v45 = v30;
    LODWORD(v47) = v25;
    outlined copy of Result<_DataTable, Error>(v30, v25);
    DataFrame.init(_:)(&v30);
    v28 = v37;
    MLSoundClassifier.DataSource.validateFeatures(dataFrame:featuresColumnName:labelsColumnName:)(&v30, v46, v26, v39, v27);
    if (v28)
    {
      (*(v38 + 8))(&v30, v44);
      outlined consume of Result<_DataTable, Error>(v45, v47);
      v27;
      v24 = v26;
      return v24;
    }

    (*(v38 + 8))(&v30, v44);
    v27;
    v26;
    v30 = v43;
    v31 = v35;
    LOBYTE(v32) = v42 & 1;
    v33 = v41;
    LOBYTE(v34) = v40 & 1;
    static MLSoundClassifier.validateFeatureExtractionParameters(featureExtractionParameters:parameters:)(&v30, v36);
    return outlined consume of Result<_DataTable, Error>(v45, v47);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    v14 = v13[12];
    v47 = *(&v30 + v14);
    v15 = *(&v30 + v14 + 8);
    v16 = v13[16];
    v46 = *(&v30 + v16);
    v17 = *(&v30 + v16 + 8);
    v18 = v13[20];
    v42 = *(&v30 + v18);
    v43 = *(&v30 + v18 + 8);
    LOBYTE(v41) = *(&v32 + v18);
    v40 = *(&v33 + v18);
    LOBYTE(v39) = *(&v34 + v18);
    v19 = v45;
    v20 = v38;
    (*(v38 + 32))(v45, &v30, v44);
    v21 = v47;
    v47 = v15;
    v22 = v46;
    v46 = v17;
    v23 = v37;
    MLSoundClassifier.DataSource.validateFeatures(dataFrame:featuresColumnName:labelsColumnName:)(v19, v21, v15, v22, v17);
    if (v23)
    {
      (*(v20 + 8))(v19, v44);
      v47;
      v24 = v46;
      return v24;
    }

    v46;
    v47;
    v30 = v42;
    v31 = v43;
    LOBYTE(v32) = v41 & 1;
    v33 = v40;
    LOBYTE(v34) = v39 & 1;
    static MLSoundClassifier.validateFeatureExtractionParameters(featureExtractionParameters:parameters:)(&v30, v36);
    return (*(v20 + 8))(v45, v44);
  }

  else
  {
    return outlined destroy of MLSoundClassifier.DataSource(&v30);
  }
}

uint64_t MLSoundClassifier.DataSource.validateFeatures(dataFrame:featuresColumnName:labelsColumnName:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v42._object = v5;
  v41 = a5;
  v42._countAndFlagsBits = a4;
  v39 = a3;
  v40._countAndFlagsBits = a2;
  v45 = type metadata accessor for AnyColumn(0);
  v44 = *(v45 - 8);
  v6 = *(v44 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v40._object = &v38;
  v9 = type metadata accessor for DataFrame.Rows(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *&v43 = a1;
  DataFrame.rows.getter(0, a2, v14, v15);
  v16 = specialized Collection.isEmpty.getter();
  (*(v10 + 8))(&v38, v9);
  if (v16)
  {
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = 0xD000000000000020;
    *(v18 + 8) = "umn is not of string type." + 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v17);
  }

  countAndFlagsBits = v40._countAndFlagsBits;
  v20._countAndFlagsBits = v40._countAndFlagsBits;
  v21 = v39;
  v20._object = v39;
  v22 = DataFrame.indexOfColumn(_:)(v20);
  if (v22.is_nil)
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    *(&v38 + 1);
    *&v38 = 0xD00000000000002FLL;
    *(&v38 + 1) = "Classifier.DataSource.swift" + 0x8000000000000000;
    v23._countAndFlagsBits = countAndFlagsBits;
    v23._object = v21;
    String.append(_:)(v23);
    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v43 = v38;
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v24 = v43;
    *(v24 + 16) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v17);
  }

  object = v40._object;
  DataFrame.subscript.getter(v22.value);
  v27 = AnyColumn.wrappedElementType.getter();
  if ((static MLSoundClassifier.DataSource.isNumericArray(_:)(v27) & 1) == 0)
  {
    v34 = " table does not contain column " + 0x8000000000000000;
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    v36 = 0xD000000000000040;
LABEL_10:
    *v35 = v36;
    *(v35 + 8) = v34;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    goto LABEL_11;
  }

  v28 = v42._countAndFlagsBits;
  v29._countAndFlagsBits = v42._countAndFlagsBits;
  v30 = v41;
  v29._object = v41;
  if (DataFrame.indexOfColumn(_:)(v29).is_nil)
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    *(&v38 + 1);
    *&v38 = 0xD00000000000002FLL;
    *(&v38 + 1) = "Classifier.DataSource.swift" + 0x8000000000000000;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);
    v31._countAndFlagsBits = 46;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v43 = v38;
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v33 = v43;
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    *(v33 + 48) = 0;
LABEL_11:
    swift_willThrow(&type metadata for MLCreateError, v32);
    return (*(v44 + 8))(object, v45);
  }

  v37._countAndFlagsBits = v28;
  v37._object = v30;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v37) & 1) == 0)
  {
    v34 = "multiarray type." + 0x8000000000000000;
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    v36 = 0xD00000000000003ALL;
    goto LABEL_10;
  }

  return (*(v44 + 8))(object, v45);
}

uint64_t static MLSoundClassifier.DataSource.isNumericArray(_:)(uint64_t a1)
{
  LOBYTE(v1) = 1;
  if (__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>) != a1 && type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float?]) != a1 && __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double?]) != a1)
  {
    LOBYTE(v1) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]) == a1;
  }

  return v1;
}

void *MLSoundClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = MLSoundClassifier.DataSource.labeledSounds()(a1, a2, a3);
  if (!v3)
  {
    v10 = a1;
    if (a2 < 0)
    {
      BUG();
    }

    v6 = v5;
    v7 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v7, 136, 7);
    v9 = MersenneTwisterGenerator.init(seed:)(a2);
    v4 = specialized stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(v10, &v9, v6);
    v6;
  }

  return v4;
}

void *MLSoundClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = MLSoundClassifier.DataSource.labeledSounds()(a1, a2, a3);
  if (!v4)
  {
    v7 = v6;
    v5 = stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(a1, a2, v6, a3, a4);
    v7;
  }

  return v5;
}

id closure #1 in static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:)(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  if (*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    v22 = v2;
    v6 = swift_allocObject(v5, 40, 7);
    v6[2] = 1;
    v6[3] = 3;
    v7 = *(v4 + 16);
    v8 = objc_allocWithZone(NSNumber);
    v21 = v7;
    v6[4] = [v8 initWithInteger:v7];
    objc_allocWithZone(MLMultiArray);
    v9 = @nonobjc MLMultiArray.init(shape:dataType:)(v6, 65600);
    if (v22)
    {
      swift_unexpectedError(v22, "CreateML/MLSoundClassifier.DataSource.swift", 43, 1, 341);
      BUG();
    }

    v19 = v3;
    v20 = v9;
    v17 = UnsafeMutableBufferPointer.init(_:)(v20, &type metadata for Double);
    v22 = 0;
    if (v21)
    {
      v10 = v4 + 32;
      v11 = 0;
      v18 = &type metadata for Any + 8;
      while (1)
      {
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for Any?);
        if (!v15)
        {
          break;
        }

        if (!swift_dynamicCast(&v16, v14, v18, &type metadata for Double, 6))
        {
          goto LABEL_9;
        }

        v12 = v16;
LABEL_10:
        *(v17 + 8 * v11++) = v12;
        v10 += 32;
        if (v21 == v11)
        {
          goto LABEL_11;
        }
      }

      outlined destroy of Any?(v14, &demangling cache variable for type metadata for Any?);
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_11:
    v3 = v19;
    result = v20;
  }

  else
  {
    result = 0;
  }

  *v3 = result;
  return result;
}

uint64_t type metadata accessor for MLSoundClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLSoundClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.DataSource);
  }

  return result;
}

uint64_t outlined init with copy of MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) <= 0xD || _stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xCuLL, 3uLL, 0, 0xFuLL, 4uLL, 0) && swift_stdlib_isStackAllocationSafe(8 * v4, 8))
  {
    v11 = &v11;
    v6 = alloca(v5);
    v7 = alloca(v5);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, &v11);
    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(&v11, v4, a1);
    if (v1)
    {
      swift_willThrow(&v11, v4);
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v9 = swift_slowAlloc(8 * v4, -1);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v9);
    v2 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, v4, a1);
    v9, -1, -1;
  }

  return v2;
}

uint64_t initializeBufferWithCopyOfBuffer for MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = v9 + ((v4 + 16) & ~v4);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = a3;
        v8 = 0;
        goto LABEL_10;
      case 1u:
        v24 = type metadata accessor for URL(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v26 = 1;
        goto LABEL_9;
      case 2u:
        v18 = *a2;
        *v3 = *a2;
        v18;
        v26 = 2;
        goto LABEL_9;
      case 3u:
        v19 = *a2;
        v20 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v20);
        *a1 = v19;
        *(a1 + 8) = v20;
        *(a1 + 16) = *(a2 + 16);
        v21 = *(a2 + 24);
        *(v3 + 24) = v21;
        *(v3 + 32) = *(a2 + 32);
        v22 = *(a2 + 40);
        *(v3 + 40) = v22;
        v23 = *(a2 + 64);
        *(v3 + 48) = *(a2 + 48);
        *(v3 + 64) = v23;
        *(v3 + 80) = *(a2 + 80);
        v21;
        v22;
        v26 = 3;
        goto LABEL_9;
      case 4u:
        v10 = type metadata accessor for DataFrame(0);
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v12 = v11[12];
        *(a1 + v12) = *(a2 + v12);
        v13 = *(a2 + v12 + 8);
        *(v3 + v12 + 8) = v13;
        v14 = v11[16];
        *(v3 + v14) = *(a2 + v14);
        v15 = *(a2 + v14 + 8);
        *(v3 + v14 + 8) = v15;
        v16 = v11[20];
        *(v3 + v16 + 32) = *(a2 + v16 + 32);
        v17 = *(a2 + v16);
        *(v3 + v16 + 16) = *(a2 + v16 + 16);
        *(v3 + v16) = v17;
        v13;
        v15;
        v26 = 4;
LABEL_9:
        v8 = v26;
        a1 = v3;
        v7 = a3;
LABEL_10:
        swift_storeEnumTagMultiPayload(a1, v7, v8);
        break;
      case 5u:
        JUMPOUT(0x23699CLL);
    }
  }

  return v3;
}

uint64_t destroy for MLSoundClassifier.DataSource(uint64_t *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
    case 1:
      v3 = type metadata accessor for URL(0);
      result = (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 2:
      result = *a1;
      break;
    case 3:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 2));
      a1[3];
      result = a1[5];
      break;
    case 4:
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *(a1 + *(v5 + 48) + 8);
      result = *(a1 + *(v5 + 64) + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = a3;
      v7 = 0;
      goto LABEL_8;
    case 1u:
      v22 = type metadata accessor for URL(0);
      (*(*(v22 - 8) + 16))(a1, a2, v22);
      v24 = 1;
      goto LABEL_7;
    case 2u:
      v16 = *a2;
      *v4 = *a2;
      v16;
      v24 = 2;
      goto LABEL_7;
    case 3u:
      v17 = *a2;
      v18 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v18);
      *a1 = v17;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 16);
      v19 = *(a2 + 24);
      *(v4 + 24) = v19;
      *(v4 + 32) = *(a2 + 32);
      v20 = *(a2 + 40);
      *(v4 + 40) = v20;
      v21 = *(a2 + 64);
      *(v4 + 48) = *(a2 + 48);
      *(v4 + 64) = v21;
      *(v4 + 80) = *(a2 + 80);
      v19;
      v20;
      v24 = 3;
      goto LABEL_7;
    case 4u:
      v8 = type metadata accessor for DataFrame(0);
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v10 = v9[12];
      *(a1 + v10) = *(a2 + v10);
      v11 = *(a2 + v10 + 8);
      *(v4 + v10 + 8) = v11;
      v12 = v9[16];
      *(v4 + v12) = *(a2 + v12);
      v13 = *(a2 + v12 + 8);
      *(v4 + v12 + 8) = v13;
      v14 = v9[20];
      *(v4 + v14 + 32) = *(a2 + v14 + 32);
      v15 = *(a2 + v14);
      *(v4 + v14 + 16) = *(a2 + v14 + 16);
      *(v4 + v14) = v15;
      v11;
      v13;
      v24 = 4;
LABEL_7:
      v7 = v24;
      a1 = v4;
      v6 = a3;
LABEL_8:
      swift_storeEnumTagMultiPayload(a1, v6, v7);
      return v4;
  }
}