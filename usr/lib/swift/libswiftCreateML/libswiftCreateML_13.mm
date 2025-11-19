uint64_t closure #1 in closure #1 in CMLTable.unstack(columnName:newColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D>(_:_:_:_:)(*(a2 + 16), a3, a1);
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

uint64_t closure #1 in CMLTable.pack(columnNames:newColumnName:type:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v14 = v5;
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  v10 = CMLFeatureValueType.rawValue.getter(a4);
  result = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v8, v9, a1, qword_33FFB8[v10], *(a5 + 16));
  if (!v6)
  {
    v12 = result;
    if (!result)
    {
      BUG();
    }

    v13 = type metadata accessor for CMLTable();
    result = swift_allocObject(v13, 24, 7);
    *(result + 16) = v12;
    *v14 = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.unpack(columnName:types:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = a2;
  v10 = a1;
  v11 = a3;
  v12 = a4;
  result = specialized String.withCString<A>(_:)(partial apply for closure #1 in closure #1 in CMLTable.unpack(columnName:types:limit:), v8, 0, 0xE000000000000000);
  if (!v5)
  {
    *v6 = result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CMLTable.unpack(columnName:types:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = v5;
  type metadata accessor for CMLFeatureValue();
  v8 = CMLFeatureValue.__allocating_init()(a1);
  v9 = specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(*(a2 + 16), a3, a1, *(a4 + 16), *(v8 + 16), *(a5 + 16));
  if (v6)
  {
  }

  v11 = v9;
  if (!v9)
  {
    BUG();
  }

  v12 = type metadata accessor for CMLTable();
  result = swift_allocObject(v12, 24, 7);
  *(result + 16) = v11;
  *v15 = result;
  return result;
}

uint64_t closure #1 in CMLParameters.featureValue(for:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = specialized handling<A, B, C>(_:_:_:)(*(a2 + 16), a1);
  if (!v3)
  {
    v6 = result;
    if (!result)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLFeatureValue();
    result = swift_allocObject(v7, 25, 7);
    *(result + 16) = v6;
    *(result + 24) = 1;
    *v4 = result;
  }

  return result;
}

uint64_t CMLParameters.featureValue(for:)(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = CMLParameters.Key.rawValue.getter(a1);
  v6 = v5;
  v7 = a3(a2, v3, v4, v5);
  v6;
  return v7;
}

uint64_t closure #1 in CMLTable.column(name:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t (*a4)(void))
{
  v7 = v4;
  result = a3(*(a2 + 16), a1);
  if (!v5)
  {
    v9 = result;
    if (!result)
    {
      BUG();
    }

    v10 = a4();
    result = swift_allocObject(v10, 24, 7);
    *(result + 16) = v9;
    *v7 = result;
  }

  return result;
}

uint64_t CMLParameters.add(key:column:)(char a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void, void *, void))
{
  v5 = CMLParameters.Key.rawValue.getter(a1);
  v7 = v6;

  specialized String.withCString<A>(_:)(v5, v7, v4, a2, a3, a4);
  return v7;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLAggregator.add(operation:toColumnName:fromColumnName:)(Swift::String operation, Swift::String toColumnName, Swift::String fromColumnName)
{
  *(&v4 + 1) = specialized handling<A, B, C, D, E>(_:_:_:_:_:);
  *&v4 = partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:);
  *(&v3 + 1) = partial apply for closure #1 in closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:);
  *&v3 = partial apply for closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:);
  CMLAggregator.add(operation:toColumnName:fromColumnName:)(operation._countAndFlagsBits, operation._object, toColumnName._countAndFlagsBits, toColumnName._object, fromColumnName._countAndFlagsBits, fromColumnName._object, v3, v4);
}

uint64_t closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  a5;

  return specialized String.withCString<A>(_:)(a2, a3, a4, a5, a6, a7, a1);
}

NSURL *closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10[16] = a4 & 1;
  v11 = a5;
  v12 = a6;
  v13 = a1;
  if ((a3 & 0x1000000000000000) != 0 || !(a3 & 0x2000000000000000 | a2 & 0x1000000000000000))
  {
    return _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:), v10, a2, a3, &type metadata for () + 8);
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v6 = _StringObject.sharedUTF8.getter(a2, a3);
      if (!v6)
      {
        v7 = 0;
        return partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v7);
      }
    }

    v7 = v6;
    return partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v7);
  }

  v9[0] = a2;
  v9[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  return closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v9, a4, a5, a6, a1);
}

NSURL *closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 16);
  if (a2)
  {
    return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v7, a4, a5, a1);
  }

  else
  {
    return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v7, a4, a5, a1);
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:)(Swift::String concatToColumnName, Swift::String keyColumnName, Swift::String valueColumnName)
{
  *(&v4 + 1) = specialized handling<A, B, C, D, E>(_:_:_:_:_:);
  *&v4 = partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:);
  *(&v3 + 1) = partial apply for closure #1 in closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:);
  *&v3 = partial apply for closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:);
  CMLAggregator.add(operation:toColumnName:fromColumnName:)(concatToColumnName._countAndFlagsBits, concatToColumnName._object, keyColumnName._countAndFlagsBits, keyColumnName._object, valueColumnName._countAndFlagsBits, valueColumnName._object, v3, v4);
}

uint64_t CMLAggregator.add(operation:toColumnName:fromColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, __int128 a8)
{
  a4;
  a6;

  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, a5, a6, v8, a7, *(&a7 + 1), a8, *(&a8 + 1));
}

uint64_t closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, void (*a8)(void, uint64_t, uint64_t, void *))
{
  a5;

  return specialized String.withCString<A>(_:)(a2, a3, a4, a5, a6, a1, a7, *(&a7 + 1), a8);
}

CGImageRef_optional __swiftcall CMLPlot.toImage()()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v2 = CGBitmapContextCreate(0, 0x2D0uLL, 0x226uLL, 8uLL, 0, DeviceRGB, 1u);
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 16);
    v5 = v2;
    specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v4, 0, v3, 0);

    Image = CGBitmapContextCreateImage(v5);
  }

  else
  {

    return 0;
  }

  return Image;
}

uint64_t closure #1 in CMLTable.init(from:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  result = a2(a1);
  if (!v3)
  {
    if (!result)
    {
      BUG();
    }

    *v4 = result;
  }

  return result;
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLModel.name()()
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

uint64_t closure #1 in CMLModel.callFunction(name:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v8 = type metadata accessor for CMLVariant();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    a1 = 0;
  }

  return a3(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned OpaquePointer)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v2 + 24);
  result = (*(v3 + 16))(*a1);
  *v4 = result;
  return result;
}

uint64_t partial apply for closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, void *))
{
  *(&v6 + 1) = a3;
  *&v6 = a2;
  return closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:)(a1, v4[2], v4[3], v4[4], v4[5], v4[6], v6, a4);
}

uint64_t _s8CreateML11MLDataTableV14ParsingOptionsVSgWOg(uint64_t a1)
{
  result = 0;
  if ((*(a1 + 16) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + 16) >> 1) + 1;
  }

  return result;
}

uint64_t outlined release of MLDataTable.ParsingOptions?(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 128);
  outlined consume of MLDataTable.ParsingOptions?(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  return a1;
}

uint64_t outlined consume of MLDataTable.ParsingOptions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a3)
  {
    a3, a2;
    a5, a2;
    a7, a2;
    a10, a2;
    a12, a2;
    a14, a2;
    return a15, a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMLFeatureValueType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFA)
    {
      goto LABEL_13;
    }

    v2 = a2 + 6;
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
      v5 = *a1 + (v4 << 8) - 7;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 7;
      v8 = v6 < 7;
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

uint64_t storeEnumTagSinglePayload for CMLFeatureValueType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFA)
  {
    v4 = a3 + 6;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF9)
  {
    v5 = a2 - 250;
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
          *a1 = a2 + 6;
        }

        break;
      case 5:
        JUMPOUT(0xC806CLL);
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CMLFeatureValueType and conformance CMLFeatureValueType()
{
  result = lazy protocol witness table cache variable for type CMLFeatureValueType and conformance CMLFeatureValueType;
  if (!lazy protocol witness table cache variable for type CMLFeatureValueType and conformance CMLFeatureValueType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for CMLFeatureValueType, &type metadata for CMLFeatureValueType);
    lazy protocol witness table cache variable for type CMLFeatureValueType and conformance CMLFeatureValueType = result;
  }

  return result;
}

uint64_t static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(uint64_t a1, __m128 a2)
{
  v8[0] = *a2.i64;
  v8[1] = v2;
  v4 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  outlined init with copy of MLTrainingSessionParameters(a1, v8, type metadata accessor for MLActionClassifier.DataSource);
  result = MLActionClassifier.FeatureExtractor.__allocating_init(source:)(v8, a2);
  if (!v3)
  {
    MLActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:)(v8[0]);
  }

  return result;
}

uint64_t MLActionClassifier.FeatureExtractor.__allocating_init(source:)(uint64_t a1, __m128 a2)
{
  MLActionClassifier.DataSource.videosWithAnnotations()(a2);
  result = outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActionClassifier.DataSource);
  if (!v2)
  {
    result = swift_allocObject(v3, 64, 7);
    *(result + 32) = _swiftEmptyArrayStorage;
    *(result + 40) = _swiftEmptyArrayStorage;
    *(result + 48) = _swiftEmptyArrayStorage;
    *(result + 56) = _swiftEmptyArrayStorage;
    *(result + 16) = v5;
    *(result + 24) = v6;
  }

  return result;
}

uint64_t MLActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:)(double a1)
{
  seconds[0] = v2;
  v274 = a1;
  v277 = v1;
  v298 = type metadata accessor for URL(0);
  v297 = *(v298 - 8);
  v4 = *(v297 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v302 = &v271;
  v322 = type metadata accessor for Date(0);
  v326 = *(v322 - 1);
  v7 = *(v326 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  *v325 = &v271;
  currentFileIndex = type metadata accessor for _TablePrinter(0);
  v10 = *(*(currentFileIndex - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v288 = &v271;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v309 = &v271;
  v329 = type metadata accessor for Logger(0);
  v327 = *(v329 - 8);
  v15 = *(v327 + 8);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v278 = &v271;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v299 = &v271;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v289 = &v271;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v283 = &v271;
  v24 = alloca(v15);
  v25 = alloca(v15);
  v310 = &v271;
  v26 = alloca(v15);
  v27 = alloca(v15);
  v285 = &v271;
  v28 = alloca(v15);
  v29 = alloca(v15);
  v284 = &v271;
  v30 = alloca(v15);
  v31 = alloca(v15);
  v311 = &v271;
  v32 = *(v3 + 16);
  v286 = v3;
  v33 = *(v3 + 24);
  v292 = v32;
  LOBYTE(v293) = v33;
  outlined copy of Result<_DataTable, Error>(v32, v33);
  outlined copy of Result<_DataTable, Error>(v32, v33);
  v34 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v292, v293);
  v321 = specialized RandomAccessCollection<>.distance(from:to:)(0, v34, v32, v33);
  outlined consume of Result<_DataTable, Error>(v32, v33);
  if (one-time initialization token for logger != -1)
  {
    swift_once(&one-time initialization token for logger, one-time initialization function for logger);
  }

  v35 = v329;
  v36 = __swift_project_value_buffer(v329, static MLActionClassifier.logger);
  v37 = v327;
  v38 = *(v327 + 2);
  v39 = v311;
  v303 = v36;
  v304 = v38;
  v38(v311, v36, v35);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v39;
    v43 = swift_slowAlloc(12, -1);
    *v43 = 134217984;
    *(v43 + 4) = v321;
    _os_log_impl(&dword_0, v40, v41, "Processing %ld annotated video clips", v43, 0xCu);
    v44 = v43;
    v39 = v42;
    v37 = v327;
    v44, -1, -1;
  }

  v45 = v39;
  v312 = *(v37 + 1);
  v312(v39, v329);
  v327 = "ml.handActionClassifier" + 0x8000000000000000;
  v46 = v309;
  v47 = v309 + *(currentFileIndex + 20);
  Date.init()(v45);
  *v46 = v321;
  type metadata accessor for OS_os_log();
  v48 = OS_os_log.init(subsystem:category:)(0xD000000000000023, "ctor" + 0x8000000000000000, 0x72705F656C626174, 0xED00007265746E69);
  v49 = currentFileIndex;
  v50 = *(currentFileIndex + 24);
  v276 = v48;
  *(v46 + v50) = v48;
  v51 = *(v49 + 28);
  *(v46 + v51) = 0xD000000000000015;
  *(v46 + v51 + 8) = v327;
  v52 = *v325;
  Date.init()(0xD000000000000023);
  v275 = v47;
  (*(v326 + 40))(v47, v52, v322);
  _TablePrinter.beginTable()();
  _TablePrinter.printRow(currentFileIndex:)(0);
  v53 = *(v286 + 24);
  v292 = *(v286 + 16);
  LOBYTE(v293) = v53;
  v280 = (v286 + 32);
  v281 = (v286 + 48);
  v282 = (v286 + 40);
  v279 = (v286 + 56);
  value_low = 0.0;
  v294 = 0;
  outlined copy of Result<_DataTable, Error>(v292, v53);
  value = kCMTimeZero.value;
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  epoch = kCMTimeZero.epoch;
  v307 = kCMTimeIndefinite.value;
  v315 = kCMTimeIndefinite.timescale;
  v316 = kCMTimeIndefinite.flags;
  v308 = kCMTimeIndefinite.epoch;
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()();
    if (!*&v319.timescale)
    {
      outlined consume of Result<_DataTable, Error>(v292, v293);
      static os_log_type_t.info.getter();
      v236 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v237 = swift_allocObject(v236, 72, 7);
      v237[2] = 1;
      v237[3] = 2;
      v237[7] = &type metadata for Int;
      v237[8] = &protocol witness table for Int;
      v237[4] = 3;
      os_log(_:dso:log:type:_:)("event: %lu", 10);
      v237;
      v238 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
      inited = swift_initStackObject(v238, v272);
      *(inited + 16) = 4;
      *(inited + 24) = 8;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v292 = *v282;
      v240 = alloca(24);
      v241 = alloca(32);
      v273 = &v292;
      v292;
      *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 56) = v242 & 1;
      v292;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v292 = *v281;
      v243 = alloca(24);
      v244 = alloca(32);
      v273 = &v292;
      v292;
      *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 88) = v245 & 1;
      v292;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v292 = *v280;
      v246 = alloca(24);
      v247 = alloca(32);
      v273 = &v292;
      v292;
      *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 120) = v248 & 1;
      v292;
      *(inited + 128) = 0x7461506F65646976;
      *(inited + 136) = 0xE900000000000068;
      v292 = *v279;
      v249 = alloca(24);
      v250 = alloca(24);
      v273 = &v292;
      v292;
      *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      *(inited + 152) = v251 & 1;
      v292;
      v252 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
      v253 = seconds[0];
      _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v252);
      if (v253 == 0.0)
      {
        v254 = v293;
        v255 = v277;
        *v277 = v292;
        *(v255 + 8) = v254;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v309, type metadata accessor for _TablePrinter);
    }

    currentFileIndex = v319.value;
    v55 = v319.epoch;
    v56 = v320;
    v57 = *(v319.epoch + 16) == 0;
    v321 = v319.epoch;
    v327 = *&v319.timescale;
    if (v57)
    {
      goto LABEL_116;
    }

    v55;

    v58 = specialized __RawDictionaryStorage.find<A>(_:)(0x7461506F65646976, 0xE900000000000068);
    if ((v59 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v55, v56);
      goto LABEL_116;
    }

    v60 = *(*(v55 + 56) + 8 * v58);

    v61 = seconds[0];
    v62 = CMLSequence.value(at:)(v60);
    if (v61 != 0.0)
    {
      v270 = v61;
      goto LABEL_129;
    }

    MLDataValue.init(_:)(v62, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v55, v56);
    v63 = v319.value;
    v64 = *&v319.timescale;
    if (LOBYTE(v319.epoch) != 2)
    {
      v256 = v319.epoch;
      goto LABEL_114;
    }

    if (!*(v55 + 16))
    {
      v256 = 2;
      goto LABEL_114;
    }

    *v325 = v319.value;
    v322 = *&v319.timescale;

    v55;

    v65 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6562616CLL, 0xE500000000000000);
    if ((v66 & 1) == 0)
    {
      break;
    }

    v67 = *(*(v55 + 56) + 8 * v65);

    v68 = CMLSequence.value(at:)(v67);
    MLDataValue.init(_:)(v68, value_low);

    v326 = v56;
    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v55, v56);
    if (LOBYTE(v319.epoch) != 2)
    {
      outlined consume of MLDataValue(v319.value, *&v319.timescale, v319.epoch);
      outlined consume of MLDataValue(*v325, v322, 2);
      v56 = v326;
      goto LABEL_116;
    }

    seconds[0] = 0.0;
    v296 = v319.value;
    v295 = *&v319.timescale;
    v69 = objc_opt_self(NSFileManager);
    v70 = [v69 defaultManager];
    v71 = v70;
    v72 = *v325;
    v73 = String._bridgeToObjectiveC()();
    v74 = [v71 fileExistsAtPath:v73];

    if (!v74)
    {
      outlined consume of MLDataValue(v296, v295, 2);
      v319.value = 0;
      *&v319.timescale = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      *&v319.timescale;
      v319.value = 0xD000000000000018;
      *&v319.timescale = "h or label string at row " + 0x8000000000000000;
      v267._countAndFlagsBits = v72;
      v268 = v322;
      v267._object = v322;
      String.append(_:)(v267);
      outlined consume of MLDataValue(v72, v268, 2);
      *seconds = *&v319.value;
      v267._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v267._object, 0, 0);
      *v269 = *seconds;
      *(v269 + 16) = 0;
      *(v269 + 32) = 0;
      *(v269 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v267._object);
      v262 = currentFileIndex;
      v263 = v327;
      v264 = v321;
      v265 = v326;
      goto LABEL_117;
    }

    URL.init(fileURLWithPath:)(v72, v322);
    v287 = URL.lastPathComponent.getter();
    v311 = v75;
    v76 = *(v286 + 16);
    if (*(v286 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v286 + 16), 1);
      v77 = tc_v1_flex_list_create(0);
      v78 = seconds[0];
      if (!v77)
      {
        BUG();
      }

      v79 = v77;
      v80 = type metadata accessor for CMLSequence();
      v81 = swift_allocObject(v80, 25, 7);
      *(v81 + 16) = v79;
      *(v81 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v76, 1);
    }

    else
    {
      v82 = *(v286 + 16);
      outlined copy of Result<_DataTable, Error>(v82, 0);
      _DataTable.columnNames.getter(v82);
      outlined consume of Result<_DataTable, Error>(v76, 0);
      v81 = v291;
      v78 = seconds[0];
    }

    v319.value = 0x7472617473;
    *&v319.timescale = 0xE500000000000000;
    v83 = alloca(24);
    v84 = alloca(32);
    v273 = &v319;
    v85 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v271, v81);
    seconds[0] = v78;

    if ((v85 & 1) == 0)
    {
      goto LABEL_51;
    }

    v86 = v321;
    v87 = v326;
    v88 = v327;
    if (!*(v321 + 16))
    {
      goto LABEL_45;
    }

    v86;

    v89 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if (v90)
    {
      v91 = *(*(v86 + 56) + 8 * v89);

      v92 = seconds[0];
      v93 = CMLSequence.value(at:)(v91);
      v94 = v86;
      v95 = v92;
      if (v92 != 0.0)
      {
        goto LABEL_126;
      }

      MLDataValue.init(_:)(v93, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v94, v87);
      v96 = v319.value;
      v97 = v329;
      seconds[0] = 0.0;
      if (LOBYTE(v319.epoch) == 1)
      {
        value_low = *&v319.value;
        if (*&v319.value >= 0.0)
        {
          goto LABEL_43;
        }

        v98 = v284;
        v304(v284, v303, v329);
        v99 = v322;
        outlined copy of MLDataValue(*v325, v322, 2u);
        v99;
        *&v100 = COERCE_DOUBLE(Logger.logObject.getter());
        v101 = static os_log_type_t.info.getter();
        log = v100;
        *type = v101;
        if (!os_log_type_enabled(v100, v101))
        {
          goto LABEL_101;
        }

        v102 = swift_slowAlloc(22, -1);
        v324 = swift_slowAlloc(32, -1);
        v319.value = v324;
        *v102 = 134218242;
        *(v102 + 4) = v96;
        *(v102 + 12) = 2080;
        v99;
        v103 = *v325;
        *(v102 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v325, v99, &v319.value);
        outlined consume of MLDataValue(v103, v99, 2);
        outlined consume of MLDataValue(v103, v99, 2);
        v99;
        v104 = log;
        _os_log_impl(&dword_0, log, type[0], "Start time %f specified in video file %s is negative, using 0.0 automatically.", v102, 0x16u);
        v105 = v324;
        __swift_destroy_boxed_opaque_existential_1Tm(v324);
        v105, -1, -1;
        v102, -1, -1;

        v106 = v284;
        goto LABEL_50;
      }

      outlined consume of MLDataValue(v319.value, *&v319.timescale, v319.epoch);
      v107 = v310;
      v86 = v321;
    }

    else
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v88, v86, v87);
      v97 = v329;
      v107 = v310;
    }

    if (!*(v86 + 16))
    {
      goto LABEL_46;
    }

    v108 = v327;

    v86;
    v109 = v326;

    v110 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if ((v111 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v108, v86, v109);
      v97 = v329;
      v107 = v310;
LABEL_35:
      if (*(v86 + 16))
      {
        v117 = v327;

        v86;
        v118 = v86;
        v119 = v326;

        v120 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
        if (v121)
        {
          v122 = *(*(v118 + 56) + 8 * v120);

          v123 = seconds[0];
          v124 = CMLSequence.value(at:)(v122);
          v125 = v123;
          if (v123 != 0.0)
          {
            goto LABEL_128;
          }

          MLDataValue.init(_:)(v124, value_low);

          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v118, v119);
          v126 = v319.value;
          v127 = *&v319.timescale;
          if (LOBYTE(v319.epoch) == 2)
          {
            static _VideoUtilities.getSecondsFromTimeString(_:)(*&v319.value);
            seconds[0] = 0.0;
            *&log = value_low;
            outlined consume of MLDataValue(v126, v127, 2);
            value_low = *&log;
LABEL_43:
            CMTimeMakeWithSeconds(&v319, value_low, 1000);
            log = v319.value;
            LODWORD(v324) = v319.timescale;
            *type = v319.flags;
            v128 = v319.epoch;
            goto LABEL_52;
          }

          seconds[0] = 0.0;
          outlined consume of MLDataValue(v319.value, *&v319.timescale, v319.epoch);
        }

        else
        {
          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v117, v118, v119);
        }

LABEL_45:
        v97 = v329;
        v107 = v310;
      }

LABEL_46:
      v304(v107, v303, v97);
      v129 = v311;
      swift_bridgeObjectRetain_n(v311, 2);
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc(12, -1);
        *&log = COERCE_DOUBLE(swift_slowAlloc(32, -1));
        v319.value = log;
        *v132 = 136315138;
        v129;
        *(v132 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v129, &v319.value);
        swift_bridgeObjectRelease_n(v129, 3);
        _os_log_impl(&dword_0, v130, v131, "Unsupported start time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping start time for file %s", v132, 0xCu);
        v133 = log;
        __swift_destroy_boxed_opaque_existential_1Tm(log);
        v133, -1, -1;
        v132, -1, -1;
      }

      else
      {

        swift_bridgeObjectRelease_n(v129, 2);
      }

      v106 = v310;
      goto LABEL_50;
    }

    v112 = *(*(v86 + 56) + 8 * v110);

    v113 = seconds[0];
    v114 = CMLSequence.value(at:)(v112);
    v115 = v86;
    v95 = v113;
    if (v113 != 0.0)
    {
LABEL_126:
      v270 = v95;
      goto LABEL_129;
    }

    MLDataValue.init(_:)(v114, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v115, v109);
    v116 = v319.value;
    v97 = v329;
    v107 = v310;
    seconds[0] = 0.0;
    if (LOBYTE(v319.epoch))
    {
      outlined consume of MLDataValue(v319.value, *&v319.timescale, v319.epoch);
      v86 = v321;
      goto LABEL_35;
    }

    if (v319.value >= 0)
    {
      value_low = SLODWORD(v319.value);
      goto LABEL_43;
    }

    v98 = v285;
    v304(v285, v303, v329);
    v99 = v322;
    outlined copy of MLDataValue(*v325, v322, 2u);
    v99;
    *&v219 = COERCE_DOUBLE(Logger.logObject.getter());
    v220 = static os_log_type_t.info.getter();
    log = v219;
    *type = v220;
    if (!os_log_type_enabled(v219, v220))
    {
LABEL_101:
      v225 = *v325;
      outlined consume of MLDataValue(*v325, v99, 2);
      outlined consume of MLDataValue(v225, v99, 2);

      v106 = v98;
      goto LABEL_50;
    }

    v221 = swift_slowAlloc(22, -1);
    v324 = swift_slowAlloc(32, -1);
    v319.value = v324;
    *v221 = 134218242;
    *(v221 + 4) = v116;
    *(v221 + 12) = 2080;
    v99;
    v222 = *v325;
    *(v221 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v325, v99, &v319.value);
    outlined consume of MLDataValue(v222, v99, 2);
    outlined consume of MLDataValue(v222, v99, 2);
    v99;
    v223 = log;
    _os_log_impl(&dword_0, log, type[0], "Start time %ld specified in video file %s is negative, using 0.0 automatically.", v221, 0x16u);
    v224 = v324;
    __swift_destroy_boxed_opaque_existential_1Tm(v324);
    v224, -1, -1;
    v221, -1, -1;

    v106 = v285;
LABEL_50:
    v312(v106, v329);
LABEL_51:
    log = value;
    LODWORD(v324) = timescale;
    *type = flags;
    v128 = epoch;
LABEL_52:
    v317 = v128;
    v134 = *(v286 + 16);
    if (*(v286 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v286 + 16), 1);
      v135 = tc_v1_flex_list_create(0);
      if (!v135)
      {
        BUG();
      }

      v136 = v135;
      v137 = type metadata accessor for CMLSequence();
      v138 = swift_allocObject(v137, 25, 7);
      *(v138 + 16) = v136;
      *(v138 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v134, 1);
    }

    else
    {
      v139 = *(v286 + 16);
      outlined copy of Result<_DataTable, Error>(v139, 0);
      _DataTable.columnNames.getter(v139);
      outlined consume of Result<_DataTable, Error>(v134, 0);
      v138 = v291;
    }

    v319.value = 6581861;
    *&v319.timescale = 0xE300000000000000;
    v140 = alloca(24);
    v141 = alloca(32);
    v273 = &v319;
    v142 = seconds[0];
    v143 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v271, v138);
    v144 = v142;

    if ((v143 & 1) == 0)
    {
      outlined consume of MLDataValue(*v325, v322, 2);
      v163 = v307;
      v164 = v315;
      v165 = v316;
      v166 = v308;
LABEL_65:
      v167 = v326;
LABEL_86:
      v145 = v321;
LABEL_87:
      v195 = log;
      v196 = *type;
      v197 = v324;
      v198 = v317;
      goto LABEL_88;
    }

    v145 = v321;
    if (!*(v321 + 16))
    {
      goto LABEL_73;
    }

    seconds[0] = v142;
    v146 = v327;

    v145;
    v147 = v326;

    v148 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
    if (v149)
    {
      v150 = *(*(v145 + 56) + 8 * v148);

      v151 = seconds[0];
      v152 = CMLSequence.value(at:)(v150);
      v144 = v151;
      if (v151 != 0.0)
      {
        goto LABEL_127;
      }

      MLDataValue.init(_:)(v152, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v145, v147);
      v153 = v319.value;
      v154 = v283;
      if (LOBYTE(v319.epoch) == 1)
      {
        if (*&v319.value >= 0.0)
        {
          v185 = *v325;
          v186 = v322;
          seconds[0] = *&v319.value;
LABEL_94:
          outlined consume of MLDataValue(v185, v186, 2);
          CMTimeMakeWithSeconds(&v319, seconds[0], 1000);
          v163 = v319.value;
          v164 = v319.timescale;
          v165 = v319.flags;
          v166 = v319.epoch;
        }

        else
        {
          seconds[0] = 0.0;
          v304(v283, v303, v329);
          v155 = v322;
          v322;
          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.info.getter();
          v300 = v156;
          *v301 = v157;
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc(22, -1);
            v290 = swift_slowAlloc(32, -1);
            v319.value = v290;
            *v158 = 134218242;
            *(v158 + 4) = v153;
            *(v158 + 12) = 2080;
            v155;
            v159 = *v325;
            *(v158 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v325, v155, &v319.value);
            outlined consume of MLDataValue(v159, v155, 2);
            outlined consume of MLDataValue(v159, v155, 2);
            v155;
            v160 = v300;
            _os_log_impl(&dword_0, v300, v301[0], "End time %f specified in video file %s is negative, using end of file automatically.", v158, 0x16u);
            v161 = v290;
            __swift_destroy_boxed_opaque_existential_1Tm(v290);
            v161, -1, -1;
            v158, -1, -1;

            v162 = v283;
          }

          else
          {
            v218 = *v325;
            outlined consume of MLDataValue(*v325, v155, 2);
            outlined consume of MLDataValue(v218, v155, 2);

            v162 = v154;
          }

          v312(v162, v329);
          v163 = v307;
          v164 = v315;
          v165 = v316;
          v166 = v308;
          v144 = seconds[0];
        }

        goto LABEL_65;
      }

      outlined consume of MLDataValue(v319.value, *&v319.timescale, v319.epoch);
      v145 = v321;
    }

    else
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v146, v145, v147);
      v144 = seconds[0];
    }

    if (!*(v145 + 16))
    {
      goto LABEL_73;
    }

    seconds[0] = v144;
    v168 = v327;

    v145;
    v169 = v326;

    v170 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
    if (v171)
    {
      v172 = *(*(v145 + 56) + 8 * v170);

      v173 = seconds[0];
      v174 = CMLSequence.value(at:)(v172);
      v144 = v173;
      if (v173 != 0.0)
      {
LABEL_127:
        v270 = v144;
        goto LABEL_129;
      }

      MLDataValue.init(_:)(v174, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v145, v169);
      v175 = v319.value;
      if (!LOBYTE(v319.epoch))
      {
        if (v319.value < 0)
        {
          seconds[0] = 0.0;
          v304(v289, v303, v329);
          v226 = v322;
          v322;
          v227 = Logger.logObject.getter();
          v228 = static os_log_type_t.info.getter();
          v300 = v227;
          *v301 = v228;
          if (os_log_type_enabled(v227, v228))
          {
            v229 = swift_slowAlloc(22, -1);
            v290 = swift_slowAlloc(32, -1);
            v319.value = v290;
            *v229 = 134218242;
            *(v229 + 4) = v175;
            *(v229 + 12) = 2080;
            v226;
            v230 = *v325;
            *(v229 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v325, v226, &v319.value);
            outlined consume of MLDataValue(v230, v226, 2);
            outlined consume of MLDataValue(v230, v226, 2);
            v226;
            v231 = v300;
            _os_log_impl(&dword_0, v300, v301[0], "End time %ld specified in video file %s is negative, using end of file automatically.", v229, 0x16u);
            v232 = v290;
            __swift_destroy_boxed_opaque_existential_1Tm(v290);
            v232, -1, -1;
            v233 = v229;
            v145 = v321;
            v233, -1, -1;
            v234 = v231;
          }

          else
          {
            v235 = *v325;
            outlined consume of MLDataValue(*v325, v226, 2);
            outlined consume of MLDataValue(v235, v226, 2);
            v234 = v300;
          }

          v312(v289, v329);
          v163 = v307;
          v164 = v315;
          v165 = v316;
          v166 = v308;
          v144 = seconds[0];
        }

        else
        {
          outlined consume of MLDataValue(*v325, v322, 2);
          CMTimeMakeWithSeconds(&v319, v175, 1000);
          v163 = v319.value;
          v164 = v319.timescale;
          v165 = v319.flags;
          v166 = v319.epoch;
        }

        v167 = v326;
        goto LABEL_87;
      }

      outlined consume of MLDataValue(v319.value, *&v319.timescale, v319.epoch);
LABEL_73:
      v169 = v326;
      goto LABEL_74;
    }

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v168, v145, v169);
    v144 = seconds[0];
LABEL_74:
    seconds[0] = v144;
    outlined consume of MLDataValue(*v325, v322, 2);
    if (*(v145 + 16))
    {
      v176 = v327;

      v145;

      v177 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
      if (v178)
      {
        v179 = *(*(v145 + 56) + 8 * v177);

        v180 = seconds[0];
        v181 = CMLSequence.value(at:)(v179);
        v182 = v169;
        v125 = v180;
        if (v180 != 0.0)
        {
LABEL_128:
          v270 = v125;
LABEL_129:
          swift_unexpectedError(*&v270, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v181, value_low);

        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v145, v182);
        v183 = v319.value;
        v184 = *&v319.timescale;
        if (LOBYTE(v319.epoch) == 2)
        {
          static _VideoUtilities.getSecondsFromTimeString(_:)(*&v319.value);
          v144 = 0.0;
          v185 = v183;
          v186 = v184;
          seconds[0] = value_low;
          goto LABEL_94;
        }

        seconds[0] = 0.0;
        outlined consume of MLDataValue(v319.value, *&v319.timescale, v319.epoch);
      }

      else
      {
        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v176, v145, v169);
      }

      v187 = v329;
      v188 = v299;
    }

    else
    {
      v187 = v329;
      v188 = v299;
    }

    v304(v188, v303, v187);
    v189 = v311;
    swift_bridgeObjectRetain_n(v311, 2);
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc(12, -1);
      v322 = swift_slowAlloc(32, -1);
      v319.value = v322;
      *v192 = 136315138;
      v189;
      *(v192 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v189, &v319.value);
      swift_bridgeObjectRelease_n(v189, 3);
      _os_log_impl(&dword_0, v190, v191, "Unsupported end time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping end time for file %s", v192, 0xCu);
      v193 = v322;
      __swift_destroy_boxed_opaque_existential_1Tm(v322);
      v194 = v193;
      v167 = v326;
      v194, -1, -1;
      v192, -1, -1;

      v312(v299, v329);
      v163 = v307;
      v164 = v315;
      v165 = v316;
      v166 = v308;
      v144 = seconds[0];
      goto LABEL_86;
    }

    swift_bridgeObjectRelease_n(v189, 2);
    v312(v299, v329);
    v163 = v307;
    v164 = v315;
    v165 = v316;
    v166 = v308;
    v144 = seconds[0];
    v145 = v321;
    v195 = log;
    v196 = *type;
    v197 = v324;
    v198 = v317;
    v167 = v326;
LABEL_88:
    v199 = static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(v302, v195, v197 | (v196 << 32), v198, v163, v164 | (v165 << 32), v274, v166);
    if (v144 != 0.0)
    {
      outlined consume of MLDataValue(v296, v295, 2);
      v311;
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v145, v167);
      (*(v297 + 8))(v302, v298);
      goto LABEL_118;
    }

    v200 = v199;
    seconds[0] = 0.0;
    v201 = v199[2];
    v202 = currentFileIndex;
    v322 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(currentFileIndex, v201);
    *v325 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v296, v295, v201);
    v203 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v287, v311, v201);
    specialized Array.append<A>(contentsOf:)(v200);
    specialized Array.append<A>(contentsOf:)(v322);
    specialized Array.append<A>(contentsOf:)(*v325);
    specialized Array.append<A>(contentsOf:)(v203);
    v204 = v202;
    v205 = v309;
    _TablePrinter.printRow(currentFileIndex:)(v204);
    v206 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v207 = swift_allocObject(v206, 72, 7);
    *(v207 + 16) = 1;
    *(v207 + 24) = 2;
    value_low = -Date.timeIntervalSinceNow.getter();
    *(v207 + 56) = &type metadata for Double;
    *(v207 + 64) = &protocol witness table for Double;
    *(v207 + 32) = value_low;
    v322 = String.init(format:_:)(1714826789, 0xE400000000000000, v207);
    v209 = v208;
    v210 = v278;
    v304(v278, v303, v329);
    v211 = v288;
    outlined init with copy of MLTrainingSessionParameters(v205, v288, type metadata accessor for _TablePrinter);
    v209;
    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.debug.getter();
    *v325 = v213;
    if (os_log_type_enabled(v212, v213))
    {
      v311 = v212;
      v214 = swift_slowAlloc(32, -1);
      v215 = swift_slowAlloc(32, -1);
      v319.value = v215;
      *v214 = 134218498;
      if (__OFADD__(1, currentFileIndex))
      {
        BUG();
      }

      *(v214 + 4) = currentFileIndex + 1;
      *(v214 + 12) = 2048;
      v216 = *v288;
      outlined destroy of MLActivityClassifier.ModelParameters(v288, type metadata accessor for _TablePrinter);
      *(v214 + 14) = v216;
      *(v214 + 22) = 2080;
      v209;
      *(v214 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v322, v209, &v319.value);
      swift_bridgeObjectRelease_n(v209, 3);
      v217 = v311;
      _os_log_impl(&dword_0, v311, v325[0], "Extracted features from %ld out of %ld annotated video clips, elapsed time: %s", v214, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v215);
      v215, -1, -1;
      v214, -1, -1;

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v321, v326);
      v312(v278, v329);
      (*(v297 + 8))(v302, v298);
    }

    else
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v211, type metadata accessor for _TablePrinter);
      swift_bridgeObjectRelease_n(v209, 2);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v321, v326);
      v312(v210, v329);
      (*(v297 + 8))(v302, v298);
    }
  }

  outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v327, v55, v56);
  v256 = 2;
  v63 = *v325;
  v64 = v322;
LABEL_114:
  outlined consume of MLDataValue(v63, v64, v256);
LABEL_116:
  v319.value = 0;
  *&v319.timescale = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v257._object = "Annotated Video Clips" + 0x8000000000000000;
  v257._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v257);
  v291 = currentFileIndex;
  v258 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v260 = v259;
  v257._countAndFlagsBits = v258;
  v257._object = v259;
  String.append(_:)(v257);
  v260;
  v257._object = 0xE900000000000065;
  v257._countAndFlagsBits = 0x6C626174206E6920;
  String.append(_:)(v257);
  *seconds = *&v319.value;
  v257._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v257._object, 0, 0);
  *v261 = *seconds;
  *(v261 + 16) = 0;
  *(v261 + 32) = 0;
  *(v261 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v257._object);
  v262 = currentFileIndex;
  v263 = v327;
  v264 = v321;
  v265 = v56;
LABEL_117:
  outlined consume of (offset: Int, element: MLDataTable.Row)?(v262, v263, v264, v265);
LABEL_118:
  outlined consume of Result<_DataTable, Error>(v292, v293);
  return outlined destroy of MLActivityClassifier.ModelParameters(v309, type metadata accessor for _TablePrinter);
}

uint64_t static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(uint64_t a1, double a2)
{
  v10 = a2;
  v11 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  inited = swift_initStackObject(v4, v9);
  *(inited + 32) = _swiftEmptyArrayStorage;
  *(inited + 40) = _swiftEmptyArrayStorage;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 16) = v5;
  *(inited + 24) = v6;
  if (v3)
  {
    return outlined copy of Result<_DataTable, Error>(v5, v6);
  }

  outlined copy of Result<_DataTable, Error>(v5, v6);
  MLActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:)(v10);
}

void *MLWordEmbedding.prediction(from:maxCount:maxDistance:distanceType:)(double a1)
{
  v2 = *v1;
  v3 = NLEmbedding.neighbors(for:maximumCount:distanceType:)();
  v4 = *(v3 + 16);
  v15 = v3;
  if (v4)
  {
    v5 = (v3 + 48);
    do
    {
      if (a1 > *v5)
      {
        v17 = *v5;
        v13 = *(v5 - 2);
        v14 = *(v5 - 1);
        v14;
        if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v7 = v6 + 1;
        v8 = v17;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
        {
          v16 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v7, 1);
          v6 = v16;
          v8 = v17;
        }

        _swiftEmptyArrayStorage[2] = v7;
        v9 = 3 * v6;
        _swiftEmptyArrayStorage[v9 + 4] = v13;
        _swiftEmptyArrayStorage[v9 + 5] = v14;
        *&_swiftEmptyArrayStorage[v9 + 6] = v8;
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  v15;
  v10 = specialized _arrayForceCast<A, B>(_:)(_swiftEmptyArrayStorage);

  return v10;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v20 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v19 = a1;
  v9 = v7;
  v10 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v21 = v9 + 8;
  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
  *v9 = a2;
  *(v9 + 40) = v24;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v20;
  *(v9 + 72) = a3 & 1;
  v14 = v19;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v19, &v17);
  v18[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(&v17, boxed_opaque_existential_0);
  outlined assign with take of Any?(v18, v21);
  return outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v14);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 8);
}

uint64_t outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 8, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLLogisticRegressionClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLLogisticRegressionClassifier.ModelParameters.validationData : MLLogisticRegressionClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLLogisticRegressionClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLLogisticRegressionClassifier.ModelParameters.validationData : MLLogisticRegressionClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
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
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 8, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t (*MLLogisticRegressionClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLLogisticRegressionClassifier.ModelParameters.validationData.getter(a2);
  return MLLogisticRegressionClassifier.ModelParameters.validationData.modify;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLLogisticRegressionClassifier.ModelParameters.validation : MLLogisticRegressionClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(a1, v6);
  return MLLogisticRegressionClassifier.ModelParameters.validation.setter(v6);
}

void (*MLLogisticRegressionClassifier.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1 + 8, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLLogisticRegressionClassifier.ModelParameters.validation.modify;
}

void MLLogisticRegressionClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v5 = *(*a1 + 136);
  v6 = *(*a1 + 128) + 8;
  if (a2)
  {
    v10 = *(*a1 + 144);
    outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(*(*a1 + 152), v4);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v10, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v3, v9);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t *a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *v7 = a2;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 72) = a3 & 1;
  v11 = v8;
  v12 = v9;
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(19);
  0xE000000000000000, a2;
  v23._countAndFlagsBits = *v2;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v3._object;
  v5 = v3;
  String.append(_:)(v3);
  object, v5._object;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v5._object = 0xEC000000203A7974;
  v5._countAndFlagsBits = 0x6C616E655020314CLL;
  String.append(_:)(v5);
  v6 = *(v2 + 40);
  Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v7 = v23;
  v8 = v23._object;
  String.append(_:)(v23);
  v8, v7._object;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x6C616E655020324CLL;
  v7._object = 0xEC000000203A7974;
  String.append(_:)(v7);
  v9 = *(v2 + 48);
  Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v10 = v23;
  v11 = v23._object;
  String.append(_:)(v23);
  v11, v10._object;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x7A69532070657453;
  v10._object = 0xEB00000000203A65;
  String.append(_:)(v10);
  v12 = *(v2 + 56);
  Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v13 = v23;
  v14 = v23._object;
  String.append(_:)(v23);
  v14, v13._object;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v13._object = "ml.actionClassifier" + 0x8000000000000000;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v13);
  v15 = *(v2 + 64);
  Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v18 = v23;
  v16 = v23._object;
  String.append(_:)(v23);
  v16, v18._object;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v23._object, v18._object;
  v23._countAndFlagsBits = 0xD000000000000013;
  v17 = *(v2 + 72);
  v18._countAndFlagsBits = 0x65736C6166;
  if (v17)
  {
    v18._countAndFlagsBits = 1702195828;
  }

  v23._object = "Convergence Threshold: " + 0x8000000000000000;
  v18._object = ((v17 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56);
  String.append(_:)(v18);
  v18._object, v18._object;
  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v23._object;
  v21 = v23;
  String.append(_:)(v23);
  v20, v21._object;
  return 0xD000000000000010;
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.playgroundDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MLLogisticRegressionClassifier.ModelParameters.description.getter(a1, a2);
  v3[3] = &type metadata for String;
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t destroy for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  return result;
}

uint64_t initializeWithCopy for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 32) = v6;
    (**(v6 - 8))(v4, v5);
  }

  else
  {
    v7 = *v5;
    v4[1] = v5[1];
    *v4 = v7;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithCopy for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v2)
    {
      *(a1 + 32) = v2;
      (**(v2 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 8), (a2 + 8));
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void *__swift_memcpy73_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x49uLL);
  return result;
}

uint64_t assignWithTake for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

void storeEnumTagSinglePayload for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 72) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * a2;
    }
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sds5NeverOTg5015_sS2dIgyd_S2ds5d16OIegnrzr_TR011_sF77Iegnr_C58Iegyd_TR40_ss3absyxxSLRzs13SignedNumericRzlFSd_TG5Tf3npf_nTf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v11 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = v1;
  v4 = a1;
  result = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(v4 + 8 * v2 + 32);
    v9 = result;
    v7 = result[2];
    if (result[3] >> 1 <= v7)
    {
      v8 = *(v4 + 8 * v2 + 32);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v7 + 1, 1);
      v3 = v11;
      v4 = a1;
      result = v9;
    }

    ++v2;
    result[2] = v7 + 1;
    *&result[v7 + 4] = fabs(v6);
  }

  while (v3 != v2);
  return result;
}

uint64_t static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(double a1, double a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = v6;
  v36 = a5;
  v24 = v5;
  v29 = type metadata accessor for Tensor(0);
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, a1, a2);
  v11 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(&v21, *(a4 + 16));
  v30 = v11;
  v12 = v31;
  _MetricUtilities.ConfusionMatrixMeter.valueAsMetricTable(classLabels:)(a4);
  if (v12)
  {
    return (*(v7 + 8))(&v21, v29);
  }

  v31 = &v21;
  v28 = v7;
  if (v36)
  {
    v13 = v34;
    v14 = v35;
    v22 = v34;
    v23 = v35;
    outlined copy of Result<_DataTable, Error>(v34, v35);
    static _MetricUtilities.supplementConfusionMatrixWithMissingClasses(_:classes:)(&v22, a4, v11);
    outlined consume of Result<_DataTable, Error>(v13, v14);
    outlined consume of Result<_DataTable, Error>(v13, v14);
    v34 = v32;
    LOBYTE(v35) = v33;
  }

  static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:)(v31, a4);
  v25 = v32;
  v37 = v33;
  v30 = 1.0 - v30;
  v27 = v34;
  v36 = v35;
  v32 = v34;
  v33 = v35;
  v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v16 = v24;
  v17 = v24 + *(v26 + 20);
  v18 = v27;
  outlined copy of Result<_DataTable, Error>(v27, v36);
  DataFrame.init(_:)(&v32);
  v32 = v25;
  v33 = v37;
  v19 = *(v26 + 24);
  DataFrame.init(_:)(&v32);
  outlined consume of Result<_DataTable, Error>(v18, v36);
  (*(v28 + 8))(v31, v29);
  *v16 = v30;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v16, v20, 1);
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_Sds5NeverOTg5022_sS3dIegyyd_Sd_SdtSds5f68OIegnrzr_TR059_s8CreateML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v25 = v2;
  v26 = *(a2 + 16);
  if (v26 < v2)
  {
    v2 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v28 = v2;
  if (v2)
  {
    a1;
    a2;
    v4 = 0;
    v5 = 1;
    v6 = v25;
    v7 = v26;
    v8 = v28;
    do
    {
      if (v6 == v4)
      {
        BUG();
      }

      if (v7 == v4)
      {
        BUG();
      }

      v9 = *(a1 + 8 * v4 + 32);
      v10 = *(a2 + 8 * v4 + 32);
      v29 = v3;
      v11 = v3[2];
      v12 = v3[3];
      v13 = v11 + 1;
      if (v12 >> 1 <= v11)
      {
        v14 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, v5);
        v13 = v11 + 1;
        v5 = v14;
        v8 = v28;
        v7 = v26;
        v6 = v25;
        v3 = v29;
      }

      ++v4;
      v3[2] = v13;
      *&v3[v11 + 4] = v9 - v10;
    }

    while (v8 != v4);
  }

  else
  {
    a1;
    a2;
    v6 = v25;
    v7 = v26;
    v8 = 0;
  }

  v15 = a1;
  v16 = a2;
  while (v6 != v8)
  {
    if (v6 <= v8)
    {
      BUG();
    }

    v17 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v7 == v8)
    {
      break;
    }

    if (v7 <= v8)
    {
      BUG();
    }

    v18 = *(v15 + 8 * v8 + 32);
    v19 = *(v16 + 8 * v8 + 32);
    v20 = v3[2];
    v21 = v20 + 1;
    if (v3[3] >> 1 <= v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v21, 1);
      v7 = v26;
      v6 = v25;
      v16 = a2;
      v15 = a1;
    }

    v3[2] = v21;
    *&v3[v20 + 4] = v18 - v19;
    v8 = v17;
  }

  v22 = v15;
  v16;
  v22;
  return v3;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v2 = a1;
    a1;
    v3 = a2;
    v4 = _swiftEmptyArrayStorage;
    v5 = 0;
    v10 = v2;
    do
    {
      if (v5 >= *(v3 + 16))
      {
        BUG();
      }

      if (*(v3 + v5 + 32) == 1)
      {
        v9 = *(v2 + 8 * v5 + 32);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v6 = v4[2];
        if (v4[3] >> 1 <= v6)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v6 + 1, 1, v4);
        }

        v3 = a2;
        v4[2] = v6 + 1;
        v4[v6 + 4] = v9;
        v2 = v10;
      }

      ++v5;
    }

    while (v8 != v5);
    v3;
    v2;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

{
  v2 = a2;
  v13 = *(a1 + 16);
  if (!v13)
  {
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v14 = a1 + 32;
  a1;
  v3 = _swiftEmptyArrayStorage;
  for (i = 0; i != v13; ++i)
  {
    v15 = v3;
    v12 = *(v2 + 16);
    if (!v12)
    {
      goto LABEL_14;
    }

    v4 = *(v14 + 16 * i);
    v5 = *(v14 + 16 * i + 8);
    if (*(v14 + 16 * i) - *(a2 + 32) != 0 && (_stringCompareWithSmolCheck(_:_:expecting:)(*(a2 + 32), *(a2 + 40), *(v14 + 16 * i), *(v14 + 16 * i + 8), 0) & 1) == 0)
    {
      v7 = (a2 + 56);
      v8 = 1;
      while (v12 != v8)
      {
        v6 = v8;
        if (v4 ^ *(v7 - 1) | v5 ^ *v7)
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v7 - 1), *v7, v4, v5, 0);
          v8 = v6 + 1;
          v7 += 2;
          if ((v9 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_7;
      }

LABEL_14:
      v3 = v15;
      v6 = 0;
      if (swift_isUniquelyReferenced_nonNull_native(v15))
      {
        v6 = 0;
        goto LABEL_16;
      }

LABEL_20:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
      goto LABEL_16;
    }

    v6 = 0;
LABEL_7:
    v3 = v15;
    if (!swift_isUniquelyReferenced_nonNull_native(v15))
    {
      goto LABEL_20;
    }

LABEL_16:
    v10 = v3[2];
    if (v3[3] >> 1 <= v10)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v10 + 1, 1, v3);
    }

    v3[2] = v10 + 1;
    v3[v10 + 4] = v6;
    v2 = a2;
  }

  a2;
  v2 = a1;
LABEL_22:
  v2;
  return v3;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(uint64_t a1, uint64_t a2)
{
  v29[0] = v2;
  v29[1] = a2;
  v30 = type metadata accessor for FloatingPointRoundingRule(0);
  v3 = *(v30 - 8);
  v4 = v3[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v38 = type metadata accessor for ScalarType(0);
  v42 = *(v38 - 8);
  v7 = *(v42 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v41 = type metadata accessor for Tensor(0);
  v33 = *(v41 - 8);
  v10 = *(v33 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = v29;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v39 = v29;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v31 = v29;
  Tensor.argmax(squeezingAxis:)(1);
  static ScalarType.int.getter();
  v40 = enum case for FloatingPointRoundingRule.towardZero(_:);
  v34 = v3[13];
  v17 = v30;
  v34(v29, enum case for FloatingPointRoundingRule.towardZero(_:), v30);
  v37 = v29;
  v18 = v39;
  Tensor.cast(to:roundingRule:)(v29, v29);
  v35 = v3[1];
  v35(v29, v17);
  v36 = *(v42 + 8);
  v36(v29, v38);
  v42 = *(v33 + 8);
  (v42)(v18, v41);
  v19 = v32;
  Tensor.argmax(squeezingAxis:)(1);
  static ScalarType.int.getter();
  v20 = v37;
  v34(v37, v40, v17);
  Tensor.cast(to:roundingRule:)(v29, v20);
  v35(v20, v17);
  v36(v29, v38);
  (v42)(v19, v41);
  v21 = v31;
  v22._rawValue = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
  v23 = v39;
  v24._rawValue = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
  _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(v22, v24);
  v22._rawValue;
  v24._rawValue;
  v25 = v23;
  v26 = v41;
  v27 = v42;
  (v42)(v25, v41);
  return v27(v21, v26);
}

double static _MetricUtilities.rmse(target:prediction:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    _StringGuts.grow(_:)(50);
    0xE000000000000000;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v18._object;
    String.append(_:)(v18);
    object;
    v20._object = "Size of targets " + 0x8000000000000000;
    v20._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v22 = v21._object;
    String.append(_:)(v21);
    v22;
    v20._countAndFlagsBits = 0x20746F6E206F6420;
    v20._object = 0xED0000686374616DLL;
    String.append(_:)(v20);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, "n matrix dimension" + 0x8000000000000000, "CreateML/_MetricUtilities.swift", 31, 2, 24, 0);
    BUG();
  }

  a2;
  a1;
  ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_Sds5NeverOTg5022_sS3dIegyyd_Sd_SdtSds5f68OIegnrzr_TR059_s8CreateML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm(a2, a1);
  a1;
  a2;
  v4 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm[2];
  if (v4)
  {
    v23 = v2;
    v5 = 0;
    v26 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
    v27 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm[2];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = v27;
    v7 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 1;
    do
    {
      v11 = *&v7[v5 + 4];
      v25 = v8;
      v12 = v8[3];
      if (v12 >> 1 <= v9)
      {
        v13 = v10;
        v24 = v7[v5 + 4];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v9 + 1, v10);
        v10 = v13;
        v6 = v27;
        v7 = v26;
        v8 = v25;
      }

      ++v5;
      v8[2] = v9 + 1;
      *&v8[v9++ + 4] = v11 * v11;
    }

    while (v6 != v5);
    v7;
    LODWORD(v2) = v23;
  }

  else
  {
    ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
    v8 = _swiftEmptyArrayStorage;
  }

  v14 = v8[2];
  v15 = 0.0;
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v15 = v15 + *&v8[i + 4];
    }
  }

  v8;
  return sqrt(v15 / v2);
}

uint64_t static _MetricUtilities.maximumError(target:prediction:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    _StringGuts.grow(_:)(50);
    0xE000000000000000;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v6._object;
    String.append(_:)(v6);
    object;
    v8._object = "Size of targets " + 0x8000000000000000;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v9._object;
    String.append(_:)(v9);
    v10;
    v8._countAndFlagsBits = 0x20746F6E206F6420;
    v8._object = 0xED0000686374616DLL;
    String.append(_:)(v8);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, "n matrix dimension" + 0x8000000000000000, "CreateML/_MetricUtilities.swift", 31, 2, 32, 0);
    BUG();
  }

  a2;
  a1;
  ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_Sds5NeverOTg5022_sS3dIegyyd_Sd_SdtSds5f68OIegnrzr_TR059_s8CreateML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm(a2, a1);
  a1;
  a2;
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sds5NeverOTg5015_sS2dIgyd_S2ds5d16OIegnrzr_TR011_sF77Iegnr_C58Iegyd_TR40_ss3absyxxSLRzs13SignedNumericRzlFSd_TG5Tf3npf_nTf3nnnpf_nTf1cn_n(ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm);
  ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
  v4 = specialized Sequence<>.max()(v3);
  v3;
  return v4;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v13 = *(v3 - 8);
  v4 = *(v13 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v14 = &v12;
  *(v2 + 16) = a1;
  v15[0] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v8 = swift_allocObject(v7, 48, 7);
  v8[2] = 2;
  v8[3] = 4;
  v8[4] = a1;
  v8[5] = a1;
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
  v10 = v14;
  MLShapedArrayProtocol.init(repeating:shape:)(v15, v8, v3, v9);
  (*(v13 + 32))(v2 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion, v10, v3);
  return v2;
}

Swift::Void __swiftcall _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(Swift::OpaquePointer predictedIds, Swift::OpaquePointer targetIds)
{
  rawValue = predictedIds._rawValue;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v39 = *(v40 - 8);
  v4 = *(v39 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v32 = &v26;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArraySlice<Int32>);
  v34 = *(v33 - 8);
  v7 = *(v34 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v35 = &v26;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v36 = &v26;
  v43 = targetIds._rawValue;
  v42 = *(targetIds._rawValue + 2);
  if (v42)
  {
    v37 = *(predictedIds._rawValue + 2);
    if (v37)
    {
      v12 = v43[4];
      v13 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion + v2;
      v43;
      predictedIds._rawValue;
      v14 = 0;
      v41 = v13;
      swift_beginAccess(v13, v27, 0, 0);
      --v42;
      v38 = predictedIds._rawValue;
      do
      {
        v30 = v14;
        v15 = rawValue[v14 + 4];
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
        v17 = swift_allocObject(v16, 48, 7);
        v17[2] = 2;
        v17[3] = 4;
        v17[4] = v12;
        v31 = v17;
        v17[5] = v15;
        v18 = swift_allocObject(v16, 48, 7);
        v18[2] = 2;
        v18[3] = 4;
        v18[4] = v12;
        v18[5] = v15;
        v19 = v32;
        v20 = v40;
        (*(v39 + 16))(v32, v41, v40);
        v21 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        v22 = v35;
        MLShapedArrayProtocol.subscript.getter(v18, v20, v21);
        v18;
        (*(v39 + 8))(v19, v20);
        v23 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArraySlice<Int32> and conformance MLShapedArraySlice<A>, &demangling cache variable for type metadata for MLShapedArraySlice<Int32>, &protocol conformance descriptor for MLShapedArraySlice<A>);
        v24 = v33;
        MLShapedArrayProtocol.scalar.getter(v33, v23);
        (*(v34 + 8))(v22, v24);
        if (v29)
        {
          BUG();
        }

        if (__OFADD__(1, v28))
        {
          BUG();
        }

        ++v28;
        v25 = v36;
        MLShapedArraySlice.init(scalar:)(&v28, &type metadata for Int32, &protocol witness table for Int32);
        swift_beginAccess(v41, &v28, 33, 0);
        MLShapedArrayProtocol.subscript.setter(v25, v31, v40, v21);
        swift_endAccess(&v28);
        rawValue = v38;
        if (v42 == v30)
        {
          break;
        }

        v12 = v43[v30 + 5];
        v14 = v30 + 1;
      }

      while (v37 != v30 + 1);
      v38;
      v43;
    }
  }
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.valueAsMetricTable(classLabels:)(uint64_t a1)
{
  v60 = v1;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArraySlice<Int32>);
  v52 = *(v51 - 8);
  v4 = *(v52 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = &v46;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v62 = *(v54 - 8);
  v7 = *(v62 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v55 = &v46;
  v10 = *(a1 + 16);
  v65 = v3;
  if (v10 != *(v3 + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000042, "Utilities.swift" + 0x8000000000000000, "CreateML/_MetricUtilities.swift", 31, 2, 67, 0);
    BUG();
  }

  if (v10)
  {
    v63 = v65 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
    v59 = a1 + 32;
    v58 = (a1 + 40);
    v11 = 0;
    v73 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    v64 = v10;
    do
    {
      if (v11 == v10)
      {
        BUG();
      }

      v12 = *(v65 + 16);
      v49 = v12;
      if (v12 < 0)
      {
        BUG();
      }

      v57 = v11 + 1;
      if (v12)
      {
        swift_beginAccess(v63, v48, 0, 0);
        v56 = (v59 + 16 * v11);
        v13 = v58;
        v14 = 0;
        v50 = v11;
        do
        {
          v66 = v13;
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v16 = swift_allocObject(v15, 48, 7);
          v16[2] = 2;
          v16[3] = 4;
          v16[4] = v11;
          v61 = v14;
          v16[5] = v14;
          v17 = v55;
          v18 = v54;
          (*(v62 + 16))(v55, v63, v54);
          v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
          v20 = v53;
          MLShapedArrayProtocol.subscript.getter(v16, v18, v19);
          v16;
          (*(v62 + 8))(v17, v18);
          v21 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArraySlice<Int32> and conformance MLShapedArraySlice<A>, &demangling cache variable for type metadata for MLShapedArraySlice<Int32>, &protocol conformance descriptor for MLShapedArraySlice<A>);
          v22 = v51;
          MLShapedArrayProtocol.scalar.getter(v51, v21);
          (*(v52 + 8))(v20, v22);
          if (BYTE4(v68) & 1 | (v68 <= 0))
          {
            v23 = v66;
          }

          else
          {
            v70 = v68;
            v67 = *v56;
            v24 = v56[1];
            v24;
            if (!swift_isUniquelyReferenced_nonNull_native(v71))
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71[2] + 1, 1, v71);
            }

            v23 = v66;
            v25 = v71[2];
            if (v71[3] >> 1 <= v25)
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71[3] >= 2uLL, v25 + 1, 1, v71);
            }

            v26 = v71;
            v71[2] = v25 + 1;
            v27 = 2 * v25;
            v26[v27 + 4] = v67;
            v26[v27 + 5] = v24;
            if (v61 >= v64)
            {
              BUG();
            }

            v28 = *(v23 - 1);
            v29 = *v23;
            *v23;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v73);
            v67 = v29;
            if (!isUniquelyReferenced_nonNull_native)
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
            }

            v31 = v73[2];
            if (v73[3] >> 1 <= v31)
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73[3] >= 2uLL, v31 + 1, 1, v73);
            }

            v32 = v73;
            v73[2] = v31 + 1;
            v33 = 2 * v31;
            v32[v33 + 4] = v28;
            v32[v33 + 5] = v67;
            if (!swift_isUniquelyReferenced_nonNull_native(v72))
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
            }

            v34 = v70;
            v35 = v72[2];
            if (v72[3] >> 1 <= v35)
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72[3] >= 2uLL, v35 + 1, 1, v72);
            }

            v36 = v72;
            v72[2] = v35 + 1;
            v36[v35 + 4] = v34;
          }

          v14 = v61 + 1;
          v13 = v23 + 2;
          v11 = v50;
        }

        while (v49 != v61 + 1);
      }

      v11 = v57;
      v10 = v64;
    }

    while (v57 != v64);
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v37, v47);
  inited[2] = 3;
  inited[3] = 6;
  inited[4] = 0x7373616C63;
  inited[5] = 0xE500000000000000;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[9] = v39;
  v40 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String]);
  inited[10] = v40;
  inited[6] = v71;
  inited[11] = 0x6574636964657270;
  inited[12] = 0xEF7373616C635F64;
  inited[16] = v39;
  inited[17] = v40;
  inited[13] = v73;
  inited[18] = 0x746E756F63;
  inited[19] = 0xE500000000000000;
  inited[23] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  inited[24] = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &demangling cache variable for type metadata for [Int]);
  inited[20] = v72;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v42 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v41, &protocol witness table for String);
  result = MLDataTable.init(dictionary:)(v42);
  if (!v2)
  {
    result = v68;
    v44 = v69;
    v45 = v60;
    *v60 = v68;
    *(v45 + 8) = v44;
  }

  return result;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  (*(*(v2 - 8) + 8))(v1, v2);
  return swift_deallocClassInstance(v0, *(*v0 + 48), *(*v0 + 52));
}

uint64_t type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(uint64_t a1)
{
  result = type metadata singleton initialization cache for _MetricUtilities.ConfusionMatrixMeter;
  if (!type metadata singleton initialization cache for _MetricUtilities.ConfusionMatrixMeter)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for _MetricUtilities.ConfusionMatrixMeter);
  }

  return result;
}

uint64_t type metadata completion function for _MetricUtilities.ConfusionMatrixMeter(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for MLShapedArray<Int32>(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    result = swift_updateClassMetadata2(a1, 256, 2, v3, a1 + 80);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MLShapedArray<Int32>(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLShapedArray<Int32>;
  if (!lazy cache variable for type metadata for MLShapedArray<Int32>)
  {
    result = type metadata accessor for MLShapedArray(a1, &type metadata for Int32, &protocol witness table for Int32);
    if (!v2)
    {
      lazy cache variable for type metadata for MLShapedArray<Int32> = result;
    }
  }

  return result;
}

uint64_t static _MetricUtilities.supplementConfusionMatrixWithMissingClasses(_:classes:)(uint64_t a1, uint64_t a2, double a3)
{
  v41 = a2;
  v42 = v3;
  v5 = *(a1 + 8);
  v45 = *a1;
  v4 = v45;
  v6 = v5 & 1;
  v46 = v5 & 1;
  LODWORD(v50) = v5;
  outlined copy of Result<_DataTable, Error>(v45, v5);
  v7._countAndFlagsBits = 0x7373616C63;
  v7._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v7);
  outlined consume of Result<_DataTable, Error>(v45, v46);
  v37 = v48;
  v38 = v49;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v48, v49);
  if (v46 || (outlined copy of Result<_DataTable, Error>(v45, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v45, 0), v48 != 2))
  {
    outlined consume of Result<_DataTable, Error>(v45, v46);
    BUG();
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v45, 0, a3);
  v9 = *(v41 + 16);
  v47 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
  if (v47 < v9)
  {
    v43 = 0;
    v46 = v6;
    v39 = v41 + 32;
    v10 = v50;
    v50 = v9;
    outlined copy of Result<_DataTable, Error>(v45, v10);
    v41;
    v11 = v50;
    v40 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 9;
    v12 = 0;
    v44 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v13 = v47;
    while (1)
    {
      if (v12 == v11)
      {
        BUG();
      }

      v14 = *(v39 + 16 * v12);
      v15 = *(v39 + 16 * v12 + 8);
      if (!v13)
      {
        goto LABEL_11;
      }

      v16 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[4];
      v17 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[5];
      if (v16 == v14 && v17 == v15)
      {
        goto LABEL_15;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)(v16, v17, *(v39 + 16 * v12), *(v39 + 16 * v12 + 8), 0) & 1) == 0)
      {
        break;
      }

LABEL_14:
      v11 = v50;
LABEL_15:
      if (++v12 == v11)
      {
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        v41;
        result = v45;
        v34 = v46;
        v35 = v42;
        *v42 = v45;
        *(v35 + 8) = v34;
        return result;
      }
    }

    if (v13 == 1)
    {
      goto LABEL_11;
    }

    v25 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[6];
    v26 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[7];
    if (v25 == v14 && v26 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)(v25, v26, v14, v15, 0) & 1) != 0)
    {
      goto LABEL_14;
    }

    if (v13 == 2)
    {
LABEL_11:
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
      inited = swift_initStackObject(v18, v36);
      inited[2] = 3;
      inited[3] = 6;
      inited[4] = 0x7373616C63;
      inited[5] = 0xE500000000000000;
      inited[9] = &type metadata for String;
      inited[10] = &protocol witness table for String;
      inited[6] = v14;
      inited[7] = v15;
      inited[11] = 0x6574636964657270;
      inited[12] = 0xEF7373616C635F64;
      inited[16] = &type metadata for String;
      inited[17] = &protocol witness table for String;
      inited[13] = v14;
      inited[14] = v15;
      inited[18] = 0x746E756F63;
      inited[19] = 0xE500000000000000;
      inited[23] = &type metadata for Int;
      inited[24] = &protocol witness table for Int;
      inited[20] = 0;
      swift_bridgeObjectRetain_n(v15, 2);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
      v21 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v20, &protocol witness table for String);
      v22 = v43;
      MLDataTable.init(dictionary:)(v21);
      v43 = v22;
      if (v22)
      {
        v43;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, " and predictions " + 0x8000000000000000, "CreateML/_MetricUtilities.swift", 31, 2, 95, 0);
        BUG();
      }

      v23 = v48;
      v24 = v49;
      MLDataTable.append(contentsOf:)(&v48);
      outlined consume of Result<_DataTable, Error>(v23, v24);
    }

    else
    {
      v27 = v40;
      v28 = 2;
      while (1)
      {
        if (__OFADD__(1, v28++))
        {
          BUG();
        }

        v30 = *(v27 - 1);
        v31 = *v27;
        if (v30 == v14 && v31 == v15)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)(v30, v31, v14, v15, 0))
        {
          break;
        }

        v27 += 2;
        if (v28 == v47)
        {
          goto LABEL_11;
        }
      }
    }

    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v44;
    v13 = v47;
    goto LABEL_14;
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v32 = v42;
  *v42 = v45;
  *(v32 + 8) = v6;
  return outlined copy of Result<_DataTable, Error>(v4, v50);
}

uint64_t static _MetricUtilities.supplementPrecisionRecallWithMissingClasses(_:classes:)(uint64_t a1, uint64_t a2, double a3)
{
  v41 = a2;
  v42 = v3;
  v5 = *(a1 + 8);
  v47 = *a1;
  v4 = v47;
  v6 = v5 & 1;
  v48 = v5 & 1;
  LODWORD(v50) = v5;
  outlined copy of Result<_DataTable, Error>(v47, v5);
  v7._countAndFlagsBits = 0x7373616C63;
  v7._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v7);
  outlined consume of Result<_DataTable, Error>(v47, v48);
  if (v45 || (outlined copy of Result<_DataTable, Error>(v44, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v44, 0), v47 != 2))
  {
    outlined consume of Result<_DataTable, Error>(v44, v45);
    BUG();
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v44, 0, a3);
  v9 = *(v41 + 16);
  if (MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2] < v9)
  {
    v46 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
    v44 = v47;
    v45 = v6;
    v35 = v41 + 32;
    v49 = v9;
    outlined copy of Result<_DataTable, Error>(v47, v50);
    v36 = "predicted_this_incorrectly" + 0x8000000000000000;
    v37 = "Starting a new session in '" + 0x8000000000000000;
    v38 = "predicted_correctly" + 0x8000000000000000;
    v41;
    v10 = v49;
    v40 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 9;
    v11 = 0;
    v39 = 0xD000000000000016;
    v12 = v46;
    v43 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    while (1)
    {
      if (v11 == v10)
      {
        BUG();
      }

      v13 = *(v35 + 16 * v11);
      v14 = *(v35 + 16 * v11 + 8);
      if (!v12)
      {
        break;
      }

      v15 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[4];
      v16 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[5];
      if (v15 == v13 && v16 == v14)
      {
        goto LABEL_26;
      }

      v50 = v11;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)(v15, v16, v13, v14, 0) & 1) == 0)
      {
        if (v12 != 1)
        {
          v17 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[6];
          v18 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[7];
          if (v17 == v13 && v18 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)(v17, v18, v13, v14, 0) & 1) != 0)
          {
            goto LABEL_25;
          }

          if (v12 != 2)
          {
            v19 = v40;
            v20 = 2;
            do
            {
              if (__OFADD__(1, v20++))
              {
                BUG();
              }

              v22 = *(v19 - 1);
              v23 = *v19;
              if (v22 == v13 && v23 == v14)
              {
                goto LABEL_24;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)(v22, v23, v13, v14, 0))
              {
                goto LABEL_24;
              }

              v19 += 2;
            }

            while (v20 != v46);
          }
        }

LABEL_23:
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
        inited = swift_initStackObject(v24, v34);
        *(inited + 16) = 7;
        *(inited + 24) = 14;
        strcpy((inited + 32), "actual_count");
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        *(inited + 72) = &type metadata for Int;
        *(inited + 80) = &protocol witness table for Int;
        *(inited + 48) = 0;
        *(inited + 88) = 0x7373616C63;
        *(inited + 96) = 0xE500000000000000;
        *(inited + 128) = &type metadata for String;
        *(inited + 136) = &protocol witness table for String;
        *(inited + 104) = v13;
        *(inited + 112) = v14;
        *(inited + 144) = v39;
        *(inited + 152) = v36;
        *(inited + 184) = &type metadata for Int;
        *(inited + 192) = &protocol witness table for Int;
        *(inited + 160) = 0;
        *(inited + 200) = 0x6F69736963657270;
        *(inited + 208) = 0xE90000000000006ELL;
        *(inited + 240) = &type metadata for Double;
        *(inited + 248) = &protocol witness table for Double;
        *(inited + 216) = 0;
        *(inited + 256) = 0x6C6C61636572;
        *(inited + 264) = 0xE600000000000000;
        *(inited + 296) = &type metadata for Double;
        *(inited + 304) = &protocol witness table for Double;
        *(inited + 272) = 0x7FF8000000000000;
        *(inited + 312) = 0xD000000000000013;
        *(inited + 320) = v37;
        *(inited + 352) = &type metadata for Int;
        *(inited + 360) = &protocol witness table for Int;
        *(inited + 328) = 0;
        *(inited + 368) = 0xD00000000000001ALL;
        *(inited + 376) = v38;
        *(inited + 408) = &type metadata for Int;
        *(inited + 416) = &protocol witness table for Int;
        *(inited + 384) = 0;
        v14;
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
        v27 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v26, &protocol witness table for String);
        MLDataTable.init(dictionary:)(v27);
        v28 = v47;
        v29 = v48;
        MLDataTable.append(contentsOf:)(&v47);
        outlined consume of Result<_DataTable, Error>(v28, v29);
LABEL_24:
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v43;
        v12 = v46;
      }

LABEL_25:
      v10 = v49;
      v11 = v50;
LABEL_26:
      if (++v11 == v10)
      {
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        v41;
        result = v44;
        v31 = v45;
        v32 = v42;
        *v42 = v44;
        *(v32 + 8) = v31;
        return result;
      }
    }

    v50 = v11;
    goto LABEL_23;
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v33 = v42;
  *v42 = v47;
  *(v33 + 8) = v6;
  return outlined copy of Result<_DataTable, Error>(v4, v50);
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(int a1, double a2, double a3)
{
  v76 = a1;
  v74 = v3;
  v61 = type metadata accessor for FloatingPointRoundingRule(0);
  v62 = *(v61 - 8);
  v5 = *(v62 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v63 = v60;
  v71 = type metadata accessor for ScalarType(0);
  v70 = *(v71 - 8);
  v8 = *(v70 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v72 = v60;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v65 = v60;
  v77 = type metadata accessor for Tensor(0);
  v64 = *(v77 - 8);
  v14 = *(v64 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v66 = v60;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v68 = v60;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v67 = v60;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v69 = v60;
  v23 = alloca(v14);
  v24 = alloca(v14);
  v73 = v60;
  v25 = alloca(v14);
  v26 = alloca(v14);
  v78 = v60;
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  type metadata accessor for MLMultiArray();
  v32 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion + v4;
  swift_beginAccess(OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion + v4, v60, 0, 0);
  (*(v28 + 16))(v60, v32, v27);
  v33 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
  v34 = MLMultiArray.init<A>(_:)(v60, v27, v33);
  v35 = type metadata accessor for ComputeDevice(0);
  v36 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v35);
  v37 = v34;
  v38 = v73;
  v75 = v37;
  Tensor.init(_:device:)(v75, v36, a2, a3);
  v39 = v72;
  (*(v70 + 104))(v72, enum case for ScalarType.float32(_:), v71);
  v40 = v63;
  v41 = v61;
  v42 = v62;
  (*(v62 + 104))(v63, enum case for FloatingPointRoundingRule.towardZero(_:), v61);
  Tensor.cast(to:roundingRule:)(v39, v40);
  (*(v42 + 8))(v40, v41);
  v43 = v38;
  v44 = v64;
  (*(v70 + 8))(v72, v71);
  v45 = *(v44 + 8);
  v45(v43, v77);
  if (v76)
  {
    v46 = Tensor.rank.getter();
    if (v46 < 0)
    {
      BUG();
    }

    v47 = specialized Sequence.reversed()(0, v46);
    v48 = v69;
    Tensor.transposed(permutation:)(v47);
    v47;
    v49 = v68;
    Tensor.sum(squeezingAxes:)(&outlined read-only object #0 of _MetricUtilities.ConfusionMatrixMeter.value(normalized:));
    v50 = v66;
    Tensor.init(floatLiteral:)(1.0e-12);
    v51 = v67;
    static Tensor.+ infix(_:_:)(v49, v50);
    v52 = v50;
    v53 = v77;
    v45(v52, v77);
    v45(v49, v53);
    v54 = v73;
    static Tensor./ infix(_:_:)(v48, v51);
    v45(v51, v53);
    v55 = v54;
    v45(v48, v53);
    v56 = Tensor.rank.getter();
    if (v56 < 0)
    {
      BUG();
    }

    v57 = specialized Sequence.reversed()(0, v56);
    Tensor.transposed(permutation:)(v57);

    v57;
    v58 = v77;
    v45(v55, v77);
    return (v45)(v78, v58);
  }

  else
  {

    return (*(v44 + 32))(v74, v78, v77);
  }
}

double static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(uint64_t a1, uint64_t a2)
{
  v26 = *&a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for Tensor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  v13 = alloca(v8);
  v14 = alloca(v8);
  if (a2 < 0)
  {
    BUG();
  }

  v24[0] = 0;
  v24[1] = a2;
  v22 = v6;
  v23 = a2;
  v21 = &v21;
  v25 = v7;
  v15 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(&v21, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v17 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:on:)(v24, v23, &v21, v16, v17, 1.0, 0.0);
  static Tensor.* infix(_:_:)(*&v26, &v21);
  Tensor.sum()();
  v18 = *(v25 + 8);
  v19 = v22;
  v18(&v21, v22);
  Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v18(&v21, v19);
  LODWORD(v25) = v24[0];
  Tensor.sum()();
  Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v18(&v21, v19);
  v26 = (*&v25 / (*v24 + 1.0e-12));
  v18(v21, v19);
  return v26;
}

uint64_t type metadata accessor for MLMultiArray()
{
  result = lazy cache variable for type metadata for MLMultiArray;
  if (!lazy cache variable for type metadata for MLMultiArray)
  {
    v1 = objc_opt_self(MLMultiArray);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for MLMultiArray = result;
  }

  return result;
}

uint64_t static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:)(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v95 = v2;
  v4 = type metadata accessor for Tensor(0);
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v97 = &v88;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v100 = &v88;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v103 = &v88;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v104 = &v88;
  v14 = alloca(v5);
  v15 = alloca(v5);
  v98 = &v88;
  v16 = alloca(v5);
  v17 = alloca(v5);
  v105 = &v88;
  v18 = alloca(v5);
  v19 = alloca(v5);
  v99 = &v88;
  v20 = alloca(v5);
  v21 = alloca(v5);
  v94 = *(a2 + 16);
  if (v94)
  {
    v112 = v4;
    v101 = &v88;
    a2;
    v96 = a2;
    v22 = (a2 + 40);
    v23 = _swiftEmptyArrayStorage;
    v24 = 0;
    v107 = _swiftEmptyArrayStorage;
    v106 = _swiftEmptyArrayStorage;
    v102 = _swiftEmptyArrayStorage;
    do
    {
      v110 = v23;
      v90 = *(v22 - 1);
      v92 = v22;
      v25 = *v22;
      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TensorRangeExpression?>);
      v111 = v24;
      v27 = swift_allocObject(v26, 72, 7);
      v27[2] = 1;
      v27[3] = 2;
      v27[7] = &type metadata for Int;
      v27[8] = &protocol witness table for Int;
      v27[4] = v24;
      v91 = v25;
      v25;
      v28 = v99;
      Tensor.subscript.getter(v27);
      v27;
      v29 = swift_allocObject(v26, 72, 7);
      v29[2] = 1;
      v29[3] = 2;
      v29[7] = &type metadata for Int;
      v29[8] = &protocol witness table for Int;
      v29[4] = v111;
      Tensor.subscript.getter(v29);
      v29;
      v108 = *(v93 + 8);
      v30 = v28;
      v31 = v112;
      v108(v30, v112);
      Tensor.sum(alongAxes:)(&outlined read-only object #0 of static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:));
      v115 = v26;
      v32 = swift_allocObject(v26, 72, 7);
      v32[2] = 1;
      v32[3] = 2;
      v32[7] = &type metadata for Int;
      v32[8] = &protocol witness table for Int;
      v32[4] = 0;
      v33 = v98;
      Tensor.subscript.getter(v32);
      v32;
      v108(v33, v31);
      v34 = swift_allocObject(v26, 72, 7);
      v34[2] = 1;
      v34[3] = 2;
      v34[7] = &type metadata for Int;
      v34[8] = &protocol witness table for Int;
      v34[4] = v111;
      v35 = v104;
      Tensor.subscript.getter(v34);
      v34;
      v36 = v31;
      v37 = v31;
      v38 = v108;
      v108(v35, v37);
      v39 = v105;
      v40 = v103;
      static Tensor./ infix(_:_:)(v105, v103);
      v38(v40, v36);
      v38(v39, v36);
      v41 = swift_allocObject(v115, 72, 7);
      v41[2] = 1;
      v41[3] = 2;
      v41[7] = &type metadata for Int;
      v41[8] = &protocol witness table for Int;
      v42 = v111;
      v41[4] = v111;
      v43 = v99;
      Tensor.subscript.getter(v41);
      v41;
      v44 = swift_allocObject(v115, 72, 7);
      v44[2] = 1;
      v44[3] = 2;
      v44[7] = &type metadata for Int;
      v44[8] = &protocol witness table for Int;
      v44[4] = v42;
      Tensor.subscript.getter(v44);
      v44;
      v108(v43, v112);
      v45 = v98;
      Tensor.sum(alongAxes:)(&outlined read-only object #1 of static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:));
      v46 = v115;
      v47 = swift_allocObject(v115, 72, 7);
      v47[2] = 1;
      v47[3] = 2;
      v47[7] = &type metadata for Int;
      v47[8] = &protocol witness table for Int;
      v47[4] = v111;
      Tensor.subscript.getter(v47);
      v47;
      v48 = v45;
      v49 = v108;
      v108(v48, v112);
      v50 = swift_allocObject(v46, 72, 7);
      v50[2] = 1;
      v50[3] = 2;
      v50[7] = &type metadata for Int;
      v50[8] = &protocol witness table for Int;
      v50[4] = 0;
      v51 = v104;
      Tensor.subscript.getter(v50);
      v50;
      v52 = v112;
      v49(v51, v112);
      v53 = v105;
      v54 = v103;
      static Tensor./ infix(_:_:)(v105, v103);
      v49(v54, v52);
      v49(v53, v52);
      v55 = swift_allocObject(v115, 72, 7);
      v55[2] = 1;
      v55[3] = 2;
      v55[7] = &type metadata for Int;
      v55[8] = &protocol witness table for Int;
      v55[4] = v111;
      v56 = v99;
      Tensor.subscript.getter(v55);
      v55;
      Tensor.sum()();
      v49(v56, v112);
      v57 = v102;
      if (!swift_isUniquelyReferenced_nonNull_native(v102))
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
      }

      v58 = v57[2];
      v59 = v97;
      if (v57[3] >> 1 <= v58)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2uLL, v58 + 1, 1, v57);
      }

      v57[2] = v58 + 1;
      v60 = 2 * v58;
      v57[v60 + 4] = v90;
      v102 = v57;
      v57[v60 + 5] = v91;
      Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      LODWORD(v115) = v113;
      v61 = v107;
      if (!swift_isUniquelyReferenced_nonNull_native(v107))
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
      }

      v62 = v61[2];
      if (v61[3] >> 1 <= v62)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61[3] >= 2uLL, v62 + 1, 1, v61);
      }

      v63 = *&v115;
      v61[2] = v62 + 1;
      v107 = v61;
      *&v61[v62 + 4] = v63;
      Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      LODWORD(v115) = v113;
      v64 = v106;
      if (!swift_isUniquelyReferenced_nonNull_native(v106))
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
      }

      v65 = v64[2];
      if (v64[3] >> 1 <= v65)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64[3] >= 2uLL, v65 + 1, 1, v64);
      }

      v66 = *&v115;
      v64[2] = v65 + 1;
      v106 = v64;
      *&v64[v65 + 4] = v66;
      Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      v67 = _mm_cvtsi32_si128(v113);
      if ((_mm_cvtsi128_si32(v67) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        BUG();
      }

      if (*v67.i32 <= -9.2233731e18)
      {
        BUG();
      }

      if (*v67.i32 >= 9.223372e18)
      {
        BUG();
      }

      LODWORD(v115) = v67.i32[0];
      v68 = v110;
      if (!swift_isUniquelyReferenced_nonNull_native(v110))
      {
        v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
      }

      v69 = v68[2];
      v70 = *&v115;
      if (v68[3] >> 1 <= v69)
      {
        v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68[3] >= 2uLL, v69 + 1, 1, v68);
        v70 = *&v115;
        v68 = v77;
      }

      v110 = v68;
      v71 = v111 + 1;
      v68[2] = v69 + 1;
      v72 = v71;
      v68[v69 + 4] = v70;
      v73 = v59;
      v74 = v112;
      v75 = v108;
      v108(v73, v112);
      v75(v100, v74);
      v76 = v74;
      v23 = v110;
      v75(v101, v76);
      v22 = v92 + 2;
      v24 = v72;
    }

    while (v94 != v72);
    v96;
    v78 = v102;
  }

  else
  {
    v78 = _swiftEmptyArrayStorage;
    v107 = _swiftEmptyArrayStorage;
    v106 = _swiftEmptyArrayStorage;
    v110 = _swiftEmptyArrayStorage;
  }

  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v79, v89);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x7373616C63;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 80) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String]);
  *(inited + 48) = v78;
  *(inited + 88) = 0x6F69736963657270;
  *(inited + 96) = 0xE90000000000006ELL;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  *(inited + 128) = v81;
  v82 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], &demangling cache variable for type metadata for [Double]);
  *(inited + 136) = v82;
  *(inited + 104) = v107;
  *(inited + 144) = 0x6C6C61636572;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 184) = v81;
  *(inited + 192) = v82;
  *(inited + 160) = v106;
  strcpy((inited + 200), "actual_count");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  *(inited + 248) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &demangling cache variable for type metadata for [Int]);
  *(inited + 216) = v110;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v84 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v83, &protocol witness table for String);
  result = MLDataTable.init(dictionary:)(v84);
  if (!v3)
  {
    result = v113;
    v86 = v114;
    v87 = v95;
    *v95 = v113;
    *(v87 + 8) = v86;
  }

  return result;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:weights:)(void (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v58 = v3;
  v63 = a3;
  v66 = a2;
  v69 = a1;
  v67 = type metadata accessor for FloatingPointRoundingRule(0);
  v64 = *(v67 - 8);
  v4 = *(v64 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = &v52;
  v68 = type metadata accessor for ScalarType(0);
  v65 = *(v68 - 8);
  v7 = *(v65 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v54 = &v52;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for Tensor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = alloca(v15);
  v19 = alloca(v15);
  v70 = &v52;
  v20 = alloca(v15);
  v21 = alloca(v15);
  outlined init with copy of Tensor?(v63, &v52);
  if (__swift_getEnumTagSinglePayload(&v52, 1, v13) == 1)
  {
    outlined destroy of Tensor?(&v52);
    return _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v69, v66);
  }

  else
  {
    v59 = &v52;
    v56 = v14;
    (*(v14 + 32))(&v52, &v52, v13);
    v60 = &v52;
    Tensor.argmax(squeezingAxis:)(1);
    v23 = v54;
    static ScalarType.int.getter();
    v61 = enum case for FloatingPointRoundingRule.towardZero(_:);
    v24 = v64;
    v55 = *(v64 + 104);
    v25 = v53;
    v62 = v13;
    v26 = v67;
    v55(v53);
    v27 = v60;
    Tensor.cast(to:roundingRule:)(v23, v25);
    v64 = *(v24 + 8);
    (v64)(v25, v26);
    v65 = *(v65 + 8);
    (v65)(v23, v68);
    v28 = *(v56 + 8);
    v29 = v62;
    v28(v27, v62);
    v69 = v28;
    v30 = v70;
    v63 = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
    v28(v30, v29);
    v31 = v60;
    Tensor.argmax(squeezingAxis:)(1);
    static ScalarType.int.getter();
    v32 = v67;
    (v55)(v25, v61, v67);
    Tensor.cast(to:roundingRule:)(v23, v25);
    (v64)(v25, v32);
    (v65)(v23, v68);
    v33 = v31;
    v34 = v62;
    v35 = v69;
    v69(v33, v62);
    v36 = v70;
    v66 = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
    v35(v36, v34);
    v37 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v38 = *(v37 + 16);
    if (v38)
    {
      v57 = _swiftEmptyArrayStorage;
      v39 = 0;
      v68 = v37;
      v70 = v38;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
      v40 = v70;
      v41 = v68;
      v42 = v57;
      v43 = v57[2];
      v44 = 1;
      do
      {
        v45 = *(v41 + 4 * v39 + 32);
        v57 = v42;
        v46 = v42[3];
        if (v46 >> 1 <= v43)
        {
          v47 = v44;
          *&v67 = v45;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46 >= 2, v43 + 1, v44);
          v45 = *&v67;
          v44 = v47;
          v40 = v70;
          v41 = v68;
          v42 = v57;
        }

        v39 = (v39 + 1);
        v42[2] = v43 + 1;
        *(v42 + v43++ + 32) = v45 == 1.0;
      }

      while (v40 != v39);
      v41;
    }

    else
    {
      v37;
      v42 = _swiftEmptyArrayStorage;
    }

    v42;
    v48 = v63;
    v49 = specialized Sequence.compactMap<A>(_:)(v63, v42);
    v48;
    v42;
    v50 = v66;
    v51 = specialized Sequence.compactMap<A>(_:)(v66, v42);
    v42;
    v50;
    _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(v49, v51);
    v49;
    v51;
    return (v69)(v59, v62);
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4)
{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v11 = swift_allocObject(v10, 8 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[8 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }

  a4;
  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 16 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  a4;
  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt8>);
    v11 = swift_allocObject(v10, v5 + 32, 7);
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  a4;
  return v11;
}

void *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *a3)
{
  result = a2;
  if (&__src[8 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, 8 * a2);
  }

  return result;
}

{
  result = (16 * a2);
  if (&__src[16 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = (a2 << 6);
  if (&__src[64 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = (32 * a2);
  if (&__src[32 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  result = a2;
  if (&__src[4 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, 4 * a2);
  }

  return result;
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

void *specialized Sequence.reversed()(int64_t a1, int64_t a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = v2[2];
  if (v3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = v3 - 1;
    v7 = 0;
    v11 = v5;
    do
    {
      if (v7 != v6)
      {
        v8 = v2[2];
        if (v7 >= v8)
        {
          BUG();
        }

        if (v6 >= v8)
        {
          BUG();
        }

        v9 = v2[v7 + 4];
        v10 = v2[v6 + 4];
        if (!swift_isUniquelyReferenced_nonNull_native(v2))
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        }

        v2[v7 + 4] = v10;
        v2[v6 + 4] = v9;
        v5 = v11;
      }

      ++v7;
      --v6;
    }

    while (v5 != v7);
  }

  return v2;
}

int64_t *specialized _copyCollectionToContiguousArray<A>(_:)(int64_t a1, int64_t a2)
{
  v2 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v2 <= 0)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v4 = swift_allocObject(v3, 8 * v2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = v2;
    v4[3] = 2 * (v5 / 8);
  }

  if (specialized Sequence._copySequenceContents(initializing:)(v7, v4 + 4, v2, a1, a2) != v2)
  {
    BUG();
  }

  return v4;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(int64_t *a1, int64_t *a2, uint64_t a3, int64_t a4, int64_t a5)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_6:
    v5 = a4;
    goto LABEL_7;
  }

  if (a3 < 0)
  {
    BUG();
  }

  if (a5 == a4)
  {
LABEL_5:
    a3 = 0;
    goto LABEL_6;
  }

  if (a5 < a4)
  {
    BUG();
  }

  if (a5 <= a4)
  {
    BUG();
  }

  v5 = a4 + 1;
  *a2 = a4;
  if (a3 != 1)
  {
    if (v5 == a5)
    {
      a3 = 1;
      v5 = a5;
    }

    else
    {
      if (v5 >= a5)
      {
        BUG();
      }

      a2[1] = v5;
      if (a3 == 2)
      {
        v5 = a4 + 2;
      }

      else
      {
        v7 = 2;
        while (1)
        {
          if (v7 >= a3)
          {
            BUG();
          }

          v8 = v7 + 1;
          if (__OFADD__(1, v7))
          {
            BUG();
          }

          if (!(v7 + a4 - a5))
          {
            break;
          }

          if ((a4 + v7) >= a5)
          {
            BUG();
          }

          a2[v7] = a4 + v7;
          ++v7;
          if (v8 == a3)
          {
            v5 = a4 + v8;
            goto LABEL_7;
          }
        }

        v5 = a5;
        a3 = a5 - a4;
      }
    }
  }

LABEL_7:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v5;
  return a3;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3);
    *a1 = result;
  }

  return result;
}

uint64_t destroy for MLActivityClassifier.PersistentParameters(uint64_t a1)
{
  outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  v1 = *(a1 + 24);
  if (v1 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*(a1 + 16), v1);
  }

  return *(a1 + 32);
}

uint64_t initializeWithCopy for MLActivityClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = (a2 + 16);
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = *v5;
  }

  else
  {
    v7 = *v5;
    outlined copy of Result<_DataTable, Error>(*v5, v6);
    *(a1 + 16) = v7;
    *(a1 + 24) = v6 & 1;
  }

  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v8;
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Result<_DataTable, Error>(v6, v7);
  v8 = (a1 + 16);
  v9 = (a2 + 16);
  v10 = *(a2 + 24);
  if (*(a1 + 24) == 0xFF)
  {
    if (v10 == -1)
    {
      *(a1 + 24) = *(a2 + 24);
      *v8 = *v9;
    }

    else
    {
      v14 = *v9;
      outlined copy of Result<_DataTable, Error>(*v9, v10);
      *(a1 + 16) = v14;
      *(a1 + 24) = v10 & 1;
    }
  }

  else if (v10 == -1)
  {
    outlined destroy of MLDataTable(a1 + 16);
    *v8 = *v9;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v11 = *v9;
    outlined copy of Result<_DataTable, Error>(*v9, v10);
    v12 = *(a1 + 16);
    *(a1 + 16) = v11;
    v13 = *(a1 + 24);
    *(a1 + 24) = v10 & 1;
    outlined consume of Result<_DataTable, Error>(v12, v13);
  }

  v15 = *(a2 + 32);
  v16 = *(a1 + 32);
  *(a1 + 32) = v15;
  v15;
  v16;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Result<_DataTable, Error>(v5, v6);
  v7 = (a1 + 16);
  v8 = (a2 + 16);
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *v7 = *v8;
  }

  else
  {
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      outlined destroy of MLDataTable(a1 + 16);
      *v7 = *v8;
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v11 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = v10 & 1;
      outlined consume of Result<_DataTable, Error>(v11, v9);
    }
  }

  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  v12;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLActivityClassifier.PersistentParameters(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 32) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 32) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLActivityClassifier.PersistentParameters(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 64) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * (a2 - 1);
    }
  }
}

NSURL *MLActivityClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v65 = v2;
  v59 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v63 = &v58;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v64 = &v58;
  v10 = alloca(v5);
  v11 = alloca(v5);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v12 = v65;
  v13 = Data.init(contentsOf:options:)(&v58, 0);
  v65 = v12;
  if (v12)
  {
    v15 = *(v4 + 8);
    v16 = 0;
    (v15)(a1, v3);
    (v15)(&v58, v3);
    goto LABEL_21;
  }

  v71 = a1;
  v17 = *(v4 + 8);
  v18 = v14;
  v19 = v13;
  v66 = v17;
  v17(&v58, v3);
  v20 = objc_opt_self(NSPropertyListSerialization);
  v68 = v19;
  v67 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v108[0] = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:v108];
  v23 = v22;

  v24 = v108[0];
  v15 = v3;
  if (!v23)
  {
    v36 = v24;
    _convertNSErrorToError(_:)(v24);

    swift_willThrow();
    v16 = 0;
    outlined consume of Data._Representation(v68, v67);
    v66(v71, v3);
    goto LABEL_21;
  }

  _bridgeAnyObjectToAny(_:)(v23);
  swift_unknownObjectRelease(v23);
  outlined init with copy of Any(v125, v108);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(__src, v108, &type metadata for Any + 8, v25, 6))
  {
    v15 = "parameters.plist" + 0x8000000000000000;
    v16 = 0;
    v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
    *v38 = 0xD000000000000037;
    *(v38 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v38 + 16) = 0;
    *(v38 + 32) = 0;
    *(v38 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v68, v67);
    v66(v71, v3);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    goto LABEL_21;
  }

  v26 = *&__src[0];
  specialized Dictionary.subscript.getter(0xD000000000000012, (" precision recall." + 0x8000000000000000), *&__src[0]);
  if (!v109)
  {
    v26;
    outlined destroy of Any?(v108);
LABEL_19:
    v15 = "labeled_directories" + 0x8000000000000000;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000003FLL;
    *(v40 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v68, v67);
    v66(v71, v3);
    v16 = 0;
    goto LABEL_20;
  }

  v69 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(__src, v108, &type metadata for Any + 8, v27, 6))
  {
    v69;
    goto LABEL_19;
  }

  v28 = *&__src[0];
  *&__src[0];
  v29 = v69;
  specialized Dictionary.subscript.getter(0xD000000000000011, ("featureColumnNames" + 0x8000000000000000), v69);
  v70 = v28;
  if (!v109)
  {
    v42 = v29;
    v43 = v15;
    v28;
    v44 = v42;
LABEL_28:
    v44;
    v46 = v108;
LABEL_29:
    outlined destroy of Any?(v46);
LABEL_30:
    v31 = v71;
    goto LABEL_31;
  }

  v30 = swift_dynamicCast(__src, v108, &type metadata for Any + 8, &type metadata for Int, 6);
  v31 = v71;
  if (!v30)
  {
    v43 = v15;
    v70;
    v45 = v69;
LABEL_26:
    v45;
LABEL_31:
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = 0xD00000000000003FLL;
    *(v48 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v68, v67);
    v66(v31, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    v16 = 1;
    v15 = v70;
    goto LABEL_21;
  }

  v61 = *&__src[0];
  v32 = v69;
  specialized Dictionary.subscript.getter(0x7A69536863746162, 0xE900000000000065, v69);
  if (!v109)
  {
    v43 = v15;
    v70;
    v44 = v32;
    goto LABEL_28;
  }

  if (!swift_dynamicCast(__src, v108, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v43 = v15;
    v70;
    v69;
    goto LABEL_30;
  }

  *&v62 = *&__src[0];
  v33 = v69;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("maximumIterations" + 0x8000000000000000), v69);
  v33;
  if (!v124)
  {
    v43 = v15;
    v70;
    v46 = v123;
    goto LABEL_29;
  }

  v34 = swift_dynamicCast(&v73, v123, &type metadata for Any + 8, &type metadata for Int, 6);
  v31 = v71;
  if (!v34)
  {
    v43 = v15;
    v45 = v70;
    goto LABEL_26;
  }

  v69 = v15;
  *(&v62 + 1) = v73;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  v16 = 1;
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
  LOBYTE(v108[0]) = 1;
  v108[1] = &stru_20 + 12;
  v108[2] = 0xE100000000000000;
  v109 = 0;
  v110 = 0xE000000000000000;
  v111 = 92;
  v112 = 0xE100000000000000;
  v113 = 1;
  v114 = 34;
  v115 = 0xE100000000000000;
  v116 = 1;
  v117 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v118 = 10;
  v119 = 0xE100000000000000;
  v120 = 0;
  v121 = 1;
  v122 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(v108, &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:));
  memcpy(__dst, __src, sizeof(__dst));
  v35 = v65;
  MLDataTable.init(contentsOf:options:)(v64, __dst);
  if (!v35)
  {
    v72 = v106;
    v60 = v105;
    LODWORD(v64) = v106;
    outlined copy of Result<_DataTable, Error>(v105, v106);
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
    LOBYTE(v92[0]) = 1;
    *(&v92[0] + 1) = 44;
    v92[1] = 0xE100000000000000;
    *&v92[2] = 0xE000000000000000;
    *(&v92[2] + 1) = 92;
    *&v92[3] = 0xE100000000000000;
    BYTE8(v92[3]) = 1;
    *&v92[4] = 34;
    *(&v92[4] + 1) = 0xE100000000000000;
    LOBYTE(v92[5]) = 1;
    *(&v92[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    *&v92[6] = 10;
    *(&v92[6] + 1) = 0xE100000000000000;
    v92[7] = 0;
    LOBYTE(v92[8]) = 1;
    *(&v92[8] + 1) = 0;
    v89[0] = 1;
    LOBYTE(v93[0]) = 1;
    v93[1] = 44;
    v93[2] = 0xE100000000000000;
    v93[3] = 0;
    v93[4] = 0xE000000000000000;
    v93[5] = 92;
    v93[6] = 0xE100000000000000;
    v94 = 1;
    v95 = 34;
    v96 = 0xE100000000000000;
    v97 = 1;
    v98 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v99 = 10;
    v100 = 0xE100000000000000;
    v101 = 0;
    v102 = 1;
    v103 = 0;
    outlined retain of MLDataTable.ParsingOptions(v92);
    outlined release of MLDataTable.ParsingOptions(v93, 92);
    memcpy(v89, v92, sizeof(v89));
    MLDataTable.init(contentsOf:options:)(v63, v89);
    v65 = 0;
    outlined consume of Data._Representation(v68, v67);
    v49 = v90;
    v50 = v91;
    v66(v71, v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    outlined copy of MLDataTable?(v49, v50);
    outlined consume of MLDataTable?(0, 255);
    v51 = v60;
    *&v76 = v60;
    v63 = v49;
    BYTE8(v76) = v64;
    *&v77 = v49;
    BYTE8(v77) = v50;
    LOBYTE(v49) = v50;
    v52 = v70;
    *&v78 = v70;
    *(&v78 + 1) = v61;
    v79 = v62;
    outlined retain of MLActivityClassifier.PersistentParameters(&v76);
    v52;
    v53 = v63;
    outlined consume of MLDataTable?(v63, v49);
    outlined consume of Result<_DataTable, Error>(v51, v64);
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v57 = v59;
    v59[3] = v79;
    v57[2] = v56;
    v57[1] = v55;
    *v57 = v54;
    v80 = v51;
    v81 = v72;
    *v82 = *v75;
    *&v82[3] = *&v75[3];
    v83 = v53;
    v84 = v49;
    *v85 = *v74;
    *&v85[3] = *&v74[3];
    v86 = v70;
    v87 = v61;
    v88 = v62;
    outlined release of MLActivityClassifier.PersistentParameters(&v80);
    return __stack_chk_guard;
  }

  outlined consume of Data._Representation(v68, v67);
  v15 = v70;
  v70;
  v66(v71, v69);
  __swift_destroy_boxed_opaque_existential_1Tm(v125);
LABEL_21:
  outlined consume of MLDataTable?(0, 255);
  if (v16)
  {
    v15;
  }

  return __stack_chk_guard;
}

uint64_t MLActivityClassifier.PersistentParameters.init(trainingData:validationData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a3;
  v41 = v8;
  a5;
  a7;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 8);
  v46 = v12 & 1;
  v43 = v12;
  outlined copy of Result<_DataTable, Error>(v11, v12);
  v42 = v13;
  outlined copy of MLDataTable?(v13, v14);
  outlined consume of MLDataTable?(0, 255);
  v15 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v16 = v15[6];
  if (*(a8 + v16 + 8))
  {
    v17 = 10;
  }

  else
  {
    v17 = *(a8 + v16);
  }

  v44 = v17;
  v18 = v15[7];
  if (*(a8 + v18 + 8))
  {
    v19 = 32;
  }

  else
  {
    v19 = *(a8 + v18);
  }

  *&v45 = v19;
  v20 = v15[8];
  if (*(a8 + v20 + 8))
  {
    v21 = 100;
  }

  else
  {
    v21 = *(a8 + v20);
  }

  *(&v45 + 1) = v21;
  v22 = v40;
  v40;
  outlined destroy of MLActivityClassifier.ModelParameters(a8);
  *&v36 = v11;
  BYTE8(v36) = v12 & 1;
  v23 = v42;
  *&v37 = v42;
  BYTE8(v37) = v14;
  *&v38 = v40;
  *(&v38 + 1) = v44;
  v39 = v45;
  outlined retain of MLActivityClassifier.PersistentParameters(&v36);
  v22;
  outlined consume of MLDataTable?(v23, v14);
  outlined consume of Result<_DataTable, Error>(v11, v43);
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v41;
  v41[3] = v39;
  v27[2] = v26;
  v27[1] = v25;
  *v27 = v24;
  v29 = v11;
  v30 = v46;
  v31 = v23;
  v32 = v14;
  v33 = v22;
  v34 = v44;
  v35 = v45;
  return outlined release of MLActivityClassifier.PersistentParameters(&v29);
}

NSURL *MLActivityClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v33 = v1;
  v38 = a1;
  v41 = type metadata accessor for URL(0);
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v36 = &v32;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v34 = &v32;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v43 = &v32;
  v35 = *v2;
  v44 = *(v2 + 8);
  v37 = *(v2 + 16);
  v45 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v40 = *(v2 + 48);
  v42 = *(v2 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v12, v48);
  inited[2] = 4;
  inited[3] = 8;
  inited[4] = 0xD000000000000012;
  inited[5] = " precision recall." + 0x8000000000000000;
  inited[9] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[6] = v10;
  inited[10] = 0xD000000000000011;
  inited[11] = "featureColumnNames" + 0x8000000000000000;
  inited[15] = &type metadata for Int;
  inited[12] = v11;
  inited[16] = 0x7A69536863746162;
  inited[17] = 0xE900000000000065;
  inited[21] = &type metadata for Int;
  inited[18] = v40;
  inited[22] = 0xD000000000000014;
  inited[23] = "maximumIterations" + 0x8000000000000000;
  inited[27] = &type metadata for Int;
  inited[24] = v42;
  v10;
  v14 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v15 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v14;
  v46 = 0;
  v17 = [v15 dataWithPropertyList:isa format:200 options:0 error:&v46];
  v18 = v17;

  v19 = v46;
  if (v18)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v18);
    v42 = v21;

    v22 = v43;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v23 = v22;
    v24 = v42;
    v25 = v33;
    Data.write(to:options:)(v23, 0, v20, v42);
    if (v25)
    {
      (*(v39 + 8))(v43, v41);
      outlined consume of Data._Representation(v20, v24);
    }

    else
    {
      v40 = v20;
      v27 = v43;
      v43 = *(v39 + 8);
      (v43)(v27, v41);
      v46 = v35;
      LOBYTE(v47) = v44 & 1;
      outlined copy of Result<_DataTable, Error>(v35, v44);
      v28 = v34;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      MLDataTable.write(to:)(v28);
      (v43)(v28, v41);
      outlined consume of Result<_DataTable, Error>(v46, v47);
      v29 = v40;
      if (v45 == -1)
      {
        outlined consume of Data._Representation(v40, v42);
      }

      else
      {
        v46 = v37;
        LOBYTE(v47) = v45 & 1;
        outlined copy of MLDataTable?(v37, v45);
        v30 = v36;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v30);
        outlined consume of Data._Representation(v29, v42);
        (v43)(v30, v41);
        outlined consume of Result<_DataTable, Error>(v46, v47);
      }
    }
  }

  else
  {
    v26 = v19;
    _convertNSErrorToError(_:)(v19);

    swift_willThrow(v26, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t outlined destroy of MLActivityClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLRandomForestRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
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
    v9 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
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
    v20 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v18 = a4;
  v19 = a3;
  v9 = v8;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v10 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 104) = 0;
  *(v9 + 88) = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = v19;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v18;
  *(v9 + 72) = v21;
  *(v9 + 80) = v20;
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(a1, &v16);
  v17[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(&v16, boxed_opaque_existential_0);
  outlined assign with take of Any?(v17, v9);
  return outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(a1);
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = *a1;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 104) = 0;
  v10 = *(a1 + 8);
  *(v8 + 88) = 0;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  v12 = v9;
  v13 = v10;
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v12);
}

uint64_t MLRandomForestRegressor.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v18 = v15;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 88) = 0;
  *(v3 + 104) = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.maximumIterations.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 56) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 64) = BoostedTreeConfiguration.randomSeed.getter();
  *(v3 + 72) = BoostedTreeConfiguration.rowSubsample.getter();
  *(v3 + 80) = BoostedTreeConfiguration.columnSubsample.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLRandomForestRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v11 = v18;
    swift_storeEnumTagMultiPayload(v18, v7, 3);
    if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v18;
    outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v15, v18);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLRandomForestRegressor.ModelParameters.description.getter()
{
  v26._countAndFlagsBits = v0[4];
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
  v26._countAndFlagsBits = 0xD000000000000010;
  v26._object = "ansformer have different types." + 0x8000000000000000;
  v24 = v0[5];
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
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v6._object = "Max Iterations: " + 0x8000000000000000;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v23 = v0[6];
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v26;
  v8 = v26._object;
  String.append(_:)(v26);
  v8, v7._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v7._object = "Min Loss Reduction: " + 0x8000000000000000;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v9 = v26;
  v10 = v26._object;
  String.append(_:)(v26);
  v10, v9._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v26._object, v9._object;
  strcpy(&v26, "Random Seed: ");
  HIWORD(v26._object) = -4864;
  v25 = v0[8];
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v12 = v11._object;
  v13 = v11;
  String.append(_:)(v11);
  v12, v13._object;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v26;
  v15 = v26._object;
  String.append(_:)(v26);
  v15, v14._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v14._countAndFlagsBits = 0x7362755320776F52;
  v14._object = 0xEF203A656C706D61;
  String.append(_:)(v14);
  v16 = v0[9];
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v17 = v26;
  v18 = v26._object;
  String.append(_:)(v26);
  v18, v17._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v17._object = "Min Child Weight: " + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v19 = v0[10];
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v17._countAndFlagsBits = 10;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v20 = v26;
  v21 = v26._object;
  String.append(_:)(v26);
  v21, v20._object;
  return 0x747065442078614DLL;
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
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
  MLRandomForestRegressor.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLRandomForestRegressor.ModelParameters.validationData : MLRandomForestRegressor.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLRandomForestRegressor.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLRandomForestRegressor.ModelParameters.validationData : MLRandomForestRegressor.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
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
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t (*MLRandomForestRegressor.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLRandomForestRegressor.ModelParameters.validationData.getter(a2);
  return MLRandomForestRegressor.ModelParameters.validationData.modify;
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLRandomForestRegressor.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLRandomForestRegressor.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLRandomForestRegressor.ModelParameters.validation : MLRandomForestRegressor.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(a1, v6);
  return MLRandomForestRegressor.ModelParameters.validation.setter(v6);
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

uint64_t outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void (*MLRandomForestRegressor.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
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
  return MLRandomForestRegressor.ModelParameters.validation.modify;
}

void MLRandomForestRegressor.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v8 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  if (a2)
  {
    outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLRandomForestRegressor.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLRandomForestRegressor.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t initializeWithCopy for MLRandomForestRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
  }

  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = a2[6];
  return a1;
}

uint64_t assignWithCopy for MLRandomForestRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v2)
    {
      *(a1 + 24) = v2;
      (**(v2 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 104) = *(a2 + 13);
  return a1;
}

uint64_t assignWithTake for MLRandomForestRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  return a1;
}

uint64_t static Conv2D.loadLayer(from:layerName:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v122[0] = v6;
  v122[1] = v5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v131 = v122;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v134 = v122;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v137 = COERCE_DOUBLE(v122);
  v140 = type metadata accessor for Tensor(0);
  v129 = *(v140 - 8);
  v17 = *(v129 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v130 = v122;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v133 = v122;
  v135 = type metadata accessor for TensorShape(0);
  v136 = *(v135 - 8);
  v22 = *(v136 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v138 = COERCE_DOUBLE(v122);
  v25 = alloca(v22);
  v26 = alloca(v22);
  v128 = v122;
  v148 = *&a2;
  v146 = *&a2;
  v147 = *&a3;
  a3;
  v27._countAndFlagsBits = 0x7468676965772ELL;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  v28 = *&v147;
  *&v29 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v146, *&v147, a1));
  v28;
  if (*&v29 == 0.0)
  {
    v146 = 0.0;
    v147 = -2.681561585988519e154;
    _StringGuts.grow(_:)(39);
    v64 = *&v147;
    a3;
    v64;
    v146 = v148;
    v147 = *&a3;
    v65._object = "predictionWindowSize" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD000000000000025;
LABEL_27:
    String.append(_:)(v65);
    v71 = v146;
    v72 = *&v147;
    v73 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v73, 0, 0);
    *v74 = v71;
    *(v74 + 8) = v72;
    *(v74 + 16) = 0;
    *(v74 + 32) = 0;
    *(v74 + 48) = 2;
    return swift_willThrow();
  }

  v145 = v29;
  v144 = a1;
  v146 = v148;
  v147 = *&a3;
  a3;
  v30._countAndFlagsBits = 0x2E7468676965772ELL;
  v30._object = 0xED00006570616873;
  String.append(_:)(v30);
  v31 = *&v147;
  v32 = v144;
  *&v33 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v146, *&v147, v144));
  v31;
  if (*&v33 == 0.0)
  {
    v145;
    v146 = 0.0;
    v147 = -2.681561585988519e154;
    _StringGuts.grow(_:)(45);
    v66 = *&v147;
    a3;
    v66;
    v146 = v148;
    v147 = *&a3;
    v65._object = "d in state dictionary" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD00000000000002BLL;
    goto LABEL_27;
  }

  v143 = *&v33;
  v146 = v148;
  v147 = *&a3;
  v142 = *&a3;
  a3;
  v34._countAndFlagsBits = 0x736564697274732ELL;
  v34._object = 0xE800000000000000;
  String.append(_:)(v34);
  v35 = *&v147;
  v36 = specialized Dictionary.subscript.getter(*&v146, *&v147, v32);
  v34._countAndFlagsBits = v35;
  v37 = v143;
  v34._countAndFlagsBits;
  v38 = v145;
  if (!v36)
  {
LABEL_23:
    *&v37;
    v38;
    v146 = 0.0;
    v147 = -2.681561585988519e154;
    _StringGuts.grow(_:)(40);
    v67 = *&v147;
    *&v68 = v142;
    LOBYTE(v142);
    v67;
    v146 = v148;
    v147 = *&v68;
    v69 = "t found in state dictionary";
LABEL_26:
    v65._object = (v69 | 0x8000000000000000);
    v65._countAndFlagsBits = 0xD000000000000026;
    goto LABEL_27;
  }

  if (*(v36 + 16) != 2)
  {
    v36;
    goto LABEL_23;
  }

  v146 = v148;
  *&v39 = v142;
  v147 = v142;
  LOBYTE(v142);
  v40._countAndFlagsBits = 0x676E69646461702ELL;
  v40._object = 0xE800000000000000;
  String.append(_:)(v40);
  v41 = *&v147;
  v42 = specialized Dictionary.subscript.getter(*&v146, *&v147, v144);
  v41;
  if (!v42)
  {
LABEL_25:
    v36;
    *&v143;
    v145;
    v146 = 0.0;
    v147 = -2.681561585988519e154;
    _StringGuts.grow(_:)(40);
    v70 = *&v147;
    v39;
    v70;
    v146 = v148;
    v147 = *&v39;
    v69 = "nd in state dictionary";
    goto LABEL_26;
  }

  if (*(v42 + 16) != 2)
  {
    v42;
    goto LABEL_25;
  }

  v139 = v42;
  v146 = v148;
  v147 = *&v39;
  v39;
  v43._countAndFlagsBits = 0x6F6974616C69642ELL;
  v43._object = 0xEA0000000000736ELL;
  String.append(_:)(v43);
  v44 = *&v147;
  v45 = specialized Dictionary.subscript.getter(*&v146, *&v147, v144);
  v44;
  v46 = v45;
  v47 = v45 == 0;
  v48 = v145;
  v49 = v143;
  if (v47)
  {
LABEL_29:
    v139;
    v36;
    *&v49;
    v48;
    v146 = 0.0;
    v147 = -2.681561585988519e154;
    _StringGuts.grow(_:)(42);
    v76 = *&v147;
    v39;
    v76;
    v146 = v148;
    v147 = *&v39;
    v65._object = "nd in state dictionary" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD000000000000028;
    goto LABEL_27;
  }

  if (*(v46 + 16) != 2)
  {
    v46;
    goto LABEL_29;
  }

  v132 = v46;
  v146 = v148;
  v147 = *&v39;
  v39;
  v50._object = 0xEB00000000746E75;
  v50._countAndFlagsBits = 0x6F4370756F72672ELL;
  String.append(_:)(v50);
  v51 = *&v147;
  v52 = specialized Dictionary.subscript.getter(*&v146, *&v147, v144);
  v51;
  v53 = v52;
  v54 = v143;
  v55 = v145;
  if (!v53)
  {
LABEL_31:
    v132;
    v139;
    v36;
    *&v54;
    v55;
    v146 = 0.0;
    v147 = -2.681561585988519e154;
    _StringGuts.grow(_:)(43);
    v77 = *&v147;
    v39;
    v77;
    v146 = v148;
    v147 = *&v39;
    v65._object = "ound in state dictionary" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD000000000000029;
    goto LABEL_27;
  }

  if (*(v53 + 16) != 1)
  {
    v53;
    goto LABEL_31;
  }

  v124 = v53;
  v56 = *(*&v143 + 16);
  v123 = v36;
  if (v56)
  {
    v146 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    v57 = 0;
    v141 = v56;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
    v58 = v141;
    v59 = v146;
    a4 = -9.223372036854778e18;
    a5 = 9.223372036854776e18;
    do
    {
      v60 = *(*&v143 + 8 * v57 + 32);
      if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
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

      v146 = v59;
      v61 = *(*&v59 + 16);
      v62 = *(*&v59 + 24);
      v63 = v61 + 1;
      if (v62 >> 1 <= v61)
      {
        v126 = *(*&v59 + 16);
        v125 = v60;
        v127 = v61 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 >= 2, v63, 1);
        v63 = v127;
        v61 = v126;
        v60 = v125;
        a5 = 9.223372036854776e18;
        a4 = -9.223372036854778e18;
        v58 = v141;
        v59 = v146;
      }

      ++v57;
      *(*&v59 + 16) = v63;
      *(*&v59 + 8 * v61 + 32) = v60;
    }

    while (v58 != v57);
    *&v143;
  }

  else
  {
    *&v143;
    v59 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  }

  v78 = v128;
  TensorShape.init(_:)(*&v59, a4, a5);
  v79 = *&v137;
  v80 = v135;
  v143 = *(v136 + 16);
  (*&v143)(*&v137, v78, v135);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
  v81 = v145;
  Array<A>.floatTensor(shape:)(v79, v145);
  v81;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, &demangling cache variable for type metadata for TensorShape?);
  v82 = v134;
  __swift_storeEnumTagSinglePayload(v134, 1, 1, v140);
  v146 = v148;
  v147 = *&v39;
  v39;
  v83._countAndFlagsBits = 0x736169622ELL;
  v83._object = 0xE500000000000000;
  String.append(_:)(v83);
  v84 = *&v147;
  v85 = v144;
  *&v86 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v146, *&v147, v144));
  v83._countAndFlagsBits = v84;
  v87 = v140;
  v83._countAndFlagsBits;
  v145 = v86;
  if (*&v86 != 0.0)
  {
    v146 = v148;
    v147 = v142;
    LOBYTE(v142);
    v88._countAndFlagsBits = 0x68732E736169622ELL;
    v88._object = 0xEB00000000657061;
    String.append(_:)(v88);
    v89 = *&v147;
    *&v90 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v146, *&v147, v85));
    v89;
    if (*&v90 == 0.0)
    {
      v145;
      v87 = v140;
    }

    else
    {
      v91 = v90;
      v92 = *(v90 + 16);
      if (*&v92 == 0.0)
      {
        v90;
        v96 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      }

      else
      {
        v146 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
        v93 = 0;
        v144 = v91;
        v148 = *&v92;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 0);
        v94 = v148;
        v95 = v144;
        v96 = v146;
        a4 = -9.223372036854778e18;
        a5 = 9.223372036854776e18;
        v97 = 1;
        do
        {
          v98 = *(v95 + 8 * v93 + 32);
          if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v98 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v98 >= 9.223372036854776e18)
          {
            BUG();
          }

          v146 = v96;
          v99 = *(*&v96 + 16);
          v100 = *(*&v96 + 24);
          v101 = v99 + 1;
          if (v100 >> 1 <= v99)
          {
            v102 = v97;
            v142 = v98;
            v141 = v99 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v100 >= 2, v101, v97);
            v101 = v141;
            v98 = v142;
            v97 = v102;
            a5 = 9.223372036854776e18;
            a4 = -9.223372036854778e18;
            v94 = v148;
            v95 = v144;
            v96 = v146;
          }

          ++v93;
          *(*&v96 + 16) = v101;
          *(*&v96 + 8 * v99 + 32) = v98;
        }

        while (*&v94 != v93);
        v95;
      }

      v103 = v138;
      TensorShape.init(_:)(*&v96, a4, a5);
      v104 = *&v137;
      v105 = v135;
      (*&v143)(*&v137, COERCE_DOUBLE(*&v103), v135);
      __swift_storeEnumTagSinglePayload(v104, 0, 1, v105);
      v106 = v131;
      v107 = v145;
      Array<A>.floatTensor(shape:)(v104, v145);
      v107;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, &demangling cache variable for type metadata for TensorShape?);
      (*(v136 + 8))(COERCE_DOUBLE(*&v138), v105);
      v82 = v134;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v134, &demangling cache variable for type metadata for Tensor?);
      v87 = v140;
      __swift_storeEnumTagSinglePayload(v106, 0, 1, v140);
      outlined init with take of Tensor?(v106, v82);
    }
  }

  (*(v129 + 16))(v130, v133, v87);
  v108 = v131;
  outlined init with copy of Tensor?(v82, v131);
  v109 = *(v123 + 16);
  if (!v109)
  {
    BUG();
  }

  v110 = *(v123 + 32);
  if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v110 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v110 >= 9.223372036854776e18)
  {
    BUG();
  }

  v137 = *(v123 + 32);
  if (v109 == 1)
  {
    BUG();
  }

  v148 = *(v123 + 40);
  v111 = v148;
  v123;
  if ((*&v111 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v148 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v148 >= 9.223372036854776e18)
  {
    BUG();
  }

  v112 = *(v139 + 16);
  if (!v112)
  {
    BUG();
  }

  v113 = *(v139 + 32);
  if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v113 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v113 >= 9.223372036854776e18)
  {
    BUG();
  }

  v138 = *(v139 + 32);
  if (v112 == 1)
  {
    BUG();
  }

  v144 = *(v139 + 40);
  v114 = v144;
  v139;
  if ((v114 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (*&v144 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (*&v144 >= 9.223372036854776e18)
  {
    BUG();
  }

  v115 = *(v132 + 16);
  if (!v115)
  {
    BUG();
  }

  v116 = *(v132 + 32);
  if ((*&v116 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v116 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v116 >= 9.223372036854776e18)
  {
    BUG();
  }

  v143 = *(v132 + 32);
  if (v115 == 1)
  {
    BUG();
  }

  v145 = *(v132 + 40);
  v117 = v145;
  v132;
  if ((v117 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (*&v145 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (*&v145 >= 9.223372036854776e18)
  {
    BUG();
  }

  if (!*(v124 + 16))
  {
    BUG();
  }

  v142 = *(v124 + 32);
  v118 = v142;
  v124;
  if ((*&v118 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  v119 = v140;
  v120 = v137;
  v121 = v138;
  if (v142 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v142 >= 9.223372036854776e18)
  {
    BUG();
  }

  Conv2D.init(weight:bias:stride:padding:dilation:groupCount:)(v130, v108, v137, v148, v138, *&v144, v143, *&v145, v142);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v134, &demangling cache variable for type metadata for Tensor?);
  (*(v129 + 8))(v133, v119, v120, 9.223372036854776e18, v121);
  return (*(v136 + 8))(v128, v135);
}

uint64_t outlined init with copy of Tensor?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

BOOL AnalyticsReporter.init()()
{
  v0 = objc_opt_self(NSUserDefaults);
  v1 = [v0 standardUserDefaults];
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  return v4 != 0;
}

Swift::Bool __swiftcall AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML::ModelType model, Swift::String metricName, Swift::Float quantity)
{
  v21 = quantity;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v20);
  inited[2].super.super.isa = &dword_4;
  inited[3].super.super.isa = &dword_8;
  inited[4].super.super.isa = 0x6574616C706D6554;
  inited[5].super.super.isa = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  inited[6].super.super.isa = v7;
  inited[7].super.super.isa = 0x614E63697274654DLL;
  inited[8].super.super.isa = 0xEA0000000000656DLL;
  inited[9].super.super.isa = String._bridgeToObjectiveC()();
  inited[10].super.super.isa = 0x797469746E617551;
  inited[11].super.super.isa = 0xE800000000000000;
  *&v8 = LODWORD(v21);
  inited[12].super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
  inited[13].super.super.isa = 0x656C646E7542;
  inited[14].super.super.isa = 0xE600000000000000;
  v9 = objc_opt_self(NSBundle);
  v10 = [v9 mainBundle];
  v11 = v10;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v11);
  v13 = "found in state dictionary" + 0x8000000000000000;
  if (v12)
  {
    v13 = v12;
  }

  v14 = String._bridgeToObjectiveC()();
  v13;
  inited[15].super.super.isa = v14;
  v15 = type metadata accessor for NSObject();
  v16._rawValue = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
  v17._object = "ml.parameter_setting" + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD00000000000001FLL;
  v18 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v17, v16);
  v16._rawValue;
  return v18;
}

Swift::Bool __swiftcall AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML::ModelType model, Swift::String metricName, Swift::Int quantity)
{
  v20 = quantity;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v19);
  inited[2].super.super.isa = &dword_4;
  inited[3].super.super.isa = &dword_8;
  inited[4].super.super.isa = 0x6574616C706D6554;
  inited[5].super.super.isa = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  inited[6].super.super.isa = v7;
  inited[7].super.super.isa = 0x614E63697274654DLL;
  inited[8].super.super.isa = 0xEA0000000000656DLL;
  inited[9].super.super.isa = String._bridgeToObjectiveC()();
  inited[10].super.super.isa = 0x797469746E617551;
  inited[11].super.super.isa = 0xE800000000000000;
  inited[12].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  inited[13].super.super.isa = 0x656C646E7542;
  inited[14].super.super.isa = 0xE600000000000000;
  v8 = objc_opt_self(NSBundle);
  v9 = [v8 mainBundle];
  v10 = v9;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v10);
  v12 = "found in state dictionary" + 0x8000000000000000;
  if (v11)
  {
    v12 = v11;
  }

  v13 = String._bridgeToObjectiveC()();
  v12;
  inited[15].super.super.isa = v13;
  v14 = type metadata accessor for NSObject();
  v15._rawValue = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v14, &protocol witness table for String);
  v16._object = "ml.parameter_setting" + 0x8000000000000000;
  v16._countAndFlagsBits = 0xD00000000000001FLL;
  v17 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v16, v15);
  v15._rawValue;
  return v17;
}

Swift::Bool __swiftcall AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML::ModelType model, Swift::String parameterName, Swift::String parameterValue)
{
  object = parameterValue._object;
  countAndFlagsBits = parameterValue._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v19);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x6574616C706D6554;
  *(inited + 40) = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  *(inited + 48) = v7;
  strcpy((inited + 56), "ParameterName");
  *(inited + 70) = -4864;
  *(inited + 72) = String._bridgeToObjectiveC()();
  strcpy((inited + 80), "ParameterValue");
  *(inited + 95) = -18;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x656C646E7542;
  *(inited + 112) = 0xE600000000000000;
  v8 = objc_opt_self(NSBundle);
  v9 = [v8 mainBundle];
  v10 = v9;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v10);
  v12 = "found in state dictionary" + 0x8000000000000000;
  if (v11)
  {
    v12 = v11;
  }

  v13 = String._bridgeToObjectiveC()();
  v12;
  *(inited + 120) = v13;
  v14 = type metadata accessor for NSObject();
  v15._rawValue = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v14, &protocol witness table for String);
  v16._object = "ml.template_used" + 0x8000000000000000;
  v16._countAndFlagsBits = 0xD000000000000024;
  v17 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v16, v15);
  v15._rawValue;
  return v17;
}

Swift::Bool __swiftcall AnalyticsReporter.analyticsSendEventWrapper(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = swift_allocObject(&unk_390AE8, 24, 7);
  v4[2]._rawValue = a2._rawValue;
  aBlock[4] = partial apply for closure #1 in AnalyticsReporter.analyticsSendEventWrapper(_:_:);
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_2;
  v5 = _Block_copy(aBlock);
  a2._rawValue;

  LOBYTE(a2._rawValue) = AnalyticsSendEventLazy(v3, v5);
  _Block_release(v5);

  return a2._rawValue;
}

uint64_t AnalyticsReporter.reportTemplateUsed(model:mode:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v24 = ModelType.description.getter(a1._countAndFlagsBits);
  v25 = v2;
  if (LOBYTE(a1._object) != 2)
  {
    a1._countAndFlagsBits = 0x636E797341202D20;
    if (a1._object)
    {
      a1._countAndFlagsBits = 0x68636E7953202D20;
    }

    v3 = 0xEF73756F6E6F7268;
    if (a1._object)
    {
      v3 = 0xEE0073756F6E6F72;
    }

    a1._object = v3;
    String.append(_:)(a1);
    v3;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v4, v23);
  inited[2] = 3;
  inited[3] = 6;
  inited[4] = 0x6574616C706D6554;
  inited[5] = 0xE800000000000000;
  ModelType.description.getter(countAndFlagsBits);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v7;
  inited[6] = v8;
  inited[7] = 0x656C646E7542;
  inited[8] = 0xE600000000000000;
  v9 = objc_opt_self(NSBundle);
  v10 = [v9 mainBundle];
  v11 = v10;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v11);
  v13 = "found in state dictionary" + 0x8000000000000000;
  if (v12)
  {
    v13 = v12;
  }

  v14 = String._bridgeToObjectiveC()();
  v13;
  inited[9] = v14;
  inited[10] = 0x6574616C706D6554;
  inited[11] = 0xEF65736F62726556;
  v15 = v25;
  v16 = String._bridgeToObjectiveC()();
  v15;
  inited[12] = v16;
  v17 = type metadata accessor for NSObject();
  v18._rawValue = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v17, &protocol witness table for String);
  v19._object = "@NSDictionary8@?0" + 0x8000000000000000;
  v19._countAndFlagsBits = 0xD000000000000020;
  LOBYTE(v20) = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v19, v18);
  v21 = v20;
  v18._rawValue;
  return v21;
}

Swift::Bool __swiftcall AnalyticsReporter.reportEventDuration(model:task:startTime:)(CreateML::ModelType model, Swift::String task, Swift::Double startTime)
{
  v21 = CFAbsoluteTimeGetCurrent() - startTime;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v20);
  inited[2].super.super.isa = &dword_4;
  inited[3].super.super.isa = &dword_8;
  inited[4].super.super.isa = 0x6574616C706D6554;
  inited[5].super.super.isa = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  inited[6].super.super.isa = v7;
  inited[7].super.super.isa = 1802723668;
  inited[8].super.super.isa = 0xE400000000000000;
  inited[9].super.super.isa = String._bridgeToObjectiveC()();
  inited[10].super.super.isa = 0x6E6F697461727544;
  inited[11].super.super.isa = 0xE800000000000000;
  v8 = v21;
  inited[12].super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  inited[13].super.super.isa = 0x656C646E7542;
  inited[14].super.super.isa = 0xE600000000000000;
  v9 = objc_opt_self(NSBundle);
  v10 = [v9 mainBundle];
  v11 = v10;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v11);
  v13 = "found in state dictionary" + 0x8000000000000000;
  if (v12)
  {
    v13 = v12;
  }

  v14 = String._bridgeToObjectiveC()();
  v13;
  inited[15].super.super.isa = v14;
  v15 = type metadata accessor for NSObject();
  v16._rawValue = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
  v17._object = "Indeterminate bundle" + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD000000000000021;
  v18 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v17, v16);
  v16._rawValue;
  return v18;
}

uint64_t outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(id a1)
{
  v1 = [a1 bundleIdentifier];
  v2 = v1;

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);

  return v3;
}

uint64_t block_destroy_helper_2(uint64_t a1)
{
  return *(a1 + 40);
}

{
  return block_destroy_helper_8(a1);
}

void *_s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSayypSgG_Tt0g503_s8d23ML16MLObjectDetectorV10b35SourceO24gatherAnnotatedFileNames07a5E00E5C22VyKFSbSayypSgGSgXEfU0_Tf1ncn_n(Swift::String a1, uint64_t a2)
{
  v101[2] = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v115 = *(v4 - 8);
  v5 = *(v115 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v114 = &v100;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v110 = &v100;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v103 = &v100;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v102 = &v100;
  v124 = type metadata accessor for AnyColumn(0);
  v120 = *(v124 - 8);
  v14 = *(v120 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v122 = &v100;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v118 = &v100;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v113 = &v100;
  v108._countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v21 = DataFrame.indexOfColumn(_:)(a1);
  v112 = v4;
  v116 = a2;
  if (v21.is_nil)
  {
    goto LABEL_5;
  }

  value = v21.value;
  v23 = DataFrame.columns.getter();
  if (value < 0)
  {
    BUG();
  }

  if (value >= *(v23 + 16))
  {
    BUG();
  }

  v24 = v120;
  v25 = ((*(v120 + 80) + 32) & ~*(v120 + 80)) + v23 + *(v120 + 72) * value;
  v26 = v113;
  v125 = v23;
  v27 = v124;
  (*(v120 + 16))(v113, v25, v124);
  v125;
  v28 = AnyColumn.wrappedElementType.getter();
  (*(v24 + 8))(v26, v27);
  a1._countAndFlagsBits = &demangling cache variable for type metadata for [Any?];
  if (v28 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]))
  {
    object;
    return v108._countAndFlagsBits;
  }

  else
  {
LABEL_5:
    if (DataFrame.shape.getter(a1._countAndFlagsBits) <= 0)
    {
      v60 = "not in Data Table." + 0x8000000000000000;
      v61 = 0xD00000000000001ALL;
    }

    else
    {
      v29 = DataFrame.columns.getter();
      v117 = *(v29 + 16);
      v123 = _swiftEmptyArrayStorage;
      v30 = 0;
      v31 = v124;
      v32 = v120;
      v119 = v29;
      while (v117 != v30)
      {
        if (v30 >= *(v29 + 16))
        {
          BUG();
        }

        v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v121 = *(v32 + 72);
        v34 = v33 + v29 + v30 * v121;
        v35 = v30;
        v36 = v118;
        (*(v32 + 16))(v118, v34, v31);
        v125 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
        if (AnyColumn.wrappedElementType.getter() == v125)
        {
          v125 = v35;
          v38 = v124;
          v111 = *(v32 + 32);
          v111(v122, v36, v124);
          v39 = v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v123);
          v108._object = v39;
          if (isUniquelyReferenced_nonNull_native)
          {
            v41 = v38;
          }

          else
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1);
            v41 = v124;
            v39 = v108._object;
          }

          v42 = v125;
          v43 = v33;
          v44 = v121;
          v45 = v39[2];
          v46 = v45 + 1;
          if (v39[3] >> 1 <= v45)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39[3] >= 2uLL, v46, 1);
            v44 = v121;
            v42 = v125;
            v41 = v124;
            v39 = v108._object;
          }

          v30 = v42 + 1;
          v39[2] = v46;
          v123 = v39;
          v47 = v39 + v43 + v44 * v45;
          v48 = v41;
          (v111)(v47, v122);
          v31 = v48;
          v32 = v120;
          v29 = v119;
        }

        else
        {
          v37 = v124;
          (*(v32 + 8))(v36, v124);
          v31 = v37;
          v29 = v119;
          v30 = v35 + 1;
        }
      }

      v29;
      v49 = v123;
      v50 = v123[2];
      if (v50)
      {
        v108._object = _swiftEmptyArrayStorage;
        v117 = v50;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
        v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
        v51 = v108._object;
        v52 = v49 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v119 = *(v32 + 16);
        v121 = *(v32 + 72);
        do
        {
          v53 = v113;
          v125 = v52;
          v54 = v124;
          v119(v113, v52, v124);
          v55 = AnyColumn.assumingType<A>(_:)(v118, v118);
          (*(v120 + 8))(v53, v54, v55);
          v108._object = v51;
          v56 = v51[2];
          if (v51[3] >> 1 <= v56)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51[3] >= 2uLL, v56 + 1, 1);
            v51 = v108._object;
          }

          v51[2] = v56 + 1;
          v57 = v51 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v56;
          v58 = v112;
          (*(v115 + 32))(v57, v114, v112);
          v52 = &v121[v125];
          --v117;
        }

        while (v117);
        v122 = v51;
        v59 = v123;
      }

      else
      {
        v59 = v123;

        v122 = _swiftEmptyArrayStorage;
        v58 = v112;
      }

      v62 = DataFrame.shape.getter(v59) * 0.2;
      if (COERCE__INT64(fabs(v62)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v62 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v62 >= 9.223372036854776e18)
      {
        BUG();
      }

      v63 = DataFrame.shape.getter(v59);
      v64 = 10;
      if (v63 < 10)
      {
        v64 = v63;
      }

      if (v64 <= v62)
      {
        v64 = v62;
      }

      v116 = v64;
      if (v64 < 0)
      {
        BUG();
      }

      v65 = v122;
      v66 = v110;
      if (v64)
      {
        v118 = v122[2];
        v117 = 0;
        v67 = 0;
        v113 = &type metadata for Any + 8;
        while (1)
        {
          v68 = __OFADD__(1, v67);
          v67 = (v67 + 1);
          if (v68)
          {
            BUG();
          }

          if (v118)
          {
            break;
          }

LABEL_70:
          v117 = v67;
          if (v67 == v116)
          {
            goto LABEL_71;
          }
        }

        v114 = v67;
        v69 = v115;
        v119 = (v65 + ((*(v115 + 80) + 32) & ~*(v115 + 80)));
        v65;
        v121 = *(v69 + 16);
        v120 = *(v69 + 72);
        v70 = 0;
        while (1)
        {
          (v121)(v66, v119 + v70 * v120, v58);
          v71 = v58;
          Column.subscript.getter(v117, v58);
          v72 = v100;
          if (v100)
          {
            v124 = v70;
            v73 = *(v100 + 16);
            *&v104[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
            v74 = *&v104[0];
            v125 = v72;
            if (v73)
            {
              v75 = v72 + 32;
              while (1)
              {
                outlined init with copy of Any?(v75, &v108._object);
                v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
                v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                if (!swift_dynamicCast(&v105, &v108._object, v76, v77, 6))
                {
                  break;
                }

                v78 = v105;
                *&v104[0] = v74;
                v79 = v74[2];
                v80 = v74[3];
                v81 = v79 + 1;
                if (v80 >> 1 <= v79)
                {
                  v123 = (v79 + 1);
                  v111 = v105;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v80 >= 2, v81, 1);
                  v81 = v123;
                  v78 = v111;
                  v74 = *&v104[0];
                }

                v74[2] = v81;
                v74[v79 + 4] = v78;
                v75 += 32;
                if (!--v73)
                {
                  v58 = v112;
                  goto LABEL_49;
                }
              }

              v125;

              v71 = v112;
            }

            else
            {
              if (*(*&v104[0] + 16))
              {
                v58 = v71;
LABEL_49:
                v82 = v74[4];
                v82;

                if (*(v82 + 16) && (v83 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6562616CLL, 0xE500000000000000), (v84 & 1) != 0))
                {
                  outlined init with copy of Any(*(v82 + 56) + 32 * v83, v104);
                  outlined init with take of Any(v104, &v108._object);
                  if (*(v82 + 16))
                  {
                    v85 = specialized __RawDictionaryStorage.find<A>(_:)(0x616E6964726F6F63, 0xEB00000000736574);
                    if (v86)
                    {
                      outlined init with copy of Any(*(v82 + 56) + 32 * v85, &v105);
                    }

                    else
                    {
                      v106 = 0;
                      v105 = 0;
                    }
                  }

                  else
                  {
                    v106 = 0;
                    v105 = 0;
                  }

                  v82;
                  if (*(&v106 + 1))
                  {
                    outlined init with take of Any(&v105, v104);
                    outlined init with take of Any(&v108._object, &v105);
                    v88 = v113;
                    if (swift_dynamicCast(v101, &v105, v113, &type metadata for String, 6))
                    {
                      v101[1];
                      outlined init with take of Any(v104, &v105);
                      v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                      if (swift_dynamicCast(v101, &v105, v88, v89, 6))
                      {
                        v94 = v101[0];
                        v125;
                        v94;
                        v95 = v122;
                        v122;
                        v96 = *(v115 + 32);
                        v97 = v103;
                        v96(v103, v110, v58);
                        v95;
                        v98 = v102;
                        v96(v102, v97, v58);
                        v61 = Column.name.getter(v58);
                        (*(v115 + 8))(v98, v58);
                        return v61;
                      }
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1Tm(v104);
                    }
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1Tm(&v108._object);
                    outlined destroy of Any?(&v105);
                  }

                  v87 = v125;
                }

                else
                {
                  v125;
                  v87 = v82;
                }

                v87;
                v70 = v124;
                goto LABEL_68;
              }

              v125;
            }

            v70 = v124;
          }

          v58 = v71;
LABEL_68:
          ++v70;
          v66 = v110;
          (*(v115 + 8))(v110, v58);
          if (v70 == v118)
          {
            v90 = v122;
            v122;
            v65 = v90;
            v67 = v114;
            goto LABEL_70;
          }
        }
      }

LABEL_71:
      v65;
      v108._object = 0;
      v109 = 0xE000000000000000;
      _StringGuts.grow(_:)(166);
      v91._object = "Annotations file is empty." + 0x8000000000000000;
      v91._countAndFlagsBits = 0xD000000000000098;
      String.append(_:)(v91);
      v91._countAndFlagsBits = v108._countAndFlagsBits;
      v91._object = object;
      String.append(_:)(v91);
      v91._countAndFlagsBits = 0x2E316567616D693ALL;
      v91._object = 0xEC0000002E67706ALL;
      String.append(_:)(v91);
      v61 = v108._object;
      v60 = v109;
    }

    v92 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v92, 0, 0);
    *v93 = v61;
    *(v93 + 8) = v60;
    *(v93 + 16) = 0;
    *(v93 + 32) = 0;
    *(v93 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v92);
  }

  return v61;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.flattenNestedArrays(in:shape:)(Swift::String in, Swift::OpaquePointer shape)
{
  *&v65 = v2;
  rawValue = shape._rawValue;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v68 = *(v52 - 8);
  v4 = *(v68 + 8);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = &v50;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v61 = *(v51 - 8);
  v7 = *(v61 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v63 = &v50;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v55 = *(v62 - 8);
  v10 = *(v55 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v54 = &v50;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v69 = &v50;
  v58 = type metadata accessor for AnyColumn(0);
  v59 = *(v58 - 8);
  v15 = *(v59 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v57 = &v50;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v56 = &v50;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v66._countAndFlagsBits = in._countAndFlagsBits;
  v22 = v3;
  DataFrame.subscript.getter(in._countAndFlagsBits, in._object);
  v23 = AnyColumn.wrappedElementType.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  v66._object = &v50;
  v64 = v22;
  if (v23 == v24)
  {
    DataFrame.subscript.getter(v66._countAndFlagsBits, in._object, v24);
    v68 = &v50;
    v32 = alloca(24);
    v33 = alloca(32);
    v51 = rawValue;
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    v35 = v51;
    v36 = v65;
    Column.mapNonNil<A>(_:)(partial apply for closure #1 in DataFrame.flattenNestedArrays(in:shape:), &v50, v51, v34);
    if (v36)
    {
      v37 = v63;
      v38 = v35;
      v39 = v61;
LABEL_9:
      (*(v39 + 1))(v37, v38);
      goto LABEL_13;
    }

    object = in._object;
    *&v65 = 0;
    (*(v61 + 8))(v63, v35);
    v47 = v56;
    v48 = v62;
    Column.eraseToAnyColumn()(v62);
LABEL_12:
    (*(v55 + 8))(v69, v48);
    v49 = object;
    object;
    DataFrame.subscript.setter(v47, v66._countAndFlagsBits, v49);
    goto LABEL_13;
  }

  object = in._object;
  v25 = AnyColumn.wrappedElementType.getter();
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
  if (v25 == v26)
  {
    v40 = v53;
    DataFrame.subscript.getter(v66._countAndFlagsBits, object, v26);
    v69 = &v50;
    v41 = alloca(24);
    v42 = alloca(32);
    v51 = rawValue;
    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    v44 = v54;
    v45 = v52;
    v46 = v65;
    Column.mapNonNil<A>(_:)(partial apply for closure #2 in DataFrame.flattenNestedArrays(in:shape:), &v50, v52, v43);
    if (v46)
    {
      v37 = v40;
      v38 = v45;
      v39 = v68;
      goto LABEL_9;
    }

    *&v65 = 0;
    (*(v68 + 1))(v40, v45);
    v47 = v57;
    v48 = v62;
    Column.eraseToAnyColumn()(v62);
    v69 = v44;
    goto LABEL_12;
  }

  v27 = AnyColumn.wrappedElementType.getter();
  v28 = v27 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v29 = object;
  if (!v28)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v30._countAndFlagsBits = 0x27206E6D756C6F43;
    v30._object = 0xE800000000000000;
    String.append(_:)(v30);
    v30._countAndFlagsBits = v66._countAndFlagsBits;
    v30._object = v29;
    String.append(_:)(v30);
    v30._object = "ml.disableAnalyticsLogging" + 0x8000000000000000;
    v30._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v30);
    v65 = v50;
    v30._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v30._object, 0, 0);
    *v31 = v65;
    *(v31 + 16) = 0;
    *(v31 + 32) = 0;
    *(v31 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v30._object);
  }

LABEL_13:
  (*(v59 + 8))(v66._object, v58);
}

uint64_t closure #1 in DataFrame.flattenNestedArrays(in:shape:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v6 = *a1;
  a2;
  v6;
  result = a3(a2, v6);
  if (!v4)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    return __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t CMLParameters.setValidation(table:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = *a1;
    swift_willThrow(a1, a2);
    return swift_errorRetain(v2);
  }

  else
  {
    v5 = *(v2 + 16);

    CMLParameters.add(key:table:)(a2, v5);
  }
}

uint64_t CMLParameters.setOptions(dictionary:)(uint64_t a1)
{
  type metadata accessor for CMLFeatureValue();

  result = CMLFeatureValue.__allocating_init(_:)(a1);
  if (!v1)
  {
    CMLParameters.add(key:featureValue:)(6, result);
  }

  return result;
}

uint64_t MLImageClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v58 = v2;
  v50 = v3;
  v57 = a2;
  v56 = a1;
  v4 = *(*(type metadata accessor for MLImageClassifier.Model(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = v45;
  v55 = type metadata accessor for Model(0);
  v54 = *(v55 - 8);
  v7 = *(v54 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v49 = v45;
  v10 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v52 = v45;
  v13 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for URL(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  qmemcpy(v48, v57, sizeof(v48));
  v21 = v56;
  v22 = v58;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v56, 0x616C436567616D49, 0xEF72656966697373, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v22)
  {
    v51 = 0;
    v58 = v45;
    v57 = v16;
    v56 = v17;
    v24 = v50;
    MLImageClassifier.ModelParameters.algorithm.getter(v21);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
    *&v45[*(v25 + 48)];
    outlined init with take of MLImageClassifier.FeatureExtractorType(v45, v52);
    v26 = type metadata accessor for MLImageClassifier(0);
    v27 = v53;
    outlined init with copy of MLImageClassifier.Model(v24 + *(v26 + 32), v53);
    v28 = *&v48[8];
    if (*&v48[8])
    {
      v29 = *v48;
      v30 = *&v48[16];
      v31 = *&v48[24];
      v32 = *&v48[32];
      v33 = *&v48[48];
      v34 = *&v48[56];
      v35 = *&v48[64];
    }

    else
    {
      v36 = NSFullUserName();
      v37 = v36;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)(v37);
      v28 = v38;

      v31 = "RandomForestRegressor" + 0x8000000000000000;
      *v46 = v29;
      *&v46[8] = v28;
      *&v46[16] = 0xD000000000000033;
      *&v46[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v46[32] = 0;
      *&v46[48] = 49;
      *&v46[56] = 0xE100000000000000;
      *&v46[64] = 0;
      *v47 = v29;
      *&v47[8] = v28;
      *&v47[16] = 0xD000000000000033;
      *&v47[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v47[32] = 0;
      *&v47[48] = 49;
      *&v47[56] = 0xE100000000000000;
      *&v47[64] = 0;
      outlined retain of MLModelMetadata(v46);
      outlined release of MLModelMetadata(v47, v27);
      v34 = 0xE100000000000000;
      v33 = 49;
      v32 = 0;
      v30 = 0xD000000000000033;
      v35 = 0;
    }

    *v47 = v29;
    *&v47[8] = v28;
    *&v47[16] = v30;
    *&v47[24] = v31;
    *&v47[32] = v32;
    *&v47[48] = v33;
    *&v47[56] = v34;
    *&v47[64] = v35;
    outlined retain of MLModelMetadata?(v48);
    v39 = v49;
    v40 = v52;
    v41 = v53;
    v42 = v51;
    MLImageClassifier.Model.export(metadata:featureExtractorType:)(v47, v52);
    qmemcpy(v46, v47, sizeof(v46));
    outlined release of MLModelMetadata(v46, v48);
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLImageClassifier.Model);
    if (v42)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLImageClassifier.FeatureExtractorType);
      return (*(v56 + 8))(v58, v57);
    }

    else
    {
      Model.write(to:)(v58);
      v43 = v39;
      v44 = v56;
      (*(v54 + 8))(v43, v55);
      outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLImageClassifier.FeatureExtractorType);
      return (*(v44 + 8))(v58, v57);
    }
  }

  return result;
}

uint64_t outlined init with take of MLImageClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.Model(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLImageClassifier.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v10[0] = v2;
  v10[1] = v3;
  v11 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v12 = v10;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x616C436567616D49, 0xEF72656966697373);
  if (!v2)
  {
    MLImageClassifier.write(to:metadata:)(v12, v11);
    return (*(v5 + 8))(v12, v4);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CategoricalLookupTable(uint64_t *a1, uint64_t *a2)
{
  return initializeBufferWithCopyOfBuffer for CategoricalLookupTable(a1, a2);
}

{
  v3 = *a2;
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v3;
  v4;
  return a1;
}

uint64_t *assignWithCopy for CategoricalLookupTable(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;
  v4, a2;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6, a2;
  return a1;
}

void *assignWithTake for CategoricalLookupTable(void *a1, _OWORD *a2)
{
  *a1, a2;
  v3 = a1[1];
  *a1 = *a2;
  v3, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for CategoricalLookupTable(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for CategoricalLookupTable(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 16) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 16) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

uint64_t outlined assign with take of MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.ModelParameters;
  if (!type metadata singleton initialization cache for MLSoundClassifier.ModelParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.ModelParameters);
  }

  return result;
}

uint64_t MLSoundClassifier.ModelParameters.maxIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.overlapFactor.setter(double a1)
{
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

char MLSoundClassifier.ModelParameters.algorithm.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  outlined init with copy of Any?(v1 + *(v3 + 28), v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v10, v8, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v5 = 1;
    v4 = 1;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v10;
  v5 = v11;
  v6 = v12;
LABEL_6:
  *v2 = v4;
  result = v5 & 1;
  *(v2 + 8) = result;
  *(v2 + 16) = v6;
  return result;
}

uint64_t key path getter for MLSoundClassifier.ModelParameters.algorithm : MLSoundClassifier.ModelParameters()
{
  v1 = v0;
  MLSoundClassifier.ModelParameters.algorithm.getter();
  result = v3;
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  return result;
}

uint64_t key path setter for MLSoundClassifier.ModelParameters.algorithm : MLSoundClassifier.ModelParameters(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v3;
  return MLSoundClassifier.ModelParameters.algorithm.setter(&v5);
}

uint64_t MLSoundClassifier.ModelParameters.algorithm.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v10 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  return outlined assign with take of Any?(&v7, v1 + *(v5 + 28));
}

void (*MLSoundClassifier.ModelParameters.algorithm.modify(void *a1))(int **a1, char a2)
{
  v2 = malloc(0x60uLL);
  *a1 = v2;
  *(v2 + 10) = v1;
  v3 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  *(v2 + 22) = v3;
  outlined init with copy of Any?(v1 + v3, v2);
  if (!*(v2 + 3))
  {
    outlined destroy of Any?(v2);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(v2 + 56, v2, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v5 = 1;
    v4 = 1;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = *(v2 + 7);
  v5 = v2[64];
  v6 = *(v2 + 9);
LABEL_6:
  *(v2 + 4) = v4;
  v2[40] = v5 & 1;
  *(v2 + 6) = v6;
  return MLSoundClassifier.ModelParameters.algorithm.modify;
}

void MLSoundClassifier.ModelParameters.algorithm.modify(int **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 6);
  v6 = *(v2 + 10) + v2[22];
  *(v2 + 3) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 2) = v5;
  if (a2)
  {
    v5;
    outlined assign with take of Any?(v2, v6);
    *(v2 + 6);
  }

  else
  {
    outlined assign with take of Any?(v2, v6);
  }

  free(v2);
}

double MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  outlined init with copy of Any?(v0 + *(v1 + 28), v6);
  if (v7)
  {
    if (swift_dynamicCast(&v8, v6, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
    {
      v2 = v8;
      v3 = v9;
      v10;
      if (!v3 && v2 == 1)
      {
        return 0.975;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  v4 = *(v1 + 32);
  if (!*(v0 + v4 + 8))
  {
    return *(v0 + v4);
  }

  return 0.975;
}

uint64_t MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.setter(double a1)
{
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 32);
  *(v1 + result) = a1;
  *(v1 + result + 8) = 0;
  return result;
}

uint64_t (*MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  *a1 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify;
}

uint64_t MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 32);
  *(v2 + result) = v1;
  *(v2 + result + 8) = 0;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:)(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v15 = a4;
  v5 = v4;
  v16 = *a3;
  v18 = *(a3 + 8);
  v17 = a3[2];
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v7 = v6[7];
  *(v5 + v7 + 16) = 0;
  *(v5 + v7) = 0;
  v8 = v6[8];
  *(v5 + v8) = 0;
  v9 = v5 + v7;
  *(v5 + v8 + 8) = 1;
  *(v5 + v6[9]) = 32;
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(a1, v5);
  *(v5 + v6[5]) = a2;
  *(v5 + v6[6]) = v15;
  v14 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v11 = v16;
  v12 = v18;
  v13 = v17;
  outlined assign with take of Any?(&v11, v9);
  return outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(a1);
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v6 = v5[7];
  *(v4 + v6 + 16) = 0;
  *(v4 + v6) = 0;
  v7 = v5[8];
  *(v4 + v7) = 0;
  *(v4 + v7 + 8) = 1;
  *(v4 + v5[9]) = 32;
  outlined init with take of MLSoundClassifier.ModelParameters.ValidationData(a1, v4);
  *(v4 + v5[5]) = a2;
  result = v5[6];
  *(v4 + result) = a3;
  return result;
}

uint64_t outlined init with take of MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v32 = a5;
  v27 = a4;
  v30 = a2;
  v6 = v5;
  v28 = *a3;
  v33 = *(a3 + 8);
  v29 = *(a3 + 16);
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v8 = v7[7];
  *(v6 + v8 + 16) = 0;
  *(v6 + v8) = 0;
  *&v9 = v7[8];
  *(v6 + *&v9) = 0;
  v10 = v6 + v8;
  *(v6 + *&v9 + 8) = 1;
  *(v6 + v7[9]) = 32;
  v31 = a1;
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(a1, v6);
  *(v6 + v7[5]) = v30;
  *(v6 + v7[6]) = v27;
  v26 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v23 = v28;
  LOBYTE(v24) = v33;
  v25 = v29;
  outlined assign with take of Any?(&v23, v10);
  v11 = v32;
  *(v6 + *&v9) = v32;
  *(v6 + *&v9 + 8) = 0;
  if (v11 < 0.5)
  {
    v23 = 0;
    v32 = v9;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(108);
    v12._object = ". Clamping it to " + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000056;
    String.append(_:)(v12);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._object = "ximum supported value " + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v12);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v23;
    v14 = v24;
    v15 = static os_log_type_t.default.getter(46);
    v12._countAndFlagsBits = v13;
    v12._object = v14;
    log(_:type:)(v12, v15);
    v14;
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(v31);
    result = 0x3FE0000000000000;
LABEL_5:
    v22 = v32;
    *(v6 + *&v32) = result;
    *(v6 + *&v22 + 8) = 0;
    return result;
  }

  v17 = v31;
  if (v11 > 15.0)
  {
    v23 = 0;
    v32 = v9;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(108);
    v18._object = "r MLShapedArray<Double> values." + 0x8000000000000000;
    v18._countAndFlagsBits = 0xD000000000000056;
    String.append(_:)(v18);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v18._object = "ximum supported value " + 0x8000000000000000;
    v18._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v18);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v23;
    v20 = v24;
    v21 = static os_log_type_t.default.getter(46);
    v18._countAndFlagsBits = v19;
    v18._object = v20;
    log(_:type:)(v18, v21);
    v20;
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(v17);
    result = 0x402E000000000000;
    goto LABEL_5;
  }

  return outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(v31);
}

Swift::Int MLSoundClassifier.ModelParameters.FeaturePrintType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.validate()()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  outlined init with copy of Any?(v0 + *(v1 + 28), &v5);
  if (!v8)
  {
    outlined destroy of Any?(&v5);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v9, &v5, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v3 = 1;
    v2 = 1;
    v4 = 0;
    goto LABEL_6;
  }

  v2 = v9;
  v3 = v10;
  v4 = v11;
LABEL_6:
  v5 = v2;
  v6 = v3 & 1;
  v7 = v4;
  MLSoundClassifier.ModelParameters.ModelAlgorithmType.validate()();
  v7;
}

unint64_t MLSoundClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(19);
  0xE000000000000000;
  v22 = 0xD000000000000010;
  v23 = "ansformer have different types." + 0x8000000000000000;
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = *(v0 + v1[5]);
  v21 = v0;
  v18 = v2;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v3._object;
  String.append(_:)(v3);
  object;
  v5._object = 0xE100000000000000;
  v5._countAndFlagsBits = 10;
  String.append(_:)(v5);
  v26 = 0xD000000000000010;
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v5._object = "nimum supported value " + 0x8000000000000000;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  v6 = *(v0 + v1[6]);
  Double.write<A>(to:)(&v22, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v7 = v22;
  v8 = v23;
  v22 = v26;
  v23 = "ansformer have different types." + 0x8000000000000000;
  ("ansformer have different types." + 0x8000000000000000);
  v5._countAndFlagsBits = v7;
  v5._object = v8;
  String.append(_:)(v5);
  "ansformer have different types." + 0x8000000000000000;
  v8;
  v26 = v22;
  v9 = v23;
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v23;
  outlined init with copy of Any?(v0 + v1[7], &v22);
  if (!v25)
  {
    outlined destroy of Any?(&v22);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v18, &v22, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v11 = 1;
    v10 = 1;
    v12 = 0;
    goto LABEL_6;
  }

  v10 = v18;
  v11 = v19;
  v12 = v20;
LABEL_6:
  v22 = v10;
  LOBYTE(v23) = v11 & 1;
  v24 = v12;
  v13 = MLSoundClassifier.ModelParameters.ModelAlgorithmType.description.getter();
  v15 = v14;
  v24;
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);
  v15;
  v22 = v26;
  v23 = v9;
  v9;
  v16._countAndFlagsBits = 0xD000000000000010;
  v16._object = "Overlap factor: " + 0x8000000000000000;
  String.append(_:)(v16);
  v9;
  "Overlap factor: " + 0x8000000000000000;
  return v22;
}

unint64_t MLSoundClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLSoundClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType()
{
  result = lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType;
  if (!lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSoundClassifier.ModelParameters.FeaturePrintType, &type metadata for MLSoundClassifier.ModelParameters.FeaturePrintType);
    lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *__src;
    *v4 = *__src;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *__src;
      *v4 = *__src;
      v14;
      swift_storeEnumTagMultiPayload(v4, v7, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v9))
      {
        case 0u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 16))(__dst, __src, v10);
          v11 = v9;
          v12 = 0;
          goto LABEL_15;
        case 1u:
          v28 = type metadata accessor for URL(0);
          (*(*(v28 - 8) + 16))(__dst, __src, v28);
          v37 = 1;
          goto LABEL_14;
        case 2u:
          v23 = *__src;
          *v4 = *__src;
          v23;
          v37 = 2;
LABEL_14:
          v12 = v37;
          __dst = v4;
          v11 = v9;
          goto LABEL_15;
        case 3u:
          v39 = v9;
          v24 = *__src;
          v38 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v38);
          *__dst = v24;
          __dst[8] = v38;
          *(__dst + 2) = *(__src + 2);
          v25 = *(__src + 3);
          *(v4 + 3) = v25;
          *(v4 + 4) = *(__src + 4);
          v26 = *(__src + 5);
          *(v4 + 5) = v26;
          v27 = *(__src + 4);
          *(v4 + 3) = *(__src + 3);
          *(v4 + 4) = v27;
          v4[80] = __src[80];
          v25;
          v26;
          v36 = 3;
          goto LABEL_12;
        case 4u:
          v15 = type metadata accessor for DataFrame(0);
          (*(*(v15 - 8) + 16))(__dst, __src, v15);
          v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v17 = v16[12];
          *&__dst[v17] = *&__src[v17];
          v18 = *&__src[v17 + 8];
          *&v4[v17 + 8] = v18;
          v19 = v16[16];
          *&v4[v19] = *&__src[v19];
          v39 = v9;
          v20 = *&__src[v19 + 8];
          *&v4[v19 + 8] = v20;
          v21 = v16[20];
          v4[v21 + 32] = __src[v21 + 32];
          v22 = *&__src[v21];
          *&v4[v21 + 16] = *&__src[v21 + 16];
          *&v4[v21] = v22;
          v18;
          v20;
          v36 = 4;
LABEL_12:
          v12 = v36;
          __dst = v4;
          v11 = v39;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v11, v12);
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
    v29 = a3[7];
    v30 = &v4[v29];
    v31 = &__src[v29];
    v32 = *&__src[v29 + 24];
    if (v32)
    {
      *(v30 + 3) = v32;
      (**(v32 - 8))(v30, v31);
    }

    else
    {
      v33 = *v31;
      *(v30 + 1) = *(v31 + 1);
      *v30 = v33;
    }

    v34 = a3[8];
    v4[v34 + 8] = __src[v34 + 8];
    *&v4[v34] = *&__src[v34];
    *&v4[a3[9]] = *&__src[a3[9]];
  }

  return v4;
}

uint64_t destroy for MLSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v3);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v7 = *a1;
LABEL_6:
    v7;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(a1, v5))
    {
      case 0u:
      case 1u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 8))(a1, v6);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        v7 = *(a1 + 40);
        goto LABEL_6;
      case 4u:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(a1 + *(v10 + 48) + 8);
        v7 = *(a1 + *(v10 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  result = *(a2 + 28);
  if (*(a1 + result + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((result + a1));
  }

  return result;
}

char *initializeWithCopy for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = __dst;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  if (EnumCaseMultiPayload == 2)
  {
    v12 = *__src;
    *v5 = *__src;
    v12;
    swift_storeEnumTagMultiPayload(v5, v6, 2);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v8))
    {
      case 0u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(__dst, __src, v9);
        v10 = v8;
        v11 = 0;
        goto LABEL_13;
      case 1u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 16))(__dst, __src, v26);
        v35 = 1;
        goto LABEL_12;
      case 2u:
        v21 = *__src;
        *v5 = *__src;
        v21;
        v35 = 2;
LABEL_12:
        v11 = v35;
        __dst = v5;
        v10 = v8;
        goto LABEL_13;
      case 3u:
        v37 = v8;
        v22 = *__src;
        v36 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v36);
        *__dst = v22;
        __dst[8] = v36;
        *(__dst + 2) = *(__src + 2);
        v23 = *(__src + 3);
        *(v5 + 3) = v23;
        *(v5 + 4) = *(__src + 4);
        v24 = *(__src + 5);
        *(v5 + 5) = v24;
        v25 = *(__src + 4);
        *(v5 + 3) = *(__src + 3);
        *(v5 + 4) = v25;
        v5[80] = __src[80];
        v23;
        v24;
        v34 = 3;
        goto LABEL_10;
      case 4u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 16))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v15 = v14[12];
        *&__dst[v15] = *&__src[v15];
        v16 = *&__src[v15 + 8];
        *&v5[v15 + 8] = v16;
        v17 = v14[16];
        *&v5[v17] = *&__src[v17];
        v37 = v8;
        v18 = *&__src[v17 + 8];
        *&v5[v17 + 8] = v18;
        v19 = v14[20];
        v5[v19 + 32] = __src[v19 + 32];
        v20 = *&__src[v19];
        *&v5[v19 + 16] = *&__src[v19 + 16];
        *&v5[v19] = v20;
        v16;
        v18;
        v34 = 4;
LABEL_10:
        v11 = v34;
        __dst = v5;
        v10 = v37;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v10, v11);
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
  v27 = a3[7];
  v28 = &v5[v27];
  v29 = &__src[v27];
  v30 = *&__src[v27 + 24];
  if (v30)
  {
    *(v28 + 3) = v30;
    (**(v30 - 8))(v28, v29);
  }

  else
  {
    v31 = *v29;
    *(v28 + 1) = *(v29 + 1);
    *v28 = v31;
  }

  v32 = a3[8];
  v5[v32 + 8] = __src[v32 + 8];
  *&v5[v32] = *&__src[v32];
  *&v5[a3[9]] = *&__src[a3[9]];
  return v5;
}

char *assignWithCopy for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = __dst;
  if (__dst != __src)
  {
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(__dst);
    v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *__src;
      *v5 = *__src;
      v12;
      swift_storeEnumTagMultiPayload(v5, v6, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v9 = type metadata accessor for URL(0);
          (*(*(v9 - 8) + 16))(__dst, __src, v9);
          v10 = v8;
          v11 = 0;
          goto LABEL_14;
        case 1u:
          v26 = type metadata accessor for URL(0);
          (*(*(v26 - 8) + 16))(__dst, __src, v26);
          v35 = 1;
          goto LABEL_13;
        case 2u:
          v21 = *__src;
          *v5 = *__src;
          v21;
          v35 = 2;
LABEL_13:
          v11 = v35;
          __dst = v5;
          v10 = v8;
          goto LABEL_14;
        case 3u:
          v37 = v8;
          v22 = *__src;
          v36 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v36);
          *__dst = v22;
          __dst[8] = v36;
          *(__dst + 2) = *(__src + 2);
          v23 = *(__src + 3);
          *(v5 + 3) = v23;
          *(v5 + 4) = *(__src + 4);
          v24 = *(__src + 5);
          *(v5 + 5) = v24;
          v25 = *(__src + 4);
          *(v5 + 3) = *(__src + 3);
          *(v5 + 4) = v25;
          v5[80] = __src[80];
          v23;
          v24;
          v34 = 3;
          goto LABEL_11;
        case 4u:
          v13 = type metadata accessor for DataFrame(0);
          (*(*(v13 - 8) + 16))(__dst, __src, v13);
          v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v15 = v14[12];
          *&__dst[v15] = *&__src[v15];
          v16 = *&__src[v15 + 8];
          *&v5[v15 + 8] = v16;
          v17 = v14[16];
          *&v5[v17] = *&__src[v17];
          v37 = v8;
          v18 = *&__src[v17 + 8];
          *&v5[v17 + 8] = v18;
          v19 = v14[20];
          v5[v19 + 32] = __src[v19 + 32];
          v20 = *&__src[v19];
          *&v5[v19 + 16] = *&__src[v19 + 16];
          *&v5[v19] = v20;
          v16;
          v18;
          v34 = 4;
LABEL_11:
          v11 = v34;
          __dst = v5;
          v10 = v37;
LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v10, v11);
          swift_storeEnumTagMultiPayload(v5, v6, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }
  }

  *&v5[a3[5]] = *&__src[a3[5]];
  *&v5[a3[6]] = *&__src[a3[6]];
  v27 = a3[7];
  v28 = &v5[v27];
  v29 = &__src[v27];
  v30 = *&__src[v27 + 24];
  if (!*&v5[v27 + 24])
  {
    if (v30)
    {
      *(v28 + 3) = v30;
      (**(v30 - 8))(v28, v29);
      goto LABEL_22;
    }

LABEL_21:
    v31 = *v29;
    *(v28 + 1) = *(v29 + 1);
    *v28 = v31;
    goto LABEL_22;
  }

  if (!v30)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v5[v27]);
    goto LABEL_21;
  }

  __swift_assign_boxed_opaque_existential_0(&v5[v27], &__src[v27]);
LABEL_22:
  v32 = a3[8];
  v5[v32 + 8] = __src[v32 + 8];
  *&v5[v32] = *&__src[v32];
  *&v5[a3[9]] = *&__src[a3[9]];
  return v5;
}

_BYTE *initializeWithTake for MLSoundClassifier.ModelParameters(_BYTE *__dst, _BYTE *__src, int *a3)
{
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
    if (EnumCaseMultiPayload == 4)
    {
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v13[12]] = *&__src[v13[12]];
      *&__dst[v13[16]] = *&__src[v13[16]];
      v14 = v13[20];
      v15 = *&__src[v14 + 16];
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 16] = v15;
      __dst[v14 + 32] = __src[v14 + 32];
      v20 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          goto LABEL_12;
        }

        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 32))(__dst, __src, v8);
        v9 = v6;
        v10 = 0;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        goto LABEL_13;
      }

      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v20 = 1;
    }

    v10 = v20;
    v9 = v6;
    goto LABEL_10;
  }

  memcpy(__dst, __src, *(*(v5 - 8) + 64));
LABEL_13:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  v16 = a3[7];
  v17 = *&__src[v16];
  *&__dst[v16 + 16] = *&__src[v16 + 16];
  *&__dst[v16] = v17;
  v18 = a3[8];
  *&__dst[v18] = *&__src[v18];
  __dst[v18 + 8] = __src[v18 + 8];
  *&__dst[a3[9]] = *&__src[a3[9]];
  return __dst;
}

char *assignWithTake for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(__dst);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) != 1)
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
      goto LABEL_14;
    }

    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
    if (EnumCaseMultiPayload == 4)
    {
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v13[12]] = *&__src[v13[12]];
      *&__dst[v13[16]] = *&__src[v13[16]];
      v14 = v13[20];
      v15 = *&__src[v14 + 16];
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 16] = v15;
      __dst[v14 + 32] = __src[v14 + 32];
      v21 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          goto LABEL_13;
        }

        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 32))(__dst, __src, v8);
        v9 = v6;
        v10 = 0;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        goto LABEL_14;
      }

      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v21 = 1;
    }

    v10 = v21;
    v9 = v6;
    goto LABEL_11;
  }

LABEL_14:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  v16 = a3[7];
  v17 = &__dst[v16];
  if (*&__dst[v16 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v16]);
  }

  v18 = *&__src[v16];
  *(v17 + 1) = *&__src[v16 + 16];
  *v17 = v18;
  v19 = a3[8];
  *&__dst[v19] = *&__src[v19];
  __dst[v19 + 8] = __src[v19 + 8];
  *&__dst[a3[9]] = *&__src[a3[9]];
  return __dst;
}

uint64_t sub_D6318(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  v7 = -1;
  if (((*(a1 + *(a3 + 28) + 24) >> 1) - 1) >= 0)
  {
    v7 = (*(a1 + *(a3 + 28) + 24) >> 1) - 1;
  }

  v8 = v7 + 1;
  if ((*(a1 + *(a3 + 28) + 24) & 0xFFFFFFFF00000001) == 0)
  {
    return v8;
  }

  return v4;
}

uint64_t sub_D639E(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 28);
  *(a1 + result + 24) = 2 * a2;
  return result;
}

uint64_t type metadata completion function for MLSoundClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = " ";
    v3[4] = &unk_3403D0;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLSoundClassifier.ModelParameters.FeaturePrintType(_BYTE *a1, int a2, int a3)
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
  }

  return result;
}

uint64_t MLDataTable.rows.getter()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v3;
  return outlined copy of Result<_DataTable, Error>(v2, v3);
}

uint64_t MLDataTable.Rows.subscript.getter(uint64_t a1)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v4 = v1;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    v5 = tc_v1_flex_list_create(0);
    if (!v5)
    {
      BUG();
    }

    v6 = v5;
    v7 = type metadata accessor for CMLSequence();
    v8 = swift_allocObject(v7, 25, 7);
    *(v8 + 16) = v6;
    *(v8 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v3, 1);
    v9 = tc_v1_flex_list_create(0);
    if (!v9)
    {
      BUG();
    }

    v10 = v9;
    result = swift_allocObject(v7, 25, 7);
    *(result + 16) = v10;
    *(result + 24) = 1;
    *v4 = v8;
    v4[1] = _swiftEmptyDictionarySingleton;
    v4[2] = result;
  }

  else
  {
    if (a1 < 0)
    {
      BUG();
    }

    v18 = v1;
    v12 = *(*(v3 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v3, 0);

    v13 = specialized handling<A, B, C>(_:_:_:)(v12, a1);
    if (!v13)
    {
      BUG();
    }

    v14 = type metadata accessor for CMLSequence();
    v15 = swift_allocObject(v14, 25, 7);
    *(v15 + 16) = v13;
    *(v15 + 24) = 1;

    outlined copy of Result<_DataTable, Error>(v3, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v3, 0);
    outlined copy of Result<_DataTable, Error>(v3, 0);
    v16 = _DataTable.columnIndexes.getter();
    outlined consume of Result<_DataTable, Error>(v3, 0);
    outlined consume of Result<_DataTable, Error>(v3, 0);
    result = v18;
    *v18 = v17;
    v18[1] = v16;
    v18[2] = v15;
  }

  return result;
}

Swift::Int MLDataTable.Rows.endIndex.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  outlined copy of Result<_DataTable, Error>(*v0, v4);
  v1 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v3, v4);
  return v1;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataTable.Rows(uint64_t *a1)
{
  v3 = v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2, *(v2 + 8));
  *v3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance MLDataTable.Rows(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataTable.Rows(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, *(v3 + 8));
  *v4 = result;
  return result;
}

Swift::Int protocol witness for Collection.endIndex.getter in conformance MLDataTable.Rows()
{
  v1 = v0;
  result = MLDataTable.Rows.endIndex.getter();
  *v1 = result;
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance MLDataTable.Rows(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  *a1;
  v2, a2;
  return v3;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataTable.Rows()
{
  v2 = v0;
  result = specialized RandomAccessCollection<>.indices.getter(*v1, *(v1 + 8));
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Rows(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, *(v4 + 8));
  *v5 = result;
  *(v5 + 8) = v7 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Rows(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Rows(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  v4 = *(v2 + 8);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  v4 = *(v2 + 8);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

uint64_t protocol witness for Collection.index(after:) in conformance MLDataTable.Rows(uint64_t *a1)
{
  v3 = v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2, *(v2 + 8));
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataTable.Rows(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance MLDataTable.Rows()
{
  v2 = *(v1 + 8);
  *result = *v1;
  *(result + 8) = v2;
  *(result + 16) = 0;
  return result;
}

uint64_t MLDataTable.Rows.description.getter(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v52 = *v1;
  outlined copy of Result<_DataTable, Error>(*v1, v3);
  outlined copy of Result<_DataTable, Error>(v2, v3);
  v4 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v52, v3);
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, v2, v3);
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v47 = v5;
  v6 = 0x2020203A7379654BLL;
  if (v5 <= 0)
  {
    v6 = 0x2020203A79654BLL;
  }

  v48 = v6;
  v53 = v2;
  LOBYTE(v54) = v3;
  outlined copy of Result<_DataTable, Error>(v2, v3);
  outlined copy of Result<_DataTable, Error>(v2, v3);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7, v2, v3);
  v50 = v2;
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v9 = 10;
  if (v8 < 10)
  {
    v9 = v8;
  }

  if (v8 < 0)
  {
    BUG();
  }

  v55 = v3;
  if (v8)
  {
    v10 = 0;
    v51 = v3;
    v46 = v9;
    do
    {
      if (v10 == v9)
      {
        BUG();
      }

      if (v10)
      {
        outlined copy of Result<_DataTable, Error>(v50, v55);
        v11 = v10;
        MLDataTable.Rows.subscript.getter(v10);
        outlined consume of Result<_DataTable, Error>(v50, v55);
        v54;

        v12 = MLDataTable.Row.Values.description.getter(a1);
        v14 = v13;

        v15._countAndFlagsBits = v12;
        v15._object = v14;
        String.append(_:)(v15);
        v14;
        v53 = 0x2020202020200A20;
        v54 = 0xEA00000000002020;
        32;
        v15._countAndFlagsBits = 32;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        0xEA00000000002020;
        v15._countAndFlagsBits = 0x2020202020200A20;
        v15._object = 0xEA00000000002020;
        String.append(_:)(v15);
        0xEA00000000002020;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v50, v55);
        MLDataTable.Rows.subscript.getter(0);
        outlined consume of Result<_DataTable, Error>(v50, v55);

        v54;

        v16 = CMLSequence.size.getter();
        v17 = specialized RandomAccessCollection<>.distance(from:to:)(0, v16);

        v18 = CMLSequence.size.getter();
        v19 = specialized RandomAccessCollection<>.distance(from:to:)(0, v18);

        if (v19 < 0)
        {
          BUG();
        }

        v20 = CMLSequence.size.getter();
        v21 = specialized RandomAccessCollection<>.distance(from:to:)(0, v20);
        v53;
        if (v17 < 0 || v21 < v17)
        {
          BUG();
        }

        if (v17)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
          v22 = 0;
          v45 = v17;
          do
          {
            CMLSequence.value(at:)(v22);
            v23 = CMLFeatureValue.stringValue()();
            countAndFlagsBits = v23._countAndFlagsBits;
            object = v23._object;

            if (v24)
            {
              swift_unexpectedError(v24, "CreateML/MLDataTable.ColumnNames.swift", 38, 1, 59);
              BUG();
            }

            v26 = _swiftEmptyArrayStorage[2];
            v27 = v26 + 1;
            if (_swiftEmptyArrayStorage[3] >> 1 <= v26)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v26 + 1, 1);
              v27 = v26 + 1;
            }

            ++v22;
            _swiftEmptyArrayStorage[2] = v27;
            v28 = 2 * v26;
            _swiftEmptyArrayStorage[v28 + 4] = countAndFlagsBits;
            _swiftEmptyArrayStorage[v28 + 5] = object;
          }

          while (v45 != v22);
        }

        v29 = Array.description.getter(_swiftEmptyArrayStorage, &type metadata for String);
        v31 = v30;

        _swiftEmptyArrayStorage;
        v32._countAndFlagsBits = v29;
        v32._object = v31;
        String.append(_:)(v32);
        v31;
        if (v47 <= 0)
        {
          v37._countAndFlagsBits = 0x203A65756C61560ALL;
          v37._object = 0xE800000000000000;
          String.append(_:)(v37);
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v50, v55);
          MLDataTable.Rows.subscript.getter(0);
          outlined consume of Result<_DataTable, Error>(v50, v55);
          v54;

          v33 = MLDataTable.Row.Values.description.getter(a1);
          v35 = v34;

          v36._countAndFlagsBits = v33;
          v36._object = v35;
          String.append(_:)(v36);
          v35;
          v36._countAndFlagsBits = 0x3A7365756C61560ALL;
          v36._object = 0xE900000000000020;
          String.append(_:)(v36);
          0xE900000000000020;
        }

        v11 = 0;
      }

      v38 = v11 + 1;
      v9 = v46;
      v39 = v38 == v46;
      v10 = v38;
      v3 = v51;
    }

    while (!v39);
  }

  v40 = v9;
  outlined copy of Result<_DataTable, Error>(v50, v55);
  outlined copy of Result<_DataTable, Error>(v50, v55);
  v41 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v50, v3);
  v42 = specialized RandomAccessCollection<>.distance(from:to:)(0, v41, v50, v55);
  outlined consume of Result<_DataTable, Error>(v50, v55);
  if (v40 < v42)
  {
    v43._countAndFlagsBits = 0x2E2E2E202CLL;
    v43._object = 0xE500000000000000;
    String.append(_:)(v43);
  }

  return v48;
}

uint64_t MLDataTable.Rows.debugDescription.getter(double a1)
{
  v2 = *v1;
  v5 = *(v1 + 8);
  outlined copy of Result<_DataTable, Error>(*v1, v5);
  v3 = MLDataTable.Rows.description.getter(a1);
  outlined consume of Result<_DataTable, Error>(v2, v5);
  return v3;
}

uint64_t MLDataTable.Rows.playgroundDescription.getter(double a1)
{
  v3 = v1;
  v4 = *v2;
  v10 = *(v2 + 8);
  outlined copy of Result<_DataTable, Error>(*v2, v10);
  v5 = MLDataTable.Rows.description.getter(a1);
  v7 = v6;
  outlined consume of Result<_DataTable, Error>(v4, v10);
  objc_allocWithZone(NSAttributedString);
  v8 = @nonobjc NSAttributedString.init(string:attributes:)(v5, v7, 0);
  result = type metadata accessor for NSAttributedString();
  v3[3] = result;
  *v3 = v8;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataTable.Rows and conformance MLDataTable.Rows()
{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<MLDataTable.Rows> and conformance <> Slice<A>(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<MLDataTable.Rows>);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataTable.Rows(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  return a1;
}

uint64_t assignWithCopy for MLDataTable.Rows(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Result<_DataTable, Error>(v5, v6);
  return a1;
}

uint64_t assignWithTake for MLDataTable.Rows(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of Result<_DataTable, Error>(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataTable.Rows(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 8) >= 2u)
      {
        v2 = *(a1 + 8) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDataTable.Rows(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *a1 = a2 - 255;
    *(a1 + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(a1 + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 9) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = -a2;
    }
  }
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML30MLLogisticRegressionClassifierV_s5Error_pTt1g503_s8c4ML30efg80V12handleResult33_66687B25F10324110578427E448BFE6CLL_7session7fulfillys0G0Oyyts5H55_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZACyKXEfU_AE08Logisticfg8TrainingW8DelegateCTf1nc_n(uint64_t a1)
{
  v10 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);

  MLLogisticRegressionClassifier.init(delegate:)(a1);
  swift_storeEnumTagMultiPayload(v9, v2, 0);
  outlined init with take of DataFrame?(v9, v9, &demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
  outlined init with take of DataFrame?(v9, v10, &demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
}

void MLLogisticRegressionClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier);
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLLogisticRegressionClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLLogisticRegressionClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLLogisticRegressionClassifier(0);
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
  MLLogisticRegressionClassifier.Model.computeMetrics(on:)(v16);
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
  MLLogisticRegressionClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLLogisticRegressionClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v44 = v3;
  v49 = a2;
  v50 = a1;
  v4 = *(*(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8) + 64);
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0xD00000000000001CLL, ("Algorithm type: " + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v45 = 0;
    v51 = &v34;
    v48 = v7;
    v49 = v11;
    v50 = v12;
    v17 = v46;
    outlined init with copy of MLTrainingSessionParameters(v44, v46, type metadata accessor for MLLogisticRegressionClassifier.Model);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLLogisticRegressionClassifier.Model);
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

uint64_t MLLogisticRegressionClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLLogisticRegressionClassifier.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}