MLModel __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLActivityClassifier.Model.makeMLModel()()
{
  v57 = v0;
  v50 = v1;
  v60 = type metadata accessor for UUID(0);
  v51 = *(v60 - 1);
  v3 = *(v51 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v52 = v42;
  v61 = type metadata accessor for URL(0);
  v55 = *(v61 - 8);
  v6 = v55[8];
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v42;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v58 = v42;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v56 = v42;
  v53 = v6;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v59 = v42;
  v15 = objc_opt_self(NSFileManager);
  v16 = [v15 defaultManager];
  v17 = v16;
  v18 = [v17 temporaryDirectory];
  v19 = v18;

  static URL._unconditionallyBridgeFromObjectiveC(_:)(v19);
  v20 = v52;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v51 + 8))(v20, v60);
  v49[0] = v21;
  v49[1] = v23;
  v24._countAndFlagsBits = 0x616B6361706C6D2ELL;
  v24._object = 0xEA00000000006567;
  String.append(_:)(v24);
  v25 = v49[1];
  v26 = v56;
  URL.appendingPathComponent(_:)(v49[0], v49[1]);
  v25;
  v60 = v55[1];
  (v60)(v26, v61);
  v27 = NSFullUserName();
  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)(v28);
  v31 = v30;

  *v47 = v29;
  *&v47[8] = v31;
  *&v47[16] = 0xD000000000000033;
  *&v47[24] = "RandomForestRegressor" + 0x8000000000000000;
  *&v47[32] = 0;
  *&v47[48] = 49;
  *&v47[56] = 0xE100000000000000;
  *&v47[64] = 0;
  v42[0] = v29;
  v32 = v59;
  v42[1] = v31;
  v42[2] = 0xD000000000000033;
  v42[3] = "RandomForestRegressor" + 0x8000000000000000;
  v43 = 0;
  v44 = 49;
  v45 = 0xE100000000000000;
  v46 = 0;
  outlined retain of MLModelMetadata(v47);
  outlined release of MLModelMetadata(v42, 0xE100000000000000);
  qmemcpy(v49, v47, sizeof(v49));
  v33 = v57;
  MLActivityClassifier.Model.writeMLPackage(to:metadata:)(v32, v49, 0.0, v2);
  qmemcpy(v48, v49, sizeof(v48));
  outlined release of MLModelMetadata(v48, &v50);
  if (v33)
  {
    (v60)(v32, v61);
  }

  else
  {
    v34 = v55;
    v57 = v55[2];
    v57(v56, v32, v61);
    v35 = *(v34 + 80);
    v36 = ~*(v34 + 80) & (v35 + 16);
    v37 = swift_allocObject(&unk_390FC0, v36 + v53, v35 | 7);
    (v34[4])(v37 + v36, v56, v61);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActivityClassifier.Model.makeMLModel(), v37);

    type metadata accessor for MLModel();
    v38 = v54;
    v57(v54, v58, v61);
    v32 = @nonobjc MLModel.__allocating_init(contentsOf:)(v38);
    v40 = v61;
    v41 = v60;
    (v60)(v58, v61);
    v41(v59, v40);
  }

  return v32;
}

uint64_t closure #1 in MLActivityClassifier.Model.makeMLModel()(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = a1;
  return swift_task_switch(closure #1 in MLActivityClassifier.Model.makeMLModel(), 0, 0);
}

uint64_t closure #1 in MLActivityClassifier.Model.makeMLModel()()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self(MLModel);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  *(v0 + 16) = 0;
  v5 = [(NSURL *)v2 compileModelAtURL:v3 error:v0 + 16];
  v6 = v5;

  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = *(v0 + 24);
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v6);
    v7;
    v9 = v6;
  }

  else
  {
    v11 = *(v0 + 16);
    _convertNSErrorToError(_:)(v7);
    v9 = v11;

    swift_willThrow();
  }

  return (*(v0 + 8))(v9, "compileModelAtURL:error:", v10, __stack_chk_guard);
}

uint64_t outlined init with take of MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.Configuration(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLActivityClassifier.Model.MLPackageRepresentation(uint64_t a1)
{
  v1 = type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined consume of MLModelMetadata?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    a2, a2;
    a4, a2;
    a8, a2;
    a6, a2;
    return a9, a2;
  }

  return result;
}

unint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)(v5 & 0xFFFFFFFFFFFF0000, a1, a2);
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v8 = v14;
        v14[0] = a1;
        v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v12 = v5 >> 16;
          v7 = _StringObject.sharedUTF8.getter(a1, a2);
          v2 = v13;
          v6 = v12;
        }

        v8 = v7;
        v9 = v2;
      }

      v10 = _decodeScalar(_:startingAt:)(v8, v9, v6);
    }
  }

  else
  {
    v10 = 0;
  }

  return ((v3 == 0) << 32) | v10;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if ((a1 & 1) == 0 || (a1 & 0xC) == (4 << (((a3 & 0x1000000000000000) == 0) | ((a2 & 0x800000000000000) != 0))))
  {
    v6 = _StringGuts.validateSubscalarIndex(_:)(a1, a2, a3);
    v4 = v6;
    if ((v6 & 1) == 0)
    {
      return (_StringGuts.scalarAlignSlow(_:)(v6, a2, a3) & 0xFFFFFFFFFFFFFFF2) + (v6 & 0xC) + 1;
    }
  }

  else
  {
    v5 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (a1 >> 16 >= v5)
    {
      BUG();
    }
  }

  return v4;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a1 & 0xC) == 4 << ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0))
  {
    a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a2, a3);
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 >= v4)
  {
    BUG();
  }

  return a1;
}

uint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a1 & 0xC000) != 0 || a1 < &loc_10000)
  {
    a1 &= 0xFFFFFFFFFFFF0000;
    return a1;
  }

  v3 = a1 >> 16;
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v12[0] = a2;
      v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      if (v3 != (HIBYTE(a3) & 0xF))
      {
          ;
        }
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(a2, a3);
        v5 = v10;
      }

      if (v3 != v5)
      {
          ;
        }
      }
    }

    return v3 << 16;
  }

  v9 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 == v9)
  {
    return a1;
  }

  return _StringGuts.foreignScalarAlign(_:)(a1, a2, a3);
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (a3 >> 60) & ((a2 & 0x800000000000000) == 0);
  v7 = a1 >> 16;
  v8 = a1 >> 14;
  if (v6 == 1)
  {
    v9 = String.UTF8View._foreignIndex(_:offsetBy:)(15, v7, a2);
    if (a1 >> 14)
    {
      v10 = ((v8 << 16) + v9) & 0xFFFFFFFFFFFF0000;
    }

    else
    {
      v10 = a1 & 3 | v9 & 0xFFFFFFFFFFFFFFFCLL;
    }

    return v10 | 8;
  }

  else
  {
    v11 = String.UTF16View.index(_:offsetBy:)(15, v7, a2);
    if (a1 >> 14)
    {
      v12 = ((v8 << 16) + v11) & 0xFFFFFFFFFFFF0000;
    }

    else
    {
      v12 = a1 & 3 | v11 & 0xFFFFFFFFFFFFFFFCLL;
    }

    return v12 | 4;
  }
}

void *outlined release of MLModelMetadata(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[8];
  a1[7], a2;
  v3, a2;
  v2, a2;
  v4, a2;
  v5, a2;
  return a1;
}

uint64_t outlined release of MLModelMetadata?(uint64_t a1, void (*a2)(void, void, void, void, void, void, void, void, void))
{
  v2 = *(a1 + 48);
  a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  return a1;
}

uint64_t sub_FD239()
{
  v1 = type metadata accessor for URL(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  (*(v2 + 8))(v5, v1);
  return swift_deallocObject(v0, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLActivityClassifier.Model.makeMLModel()(uint64_t a1)
{
  v3 = type metadata accessor for URL(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLActivityClassifier.Model.makeMLModel()(a1, v4);
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Model.MLPackageRepresentation(_OWORD *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v29 = *a2;
    *v3 = *a2;
    v3 = (v29 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
    v6 = type metadata accessor for LearningPhase(0);
    (*(*(v6 - 8) + 16))(a1 + v5, &a2[v5], v6);
    v7 = type metadata accessor for MLActivityClassifier.Model(0);
    v8 = v7[5];
    __dsta = type metadata accessor for Conv2D(0);
    v55 = *(*(__dsta - 1) + 16);
    v55(a1 + v8, &a2[v8], __dsta);
    v9 = v7[6];
    v47 = type metadata accessor for ReLU(0);
    v49 = *(*(v47 - 8) + 16);
    v49(a1 + v9, &a2[v9], v47);
    v10 = v7[7];
    v51 = type metadata accessor for Dropout(0);
    v53 = *(*(v51 - 8) + 16);
    v53(a1 + v10, &a2[v10], v51);
    v11 = v7[8];
    v12 = a1 + v11;
    v13 = &a2[v11];
    *(a1 + v11) = *&a2[v11];
    *(a1 + v11 + 16) = a2[v11 + 16];
    *(a1 + v11 + 17) = a2[v11 + 17];
    v14 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
    v15 = &v12[v14];
    v16 = &v13[v14];
    v17 = type metadata accessor for LSTM(0);
    (*(*(v17 - 8) + 16))(v15, v16, v17);
    v55(a1 + v7[9], &a2[v7[9]], __dsta);
    v18 = v7[10];
    v19 = type metadata accessor for BatchNorm(0);
    (*(*(v19 - 8) + 16))(a1 + v18, &a2[v18], v19);
    v49(a1 + v7[11], &a2[v7[11]], v47);
    v53(a1 + v7[12], &a2[v7[12]], v51);
    v55(a1 + v7[13], &a2[v7[13]], __dsta);
    *(a1 + v7[14]) = *&a2[v7[14]];
    v20 = v7[15];
    v52 = *&a2[v20];
    *(a1 + v20) = v52;
    v56 = v7;
    v21 = v7[16];
    v22 = a1 + v21;
    v23 = &a2[v21];
    *(a1 + v21) = *&a2[v21];
    *(a1 + v21 + 8) = *&a2[v21 + 8];
    *(a1 + v21 + 16) = a2[v21 + 16];
    *(a1 + v21 + 24) = *&a2[v21 + 24];
    v54 = *&a2[v21 + 40];
    *(a1 + v21 + 40) = v54;
    *(a1 + v21 + 48) = *&a2[v21 + 48];
    v45 = *&a2[v21 + 56];
    *(a1 + v21 + 56) = v45;
    *(a1 + v21 + 64) = *&a2[v21 + 64];
    v46 = *&a2[v21 + 72];
    *(a1 + v21 + 72) = v46;
    v50 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v24 = *(v50 + 44);
    v48 = v22;
    __dst = &v22[v24];
    v25 = v23;
    v26 = &v23[v24];
    v27 = type metadata accessor for DataFrame(0);
    v52;
    v54;
    v45;
    v46;
    if (__swift_getEnumTagSinglePayload(v26, 1, v27))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v26, *(*(v28 - 8) + 64));
    }

    else
    {
      (*(*(v27 - 8) + 16))(__dst, v26, v27);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v27);
    }

    v30 = *(v50 + 48);
    v31 = &v48[v30];
    v32 = &v25[v30];
    if (__swift_getEnumTagSinglePayload(v32, 1, v27))
    {
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v31, v32, *(*(v33 - 8) + 64));
    }

    else
    {
      (*(*(v27 - 8) + 16))(v31, v32, v27);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v27);
    }

    v34 = v56[17];
    v35 = *&a2[v34];
    *(v3 + v34) = v35;
    v36 = v56[18];
    v37 = (v3 + v36);
    v38 = &a2[v36];
    v39 = *&a2[v36];
    v35;
    if (v39)
    {
      *v37 = v39;
      v37[1] = *(v38 + 1);
      v40 = *(v38 + 2);
      v37[2] = v40;

      v40;
    }

    else
    {
      v37[2] = *(v38 + 2);
      *v37 = *v38;
    }

    v41 = *(a3 + 20);
    v42 = *&a2[v41];
    *(v3 + v41) = v42;
    v42;
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.Model.MLPackageRepresentation(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v4 = type metadata accessor for LearningPhase(0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  v6 = a1 + v5[5];
  v24 = type metadata accessor for Conv2D(0);
  v25 = *(*(v24 - 8) + 8);
  v25(v6, v24);
  v7 = a1 + v5[6];
  v26 = type metadata accessor for ReLU(0);
  v21 = *(*(v26 - 8) + 8);
  v21(v7, v26);
  v8 = a1 + v5[7];
  v22 = type metadata accessor for Dropout(0);
  v23 = *(*(v22 - 8) + 8);
  v23(v8, v22);
  v9 = a1 + v5[8];
  v10 = v9 + *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v11 = type metadata accessor for LSTM(0);
  (*(*(v11 - 8) + 8))(v10, v11);
  v25(a1 + v5[9], v24);
  v12 = a1 + v5[10];
  v13 = type metadata accessor for BatchNorm(0);
  (*(*(v13 - 8) + 8))(v12, v13);
  v21(a1 + v5[11], v26);
  v23(a1 + v5[12], v22);
  v25(a1 + v5[13], v24);
  *(a1 + v5[15]);
  v14 = (a1 + v5[16]);
  v14[5];
  v14[7];
  v14[9];
  v27 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v15 = v14 + *(v27 + 44);
  v16 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  v17 = v14 + *(v27 + 48);
  if (!__swift_getEnumTagSinglePayload(v17, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v17, v16);
  }

  v18 = v5[18];
  if (*(a1 + v18))
  {

    v19 = *(a1 + v18 + 8);

    *(a1 + v18 + 16);
  }

  return *(a1 + *(a2 + 20));
}

char *initializeWithCopy for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 16))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = v6[5];
  __dsta = type metadata accessor for Conv2D(0);
  v53 = *(*(__dsta - 1) + 16);
  v53(&a1[v7], &a2[v7], __dsta);
  v8 = v6[6];
  v45 = type metadata accessor for ReLU(0);
  v47 = *(*(v45 - 8) + 16);
  v47(&a1[v8], &a2[v8], v45);
  v9 = v6[7];
  v49 = type metadata accessor for Dropout(0);
  v51 = *(*(v49 - 8) + 16);
  v51(&a1[v9], &a2[v9], v49);
  v10 = v6[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 16))(v14, v15, v16);
  v53(&a1[v6[9]], &a2[v6[9]], __dsta);
  v17 = v6[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v47(&a1[v6[11]], &a2[v6[11]], v45);
  v51(&a1[v6[12]], &a2[v6[12]], v49);
  v53(&a1[v6[13]], &a2[v6[13]], __dsta);
  *&a1[v6[14]] = *&a2[v6[14]];
  v19 = v6[15];
  v50 = *&a2[v19];
  *&a1[v19] = v50;
  v20 = v6[16];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *&a1[v20] = *&a2[v20];
  *&a1[v20 + 8] = *&a2[v20 + 8];
  a1[v20 + 16] = a2[v20 + 16];
  *&a1[v20 + 24] = *&a2[v20 + 24];
  v52 = *&a2[v20 + 40];
  *&a1[v20 + 40] = v52;
  *&a1[v20 + 48] = *&a2[v20 + 48];
  v43 = *&a2[v20 + 56];
  *&a1[v20 + 56] = v43;
  *&a1[v20 + 64] = *&a2[v20 + 64];
  v44 = *&a2[v20 + 72];
  *&a1[v20 + 72] = v44;
  v48 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v23 = *(v48 + 44);
  v46 = v21;
  __dst = &v21[v23];
  v24 = v22;
  v25 = &v22[v23];
  v26 = type metadata accessor for DataFrame(0);
  v50;
  v52;
  v43;
  v44;
  if (__swift_getEnumTagSinglePayload(v25, 1, v26))
  {
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v25, *(*(v27 - 8) + 64));
  }

  else
  {
    (*(*(v26 - 8) + 16))(__dst, v25, v26);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v26);
  }

  v28 = *(v48 + 48);
  v29 = &v46[v28];
  v30 = &v24[v28];
  if (__swift_getEnumTagSinglePayload(v30, 1, v26))
  {
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v29, v30, *(*(v31 - 8) + 64));
  }

  else
  {
    (*(*(v26 - 8) + 16))(v29, v30, v26);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v26);
  }

  v32 = v6[17];
  v33 = *&a2[v32];
  *&a1[v32] = v33;
  v34 = v6[18];
  v35 = &a1[v34];
  v36 = &a2[v34];
  v37 = *&a2[v34];
  v33;
  if (v37)
  {
    *v35 = v37;
    *(v35 + 1) = *(v36 + 1);
    v38 = *(v36 + 2);
    *(v35 + 2) = v38;

    v38;
  }

  else
  {
    *(v35 + 2) = *(v36 + 2);
    *v35 = *v36;
  }

  v39 = *(a3 + 20);
  v40 = *&a2[v39];
  *&a1[v39] = v40;
  v40;
  return a1;
}

void *assignWithCopy for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 24))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = v6[5];
  __src = type metadata accessor for Conv2D(0);
  v70 = *(*(__src - 1) + 24);
  v70(&a1[v7], &a2[v7], __src);
  v8 = v6[6];
  v67 = type metadata accessor for ReLU(0);
  v62 = *(*(v67 - 8) + 24);
  v62(&a1[v8], &a2[v8], v67);
  v9 = v6[7];
  v64 = type metadata accessor for Dropout(0);
  v66 = *(*(v64 - 8) + 24);
  v66(&a1[v9], &a2[v9], v64);
  v10 = v6[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  *&a1[v10 + 8] = *&a2[v10 + 8];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 24))(v14, v15, v16);
  v70(&a1[v6[9]], &a2[v6[9]], __src);
  v17 = v6[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 24))(&a1[v17], &a2[v17], v18);
  v62(&a1[v6[11]], &a2[v6[11]], v67);
  v66(&a1[v6[12]], &a2[v6[12]], v64);
  v70(&a1[v6[13]], &a2[v6[13]], __src);
  *&a1[v6[14]] = *&a2[v6[14]];
  v19 = v6[15];
  v20 = *&a2[v19];
  v21 = *&a1[v19];
  *&a1[v19] = v20;
  v20;
  v21;
  v63 = v6;
  v22 = v6[16];
  *&a1[v22] = *&a2[v22];
  *&a1[v22 + 8] = *&a2[v22 + 8];
  a1[v22 + 16] = a2[v22 + 16];
  *&a1[v22 + 24] = *&a2[v22 + 24];
  *&a1[v22 + 32] = *&a2[v22 + 32];
  v23 = *&a2[v22 + 40];
  v24 = *&a1[v22 + 40];
  *&a1[v22 + 40] = v23;
  v23;
  v24;
  *&a1[v22 + 48] = *&a2[v22 + 48];
  v25 = *&a2[v22 + 56];
  v26 = *&a1[v22 + 56];
  *&a1[v22 + 56] = v25;
  v25;
  v26;
  *&a1[v22 + 64] = *&a2[v22 + 64];
  v27 = *&a2[v22 + 72];
  v28 = &a2[v22];
  v29 = &a1[v22];
  v30 = *&a1[v22 + 72];
  v68 = a1;
  *&a1[v22 + 72] = v27;
  v27;
  v30;
  v65 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v31 = *(v65 + 44);
  v32 = &v29[v31];
  v33 = &v28[v31];
  v34 = type metadata accessor for DataFrame(0);
  __dst = v32;
  LODWORD(v32) = __swift_getEnumTagSinglePayload(v32, 1, v34);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v34);
  if (v32)
  {
    if (EnumTagSinglePayload)
    {
      v36 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v37 = __dst;
LABEL_6:
      memcpy(v37, v33, v36);
      goto LABEL_9;
    }

    (*(*(v34 - 8) + 16))(__dst, v33, v34);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v34);
  }

  else
  {
    v38 = *(v34 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v38 + 8))(__dst, v34);
      v36 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v37 = __dst;
      goto LABEL_6;
    }

    (*(v38 + 24))(__dst, v33, v34);
  }

LABEL_9:
  v39 = *(v65 + 48);
  v40 = &v29[v39];
  v41 = &v28[v39];
  v42 = __swift_getEnumTagSinglePayload(v40, 1, v34);
  v43 = __swift_getEnumTagSinglePayload(v41, 1, v34);
  if (v42)
  {
    if (!v43)
    {
      (*(*(v34 - 8) + 16))(v40, v41, v34);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v34);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v44 = *(v34 - 8);
  if (v43)
  {
    (*(v44 + 8))(v40, v34);
LABEL_14:
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v40, v41, *(*(v45 - 8) + 64));
    goto LABEL_15;
  }

  (*(v44 + 24))(v40, v41, v34);
LABEL_15:
  v46 = v63[17];
  v47 = *(v68 + v46);
  v48 = *&a2[v46];
  *(v68 + v46) = v48;
  v48;

  v49 = v63[18];
  v50 = (v68 + v49);
  v51 = &a2[v49];
  v52 = *&a2[v49];
  if (*(v68 + v49))
  {
    if (v52)
    {
      *v50 = v52;

      v53 = v50[1];
      v50[1] = *(v51 + 1);

      v54 = *(v51 + 2);
      v55 = v50[2];
      v50[2] = v54;
      v54;
      v55;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v50);
      *v50 = *v51;
      v50[2] = *(v51 + 2);
    }
  }

  else if (v52)
  {
    *v50 = v52;
    v50[1] = *(v51 + 1);
    v56 = *(v51 + 2);
    v50[2] = v56;

    v56;
  }

  else
  {
    v50[2] = *(v51 + 2);
    *v50 = *v51;
  }

  v57 = *(a3 + 20);
  v58 = *&a2[v57];
  v59 = *(v68 + v57);
  *(v68 + v57) = v58;
  v58;
  v59;
  return v68;
}

char *initializeWithTake for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v4 = type metadata accessor for LearningPhase(0);
  (*(*(v4 - 8) + 32))(&a1[v3], &a2[v3], v4);
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  v6 = *(v5 + 20);
  v38 = type metadata accessor for Conv2D(0);
  v40 = *(*(v38 - 8) + 32);
  v40(&a1[v6], &a2[v6], v38);
  v7 = v5;
  v8 = *(v5 + 24);
  v34 = type metadata accessor for ReLU(0);
  v36 = *(*(v34 - 8) + 32);
  v36(&a1[v8], &a2[v8], v34);
  v9 = v7[7];
  __dsta = type metadata accessor for Dropout(0);
  v33 = *(*(__dsta - 1) + 32);
  v33(&a1[v9], &a2[v9], __dsta);
  v10 = v7[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 32))(v14, v15, v16);
  v40(&a1[v7[9]], &a2[v7[9]], v38);
  v17 = v7[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
  v36(&a1[v7[11]], &a2[v7[11]], v34);
  v33(&a1[v7[12]], &a2[v7[12]], __dsta);
  v40(&a1[v7[13]], &a2[v7[13]], v38);
  *&a1[v7[14]] = *&a2[v7[14]];
  *&a1[v7[15]] = *&a2[v7[15]];
  v41 = v7;
  v19 = v7[16];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *&a1[v19] = *&a2[v19];
  *&a1[v19 + 8] = *&a2[v19 + 8];
  a1[v19 + 16] = a2[v19 + 16];
  *&a1[v19 + 24] = *&a2[v19 + 24];
  *&a1[v19 + 40] = *&a2[v19 + 40];
  *&a1[v19 + 48] = *&a2[v19 + 48];
  *&a1[v19 + 64] = *&a2[v19 + 64];
  v37 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v22 = *(v37 + 44);
  v39 = v20;
  __dst = &v20[v22];
  v35 = v21;
  v23 = &v21[v22];
  v24 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v23, *(*(v25 - 8) + 64));
  }

  else
  {
    (*(*(v24 - 8) + 32))(__dst, v23, v24);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v24);
  }

  v26 = *(v37 + 48);
  v27 = &v39[v26];
  v28 = &v21[v26];
  if (__swift_getEnumTagSinglePayload(&v35[v26], 1, v24))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v27, v28, *(*(v29 - 8) + 64));
  }

  else
  {
    (*(*(v24 - 8) + 32))(v27, v28, v24);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v24);
  }

  *&a1[v41[17]] = *&a2[v41[17]];
  v30 = v41[18];
  *&a1[v30 + 16] = *&a2[v30 + 16];
  *&a1[v30] = *&a2[v30];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_OWORD *assignWithTake for MLActivityClassifier.Model.MLPackageRepresentation(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = *(v6 + 20);
  v8 = v6;
  v59 = type metadata accessor for Conv2D(0);
  v63 = *(*(v59 - 8) + 40);
  v63(&a1[v7], &a2[v7], v59);
  v9 = v8[6];
  v61 = type metadata accessor for ReLU(0);
  __srcb = *(*(v61 - 8) + 40);
  __srcb(&a1[v9], &a2[v9], v61);
  v10 = v8;
  v11 = v8[7];
  __dsta = type metadata accessor for Dropout(0);
  v57 = *(*(__dsta - 1) + 40);
  v57(&a1[v11], &a2[v11], __dsta);
  v12 = v8[8];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];
  a1[v12 + 16] = a2[v12 + 16];
  a1[v12 + 17] = a2[v12 + 17];
  v15 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v16 = &v13[v15];
  v17 = &v14[v15];
  v18 = type metadata accessor for LSTM(0);
  (*(*(v18 - 8) + 40))(v16, v17, v18);
  v63(&a1[v10[9]], &a2[v10[9]], v59);
  v19 = v10[10];
  v20 = type metadata accessor for BatchNorm(0);
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  __srcb(&a1[v10[11]], &a2[v10[11]], v61);
  v57(&a1[v10[12]], &a2[v10[12]], __dsta);
  v63(&a1[v10[13]], &a2[v10[13]], v59);
  *&a1[v10[14]] = *&a2[v10[14]];
  v21 = v10[15];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];
  v22;
  v60 = v10;
  v23 = v10[16];
  *&a1[v23] = *&a2[v23];
  *&a1[v23 + 8] = *&a2[v23 + 8];
  a1[v23 + 16] = a2[v23 + 16];
  *&a1[v23 + 24] = *&a2[v23 + 24];
  v24 = *&a1[v23 + 40];
  *&a1[v23 + 40] = *&a2[v23 + 40];
  v24;
  *&a1[v23 + 48] = *&a2[v23 + 48];
  v25 = *&a1[v23 + 56];
  *&a1[v23 + 56] = *&a2[v23 + 56];
  v25;
  *&a1[v23 + 64] = *&a2[v23 + 64];
  v26 = &a2[v23];
  v27 = *&a1[v23 + 72];
  v62 = a1;
  *&a1[v23 + 72] = *&a2[v23 + 72];
  v27;
  __src = type metadata accessor for MLActivityClassifier.Configuration(0);
  v28 = __src[11];
  v58 = &a1[v23];
  v29 = &a1[v23 + v28];
  v30 = &a2[v23 + v28];
  v31 = type metadata accessor for DataFrame(0);
  __dst = v29;
  LODWORD(v29) = __swift_getEnumTagSinglePayload(v29, 1, v31);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  if (v29)
  {
    if (EnumTagSinglePayload)
    {
      v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v34 = __dst;
LABEL_6:
      memcpy(v34, v30, v33);
      goto LABEL_9;
    }

    (*(*(v31 - 8) + 32))(__dst, v30, v31);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v31);
  }

  else
  {
    v35 = *(v31 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v35 + 8))(__dst, v31);
      v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v34 = __dst;
      goto LABEL_6;
    }

    (*(v35 + 40))(__dst, v30, v31);
  }

LABEL_9:
  v36 = __src[12];
  v37 = &v26[v36];
  v38 = &v58[v36];
  v39 = __swift_getEnumTagSinglePayload(&v58[v36], 1, v31);
  __srca = v37;
  v40 = __swift_getEnumTagSinglePayload(v37, 1, v31);
  if (v39)
  {
    v41 = a2;
    v42 = v62;
    if (!v40)
    {
      (*(*(v31 - 8) + 32))(v38, __srca, v31);
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v31);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v43 = *(v31 - 8);
  v41 = a2;
  v42 = v62;
  if (v40)
  {
    (*(v43 + 8))(v38, v31);
LABEL_14:
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v38, __srca, *(*(v44 - 8) + 64));
    goto LABEL_15;
  }

  (*(v43 + 40))(v38, __srca, v31);
LABEL_15:
  v45 = v60[17];
  v46 = *(v42 + v45);
  *(v42 + v45) = *(v41 + v45);

  v47 = v60[18];
  v48 = (v42 + v47);
  v49 = v41 + v47;
  if (*(v42 + v47))
  {
    v50 = *(v41 + v47);
    if (v50)
    {
      *v48 = v50;

      v51 = v48[1];
      v48[1] = *(v49 + 1);

      v52 = v48[2];
      v48[2] = *(v49 + 2);
      v52;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v48);
      *v48 = *v49;
      v48[2] = *(v49 + 2);
    }
  }

  else
  {
    v48[2] = *(v49 + 2);
    *v48 = *v49;
  }

  v53 = *(a3 + 20);
  v54 = *(v42 + v53);
  *(v42 + v53) = *(v41 + v53);
  v54;
  return v42;
}

uint64_t sub_FEA0B(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_FEA85(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.Model.MLPackageRepresentation(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.BridgeObject + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ImageAugmentationOptions, &type metadata for MLImageClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLImageClassifier.ImageAugmentationOptions and conformance MLImageClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

BOOL specialized SetAlgebra.isSubset(of:)(uint64_t a1, uint64_t a2)
{
  return (~a1 & a2) == 0;
}

{
  return specialized SetAlgebra.isSubset(of:)(a1, a2);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLImageClassifier.ImageAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLImageClassifier.ImageAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLImageClassifier.ImageAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLImageClassifier.ImageAugmentationOptions.rawValue.getter(a1);
  *v2 = result;
  return result;
}

uint64_t closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(char a1)
{
  v92 = v1;
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v91 = *(v90 - 8);
  v2 = *(v91 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v106 = v86;
  v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v93 = *(v105 - 8);
  v5 = *(v93 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v125 = v86;
  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v94 = *(v107 - 8);
  v8 = *(v94 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v126 = v86;
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v95 = *(v108 - 8);
  v11 = *(v95 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v127 = v86;
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0);
  v96 = *(v109 - 8);
  v14 = *(v96 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v128 = v86;
  v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v97 = *(v110 - 8);
  v17 = *(v97 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v129 = v86;
  v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v99 = *(v98 - 8);
  v20 = *(v99 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v113 = v86;
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v100 = *(v111 - 8);
  v23 = *(v100 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v130 = v86;
  v112 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v101 = *(v112 - 8);
  v26 = *(v101 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v131 = v86;
  v114 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v102 = *(v114 - 8);
  v29 = *(v102 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v132 = v86;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v103 = *(v115 - 8);
  v32 = *(v103 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v133 = v86;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v134 = v86;
  v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v104 = *(v116 - 8);
  v37 = *(v104 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v40 = 0;
  v119 = 0.0;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  v135 = *&v40;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v42 = type metadata accessor for CIImage();
  v43 = type metadata accessor for ImageBlur(255);
  v120 = v42;
  v121 = v43;
  v122 = &protocol witness table for ImageBlur;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  v117 = v86;
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #1 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v86, v41, v42, OpaqueTypeConformance2, v135);
  v45 = 0;
  if ((a1 & 2) != 0)
  {
    v45 = 0x3FE0000000000000;
  }

  v135 = *&v45;
  v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v47 = type metadata accessor for ImageFlipper(255);
  v120 = v42;
  v121 = v47;
  v122 = &protocol witness table for ImageFlipper;
  v48 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(closure #2 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), 0, v46, v42, v48, v135);
  ApplyRandomly.init<A>(probability:_:)(closure #3 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), 0, v46, v42, v48, v135);
  v49 = 0;
  if ((a1 & 4) != 0)
  {
    v49 = 0x3FF0000000000000;
  }

  v135 = *&v49;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v51 = type metadata accessor for ImageExposureAdjuster(255);
  v120 = v42;
  v121 = v51;
  v122 = &protocol witness table for ImageExposureAdjuster;
  v52 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #4 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v87, v50, v42, v52, v135);
  v53 = 0;
  if ((a1 & 8) != 0)
  {
    v53 = 0x3FF0000000000000;
  }

  v135 = *&v53;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v55 = type metadata accessor for RandomImageNoiseGenerator(255);
  v120 = v42;
  v121 = v55;
  v122 = &protocol witness table for RandomImageNoiseGenerator;
  v56 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #5 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v88, v54, v42, v56, v135);
  v57 = 0;
  if ((a1 & 0x10) != 0)
  {
    v57 = 0x3FF0000000000000;
  }

  v135 = *&v57;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  v59 = type metadata accessor for ImageRotator(255);
  v120 = v42;
  v121 = v59;
  v122 = &protocol witness table for ImageRotator;
  v60 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(partial apply for closure #6 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), v89, v58, v42, v60, v135);
  if ((a1 & 0x20) != 0)
  {
    v119 = 1.0;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0);
  type metadata accessor for RandomImageCropper(255);
  v62 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  ApplyRandomly.init<A>(probability:_:)(closure #7 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:), 0, v61, v42, v62, v119);
  v63 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v117, v42, v116, v63);
  v64 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>, 1);
  v65 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v66 = v115;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v129, v134, v42, v110, v115, v64, v65);
  v67 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v118 = v42;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v128, v133, v42, v109, v66, v67, v65);
  v68 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v69 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v70 = v118;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v127, v132, v118, v108, v114, v68, v69);
  v71 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v72 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v126, v131, v70, v107, v112, v71, v72);
  v73 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v74 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v75 = v105;
  v76 = v111;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v125, v130, v70, v105, v111, v73, v74);
  v120 = v70;
  v121 = v75;
  v122 = v76;
  v123 = v73;
  v124 = v74;
  v77 = swift_getOpaqueTypeConformance2(&v120, &opaque type descriptor for <<opaque return type of static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)>>, 1);
  v78 = lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(&lazy protocol witness table cache variable for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>, &demangling cache variable for type metadata for ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0>);
  v79 = v106;
  v80 = v113;
  v81 = v90;
  v82 = v98;
  static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)(v106, v113, v118, v90, v98, v77, v78);
  (*(v91 + 8))(v79, v81);
  (*(v93 + 8))(v125, v105);
  (*(v94 + 8))(v126, v107);
  (*(v95 + 8))(v127, v108);
  (*(v96 + 8))(v128, v109);
  (*(v97 + 8))(v129, v110);
  (*(v99 + 8))(v80, v82);
  (*(v100 + 8))(v130, v111);
  (*(v101 + 8))(v131, v112);
  (*(v102 + 8))(v132, v114);
  v83 = *(v103 + 8);
  v84 = v115;
  v83(v133, v115);
  v83(v134, v84);
  return (*(v104 + 8))(v117, v116);
}

uint64_t closure #1 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)()
{
  v9[0] = v0;
  v1 = type metadata accessor for ImageBlur(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20uLL);
  ImageBlur.init(radius:)((v6 + 1));
  v7 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v9, v7, v1, &protocol witness table for ImageBlur);
  return (*(v2 + 8))(v9, v1);
}

uint64_t type metadata accessor for CIImage()
{
  result = lazy cache variable for type metadata for CIImage;
  if (!lazy cache variable for type metadata for CIImage)
  {
    v1 = objc_opt_self(CIImage);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for CIImage = result;
  }

  return result;
}

uint64_t closure #2 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)(unsigned int *a1)
{
  v15 = a1;
  v13 = v1;
  v2 = type metadata accessor for ImageFlipper.Orientation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for ImageFlipper(0);
  v14 = *(v7 - 8);
  v8 = *(v14 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  (*(v3 + 104))(&v13, *v15, v2);
  ImageFlipper.init(orientation:)(&v13);
  v11 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(&v13, v11, v7, &protocol witness table for ImageFlipper);
  return (*(v14 + 8))(&v13, v7);
}

uint64_t closure #4 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)()
{
  v9[0] = v0;
  v1 = type metadata accessor for ImageExposureAdjuster(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xBuLL);
  ImageExposureAdjuster.init(amount:)((v6 - 5) / 5.0);
  v7 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v9, v7, v1, &protocol witness table for ImageExposureAdjuster);
  return (*(v2 + 8))(v9, v1);
}

uint64_t closure #5 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)()
{
  v9[0] = v0;
  v1 = type metadata accessor for RandomImageNoiseGenerator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xBuLL);
  RandomImageNoiseGenerator.init(intensity:)(v6 / 10.0);
  v7 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v9, v7, v1, &protocol witness table for RandomImageNoiseGenerator);
  return (*(v2 + 8))(v9, v1);
}

uint64_t closure #6 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)()
{
  v9[0] = v0;
  v1 = type metadata accessor for ImageRotator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xBuLL);
  ImageRotator.init(angle:)((v6 - 5) + (v6 - 5));
  v7 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v9, v7, v1, &protocol witness table for ImageRotator);
  return (*(v2 + 8))(v9, v1);
}

uint64_t closure #7 in closure #1 in static MLImageClassifier.applyAugmentations<A>(to:augmentationOptions:upsampleFactor:)()
{
  v0 = type metadata accessor for RandomImageCropper(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  RandomImageCropper.init(scale:aspectRatio:)(0x3FF0000000000000, 0, 0.8, 1.0);
  v5 = type metadata accessor for CIImage();
  static AugmentationBuilder.buildPartialBlock<A>(first:)(v7, v5, v0, &protocol witness table for RandomImageCropper);
  return (*(v1 + 8))(v7, v0);
}

uint64_t lazy protocol witness table accessor for type ApplyRandomly<<<opaque return type of static AugmentationBuilder.buildPartialBlock<A>(first:)>>.0> and conformance ApplyRandomly<A>(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(&protocol conformance descriptor for ApplyRandomly<A>, v3);
    *a1 = result;
  }

  return result;
}

uint64_t static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = v5;
  v24 = a5;
  v25 = a4;
  v23 = a3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v27, v16);
  inited[2] = 1;
  inited[3] = 2;
  v20 = a2;
  inited[4] = a2;
  v9 = v23;
  inited[5] = v23;
  v26 = v6;
  v21 = v6;
  v30 = v7;
  v22 = v7;
  v9;
  v10 = v19;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v21, 0x4C52556567616D49, 0xE800000000000000, inited);
  if (v10)
  {
    swift_setDeallocating(inited);
  }

  else
  {
    v21 = v26;
    v22 = v30;
    v12 = swift_initStackObject(v27, v17);
    v12[2] = 1;
    v12[3] = 2;
    v12[4] = v25;
    v13 = v24;
    v12[5] = v24;
    v13;
    static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v21, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v12);
    swift_setDeallocating(v12);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v21 = v26;
    v22 = v30;
    v14 = swift_initStackObject(v27, v18);
    v14[2] = 1;
    v14[3] = 2;
    v14[4] = v20;
    v15 = v23;
    v14[5] = v23;
    v28 = 2;
    v29 = 3;
    v15;
    static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v21, v14, &v28, v25, v24, &v29);
    swift_setDeallocating(v14);
  }

  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:table:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, __m128 a7, uint64_t *a8)
{
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a8;
  v12 = *(a8 + 8);
  LOBYTE(v24) = *a2;
  BYTE1(v24) = v9;
  BYTE2(v24) = v10;
  result = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:)(a1, &v24, a3, a4, a5, a6);
  if (!v8)
  {
    v27 = result;
    v19 = v11;
    v20 = v12 & 1;
    MLObjectDetector.ModelParameters.ValidationData.generateTables(trainingData:)(&v24, &v21, &v19, a7);
    v14 = v25;
    v23 = v21;
    v15 = v22;
    v26 = v24;
    CMLParameters.setTraining(table:)(&v24);
    v29 = v14;
    if (v15 == 0xFF)
    {
      outlined consume of Result<_DataTable, Error>(v26, v29);
      return v27;
    }

    else
    {
      v24 = v23;
      v16 = v15;
      v25 = v15 & 1;
      v17 = v23;
      outlined copy of Result<_DataTable, Error>(v23, v16);
      v18 = v27;
      CMLParameters.setValidation(table:)(&v24);
      v28 = v16;
      outlined consume of MLDataTable?(v17, v16);
      outlined consume of Result<_DataTable, Error>(v26, v29);
      outlined consume of MLDataTable?(v17, v28);
      return v18;
    }
  }

  return result;
}

uint64_t static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  inited = v6;
  v77 = a6;
  v73 = a5;
  v74 = a1;
  v76 = type metadata accessor for _Model.Parameters(0);
  v9 = *(*(v76 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v62;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v69 = &v62;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v70 = &v62;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v75 = &v62;
  v80 = *a2;
  v79 = a2[1];
  v72 = a2[2];
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v19 = empty;
  v20 = type metadata accessor for CMLParameters();
  v21 = swift_allocObject(v20, 24, 7);
  *(v21 + 16) = v19;
  type metadata accessor for CMLFeatureValue();
  a4;
  v22 = inited;
  v23 = CMLFeatureValue.__allocating_init(_:)(a3, a4);
  if (v22)
  {
    swift_unexpectedError(v22, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  CMLParameters.add(key:featureValue:)(1, v23);

  v24 = v77;
  v77;
  v25 = CMLFeatureValue.__allocating_init(_:)(v73, v24);
  CMLParameters.add(key:featureValue:)(56, v25);

  v27 = tc_v1_flex_dict_create(0);
  if (!v27)
  {
    BUG();
  }

  v28 = v27;
  v29 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v29, v63);
  *(inited + 16) = v28;
  v30 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v31 = v30[6];
  v32 = v74;
  v33 = *(v74 + v31 + 8) == 0;
  v77 = v30;
  if (v33)
  {
    v34 = v75;
    *v75 = *(v74 + v31);
    swift_storeEnumTagMultiPayload(v34, v76, 0);
    CMLDictionary.add(_:)(v34);
    v32 = v74;
    outlined destroy of _Model.Parameters(v34);
    v30 = v77;
  }

  v35 = v30[5];
  if (!*(v32 + v35 + 8))
  {
    v36 = v75;
    *v75 = *(v32 + v35);
    swift_storeEnumTagMultiPayload(v36, v76, 1);
    CMLDictionary.add(_:)(v36);
    v32 = v74;
    outlined destroy of _Model.Parameters(v36);
    v30 = v77;
  }

  v37 = *(v32 + v30[7]);
  if (v37 <= 0 || (v38 = *(v32 + v30[8]), v38 <= 0))
  {
    v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
    *v46 = 0xD000000000000035;
    *(v46 + 8) = "or is of the wrong size" + 0x8000000000000000;
    *(v46 + 16) = 0;
    *(v46 + 32) = 0;
    *(v46 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v45);
    v47 = inited;
    goto LABEL_42;
  }

  v39 = v37;
  if (v37 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v39 >= 9.223372036854776e18)
  {
    BUG();
  }

  v40 = v38;
  if (v38 <= -9.223372036854778e18)
  {
    BUG();
  }

  v73 = 0;
  v71 = v21;
  if (v40 >= 9.223372036854776e18)
  {
    BUG();
  }

  v41 = 0x2D74656E6B726164;
  v42 = v75;
  *v75 = v39;
  *(v42 + 8) = v40;
  swift_storeEnumTagMultiPayload(v42, v76, 13);
  CMLDictionary.add(_:)(v42);
  outlined destroy of _Model.Parameters(v42);
  outlined init with copy of Any?(v32 + v77[10], v64);
  if (!v65)
  {
    outlined destroy of Any?(v64);
    goto LABEL_25;
  }

  if (!swift_dynamicCast(v66, v64, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_25:
    v44 = 0xEC0000006F6C6F79;
    goto LABEL_26;
  }

  if (!v67)
  {
    v41 = 0x74656E656E656373;
  }

  v43 = 0xEC0000006F6C6F79;
  if (!v67)
  {
    v43 = 0xE800000000000000;
  }

  v44 = v43;
LABEL_26:
  v48 = 0x7466656C5F706F74;
  v49 = v75;
  *v75 = v41;
  v49[1] = v44;
  v50 = v76;
  swift_storeEnumTagMultiPayload(v49, v76, 5);
  CMLDictionary.add(_:)(v49);
  outlined destroy of _Model.Parameters(v49);
  v51 = *(v74 + v77[9]);
  v52 = 1869903201;
  if (*(v74 + v77[9]))
  {
    v52 = 7696483;
  }

  *v49 = v52;
  v49[1] = ((v51 ^ 1u) << 56) - 0x1D00000000000000;
  swift_storeEnumTagMultiPayload(v49, v50, 9);
  CMLDictionary.add(_:)(v49);
  outlined destroy of _Model.Parameters(v49);
  v53 = 0x6C65786970;
  if (v80)
  {
    v53 = 0x7A696C616D726F6ELL;
  }

  v54 = 0xE500000000000000;
  if (v80)
  {
    v54 = 0xEA00000000006465;
  }

  v55 = v70;
  *v70 = v53;
  *(v55 + 8) = v54;
  swift_storeEnumTagMultiPayload(v55, v50, 10);
  CMLDictionary.add(_:)(v55);
  outlined destroy of _Model.Parameters(v55);
  v56 = 0x7466656C5F706F74;
  if (v79)
  {
    v56 = 0x6C5F6D6F74746F62;
  }

  v57 = 0xE800000000000000;
  if (v79)
  {
    v57 = 0xEB00000000746665;
  }

  v58 = v69;
  *v69 = v56;
  *(v58 + 8) = v57;
  swift_storeEnumTagMultiPayload(v58, v50, 11);
  CMLDictionary.add(_:)(v58);
  outlined destroy of _Model.Parameters(v58);
  if (v72)
  {
    v21 = v71;
    if (v72 == 1)
    {
      v59 = 0xE800000000000000;
    }

    else
    {
      v48 = 0x6C5F6D6F74746F62;
      v59 = 0xEB00000000746665;
    }
  }

  else
  {
    v59 = 0xE600000000000000;
    v48 = 0x7265746E6563;
    v21 = v71;
  }

  v60 = v68;
  *v68 = v48;
  *(v60 + 8) = v59;
  swift_storeEnumTagMultiPayload(v60, v76, 12);
  v47 = inited;
  CMLDictionary.add(_:)(v60);
  outlined destroy of _Model.Parameters(v60);
  v61 = v73;
  CMLParameters.setOptions(dictionary:)(v47);
  if (!v61)
  {
    swift_setDeallocating(v47);
    tc_v1_release(*(v47 + 16));
    return v21;
  }

LABEL_42:
  swift_setDeallocating(v47);
  tc_v1_release(*(v47 + 16));

  return v21;
}

uint64_t outlined destroy of _Model.Parameters(uint64_t a1)
{
  v1 = type metadata accessor for _Model.Parameters(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t static _FileUtilities.prepareForWriting(to:isDirectory:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  if (a2)
  {
    (*(v4 + 16))(&v18, a1, v3);
  }

  else
  {
    URL.deletingLastPathComponent()();
  }

  v8 = objc_opt_self(NSFileManager);
  v9 = [v8 defaultManager];
  v10 = v9;
  v21 = &v18;
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v22 = 0;
  v13 = [(NSURL *)v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v22];

  v14 = v22;
  if (v13)
  {
    v15 = *(v20 + 8);
    v22;
    v15(v21, v19);
  }

  else
  {
    v16 = v22;
    _convertNSErrorToError(_:)(v14);

    swift_willThrow();
    (*(v20 + 8))(v21, v19);
  }

  return __stack_chk_guard;
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v31 = v3;
  v26 = a2;
  v27 = a1;
  v33 = 0;
  v36 = type metadata accessor for URL(0);
  v34 = *(v36 - 8);
  v5 = *(v34 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v30 = &v24;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v35 = &v24;
  v25 = *(a3 + 16);
  v37 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = v33; ; i = v33 + 1)
  {
    if (v25 == i)
    {
      a3;
      return v37;
    }

    if (i >= *(a3 + 16))
    {
      BUG();
    }

    v11 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v12 = *(v34 + 72);
    v13 = a3;
    v33 = i;
    v14 = v35;
    (*(v34 + 16))(v35, v11 + a3 + i * v12, v36);
    v15 = v31;
    v16 = v27(v14);
    v31 = v15;
    if (v15)
    {
      break;
    }

    if (v16)
    {
      v28 = *(v34 + 32);
      v28(v30, v35, v36);
      v17 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v37);
      v32 = v17;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1);
        v17 = v32;
      }

      v19 = v17[2];
      v20 = v17[3];
      v21 = v19 + 1;
      if (v20 >> 1 <= v19)
      {
        v29 = v17[2];
        v37 = (v19 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v21, 1);
        v21 = v37;
        v19 = v29;
        v17 = v32;
      }

      ++v33;
      v17[2] = v21;
      v37 = v17;
      v28((v17 + v11 + v12 * v19), v30, v36);
      a3 = v13;
      goto LABEL_2;
    }

    (*(v34 + 8))(v35, v36);
  }

  (*(v34 + 8))(v35, v36);
  v22 = v37;
  v37;
  a3;
  return v22;
}

BOOL static _FileUtilities.isReadableFile(at:of:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UTType?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for UTType(0);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v25 = &v21;
  v23 = a1;
  v11 = URL.pathExtension.getter();
  v13 = v12;
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)(v11, v13, &v21);
  if (__swift_getEnumTagSinglePayload(&v21, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v21, &demangling cache variable for type metadata for UTType?);
  }

  else
  {
    (*(v24 + 32))(v25, &v21, v5);
    if (UTType.conforms(to:)(v22))
    {
      v14 = objc_opt_self(NSFileManager);
      v15 = [v14 defaultManager];
      v16 = v15;
      URL.path.getter();
      v18 = v17;
      v19 = String._bridgeToObjectiveC()();
      v18;
      LOBYTE(v18) = [v16 isReadableFileAtPath:v19];

      (*(v24 + 8))(v25, v5);
      return v18 != 0;
    }

    (*(v24 + 8))(v25, v5);
  }

  return 0;
}

uint64_t static _FileUtilities.getReadableJsonFilesInDirectory(at:)(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for UTType(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v23 = &v20;
  v7 = alloca(v4);
  v8 = alloca(v4);
  static UTType.json.getter();
  v22 = a1;
  v9 = static _FileUtilities.isReadableFile(at:of:)(a1, &v20);
  v10 = *(v3 + 8);
  v10(&v20, v2);
  if (v9)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
    v12 = type metadata accessor for URL(0);
    v13 = *(v12 - 8);
    v14 = *(v13 + 80);
    v15 = (v14 + 32) & ~*(v13 + 80);
    v16 = swift_allocObject(v11, v15 + *(v13 + 72), v14 | 7);
    *(v16 + 16) = 1;
    *(v16 + 24) = 2;
    (*(v13 + 16))(v16 + v15, v22, v12);
  }

  else
  {
    v16 = v23;
    static UTType.json.getter();
    v17 = v21;
    v18 = static _FileUtilities.readableFiles(at:type:)(v22, v16);
    if (!v17)
    {
      v16 = v18;
    }

    v10(v23, v2);
  }

  return v16;
}

uint64_t static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)()
{
  v70 = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URLResourceValues?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v64 = &v55;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v61 = &v55;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v71 = type metadata accessor for URL(0);
  v66 = *(v71 - 8);
  v8 = *(v66 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v65 = &v55;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v69 = &v55;
  v13 = objc_opt_self(NSFileManager);
  v14 = [v13 defaultManager];
  v72 = v14;
  URL._bridgeToObjectiveC()(v72);
  v73 = v15;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NSURLResourceKey>);
  v16 = swift_allocObject(v56, 48, 7);
  v16[2] = 2;
  v16[3] = 4;
  v16[4] = NSURLIsDirectoryKey;
  v16[5] = NSURLIsReadableKey;
  v77 = 0;
  v57 = NSURLIsDirectoryKey;
  v58 = NSURLIsReadableKey;
  v17 = v73;
  v18 = v72;
  v67 = outlined bridged method (mnbnnnn) of @objc NSFileManager.contentsOfDirectory(at:includingPropertiesForKeys:options:)(v73, v16, 0, &v77, v72);

  v19 = v67;
  v20 = v77;
  if (v67)
  {
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v67, v71);
    v20;

    v67 = *(v21 + 16);
    v68 = _swiftEmptyArrayStorage;
    v22 = 0;
    v23 = v71;
    v62 = &v55;
    v63 = v21;
    while (1)
    {
      if (v67 == v22)
      {
        v21;
        return v68;
      }

      if (v22 >= *(v21 + 16))
      {
        BUG();
      }

      v24 = *(v66 + 72);
      v59 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v60 = v24;
      v72 = v22;
      (*(v66 + 16))(v69, v59 + v21 + v22 * v24, v23);
      inited = swift_initStackObject(v56, v78);
      *(inited + 16) = 2;
      *(inited + 24) = 4;
      v26 = v57;
      *(inited + 32) = v57;
      v27 = v58;
      *(inited + 40) = v58;
      v73 = type metadata accessor for NSURLResourceKey(0);
      v28 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
      v26;
      v27;
      v29 = v28;
      v30 = v62;
      v76 = Set.init(minimumCapacity:)(2, v73, v29);
      v31 = *(inited + 32);
      specialized Set._Variant.insert(_:)(&v75, v31);

      v32 = *(inited + 40);
      specialized Set._Variant.insert(_:)(&v75, v32);

      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v33 = v76;
      v34 = v70;
      URL.resourceValues(forKeys:)(v76);
      if (v34)
      {
        v34;
        v35 = 1;
        v70 = 0;
      }

      else
      {
        v70 = 0;
        v35 = 0;
      }

      v33;
      v36 = type metadata accessor for URLResourceValues(0);
      __swift_storeEnumTagSinglePayload(v30, v35, 1, v36);
      v37 = v30;
      v38 = v30;
      v39 = v61;
      outlined init with copy of URLResourceValues?(v37, v61);
      v40 = v39;
      v41 = v38;
      if (__swift_getEnumTagSinglePayload(v39, 1, v36) == 1)
      {
        break;
      }

      v42 = v61;
      v43 = URLResourceValues.isDirectory.getter(v39);
      v73 = *(*(v36 - 8) + 8);
      (v73)(v42, v36);
      v41 = v38;
      if (v43 == 2)
      {
        goto LABEL_11;
      }

      v44 = v62;
      v41 = v64;
      outlined init with copy of URLResourceValues?(v62, v64);
      v40 = v44;
      if (__swift_getEnumTagSinglePayload(v41, 1, v36) == 1)
      {
        break;
      }

      v45 = v64;
      v74 = URLResourceValues.isReadable.getter(v44);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for URLResourceValues?);
      (v73)(v45, v36);
      if (((v74 != 2) & (v74 & v43)) == 1)
      {
        v46 = *(v66 + 32);
        v46(v65, v69, v71);
        v47 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v68);
        v77 = v47;
        v73 = v46;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1);
          v47 = v77;
        }

        v49 = v72;
        v50 = v47[2];
        if (v47[3] >> 1 <= v50)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47[3] >= 2uLL, v50 + 1, 1);
          v49 = v72;
          v47 = v77;
        }

        v22 = (v49 + 1);
        v47[2] = v50 + 1;
        v68 = v47;
        v51 = v47 + v59 + v60 * v50;
        v23 = v71;
        (v73)(v51, v65, v71);
        v21 = v63;
      }

      else
      {
LABEL_12:
        v23 = v71;
        (*(v66 + 8))(v69, v71);
        v22 = v72 + 1;
        v21 = v63;
      }
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for URLResourceValues?);
LABEL_11:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for URLResourceValues?);
    goto LABEL_12;
  }

  v53 = v77;
  v54 = _convertNSErrorToError(_:)(v20);

  v70 = v54;
  return swift_willThrow();
}

void (__cdecl **static _FileUtilities.getNonHiddenFilesInDirectory(at:)())(id)
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v12 = 0;
  v5 = [(NSURL *)v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:&v12];
  v6 = v5;
  v7 = &objc_release;

  v8 = v12;
  if (v6)
  {
    v9 = type metadata accessor for URL(0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v6, v9);
    v8;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)(v8);

    swift_willThrow();
  }

  return v7;
}

void *static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(uint64_t a1, uint64_t a2)
{
  v126 = v2;
  v105 = a2;
  v119 = type metadata accessor for URL(0);
  v3 = *(v119 - 8);
  v4 = v3[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v108 = &v103;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v116 = &v103;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v111 = &v103;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v14 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)(a1);
  v15 = v2;
  if (v2)
  {
    return v3;
  }

  v17 = v14;
  v126 = a1;
  v114 = &v103;
  v124 = v3;
  v109 = *(v14 + 16);
  if (v109)
  {
    v18 = v119;
    v19 = v124;
LABEL_7:
    v117 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v106 = v17 + v117;
    v122 = _swiftEmptyDictionarySingleton;
    v123 = 0;
    v26 = 0;
    v110 = v17;
    while (1)
    {
      if (v26 >= *(v17 + 16))
      {
        BUG();
      }

      v27 = v19[2];
      v107 = v19[9];
      v104 = v26;
      v28 = v114;
      v3 = v18;
      v118 = v27;
      (v27)(v114, v106 + v26 * v107);
      v121 = URL.lastPathComponent.getter();
      v126 = v29;
      v30 = static _FileUtilities.getNonHiddenFilesInDirectory(at:)();
      if (v15)
      {
        v126;
        (v124[1])(v28, v3);
        v122;
        v110;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v123, 0);
        return v3;
      }

      v31 = v30[2];
      if (v31)
      {
        v120 = 0;
        v32 = v30;
        v125 = _swiftEmptyArrayStorage;
        v113 = v31;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
        v33 = v125;
        v115 = v32;
        v34 = v32 + v117;
        v35 = v124;
        v36 = v116;
        do
        {
          v112 = v34;
          v118(v36, v34, v3);
          URL.resolvingSymlinksInPath()();
          (v35[1])(v116, v3);
          v125 = v33;
          v37 = v3;
          v38 = v33[2];
          v39 = v38 + 1;
          if (v33[3] >> 1 <= v38)
          {
            v43 = v37;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33[3] >= 2uLL, v39, 1);
            v37 = v43;
            v35 = v124;
            v33 = v125;
          }

          v33[2] = v39;
          v40 = v107;
          v41 = v33 + v117 + v107 * v38;
          v3 = v37;
          (v35[4])(v41, v111);
          v34 = &v112[v40];
          v42 = v113-- == 1;
          v36 = v116;
        }

        while (!v42);
        v115;
        v15 = v120;
        v44 = v33;
      }

      else
      {
        v30;
        v44 = _swiftEmptyArrayStorage;
      }

      v45 = alloca(24);
      v46 = alloca(32);
      v47 = specialized _ArrayProtocol.filter(_:)(closure #2 in static _FileUtilities.readableFiles(at:type:)partial apply, &v103, v44);
      v48 = v47[2];
      if (v48)
      {
        v120 = v15;
        v49 = v47 + v117;
        v115 = v47;
        v47;
        v50 = v49;
        v51 = v119;
        v52 = v108;
        v53 = v126;
        v54 = v123;
        do
        {
          v112 = v48;
          v113 = v50;
          v118(v52, v50, v51);
          v53;
          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v54, 0);
          v55 = v122;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v122);
          v125 = v55;
          v123 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v53);
          v58 = (v57 & 1) == 0;
          v59 = __OFADD__(v55[2], v58);
          v60 = v55[2] + v58;
          if (v59)
          {
            BUG();
          }

          v61 = v57;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v60))
          {
            v62 = v126;
            v64 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v126);
            LOBYTE(v66) = v66 & 1;
            if ((v61 & 1) != v66)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v64 = v123;
          }

          v67 = v125;
          v68 = v125;
          if ((v61 & 1) == 0)
          {
            v125[(v64 >> 6) + 8] |= 1 << v64;
            v69 = v67[6];
            v70 = 16 * v64;
            *(v69 + v70) = v121;
            v71 = v64;
            v72 = v126;
            *(v69 + v70 + 8) = v126;
            v73 = v71;
            *(v67[7] + 8 * v71) = _swiftEmptyArrayStorage;
            v74 = v67[2];
            v67;
            v59 = __OFADD__(1, v74);
            v75 = v74 + 1;
            if (v59)
            {
              BUG();
            }

            v67[2] = v75;
            v68 = v72;
            v64 = v73;
          }

          v68;
          v76 = v67[7];

          v77 = *(v76 + 8 * v64);
          v78 = swift_isUniquelyReferenced_nonNull_native(v77);
          *(v76 + 8 * v64) = v77;
          v122 = v67;
          v123 = v76;
          if (!v78)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
            *(v76 + 8 * v64) = v77;
          }

          v79 = v77[2];
          if (v77[3] >> 1 <= v79)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77[3] >= 2uLL, v79 + 1, 1, v77);
            *(v123 + v64) = v77;
          }

          v77[2] = v79 + 1;
          v80 = v107;
          v81 = v77 + v117 + v107 * v79;
          v52 = v108;
          v82 = v119;
          (v124[4])(v81, v108, v119);
          v53 = v126;
          v126;
          v51 = v82;
          v50 = (v80 + v113);
          v54 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v48 = v112 - 1;
        }

        while (v112 != &dword_0 + 1);
        v83 = v51;
        swift_bridgeObjectRelease_n(v115, 2);
        v123 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
        v15 = v120;
        v84 = v83;
      }

      else
      {
        v47;
        v86 = v122;
        if (!v122[2] || (v87 = v126, v126, specialized __RawDictionaryStorage.find<A>(_:)(v121, v87), v86 = v122, v89 = v88, v87, (v89 & 1) == 0))
        {
          v120 = v15;
          v90 = swift_isUniquelyReferenced_nonNull_native(v86);
          v125 = v86;
          v91 = v86;
          v93 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v126);
          v94 = (v92 & 1) == 0;
          v59 = __OFADD__(v91[2], v94);
          v95 = v91[2] + v94;
          if (v59)
          {
            BUG();
          }

          LOBYTE(v118) = v92;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v90, v95))
          {
            v62 = v126;
            v93 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v126);
            LOBYTE(v66) = v66 & 1;
            LOBYTE(v63) = v118;
            v15 = v120;
            if ((v118 & 1) != v66)
            {
LABEL_57:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v62, v66, v63, v65);
              BUG();
            }

            v19 = v124;
          }

          else
          {
            v15 = v120;
            v19 = v124;
            LOBYTE(v63) = v118;
          }

          v96 = v125;
          v122 = v125;
          if (v63)
          {
            v97 = v125[7];
            *(v97 + 8 * v93);
            *(v97 + 8 * v93) = _swiftEmptyArrayStorage;
            v126;
          }

          else
          {
            v125[(v93 >> 6) + 8] |= 1 << v93;
            v98 = v96[6];
            v99 = 16 * v93;
            *(v98 + v99) = v121;
            *(v98 + v99 + 8) = v126;
            *(v96[7] + 8 * v93) = _swiftEmptyArrayStorage;
            v100 = v96[2];
            v59 = __OFADD__(1, v100);
            v101 = v100 + 1;
            if (v59)
            {
              BUG();
            }

            v96[2] = v101;
          }

          v85 = v119;
          (v19[1])(v114);
          goto LABEL_47;
        }

        v84 = v119;
      }

      v19 = v124;
      v85 = v84;
      (v124[1])(v114);
      v126;
LABEL_47:
      v26 = v104 + 1;
      v17 = v110;
      v18 = v85;
      if (v104 + 1 == v109)
      {
        v110;
        v3 = v122;
        v102 = v123;
        goto LABEL_51;
      }
    }
  }

  v14;
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
  v19 = v124;
  v21 = *(v124 + 80);
  v22 = (v21 + 32) & ~*(v124 + 80);
  v23 = swift_allocObject(v20, v22 + v124[9], v21 | 7);
  *(v23 + 16) = 1;
  *(v23 + 24) = 2;
  v24 = v23 + v22;
  v25 = v119;
  (v19[2])(v24, v126);
  v17 = v23;
  v109 = *(v23 + 16);
  if (v109)
  {
    v18 = v25;
    goto LABEL_7;
  }

  v23;
  v3 = _swiftEmptyDictionarySingleton;
  v102 = 0;
LABEL_51:
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v102, 0);
  return v3;
}

void (__cdecl **static _FileUtilities.readableFiles(at:type:)(uint64_t a1, uint64_t a2))(id)
{
  v39 = a2;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v31 = &v30;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v38 = &v30;
  result = static _FileUtilities.getNonHiddenFilesInDirectory(at:)();
  if (!v2)
  {
    v11 = v39;
    v41 = v4;
    v12 = result[2];
    if (v12)
    {
      v36 = 0;
      v13 = result;
      v40 = _swiftEmptyArrayStorage;
      v32 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v14 = v40;
      v15 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v37 = v13;
      v33 = v15;
      v16 = v13 + v15;
      v34 = *(v41 + 16);
      v35 = *(v41 + 72);
      do
      {
        v17 = v31;
        v30 = v16;
        v34(v31, v16, v3);
        URL.resolvingSymlinksInPath()();
        v18 = v41;
        (*(v41 + 8))(v17, v3);
        v40 = v14;
        v19 = v3;
        v20 = v14[2];
        v21 = v14[3];
        v22 = v20 + 1;
        if (v21 >> 1 <= v20)
        {
          v25 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v22, 1);
          v19 = v25;
          v18 = v41;
          v14 = v40;
        }

        v14[2] = v22;
        v23 = v35;
        v24 = v14 + v33 + v35 * v20;
        v3 = v19;
        (*(v18 + 32))(v24, v38);
        v16 = &v30[v23];
        --v32;
      }

      while (v32);
      v37;
      v26 = v39;
      v27 = v14;
    }

    else
    {
      result;
      v27 = _swiftEmptyArrayStorage;
      v26 = v11;
    }

    v28 = alloca(24);
    v29 = alloca(32);
    v32 = v26;
    return specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static _FileUtilities.readableFiles(at:type:), &v30, v27);
  }

  return result;
}

void *static _FileUtilities.collectFilesLabeledByFileName(at:type:)(uint64_t a1, uint64_t a2)
{
  v62 = v2;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = alloca(v5);
  v7 = alloca(v5);
  v58 = &v53;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v60 = &v53;
  v10 = static _FileUtilities.readableFiles(at:type:)(a1, a2);
  if (!v2)
  {
    v63 = v4;
    v65 = v3;
    v11 = v10[2];
    if (v11)
    {
      v55 = 0;
      v12 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v56 = v10;
      v54 = v12;
      v13 = v10 + v12;
      v14 = v63[2];
      v15 = v63[9];
      v64 = _swiftEmptyDictionarySingleton;
      v68 = 0;
      v16 = v65;
      v17 = v60;
      v57 = v14;
      v59 = v15;
      do
      {
        v62 = v11;
        v53 = v13;
        v14(v17, v13, v16);
        v18 = URL.lastPathComponent.getter();
        v20 = v19;
        *&v21 = 46;
        *(&v21 + 1) = 0xE100000000000000;
        v22 = specialized Collection<>.firstIndex(of:)(v21, v18, v19);
        if (v23 & 1 | (v22 < 0x4000))
        {
          v16 = v65;
          (v63[1])(v17, v65);
          v20;
          v24 = v59;
        }

        else
        {
          v67 = String.subscript.getter(15, v22, v18, v20);
          v26 = v25;
          v66 = v27;
          v29 = v28;
          v20;
          v67 = static String._fromSubstring(_:)(v67, v26, v66, v29);
          v31 = v30;
          v29;
          v57(v58, v17, v65);
          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v68, 0);
          v32 = v64;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v64);
          v61 = v32;
          v68 = v31;
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v31);
          LOBYTE(v66) = v35;
          v36 = (v35 & 1) == 0;
          v37 = __OFADD__(v32[2], v36);
          v38 = v32[2] + v36;
          if (v37)
          {
            BUG();
          }

          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38))
          {
            v39 = v68;
            v34 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v68);
            LOBYTE(v42) = v42 & 1;
            v43 = v66;
            if ((v66 & 1) != v42)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v39, v42, v40, v41);
              BUG();
            }
          }

          else
          {
            v43 = v66;
          }

          v44 = v61;
          v61;
          if ((v43 & 1) == 0)
          {
            v45 = v68;
            specialized _NativeDictionary._insert(at:key:value:)(v34, v67, v68, _swiftEmptyArrayStorage, v44);
            v45;
          }

          v46 = v44[7];
          v64 = v44;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v47 = *(*(v46 + 8 * v34) + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v47);
          v48 = *(v46 + 8 * v34);
          *(v48 + 16) = v47 + 1;
          v24 = v59;
          v49 = v54 + v48 + v59 * v47;
          v16 = v65;
          v50 = v63;
          (v63[4])(v49, v58, v65);
          v68;
          v17 = v60;
          (v50[1])(v60, v16);
          v68 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
        }

        v13 = &v53[v24];
        v11 = (v62 - 1);
        v14 = v57;
      }

      while (v62 != (&dword_0 + 1));
      v56;
      v4 = v64;
      v51 = v68;
    }

    else
    {
      v10;
      v4 = _swiftEmptyDictionarySingleton;
      v51 = 0;
    }

    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v51, 0);
  }

  return v4;
}

id outlined bridged method (mnbnnnn) of @objc NSFileManager.contentsOfDirectory(at:includingPropertiesForKeys:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for NSURLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a2;
  v8 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:isa options:a3 error:a4];
  v9 = v8;

  return v9;
}

uint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey()
{
  result = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    v1 = type metadata accessor for NSURLResourceKey(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSURLResourceKey, v1);
    lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey = result;
  }

  return result;
}

uint64_t outlined init with copy of URLResourceValues?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URLResourceValues?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
    v9;
  }

  else
  {
    *a1 = *a2;
    v6 = a2[1];
    v3[1] = v6;
    v7 = a2[2];
    v6;
    if (v7)
    {
      v3[2] = v7;
      v3[3] = a2[3];
      v8 = a2[4];
      v3[4] = v8;
      v7;
      v8;
    }

    else
    {
      v3[4] = a2[4];
      *(v3 + 1) = *(a2 + 1);
    }

    v10 = *(a3 + 24);
    v11 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v11 - 8) + 16))(v3 + v10, a2 + v10, v11);
    v12 = *(a3 + 28);
    v13 = *(a2 + v12);
    v14 = *(a2 + v12 + 8);
    *(v3 + v12) = v13;
    *(v3 + v12 + 8) = v14;
    v13;
  }

  return v3;
}

uint64_t destroy for AnyTreeClassifierModel(void *a1, uint64_t a2)
{
  a1[1], a2;
  v4 = a1[2];
  if (v4)
  {
    v4, a2;
    a1[4], a2;
  }

  v5 = a1 + *(a2 + 24);
  v6 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  return *(a1 + *(a2 + 28)), v6;
}

void *initializeWithCopy for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a2[1];
  a1[1] = v5;
  v6 = a2[2];
  v5;
  if (v6)
  {
    a1[2] = v6;
    a1[3] = a2[3];
    v7 = a2[4];
    a1[4] = v7;
    v6;
    v7;
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v8 = *(a3 + 24);
  v9 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = *(a3 + 28);
  v11 = *(a2 + v10);
  v12 = *(a2 + v10 + 8);
  *(a1 + v10) = v11;
  *(a1 + v10 + 8) = v12;
  v11;
  return a1;
}

void *assignWithCopy for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
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
      a1[3] = a2[3];
      v10 = a2[4];
      v11 = a1[4];
      a1[4] = v10;
      v10;
      v11;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Float>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else if (v9)
  {
    a1[2] = v9;
    a1[3] = a2[3];
    v12 = a2[4];
    a1[4] = v12;
    v9;
    v12;
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v13 = *(a3 + 24);
  v14 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = *(a3 + 28);
  v16 = *(a2 + v15);
  v17 = *(a2 + v15 + 8);
  v18 = *(a1 + v15);
  *(a1 + v15) = v16;
  *(a1 + v15 + 8) = v17;
  v16;
  v18;
  return a1;
}

uint64_t outlined destroy of FeatureVectorizer<Float>.Transformer(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for AnyTreeClassifierModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 24);
  v5 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  v6 = *(a3 + 28);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6) = *(a2 + v6);
  return a1;
}

void *assignWithTake for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  if (v8)
  {
    v9 = a2[2];
    if (v9)
    {
      a1[2] = v9;
      v8;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];
      v10;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Float>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = *(a3 + 24);
  v12 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(a3 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
  return a1;
}

uint64_t sub_1028D2(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for BaseTreeClassifierModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_10295A(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeClassifierModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifierModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyTreeClassifierModel;
  if (!type metadata singleton initialization cache for AnyTreeClassifierModel)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AnyTreeClassifierModel);
  }

  return result;
}

uint64_t type metadata completion function for AnyTreeClassifierModel(uint64_t a1)
{
  v3[0] = &unk_3412D8;
  v3[1] = &unk_3412F0;
  result = type metadata accessor for BaseTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    v3[3] = &unk_341308;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v11 = a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>) - 8);
    v4 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + a1;
    v10 = *(v3 + 72);
    do
    {
      swift_getAtKeyPath(v4, a2);
      v5 = v9;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v6 + 1;
        v5 = v9;
      }

      _swiftEmptyArrayStorage[2] = v7;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v5;
      v4 += v10;
      --v2;
      a2 = v11;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v13 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v14 = *(v4 + 72);
    v12 = a2;
    do
    {
      swift_getAtKeyPath(v5, a2);
      v6 = v15;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = v7 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v8, 1);
        v8 = v7 + 1;
        v6 = v15;
      }

      _swiftEmptyArrayStorage[2] = v8;
      v9 = 2 * v7;
      _swiftEmptyArrayStorage[v9 + 4] = v6;
      LOBYTE(_swiftEmptyArrayStorage[v9 + 5]) = v16 & 1;
      v5 += v14;
      v10 = v13-- == 1;
      a2 = v12;
    }

    while (!v10);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t AnyTreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = v4;
  v25 = a3;
  v22 = a2;
  v24 = v3;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v27 = v5;
  v10 = *(v5 + 16);
  if (!v10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/AnyTreeClassifierModel.swift", 37, 2, 29, 0);
    BUG();
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 0, v10, *(v27 + 24), *(v27 + 32));
  if (!v26)
  {
    v26 = v6;
    v12 = type metadata accessor for AnyTreeClassifierModel(0);
    v13 = v27 + *(v12 + 24);
    v14 = BaseTreeClassifierModel.applied(features:eventHandler:)(&v22, v22, v25);
    v15 = v14;
    v25 = &v22;
    v16 = *(v12 + 28);
    v17 = *(v27 + v16);
    v18 = alloca(32);
    v19 = alloca(32);
    v20 = *(v27 + v16 + 8) == 0;
    v24 = v27;
    v25 = v17;
    if (v20)
    {
      MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5(partial apply for closure #1 in AnyTreeClassifierModel.applied(to:eventHandler:), &v22, v14);
      v15;
      specialized AnyTreeClassifierModel.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5);
    }

    else
    {
      MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5(partial apply for closure #2 in AnyTreeClassifierModel.applied(to:eventHandler:), &v22, v14);
      v15;
      specialized AnyTreeClassifierModel.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5);
    }

    MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5;
    return (*(v26 + 8))(v25, v23);
  }

  return result;
}

uint64_t closure #1 in AnyTreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:), v5, v3, &type metadata for Int, &protocol witness table for Int);
}

uint64_t specialized AnyTreeClassifierModel.buildDataFrame<A>(_:)(uint64_t a1)
{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<Int>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;
  v10;
  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;
  a1;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<Int>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for Int;
  v28[3] = &protocol witness table for Int;
  KeyPath = swift_getKeyPath(&unk_341388);
  v10;

  MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for Int, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<String>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;
  v10;
  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;
  a1;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<String>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for String;
  v28[3] = &protocol witness table for String;
  KeyPath = swift_getKeyPath(&unk_341388);
  v10;

  MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for String, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

uint64_t closure #2 in AnyTreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:), v5, v3, &type metadata for String, &protocol witness table for String);
}

uint64_t closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v5[0] < 0 || v5[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, "ClassifierModel.swift" + 0x8000000000000000, "CreateML/AnyTreeClassifierModel.swift", 37, 2, 47, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v5[0] >= v2)
  {
    BUG();
  }

  v5[0] = *(a2 + 8 * v5[0] + 32);
  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v5, &type metadata for Int, &protocol witness table for Int);
}

{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v6[0] < 0 || v6[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, "ClassifierModel.swift" + 0x8000000000000000, "CreateML/AnyTreeClassifierModel.swift", 37, 2, 57, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v6[0] < 0 || v6[0] >= v2)
  {
    BUG();
  }

  v4 = *(a2 + 16 * v6[0] + 40);
  v6[0] = *(a2 + 16 * v6[0] + 32);
  v6[1] = v4;
  v4;
  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v6, &type metadata for String, &protocol witness table for String);
}

uint64_t AnyTreeClassifierModel.computeMetrics(on:)(uint64_t a1)
{
  v14[0] = v1;
  v4 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v15 = v14;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v20 = v14;
  v17 = type metadata accessor for DataFrame(0);
  v16 = *(v17 - 8);
  v9 = *(v16 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v14[1] = a1;
  result = AnyTreeClassifierModel.applied(to:eventHandler:)(a1, 0, 0);
  if (!v2)
  {
    v18 = *v3;
    v19 = v3[1];
    DataFrame.subscript.getter(v18, v19);
    v13 = v15;
    DataFrame.subscript.getter(v18, v19);
    AnyClassificationMetrics.init(_:_:)(v20, v13);
    return (*(v16 + 8))(v14, v17);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel()
{
  result = lazy protocol witness table cache variable for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel;
  if (!lazy protocol witness table cache variable for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel)
  {
    v1 = type metadata accessor for AnyTreeClassifierModel(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyTreeClassifierModel, v1);
    lazy protocol witness table cache variable for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(uint64_t a1)
{
  return closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

{
  return closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

uint64_t _UntypedColumn.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = swift_allocObject(v4, 24, 7);
  _UntypedColumn.init<A>(_:)(a1, a2, a3, a4);
  return v6;
}

uint64_t _UntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v85 = v4;
  v71 = v5;
  v77 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v82 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v72 = *(AssociatedTypeWitness - 8);
  v10 = *(v72 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v81 = &v68;
  v13 = tc_v1_flex_list_create(0);
  if (!v13)
  {
    BUG();
  }

  v14 = v13;
  v15 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v15, v69);
  *(inited + 16) = v14;
  v84 = inited;
  *(inited + 24) = 1;
  v17 = v77;
  v74 = v6;
  (*(v6 + 16))(&v68, v77, a2);
  v18 = v82;
  dispatch thunk of Sequence.makeIterator()(a2, v82);
  v73 = a2;
  v19 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v18, a2, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v70 = AssociatedConformanceWitness;
  LOBYTE(AssociatedConformanceWitness) = 6;
  v83 = AssociatedConformanceWitness;
  for (i = v19; ; i = AssociatedTypeWitness)
  {
    dispatch thunk of IteratorProtocol.next()(i, v70);
    v22 = v78;
    v23 = v79;
    v24 = v80;
    v25 = v80 == 6;
    v75 = v79;
    v82 = v78;
    if (v80 >= 6u)
    {
      break;
    }

    v25 = v83 == 6;
    if (v83 == 6)
    {
      switch(v80)
      {
        case 0u:
          goto LABEL_8;
        case 1u:
          goto LABEL_22;
        case 2u:
          goto LABEL_17;
        case 3u:
          goto LABEL_20;
        case 4u:
          goto LABEL_15;
        case 5u:
          goto LABEL_26;
        default:
          goto LABEL_11;
      }
    }

    v26 = v73;
    switch(v80)
    {
      case 0u:
        if (v83)
        {
          goto LABEL_31;
        }

LABEL_8:
        v27 = v85;
        v28 = specialized handling<A, B>(_:_:)(v78);
        if (v27)
        {
          v66 = 100;
          goto LABEL_45;
        }

        v29 = v28;
        v85 = 0;
        if (!v28)
        {
          BUG();
        }

        v30 = v24;
        v83 = 0;
        v31 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v31, 25, 7);
        v32 = CMLFeatureValue.init(rawValue:ownsValue:)(v29, 1);
        v33 = v82;
        v34 = v75;
        v35 = v24;
        goto LABEL_13;
      case 1u:
        if (v83 != 1)
        {
          goto LABEL_31;
        }

LABEL_22:
        a4 = *&v78;
        v27 = v85;
        v46 = specialized handling<A, B>(_:_:)();
        if (v27)
        {
          v66 = 153;
LABEL_45:
          v67 = v27;
LABEL_46:
          swift_unexpectedError(v67, "CreateML/MLDataValueConvertible.swift", 37, 1, v66);
          BUG();
        }

        v47 = v46;
        v85 = 0;
        if (!v46)
        {
          BUG();
        }

        v30 = v24;
        v48 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v48, 25, 7);
        v32 = CMLFeatureValue.init(rawValue:ownsValue:)(v47, 1);
        outlined consume of MLDataValue?(v82, v75, v24);
        LOBYTE(v38) = 1;
        goto LABEL_27;
      case 2u:
        if (v83 != 2)
        {
          goto LABEL_31;
        }

LABEL_17:
        v39 = v78;
        v40 = v79;
        v83 = type metadata accessor for CMLFeatureValue();
        v41 = v23;
        v30 = v24;
        outlined copy of MLDataValue(v39, v41, v24);
        v40;
        v42 = v85;
        v43 = CMLFeatureValue.__allocating_init(_:)(v39, v40);
        v85 = v42;
        if (v42)
        {
          v66 = 170;
          v67 = v85;
          goto LABEL_46;
        }

        v32 = v43;
        outlined consume of MLDataValue?(v82, v40, v24);
        LOBYTE(v38) = 2;
        goto LABEL_27;
      case 3u:
        if (v83 != 3)
        {
          goto LABEL_31;
        }

LABEL_20:
        v44 = v78;
        v86 = v80;
        outlined copy of MLDataValue(v78, v79, v80);

        v32 = MLDataValue.SequenceType.featureValue.getter(a4);

        v45 = v23;
        v30 = v86;
        outlined consume of MLDataValue?(v44, v45, v86);
        LOBYTE(v38) = 3;
        goto LABEL_27;
      case 4u:
        if (v83 != 4)
        {
          goto LABEL_31;
        }

LABEL_15:
        v36 = v78;
        v86 = v80;
        outlined copy of MLDataValue(v78, v79, v80);
        v22;
        v32 = MLDataValue.DictionaryType.featureValue.getter();
        v78;
        v37 = v23;
        v30 = v86;
        outlined consume of MLDataValue?(v36, v37, v86);
        LOBYTE(v38) = 4;
        goto LABEL_27;
      case 5u:
        if (v83 != 5)
        {
LABEL_31:
          v52 = v78;
          v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
          *v54 = 0xD000000000000027;
          *(v54 + 8) = "Invalid labelColumn." + 0x8000000000000000;
          *(v54 + 16) = 0;
          *(v54 + 32) = 0;
          *(v54 + 48) = 1;
          swift_willThrow(&type metadata for MLCreateError, v53);

          outlined consume of MLDataValue?(v52, v75, v24);
          (*(v74 + 8))(v77, v26);
          (*(v72 + 8))(v81, AssociatedTypeWitness);
          goto LABEL_32;
        }

LABEL_26:
        v49 = v78;
        v86 = v80;
        outlined copy of MLDataValue(v78, v79, v80);
        v22;
        v32 = MLDataValue.MultiArrayType.featureValue.getter();

        v50 = v23;
        v30 = v86;
        outlined consume of MLDataValue?(v49, v50, v86);
        LOBYTE(v38) = 5;
LABEL_27:
        v83 = v38;
        break;
      default:
        goto LABEL_11;
    }

LABEL_28:
    v51 = v85;
    CMLSequence.append(_:)(v32);
    v85 = v51;
    if (v51)
    {

      outlined consume of MLDataValue?(v82, v75, v30);
      (*(v74 + 8))(v77, v73);
      (*(v72 + 8))(v81, AssociatedTypeWitness);
      goto LABEL_32;
    }

    outlined consume of MLDataValue?(v82, v75, v30);
    v17 = v77;
  }

LABEL_11:
  if (v25)
  {
    v86 = v80;
    type metadata accessor for CMLFeatureValue();
    v32 = CMLFeatureValue.__allocating_init()(0);
    v33 = v82;
    v34 = v23;
    v30 = v86;
    v35 = 6;
LABEL_13:
    outlined consume of MLDataValue?(v33, v34, v35);
    goto LABEL_28;
  }

  (*(v72 + 8))(v81, AssociatedTypeWitness);
  v58 = v84;
  v59 = v85;
  v60 = specialized handling<A, B>(_:_:)(*(v84 + 16));
  if (v59)
  {
    swift_setDeallocating(v58);
    v61 = CMLFeatureValue.deinit(a4);
    swift_deallocClassInstance(v61, 25, 7);
    (*(v74 + 8))(v17, v73);
LABEL_32:
    v55 = type metadata accessor for _UntypedColumn();
    v56 = v71;
    swift_deallocPartialClassInstance(v71, v55, 24, 7);
  }

  else
  {
    v62 = v60;
    if (!v60)
    {
      BUG();
    }

    swift_setDeallocating(v58);
    v63 = CMLFeatureValue.deinit(a4);
    swift_deallocClassInstance(v63, 25, 7);
    v64 = type metadata accessor for CMLColumn();
    v65 = swift_allocObject(v64, 24, 7);
    *(v65 + 16) = v62;
    (*(v74 + 8))(v77, v73);
    v56 = v71;
    *(v71 + 16) = v65;
  }

  return v56;
}

uint64_t _UntypedColumn.__allocating_init<A>(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject(v4, 24, 7);
  _UntypedColumn.init<A>(_:)(a1, a2, a3, a4);
  return v6;
}

uint64_t _UntypedColumn.init<A>(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = v4;
  v59 = v5;
  v50 = a4;
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v49 = *(AssociatedTypeWitness - 8);
  v9 = *(v49 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v47 = v46;
  v52 = AssociatedTypeWitness;
  v12 = *(*(type metadata accessor for Optional(0, AssociatedTypeWitness) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v48 = v46;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  AssociatedConformanceWitness = a3;
  v55 = a2;
  v56 = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v51 = *(v56 - 8);
  v19 = *(v51 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = tc_v1_flex_list_create(0);
  if (!v22)
  {
    BUG();
  }

  v23 = v22;
  v24 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v24, v46);
  *(inited + 16) = v23;
  v57 = inited;
  *(inited + 24) = 1;
  v26 = v55;
  v60 = v15;
  (*(v15 + 16))(v46, v61, v55);
  v54 = v46;
  v27 = AssociatedConformanceWitness;
  dispatch thunk of Sequence.makeIterator()(v26, AssociatedConformanceWitness);
  v28 = v56;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, v26, v56, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  while (1)
  {
    v29 = v48;
    dispatch thunk of IteratorProtocol.next()(v28, AssociatedConformanceWitness);
    v30 = v52;
    if (__swift_getEnumTagSinglePayload(v29, 1, v52) == 1)
    {
      break;
    }

    v31 = v29;
    v32 = v47;
    v33 = v49;
    (*(v49 + 32))(v47, v31, v30);
    v34 = MLDataValueConvertible.featureValue.getter(v30, v50);
    v35 = v53;
    CMLSequence.append(_:)(v34);
    if (v35)
    {

      (*(v60 + 8))(v61, v55);
      (*(v33 + 8))(v32, v52);
      v39 = v54;
      v40 = v56;
      v41 = v51;
      goto LABEL_9;
    }

    v53 = 0;
    (*(v33 + 8))(v32, v52);

    v26 = v55;
    v28 = v56;
  }

  (*(v51 + 8))(v54, v28);
  (*(v50 + 8))(v30);
  v36 = 0x5060403020100uLL >> (8 * v62);
  type metadata accessor for CMLColumn();
  v37 = v53;
  v38 = CMLColumn.__allocating_init(_:type:)(v57, v36);
  if (v37)
  {
    v39 = v61;
    v40 = v26;
    v41 = v60;
LABEL_9:
    (*(v41 + 8))(v39, v40);
    v42 = v59;
    v43 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v42, v43, 24, 7);
    return v42;
  }

  v45 = v38;
  (*(v60 + 8))(v61, v26);
  v42 = v59;
  *(v59 + 16) = v45;
  return v42;
}

uint64_t _UntypedColumn.init(repeating:count:)(__int128 *a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v3 = MLDataValue.featureValue.getter(*a1);
  outlined consume of MLDataValue(v8, *(&v8 + 1), v9);
  if (a2 < 0)
  {
    BUG();
  }

  v4 = specialized handling<A, B, C>(_:_:_:)(*(v3 + 16), a2);
  if (!v4)
  {
    BUG();
  }

  v5 = type metadata accessor for CMLColumn();
  v6 = swift_allocObject(v5, 24, 7);
  *(v6 + 16) = v4;
  *(v2 + 16) = v6;
  return v2;
}

uint64_t _UntypedColumn.__allocating_init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject(v4, 24, 7);
  _UntypedColumn.init<A>(repeating:count:)(a1, a2, a3, a4);
  return v7;
}

uint64_t _UntypedColumn.init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MLDataValueConvertible.featureValue.getter(a3, a4);
  if (a2 < 0)
  {
    BUG();
  }

  v7 = specialized handling<A, B, C>(_:_:_:)(*(v6 + 16), a2);
  if (!v7)
  {
    BUG();
  }

  v8 = type metadata accessor for CMLColumn();
  v9 = swift_allocObject(v8, 24, 7);
  *(v9 + 16) = v7;
  (*(*(a3 - 8) + 8))(a1, a3);
  result = v4;
  *(v4 + 16) = v9;
  return result;
}

uint64_t _UntypedColumn.init(_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 | a2) < 0)
  {
    BUG();
  }

  v3 = specialized handling<A, B, C>(_:_:_:)(a1, a2);
  if (!v3)
  {
    BUG();
  }

  v4 = type metadata accessor for CMLColumn();
  v5 = swift_allocObject(v4, 24, 7);
  *(v5 + 16) = v3;
  *(v2 + 16) = v5;
  return v2;
}

{
  v3 = __OFADD__(1, a2);
  v4 = a2 + 1;
  if (v3)
  {
    BUG();
  }

  if ((a1 | v4) < 0)
  {
    BUG();
  }

  v5 = specialized handling<A, B, C>(_:_:_:)(a1, v4);
  if (!v5)
  {
    BUG();
  }

  v6 = type metadata accessor for CMLColumn();
  v7 = swift_allocObject(v6, 24, 7);
  *(v7 + 16) = v5;
  *(v2 + 16) = v7;
  return v2;
}

uint64_t _UntypedColumn.appending(contentsOf:)(uint64_t a1)
{
  v3 = *(v2 + 16);
  v4 = CMLColumn.type.getter();
  v5 = *(a1 + 16);
  if (v4 == CMLColumn.type.getter())
  {
    type metadata accessor for CMLColumn();

    result = CMLColumn.__allocating_init(concatenating:and:)(v3, v5);
    if (!v1)
    {
      v7 = result;
      v8 = type metadata accessor for _UntypedColumn();
      result = swift_allocObject(v8, 24, 7);
      *(result + 16) = v7;
    }
  }

  else
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    *v10 = 0xD000000000000034;
    *(v10 + 8) = " \nValues:        [" + 0x8000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 32) = 0;
    *(v10 + 48) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t _UntypedColumn.type.getter()
{
  v2 = v0;
  v3 = *(v1 + 16);
  result = 0x5060403020100uLL >> (8 * CMLColumn.type.getter());
  *v2 = result;
  return result;
}

uint64_t static _UntypedColumn.performRightScalar(op:a:b:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v17 = *(a3 + 16);
  outlined copy of MLDataValue(*a3, v8, v17);
  v9 = MLDataValue.featureValue.getter(a4);
  outlined consume of MLDataValue(v7, v8, v17);
  switch(a1)
  {
    case 0:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "+", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 1:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "-", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 2:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "/", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 3:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "*", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 4:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "==", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 5:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "!=", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 6:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "<", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 7:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), ">", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 8:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "<=", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 9:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), ">=", *(v9 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

LABEL_33:
      v18 = v10;

      v14 = type metadata accessor for CMLColumn();
      v15 = swift_allocObject(v14, 24, 7);
      *(v15 + 16) = v18;
      v16 = type metadata accessor for _UntypedColumn();
      result = swift_allocObject(v16, 24, 7);
      *(result + 16) = v15;
      break;
    default:
      v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
      *v12 = 0xD000000000000017;
      *(v12 + 8) = "h columns must match" + 0x8000000000000000;
      *(v12 + 16) = 0;
      *(v12 + 32) = 0;
      *(v12 + 48) = 1;
      swift_willThrow();
LABEL_31:

      break;
  }

  return result;
}

uint64_t static _UntypedColumn.performLeftScalar(op:a:b:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  outlined copy of MLDataValue(*a2, v15, v16);
  v6 = MLDataValue.featureValue.getter(a4);
  outlined consume of MLDataValue(v14, v15, v16);
  switch(a1)
  {
    case 0:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "+", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 1:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "-", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 2:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "/", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 3:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "*", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 4:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "==", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 5:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "!=", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 6:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "<", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 7:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), ">", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 8:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), "<=", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

      goto LABEL_33;
    case 9:
      v7 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v6 + 16), ">=", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        BUG();
      }

LABEL_33:
      v17 = v7;

      v11 = type metadata accessor for CMLColumn();
      v12 = swift_allocObject(v11, 24, 7);
      *(v12 + 16) = v17;
      v13 = type metadata accessor for _UntypedColumn();
      result = swift_allocObject(v13, 24, 7);
      *(result + 16) = v12;
      break;
    default:
      v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
      *v9 = 0xD000000000000017;
      *(v9 + 8) = "h columns must match" + 0x8000000000000000;
      *(v9 + 16) = 0;
      *(v9 + 32) = 0;
      *(v9 + 48) = 1;
      swift_willThrow(&type metadata for MLCreateError, v8);
LABEL_31:

      break;
  }

  return result;
}

char _UntypedColumn.valueAtIndex(index:)(uint64_t a1, double a2)
{
  v4 = v2;
  if (a1 < 0 || (v5 = *(v3 + 16), v2 = CMLColumn.size.getter(), v2 <= a1))
  {
    *v4 = 0;
    *(v4 + 16) = 6;
  }

  else
  {
    v6 = CMLColumn.value(at:)(a1);
    LOBYTE(v2) = MLDataValue.init(_:)(v6, a2);
  }

  return v2;
}

uint64_t _UntypedColumn.description.getter()
{
  _UntypedColumn.type.getter();
  switch(v42)
  {
    case 0:
      v1 = 0xE300000000000000;
      v2._countAndFlagsBits = 7630409;
      break;
    case 1:
      v2._countAndFlagsBits = 0x656C62756F44;
      goto LABEL_7;
    case 2:
      v2._countAndFlagsBits = 0x676E69727453;
LABEL_7:
      v1 = 0xE600000000000000;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v2._countAndFlagsBits = 0x65636E6575716553;
      break;
    case 4:
      v1 = 0xEA00000000007972;
      v2._countAndFlagsBits = 0x616E6F6974636944;
      break;
    case 5:
      v2._countAndFlagsBits = 0x72724169746C754DLL;
      v1 = 0xEA00000000007961;
      break;
    case 6:
      v2._countAndFlagsBits = 0x676E697373694DLL;
      v1 = 0xE700000000000000;
      break;
  }

  v44._countAndFlagsBits = 0x70795465756C6156;
  v44._object = 0xEB00000000203A65;
  v2._object = v1;
  String.append(_:)(v2);
  v1;
  object = v44._object;
  v44._object;
  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = "CreateML/_UntypedColumn.swift" + 0x8000000000000000;
  String.append(_:)(v4);
  object;
  v5 = _mm_loadu_si128(&v44).u64[0];
  v43 = v5;
  v6 = *(v0 + 16);
  v7 = CMLColumn.size.getter();
  v8 = 10;
  if (v7 < 10)
  {
    v8 = v7;
  }

  v38 = v8;
  if (v7 < 0)
  {
    BUG();
  }

  if (v7)
  {
    v39 = v7;
    v9 = 0;
    do
    {
      if (v9)
      {
        v10._countAndFlagsBits = 8236;
        v10._object = 0xE200000000000000;
        String.append(_:)(v10);
      }

      _UntypedColumn.valueAtIndex(index:)(v9, *&v5);
      countAndFlagsBits = v44._countAndFlagsBits;
      v12 = v44._object;
      switch(v45)
      {
        case 0:
          v13 = lazy protocol witness table accessor for type Int and conformance Int();
          v14._countAndFlagsBits = BinaryInteger.description.getter(&type metadata for Int, v13);
          v15 = v14._object;
          String.append(_:)(v14);
          v17 = v15;
          goto LABEL_25;
        case 1:
          v5 = v44._countAndFlagsBits;
          v25._countAndFlagsBits = Double.description.getter(*&v44._countAndFlagsBits);
          v26 = v25._object;
          String.append(_:)(v25);
          v17 = v26;
LABEL_25:
          v17;
          break;
        case 2:
          v44._object;
          v18._countAndFlagsBits = countAndFlagsBits;
          v18._object = v12;
          String.append(_:)(v18);
          outlined consume of MLDataValue(countAndFlagsBits, v12, 2);
          outlined consume of MLDataValue(countAndFlagsBits, v12, 2);
          break;
        case 3:
          v44._object = closure #1 in MLDataValue.SequenceType.description.getter;
          v45 = 0;
          outlined copy of MLDataValue(v44._countAndFlagsBits, v12, 3u);
          swift_retain_n(countAndFlagsBits, 2);
          v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
          v20 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>();
          v40 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v19, v20);
          v22 = v21;

          v44._countAndFlagsBits = 91;
          v44._object = 0xE100000000000000;
          v23._countAndFlagsBits = v40;
          v23._object = v22;
          String.append(_:)(v23);
          v22;
          v24 = v44._object;
          v44._object;
          v23._countAndFlagsBits = 93;
          v23._object = 0xE100000000000000;
          String.append(_:)(v23);
          v24;
          outlined consume of MLDataValue(countAndFlagsBits, v12, 3);
          String.append(_:)(v44);
          JUMPOUT(0x1051BFLL);
        case 4:
          v16 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
          countAndFlagsBits;
          Dictionary.description.getter(countAndFlagsBits, &type metadata for MLDataValue, &type metadata for MLDataValue, v16);
          outlined consume of MLDataValue(countAndFlagsBits, v12, 4);
          JUMPOUT(0x105076);
        case 5:
          v27 = v44._countAndFlagsBits;
          v28 = v27;
          v29 = [v28 description];
          v30 = v29;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)(v30);
          v32 = v31;

          outlined consume of MLDataValue(countAndFlagsBits, v12, 5);
          v33._countAndFlagsBits = v41;
          v33._object = v32;
          String.append(_:)(v33);
          JUMPOUT(0x10527CLL);
        case 6:
          v34._countAndFlagsBits = 0x676E697373694DLL;
          v34._object = 0xE700000000000000;
          String.append(_:)(v34);
          break;
      }

      ++v9;
    }

    while (v38 != v9);
    if (v39 >= 11)
    {
      v35._countAndFlagsBits = 0x2E2E2E202CLL;
      v35._object = 0xE500000000000000;
      String.append(_:)(v35);
    }
  }

  v36._countAndFlagsBits = 93;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  return v43;
}

uint64_t _UntypedColumn.map(_:skipUndefined:outputType:)(uint64_t a1, uint64_t a2, char a3, _BYTE *a4)
{
  v5 = *(v4 + 16);
  v6 = CMLColumn.apply(transform:type:skipUndefined:)(a1, a2, 0x5060403020100uLL >> (8 * *a4), a3);
  v7 = type metadata accessor for _UntypedColumn();
  result = swift_allocObject(v7, 24, 7);
  *(result + 16) = v6;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType()
{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

char MLActivityClassifier.ModelParameters.init(validationData:batchSize:maximumIterations:predictionWindowSize:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = v7;
  v18 = *a1;
  v21 = *(a1 + 8);
  *v7 = 0;
  *(v7 + 8) = -1;
  v11 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v20 = v11[6];
  v12 = v11[7];
  v19 = v11[8];
  v13 = v9 + v11[5];
  v14 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  swift_storeEnumTagMultiPayload(v13, v14, 2);
  outlined consume of MLDataTable?(*v9, *(v9 + 8));
  *v9 = v18;
  *(v9 + 8) = v21;
  *(v9 + v12) = a2;
  *(v9 + v12 + 8) = a3 & 1;
  *(v9 + v20) = a4;
  *(v9 + v20 + 8) = a5 & 1;
  *(v9 + v19) = a6;
  result = a7 & 1;
  *(v9 + v19 + 8) = a7 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.init(validation:batchSize:maximumIterations:predictionWindowSize:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = v7;
  *v7 = 0;
  *(v7 + 8) = -1;
  v11 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v17 = v11[6];
  v12 = v11[7];
  v16 = v11[8];
  outlined init with take of MLClassifierMetrics(a1, v9 + v11[5], type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  *(v9 + v12) = a2;
  *(v9 + v12 + 8) = a3 & 1;
  *(v9 + v17) = a4;
  *(v9 + v17 + 8) = a5 & 1;
  result = a6;
  *(v9 + v16) = a6;
  *(v9 + v16 + 8) = a7 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.description.getter()
{
  strcpy(v17, "Batch Size: ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v22 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v1 = v22[7];
  v2 = *(v0 + v1 + 8);
  v19._countAndFlagsBits = *(v0 + v1);
  LOBYTE(v19._object) = v2;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v3._countAndFlagsBits = String.init<A>(describing:)(&v19, v18);
  object = v3._object;
  String.append(_:)(v3);
  object;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v19._object;
  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = "ansformer have different types." + 0x8000000000000000;
  v6 = v22[6];
  v7 = *(v0 + v6);
  LOBYTE(v6) = *(v0 + v6 + 8);
  v20 = v7;
  v21 = v6;
  v8._countAndFlagsBits = String.init<A>(describing:)(&v20, v18);
  v9 = v8._object;
  String.append(_:)(v8);
  v9;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v10 = v19._object;
  String.append(_:)(v19);
  v10;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v19._object;
  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = "ported." + 0x8000000000000000;
  v11 = v22[8];
  v12 = *(v0 + v11);
  LOBYTE(v11) = *(v0 + v11 + 8);
  v20 = v12;
  v21 = v11;
  v13._countAndFlagsBits = String.init<A>(describing:)(&v20, v18);
  v14 = v13._object;
  String.append(_:)(v13);
  v14;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v15 = v19._object;
  String.append(_:)(v19);
  v15;
  return v17[0];
}

uint64_t MLActivityClassifier.ModelParameters.validationData.getter()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v3;
  return outlined copy of MLDataTable?(v2, v3);
}

uint64_t MLActivityClassifier.ModelParameters.validationData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of MLDataTable?(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  return outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v1 + *(v3 + 20), v2);
}

uint64_t key path setter for MLActivityClassifier.ModelParameters.validation : MLActivityClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(a1, v6);
  return MLActivityClassifier.ModelParameters.validation.setter(v6);
}

void (*MLActivityClassifier.ModelParameters.validation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0) - 8) + 64);
  *(a1 + 8) = malloc(v3);
  v4 = malloc(v3);
  *(a1 + 16) = v4;
  v5 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 20);
  *(a1 + 24) = v5;
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v1 + v5, v4);
  return MLActivityClassifier.ModelParameters.validation.modify;
}

void MLActivityClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1 + *(a1 + 24);
  if (a2)
  {
    outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v3, v2);
    outlined assign with take of MLActivityClassifier.ModelParameters.Validation(v2, v4);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v3, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  }

  else
  {
    outlined assign with take of MLActivityClassifier.ModelParameters.Validation(v3, v4);
  }

  free(v3);
  free(v2);
}

uint64_t MLActivityClassifier.ModelParameters.maximumIterations.getter()
{
  v1 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 24);
  result = *(v0 + v1);
  v3 = *(v0 + v1 + 8);
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.maximumIterations.setter(uint64_t a1, char a2)
{
  result = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 24);
  *(v2 + result) = a1;
  *(v2 + result + 8) = a2 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.batchSize.getter()
{
  v1 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 28);
  result = *(v0 + v1);
  v3 = *(v0 + v1 + 8);
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.batchSize.setter(uint64_t a1, char a2)
{
  result = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 28);
  *(v2 + result) = a1;
  *(v2 + result + 8) = a2 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.predictionWindowSize.getter()
{
  v1 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 32);
  result = *(v0 + v1);
  v3 = *(v0 + v1 + 8);
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.predictionWindowSize.setter(uint64_t a1, char a2)
{
  result = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 32);
  *(v2 + result) = a1;
  *(v2 + result + 8) = a2 & 1;
  return result;
}

char MLActivityClassifier.ModelParameters.init(validationData:batchSize:maximumIterations:predictionWindowSize:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = v7;
  *v7 = 0;
  *(v7 + 8) = -1;
  v11 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v19 = v11[6];
  v12 = v11[7];
  v18 = v11[8];
  v13 = v9 + v11[5];
  outlined init with take of MLClassifierMetrics(a1, v13, type metadata accessor for MLActivityClassifier.DataSource);
  v14 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  swift_storeEnumTagMultiPayload(v13, v14, 1);
  *(v9 + v12) = a2;
  *(v9 + v12 + 8) = a3 & 1;
  *(v9 + v19) = a4;
  *(v9 + v19 + 8) = a5 & 1;
  *(v9 + v18) = a6;
  result = a7 & 1;
  *(v9 + v18 + 8) = a7 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, __m128 a7, void *a8, void *a9)
{
  v58 = v9;
  v59 = a6;
  v57 = a5;
  v50 = a4;
  v51 = a2;
  v52 = a1;
  v12 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v53 = *a3;
  v60 = *(a3 + 8);
  v16 = *(v10 + 8);
  if (v16 == 0xFF)
  {
    goto LABEL_7;
  }

  v56 = *v10;
  v17 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v10 + *(v17 + 20), &v47);
  if (swift_getEnumCaseMultiPayload(&v47, v12) != 2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v47, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
LABEL_7:
    v23 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 20) + v10;
    v54 = v53;
    LOBYTE(v55) = v60 & 1;
    MLActivityClassifier.ModelParameters.Validation.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(v52, v51, &v54, v50, v57, v59, a8, a9);
    return v46;
  }

  v18 = v56;
  outlined copy of Result<_DataTable, Error>(v56, v16);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v47, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  v48 = v18;
  LOBYTE(v49) = v16 & 1;
  v19 = v58;
  validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(&v48, v50, v57, v59, a8, a9, a7);
  if (v19)
  {
    v20 = v18;
    v21 = v16;
    return outlined consume of MLDataTable?(v20, v21);
  }

  LODWORD(v59) = v16;
  v24 = v54;
  LOBYTE(v58) = v55;
  if (v55)
  {
    outlined copy of Result<_DataTable, Error>(v54, 1);
    v25 = tc_v1_flex_list_create(0);
    if (!v25)
    {
      BUG();
    }

    v26 = v25;
    outlined consume of Result<_DataTable, Error>(v24, 1);
    v27 = type metadata accessor for CMLSequence();
    v28 = swift_allocObject(v27, 25, 7);
    *(v28 + 16) = v26;
    *(v28 + 24) = 1;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v54, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v24, 0);
    v28 = v54;
  }

  v29 = CMLSequence.size.getter();
  v30 = specialized RandomAccessCollection<>.distance(from:to:)(0, v29);
  v28, 2;
  if (v30)
  {
    v57 = v24;
    if (v58)
    {
      outlined copy of Result<_DataTable, Error>(v24, 1);
      v31 = tc_v1_flex_list_create(0);
      if (!v31)
      {
        BUG();
      }

      v32 = v31;
      v33 = type metadata accessor for CMLSequence();
      v34 = swift_allocObject(v33, 25, 7);
      *(v34 + 16) = v32;
      *(v34 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v24, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v24, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v24, 0);
      v34 = v48;
    }

    v54 = 0x6C6562616CLL;
    v55 = 0xE500000000000000;
    v37 = alloca(24);
    v38 = alloca(32);
    v49 = &v54;
    v39 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v47, v34);

    if ((v39 & 1) == 0)
    {
      v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
      *v45 = 0xD000000000000030;
      *(v45 + 8) = "Prediction Window: " + 0x8000000000000000;
      *(v45 + 16) = 0;
      *(v45 + 32) = 0;
      *(v45 + 48) = 1;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v57, v58);
      v20 = v56;
      v21 = v59;
      return outlined consume of MLDataTable?(v20, v21);
    }

    v35 = v56;
    v36 = v59;
    v24 = v57;
  }

  else
  {
    v35 = v56;
    v36 = v59;
  }

  outlined consume of MLDataTable?(v35, v36);
  v40 = v52;
  v41 = v53;
  *v52 = v53;
  v42 = v60;
  *(v40 + 8) = v60 & 1;
  v43 = v51;
  *v51 = v24;
  *(v43 + 8) = v58;
  return outlined copy of Result<_DataTable, Error>(v41, v42);
}

uint64_t MLActivityClassifier.ModelParameters.Validation.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  v49 = v8;
  v46 = a6;
  v47 = a5;
  v48 = a4;
  v50 = a2;
  v51 = a1;
  v11 = *(*(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v45 = &v38;
  v14 = *(*(type metadata accessor for MLActivityClassifier.DataSource(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v53 = &v38;
  v17 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v52 = *a3;
  v21 = *(a3 + 8);
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v9, &v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v38, v17);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of MLClassifierMetrics(&v38, v53, type metadata accessor for MLActivityClassifier.DataSource);
      v23 = v45;
      v24 = v49;
      MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(v48, v47, v46, a7, a8);
      if (v24)
      {
        return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v53, type metadata accessor for MLActivityClassifier.DataSource);
      }

      else
      {
        MLActivityClassifier.DataSource.Columns.convertToTuriCore()();
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v23, type metadata accessor for MLActivityClassifier.DataSource.Columns);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v53, type metadata accessor for MLActivityClassifier.DataSource);
        v32 = v43;
        v33 = BYTE8(v43);
        v34 = v51;
        v35 = v52;
        *v51 = v52;
        *(v34 + 8) = v21 & 1;
        v36 = v50;
        *v50 = v32;
        *(v36 + 8) = v33;
        return outlined copy of Result<_DataTable, Error>(v35, v21);
      }
    }

    else
    {
      v29 = v51;
      v30 = v52;
      *v51 = v52;
      *(v29 + 8) = v21 & 1;
      v31 = v50;
      *v50 = 0;
      *(v31 + 8) = -1;
      return outlined copy of Result<_DataTable, Error>(v30, v21);
    }
  }

  else
  {
    v41 = v52;
    v42 = v21 & 1;
    v43 = v38;
    v44 = v39;
    MLDataTable.randomSplit(strategy:)(&v38, &v39, &v43);
    result = v38;
    v25 = BYTE8(v38);
    v26 = v40;
    v27 = v51;
    *v51 = v39;
    *(v27 + 8) = v26;
    v28 = v50;
    *v50 = result;
    *(v28 + 8) = v25;
  }

  return result;
}

uint64_t MLActivityClassifier.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLActivityClassifier.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t outlined init with copy of MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
  {
    v6 = *(a2 + 8);
    if (v6 == -1)
    {
      *(a1 + 8) = *(a2 + 8);
      *a1 = *a2;
    }

    else
    {
      v7 = *a2;
      outlined copy of Result<_DataTable, Error>(*a2, v6);
      *a1 = v7;
      *(a1 + 8) = v6 & 1;
    }

    v35 = a3;
    v9 = a3[5];
    v10 = (a1 + v9);
    v11 = a2 + v9;
    v12 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v11, v12) != 1)
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
      v24 = v35;
LABEL_15:
      v27 = v24[6];
      *(v3 + v27 + 8) = *(a2 + v27 + 8);
      *(v3 + v27) = *(a2 + v27);
      v28 = v24[7];
      *(v3 + v28) = *(a2 + v28);
      *(v3 + v28 + 8) = *(a2 + v28 + 8);
      v29 = v24[8];
      *(v3 + v29) = *(a2 + v29);
      *(v3 + v29 + 8) = *(a2 + v29 + 8);
      return v3;
    }

    v31 = v12;
    v32 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v32);
    v34 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v25 = type metadata accessor for DataFrame(0);
      v14 = v10;
      (*(*(v25 - 8) + 16))(v10, v11, v25);
    }

    else
    {
      v14 = v10;
      if (EnumCaseMultiPayload != 1)
      {
        v24 = v35;
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 16))(v14, v11, v26);
        goto LABEL_14;
      }

      v15 = type metadata accessor for URL(0);
      (*(*(v15 - 8) + 16))(v10, v11, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      v17 = v16[12];
      *&v10[v17] = *&v11[v17];
      v18 = *&v11[v17 + 8];
      *&v10[v17 + 8] = v18;
      v19 = v16[16];
      *&v10[v19] = *&v11[v19];
      v20 = *&v11[v19 + 8];
      *&v14[v19 + 8] = v20;
      v21 = v16[20];
      *&v14[v21] = *&v11[v21];
      v33 = *&v11[v21 + 8];
      *&v14[v21 + 8] = v33;
      v22 = v16[24];
      *&v14[v22] = *&v11[v22];
      v23 = *&v11[v22 + 8];
      *&v14[v22 + 8] = v23;
      v18;
      v20;
      v33;
      v23;
    }

    v24 = v35;
LABEL_14:
    swift_storeEnumTagMultiPayload(v14, v32, v34);
    swift_storeEnumTagMultiPayload(v14, v31, 1);
    goto LABEL_15;
  }

  v8 = *a2;
  *v3 = *a2;
  v3 = (v8 + ((v4 + 16) & ~v4));

  return v3;
}

uint64_t destroy for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*a1, v2);
  }

  v3 = *(a2 + 20) + a1;
  v4 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  result = swift_getEnumCaseMultiPayload(v3, v4);
  if (result == 1)
  {
    v6 = type metadata accessor for MLActivityClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(v3, v6);
    switch(result)
    {
      case 2:
        v7 = type metadata accessor for DataFrame(0);
        return (*(*(v7 - 8) + 8))(v3, v7);
      case 1:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v3, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *(v3 + v9[12] + 8);
        *(v3 + v9[16] + 8);
        *(v3 + v9[20] + 8);
        return *(v3 + v9[24] + 8);
      case 0:
        v7 = type metadata accessor for URL(0);
        return (*(*(v7 - 8) + 8))(v3, v7);
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
  }

  else
  {
    v6 = *a2;
    outlined copy of Result<_DataTable, Error>(*a2, v5);
    *a1 = v6;
    *(a1 + 8) = v5 & 1;
  }

  v32 = a3;
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = a2 + v7;
  v10 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v27 = v10;
    v28 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v28);
    v31 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v21 = type metadata accessor for DataFrame(0);
      (*(*(v21 - 8) + 16))(v8, v9, v21);
      v12 = v32;
    }

    else
    {
      v12 = v32;
      if (EnumCaseMultiPayload == 1)
      {
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 16))(v8, v9, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v15 = v14[12];
        *&v8[v15] = *&v9[v15];
        v16 = *&v9[v15 + 8];
        *&v8[v15 + 8] = v16;
        v17 = v14[16];
        *&v8[v17] = *&v9[v17];
        v29 = *&v9[v17 + 8];
        *&v8[v17 + 8] = v29;
        v18 = v14[20];
        *&v8[v18] = *&v9[v18];
        v30 = *&v9[v18 + 8];
        *&v8[v18 + 8] = v30;
        v19 = v14[24];
        *&v8[v19] = *&v9[v19];
        v20 = *&v9[v19 + 8];
        *&v8[v19 + 8] = v20;
        v16;
        v29;
        v30;
        v20;
      }

      else
      {
        v22 = type metadata accessor for URL(0);
        (*(*(v22 - 8) + 16))(v8, v9, v22);
      }
    }

    swift_storeEnumTagMultiPayload(v8, v28, v31);
    swift_storeEnumTagMultiPayload(v8, v27, 1);
  }

  else
  {
    memcpy(v8, v9, *(*(v10 - 8) + 64));
    v12 = v32;
  }

  v23 = v12[6];
  *(a1 + v23 + 8) = *(a2 + v23 + 8);
  *(a1 + v23) = *(a2 + v23);
  v24 = v12[7];
  *(a1 + v24) = *(a2 + v24);
  *(a1 + v24 + 8) = *(a2 + v24 + 8);
  v25 = v12[8];
  *(a1 + v25) = *(a2 + v25);
  *(a1 + v25 + 8) = *(a2 + v25 + 8);
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *(a2 + 8);
  if (*(a1 + 8) == 0xFF)
  {
    if (v6 == -1)
    {
      *(a1 + 8) = *(a2 + 8);
      *a1 = *a2;
    }

    else
    {
      v10 = *a2;
      outlined copy of Result<_DataTable, Error>(*a2, v6);
      *a1 = v10;
      *(a1 + 8) = v6 & 1;
    }
  }

  else if (v6 == -1)
  {
    outlined destroy of MLDataTable(a1);
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v7 = *a2;
    outlined copy of Result<_DataTable, Error>(*a2, v6);
    v8 = *a1;
    *a1 = v7;
    v9 = *(a1 + 8);
    *(a1 + 8) = v6 & 1;
    outlined consume of Result<_DataTable, Error>(v8, v9);
  }

  if (a1 != a2)
  {
    v35 = a3;
    v11 = a3[5];
    v12 = (a1 + v11);
    v13 = a2 + v11;
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v12, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
    v14 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v13, v14) == 1)
    {
      v30 = v14;
      v31 = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v31);
      v34 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 16))(v12, v13, v24);
        a3 = v35;
      }

      else
      {
        a3 = v35;
        if (EnumCaseMultiPayload == 1)
        {
          v16 = type metadata accessor for URL(0);
          (*(*(v16 - 8) + 16))(v12, v13, v16);
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
          v18 = v17[12];
          *&v12[v18] = *&v13[v18];
          v19 = *&v13[v18 + 8];
          *&v12[v18 + 8] = v19;
          v20 = v17[16];
          *&v12[v20] = *&v13[v20];
          v32 = *&v13[v20 + 8];
          *&v12[v20 + 8] = v32;
          v21 = v17[20];
          *&v12[v21] = *&v13[v21];
          v33 = *&v13[v21 + 8];
          *&v12[v21 + 8] = v33;
          v22 = v17[24];
          *&v12[v22] = *&v13[v22];
          v23 = *&v13[v22 + 8];
          *&v12[v22 + 8] = v23;
          v19;
          v32;
          v33;
          v23;
        }

        else
        {
          v25 = type metadata accessor for URL(0);
          (*(*(v25 - 8) + 16))(v12, v13, v25);
        }
      }

      swift_storeEnumTagMultiPayload(v12, v31, v34);
      swift_storeEnumTagMultiPayload(v12, v30, 1);
    }

    else
    {
      memcpy(v12, v13, *(*(v14 - 8) + 64));
      a3 = v35;
    }
  }

  v26 = a3[6];
  *(a1 + v26 + 8) = *(a2 + v26 + 8);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[7];
  *(a1 + v27) = *(a2 + v27);
  *(a1 + v27 + 8) = *(a2 + v27 + 8);
  v28 = a3[8];
  *(a1 + v28) = *(a2 + v28);
  *(a1 + v28 + 8) = *(a2 + v28 + 8);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v3 = a3[5];
  v4 = (a1 + v3);
  v5 = (a2 + v3);
  v6 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v5, v6) == 1)
  {
    v18 = v6;
    v19 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v5, v19);
    v20 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v12 = type metadata accessor for DataFrame(0);
      v8 = v4;
      (*(*(v12 - 8) + 32))(v4, v5, v12);
    }

    else
    {
      v8 = v4;
      if (EnumCaseMultiPayload != 1)
      {
        v11 = a3;
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 32))(v8, v5, v13);
        goto LABEL_9;
      }

      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(v4, v5, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      *&v4[v10[12]] = *&v5[v10[12]];
      *&v4[v10[16]] = *&v5[v10[16]];
      *&v4[v10[20]] = *&v5[v10[20]];
      *&v4[v10[24]] = *&v5[v10[24]];
    }

    v11 = a3;
LABEL_9:
    swift_storeEnumTagMultiPayload(v8, v19, v20);
    swift_storeEnumTagMultiPayload(v8, v18, 1);
    goto LABEL_10;
  }

  memcpy(v4, v5, *(*(v6 - 8) + 64));
  v11 = a3;
LABEL_10:
  v14 = v11[6];
  *(a1 + v14 + 8) = *(a2 + v14 + 8);
  *(a1 + v14) = *(a2 + v14);
  v15 = v11[7];
  *(a1 + v15) = *(a2 + v15);
  *(a1 + v15 + 8) = *(a2 + v15 + 8);
  v16 = v11[8];
  *(a1 + v16) = *(a2 + v16);
  *(a1 + v16 + 8) = *(a2 + v16 + 8);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
  }

  else
  {
    v6 = *(a2 + 8);
    if (v6 == -1)
    {
      outlined destroy of MLDataTable(a1);
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
    }

    else
    {
      v7 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v6 & 1;
      outlined consume of Result<_DataTable, Error>(v7, v5);
    }
  }

  if (a1 != a2)
  {
    v25 = a3;
    v8 = a3[5];
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v9, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
    v11 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v10, v11) == 1)
    {
      v22 = v11;
      v23 = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v10, v23);
      v24 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        v16 = type metadata accessor for DataFrame(0);
        v13 = v9;
        (*(*(v16 - 8) + 32))(v9, v10, v16);
      }

      else
      {
        v13 = v9;
        if (EnumCaseMultiPayload != 1)
        {
          a3 = v25;
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 32))(v13, v10, v17);
          goto LABEL_15;
        }

        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 32))(v9, v10, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *&v9[v15[12]] = *&v10[v15[12]];
        *&v9[v15[16]] = *&v10[v15[16]];
        *&v9[v15[20]] = *&v10[v15[20]];
        *&v9[v15[24]] = *&v10[v15[24]];
      }

      a3 = v25;
LABEL_15:
      swift_storeEnumTagMultiPayload(v13, v23, v24);
      swift_storeEnumTagMultiPayload(v13, v22, 1);
      goto LABEL_16;
    }

    memcpy(v9, v10, *(*(v11 - 8) + 64));
    a3 = v25;
  }

LABEL_16:
  v18 = a3[6];
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  *(a1 + v18) = *(a2 + v18);
  v19 = a3[7];
  *(a1 + v19) = *(a2 + v19);
  *(a1 + v19 + 8) = *(a2 + v19 + 8);
  v20 = a3[8];
  *(a1 + v20) = *(a2 + v20);
  *(a1 + v20 + 8) = *(a2 + v20 + 8);
  return a1;
}

uint64_t sub_106DC4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v3 = *(a1 + 8);
    v4 = v3 < 2u;
    LOBYTE(result) = ~v3;
    if (v4)
    {
      LOBYTE(result) = 0;
    }

    return result;
  }

  else
  {
    v7 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 20) + a1, a2, v7);
  }
}

uint64_t sub_106E41(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 253)
  {
    *(a1 + 8) = ~a2;
  }

  else
  {
    v5 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 20) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.ModelParameters(uint64_t a1)
{
  v3[0] = "\t";
  result = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_3414A0;
    v3[3] = &unk_3414A0;
    v3[4] = &unk_3414A0;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
    if (EnumCaseMultiPayload == 2)
    {
      v20 = type metadata accessor for DataFrame(0);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(__dst, __src, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v11 = v10[12];
        *&__dst[v11] = *&__src[v11];
        v12 = *&__src[v11 + 8];
        *(v3 + v11 + 8) = v12;
        v13 = v10[16];
        *(v3 + v13) = *&__src[v13];
        v22 = *&__src[v13 + 8];
        *(v3 + v13 + 8) = v22;
        v14 = v10[20];
        *(v3 + v14) = *&__src[v14];
        v21 = v7;
        v15 = *&__src[v14 + 8];
        *(v3 + v14 + 8) = v15;
        v16 = v10[24];
        *(v3 + v16) = *&__src[v16];
        v17 = *&__src[v16 + 8];
        *(v3 + v16 + 8) = v17;
        v12;
        v22;
        LOBYTE(v12) = v15;
        v7 = v21;
        v12;
        v17;
LABEL_11:
        swift_storeEnumTagMultiPayload(v3, v7, EnumCaseMultiPayload);
        swift_storeEnumTagMultiPayload(v3, a3, 1);
        return v3;
      }

      v20 = type metadata accessor for URL(0);
    }

    (*(*(v20 - 8) + 16))(__dst, __src, v20);
    goto LABEL_11;
  }

  v18 = *__src;
  *v3 = *__src;
  v3 = (v18 + ((v5 + 16) & ~v5));

  return v3;
}

uint64_t destroy for MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLActivityClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 2:
        v4 = type metadata accessor for DataFrame(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 1:
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 8))(a1, v5);
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *(a1 + v6[12] + 8);
        *(a1 + v6[16] + 8);
        *(a1 + v6[20] + 8);
        return *(a1 + v6[24] + 8);
      case 0:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
    }
  }

  return result;
}

char *initializeWithCopy for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v5 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for DataFrame(0);
LABEL_8:
    (*(*(v17 - 8) + 16))(__dst, __src, v17);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = type metadata accessor for URL(0);
    goto LABEL_8;
  }

  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 16))(__dst, __src, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  v9 = v8[12];
  *&__dst[v9] = *&__src[v9];
  v10 = *&__src[v9 + 8];
  *&__dst[v9 + 8] = v10;
  v11 = v8[16];
  *&__dst[v11] = *&__src[v11];
  v19 = *&__src[v11 + 8];
  *&__dst[v11 + 8] = v19;
  v12 = v8[20];
  *&__dst[v12] = *&__src[v12];
  v18 = v5;
  v13 = *&__src[v12 + 8];
  *&__dst[v12 + 8] = v13;
  v14 = v8[24];
  *&__dst[v14] = *&__src[v14];
  v15 = *&__src[v14 + 8];
  *&__dst[v14 + 8] = v15;
  v10;
  v19;
  LOBYTE(v10) = v13;
  v5 = v18;
  v10;
  v15;
LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, v5, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters.Validation(__dst, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v5 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for DataFrame(0);
LABEL_9:
    (*(*(v17 - 8) + 16))(__dst, __src, v17);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = type metadata accessor for URL(0);
    goto LABEL_9;
  }

  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 16))(__dst, __src, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  v9 = v8[12];
  *&__dst[v9] = *&__src[v9];
  v10 = *&__src[v9 + 8];
  *&__dst[v9 + 8] = v10;
  v11 = v8[16];
  *&__dst[v11] = *&__src[v11];
  v19 = *&__src[v11 + 8];
  *&__dst[v11 + 8] = v19;
  v12 = v8[20];
  *&__dst[v12] = *&__src[v12];
  v18 = v5;
  v13 = *&__src[v12 + 8];
  *&__dst[v12 + 8] = v13;
  v14 = v8[24];
  *&__dst[v14] = *&__src[v14];
  v15 = *&__src[v14 + 8];
  *&__dst[v14 + 8] = v15;
  v10;
  v19;
  LOBYTE(v10) = v13;
  v5 = v18;
  v10;
  v15;
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v5, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *initializeWithTake for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DataFrame(0);
LABEL_8:
    (*(*(v9 - 8) + 32))(__dst, __src, v9);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v9 = type metadata accessor for URL(0);
    goto LABEL_8;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  *&__dst[v7[12]] = *&__src[v7[12]];
  *&__dst[v7[16]] = *&__src[v7[16]];
  *&__dst[v7[20]] = *&__src[v7[20]];
  *&__dst[v7[24]] = *&__src[v7[24]];
LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters.Validation(__dst, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DataFrame(0);
LABEL_9:
    (*(*(v9 - 8) + 32))(__dst, __src, v9);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v9 = type metadata accessor for URL(0);
    goto LABEL_9;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  *&__dst[v7[12]] = *&__src[v7[12]];
  *&__dst[v7[16]] = *&__src[v7[16]];
  *&__dst[v7[20]] = *&__src[v7[20]];
  *&__dst[v7[24]] = *&__src[v7[24]];
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

uint64_t type metadata completion function for MLActivityClassifier.ModelParameters.Validation(uint64_t a1)
{
  v5[0] = &unk_3414C8;
  result = type metadata accessor for MLActivityClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *assignWithCopy for MLDecisionTreeRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLDecisionTreeRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLDecisionTreeRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_341500;
  v5[1] = &unk_341518;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

void *initializeBufferWithCopyOfBuffer for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *__src;
    *v3 = *__src;
    v3 = (v12 + ((v5 + 16) & ~v5));

    return v3;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v19 = *__src;
      *v3 = *__src;
      v19;
      swift_storeEnumTagMultiPayload(v3, a3, 3);
      return v3;
    case 2:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 16))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v15 = *(v14 + 48);
      *&__dst[v15] = *&__src[v15];
      v16 = *&__src[v15 + 8];
      *(v3 + v15 + 8) = v16;
      v17 = *(v14 + 64);
      *(v3 + v17) = *&__src[v17];
      v18 = *&__src[v17 + 8];
      *(v3 + v17 + 8) = v18;
      v16;
      v18;
      swift_storeEnumTagMultiPayload(v3, a3, 2);
      return v3;
    case 1:
      v8 = *__src;
      v9 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v9);
      *__dst = v8;
      __dst[8] = v9;
      *(__dst + 2) = *(__src + 2);
      v10 = *(__src + 3);
      v3[3] = v10;
      v3[4] = *(__src + 4);
      v11 = *(__src + 5);
      v3[5] = v11;
      v10;
      v11;
      swift_storeEnumTagMultiPayload(v3, a3, 1);
      return v3;
  }

  return memcpy(__dst, __src, *(v4 + 64));
}

uint64_t destroy for MLWordTagger.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result != 3)
  {
    if (result == 2)
    {
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      *(a1 + *(v5 + 48) + 8);
      v2 = (*(v5 + 64) + a1 + 8);
    }

    else
    {
      if (result != 1)
      {
        return result;
      }

      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      v2 = (a1 + 40);
    }
  }

  return *v2;
}

char *initializeWithCopy for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v16 = *__src;
      *__dst = *__src;
      v16;
      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      return __dst;
    case 2:
      v10 = type metadata accessor for DataFrame(0);
      (*(*(v10 - 8) + 16))(__dst, __src, v10);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v12 = *(v11 + 48);
      *&__dst[v12] = *&__src[v12];
      v13 = *&__src[v12 + 8];
      *&__dst[v12 + 8] = v13;
      v14 = *(v11 + 64);
      *&__dst[v14] = *&__src[v14];
      v15 = *&__src[v14 + 8];
      *&__dst[v14 + 8] = v15;
      v13;
      v15;
      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 1:
      v6 = *__src;
      v7 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v7);
      *__dst = v6;
      __dst[8] = v7;
      *(__dst + 2) = *(__src + 2);
      v8 = *(__src + 3);
      *(__dst + 3) = v8;
      *(__dst + 4) = *(__src + 4);
      v9 = *(__src + 5);
      *(__dst + 5) = v9;
      v8;
      v9;
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *assignWithCopy for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLWordTagger.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v16 = *__src;
      *__dst = *__src;
      v16;
      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      return __dst;
    case 2:
      v10 = type metadata accessor for DataFrame(0);
      (*(*(v10 - 8) + 16))(__dst, __src, v10);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v12 = *(v11 + 48);
      *&__dst[v12] = *&__src[v12];
      v13 = *&__src[v12 + 8];
      *&__dst[v12 + 8] = v13;
      v14 = *(v11 + 64);
      *&__dst[v14] = *&__src[v14];
      v15 = *&__src[v14 + 8];
      *&__dst[v14 + 8] = v15;
      v13;
      v15;
      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 1:
      v6 = *__src;
      v7 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v7);
      *__dst = v6;
      __dst[8] = v7;
      *(__dst + 2) = *(__src + 2);
      v8 = *(__src + 3);
      *(__dst + 3) = v8;
      *(__dst + 4) = *(__src + 4);
      v9 = *(__src + 5);
      *(__dst + 5) = v9;
      v8;
      v9;
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t outlined destroy of MLWordTagger.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t type metadata accessor for MLWordTagger.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLWordTagger.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLWordTagger.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLWordTagger.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
  *&__dst[*(v5 + 48)] = *&__src[*(v5 + 48)];
  *&__dst[*(v5 + 64)] = *&__src[*(v5 + 64)];
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

char *assignWithTake for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLWordTagger.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
    *&__dst[*(v5 + 48)] = *&__src[*(v5 + 48)];
    *&__dst[*(v5 + 64)] = *&__src[*(v5 + 64)];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLWordTagger.ModelParameters.ValidationData(uint64_t a1)
{
  v6[0] = &unk_341550;
  v6[1] = &unk_341568;
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v5, *(result - 8) + 64, &unk_341580, &unk_341580);
    v6[2] = v5;
    v6[3] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 4, v6, v3, v4);
    return 0;
  }

  return result;
}

uint64_t MLWordTagger.ModelParameters.ValidationData.createValidationData(trainingData:tokenColumnName:labelColumnName:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  to_8._countAndFlagsBits = a4;
  v99 = a3;
  v109._object = v5;
  to = a2;
  v110._object = v6;
  v115 = v7;
  to_8._object = a5;
  v110._countAndFlagsBits = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v108 = *(v107 - 8);
  v8 = *(v108 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v102 = &v92;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v105 = &v92;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v103 = &v92;
  v15 = alloca(v8);
  v16 = alloca(v8);
  v106 = &v92;
  v17 = type metadata accessor for DataFrame(0);
  v111 = *(v17 - 8);
  v18 = *(v111 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v113 = &v92;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v114._object = &v92;
  _ = type metadata accessor for DataFrame.Slice(0);
  v23 = *(_ - 1);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v97 = &v92;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v98 = &v92;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v114._countAndFlagsBits = &v92;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v96 = &v92;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v109._countAndFlagsBits = &v92;
  v36 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(v115, &v92);
  switch(swift_getEnumCaseMultiPayload(&v92, v36))
  {
    case 0u:
      countAndFlagsBits = v109._countAndFlagsBits;
      DataFrame.randomSplit(strategy:)(v109._countAndFlagsBits, v114._countAndFlagsBits, &v92);
      v41 = v96;
      outlined init with copy of DataFrame.Slice?(countAndFlagsBits, v96);
      v42 = _;
      if (__swift_getEnumTagSinglePayload(v41, 1, _) == 1)
      {
        (*(v23 + 8))(v114._countAndFlagsBits, v42);
        outlined destroy of DataFrame.Slice?(v109._countAndFlagsBits);
        outlined destroy of DataFrame.Slice?(v41);
        goto LABEL_4;
      }

      v112 = v17;
      (*(v111 + 8))(v110._countAndFlagsBits, v17);
      (*(v23 + 32))(v98, v41, v42);
      v67 = v42;
      v115 = *(v23 + 16);
      v68 = v97;
      v115(v97, v114._countAndFlagsBits, v42);
      DataFrame.init(_:)(v68);
      v69 = v98;
      v115(v68, v98, v67);
      DataFrame.init(_:)(v68);
      v70 = *(v23 + 8);
      v70(v69, v67);
      v70(v114._countAndFlagsBits, v67);
      outlined destroy of DataFrame.Slice?(v109._countAndFlagsBits);
      object = v109._object;
      v44 = 0;
      v45 = v112;
      return __swift_storeEnumTagSinglePayload(object, v44, 1, v45);
    case 1u:
      v112 = v17;
      v50 = v93;
      v51 = v94;
      v115 = v95;
      v52 = v96;
      v53 = v97;
      LOBYTE(v93) = v93 & 1;
      v113 = v92;
      LODWORD(v114._countAndFlagsBits) = v50;
      outlined copy of Result<_DataTable, Error>(v92, v50);
      v54 = v114._object;
      DataFrame.init(_:)(&v92);
      v110._countAndFlagsBits = v51;
      v109._countAndFlagsBits = v52;
      v55 = v110._object;
      static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(v54, v51, v115, v52, v53);
      if (v55)
      {
        (*(v111 + 8))(v114._object, v112);
        outlined consume of Result<_DataTable, Error>(v113, v114._countAndFlagsBits);
        v53;
        v56 = v115;
        return v56;
      }

      _ = v53;
      static MLWordTagger.createTextColumn(_:name:context:)(v114._object, v110._countAndFlagsBits, v115, 0x6E656B6F54, 0xE500000000000000);
      v72 = _;
      static MLWordTagger.createTextColumn(_:name:context:)(v114._object, v109._countAndFlagsBits, _, 0x6C6562614CLL, 0xE500000000000000);
      DataFrame.init()();
      v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v110._object = 0;
      DataFrame.append<A>(column:)(v106, v75);
      DataFrame.append<A>(column:)(v103, v75);
      v76._countAndFlagsBits = v109._countAndFlagsBits;
      v76._object = v72;
      DataFrame.renameColumn(_:to:)(v76, to_8);
      v72;
      v76._countAndFlagsBits = v110._countAndFlagsBits;
      v77 = v115;
      v76._object = v115;
      v78._countAndFlagsBits = to;
      v78._object = v99;
      DataFrame.renameColumn(_:to:)(v76, v78);
      v77;
      outlined consume of Result<_DataTable, Error>(v113, v114._countAndFlagsBits);
      v79 = *(v108 + 8);
      v80 = v107;
      v79(v103, v107);
      v79(v106, v80);
      v81 = v112;
      (*(v111 + 8))(v114._object, v112);
      v82 = v109._object;
      v83 = v81;
      return __swift_storeEnumTagSinglePayload(v82, 0, 1, v83);
    case 2u:
      v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v58 = *(v57 + 48);
      v59 = *(&v92 + v58);
      v60 = *(&v92 + v58 + 8);
      v61 = *(v57 + 64);
      v114._countAndFlagsBits = *(&v92 + v61);
      v115 = *(&v92 + v61 + 8);
      v62 = v113;
      v63 = v60;
      (*(v111 + 32))(v113, &v92, v17);
      v110._countAndFlagsBits = v59;
      v64 = v59;
      v65 = v115;
      v114._object = v63;
      v66 = v110._object;
      static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(v62, v64, v63, v114._countAndFlagsBits, v115);
      if (v66)
      {
        (*(v111 + 8))(v113, v17);
        v114._object;
        v56 = v65;
        return v56;
      }

      else
      {
        v112 = v17;
        static MLWordTagger.createTextColumn(_:name:context:)(v113, v110._countAndFlagsBits, v114._object, 0x6E656B6F54, 0xE500000000000000);
        v73 = v114._countAndFlagsBits;
        v74 = v115;
        static MLWordTagger.createTextColumn(_:name:context:)(v113, v114._countAndFlagsBits, v115, 0x6C6562614CLL, 0xE500000000000000);
        v110._object = 0;
        v84 = v109._object;
        DataFrame.init()();
        v85 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        DataFrame.append<A>(column:)(v105, v85);
        DataFrame.append<A>(column:)(v102, v85);
        v86._countAndFlagsBits = v73;
        v86._object = v74;
        DataFrame.renameColumn(_:to:)(v86, to_8);
        v74;
        v86._countAndFlagsBits = v110._countAndFlagsBits;
        v87 = v114._object;
        v86._object = v114._object;
        v88._countAndFlagsBits = to;
        v88._object = v99;
        DataFrame.renameColumn(_:to:)(v86, v88);
        v87;
        v89 = *(v108 + 8);
        v90 = v107;
        v89(v102, v107);
        v89(v105, v90);
        v91 = v112;
        (*(v111 + 8))(v113, v112);
        v82 = v84;
        v83 = v91;
        return __swift_storeEnumTagSinglePayload(v82, 0, 1, v83);
      }

    case 3u:
      v46 = v17;
      v47 = v92;
      v48 = v109._object;
      v49 = v110._object;
      static MLWordTagger.generateTextDataFrame(_:tokenColumn:labelColumn:)(v92, to, v99, to_8._countAndFlagsBits, to_8._object);
      if (!v49)
      {
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
      }

      v56 = v47;
      return v56;
    case 4u:
LABEL_4:
      object = v109._object;
      v44 = 1;
      v45 = v17;
      return __swift_storeEnumTagSinglePayload(object, v44, 1, v45);
  }
}

uint64_t MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *(a1 + 8);
  if (v8 == -1)
  {
    a3;
    a5;
    *v6 = 0;
    *(v6 + 16) = 256;
    v14 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
    return swift_storeEnumTagMultiPayload(v6, v14, 0);
  }

  else
  {
    v17 = *a1;
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = v8 & 1;
    outlined copy of Result<_DataTable, Error>(*a1, v10);
    v12 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v17, v11);
    if (v12)
    {
      *v6 = v9;
      *(v6 + 8) = v11;
      *(v6 + 16) = a2;
      *(v6 + 24) = a3;
      *(v6 + 32) = a4;
      *(v6 + 40) = a5;
      v13 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
      v16 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v9, v10);
      a3;
      a5;
      v13 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
      v16 = 4;
    }

    return swift_storeEnumTagMultiPayload(v6, v13, v16);
  }
}

uint64_t MLWordTagger.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v33 = &v30;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v34 = &v30;
  v10 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(v2, &v30);
  result = swift_getEnumCaseMultiPayload(&v30, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      v15 = v30;
      v16 = v31;
      v17 = v35;
      v33;
      result = v17;
      *v3 = v15;
      *(v3 + 8) = v16;
      break;
    case 2:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      *(&v30 + *(v24 + 48) + 8);
      *(&v30 + *(v24 + 64) + 8);
      v25 = v34;
      v26 = v32;
      (*(v32 + 32))(v34, &v30, v4);
      v27 = v33;
      *a1.i64 = (*(v26 + 16))(v33, v25, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v27, 0, a1);
      (*(v26 + 8))(v34, v4);
      goto LABEL_8;
    case 3:
      v28 = v30;
      static MLWordTagger.generateTextTable(_:tokenColumn:labelColumn:)(v30, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
      v28;
LABEL_8:
      result = v35;
      v29 = v36;
      *v3 = v35;
      *(v3 + 8) = v29;
      break;
    case 4:
      v18 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v20 = empty;
      v21 = type metadata accessor for CMLTable();
      v22 = swift_allocObject(v21, 24, 7);
      *(v22 + 16) = v20;
      v23 = type metadata accessor for _DataTable();
      swift_allocObject(v23, 40, 7);
      result = _DataTable.init(impl:)(v22);
      *v18 = result;
      *(v18 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLWordTagger.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of DataFrame.Slice?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t specialized BidirectionalCollection.last.getter()
{
  v0 = 0;
  v1 = type metadata accessor for TensorShape(0);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
  if ((dispatch thunk of Collection.isEmpty.getter(v1, v2) & 1) == 0)
  {
    dispatch thunk of Collection.endIndex.getter(v1, v2);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    dispatch thunk of BidirectionalCollection.index(before:)(v8, v1, v3);
    v4 = dispatch thunk of Collection.subscript.read(v8, v7, v1, v2);
    v0 = *v5;
    v4(v8, 0);
  }

  return v0;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = type metadata accessor for MLCheckpoint(0);
    outlined init with copy of MLActivityClassifier.Model(((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + a1 + *(*(v4 - 8) + 72) * (v3 - 1), v2, type metadata accessor for MLCheckpoint);
    return __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  }

  else
  {
    v6 = type metadata accessor for MLCheckpoint(0);
    return __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  }
}

{
  return specialized BidirectionalCollection.last.getter(a1, &type metadata accessor for NeuralNetwork.Layer);
}

{
  return specialized BidirectionalCollection.last.getter(a1, &type metadata accessor for Model);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = String.index(before:)((v2 << 16) + 4 * ((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) + 7, a1, a2);
  return String.subscript.getter(v3, a1, a2);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2(0);
    (*(*(v5 - 8) + 16))(v3, ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a1 + *(*(v5 - 8) + 72) * (v4 - 1), v5);
    return __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  }

  else
  {
    v7 = a2(0);
    return __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  }
}

uint64_t specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  if (v1 == *(*v0 + 16))
  {
    goto LABEL_5;
  }

  if (v1 >= *(*v0 + 16))
  {
    BUG();
  }

  v2 = *(*v0 + 8 * v1 + 32);
  *(v0 + 8) = v1 + 1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 == *(v3 + 16))
  {
LABEL_5:
    *(v0 + 32) = 1;
    return 0;
  }

  if (v4 >= *(v3 + 16))
  {
    BUG();
  }

  v6 = *(v3 + 8 * v4 + 32);
  *(v0 + 24) = v4 + 1;
  v2;
  v6;
  return v2;
}

{
  v2 = v0;
  v3 = type metadata accessor for Tensor(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  if (*(v1 + 32) == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
    return __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  }

  v10 = *v1;
  v11 = v1[1];
  if (v11 != *(*v1 + 16))
  {
    if (v11 >= *(*v1 + 16))
    {
      BUG();
    }

    v23 = v2;
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = *(v4 + 16);
    v24 = *(v4 + 72);
    v14 = v11 * v24;
    v1[1] = v11 + 1;
    v22 = v13;
    v13(&v22, v12 + v10 + v14, v3);
    v15 = v1[2];
    v16 = v1[3];
    if (v16 != *(v15 + 16))
    {
      if (v16 >= *(v15 + 16))
      {
        BUG();
      }

      v20 = v12 + v15 + v16 * v24;
      v1[3] = v16 + 1;
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
      v21 = v23 + *(v24 + 48);
      (*(v4 + 32))(v23, &v22, v3);
      v22(v21, v20, v3);
      v17 = v23;
      v18 = 0;
      v19 = v24;
      return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
    }

    (*(v4 + 8))(&v22, v3);
    v2 = v23;
  }

  *(v1 + 32) = 1;
  v17 = v2;
  v18 = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
}

uint64_t MLActivityClassifier.evaluation(on:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), void *a3, void *a4, void (*a5)(unint64_t *, uint64_t), void *a6, __m128 a7, double a8)
{
  v262 = a4;
  v261 = a3;
  v254 = v8;
  v256 = a2;
  v257 = v9;
  v259 = a6;
  v236 = a5;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v219 = v199;
  v211 = type metadata accessor for TensorShape(0);
  v231 = *(v211 - 8);
  v13 = *(v231 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v212 = v199;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v213 = v199;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v209 = v199;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor)?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v210 = v199;
  v203 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v23 = *(*(v203 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v204 = v199;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v205 = v199;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v206 = v199;
  v252 = type metadata accessor for Tensor(0);
  v253 = *(v252 - 8);
  v31 = v253[8];
  v32 = alloca(v31);
  v33 = alloca(v31);
  v214 = v199;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v230 = v199;
  v36 = alloca(v31);
  v37 = alloca(v31);
  v239 = v199;
  v38 = alloca(v31);
  v39 = alloca(v31);
  v238 = v199;
  v40 = alloca(v31);
  v41 = alloca(v31);
  v229 = v199;
  v42 = alloca(v31);
  v43 = alloca(v31);
  v249 = v199;
  v44 = alloca(v31);
  v45 = alloca(v31);
  v207 = v199;
  v46 = alloca(v31);
  v47 = alloca(v31);
  v248 = v199;
  v48 = alloca(v31);
  v49 = alloca(v31);
  v243 = v199;
  v228 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v50 = *(*(v228 - 8) + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  v200 = v199;
  v53 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v201 = v199;
  v208 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v56 = *(*(v208 - 8) + 64);
  v57 = alloca(v56);
  v58 = alloca(v56);
  v226 = v199;
  v260 = type metadata accessor for WeightedDataSample(0);
  v59 = *(*(v260 - 8) + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v227 = v199;
  v62 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v63 = alloca(v62);
  v64 = alloca(v62);
  v202 = v199;
  v242 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v65 = *(*(v242 - 8) + 64);
  v66 = alloca(v65);
  v67 = alloca(v65);
  v240 = v199;
  v217 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v218 = *(v217 - 8);
  v68 = *(v218 + 64);
  v69 = alloca(v68);
  v70 = alloca(v68);
  v215 = v199;
  v244 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v71 = *(v244 - 8);
  v72 = *(v71 + 64);
  v73 = alloca(v72);
  v74 = alloca(v72);
  v216 = v199;
  v75 = alloca(v72);
  v76 = alloca(v72);
  v245 = v199;
  v77 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v78 = alloca(v77);
  v79 = alloca(v77);
  v241 = v199;
  v80 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.DataBatcher?) - 8) + 64);
  v81 = alloca(v80);
  v82 = alloca(v80);
  v250 = v199;
  v83 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v84 = *(*(v83 - 8) + 64);
  v85 = alloca(v84);
  v86 = alloca(v84);
  v87 = *(*(type metadata accessor for MLActivityClassifier.Configuration(0) - 8) + 64);
  v88 = alloca(v87);
  v89 = alloca(v87);
  v255 = v199;
  v237 = type metadata accessor for MLActivityClassifier.Model(0);
  v90 = *(*(v237 - 8) + 64);
  v91 = alloca(v90);
  v92 = alloca(v90);
  v93 = *(a1 + 8);
  v233 = *a1;
  v234 = v93;
  validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(&v233, v256, v261, v262, v236, v259, a7);
  v262 = v83;
  v246 = v199;
  v247 = v71;
  v94 = v221;
  LODWORD(v83) = v222;
  outlined init with copy of MLActivityClassifier.Model(v257, v199, type metadata accessor for MLActivityClassifier.Model);
  v95 = v255;
  outlined init with copy of MLActivityClassifier.Model(&v199[*(v237 + 64)], v255, type metadata accessor for MLActivityClassifier.Configuration);
  v221 = v94;
  LOBYTE(v222) = v83 & 1;
  v251 = v94;
  v258 = v83;
  outlined copy of Result<_DataTable, Error>(v94, v83);
  v96 = v241;
  DataFrame.init(_:)(&v221);
  v256 = v95[8];
  v257 = v199;
  v97 = v95[9];
  v259 = v95[6];
  v98 = v95[7];
  v261 = v95[4];
  v99 = v95[5];
  v97;
  v98;
  v99;
  MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v96, v256, v97, v259, v98, v99, *a7.i64, v261, 0, 1);
  v100 = v250;
  __swift_storeEnumTagSinglePayload(v250, 0, 1, v262);
  outlined init with take of MLClassifierMetrics(v100, v246, type metadata accessor for MLActivityClassifier.DataBatcher);
  v101 = *&v257[*(v237 + 60)];
  v102 = v255;
  v103 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v255, v101, *a7.i64, a8);
  v220 = 0;
  v232 = v101;
  v233 = v103;
  v107 = v102;
  v261 = *(v102 + 24);
  LOBYTE(v100) = v103;
  v262 = v103;
  v108 = type metadata accessor for ShuffleSampler(0);
  v109 = *(v102 + 8);
  LODWORD(v107) = *(v107 + 16);
  v100;
  v110 = ShuffleSampler.__allocating_init(seed:)(v109, v107);
  v224 = v108;
  v225 = &protocol witness table for ShuffleSampler;
  v221 = v110;
  v111 = v215;
  (*(v218 + 104))(v215, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v217);
  v259 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
  v112 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
  v113 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v114 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v115 = v216;
  Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v233, v261, &v221, 0, v111, 0, 0, v259, v260, v112, v113, v114);
  v262;
  v116 = v244;
  (*(v247 + 32))(v245, v115, v244);
  v117 = v240;
  Dataset.makeIterator()(v116);
  v118 = *(v242 + 44);
  v241 = *(v117 + v118);
  v242 = *(v117 + v118 + 8);
  v250 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
  v262 = _swiftEmptyArrayStorage;
  v261 = _swiftEmptyArrayStorage;
  while (1)
  {
    v119 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
    dispatch thunk of IteratorProtocol.next()(v119, v250);
    v120 = v221;
    v121 = v200;
    v122 = v201;
    v123 = v202;
    if (v221)
    {
      v233 = v221;
      v241(&v233);
      v120;
      v124 = v123;
      v125 = 0;
    }

    else
    {
      v124 = v202;
      v125 = 1;
    }

    __swift_storeEnumTagSinglePayload(v124, v125, 1, v260);
    v126 = v228;
    if (__swift_getEnumTagSinglePayload(v123, 1, v260) == 1)
    {
      break;
    }

    v127 = v123;
    v128 = v227;
    outlined init with take of MLClassifierMetrics(v127, v227, type metadata accessor for WeightedDataSample);
    v129 = type metadata accessor for LSTM.State(0);
    __swift_storeEnumTagSinglePayload(v122, 1, 1, v129);
    v130 = v121 + *(v126 + 48);
    outlined init with take of LSTM.State?(v122, v121);
    v256 = v253[2];
    v256(v130, v128, v252);
    v131 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v132 = v226;
    Layer.callAsFunction(_:)(v121, v237, v131);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v121, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
    v133 = v132 + *(v208 + 48);
    v134 = v204;
    outlined init with copy of (label: Tensor, weight: Tensor?)(v128 + *(v260 + 20), v204);
    v135 = v134 + *(v203 + 48);
    v136 = v207;
    v137 = v252;
    v259 = v253[4];
    (v259)(v207, v134, v252);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v135, &demangling cache variable for type metadata for Tensor?);
    v138 = v205;
    __swift_storeEnumTagSinglePayload(v205, 1, 1, v137);
    v139 = v206;
    v140 = v133;
    v141 = v243;
    static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v243, v248, v206, v140, v136, v138);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v138, &demangling cache variable for type metadata for Tensor?);
    v236 = v253[1];
    v236(v136, v137);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, &demangling cache variable for type metadata for Tensor?);
    v256(v249, v141, v137);
    if (!swift_isUniquelyReferenced_nonNull_native(v262))
    {
      v262 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v262[2] + 1, 1, v262);
    }

    v142 = v229;
    v143 = v262[2];
    v144 = v253;
    if (v262[3] >> 1 <= v143)
    {
      v262 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v262[3] >= 2uLL, v143 + 1, 1, v262);
    }

    v145 = v262;
    v262[2] = v143 + 1;
    v146 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v147 = v144[9];
    v148 = v145 + v147 * v143 + v146;
    v149 = v252;
    (v259)(v148, v249, v252);
    v256(v142, v248, v149);
    if (!swift_isUniquelyReferenced_nonNull_native(v261))
    {
      v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v261[2] + 1, 1, v261);
    }

    v150 = v261[2];
    if (v261[3] >> 1 <= v150)
    {
      v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v261[3] >= 2uLL, v150 + 1, 1, v261);
    }

    v151 = v261;
    v261[2] = v150 + 1;
    v152 = v151 + v146 + v147 * v150;
    v153 = v252;
    (v259)(v152, v142, v252);
    v154 = v236;
    v236(v248, v153);
    v154(v243, v153);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v226, &demangling cache variable for type metadata for (LSTM.State, Tensor));
    outlined destroy of MLActivityClassifier.ModelParameters(v227, type metadata accessor for WeightedDataSample);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v240, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v155 = *(v232 + 2);
  v156 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  swift_allocObject(v156, *(v156 + 48), *(v156 + 52));
  v157 = v220;
  v158 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v155);
  if (v157)
  {
    v157;
    v262;
    v261;
    v159 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v160 = swift_allocError(&type metadata for MLCreateError, v159, 0, 0);
    v161._countAndFlagsBits = 0xD000000000000010;
    v161._object = "om the given data table." + 0x8000000000000000;
    static MLCreateError.metricNotFound(metric:)(v161);
LABEL_24:
    outlined consume of Result<_DataTable, Error>(v251, v258);
    (*(v247 + 8))(v245, v244);
    outlined destroy of MLActivityClassifier.ModelParameters(v246, type metadata accessor for MLActivityClassifier.DataBatcher);
    outlined destroy of MLActivityClassifier.ModelParameters(v255, type metadata accessor for MLActivityClassifier.Configuration);
    v104 = v254;
    *v254 = v160;
    v105 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v104, v105, 2);
    return outlined destroy of MLActivityClassifier.ModelParameters(v257, type metadata accessor for MLActivityClassifier.Model);
  }

  v243 = 0;
  v249 = v158;
  v221 = v262;
  v222 = 0;
  v162 = v261;
  v223 = v261;
  v224 = 0;
  LOBYTE(v225) = 0;
  v262;
  v162;
  while (1)
  {
    v163 = v210;
    specialized Zip2Sequence.Iterator.next()();
    v164 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v163, 1, v164);
    v166 = v209;
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v167 = v163 + *(v164 + 48);
    v168 = v253[4];
    v169 = v163;
    v170 = v252;
    v168(v238, v169, v252);
    v168(v239, v167, v170);
    v248 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v171 = swift_allocObject(v248, 48, 7);
    v171[2] = 2;
    v171[3] = 4;
    v171[4] = -1;
    Tensor.shape.getter();
    v172 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v173 = v211;
    v260 = v172;
    if (dispatch thunk of Collection.isEmpty.getter(v211, v172))
    {
      (*(v231 + 8))(v166, v173);
      BUG();
    }

    v174 = v260;
    dispatch thunk of Collection.endIndex.getter(v173, v260);
    v256 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    dispatch thunk of BidirectionalCollection.index(before:)(&v233, v173, v256);
    v175 = dispatch thunk of Collection.subscript.read(&v233, v235, v173, v174);
    v177 = *v176;
    v175(&v233, 0);
    v178 = *(v231 + 8);
    v179 = v178(v166, v173);
    v171[5] = v177;
    v180 = v213;
    TensorShape.init(_:)(v171, v179);
    Tensor.reshaped(to:)(v180);
    v259 = v178;
    v178(v180, v173);
    v181 = swift_allocObject(v248, 48, 7);
    v181[2] = 2;
    v181[3] = 4;
    v181[4] = -1;
    v182 = v212;
    Tensor.shape.getter();
    if (dispatch thunk of Collection.isEmpty.getter(v173, v260))
    {
      (v259)(v182, v173);
      BUG();
    }

    dispatch thunk of Collection.endIndex.getter(v173, v260);
    dispatch thunk of BidirectionalCollection.index(before:)(&v233, v173, v256);
    v183 = dispatch thunk of Collection.subscript.read(&v233, v235, v173, v260);
    v260 = *v184;
    v183(&v233, 0);
    v185 = v182;
    v186 = v259;
    *a7.i64 = (v259)(v185, v173);
    v181[5] = v260;
    TensorShape.init(_:)(v181, *a7.i64);
    v187 = v214;
    Tensor.reshaped(to:)(v180);
    v186(v180, v173);
    v188 = v230;
    _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v230, v187);
    v189 = v253[1];
    v190 = v187;
    v191 = v252;
    v189(v190, v252);
    v189(v188, v191);
    v189(v239, v191);
    v189(v238, v191);
  }

  v221;
  v192 = v223;
  v262;
  v261;
  v192;
  v193 = v219;
  v194 = v243;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(*a7.i64, a8, v249, v232, 0);
  if (v194)
  {
    v194;
    v195 = type metadata accessor for MLClassifierMetrics(0);
    __swift_storeEnumTagSinglePayload(v193, 1, 1, v195);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193, &demangling cache variable for type metadata for MLClassifierMetrics?);
    v196 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v160 = swift_allocError(&type metadata for MLCreateError, v196, 0, 0);
    v197._countAndFlagsBits = 0xD000000000000012;
    v197._object = "confusion matrix" + 0x8000000000000000;
    static MLCreateError.metricNotFound(metric:)(v197);

    goto LABEL_24;
  }

  outlined consume of Result<_DataTable, Error>(v251, v258);

  v198 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v193, 0, 1, v198);
  (*(v247 + 8))(v245, v244);
  outlined destroy of MLActivityClassifier.ModelParameters(v246, type metadata accessor for MLActivityClassifier.DataBatcher);
  outlined destroy of MLActivityClassifier.ModelParameters(v255, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(v257, type metadata accessor for MLActivityClassifier.Model);
  return outlined init with take of MLClassifierMetrics(v193, v254, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLActivityClassifier.evaluation(on:featureColumns:labelColumn:recordingFileColumn:)(__m128 a1, double a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v21 = v8;
  v11 = a7;
  v23 = a5;
  MLActivityClassifier.DataSource.labeledSensorData(featureColumns:labelColumn:recordingFileColumn:)(a4, a5, a6, a7, a8, a1);
  v18 = v19;
  v22 = v20;
  v12 = v23;
  if (!a6)
  {
    v12 = 0x6C6562616CLL;
  }

  v13 = 0xE500000000000000;
  if (a6)
  {
    v13 = a6;
  }

  v23 = v13;
  if (!a8)
  {
    v11 = 0x6E6964726F636572;
  }

  v14 = 0xED0000656C694667;
  if (a8)
  {
    v14 = a8;
  }

  a6;
  a8;
  v15 = v11;
  v16 = v23;
  MLActivityClassifier.evaluation(on:featureColumns:labelColumn:recordingFileColumn:)(&v19, a4, v12, v23, v15, v14, a1, a2);
  v14;
  v16;
  return outlined consume of Result<_DataTable, Error>(v18, v22);
}

uint64_t specialized Sequence<>.makeDataset(configuration:)(uint64_t a1, uint64_t a2)
{
  v16[2] = v2;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v20 = *(v19 - 8);
  v3 = *(v20 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v18 = v15;
  v16[0] = a2;
  v17 = *(a1 + 24);
  v6 = type metadata accessor for ShuffleSampler(0);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  a2;
  v9 = ShuffleSampler.__allocating_init(seed:)(v7, v8);
  v15[3] = v6;
  v15[4] = &protocol witness table for ShuffleSampler;
  v15[0] = v9;
  v10 = v18;
  (*(v20 + 104))(v18, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v19);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
  v20 = type metadata accessor for WeightedDataSample(0);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  return Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(v16, v17, v15, 0, v10, 0, 0, v19, v20, v11, v12, v13);
}

uint64_t outlined init with copy of (label: Tensor, weight: Tensor?)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of MLActivityClassifier.Model(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.DataSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v6 = *a2;
    *v3 = *a2;
    v3 = (v6 + ((v4 + 16) & ~v4));
    v6;
  }

  else
  {
    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  return v3;
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 16))(a1, a2, v2);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 24))(a1, a2, v2);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 32))(a1, a2, v2);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 40))(a1, a2, v2);
  return a1;
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLFewShotSoundClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLFewShotSoundClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLFewShotSoundClassifier.DataSource);
  }

  return result;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8);
    swift_initEnumMetadataSingleCase(a1, 256, v3 + 64);
    *(*(a1 - 8) + 84) = *(v3 + 84);
    return 0;
  }

  return result;
}

char *MLFewShotSoundClassifier.DataSource.extractFeatures(with:)(void *a1)
{
  v29 = v1;
  v24 = v2;
  v23 = a1;
  v25 = type metadata accessor for UTType(0);
  v26 = *(v25 - 8);
  v3 = *(v26 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for URL(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v22;
  v11 = *(*(type metadata accessor for MLFewShotSoundClassifier.DataSource(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLFewShotSoundClassifier.DataSource(v24, &v22);
  v28 = v6;
  v14 = v6;
  v15 = v27;
  (*(v27 + 32))(&v22, &v22, v14);
  static UTType.audio.getter();
  v16 = v29;
  v17 = static _FileUtilities.readableFiles(at:type:)(&v22, &v22);
  if (v16)
  {
    (*(v26 + 8))(&v22, v25);
    (*(v15 + 8))(&v22, v28);
  }

  else
  {
    v29 = &v22;
    v19 = v17;
    (*(v26 + 8))(&v22, v25);
    if (v19[2])
    {
      v10 = MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:)(v23, v19);
      (*(v27 + 8))(v29, v28);
      v19;
    }

    else
    {
      v19;
      v10 = "om the given data source." + 0x8000000000000000;
      v20 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v20, 0, 0);
      *v21 = 0xD00000000000002ELL;
      *(v21 + 8) = "om the given data source." + 0x8000000000000000;
      *(v21 + 16) = 0;
      *(v21 + 32) = 0;
      *(v21 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v20);
      (*(v27 + 8))(v29, v28);
    }
  }

  return v10;
}

uint64_t outlined init with copy of MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

unint64_t MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:)(void *a1, id *a2)
{
  v81 = v2;
  v91 = a2;
  v90 = a1;
  v88 = type metadata accessor for DispatchTimeInterval(0);
  v77 = *(v88 - 8);
  v3 = *(v77 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v82 = v74;
  v76 = type metadata accessor for DispatchTime(0);
  v78 = *(v76 - 8);
  v6 = *(v78 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v83 = v74;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v79 = v74;
  v89 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency(0);
  v92 = *(v89 - 1);
  v11 = *(v92 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v84 = v74;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = *(*(type metadata accessor for DispatchQoS(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v86 = v74;
  v80 = dispatch_semaphore_create(0);
  isa = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v87 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [OS_dispatch_queue.Attributes]);
  v22 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)(aBlock, v21, v22, v14, v87);
  v23 = v84;
  (*(v92 + 104))(v84, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v89);
  v89 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(0xD00000000000003DLL, "o files provided for training." + 0x8000000000000000, v86, v74, v23, 0);
  v24 = swift_allocObject(&unk_391040, 24, 7);
  *(v24 + 16) = 0;
  v25 = swift_allocObject(&unk_391068, 24, 7);
  *(v25 + 16) = 0;
  v84 = objc_opt_self(SNKShotFeaturizer);
  type metadata accessor for URL(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(isa);
  v86 = v26;
  v27 = swift_allocObject(&unk_391090, 40, 7);
  v27[2] = v24;
  v27[3] = v25;
  v28 = v80;
  v27[4] = v80;
  aBlock[4] = partial apply for closure #1 in MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:);
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SNKShotFeaturizationResult?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_4;
  v87 = _Block_copy(aBlock);
  v91 = v24;

  v92 = v25;

  v90 = v28;

  v29 = isa;
  v30 = v86;
  v31 = v87;
  v32 = [v84 featurizeFiles:isa hallucinatorModelURL:v86 queue:v89 completionHandler:v87];
  v33 = v32;
  _Block_release(v31);
  swift_unknownObjectRelease(v33);

  static DispatchTime.now()();
  v34 = v82;
  *v82 = 600;
  v35 = v77;
  (*(v77 + 104))(v34, enum case for DispatchTimeInterval.seconds(_:), v88);
  v36 = v79;
  DispatchTime.advanced(by:)(v34);
  (*(v35 + 8))(v82, v88);
  v37 = *(v78 + 8);
  v38 = v76;
  v37(v83, v76);
  v39 = OS_dispatch_semaphore.wait(timeout:)(v36);
  v37(v36, v38);
  if (v39)
  {
    v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
    *v41 = 0xD00000000000001ELL;
    *(v41 + 8) = "lt8@NSError16" + 0x8000000000000000;
    *(v41 + 16) = 0;
    *(v41 + 32) = 0;
    *(v41 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v40);

LABEL_16:

LABEL_21:

    return v39;
  }

  v39 = v91;
  v42 = v91 + 2;
  swift_beginAccess(v91 + 2, aBlock, 0, 0);
  if (!*v42)
  {
    v60 = (v92 + 16);
    v61 = v92 + 16;
    swift_beginAccess(v92 + 16, v74, 0, 0);
    v62 = *v60;
    if (*v60)
    {
      v63 = *v60;
      swift_willThrow(v61, v74);
      swift_errorRetain(v62);
    }

    else
    {
      v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
      *v69 = 0xD000000000000029;
      *(v69 + 8) = "timed out retrieving features." + 0x8000000000000000;
      *(v69 + 16) = 0;
      *(v69 + 32) = 0;
      *(v69 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v68);
    }

    goto LABEL_16;
  }

  v39 = *v42;
  v43 = [v39 trainingDataEmbeddings];
  v44 = v43;
  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v44, v45);

  v47 = specialized Array._getCount()(v46);
  v46;
  if (!v47)
  {
    v64 = "trieved features." + 0x8000000000000000;
    v65 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v65, 0, 0);
    v67 = 0xD000000000000036;
LABEL_13:
    *v66 = v67;
    *(v66 + 8) = v64;
    *(v66 + 16) = 0;
    *(v66 + 32) = 0;
    *(v66 + 48) = 2;
LABEL_20:
    swift_willThrow(&type metadata for MLCreateError, v65);

    goto LABEL_21;
  }

  v48 = [v39 trainingDataLabels];
  v49 = v48;
  v88 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v49, v88);

  v51 = specialized Array._getCount()(v50);
  v50;
  if (!v51)
  {
    v64 = "s in retrieved features." + 0x8000000000000000;
    v65 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v65, 0, 0);
    v67 = 0xD000000000000031;
    goto LABEL_13;
  }

  v52 = [v39 validationDataEmbeddings];
  v53 = v52;
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v53, v45);

  v55 = specialized Array._getCount()(v54);
  v54;
  if (!v55)
  {
    v70 = "retrieved features." + 0x8000000000000000;
    v65 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v65, 0, 0);
    v72 = 0xD000000000000038;
LABEL_19:
    *v71 = v72;
    *(v71 + 8) = v70;
    *(v71 + 16) = 0;
    *(v71 + 32) = 0;
    *(v71 + 48) = 2;
    goto LABEL_20;
  }

  v56 = [v39 validationDataLabels];
  v57 = v56;
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v57, v88);

  v59 = specialized Array._getCount()(v58);
  v58;
  if (!v59)
  {
    v70 = "rown from Sound Analysis." + 0x8000000000000000;
    v65 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v65, 0, 0);
    v72 = 0xD000000000000033;
    goto LABEL_19;
  }

  return v39;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    v1 = type metadata accessor for OS_dispatch_queue.Attributes(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for OS_dispatch_queue.Attributes, v1);
    lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [OS_dispatch_queue.Attributes]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A] = result;
  }

  return result;
}

Swift::Int closure #1 in MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  v13 = a4 + 16;
  swift_beginAccess(a3 + 16, v10, 1, 0);
  v7 = *(a3 + 16);
  *(a3 + 16) = a1;
  a1;

  swift_beginAccess(v13, v11, 1, 0);
  v8 = *(a4 + 16);
  *(a4 + 16) = a2;
  swift_errorRetain(a2);
  v8;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10B8D3()
{
  *(v0 + 16);
  *(v0 + 24);

  return swift_deallocObject(v0, 40, 7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed SNKShotFeaturizationResult?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v4;
  v5 = a2;
  v6 = a3;
  v7(a2, a3);
  v4;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.Model(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4 = *(*(v3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v2 = *a2;
    v2 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(a2, v3) == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = 1;
      v7 = v3;
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v7 = v3;
      v6 = 0;
    }

    swift_storeEnumTagMultiPayload(a1, v7, v6);
  }

  return v2;
}

uint64_t destroy for MLImageClassifier.Model(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v2);
  v4 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v4 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t initializeWithCopy for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithCopy for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t initializeWithTake for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 32))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithTake for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t type metadata accessor for MLImageClassifier.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.Model;
  if (!type metadata singleton initialization cache for MLImageClassifier.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLImageClassifier.Model(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 1, &v4, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>;
  if (!lazy cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>> = result;
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(type metadata accessor for Model(0) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v9 = *(v2 + 72);
    do
    {
      v8 = v1;
      v4 = Model.specificationVersion.getter();
      v5 = _swiftEmptyArrayStorage[2];
      v6 = v5 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v5)
      {
        v10 = v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6, 1);
        v4 = v10;
      }

      _swiftEmptyArrayStorage[2] = v6;
      _swiftEmptyArrayStorage[v5 + 4] = v4;
      v3 += v9;
      v1 = v8 - 1;
    }

    while (v8 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void MLImageClassifier.Model.export(metadata:featureExtractorType:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v23 = *a1;
  v24 = a1[1];
  v26 = a1[2];
  v5 = a1[3];
  v30 = *(a1 + 2);
  v25 = a1[6];
  v6 = a1[7];
  v29 = a1[8];
  MLImageClassifier.Model.createPipelineModel(featureExtractorType:)(a2);
  if (!v3)
  {
    v28 = 0;
    v5;
    Model.modelDescription.setter(v26, v5);
    v6;
    Model.versionString.setter(v25, v6);
    v24;
    Model.author.setter(v23, v24);
    countAndFlagsBits = v30._countAndFlagsBits;
    if (!v30._object)
    {
      countAndFlagsBits = 0;
    }

    object = 0xE000000000000000;
    if (v30._object)
    {
      object = v30._object;
    }

    v30._object;
    Model.license.setter(countAndFlagsBits, object);
    v9 = v29;
    if (v29)
    {
      v10 = v29;
    }

    else
    {
      v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
      v9 = 0;
    }

    v9;
    Model.metadata.setter(v10);
    v30 = getOSVersion()();
    v29 = Model.metadata.modify(v21);
    v27 = v4;
    v12 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v11);
    v22 = *v12;
    *v12 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30._countAndFlagsBits, v30._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    *v12 = v22;
    v29(v21, 0);
    v14 = Model.nestedModels.getter();
    v15 = v28;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v14);
    v28 = v15;
    v14;
    v17 = specialized Sequence<>.max()(ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n);
    v19 = v18;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n;
    v20 = 1;
    if ((v19 & 1) == 0)
    {
      v20 = v17;
    }

    Model.specificationVersion.setter(v20);
  }
}

uint64_t MLImageClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a2;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v5[13] = v10;
  v5[14] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.Model.applied(to:eventHandler:), 0, 0);
}

uint64_t MLImageClassifier.Model.applied(to:eventHandler:)()
{
  v1 = v0[14];
  v2 = v0[13];
  outlined init with copy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v0[6], v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v2);
  v4 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[8] + 32))(v0[9], v4, v0[7]);
    v5 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    v0[17] = v5;
    *v5 = v0;
    v5[1] = MLImageClassifier.Model.applied(to:eventHandler:);
    v6 = v0[9];
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(v0[2], v0[3], v0[4], v0[5], v0[7]);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v4, v0[10]);
    v8 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    v0[15] = v8;
    *v8 = v0;
    v8[1] = MLImageClassifier.Model.applied(to:eventHandler:);
    v9 = v0[12];
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(v0[2], v0[3], v0[4], v0[5], v0[10]);
  }
}

{
  v2 = *(*v1 + 120);
  *(*v1 + 128) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  (*(*(v0 + 88) + 8))(v1, *(v0 + 80));
  v3;
  v1;
  v2;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 136);
  *(*v1 + 144) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(*(v0 + 64) + 8))(v1, *(v0 + 56));
  v2;
  v3;
  v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 112);
  (*(*(v0 + 88) + 8))(v2, *(v0 + 80));
  v4;
  v2;
  v3;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  (*(*(v0 + 64) + 8))(v2, *(v0 + 56));
  v3;
  v4;
  v2;
  return (*(v0 + 8))();
}

uint64_t protocol witness for Transformer.applied(to:eventHandler:) in conformance MLImageClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc(160);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return MLImageClassifier.Model.applied(to:eventHandler:)(a1, a2, a3, a4);
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.Model and conformance MLImageClassifier.Model()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.Model and conformance MLImageClassifier.Model;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.Model and conformance MLImageClassifier.Model)
  {
    v1 = type metadata accessor for MLImageClassifier.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.Model, v1);
    lazy protocol witness table cache variable for type MLImageClassifier.Model and conformance MLImageClassifier.Model = result;
  }

  return result;
}

uint64_t outlined init with copy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(uint64_t a1)
{
  v2[48] = v1;
  v2[47] = a1;
  v3 = type metadata accessor for Model(0);
  v2[49] = v3;
  v4 = *(v3 - 8);
  v2[50] = v4;
  v2[51] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:), 0, 0);
}

{
  v5 = *(*v2 + 416);
  v4 = *v2;
  *(*v2 + 424) = v1;
  v5;
  if (v1)
  {
    v6 = MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:);
  }

  else
  {
    *(v4 + 432) = a1;
    v6 = MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)()
{
  v10 = *(v0 + 408);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16), 0xE100000000000000);
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  MLImageClassifier.Model.export(metadata:featureExtractorType:)((v0 + 160), v8);
  qmemcpy((v0 + 304), (v0 + 160), 0x48uLL);
  outlined release of MLModelMetadata((v0 + 304), v0 + 232);
  type metadata accessor for MLModel();
  v6 = swift_task_alloc(208);
  *(v0 + 416) = v6;
  *v6 = v0;
  v6[1] = MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:);
  return static MLModel.compile(_:)(*(v0 + 408));
}

{
  v1 = *(v0 + 408);
  (*(*(v0 + 400) + 8))(v1, *(v0 + 392));
  v1;
  return (*(v0 + 8))(*(v0 + 432));
}

{
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  v1 = *(v0 + 424);
  *(v0 + 408);
  return (*(v0 + 8))();
}

void MLImageClassifier.Model.createPipelineModel(featureExtractorType:)(uint64_t a1)
{
  v72 = a1;
  v64 = v1;
  v59 = type metadata accessor for ModelKind(0);
  v58 = *(v59 - 8);
  v3 = *(v58 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v60 = &v57;
  v69 = type metadata accessor for FeatureDescription(0);
  v74 = *(v69 - 8);
  v6 = *(v74 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v57;
  v67 = type metadata accessor for FeatureType(0);
  v65 = *(v67 - 8);
  v9 = *(v65 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v61 = &v57;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v68 = &v57;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v57 = &v57;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v75 = &v57;
  v19 = type metadata accessor for Model(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v73 = &v57;
  v24 = alloca(v21);
  v25 = alloca(v21);
  MLImageClassifier.Model.createFeatureExtractorModel(_:)(v72);
  if (!v2)
  {
    v76 = &v57;
    v70 = v20;
    v71 = v19;
    MLImageClassifier.Model.createClassifierModel()();
    v72 = 0;
    v26 = Model.outputs.getter();
    v27 = v75;
    specialized Collection.first.getter(v26);
    v26;
    v28 = v69;
    if (__swift_getEnumTagSinglePayload(v27, 1, v69) == 1)
    {
      BUG();
    }

    v62 = FeatureDescription.name.getter();
    v63 = v29;
    v75 = *(v74 + 8);
    (v75)(v27, v28);
    v30 = Model.inputs.getter();
    v31 = v57;
    specialized Collection.first.getter(v30);
    v30;
    if (__swift_getEnumTagSinglePayload(v31, 1, v28) == 1)
    {
      BUG();
    }

    v32 = v68;
    FeatureDescription.type.getter();
    (v75)(v31, v28);
    v33 = v61;
    (*(v65 + 16))(v61, v32, v67);
    v34 = v66;
    FeatureDescription.init(name:type:description:)(v62, v63, v33, 0, 0xE000000000000000);
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v36 = v74;
    v37 = *(v74 + 80);
    v38 = (v37 + 32) & ~*(v74 + 80);
    v39 = swift_allocObject(v35, v38 + *(v74 + 72), v37 | 7);
    *(v39 + 16) = 1;
    *(v39 + 24) = 2;
    (*(v36 + 16))(v39 + v38, v34, v69);
    Model.outputs.setter(v39);
    v40 = Model.outputs.getter();
    Model.inputs.setter(v40);
    Model.init()();
    Model.specificationVersion.setter(1);
    v41 = Model.inputs.getter();
    Model.inputs.setter(v41);
    v42 = Model.outputs.getter();
    Model.outputs.setter(v42);
    v43 = Model.predictedFeatureName.getter();
    Model.predictedFeatureName.setter(v43, v44);
    v45 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v45, v46);
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v48 = v70;
    v74 = *(v70 + 72);
    v49 = *(v70 + 80);
    v50 = (v49 + 32) & ~*(v70 + 80);
    v51 = swift_allocObject(v47, v50 + 2 * v74, v49 | 7);
    *(v51 + 16) = 2;
    *(v51 + 24) = 4;
    v52 = v51 + v50;
    v53 = *(v48 + 16);
    v54 = v71;
    v53(v52, v76, v71);
    v53(v74 + v52, v73, v54);
    v55 = v60;
    PipelineClassifierConfiguration.init(models:names:)(v51, _swiftEmptyArrayStorage);
    (*(v58 + 104))(v55, enum case for ModelKind.pipelineClassifier(_:), v59);
    Model.kind.setter(v55);
    (v75)(v66, v69);
    (*(v65 + 8))(v68, v67);
    v56 = *(v70 + 8);
    v56(v73, v54);
    v56(v76, v54);
  }
}

void MLImageClassifier.Model.createFeatureExtractorModel(_:)(uint64_t a1)
{
  v11 = v2;
  v12 = v1;
  v3 = *(*(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(a1, &v11);
  if (swift_getEnumCaseMultiPayload(&v11, v6) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(&v11, &v11);
    MLImageClassifier.CustomFeatureExtractor.buildModel()();
    outlined destroy of MLImageClassifier.CustomFeatureExtractor(&v11);
  }

  else
  {
    if (v12)
    {
      v10 = 2;
    }

    else
    {
      v10 = v11;
    }

    MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)(v10);
  }
}

void MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)(uint64_t a1)
{
  v49 = a1;
  v55 = v1;
  v48 = type metadata accessor for ImageFeaturePrint(0);
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v61 = v47;
  v50 = type metadata accessor for URL.DirectoryHint(0);
  v51 = *(v50 - 8);
  v6 = *(v51 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = v47;
  v64 = type metadata accessor for UUID(0);
  v53 = *(v64 - 8);
  v9 = *(v53 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v54 = v47;
  v62 = type metadata accessor for URL(0);
  v59 = *(v62 - 8);
  v12 = *(v59 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v56 = v47;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v58 = v47;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v65 = v47;
  v19 = alloca(v12);
  v20 = alloca(v12);
  v63 = v47;
  v21 = objc_opt_self(NSFileManager);
  v22 = [v21 defaultManager];
  v23 = v22;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v24)
  {
    v60 = v2;
    v25 = [v21 defaultManager];
    v26 = v25;
    NSFileManager.temporaryModelDirectory.getter();

    v27 = v54;
    UUID.init()();
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v57 = v29;
    (*(v53 + 8))(v27, v64);
    v47[0] = v28;
    v47[1] = v30;
    v64 = 0;
    v31 = v52;
    v32 = v50;
    v33 = v51;
    (*(v51 + 104))(v52, enum case for URL.DirectoryHint.inferFromPath(_:), v50);
    v34 = lazy protocol witness table accessor for type String and conformance String();
    v35 = v58;
    URL.appending<A>(component:directoryHint:)(v47, v31, &type metadata for String, v34);
    (*(v33 + 8))(v31, v32);
    v57;
    v36 = *(v59 + 8);
    v37 = v62;
    (v36)(v35, v62);
    v38 = v63;
    v39 = v65;
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    (v36)(v39, v37);
    v40 = objc_allocWithZone(CIContext);
    v41 = [v40 init];
    ImageFeaturePrint.init(revision:cropAndScale:context:)(v49, 0, v41);
    v42 = v48;
    v43 = v64;
    Transformer.export(to:)(v38, v48, &protocol witness table for ImageFeaturePrint);
    if (v43)
    {
      (*(v60 + 8))(v61, v42);
      (v36)(v63, v62);
    }

    else
    {
      v65 = v36;
      (*(v60 + 8))(v61, v42);
      v44 = v56;
      v45 = v63;
      v46 = v62;
      (*(v59 + 16))(v56, v63, v62);
      Model.init(contentsOf:)(v44);
      $defer #1 () in MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)();
      (v65)(v45, v46);
    }
  }
}

void MLImageClassifier.Model.createClassifierModel()()
{
  v84 = v1;
  v64 = v2;
  v79 = v0;
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v73 = *(v74 - 8);
  v3 = *(v73 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v75 = v63;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v76 = *(v77 - 8);
  v6 = *(v76 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v78 = v63;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v9 = *(*(v66 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v65 = v63;
  v87 = type metadata accessor for URL.DirectoryHint(0);
  v67 = *(v87 - 1);
  v12 = *(v67 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v68 = v63;
  v70 = type metadata accessor for UUID(0);
  v71 = *(v70 - 8);
  v15 = *(v71 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v72 = v63;
  v86 = type metadata accessor for URL(0);
  v83 = *(v86 - 8);
  v18 = *(v83 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = alloca(v18);
  v22 = alloca(v18);
  v23 = alloca(v18);
  v24 = alloca(v18);
  v69 = v63;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v85 = v63;
  v27 = objc_opt_self(NSFileManager);
  v28 = [v27 defaultManager];
  v29 = v28;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v30)
  {
    v82 = v63;
    v84 = 0;
    v31 = [v27 defaultManager];
    v32 = v31;
    v80 = v63;
    NSFileManager.temporaryModelDirectory.getter();

    v33 = v72;
    UUID.init()();
    v34 = UUID.uuidString.getter();
    v36 = v35;
    v81 = v35;
    (*(v71 + 8))(v33, v70);
    v63[0] = v34;
    v63[1] = v36;
    v37 = v68;
    v38 = v67;
    (*(v67 + 104))(v68, enum case for URL.DirectoryHint.inferFromPath(_:), v87);
    v39 = lazy protocol witness table accessor for type String and conformance String();
    v40 = v69;
    v41 = v80;
    URL.appending<A>(component:directoryHint:)(v63, v37, &type metadata for String, v39);
    (*(v38 + 8))(v37, v87);
    v81;
    v42 = *(v83 + 8);
    v43 = v86;
    (v42)(v41, v86);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v87 = v42;
    (v42)(v40, v43);
    v44 = v65;
    outlined init with copy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v64, v65);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v44, v66);
    v46 = v85;
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v75;
      v48 = v44;
      v49 = v74;
      v50 = v73;
      (*(v73 + 32))(v75, v48, v74);
      v51 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifierModel<Float, String> and conformance FullyConnectedNetworkClassifierModel<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifierModel<A, B>);
      v52 = v84;
      Transformer.export(to:)(v46, v49, v51);
      if (v52)
      {
        (*(v50 + 8))(v47, v49);
LABEL_7:
        v59 = v86;
        v60 = v85;
LABEL_11:
        (v87)(v60, v59);
        return;
      }

      (*(v50 + 8))(v47, v49);
    }

    else
    {
      v53 = v78;
      v54 = v44;
      v55 = v77;
      v56 = v76;
      (*(v76 + 32))(v78, v54, v77);
      v57 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LogisticRegressionClassifierModel<Float, String> and conformance LogisticRegressionClassifierModel<A, B>, &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>, &protocol conformance descriptor for LogisticRegressionClassifierModel<A, B>);
      v58 = v84;
      Transformer.export(to:)(v46, v55, v57);
      if (v58)
      {
        (*(v56 + 8))(v53, v55);
        goto LABEL_7;
      }

      (*(v56 + 8))(v53, v55);
    }

    v59 = v86;
    v61 = v82;
    v62 = v85;
    (*(v83 + 16))(v82, v85, v86);
    Model.init(contentsOf:)(v61);
    $defer #1 () in MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)();
    v60 = v62;
    goto LABEL_11;
  }
}

id $defer #1 () in MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)()
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

uint64_t outlined destroy of MLImageClassifier.CustomFeatureExtractor(uint64_t a1)
{
  v1 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SGD<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(&protocol conformance descriptor for SGD<A>, a2);
  *(a1 + 8) = result;
  return result;
}

_BYTE *assignWithCopy for MLRandomForestClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLRandomForestClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLRandomForestClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_341680;
  v5[1] = &unk_341698;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLRandomForestClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLRandomForestClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

uint64_t outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLLinearRegressor.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLLinearRegressor.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLLinearRegressor.ModelParameters.validationData : MLLinearRegressor.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLLinearRegressor.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLLinearRegressor.ModelParameters.validationData : MLLinearRegressor.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLLinearRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLinearRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
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
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLLinearRegressor.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t (*MLLinearRegressor.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLLinearRegressor.ModelParameters.validationData.getter(a2);
  return MLLinearRegressor.ModelParameters.validationData.modify;
}

uint64_t MLLinearRegressor.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLLinearRegressor.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLLinearRegressor.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t outlined copy of MLDataTable?(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<_DataTable, Error>(a1, a2);
  }

  return result;
}

uint64_t key path setter for MLLinearRegressor.ModelParameters.validation : MLLinearRegressor.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(a1, v6);
  return MLLinearRegressor.ModelParameters.validation.setter(v6);
}

uint64_t MLLinearRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLLinearRegressor.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLLinearRegressor.ModelParameters.validation.modify;
}

void MLLinearRegressor.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v8 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  if (a2)
  {
    outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v9 = v7;
  v10 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 32) = v21;
  *(v9 + 40) = v20;
  *(v9 + 48) = v19;
  *(v9 + 56) = v18;
  *(v9 + 64) = v17;
  *(v9 + 72) = a3 & 1;
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(a1, v16);
  v16[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v16, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v9);
  return outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(a1);
}

uint64_t MLLinearRegressor.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t *a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 72) = a3 & 1;
  v11 = v8;
  v12 = v9;
  return MLLinearRegressor.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLinearRegressor.ModelParameters.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(19);
  0xE000000000000000, a2;
  v23._countAndFlagsBits = *(v2 + 32);
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