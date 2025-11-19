unint64_t MLCreateError.description.getter()
{
  return MLCreateError.description.getter();
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 > 2u)
  {
    v11 = *v0;
    v12 = *(v0 + 8);
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    v18 = *(v0 + 48);
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    outlined copy of MLCreateError(v1, v2, v3, v4, v5, v6, v7);
    v17 = MLCreateError.errorDescription.getter();
    v9 = v8;
    outlined consume of MLCreateError(v1, v2, v3, v4, v15, v16, v18);
    if (!v9)
    {
      BUG();
    }

    return v17;
  }

  else
  {
    outlined copy of MLCreateError(v1, v2, v3, v4, v5, v6, v7);
  }

  return v1;
}

uint64_t outlined consume of MLCreateError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a7;
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return result;
    }

    v8 = a6;
    a2, a2;
    a4, a2;
  }

  else
  {
    v8 = a2;
  }

  return v8, a2;
}

uint64_t base witness table accessor for Error in MLCreateError()
{
  return lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
}

{
  return base witness table accessor for Error in MLCreateError();
}

uint64_t initializeWithCopy for MLCreateError(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  outlined copy of MLCreateError(*a2, v3, v4, v5, v7, v8, v9);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for MLCreateError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  outlined copy of MLCreateError(*a2, v4, v5, v6, v15, v16, v17);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  v13 = *(a1 + 48);
  *(a1 + 48) = v17;
  outlined consume of MLCreateError(v7, v8, v9, v10, v11, v12, v13);
  return a1;
}

uint64_t __swift_memcpy49_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 16) = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLCreateError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a1 + 48);
  *(a1 + 48) = v3;
  outlined consume of MLCreateError(v4, v5, v6, v7, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLCreateError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 48) >= 5u)
      {
        v2 = *(a1 + 48) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLCreateError(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 252;
    *(a1 + 48) = 0;
    if (a3 >= 0xFC)
    {
      *(a1 + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(a1 + 49) = 0;
    }

    if (a2)
    {
      *(a1 + 48) = -a2;
    }
  }
}

uint64_t getEnumTag for MLCreateError(uint64_t a1)
{
  result = (*a1 + 4);
  if (*(a1 + 48) < 4u)
  {
    return *(a1 + 48);
  }

  return result;
}

void destructiveInjectEnumTag for MLCreateError(uint64_t a1, unsigned int a2)
{
  if (a2 >= 4)
  {
    *a1 = a2 - 4;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(a1 + 48) = a2;
}

uint64_t lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError()
{
  result = lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError;
  if (!lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCreateError, &type metadata for MLCreateError);
    lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError;
  if (!lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLCreateError, &type metadata for MLCreateError);
    lazy protocol witness table cache variable for type MLCreateError and conformance MLCreateError = result;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(char a1, unint64_t a2)
{
  v4 = (a1 & 1) == 0;
  v5 = 1869903201;
  v6 = 1869903201;
  if (!v4)
  {
    v6 = 7696483;
  }

  v7 = (((a1 & 1) == 0) << 56) - 0x1D00000000000000;
  if (a2)
  {
    v5 = 7696483;
  }

  LOBYTE(a2) = ~a2;
  v8 = ((a2 & 1) << 56) - 0x1D00000000000000;
  LOBYTE(v2) = 1;
  if (v5 ^ v6 | v8 ^ v7)
  {
    a2 = (((a1 & 1) == 0) << 56) - 0x1D00000000000000;
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v5, v8, 0);
  }

  v7, a2;
  v8, a2;
  return v2;
}

{
  v4 = (a1 & 1) == 0;
  v5 = 7237219;
  v6 = 7237219;
  if (!v4)
  {
    v6 = 0x6574694C6E6E63;
  }

  v7 = ((a1 & 1) << 58) | 0xE300000000000000;
  if (a2)
  {
    v5 = 0x6574694C6E6E63;
  }

  v8 = ((a2 & 1) << 58) | 0xE300000000000000;
  LOBYTE(v2) = 1;
  if (v5 ^ v6 | v8 ^ v7)
  {
    a2 = v7;
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v5, v8, 0);
  }

  v7, a2;
  v8, a2;
  return v2;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, unint64_t a2)
{
  v3 = 0xEB0000000064657ALL;
  v4 = 0x696C616974696E69;
  a2 = a2;
  v5 = 0x696C616974696E69;
  v6 = 0xEB0000000064657ALL;
  switch(0xEA0000000000676ELL)
  {
    case 0uLL:
      break;
    case 1uLL:
      v6 = 0xEA0000000000676ELL;
      v5 = 0x6974636172747865;
      switch(a2)
      {
        case 0:
          goto LABEL_12;
        case 1:
          goto LABEL_7;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_8;
      }

    case 2uLL:
      v6 = 0xE800000000000000;
      v5 = 0x676E696E69617274;
      switch(a2)
      {
        case 0:
          goto LABEL_12;
        case 1:
          goto LABEL_7;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_8;
      }

    case 3uLL:
      v6 = 0xEA0000000000676ELL;
      v5 = 0x697461756C617665;
      switch(a2)
      {
        case 0:
          goto LABEL_12;
        case 1:
LABEL_7:
          v4 = 0x6974636172747865;
          goto LABEL_11;
        case 2:
LABEL_9:
          v4 = 0x676E696E69617274;
          v3 = 0xE800000000000000;
          goto LABEL_12;
        case 3:
LABEL_10:
          v4 = 0x697461756C617665;
LABEL_11:
          v3 = 0xEA0000000000676ELL;
LABEL_12:
          LOBYTE(v2) = 1;
          if (v4 ^ v5 | v3 ^ v6)
          {
            a2 = v6;
            v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, v4, v3, 0);
          }

          v6, a2;
          v3, a2;
          return v2;
        case 4:
LABEL_8:
          JUMPOUT(0x45F0DLL);
      }

    case 4uLL:
      v5 = 0x636E657265666E69;
      v6 = &loc_308EF - 0x14FFFFFFFF9B9A86;
      break;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_12;
    case 1:
      goto LABEL_7;
    case 2:
      goto LABEL_9;
    case 3:
      goto LABEL_10;
    case 4:
      goto LABEL_8;
  }
}

{
  a2 = a2;
  v3 = 0x54746E656D656C65;
  v4 = 0xEB00000000657079;
  switch(0x69726F6765746163)
  {
    case 0:
      break;
    case 1:
      v3 = 1702521203;
      v4 = 0xE400000000000000;
      switch(a2)
      {
        case 0:
          goto LABEL_6;
        case 1:
          goto LABEL_9;
      }

    case 2:
      v4 = 0xEA00000000007365;
      v3 = 0x69726F6765746163;
      switch(a2)
      {
        case 0:
LABEL_6:
          LOBYTE(v2) = 1;
          if (v3 ^ 0x54746E656D656C65 | v4 ^ 0xEB00000000657079)
          {
            a2 = v4;
            v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v3, v4, 0x54746E656D656C65, 0xEB00000000657079, 0);
          }

          v4, a2;
          0xEB00000000657079, a2;
          return v2;
        case 1:
LABEL_9:
          JUMPOUT(0x460B1);
      }

    case 3:
      v3 = 0x7470697263736564;
      v4 = 0xEB0000000073726FLL;
      break;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_6;
    case 1:
      goto LABEL_9;
  }
}

BOOL specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return a1 == a2;
}

{
  return specialized == infix<A>(_:_:)(a1, a2);
}

{
  return specialized == infix<A>(_:_:)(a1, a2);
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v3 = ColumnDescriptor.FeatureType.rawValue.getter(a1);
  v5 = v4;
  v6 = ColumnDescriptor.FeatureType.rawValue.getter(a2);
  v8 = v7;
  LOBYTE(v2) = 1;
  if (v6 ^ v3 | v7 ^ v5)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v3, v5, v6, v7, 0);
  }

  v5;
  v8;
  return v2;
}

void MLRandomForestRegressor.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLRandomForestRegressor(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    TreeRegressorModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLRandomForestRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestRegressor;
  if (!type metadata singleton initialization cache for MLRandomForestRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestRegressor);
  }

  return result;
}

uint64_t MLRandomForestRegressor.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLRandomForestRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1;
  v6 = type metadata accessor for MLRandomForestRegressor(0);
  v7._rawValue = *(v3 + *(v6 + 28));
  v16 = a1;
  DataFrame.validateContainsColumns(_:context:)(v7, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v8)
  {
    goto LABEL_4;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v9, v15);
  v11 = v3;
  v12._rawValue = inited;
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  v13 = *(v6 + 24);
  v14 = *(v11 + v13 + 8);
  *(v12._rawValue + 4) = *(v11 + v13);
  *(v12._rawValue + 5) = v14;
  v14;
  DataFrame.validateContainsColumns(_:context:)(v12, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  swift_setDeallocating(v12._rawValue);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (v8)
  {
LABEL_4:
    *v5 = v8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }

  else
  {
    TreeRegressorModel.computeMetrics(on:)(v16);
  }
}

uint64_t MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
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
  MLRandomForestRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLRandomForestRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v44 = v3;
  v49 = a2;
  v50 = a1;
  v4 = *(*(type metadata accessor for TreeRegressorModel(0) - 8) + 64);
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0xD000000000000015, ("CreateML Generic Error: " + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v45 = 0;
    v51 = &v34;
    v48 = v7;
    v49 = v11;
    v50 = v12;
    v17 = v46;
    outlined init with copy of MLTrainingSessionParameters(v44, v46, type metadata accessor for TreeRegressorModel);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for TreeRegressorModel);
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

uint64_t MLRandomForestRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLRandomForestRegressor.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLRandomForestRegressor.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLRandomForestRegressor(0);
  v3 = v0 + v2[8];
  v22 = MLRandomForestRegressor.ModelParameters.description.getter();
  v5 = v4;
  v6 = v2[9];
  v17 = *(v1 + v6);
  v19 = *(v1 + v6 + 8);
  v21 = *(v1 + v6 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v17, v19, v21);
  v24 = MLRegressorMetrics.description.getter();
  v8 = v7;
  outlined consume of Result<_RegressorMetrics, Error>(v17, v19, v21);
  v9 = v2[10];
  LOBYTE(v2) = *(v1 + v9 + 16) & 1;
  v18 = *(v1 + v9);
  v20 = *(v1 + v9 + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v20, *(v1 + v9 + 16));
  v16._countAndFlagsBits = MLRegressorMetrics.description.getter();
  v16._object = v10;
  outlined consume of Result<_RegressorMetrics, Error>(v18, v20, v2);
  v11._countAndFlagsBits = v22;
  v23 = v5;
  v11._object = v5;
  String.append(_:)(v11);
  v11._countAndFlagsBits = v24;
  v11._object = v8;
  String.append(_:)(v11);
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v11);
  "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  if (v2)
  {
    v12 = v8;
    object = v16._object;
  }

  else
  {
    String.append(_:)(v16);
    v14._countAndFlagsBits = 0xD000000000000020;
    object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v14._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    String.append(_:)(v14);
    v8;
    v12 = v16._object;
  }

  v12;
  object;
  v23;
  return 0xD000000000000022;
}

NSAttributedString MLRandomForestRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLRandomForestRegressor.description.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLRandomForestRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLRandomForestRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLRandomForestRegressor.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLRandomForestRegressor(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLRandomForestRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLRandomForestRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLRandomForestRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestRegressor(0);
  return outlined init with copy of MLRandomForestRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLRandomForestRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLRandomForestRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t static MLRandomForestRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLRandomForestRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v12 = *(v0 + 48);
  v11 = *(v0 + 32);
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MLRandomForestRegressor(0);
  *(v0 + 64) = v2;
  v3 = v2[9];
  *(v0 + 96) = v3;
  *(v1 + v3 + 16) = 0;
  *(v1 + v3) = 0;
  v4 = v2[10];
  *(v0 + 100) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v1 + v4) = v6;
  *(v1 + v4 + 8) = 0;
  *(v1 + v4 + 16) = 1;
  *(v1 + v2[7]) = v12;
  *(v1 + v2[6]) = v11;
  v8 = swift_task_alloc(288);
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  v9 = *(v0 + 24);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v3 + *(v1 + 20)) = *(v0 + 88);
  outlined init with take of MLClassifierMetrics(v4, v3, type metadata accessor for TreeRegressorModel);
  qmemcpy((v3 + *(v1 + 32)), v2, 0x70uLL);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v7 = *(v0 + 48);
  v8 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLRandomForestRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TreeRegressorModel);
  v8;
  v7;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  v5 = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v127 = a4;
  v124 = a3;
  v7 = v5;
  v116 = a2;
  v121 = v6;
  v133 = a5;
  v130 = a1;
  v126 = type metadata accessor for DataFrame(0);
  v129 = *(v126 - 8);
  v8 = *(v129 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v114 = &v96;
  v111 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v11 = *(v111 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v109 = &v96;
  v110 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v128 = &v96;
  v107 = type metadata accessor for TreeRegressor(0);
  v16 = *(*(v107 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v122 = &v96;
  v118 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v19 = *(*(v118 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v136 = &v96;
  v117 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v22 = *(*(v117 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v120 = &v96;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v113 = &v96;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v131 = &v96;
  v134 = type metadata accessor for BoostedTreeConfiguration(0);
  v135 = *(v134 - 8);
  v29 = *(v135 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v108 = &v96;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v119 = &v96;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v36 = type metadata accessor for MLRandomForestRegressor(0);
  v37 = *(v36 + 36);
  *(v7 + v37 + 16) = 0;
  v123 = v37;
  *(v7 + v37) = 0;
  v38 = v7;
  v112 = v36;
  v39 = *(v36 + 40);
  v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v41 = swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
  *v42 = 0xD0000000000000C0;
  *(v42 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v42 + 16) = 0;
  *(v42 + 32) = 0;
  *(v42 + 48) = 0;
  *(v38 + v39) = v41;
  *(v38 + v39 + 8) = 0;
  v115 = v39;
  *(v38 + v39 + 16) = 1;
  outlined init with copy of MLRandomForestRegressor.ModelParameters(v133, &v98);
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.parallelTreeCount.setter(10);
  BoostedTreeConfiguration.maximumDepth.setter(v100);
  BoostedTreeConfiguration.maximumIterations.setter(v101);
  BoostedTreeConfiguration.minimumLossReduction.setter(v102);
  BoostedTreeConfiguration.minimumChildWeight.setter(v103);
  BoostedTreeConfiguration.randomSeed.setter(v104);
  BoostedTreeConfiguration.rowSubsample.setter(v105);
  v132 = &v96;
  BoostedTreeConfiguration.columnSubsample.setter(v106);
  outlined destroy of MLRandomForestRegressor.ModelParameters(&v98);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v133, &v96, &demangling cache variable for type metadata for Any?);
  if (!v97)
  {
    BUG();
  }

  v125 = v38;
  v123 += v38;
  v43 = v131;
  v44 = v131 + *(v117 + 48);
  outlined init with take of Any(&v96, &v98);
  swift_dynamicCast(v136, &v98, &type metadata for Any + 8, v118, 7);
  v45 = v121;
  MLRandomForestRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v43, v44, v130);
  v46 = v123;
  if (v45)
  {
    v124;
    v127;
    outlined destroy of MLRandomForestRegressor.ModelParameters(v133);
    (*(v129 + 8))(v130, v126);
    outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
    (*(v135 + 8))(v132, v134);
    v47 = v125;
LABEL_12:
    outlined consume of Result<_RegressorMetrics, Error>(*v46, *(v46 + 8), *(v46 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v47 + v115), *(v47 + v115 + 8), *(v47 + v115 + 16));
  }

  v121 = v44;
  outlined destroy of MLActivityClassifier.ModelParameters(v136, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v48 = v116;
  v49 = v124;
  v50 = v127;
  v51 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v43, v116, v124, v127);
  v136 = 0;
  v52 = v50;
  v53 = v51;
  v52;
  v54 = *(v135 + 16);
  v54(v119, v132, v134);
  v55 = v54;
  v56 = v122;
  *v122 = v48;
  *(v56 + 1) = v49;
  *(v56 + 2) = v53;
  *(v56 + 3) = v53;
  *(v56 + 4) = 0xD000000000000013;
  *(v56 + 5) = "raining samples." + 0x8000000000000000;
  v57 = v108;
  v55(v108, v119, v134);
  v58 = v56 + *(v107 + 28);
  v127 = v53;
  swift_bridgeObjectRetain_n(v53, 2);
  v59 = v124;
  v124;
  BaseTreeRegressor.init(configuration:)(v57);
  v135 = *(v135 + 8);
  (v135)(v119, v134);
  v60 = v136;
  TreeRegressor.fitted(to:validateOn:eventHandler:)(v131, v121, 0, 0);
  if (v60)
  {
    v59;
    v127;
    outlined destroy of MLRandomForestRegressor.ModelParameters(v133);
    (*(v129 + 8))(v130, v126);
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v135)(v132, v134);
    v47 = v125;
    v46 = v123;
    goto LABEL_12;
  }

  v136 = 0;
  if (!AnalyticsReporter.init()())
  {
    v61 = v113;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, v113, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v62 = v61 + *(v117 + 48);
    v63 = DataFrame.shape.getter();
    (*(v129 + 8))(v61, v126);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_randomForestRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v63);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for DataFrame?);
  }

  v64 = v112;
  v65 = v112[6];
  v66 = v125;
  *(v125 + v65) = v116;
  *(v66 + v65 + 8) = v124;
  v121 = v66 + v64[8];
  outlined init with copy of MLRandomForestRegressor.ModelParameters(v133, v121);
  *(v66 + v64[7]) = v127;
  v67 = v109;
  outlined init with copy of MLTrainingSessionParameters(v128, v109, type metadata accessor for TreeRegressorModel);
  v68 = *(v111 + 80);
  v69 = ~*(v111 + 80) & (v68 + 16);
  v70 = swift_allocObject(&unk_38F790, v69 + v110, v68 | 7);
  outlined init with take of MLClassifierMetrics(v67, v70 + v69, type metadata accessor for TreeRegressorModel);
  v71 = v136;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v70);
  v73 = v130;
  if (v71)
  {

    outlined destroy of MLRandomForestRegressor.ModelParameters(v133);
    (*(v129 + 8))(v73, v126);
    outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v135)(v132, v134);
    v127;
    v124;
    v47 = v125;
LABEL_11:
    v46 = v123;
    outlined destroy of MLRandomForestRegressor.ModelParameters(v121);
    goto LABEL_12;
  }

  v74 = v72;

  v75 = v64[5];
  v118 = v74;
  v76 = v125;
  *(v125 + v75) = v74;
  outlined init with copy of MLTrainingSessionParameters(v128, v76, type metadata accessor for TreeRegressorModel);
  v77 = v131;
  TreeRegressorModel.computeMetrics(on:)(v131);
  v136 = 0;
  v79 = v99;
  v80 = v123;
  outlined consume of Result<_RegressorMetrics, Error>(*v123, *(v123 + 8), *(v123 + 16));
  *v80 = v98;
  *(v80 + 16) = v79;
  v81 = v120;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, v120, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v82 = v81 + *(v117 + 48);
  v83 = v126;
  if (__swift_getEnumTagSinglePayload(v82, 1, v126) == 1)
  {
    outlined destroy of MLRandomForestRegressor.ModelParameters(v133);
    v84 = v83;
    v85 = *(v129 + 8);
    v85(v130, v84);
    outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v135)(v132, v134);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, &demangling cache variable for type metadata for DataFrame?);
    return (v85)(v120, v84);
  }

  else
  {
    v86 = v114;
    v87 = v129;
    (*(v129 + 32))(v114, v82, v83);
    v88 = *(v87 + 8);
    v89 = v86;
    v88(v120, v83);
    v90 = v86;
    v91 = v125;
    v92 = v136;
    TreeRegressorModel.computeMetrics(on:)(v90);
    v136 = v92;
    if (v92)
    {
      outlined destroy of MLRandomForestRegressor.ModelParameters(v133);
      v88(v130, v83);
      v88(v89, v83);
      outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for TreeRegressor);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (v135)(v132, v134);
      v47 = v91;
      v93 = v124;
      outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for TreeRegressorModel);
      v127;
      v93;

      goto LABEL_11;
    }

    outlined destroy of MLRandomForestRegressor.ModelParameters(v133);
    v88(v130, v83);
    v88(v89, v83);
    outlined destroy of MLActivityClassifier.ModelParameters(v128, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v135)(v132, v134);
    v94 = v99;
    v95 = v115;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v91 + v115), *(v91 + v115 + 8), *(v91 + v115 + 16));
    *(v91 + v95) = v98;
    *(v91 + v95 + 16) = v94;
  }

  return result;
}

uint64_t closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
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
  outlined init with copy of MLRandomForestRegressor.ModelParameters(a5, &v11);
  MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLRandomForestRegressor.ModelParameters(a5);
}

uint64_t MLRandomForestRegressor.init(checkpoint:)(uint64_t a1)
{
  v63 = v2;
  v80 = a1;
  v3 = v1;
  v72 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v4 = *(*(v72 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v73 = v60;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v71 = v60;
  v70 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v9 = *(v70 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = v60;
  v69 = v9;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v79 = v60;
  v64 = type metadata accessor for BoostedTreeConfiguration(0);
  v65 = *(v64 - 8);
  v14 = *(v65 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v66 = v60;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v78 = v60;
  v77 = type metadata accessor for TreeRegressor(0);
  v19 = *(*(v77 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v75 = v60;
  v22 = type metadata accessor for MLRandomForestRegressor(0);
  v23 = *(v22 + 36);
  *(v3 + v23 + 16) = 0;
  v62 = v23;
  *(v3 + v23) = 0;
  v76 = v22;
  v24 = *(v22 + 40);
  v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v25 = swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
  *v26 = 0xD0000000000000C0;
  *(v26 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v26 + 16) = 0;
  *(v26 + 32) = 0;
  *(v26 + 48) = 0;
  *(v3 + v24) = v25;
  *(v3 + v24 + 8) = 0;
  v74 = v3;
  v61 = v24;
  *(v3 + v24 + 16) = 1;
  v27 = v80;
  switch(*(v27 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v28 = 0x696C616974696E69;
      v29 = 0xEB0000000064657ALL;
      break;
    case 1:
      v28 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      goto LABEL_9;
    case 3:
      v28 = 0x697461756C617665;
LABEL_7:
      v29 = 0xEA0000000000676ELL;
      break;
    case 4:
      v29 = 0xEB00000000676E69;
      v28 = 0x636E657265666E69;
      break;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)(v28, v29, 0x676E696E69617274, 0xE800000000000000, 0);
  v29;
  if (v30)
  {
LABEL_9:
    v31 = v78;
    BoostedTreeConfiguration.init()();
    v32 = v75;
    *v75 = 0;
    v32[1] = 0xE000000000000000;
    v32[2] = _swiftEmptyArrayStorage;
    v32[3] = _swiftEmptyArrayStorage;
    v32[4] = 0xD000000000000013;
    v32[5] = "raining samples." + 0x8000000000000000;
    v33 = v66;
    v34 = v31;
    v35 = v64;
    v36 = v65;
    (*(v65 + 16))(v66, v34, v64);
    v37 = *(v77 + 28);
    BaseTreeRegressor.init(configuration:)(v33);
    (*(v36 + 8))(v78, v35);
    v38 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
    v39 = v79;
    v40 = v80;
    v41 = v63;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v80, v77, v38);
    if (!v41)
    {
      v44 = v68;
      outlined init with copy of MLTrainingSessionParameters(v39, v68, type metadata accessor for TreeRegressorModel);
      v45 = *(v70 + 80);
      v46 = ~*(v70 + 80) & (v45 + 16);
      v47 = swift_allocObject(&unk_38F7B8, v46 + v69, v45 | 7);
      outlined init with take of MLClassifierMetrics(v44, v47 + v46, type metadata accessor for TreeRegressorModel);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestRegressor.init(checkpoint:), v47);
      v49 = v48;

      v51 = v74;
      *(v74 + v76[5]) = v49;
      outlined init with copy of MLTrainingSessionParameters(v79, v51, type metadata accessor for TreeRegressorModel);
      v52 = v71;
      *v71 = 0;
      *(v52 + 16) = 256;
      v77 = 0;
      v53 = v72;
      swift_storeEnumTagMultiPayload(v52, v72, 0);
      v54 = v76[8];
      v78 = (v51 + v54);
      *(v51 + v54 + 16) = 0;
      *(v51 + v54) = 0;
      *(v51 + v54 + 88) = 0;
      *(v51 + v54 + 104) = 0;
      *(v51 + v54 + 32) = 6;
      *(v51 + v54 + 40) = 10;
      *(v51 + v54 + 48) = _mm_loadh_ps(&qword_33D880);
      *(v51 + v54 + 64) = 42;
      *(v51 + v54 + 72) = xmmword_33E240;
      v55 = v73;
      outlined init with copy of MLTrainingSessionParameters(v52, v73, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
      v60[3] = v53;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
      outlined init with take of MLClassifierMetrics(v55, boxed_opaque_existential_0, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(v60, v78);
      outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
      v57 = v76;
      v58 = v76[6];
      *(v51 + v58) = 0;
      *(v51 + v58 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for TreeRegressor);
      result = v57[7];
      *(v51 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for TreeRegressor);
  }

  else
  {
    v42 = v67;
    swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v43 = 0xD000000000000042;
    *(v43 + 8) = "Number of Data Points" + 0x8000000000000000;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v42);
    outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
  }

  v50 = v74;
  outlined consume of Result<_RegressorMetrics, Error>(*(v74 + v62), *(v74 + v62 + 8), *(v74 + v62 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v50 + v61), *(v50 + v61 + 8), *(v50 + v61 + 16));
}

uint64_t closure #1 in MLRandomForestRegressor.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
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
  return swift_task_switch(closure #1 in MLRandomForestRegressor.init(checkpoint:), 0, 0);
}

void *static MLRandomForestRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLRandomForestRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLRandomForestRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = v6;
  v64 = a6;
  v59 = a5;
  v61 = a4;
  v62 = a3;
  v55 = a2;
  v66 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v58 = &v44;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v56 = &v44;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v57 = &v44;
  v15 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v60 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v67 = &v44;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v63 = &v44;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &v53, &demangling cache variable for type metadata for Any?);
  if (!v54)
  {
    BUG();
  }

  v26 = &v44 + *(v60 + 48);
  v65 = &v44;
  outlined init with take of Any(&v53, &v44);
  v27 = v65;
  swift_dynamicCast(&v44, &v44, &type metadata for Any + 8, v15, 7);
  v28 = v68;
  MLRandomForestRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v66);
  outlined destroy of MLActivityClassifier.ModelParameters(&v44, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  if (!v28)
  {
    v29 = v63;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v63, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v66 = 0;
    v30 = v60;
    v68 = v29 + *(v60 + 48);
    v31 = v27;
    v32 = v67;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v67, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v33 = v32 + *(v30 + 48);
    outlined init with copy of MLRandomForestRegressor.ModelParameters(v59, &v44);
    v61;
    v62;
    v34 = v57;
    BoostedTreeConfiguration.init()();
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.parallelTreeCount.setter(10);
    BoostedTreeConfiguration.maximumDepth.setter(v46);
    BoostedTreeConfiguration.maximumIterations.setter(v47);
    BoostedTreeConfiguration.minimumLossReduction.setter(v48);
    BoostedTreeConfiguration.minimumChildWeight.setter(v49);
    BoostedTreeConfiguration.randomSeed.setter(v50);
    BoostedTreeConfiguration.rowSubsample.setter(v51);
    BoostedTreeConfiguration.columnSubsample.setter(v52);
    outlined destroy of MLRandomForestRegressor.ModelParameters(&v44);
    v35 = v56;
    outlined init with copy of MLTrainingSessionParameters(v64, v56, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
    v36 = v66;
    v37 = TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v63, v33, v55, v62, v61, v34, v35);
    if (v36)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v38 = type metadata accessor for DataFrame(0);
      (*(*(v38 - 8) + 8))(v67, v38);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v39 = v37;
      v40 = type metadata accessor for DataFrame(0);
      (*(*(v40 - 8) + 8))(v67, v40);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for DataFrame?);
      v45 = v27;
      v46 = &protocol witness table for TreeRegressorTrainingSessionDelegate;
      *&v44 = v39;
      v41 = v58;
      outlined init with copy of MLTrainingSessionParameters(v64, v58, type metadata accessor for MLTrainingSessionParameters);
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>);
      swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v44, v41, 0);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLRandomForestRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeRegressorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeRegressorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 0);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLRandomForestRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_38F7F0, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLRandomForestRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[37] = a2;
  v2[36] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[38] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLRandomForestRegressor(0);
  v2[39] = v4;
  v2[40] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[41] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[42] = v6;
  v7 = *(v6 - 8);
  v2[43] = v7;
  v2[44] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[45] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[46] = v9;
  v2[47] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLRandomForestRegressor.init(delegate:), 0, 0);
}

uint64_t MLRandomForestRegressor.init(delegate:)()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v0[37];
  swift_beginAccess(v3, v0 + 30, 0, 0);
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
  v7 = v0[37];
  v14 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[45], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLRandomForestRegressor.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, v0 + 33, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for TreeRegressorModel?);
  v11 = type metadata accessor for TreeRegressorModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLRandomForestRegressor.ModelParameters((v0 + 2), (v0 + 16));
  v19;
  v9;
  v12 = swift_task_alloc(112);
  v0[48] = v12;
  *v12 = v0;
  v12[1] = MLRandomForestRegressor.init(delegate:);
  return MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[40], v0[38], v17, v19, v9, (v0 + 16));
}

{
  v2 = *(*v1 + 384);
  *(*v1 + 392) = v0;
  v2;
  if (v0)
  {
    v3 = MLRandomForestRegressor.init(delegate:);
  }

  else
  {
    v3 = MLRandomForestRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 296);
  outlined init with take of MLClassifierMetrics(*(v0 + 320), *(v0 + 288), type metadata accessor for MLRandomForestRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v17 = *(v0 + 376);
  v16 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v18 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v15 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v15, v2);
  outlined destroy of MLRandomForestRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v5 = *(v16 + 36);
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16));
  *(v3 + v5) = v18;
  *(v3 + v5 + 8) = v15;
  *(v3 + v5 + 16) = v2 & 1;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
  v19 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  outlined copy of MLRegressorMetrics?(v19, v6, v7);

  if (v7 != -1)
  {
    v8 = *(v0 + 288);
    v9 = *(*(v0 + 312) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v19;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 360);
  v11 = *(v0 + 352);
  v12 = *(v0 + 328);
  v20 = *(v0 + 304);
  v13 = *(v0 + 320);
  *(v0 + 376);
  v10;
  v11;
  v12;
  v13;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v9 = *(v0 + 328);
  v8 = *(v0 + 320);
  v4 = *(v0 + 296);
  v7 = *(v0 + 304);

  outlined destroy of MLRandomForestRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v9;
  v8;
  v7;
  v5 = *(v0 + 392);
  return (*(v0 + 8))();
}

uint64_t partial apply for closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for TreeRegressorModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for TreeRegressorModel(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v10 = *(v2 + 64);
  v5 = v4 + v0;
  *(v0 + v4 + 8);
  v6 = *(v0 + v4 + 16);
  if (v6)
  {
    v6;
    *(v5 + 32);
  }

  v7 = *(v1 + 24) + v5;
  v8 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v8 - 8) + 8))(v7, v8);
  return swift_deallocObject(v0, v10 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLRandomForestRegressor.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for TreeRegressorModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(checkpoint:)(a1);
}

id sub_49AF5()
{
  v1 = v0;
  result = MLRandomForestRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRandomForestRegressor(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
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

    v10 = *(type metadata accessor for TreeRegressorModel(0) + 24);
    v11 = type metadata accessor for BaseTreeRegressorModel(0);
    (*(*(v11 - 8) + 16))(v3 + v10, a2 + v10, v11);
    v12 = a3[5];
    v13 = *(a2 + v12);
    *(v3 + v12) = v13;
    v14 = a3[6];
    *(v3 + v14) = *(a2 + v14);
    v29 = *(a2 + v14 + 8);
    *(v3 + v14 + 8) = v29;
    v15 = a3[7];
    v31 = *(a2 + v15);
    *(v3 + v15) = v31;
    v30 = a3;
    v16 = a3[8];
    v17 = v3 + v16;
    v18 = (a2 + v16);
    v19 = *(a2 + v16 + 24);
    v13;
    v29;
    v31;
    if (v19)
    {
      *(v17 + 3) = v19;
      (**(v19 - 8))(v17, v18, v19);
    }

    else
    {
      v20 = *v18;
      *(v17 + 1) = v18[1];
      *v17 = v20;
    }

    *(v17 + 2) = v18[2];
    *(v17 + 3) = v18[3];
    *(v17 + 4) = v18[4];
    *(v17 + 5) = v18[5];
    *(v17 + 6) = v18[6];
    v21 = v30[9];
    v22 = *(a2 + v21);
    v23 = *(a2 + v21 + 8);
    v32 = *(a2 + v21 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v22, v23, v32);
    *(v3 + v21) = v22;
    *(v3 + v21 + 8) = v23;
    *(v3 + v21 + 16) = v32;
    v24 = v30[10];
    v25 = *(a2 + v24);
    v26 = *(a2 + v24 + 8);
    v27 = *(a2 + v24 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v25, v26, v27);
    *(v3 + v24) = v25;
    *(v3 + v24 + 8) = v26;
    *(v3 + v24 + 16) = v27;
  }

  return v3;
}

uint64_t destroy for MLRandomForestRegressor(void *a1, int *a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v5 - 8) + 8))(v4, v5);

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v6 = a2[8];
  if (*(a1 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v6));
  }

  outlined consume of Result<_RegressorMetrics, Error>(*(a1 + a2[9]), *(a1 + a2[9] + 8), *(a1 + a2[9] + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(a1 + a2[10]), *(a1 + a2[10] + 8), *(a1 + a2[10] + 16));
}

void *initializeWithCopy for MLRandomForestRegressor(void *a1, void *a2, int *a3)
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

  v8 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v9 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = a3[5];
  v11 = *(a2 + v10);
  *(a1 + v10) = v11;
  v12 = a3[6];
  *(a1 + v12) = *(a2 + v12);
  v27 = *(a2 + v12 + 8);
  *(a1 + v12 + 8) = v27;
  v13 = a3[7];
  v29 = *(a2 + v13);
  *(a1 + v13) = v29;
  v28 = a3;
  v14 = a3[8];
  v15 = a1 + v14;
  v16 = (a2 + v14);
  v17 = *(a2 + v14 + 24);
  v11;
  v27;
  v29;
  if (v17)
  {
    *(v15 + 3) = v17;
    (**(v17 - 8))(v15, v16, v17);
  }

  else
  {
    v18 = *v16;
    *(v15 + 1) = v16[1];
    *v15 = v18;
  }

  *(v15 + 2) = v16[2];
  *(v15 + 3) = v16[3];
  *(v15 + 4) = v16[4];
  *(v15 + 5) = v16[5];
  *(v15 + 6) = v16[6];
  v19 = v28[9];
  v20 = *(a2 + v19);
  v21 = *(a2 + v19 + 8);
  v30 = *(a2 + v19 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v20, v21, v30);
  *(a1 + v19) = v20;
  *(a1 + v19 + 8) = v21;
  *(a1 + v19 + 16) = v30;
  v22 = v28[10];
  v23 = *(a2 + v22);
  v24 = *(a2 + v22 + 8);
  v25 = *(a2 + v22 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v23, v24, v25);
  *(a1 + v22) = v23;
  *(a1 + v22 + 8) = v24;
  *(a1 + v22 + 16) = v25;
  return a1;
}

void *assignWithCopy for MLRandomForestRegressor(void *a1, void *a2, int *a3)
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
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

  v13 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v14 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = a3[5];
  v16 = *(a2 + v15);
  v17 = *(a1 + v15);
  *(a1 + v15) = v16;
  v16;

  v18 = a3[6];
  *(a1 + v18) = *(a2 + v18);
  v19 = *(a2 + v18 + 8);
  v20 = *(a1 + v18 + 8);
  *(a1 + v18 + 8) = v19;
  v19;
  v20;
  v21 = a3[7];
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v22;
  v23;
  v24 = a3[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *(a2 + v24 + 24);
  if (!*(a1 + v24 + 24))
  {
    if (v27)
    {
      *(v25 + 3) = v27;
      (**(v27 - 8))(v25, v26);
      goto LABEL_15;
    }

LABEL_14:
    v30 = *v26;
    *(v25 + 1) = *(v26 + 1);
    *v25 = v30;
    goto LABEL_15;
  }

  v29 = (a1 + v24);
  if (!v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v29, (a2 + v24));
LABEL_15:
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  *(v25 + 7) = *(v26 + 7);
  *(v25 + 8) = *(v26 + 8);
  *(v25 + 9) = *(v26 + 9);
  *(v25 + 10) = *(v26 + 10);
  *(v25 + 11) = *(v26 + 11);
  *(v25 + 12) = *(v26 + 12);
  *(v25 + 13) = *(v26 + 13);
  v31 = a3[9];
  v32 = *(a2 + v31);
  v33 = *(a2 + v31 + 8);
  v45 = *(a2 + v31 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v32, v33, v45);
  v34 = *(a1 + v31);
  v35 = *(a1 + v31 + 8);
  *(a1 + v31) = v32;
  *(a1 + v31 + 8) = v33;
  v36 = *(a1 + v31 + 16);
  *(a1 + v31 + 16) = v45;
  outlined consume of Result<_RegressorMetrics, Error>(v34, v35, v36);
  v37 = a3[10];
  v38 = *(a2 + v37);
  v39 = *(a2 + v37 + 8);
  v40 = *(a2 + v37 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v38, v39, v40);
  v41 = *(a1 + v37);
  v42 = *(a1 + v37 + 8);
  *(a1 + v37) = v38;
  *(a1 + v37 + 8) = v39;
  v43 = *(a1 + v37 + 16);
  *(a1 + v37 + 16) = v40;
  outlined consume of Result<_RegressorMetrics, Error>(v41, v42, v43);
  return a1;
}

uint64_t initializeWithTake for MLRandomForestRegressor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x70uLL);
  v6 = a3[9];
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6) = *(a2 + v6);
  v7 = a3[10];
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 16) = *(a2 + v7 + 16);
  return a1;
}

void *assignWithTake for MLRandomForestRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1 + 2;
  v8 = a2 + 2;
  v9 = a1[2];
  if (v9)
  {
    v10 = a2[2];
    if (v10)
    {
      a1[2] = v10;
      v9;
      a1[3] = a2[3];
      v11 = a1[4];
      a1[4] = a2[4];
      v11;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v13 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = a3[5];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v16 = a3[6];
  *(a1 + v16) = *(a2 + v16);
  v17 = *(a1 + v16 + 8);
  *(a1 + v16 + 8) = *(a2 + v16 + 8);
  v17;
  v18 = a3[7];
  v19 = *(a1 + v18);
  *(a1 + v18) = *(a2 + v18);
  v19;
  v20 = a3[8];
  v21 = (a1 + v20);
  if (*(a1 + v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v20));
  }

  v22 = *(a2 + v20);
  v21[1] = *(a2 + v20 + 16);
  *v21 = v22;
  *(a1 + v20 + 32) = *(a2 + v20 + 32);
  *(a1 + v20 + 48) = *(a2 + v20 + 48);
  *(a1 + v20 + 64) = *(a2 + v20 + 64);
  *(a1 + v20 + 72) = *(a2 + v20 + 72);
  *(a1 + v20 + 88) = *(a2 + v20 + 88);
  *(a1 + v20 + 104) = *(a2 + v20 + 104);
  v23 = a3[9];
  v24 = *(a2 + v23 + 16);
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  *(a1 + v23) = *(a2 + v23);
  v27 = *(a1 + v23 + 16);
  *(a1 + v23 + 16) = v24;
  outlined consume of Result<_RegressorMetrics, Error>(v25, v26, v27);
  v28 = a3[10];
  v29 = *(a2 + v28 + 16);
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  *(a1 + v28) = *(a2 + v28);
  v32 = *(a1 + v28 + 16);
  *(a1 + v28 + 16) = v29;
  outlined consume of Result<_RegressorMetrics, Error>(v30, v31, v32);
  return a1;
}

uint64_t sub_4A576(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for TreeRegressorModel(0);
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

uint64_t sub_4A5F0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLRandomForestRegressor(uint64_t a1)
{
  result = type metadata accessor for TreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_33E338;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_33E350;
    v3[5] = &unk_33E368;
    v3[6] = &unk_33E368;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t sub_4A6DD()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLRandomForestRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms23ChunksOfCountCollectionVySaySdGG_SSs5NeverOTg5128_s8CreateML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    BUG();
  }

  v7 = *(a1 + 16) / a2 + (*(a1 + 16) % a2 != 0);
  if (!v7)
  {
    a4;
    return _swiftEmptyArrayStorage;
  }

  v36 = *(a1 + 16);
  v8 = 0;
  if (v7 > 0)
  {
    v8 = v7;
  }

  v28 = v8;
  v35 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  if ((a3 | v35) < 0)
  {
    BUG();
  }

  v30 = a4 + 32;
  v9 = 0;
  v10 = 0;
  v11 = v36;
  v29 = a2;
  do
  {
    if (v9 == v28)
    {
      BUG();
    }

    if (v10 == v11)
    {
      BUG();
    }

    if (v10 > v11)
    {
      BUG();
    }

    v12 = v11 - a3;
    if (v11 < a3)
    {
      BUG();
    }

    if (v10 >= a3)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, "ityClassifier+Training.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier+Training.swift", 44, 2, 630, 0);
      BUG();
    }

    v13 = v10;
    if (v10 + 1 < a3)
    {
      v14 = v10;
      v15 = v10;
      do
      {
        if (v15 < v10 || v15 >= a3)
        {
          BUG();
        }

        v16 = *(a1 + 8 * v14++ + 40);
        v13 = v14;
        if (v16 <= *(a1 + 8 * v15 + 32))
        {
          v13 = v15;
        }

        v15 = v13;
      }

      while (a3 - 1 != v14);
    }

    v17 = __OFSUB__(v13, v10);
    v18 = v13 - v10;
    if (v17)
    {
      BUG();
    }

    if (v18 < 0)
    {
      BUG();
    }

    if (v18 >= *(a4 + 16))
    {
      BUG();
    }

    v34 = v12;
    v33 = v9;
    v19 = 16 * v18;
    v26 = *(v30 + v19);
    v20 = _swiftEmptyArrayStorage[2];
    v31 = _swiftEmptyArrayStorage[3];
    v32 = v20 + 1;
    v27 = *(v30 + v19 + 8);
    v27;
    if (v31 >> 1 <= v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 >= 2, v32, 1);
    }

    v21 = 2 * v20;
    _swiftEmptyArrayStorage[2] = v32;
    _swiftEmptyArrayStorage[v21 + 4] = v26;
    _swiftEmptyArrayStorage[v21 + 5] = v27;
    if (v29 <= 0)
    {
      v11 = v36;
      v22 = v36;
      v23 = v35;
      v24 = v33;
      if (v34 > v29 && v34 <= 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v11 = v36;
      v22 = v36;
      v23 = v35;
      v24 = v33;
      if (v34 < v29)
      {
        goto LABEL_29;
      }
    }

    v22 = v29 + a3;
    if (__OFADD__(v29, a3))
    {
      BUG();
    }

LABEL_29:
    if (v22 < a3)
    {
      BUG();
    }

    v9 = v24 + 1;
    v10 = a3;
    a3 = v22;
  }

  while (v9 != v23);
  a4;
  return _swiftEmptyArrayStorage;
}

uint64_t specialized Collection.count.getter()
{
  v0 = CMLSequence.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v0, CMLSequence.size.getter);
}

{
  v0 = CMLDictionary.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v0, CMLDictionary.size.getter);
}

{
  v0 = CMLSequence.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v0);
}

{
  return specialized Collection.count.getter();
}

{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0, CMLSequence.size.getter);

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2, CMLSequence.size.getter);

  if (v3 < 0)
  {
    BUG();
  }

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, CMLSequence.size.getter);

  if (v1 < 0 || v5 < v1)
  {
    BUG();
  }

  return v1;
}

{
  return specialized Collection.count.getter();
}

uint64_t specialized Collection.count.getter(uint64_t a1, char a2)
{
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v2, a1, a2 & 1);
}

char specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  a3;
  v6 = CMLSequence.size.getter();
  if (specialized RandomAccessCollection<>.distance(from:to:)(0, v6, CMLSequence.size.getter))
  {
    v7 = 0;
    v30 = v5;
    while (1)
    {
      v8 = CMLSequence.value(at:)(v7);
      if (v4)
      {
        swift_unexpectedError(v4, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v9 = v8;
      v29 = v7;
      v10 = CMLFeatureValue.stringValue()();
      countAndFlagsBits = v10._countAndFlagsBits;
      if (v11)
      {
        v11;
        v9;
        v27 = 0;
        v28 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        v28;
        v27 = 0xD000000000000022;
        v28 = "able.ColumnNames.swift" + 0x8000000000000000;
        v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v23._object;
        String.append(_:)(v23);
        object;
        v25._countAndFlagsBits = 46;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v27, v28, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      v12 = v10._object;
      v9;
      v13 = v30;
      v30;
      v14 = CMLSequence.size.getter();
      v15 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14, CMLSequence.size.getter);
      v13;
      if (v29 >= v15)
      {
        BUG();
      }

      v16 = v29;
      v27 = countAndFlagsBits;
      v28 = v12;
      v17 = a1(&v27);
      countAndFlagsBits = 0;
      v18 = v17;
      v12;
      v5 = v30;
      if (v18)
      {
        break;
      }

      v7 = v16 + 1;
      v30;
      v19 = CMLSequence.size.getter();
      v20 = specialized RandomAccessCollection<>.distance(from:to:)(0, v19, CMLSequence.size.getter);
      v5;
      v21 = v7 == v20;
      v4 = countAndFlagsBits;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    v30;
    return 1;
  }

  else
  {
LABEL_8:
    v5;
    return 0;
  }
}

uint64_t *MLActivityClassifier.predictions(from:perWindowPrediction:)(uint64_t a1, int a2)
{
  v55 = v2;
  v50 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v43 = *(v44 - 8);
  v4 = *(v43 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = &v38;
  v52 = type metadata accessor for DataFrame(0);
  v7 = *(v52 - 8);
  v8 = v7[8];
  v9 = alloca(v8);
  v10 = alloca(v8);
  v48 = &v38;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v54 = &v38;
  v13 = *(type metadata accessor for MLActivityClassifier(0) + 36);
  v46 = v3;
  v14._rawValue = *(v3 + v13);
  v47 = a1;
  DataFrame.validateContainsColumns(_:context:)(v14, __PAIR128__(0xEC00000061746164, 0x2065727574616546));
  if (!v17)
  {
    v18 = *(v14._rawValue + 2);
    v53 = v7;
    if (v18)
    {
      v14._rawValue;
      rawValue = v14._rawValue;
      v19 = (v14._rawValue + 40);
      while (1)
      {
        v55 = 0;
        v51 = v18;
        v20 = *(v19 - 1);
        v7 = *v19;
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
        v22 = swift_allocObject(v21, 40, 7);
        v22[2] = 1;
        v22[3] = 2;
        v22[4] = &type metadata for Double;
        v7;
        v23._countAndFlagsBits = v20;
        v23._object = v7;
        DataFrame.validateColumnTypes(_:_:context:)(v23, v22, __PAIR128__(0xEC00000061746164, 0x2065727574616546));
        if (v24)
        {
          break;
        }

        v7;
        v22;
        v19 += 2;
        v18 = v51 - 1;
        if (v51 == &dword_0 + 1)
        {
          v55 = 0;
          rawValue;
          v7 = v53;
          goto LABEL_8;
        }
      }

      v7;
      rawValue;
      v22;
    }

    else
    {
      v55 = 0;
LABEL_8:
      v25 = v54;
      v51 = v7[2];
      (v51)(v54, v47, v52);
      v26._countAndFlagsBits = 0x5F6E6F6973736573;
      v26._object = 0xEA00000000006469;
      v27 = DataFrame.indexOfColumn(_:)(v26);
      v28 = v48;
      if (v27.is_nil)
      {
        v29 = DataFrame.shape.getter();
        if (v29 < 0)
        {
          BUG();
        }

        v41 = v29;
        v42 = 0;
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Repeated<Int>);
        v31 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Repeated<Int> and conformance Repeated<A>, &demangling cache variable for type metadata for Repeated<Int>, &protocol conformance descriptor for Repeated<A>);
        v32 = v45;
        Column.init<A>(name:contents:)(0x5F6E6F6973736573, 0xEA00000000006469, &v41, &type metadata for Int, v30, v31);
        v25 = v54;
        DataFrame.append<A>(column:)(v32, &type metadata for Int);
        (*(v43 + 8))(v32, v44);
        v7 = v53;
        v28 = v48;
      }

      v33 = v7;
      v7 = v52;
      *v15.i64 = (v51)(v28, v25, v52);
      v34 = v55;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v28, 0, v15);
      if (v34)
      {
        (v33[1])(v54, v7);
      }

      else
      {
        v35 = v41;
        v36 = v42;
        v39 = v41;
        v40 = v42;
        v7 = MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(&v39, v50, *v15.i64, v16);
        outlined consume of Result<_DataTable, Error>(v35, v36);
        (v53[1])(v54, v52);
      }
    }
  }

  return v7;
}

uint64_t *MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(uint64_t a1, int a2, double a3, double a4)
{
  v209 = v4;
  v219 = v5;
  v202 = a2;
  v183 = type metadata accessor for DataFrame.Rows(0);
  v184 = *(v183 - 8);
  v6 = *(v184 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v185 = &v166;
  v200 = type metadata accessor for TensorShape(0);
  v181 = *(v200 - 8);
  v9 = *(v181 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v182 = &v166;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v214 = &v166;
  v168 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v14 = *(*(v168 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v169 = &v166;
  v216 = type metadata accessor for Tensor(0);
  v222 = *(v216 - 8);
  v17 = v222[8];
  v18 = alloca(v17);
  v19 = alloca(v17);
  v193 = &v166;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v194 = &v166;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v195 = &v166;
  v170 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v24 = *(*(v170 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v199 = &v166;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v171 = &v166;
  v172 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v30 = *(*(v172 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v196 = &v166;
  *&v215 = type metadata accessor for WeightedDataSample(0);
  v33 = *(*(v215 - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v197 = &v166;
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v167 = &v166;
  v176 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v39 = *(*(v176 - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v203 = &v166;
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v43 = alloca(v42);
  v44 = alloca(v42);
  v187 = &v166;
  v45 = alloca(v42);
  v46 = alloca(v42);
  v188 = &v166;
  v47 = alloca(v42);
  v48 = alloca(v42);
  v175 = &v166;
  v49 = alloca(v42);
  v50 = alloca(v42);
  v173 = &v166;
  v51 = alloca(v42);
  v52 = alloca(v42);
  v174 = &v166;
  v53 = alloca(v42);
  v54 = alloca(v42);
  v220 = &v166;
  v178 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v179 = *(v178 - 8);
  v55 = *(v179 + 64);
  v56 = alloca(v55);
  v57 = alloca(v55);
  v177 = &v166;
  v207 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v205 = *(v207 - 8);
  v58 = *(v205 + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v208 = &v166;
  v210 = type metadata accessor for DataFrame(0);
  v206 = *(v210 - 8);
  v61 = *(v206 + 64);
  v62 = alloca(v61);
  v63 = alloca(v61);
  v213 = &v166;
  v64 = alloca(v61);
  v65 = alloca(v61);
  v211 = &v166;
  v186 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v66 = *(*(v186 - 8) + 64);
  v67 = alloca(v66);
  v68 = alloca(v66);
  v221 = &v166;
  v69 = *(*(type metadata accessor for MLActivityClassifier.Configuration(0) - 8) + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v223 = &v166;
  v72 = type metadata accessor for MLActivityClassifier.Model(0);
  v73 = *(*(v72 - 8) + 64);
  v74 = alloca(v73);
  v75 = alloca(v73);
  v76 = *a1;
  v77 = *(a1 + 8);
  outlined init with copy of MLTrainingSessionParameters(v219, &v166, type metadata accessor for MLActivityClassifier.Model);
  v198 = v72;
  v78 = *(v72 + 64);
  v219 = &v166;
  outlined init with copy of MLTrainingSessionParameters(&v166 + v78, v223, type metadata accessor for MLActivityClassifier.Configuration);
  *&v189 = v76;
  BYTE8(v189) = v77;
  outlined copy of Result<_DataTable, Error>(v76, v77);
  outlined copy of Result<_DataTable, Error>(v76, v77);
  outlined copy of Result<_DataTable, Error>(v76, v77);
  v79 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v189, SBYTE8(v189));
  v80 = specialized RandomAccessCollection<>.distance(from:to:)(0, v79, v76, v77);
  outlined consume of Result<_DataTable, Error>(v76, v77);
  v180 = v80;
  v223[3] = v80;
  *&v189 = v76;
  BYTE8(v189) = v77;
  v218 = v76;
  v225 = v77;
  outlined copy of Result<_DataTable, Error>(v76, v77);
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = v211;
  DataFrame.init(_:)(&v189);
  v224 = v223[8];
  v82 = v223[9];
  v204 = v223[6];
  v83 = v223[7];
  v212 = v223[4];
  v84 = v223[5];
  v82;
  v83;
  v84;
  v85 = v209;
  MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n, v224, v82, v204, v83, v84, a3, v212, 0, 1);
  if (v85)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v223, type metadata accessor for MLActivityClassifier.Configuration);
    outlined consume of Result<_DataTable, Error>(v218, v225);
    v86 = type metadata accessor for MLActivityClassifier.Model;
    v87 = v219;
LABEL_3:
    outlined destroy of MLActivityClassifier.ModelParameters(v87, v86);
    return ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  }

  v88 = *(v219 + *(v198 + 60));
  v89 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v223, v88, a3, a4);
  v224 = 0;
  v201 = v88;
  v217 = v89;
  v91 = v89;
  v209 = v89;
  v92 = type metadata accessor for ShuffleSampler(0);
  v93 = v223[1];
  LODWORD(v88) = *(v223 + 16);
  v91;
  v94 = ShuffleSampler.__allocating_init(seed:)(v93, v88);
  v191 = v92;
  v192 = &protocol witness table for ShuffleSampler;
  *&v189 = v94;
  v95 = v177;
  (*(v179 + 104))(v177, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v178);
  v211 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
  v212 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
  v96 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v97 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v217, v180, &v189, 0, v95, 0, 0, v211, v215, v212, v96, v97);
  v209;
  __swift_storeEnumTagSinglePayload(v220, 1, 1, v216);
  v98 = v203;
  Dataset.makeIterator()(v207);
  v99 = *(v176 + 44);
  v212 = *(v98 + v99);
  v204 = *(v98 + v99 + 8);
  v211 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
  while (1)
  {
    v100 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
    dispatch thunk of IteratorProtocol.next()(v100, v211);
    v101 = v189;
    v102 = v167;
    if (v189)
    {
      v217 = v189;
      v212(&v217);
      v101;
      v103 = v102;
      v104 = 0;
    }

    else
    {
      v103 = v167;
      v104 = 1;
    }

    __swift_storeEnumTagSinglePayload(v103, v104, 1, v215);
    v105 = v210;
    v106 = v199;
    if (__swift_getEnumTagSinglePayload(v102, 1, v215) == 1)
    {
      break;
    }

    v107 = v102;
    v108 = v197;
    outlined init with take of WeightedDataSample(v107, v197);
    v109 = type metadata accessor for LSTM.State(0);
    v110 = v171;
    __swift_storeEnumTagSinglePayload(v171, 1, 1, v109);
    v111 = v106 + *(v170 + 48);
    outlined init with take of LSTM.State?(v110, v106);
    v112 = v111;
    v113 = v108;
    v114 = v108;
    v115 = v106;
    (v222[2])(v112, v114, v216);
    v116 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v117 = v196;
    Layer.callAsFunction(_:)(v115, v198, v116);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v115, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
    v118 = v117 + *(v172 + 48);
    v119 = v169;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v113 + *(v215 + 20), v169, &demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
    v120 = v119 + *(v168 + 48);
    v209 = v222[4];
    v121 = v216;
    (v209)(v193, v119, v216);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v120, &demangling cache variable for type metadata for Tensor?);
    v122 = v173;
    __swift_storeEnumTagSinglePayload(v173, 1, 1, v121);
    v123 = v174;
    v124 = v118;
    v125 = v193;
    static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v195, v194, v174, v124, v193, v122);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v122, &demangling cache variable for type metadata for Tensor?);
    v126 = v222[1];
    v126(v125, v121);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for Tensor?);
    v126(v194, v121);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v196, &demangling cache variable for type metadata for (LSTM.State, Tensor));
    outlined destroy of MLActivityClassifier.ModelParameters(v197, type metadata accessor for WeightedDataSample);
    v127 = v220;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, &demangling cache variable for type metadata for Tensor?);
    (v209)(v127, v195, v121);
    __swift_storeEnumTagSinglePayload(v127, 0, 1, v121);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v203, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  (*(v206 + 16))(v213, v221, v105);
  v128 = v175;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, v175, &demangling cache variable for type metadata for Tensor?);
  v129 = v216;
  if (__swift_getEnumTagSinglePayload(v128, 1, v216) == 1)
  {
    BUG();
  }

  Tensor.shape.getter();
  *&v215 = v222[1];
  (v215)(v128, v129);
  v130 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v131 = swift_allocObject(v130, 64, 7);
  v131[2] = 4;
  v131[3] = 8;
  v132 = v185;
  DataFrame.rows.getter(v130, 64, v133, v134);
  v135 = DataFrame.Rows.count.getter();
  v136 = (*(v184 + 8))(v132, v183);
  v131[4] = v135;
  v131[5] = *(v221 + *(v186 + 40));
  v131[6] = 1;
  v222 = *(v201 + 2);
  v131[7] = v222;
  v137 = v182;
  TensorShape.init(_:)(v131, v136);
  v138 = TensorShape.dimensions.getter();
  v139 = TensorShape.dimensions.getter();
  v140 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(v138, v139);
  v138;
  v139;
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = *(v181 + 8);
  v141 = v200;
  (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n)(v137, v200);
  (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n)(v214, v141);
  if (!v140)
  {
    v151 = v187;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, v187, &demangling cache variable for type metadata for Tensor?);
    v152 = v216;
    if (__swift_getEnumTagSinglePayload(v151, 1, v216) == 1)
    {
      BUG();
    }

    Tensor.shape.getter();
    (v215)(v151, v152);
    *&v189 = 0;
    *(&v189 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    *(&v189 + 1);
    *&v189 = 0xD00000000000001FLL;
    *(&v189 + 1) = "aining checkpoint." + 0x8000000000000000;
    v153 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v154 = v200;
    v155._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(v200, v153);
    object = v155._object;
    String.append(_:)(v155);
    object;
    v215 = v189;
    v157 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v157, 0, 0);
    *v158 = v215;
    *(v158 + 16) = 0;
    *(v158 + 32) = 0;
    *(v158 + 48) = 0;
    v159 = v214;
    (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n)(v214, v154);
    swift_willThrow(v159, v154);
    outlined consume of Result<_DataTable, Error>(v218, v225);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, &demangling cache variable for type metadata for Tensor?);
    (*(v205 + 8))(v208, v207);
    outlined destroy of MLActivityClassifier.ModelParameters(v223, type metadata accessor for MLActivityClassifier.Configuration);
    outlined destroy of MLActivityClassifier.ModelParameters(v219, type metadata accessor for MLActivityClassifier.Model);
    (*(v206 + 8))(v213, v210);
    v86 = type metadata accessor for MLActivityClassifier.DataBatcher;
    v87 = v221;
    goto LABEL_3;
  }

  v142 = v188;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, v188, &demangling cache variable for type metadata for Tensor?);
  v143 = v216;
  if (__swift_getEnumTagSinglePayload(v142, 1, v216) == 1)
  {
    BUG();
  }

  v144 = Tensor.scalars<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
  (v215)(v142, v143);
  v145 = v222;
  if (!v222)
  {
    BUG();
  }

  v146 = *(v144 + 16);
  v147 = specialized Array.index(_:offsetBy:limitedBy:)(0, v222, v146);
  if ((v148 & 1) == 0)
  {
    v146 = v147;
  }

  v149 = v201;
  v201;
  v150 = v224;
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms23ChunksOfCountCollectionVySaySdGG_SSs5NeverOTg5128_s8CreateML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n(v144, v145, v146, v149);
  v144;
  if (v202)
  {
    outlined consume of Result<_DataTable, Error>(v218, v225);
LABEL_27:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, &demangling cache variable for type metadata for Tensor?);
    (*(v205 + 8))(v208, v207);
    outlined destroy of MLActivityClassifier.ModelParameters(v223, type metadata accessor for MLActivityClassifier.Configuration);
    outlined destroy of MLActivityClassifier.ModelParameters(v219, type metadata accessor for MLActivityClassifier.Model);
    (*(v206 + 8))(v213, v210);
    outlined destroy of MLActivityClassifier.ModelParameters(v221, type metadata accessor for MLActivityClassifier.DataBatcher);
    return ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  }

  v224 = v150;
  v217 = _swiftEmptyArrayStorage;
  *&v215 = ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n[2];
  if (!v215)
  {
    outlined consume of Result<_DataTable, Error>(v218, v225);
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  v222 = ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  v160 = (ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n + 5);
  v161 = 0;
  while (1)
  {
    v162 = *(v160 - 1);
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = *v160;
    *&v189 = v161;
    *(&v189 + 1) = v162;
    v190 = ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
    v163 = v224;
    closure #2 in MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(&v189, v221, v213);
    v224 = v163;
    if (v163)
    {
      break;
    }

    ++v161;
    ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
    specialized Array.append<A>(contentsOf:)(v166);
    v160 += 2;
    if (v215 == v161)
    {
      v164 = v222;
      v222;
      outlined consume of Result<_DataTable, Error>(v218, v225);
      v164;
      ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n = v217;
      goto LABEL_27;
    }
  }

  v165 = v222;
  v222;
  ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
  v217;
  outlined consume of Result<_DataTable, Error>(v218, v225);
  v165;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v220, &demangling cache variable for type metadata for Tensor?);
  (*(v205 + 8))(v208, v207);
  outlined destroy of MLActivityClassifier.ModelParameters(v223, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(v219, type metadata accessor for MLActivityClassifier.Model);
  (*(v206 + 8))(v213, v210);
  outlined destroy of MLActivityClassifier.ModelParameters(v221, type metadata accessor for MLActivityClassifier.DataBatcher);
  return ML20MLActivityClassifierV08activityD10Prediction4from09perWindowF0SaySSGAA11MLDataTableV_SbtKFSSs10ArraySliceVySdGXEfU_SaySSGTf1cn_n;
}

uint64_t *MLActivityClassifier.predictions(from:perWindowPrediction:)(uint64_t a1, int a2, double a3, double a4, uint64_t a5, int a6)
{
  v8 = v7;
  v46 = a2;
  LOBYTE(a6) = *(a1 + 8);
  v9 = &v40;
  v44 = *a1;
  v40 = v44;
  v45 = a6;
  LOBYTE(v41) = a6;
  v10 = *(v7 + *(type metadata accessor for MLActivityClassifier(0) + 36));
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v40, 0x2065727574616546, 0xEC00000061746164, v10);
  if (!v6)
  {
    v39 = v8;
    v11 = v44;
    v40 = v44;
    v12 = v45;
    LOBYTE(v41) = v45;
    LOBYTE(v42) = 1;
    static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v40, v10, &v42);
    v42 = v11;
    v43 = v12;
    if (v12)
    {
      outlined copy of Result<_DataTable, Error>(v11, 1);
      outlined copy of Result<_DataTable, Error>(v11, 1);
      v13 = tc_v1_flex_list_create(0);
      if (!v13)
      {
        BUG();
      }

      v14 = v13;
      v15 = type metadata accessor for CMLSequence();
      v16 = swift_allocObject(v15, 25, 7);
      *(v16 + 16) = v14;
      *(v16 + 24) = 1;
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v11, 0);
      outlined copy of Result<_DataTable, Error>(v11, 0);
      _DataTable.columnNames.getter();
      v16 = v37[1];
    }

    v40 = 0x5F6E6F6973736573;
    v41 = 0xEA00000000006469;
    v17 = alloca(24);
    v18 = alloca(32);
    v38 = &v40;
    v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v37, v16);
    v38 = 0;

    if (v19)
    {
      v20 = v45;
      v21 = v44;
      outlined consume of Result<_DataTable, Error>(v44, v45);
      v22 = v20;
    }

    else
    {
      v23 = v44;
      v40 = v44;
      LOBYTE(v41) = v45;
      v24 = v45;
      outlined copy of Result<_DataTable, Error>(v44, v45);
      v25 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v40, v41);
      v26 = specialized RandomAccessCollection<>.distance(from:to:)(0, v25, v23, v24);
      outlined consume of Result<_DataTable, Error>(v23, v24);
      v40 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v26);
      v27 = alloca(24);
      v28 = alloca(32);
      v38 = &v40;
      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      v31 = v30;
      v32 = ML14_UntypedColumnC_s5Error_pTt1g5;
      v40;
      MLDataTable.willMutate()();
      v40 = v32;
      LOBYTE(v41) = v31 & 1;
      MLDataTable.addImpl(newColumn:named:)(&v40, 0x5F6E6F6973736573, 0xEA00000000006469);
      if (v43)
      {
        outlined consume of Result<_DataTable, Error>(v32, v31);
        v22 = 1;
        v21 = v42;
      }

      else
      {
        v33 = v31;
        v21 = v42;
        outlined copy of Result<_DataTable, Error>(v42, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v21, 0);
        outlined consume of Result<_DataTable, Error>(v32, v33);
        v22 = 0;
      }
    }

    v34 = v46;
    v40 = v21;
    LOBYTE(v41) = v22;
    LODWORD(v44) = v22;
    outlined copy of Result<_DataTable, Error>(v21, v22);
    v9 = MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(&v40, v34, a3, a4);
    v35 = v44;
    outlined consume of Result<_DataTable, Error>(v21, v44);
    outlined consume of Result<_DataTable, Error>(v21, v35);
  }

  return v9;
}

void *closure #2 in MLActivityClassifier.activityClassifierPrediction(from:perWindowPrediction:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = v4;
  v33 = a3;
  v40 = a2;
  v43 = v3;
  v31 = type metadata accessor for DataFrame.Row(0);
  v32 = *(v31 - 8);
  v5 = *(v32 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v34 = type metadata accessor for DataFrame.Rows(0);
  v35 = *(v34 - 8);
  v8 = *(v35 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *a1;
  v38 = a1[1];
  v12 = a1[2];
  v13 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v14 = *(a2 + *(v13 + 40));
  if (!v14)
  {
    BUG();
  }

  if (__OFSUB__(-v11, 1) && v14 == -1)
  {
    BUG();
  }

  v39 = v12;
  v41 = v13;
  v15 = v11 % v14;
  v37 = v11 % v14;
  v36 = v11 / v14;
  v16 = v40;
  DataFrame.rows.getter(0, v40, v15, v14);
  DataFrame.Rows.subscript.getter(v36);
  (*(v35 + 8))(&v30, v34);
  v17 = *(v41 + 24);
  v18 = *(v16 + v17);
  v19 = *(v16 + v17 + 8);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  DataFrame.Row.subscript.getter(v18, v19, v20);
  (*(v32 + 8))(&v30, v31);
  if (v30)
  {
    v21 = *(v30 + 16);
    v30;
    v22 = *(v41 + 36);
    v23 = *(v40 + v22) * v37;
    if (!is_mul_ok(*(v40 + v22), v37))
    {
      BUG();
    }

    v24 = __OFSUB__(v21, v23);
    v25 = v21 - v23;
    if (v24)
    {
      BUG();
    }

    if (v25 <= 0)
    {
      result = _swiftEmptyArrayStorage;
    }

    else
    {
      v26 = v39;
      v39;
      result = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v38, v26, v25);
    }

    *v43 = result;
  }

  else
  {
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    v29._countAndFlagsBits = 0x6C6562616CLL;
    v29._object = 0xE500000000000000;
    static MLCreateError.featureNotFound(feature:)(v29);
    return swift_willThrow(0x6C6562616CLL, 0xE500000000000000);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, CMLDictionary.size.getter);
}

{
  v2 = CMLSequence.size.getter();
  if (a1 < 0 || v2 < a1)
  {
    BUG();
  }

  v3 = CMLSequence.size.getter();
  if (a2 < 0 || v3 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, CMLSequence.size.getter);
}

{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2);
}

{

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2, CMLSequence.size.getter);

  if (a1 < 0 || v3 < a1)
  {
    BUG();
  }

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, CMLSequence.size.getter);

  if (a2 < 0 || v5 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

{
  return specialized RandomAccessCollection<>.distance(from:to:)(a1, a2);
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = a4 & 1;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v6 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a3, v11);
  if (a1 < 0 || v6 < a1)
  {
    BUG();
  }

  v10 = a3;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v10, a4 & 1);
  if (a2 < 0 || v7 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t (__cdecl *a3)())
{
  v4 = a3();
  if (a1 < 0 || v4 < a1)
  {
    BUG();
  }

  v5 = (a3)(a1);
  if (a2 < 0 || v5 < a2)
  {
    BUG();
  }

  return a2 - a1;
}

char specialized closure #1 in Sequence<>.contains(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__PAIR128__(a4 ^ a2, a3 ^ a1) == 0)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a3, a4, 0);
  }
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  result = 1;
  if (!v2 || a1 == a2)
  {
    return result;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  if (v2 == 1)
  {
    return result;
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  if (v2 != 2)
  {
    v4 = 0;
    do
    {
      if (v2 - 2 == v4)
      {
        BUG();
      }

      if (v4 + 2 >= v2)
      {
        BUG();
      }

      result = a1[v4 + 6] == a2[v4 + 6];
      if (a1[v4 + 6] != a2[v4 + 6])
      {
        break;
      }
    }

    while (v2 - 3 != v4++);
  }

  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t *a1, void *a2)
{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = specialized closure #1 in MLUntypedColumn.init<A>(_:)(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *v4 = result;
  }

  return result;
}

uint64_t outlined init with take of WeightedDataSample(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for WeightedDataSample(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of LSTM.State?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *__src;
    *v3 = *__src;
    v3 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return memcpy(__dst, __src, *(v4 + 64));
      }

      v8 = type metadata accessor for MLImageClassifier.DataSource(0);
      v9 = swift_getEnumCaseMultiPayload(__src, v8);
      if (v9 == 2)
      {
        v14 = *__src;
        *v3 = *__src;
        v14;
        v18 = 2;
      }

      else
      {
        if (v9 != 1)
        {
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 16))(__dst, __src, v17);
          v16 = v8;
          v15 = 0;
          goto LABEL_13;
        }

        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 16))(__dst, __src, v10);
        v18 = 1;
      }

      v15 = v18;
      __dst = v3;
      v16 = v8;
LABEL_13:
      swift_storeEnumTagMultiPayload(__dst, v16, v15);
      swift_storeEnumTagMultiPayload(v3, a3, 1);
      return v3;
    }

    v12 = *__src;
    *v3 = *__src;
    v12;
    swift_storeEnumTagMultiPayload(v3, a3, 2);
  }

  return v3;
}

uint64_t destroy for MLImageClassifier.ModelParameters.ValidationData(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    return *a1;
  }

  if (result != 1)
  {
    return result;
  }

  v3 = type metadata accessor for MLImageClassifier.DataSource(0);
  result = swift_getEnumCaseMultiPayload(a1, v3);
  if (result == 2)
  {
    return *a1;
  }

  if (result <= 1)
  {
    v4 = type metadata accessor for URL(0);
    return (*(*(v4 - 8) + 8))(a1, v4);
  }

  return result;
}

uint64_t *initializeWithCopy for MLImageClassifier.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v4 = __dst;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v6 = type metadata accessor for MLImageClassifier.DataSource(0);
    v7 = swift_getEnumCaseMultiPayload(__src, v6);
    if (v7 == 2)
    {
      v11 = *__src;
      *v4 = *__src;
      v11;
      v15 = 2;
    }

    else
    {
      if (v7 != 1)
      {
        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 16))(__dst, __src, v14);
        v13 = v6;
        v12 = 0;
        goto LABEL_11;
      }

      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 16))(__dst, __src, v8);
      v15 = 1;
    }

    v12 = v15;
    __dst = v4;
    v13 = v6;
LABEL_11:
    swift_storeEnumTagMultiPayload(__dst, v13, v12);
    swift_storeEnumTagMultiPayload(v4, a3, 1);
    return v4;
  }

  v9 = *__src;
  *v4 = *__src;
  v9;
  swift_storeEnumTagMultiPayload(v4, a3, 2);
  return v4;
}

uint64_t *assignWithCopy for MLImageClassifier.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = __dst;
  if (__dst == __src)
  {
    return v3;
  }

  outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v6 = type metadata accessor for MLImageClassifier.DataSource(0);
    v7 = swift_getEnumCaseMultiPayload(__src, v6);
    if (v7 == 2)
    {
      v11 = *__src;
      *v3 = *__src;
      v11;
      v15 = 2;
    }

    else
    {
      if (v7 != 1)
      {
        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 16))(__dst, __src, v14);
        v13 = v6;
        v12 = 0;
        goto LABEL_12;
      }

      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 16))(__dst, __src, v8);
      v15 = 1;
    }

    v12 = v15;
    __dst = v3;
    v13 = v6;
LABEL_12:
    swift_storeEnumTagMultiPayload(__dst, v13, v12);
    swift_storeEnumTagMultiPayload(v3, a3, 1);
    return v3;
  }

  v9 = *__src;
  *v3 = *__src;
  v9;
  swift_storeEnumTagMultiPayload(v3, a3, 2);
  return v3;
}

uint64_t type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLImageClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *initializeWithTake for MLImageClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLImageClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v8 = 1;
    v7 = v4;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      goto LABEL_9;
    }

    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 32))(__dst, __src, v6);
    v7 = v4;
    v8 = 0;
  }

  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

void *assignWithTake for MLImageClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLImageClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v8 = 1;
    v7 = v4;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      goto LABEL_10;
    }

    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 32))(__dst, __src, v6);
    v7 = v4;
    v8 = 0;
  }

  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

uint64_t type metadata completion function for MLImageClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_33E3B0;
  result = type metadata accessor for MLImageClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    v5[2] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

Swift::tuple_training_OpaquePointer_validation_OpaquePointer __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.ModelParameters.ValidationData.extractFilesByLabel(trainingFiles:)(Swift::OpaquePointer trainingFiles)
{
  v17 = v1;
  v3 = *(*(type metadata accessor for MLImageClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v16;
  v6 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLImageClassifier.ModelParameters.ValidationData(v2, &v16);
  switch(swift_getEnumCaseMultiPayload(&v16, v6))
  {
    case 0u:
    case 3u:
      trainingFiles._rawValue;
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
      v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v10, &protocol witness table for String);
      goto LABEL_6;
    case 1u:
      rawValue = trainingFiles._rawValue;
      v13 = v16;
      outlined init with take of MLImageClassifier.DataSource(&v16, v16);
      v14 = v17;
      v11 = static _ImageUtilities.getImageURLsAndLabels(from:)(v13);
      outlined destroy of MLImageClassifier.ModelParameters.ValidationData(v13, type metadata accessor for MLImageClassifier.DataSource);
      if (!v14)
      {
        trainingFiles._rawValue;
      }

      break;
    case 2u:
      v11 = v16;
      trainingFiles._rawValue;
LABEL_6:
      rawValue = trainingFiles._rawValue;
      break;
  }

  result.training._rawValue = rawValue;
  result.validation._rawValue = v11;
  return result;
}

uint64_t outlined init with copy of MLImageClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLImageClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLImageClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8CreateML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v1 - 1;
  v30 = a1 + 64;
  while (1)
  {
    if (v6)
    {
      BUG();
    }

    if (v4 < 0 || v4 >= 1 << *(v2 + 32))
    {
      BUG();
    }

    v9 = *(v7 + 8 * (v4 >> 6));
    v10 = 1 << v4;
    if (!_bittest64(&v9, v4))
    {
      BUG();
    }

    if (v5 != *(v2 + 36))
    {
      BUG();
    }

    v26 = v4 >> 6;
    v27 = v5;
    v23 = v3;
    v28 = v8;
    v24 = v4;
    v11 = 24 * v4;
    v12 = *(v2 + 48);
    v13 = *(v2 + 56);
    v14 = *(v12 + v11);
    v31 = *(v12 + v11 + 8);
    v32 = *(v12 + v11 + 16);
    v15 = *(v13 + v11);
    v16 = *(v13 + v11 + 8);
    v17 = *(v13 + v11 + 16);
    outlined copy of MLDataValue(v14, v31, v32);
    outlined copy of MLDataValue(v15, v16, v17);
    outlined copy of MLDataValue(v14, v31, v32);
    outlined copy of MLDataValue(v15, v16, v17);
    outlined copy of MLDataValue(v14, v31, v32);
    outlined copy of MLDataValue(v15, v16, v17);
    outlined consume of MLDataValue(v14, v31, v32);
    outlined consume of MLDataValue(v15, v16, v17);
    outlined consume of MLDataValue(v14, v31, v32);
    v25 = v15;
    outlined consume of MLDataValue(v15, v16, v17);
    if (v32 != 2)
    {
      BUG();
    }

    if (v17 != 1)
    {
      BUG();
    }

    v31;
    outlined consume of MLDataValue(v14, v31, 2);
    outlined consume of MLDataValue(v15, v16, 1);
    v3 = v23;
    v18 = v23[2];
    v19 = v18 + 1;
    if (v23[3] >> 1 <= v18)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23[3] >= 2uLL, v18 + 1, 1);
      v19 = v18 + 1;
      v3 = v23;
    }

    v3[2] = v19;
    v20 = 3 * v18;
    v3[v20 + 4] = v14;
    v3[v20 + 5] = v31;
    v3[v20 + 6] = v25;
    v2 = a1;
    v21 = -1 << *(a1 + 32);
    if (v24 >= -v21)
    {
      BUG();
    }

    v7 = v30;
    if ((v10 & *(v30 + 8 * v26)) == 0)
    {
      BUG();
    }

    if (v27 != *(a1 + 36))
    {
      BUG();
    }

    v4 = _HashTable.occupiedBucket(after:)(v24, v30, ~v21);
    v8 = v28 - 1;
    if (!v28)
    {
      break;
    }

    v5 = *(a1 + 36);
    v6 = 0;
  }

  return v3;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 40);
    do
    {
      v6 = v1;
      v7 = *(v2 - 1);
      v3 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v3 + 1;
      v8 = *v2;
      *v2;
      if (v9 >> 1 <= v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v10, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v4 = 2 * v3;
      _swiftEmptyArrayStorage[v4 + 4] = v7;
      _swiftEmptyArrayStorage[v4 + 5] = v8;
      v2 += 7;
      v1 = v6 - 1;
    }

    while (v6 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_Sds5NeverOTg5194_s8CreateML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v24 = _swiftEmptyArrayStorage;
  v2 = specialized Dictionary.startIndex.getter(a1);
  v3 = a1;
  v4 = v2;
  v6 = v5;
  v7 = a1 + 64;
  v8 = v1 - 1;
  while (1)
  {
    if (v4 < 0 || v4 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v19 = v8;
    v9 = *(v7 + 8 * (v4 >> 6));
    if (!_bittest64(&v9, v4))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v10 = *(*(v3 + 56) + 8 * v4);
    v11 = v24;
    v22 = v24;
    v12 = v24[2];
    v13 = v24[3];
    v14 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      v21 = v24[2];
      v25 = v7;
      v20 = v6;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 >= 2, v14, 1);
      v12 = v21;
      v6 = v20;
      v7 = v25;
      v3 = a1;
      v11 = v22;
    }

    v11[2] = v14;
    v11[v12 + 4] = v10;
    v15 = *(v3 + 32);
    if (v4 >= -(-1 << v15))
    {
      BUG();
    }

    if (((1 << v4) & *(v7 + 8 * (v4 >> 6))) == 0)
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v24 = v11;
    v16 = v7;
    v17 = _HashTable.occupiedBucket(after:)(v4, v7, ~(-1 << v15));
    --v8;
    if (!v19)
    {
      break;
    }

    v4 = v17;
    v3 = a1;
    v6 = *(a1 + 36);
    v7 = v16;
  }

  return v11;
}

uint64_t MLObjectDetector.evaluation(on:)()
{
  v2 = v1;
  v54 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = v35;
  v8 = *(type metadata accessor for MLObjectDetector(0) + 24);
  v9 = *(v1 + v8);
  v10 = *(v1 + v8 + 1);
  LOBYTE(v8) = *(v1 + v8 + 2);
  LOBYTE(v55) = v9;
  BYTE1(v55) = v10;
  BYTE2(v55) = v8;
  v11 = 0;
  v12 = MLObjectDetector.DataSource.gatherAnnotatedImages(annotationType:)(&v55);
  v52 = v4;
  v51 = v3;
  v13 = v12[2];
  if (v13)
  {
    v48 = v2;
    v47 = 0;
    v55 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v56 = v55;
    v14 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v49 = v12;
    v44 = v12 + v14;
    v15 = 0;
    v45 = *(v52 + 16);
    v46 = *(v52 + 72);
    v16 = v51;
    v17 = v53;
    v43 = v13;
    do
    {
      v42 = v15;
      v45(v17, &v44[v15 * v46], v16);
      AnnotatedFeature.annotation.getter(v16);
      v50 = v39;
      v18 = *(v39 + 16);
      v19 = _swiftEmptyArrayStorage;
      if (v18)
      {
        v20 = (v50 + 56);
        v19 = _swiftEmptyArrayStorage;
        do
        {
          v40 = *(v20 - 3);
          v21 = *(v20 - 2);
          v37 = *(v20 - 1);
          v36 = *v20;
          v38 = _mm_mul_ps(v36, xmmword_33E3E0);
          v41 = v21;
          v21;
          if (!swift_isUniquelyReferenced_nonNull_native(v19))
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          }

          v22 = *(v19 + 2);
          if (*(v19 + 3) >> 1 <= v22)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v19 + 3) >= 2uLL, v22 + 1, 1, v19);
          }

          v23 = _mm_cvtps_pd(_mm_add_ps(v37, v38));
          v24 = _mm_cvtps_pd(*v36.f32);
          *(v19 + 2) = v22 + 1;
          v25 = 56 * v22;
          *&v19[v25 + 32] = v40;
          *&v19[v25 + 40] = v41;
          *&v19[v25 + 48] = v23;
          *&v19[v25 + 64] = v24;
          *&v19[v25 + 80] = 0x3FF0000000000000;
          v20 += 4;
          --v18;
        }

        while (v18);
      }

      v50;
      v17 = v53;
      v16 = v51;
      (*(v52 + 8))(v53, v51);
      v26 = v56;
      v55 = v56;
      v27 = v56[2];
      if (v56[3] >> 1 <= v27)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56[3] >= 2uLL, v27 + 1, 1);
        v17 = v53;
        v26 = v55;
      }

      v15 = v42 + 1;
      v26[2] = v27 + 1;
      v56 = v26;
      v26[v27 + 4] = v19;
    }

    while (v15 != v43);
    v28 = v54;
    v11 = v47;
    v2 = v48;
    v12 = v49;
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
    v28 = v54;
  }

  v29 = alloca(24);
  v30 = alloca(32);
  v36.i64[0] = v2;
  MLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5(partial apply for closure #2 in MLObjectDetector.evaluation(on:), v35, v12);
  if (v11)
  {
    v12;
    result = v56;
    *v28 = v11;
    *(v28 + 8) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 1;
  }

  else
  {
    v33 = MLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5;
    v12;
    v34 = v56;
    static MLObjectDetector.evaluation(on:detectedObjects:)(v56, v33);
    v34;
    return v33;
  }

  return result;
}

void *closure #2 in MLObjectDetector.evaluation(on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v15 = v4;
  v16 = a2;
  v18 = v3;
  v5 = type metadata accessor for URL(0);
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
  AnnotatedFeature.feature.getter(v9);
  URL.init(fileURLWithPath:)(v13[1], v14);
  v14;
  v10 = MLObjectDetector.modelPredictions(from:)();
  if (v4)
  {
    (*(v19 + 8))(v13, v5);
    result = v17;
    *v17 = v4;
  }

  else
  {
    v12 = v10;
    (*(v19 + 8))(v13, v5);
    result = v18;
    *v18 = v12;
  }

  return result;
}

void *static MLObjectDetector.evaluation(on:detectedObjects:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = static MLObjectDetector.makeAnnotatedFeatures(groundTruthObjects:detectedObjects:)(a1, a2);
  v6 = v3;
  if (!v3)
  {
    v79 = result[2];
    v81 = v4;
    if (v79)
    {
      v80 = result + 4;
      v7 = _swiftEmptyDictionarySingleton;
      v104 = 0;
      v91 = 0;
      v8 = 0;
      v82 = result;
      do
      {
        if (v8 >= result[2])
        {
          BUG();
        }

        v87 = v7;
        v77 = v8;
        v9 = v80[4 * v8];
        v10 = v80[4 * v8 + 1];
        v11 = v80[4 * v8 + 2];
        v90 = v6;
        v12 = v80[4 * v8 + 3];
        v9;
        v10;
        v12;
        v83 = v9;
        v85 = v10;
        v93 = v11;
        v101 = v12;
        v13 = static MLObjectDetector.evaluate(annotatedPredictionForLabel:)(v9, v10, v11, v12);
        v6 = v90;
        v14 = v13;
        v98 = v13[2];
        v7 = v87;
        if (v98)
        {
          v95 = v13;
          v78 = v13[4];
          v101;
          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v104, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
          v105 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v101);
          v17 = (v16 & 1) == 0;
          v18 = __OFADD__(_swiftEmptyDictionarySingleton[2], v17);
          v19 = _swiftEmptyDictionarySingleton[2] + v17;
          if (v18)
          {
            BUG();
          }

          v20 = v16;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19))
          {
            v21 = v101;
            v22 = v101;
            v105 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v101);
            LOBYTE(v25) = v25 & 1;
            if ((v20 & 1) != v25)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v21 = v101;
          }

          v26 = _swiftEmptyDictionarySingleton;
          if ((v20 & 1) == 0)
          {
            _swiftEmptyDictionarySingleton[(v105 >> 6) + 8] |= 1 << v105;
            v27 = _swiftEmptyDictionarySingleton[6];
            v28 = 16 * v105;
            *(v27 + v28) = v93;
            *(v27 + v28 + 8) = v21;
            *(_swiftEmptyDictionarySingleton[7] + 8 * v105) = _swiftEmptyArrayStorage;
            v29 = _swiftEmptyDictionarySingleton[2];
            _swiftEmptyDictionarySingleton;
            v18 = __OFADD__(1, v29);
            v30 = v29 + 1;
            if (v18)
            {
              BUG();
            }

            _swiftEmptyDictionarySingleton[2] = v30;
            v26 = v21;
          }

          v26;
          v31 = _swiftEmptyDictionarySingleton[7];

          v32 = *(v31 + 8 * v105);
          v33 = swift_isUniquelyReferenced_nonNull_native(v32);
          *(v31 + 8 * v105) = v32;
          if (!v33)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
            *(v31 + 8 * v105) = v32;
          }

          v34 = v32[2];
          if (v32[3] >> 1 <= v34)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v34 + 1, 1, v32);
            *(v31 + 8 * v105) = v32;
          }

          v32[2] = v34 + 1;
          v32[v34 + 4] = v78;
          v101;
          v101;
          v35 = 0;
          v36 = v95;
          do
          {
            v37 = v36[v35 + 4];
            if ((v37 & 0xFFFFFFFFFFFFFLL) == 0 || (~v37 & 0x7FF0000000000000) != 0)
            {
              if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
              }

              v38 = _swiftEmptyArrayStorage[2];
              v39 = v38 + 1;
              if (_swiftEmptyArrayStorage[3] >> 1 <= v38)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v38 + 1, 1);
                v39 = v38 + 1;
              }

              _swiftEmptyArrayStorage[2] = v39;
              _swiftEmptyArrayStorage[v38 + 4] = v37;
              v36 = v95;
            }

            ++v35;
          }

          while (v98 != v35);
          v36;
          v40 = _swiftEmptyArrayStorage[2];
          v41 = 0.0;
          if (v40)
          {
            v42 = 0;
            v43 = v91;
            do
            {
              v41 = v41 + *&_swiftEmptyArrayStorage[v42++ + 4];
            }

            while (v40 != v42);
          }

          else
          {
            v43 = v91;
          }

          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v43, 0);
          v44 = swift_isUniquelyReferenced_nonNull_native(v87);
          v99 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v101);
          v46 = (v45 & 1) == 0;
          v18 = __OFADD__(v87[2], v46);
          v47 = v87[2] + v46;
          if (v18)
          {
            BUG();
          }

          v48 = v45;
          v49 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v44, v47);
          v50 = v87;
          if (v49)
          {
            v22 = v101;
            v99 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v101);
            LOBYTE(v25) = v25 & 1;
            if ((v48 & 1) != v25)
            {
LABEL_71:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v22, v25, v23, v24);
              BUG();
            }
          }

          v51 = v87;
          if ((v48 & 1) == 0)
          {
            v87[(v99 >> 6) + 8] |= 1 << v99;
            v52 = v87[6];
            v53 = 16 * v99;
            *(v52 + v53) = v93;
            *(v52 + v53 + 8) = v101;
            *(v87[7] + 8 * v99) = _swiftEmptyArrayStorage;
            v54 = v87[2];
            v87;
            v18 = __OFADD__(1, v54);
            v55 = v54 + 1;
            if (v18)
            {
              BUG();
            }

            v87[2] = v55;
            v51 = v101;
            v50 = v87;
          }

          v88 = v50;
          v51;
          v56 = v50[7];

          v57 = *(v56 + 8 * v99);
          v58 = swift_isUniquelyReferenced_nonNull_native(v57);
          *(v56 + 8 * v99) = v57;
          if (!v58)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
            *(v56 + 8 * v99) = v57;
          }

          v59 = v57[2];
          if (v57[3] >> 1 <= v59)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2uLL, v59 + 1, 1, v57);
            *(v56 + 8 * v99) = v57;
          }

          v57[2] = v59 + 1;
          *&v57[v59 + 4] = v41 / v40;
          swift_bridgeObjectRelease_n(v101, 2);
          v85;
          v83;
          v104 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v91 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v7 = v88;
          v6 = v90;
        }

        else
        {
          v101;
          v85;
          v9;
          v14;
        }

        v8 = v77 + 1;
        result = v82;
      }

      while (v77 + 1 != v79);
      v82;
      v60 = v91;
    }

    else
    {
      result;
      v104 = 0;
      v60 = 0;
      v7 = _swiftEmptyDictionarySingleton;
    }

    v92 = v60;
    v61 = specialized _NativeDictionary.mapValues<A>(_:)(_swiftEmptyDictionarySingleton);
    v89 = v7;
    v94 = specialized _NativeDictionary.mapValues<A>(_:)(v7);
    v84 = v61;
    ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_Sds5NeverOTg5194_s8CreateML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm(v61);
    v63 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm;
    v64 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm[2];
    v65 = _swiftEmptyArrayStorage;
    if (v64)
    {
      v66 = 0;
      v96 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm;
      v102 = ML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm[2];
      do
      {
        v67 = v63[v66 + 4];
        if ((v67 & 0xFFFFFFFFFFFFFLL) == 0 || (~v67 & 0x7FF0000000000000) != 0)
        {
          if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v68 = _swiftEmptyArrayStorage[2];
          v69 = v68 + 1;
          v63 = v96;
          v64 = v102;
          if (_swiftEmptyArrayStorage[3] >> 1 <= v68)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v69, 1);
            v64 = v102;
            v63 = v96;
          }

          _swiftEmptyArrayStorage[2] = v69;
          _swiftEmptyArrayStorage[v68 + 4] = v67;
          v65 = _swiftEmptyArrayStorage;
        }

        ++v66;
      }

      while (v64 != v66);
    }

    v63;
    v86 = specialized Sequence<>.mean()(_swiftEmptyArrayStorage);

    v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_Sds5NeverOTg5194_s8CreateML16MLObjectDetectorV10evaluation2on15detectedObjectsAA0cD7MetricsVSaySayAC16ObjectAnnotationVGG_ALtKFZSdSS3key_Sd5valuet_tcfu1_33_02b57a39088027ce0a04a12694145150SSAM_SdANtSdTf3nnnpk_nTf1cn_nTm(v94);
    v71 = v70;
    v72 = v70[2];
    if (v72)
    {
      v65 = _swiftEmptyArrayStorage;
      v73 = 0;
      v103 = v70;
      v97 = v70[2];
      do
      {
        v74 = v71[v73 + 4];
        if ((v74 & 0xFFFFFFFFFFFFFLL) == 0 || (~v74 & 0x7FF0000000000000) != 0)
        {
          if (!swift_isUniquelyReferenced_nonNull_native(v65))
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1);
          }

          v75 = v65[2];
          v76 = v65;
          v72 = v97;
          if (v65[3] >> 1 <= v75)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v65[3] >= 2uLL, v75 + 1, 1);
            v72 = v97;
            v76 = v65;
          }

          v76[2] = v75 + 1;
          v76[v75 + 4] = v74;
          v65 = v76;
          v71 = v103;
        }

        ++v73;
      }

      while (v72 != v73);
    }

    v89;
    v71;
    _swiftEmptyDictionarySingleton;
    v100 = specialized Sequence<>.mean()(v65);

    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v104, 0);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v92, 0);
    result = v81;
    *v81 = v94;
    *(v81 + 8) = v84;
    *(v81 + 16) = v100;
    *(v81 + 24) = v86;
    *(v81 + 32) = 0;
  }

  return result;
}

uint64_t MLObjectDetector.evaluation(on:imageColumn:annotationColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v23 = a4;
  v32 = v6;
  v25 = v7;
  v27 = a5;
  v9 = *a1;
  v10 = *(a1 + 8);
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v28, v20);
  inited[2] = 1;
  inited[3] = 2;
  v24 = a2;
  inited[4] = a2;
  inited[5] = a3;
  v29 = v9;
  v30 = v9;
  LOBYTE(v9) = v10;
  v31 = v10;
  a3;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v30, 0x4C52556567616D49, 0xE800000000000000, inited);
  v26 = a3;
  v30 = v29;
  v31 = v10;
  v12 = swift_initStackObject(v28, v21);
  v12[2] = 1;
  v12[3] = 2;
  v13 = v23;
  v12[4] = v23;
  v14 = v27;
  v12[5] = v27;
  v14;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v30, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v12);
  swift_setDeallocating(v12);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v30 = v29;
  v35 = v9;
  v31 = v9;
  v15 = swift_initStackObject(v28, v22);
  v15[2] = 1;
  v15[3] = 2;
  v15[4] = v24;
  v16 = v26;
  v15[5] = v26;
  v33 = 2;
  v34 = 3;
  v16;
  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v30, v15, &v33, v13, v27, &v34);
  swift_setDeallocating(v15);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v17 = *v25;
  v30 = v29;
  v31 = v35;
  v18 = _Model.evaluation(from:)(&v30);
  static MLObjectDetector.extractMetrics(from:)(v18, a6);
}

void *static MLObjectDetector.makeAnnotatedFeatures(groundTruthObjects:detectedObjects:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  a1;
  a2;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = specialized Zip2Sequence.Iterator.next()();
    if (!v5)
    {
      break;
    }

    v7 = v6;
    v49 = v5;
    ML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm(v5);
    v9 = v3;
    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(ML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm);
    v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16MLObjectDetectorV16ObjectAnnotationVG_SSs5NeverOTg503_s8d4ML16fg88V21makeAnnotatedFeatures18groundTruthObjects08detectedJ0SayAC0F18PredictionForLabelVGSays4AC16hI67VGG_AMtKFZSSAKcfu_33_5beb3c594ea6d4a9def05566b5b2e9caAKSSTf3nnnpk_nTf1cn_nTm(v7);
    v12 = specialized Set.union<A>(_:)(v11, v10);
    v13 = 1 << *(v12 + 32);
    v14 = ~(-1 << v13);
    if (v13 >= 64)
    {
      v14 = -1;
    }

    v50 = v12;
    v15 = *(v12 + 56) & v14;
    v48 = (v13 + 63) >> 6;
    v16 = 0;
    v47 = v7;
    while (1)
    {
      v42 = v4;
      if (v15)
      {
        goto LABEL_22;
      }

      v17 = v16 + 1;
      if (__OFADD__(1, v16))
      {
        BUG();
      }

      if (v17 >= v48)
      {
        goto LABEL_38;
      }

      v15 = *(v50 + 8 * v17 + 56);
      if (v15)
      {
        ++v16;
        goto LABEL_22;
      }

      v18 = v16 + 2;
      if (v16 + 2 >= v48)
      {
        goto LABEL_38;
      }

      v15 = *(v50 + 8 * v17 + 64);
      if (!v15)
      {
        v18 = v16 + 3;
        if (v16 + 3 >= v48)
        {
          goto LABEL_38;
        }

        v15 = *(v50 + 8 * v17 + 72);
        if (!v15)
        {
          v18 = v16 + 4;
          if (v16 + 4 >= v48)
          {
            goto LABEL_38;
          }

          v15 = *(v50 + 8 * v17 + 80);
          if (!v15)
          {
            v18 = v16 + 5;
            if (v16 + 5 >= v48)
            {
              goto LABEL_38;
            }

            v15 = *(v50 + 8 * v17 + 88);
            if (!v15)
            {
              v18 = v16 + 6;
              if (v16 + 6 >= v48)
              {
                goto LABEL_38;
              }

              v15 = *(v50 + 8 * v17 + 96);
              if (!v15)
              {
                break;
              }
            }
          }
        }
      }

      v16 = v18;
LABEL_22:
      _BitScanForward64(&v19, v15);
      v20 = *(v50 + 48);
      v43 = v16;
      v21 = (v16 << 10) | (16 * v19);
      v22 = *(v20 + v21);
      v23 = *(v20 + v21 + 8);
      swift_bridgeObjectRetain_n(v23, 2);
      v49;
      v24 = v9;
      v25 = specialized _ArrayProtocol.filter(_:)(v49, v22, v23);
      v23;
      v47;
      v26 = v25;
      v44 = v22;
      v45 = specialized _ArrayProtocol.filter(_:)(v47, v22, v23);
      v27 = v25[2];
      if (v27)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v28 = _swiftEmptyArrayStorage[2];
        v29 = 32 * v28 + 48;
        v46 = v26;
        v30 = (v26 + 8);
        do
        {
          v31 = v28;
          v32 = *(v30 - 1);
          v33 = *v30;
          ++v28;
          if (_swiftEmptyArrayStorage[3] >> 1 <= v31)
          {
            v40 = *(v30 - 1);
            v41 = *v30;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v28, 1);
          }

          _swiftEmptyArrayStorage[2] = v28;
          *(&_swiftEmptyArrayStorage[-2] + v29) = v32;
          *(_swiftEmptyArrayStorage + v29) = v33;
          v29 += 32;
          v30 = (v30 + 56);
          --v27;
        }

        while (v27);
        v46;
      }

      else
      {
        v25;
      }

      v4 = v42;
      if (!swift_isUniquelyReferenced_nonNull_native(v42))
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1, v42);
      }

      v34 = v4[2];
      if (v4[3] >> 1 <= v34)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v34 + 1, 1, v4);
      }

      v15 &= v15 - 1;
      v4[2] = v34 + 1;
      v35 = 4 * v34;
      v4[v35 + 4] = v45;
      v4[v35 + 5] = _swiftEmptyArrayStorage;
      v4[v35 + 6] = v44;
      v4[v35 + 7] = v23;
      v9 = v24;
      v7 = v47;
      v16 = v43;
    }

    v36 = v16 + 7;
    while (v36 < v48)
    {
      v15 = *(v50 + 8 * v36++ + 56);
      if (v15)
      {
        v16 = v36 - 1;
        goto LABEL_22;
      }
    }

LABEL_38:
    v49;

    v3 = v9;
    v7;
  }

  a1;
  a2;
  return v4;
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 80;
  v20 = -*(a1 + 16);
  v5 = 0;
  v27 = _swiftEmptyArrayStorage;
  v24 = a3;
LABEL_2:
  v6 = (v4 + 56 * v5);
  v7 = v5 + 1;
  while (v7 + v20 != 1)
  {
    if ((v7 - 1) >= *(a1 + 16))
    {
      BUG();
    }

    v8 = *(v6 - 6);
    v9 = *(v6 - 5);
    v18 = *(v6 - 2);
    v19 = *(v6 - 1);
    v21 = *v6;
    v25 = v7;
    if (!(a2 ^ v8 | a3 ^ v9))
    {
      v8 = a2;
      v10 = *(v6 - 5);
LABEL_9:
      v23 = v10;
      v10;
      v12 = v27;
      v26 = v27;
      if (!swift_isUniquelyReferenced_nonNull_native(v27))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1);
        v12 = v27;
      }

      v4 = a1 + 80;
      v5 = v25;
      v13 = v12[2];
      v14 = v13 + 1;
      a3 = v24;
      v15 = v23;
      if (v12[3] >> 1 <= v13)
      {
        v28 = v12[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12[3] >= 2uLL, v14, 1);
        v13 = v28;
        v15 = v23;
        v5 = v25;
        a3 = v24;
        v12 = v26;
      }

      v12[2] = v14;
      v16 = 7 * v13;
      v12[v16 + 4] = v8;
      v12[v16 + 5] = v15;
      *&v12[v16 + 6] = v18;
      *&v12[v16 + 8] = v19;
      v27 = v12;
      v12[v16 + 10] = v21;
      goto LABEL_2;
    }

    ++v7;
    v6 += 7;
    v10 = v9;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v8, v9, a2, a3, 0);
    a3 = v24;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  a3;
  a1;
  return v27;
}

void *static MLObjectDetector.evaluate(annotatedPredictionForLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a2;
  v5 = specialized _copySequenceToContiguousArray<A>(_:)(0.5, 1.0, 0.05);
  v34 = a1;
  v6 = *(v5 + 16);
  if (*(a1 + 16))
  {
    if (v6)
    {
      v36 = v4;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v37 = v5;
      v35 = v6;
      do
      {
        if (v8 >= *(v5 + 16))
        {
          BUG();
        }

        *&v38 = v7;
        v39 = *(v5 + 8 * v8 + 32);
        v9 = v34;
        v34;
        v10 = v33;
        v33;
        v11 = v32;
        v32;
        v12 = v10;
        MLObjectDetector.PrecisionRecallCurve.init(annotatedPredictionForLabel:iouThreshold:)(v9, v10, v39, v13, v11);
        v14 = *(v31 + 16);
        if (v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = v38;
          do
          {
            v20 = *(v31 + 8 * v16 + 32);
            v21 = _mm_cmple_sd(v18, v20);
            v18 = _mm_or_pd(_mm_andn_pd(v21, v15), _mm_and_pd(v20, v21));
            ++v16;
            *&v17 = *&v17 + v18.f64[0];
            v15 = v18;
          }

          while (v14 != v16);
        }

        else
        {
          v17 = 0;
          v19 = v38;
        }

        v38 = v17;
        v39 = *(v30[4] + 16);
        outlined release of MLObjectDetector.PrecisionRecallCurve(v30, v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v19);
        v23 = v35;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
        }

        v24 = v19[2];
        v25 = v19;
        v26 = *&v38;
        if (v19[3] >> 1 <= v24)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19[3] >= 2uLL, v24 + 1, 1, v19);
          v26 = *&v38;
          v25 = v28;
        }

        v5 = v37;
        ++v8;
        v27 = v26 / SLODWORD(v39);
        v25[2] = v24 + 1;
        v7 = v25;
        *&v25[v24 + 4] = v27;
      }

      while (v8 != v23);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v7;
  }

  else
  {

    return _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v6, 0.0);
  }
}

void *specialized thunk for @callee_guaranteed () -> (@owned [Double])()
{
  *result = &_swiftEmptyArrayStorage;
  return result;
}

{
  return specialized thunk for @callee_guaranteed () -> (@owned [Double])();
}

double specialized Sequence<>.mean()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return NAN;
  }

  v2 = 0.0;
  for (i = 0; i != v1; ++i)
  {
    v2 = v2 + *(a1 + 8 * i + 32);
  }

  return v2 / v1;
}

uint64_t closure #2 in static MLObjectDetector.evaluation(on:detectedObjects:)(uint64_t *a1)
{
  v2 = v1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v14 = *a1;
    *a1;
    v3 = v14;
    for (i = 0; i != v15; ++i)
    {
      v5 = *(v3 + 8 * i + 32);
      if (v5 << 12 == 0 || (~v5 & 0x7FF0000000000000) != 0)
      {
        v13 = *(v3 + 8 * i + 32);
        if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v7 = v6 + 1;
        v3 = v14;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
          v7 = v6 + 1;
          v5 = v13;
          v3 = v14;
        }

        _swiftEmptyArrayStorage[2] = v7;
        _swiftEmptyArrayStorage[v6 + 4] = v5;
      }
    }

    v3;
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    v9 = 0.0;
    for (j = 0; j != v8; ++j)
    {
      v9 = v9 + *&_swiftEmptyArrayStorage[j + 4];
    }

    v12 = v9 / v8;
  }

  else
  {

    v12 = NAN;
  }

  *v2 = v12;
  return result;
}

uint64_t MLObjectDetectorMetrics.init(averagePrecision:meanAveragePrecision:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = 0;
  return result;
}

uint64_t static MLObjectDetector.extractMetrics(from:)(uint64_t a1, double a2)
{
  v4 = v2;
  v5 = *(a1 + 16);
  if (tc_v1_variant_is_parameters(v5))
  {
    result = specialized handling<A, B>(_:_:)(v5);
    if (!v3)
    {
      v7 = result;
      if (!result)
      {
        BUG();
      }

      v8 = type metadata accessor for CMLParameters();
      *(swift_initStackObject(v8, v63) + 16) = v7;
      v9 = CMLParameters.featureValue(for:)(59);
      specialized handling<A, B>(_:_:)(*(v9 + 16));
      v66 = a2;

      v12 = CMLParameters.featureValue(for:)(60);
      specialized handling<A, B>(_:_:)(*(v12 + 16));
      v67 = a2;

      v80 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
      v13 = CMLParameters.featureValue(for:)(57);
      v14 = specialized handling<A, B>(_:_:)(*(v13 + 16));
      v81 = v14;
      if (!v14)
      {
        BUG();
      }

      v69 = type metadata accessor for CMLDictionary();
      inited = swift_initStackObject(v69, v64);
      *(inited + 16) = v81;
      v77 = inited;
      v16 = CMLDictionary.size.getter();
      v76 = v16;
      if (v16 < 0)
      {
        BUG();
      }

      if (v16)
      {
        v17 = 0;
        do
        {
          v79 = v17;
          v18 = CMLDictionary.keyAndValue(at:)(v17);
          v81 = v19;
          v20 = v18;
          v21 = CMLFeatureValue.stringValue()();
          if (v22)
          {
            v22;
          }

          else
          {
            v78 = v21;
            v72 = v20;
            specialized handling<A, B>(_:_:)(*(v81 + 16));
            v73 = v23;
            v24 = v80;
            LOBYTE(v70) = swift_isUniquelyReferenced_nonNull_native(v80);
            v80 = v24;
            v75 = v24;
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(v78._countAndFlagsBits, v78._object);
            LOBYTE(v74) = v25;
            v26 = (v25 & 1) == 0;
            v27 = __OFADD__(*(v80 + 16), v26);
            v28 = *(v80 + 16) + v26;
            if (v27)
            {
              BUG();
            }

            __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v70, v28))
            {
              countAndFlagsBits = v78._countAndFlagsBits;
              object = v78._object;
              v30 = specialized __RawDictionaryStorage.find<A>(_:)(v78._countAndFlagsBits, v78._object);
              LOBYTE(v32) = v32 & 1;
              LOBYTE(countAndFlagsBits) = v74;
              v34 = countAndFlagsBits;
              LOBYTE(v34) = v74 & 1;
              if ((v74 & 1) != v32)
              {
LABEL_49:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, object, v32, v34, v31);
                BUG();
              }

              v35 = v78._object;
            }

            else
            {
              v35 = v78._object;
              v30 = v71;
              LOBYTE(countAndFlagsBits) = v74;
            }

            v36 = v75;
            v80 = v75;
            if (countAndFlagsBits)
            {
              *(v75[7] + 8 * v30) = v73;

              v35;
            }

            else
            {
              v75[(v30 >> 6) + 8] |= 1 << v30;
              v37 = v36[6];
              v38 = 16 * v30;
              *(v37 + v38) = v78._countAndFlagsBits;
              *(v37 + v38 + 8) = v35;
              *(v36[7] + 8 * v30) = v73;
              v39 = v36[2];
              v27 = __OFADD__(1, v39);
              v40 = v39 + 1;
              if (v27)
              {
                BUG();
              }

              v36[2] = v40;
            }
          }

          v17 = v79 + 1;
        }

        while (v76 != (v79 + 1));
      }

      v81 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
      v41 = CMLParameters.featureValue(for:)(58);
      v79 = specialized handling<A, B>(_:_:)(*(v41 + 16));
      if (!v79)
      {
        BUG();
      }

      v42 = swift_initStackObject(v69, v65);
      *(v42 + 16) = v79;
      v78._countAndFlagsBits = v42;
      v43 = CMLDictionary.size.getter();
      v72 = v43;
      if (v43 < 0)
      {
        BUG();
      }

      if (v43)
      {
        v44 = 0;
        do
        {
          v78._object = v44;
          v45 = CMLDictionary.keyAndValue(at:)(v44);
          v79 = v46;
          v47 = v45;
          v48 = CMLFeatureValue.stringValue()();
          if (v49)
          {
            v49;
          }

          else
          {
            v76 = v48._object;
            v73 = v48._countAndFlagsBits;
            v74 = v47;
            specialized handling<A, B>(_:_:)(*(v79 + 16));
            v70 = v50;
            v51 = v81;
            LOBYTE(v69) = swift_isUniquelyReferenced_nonNull_native(v81);
            v81 = v51;
            v75 = v51;
            v68 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v76);
            LOBYTE(v71) = v52;
            v53 = (v52 & 1) == 0;
            v27 = __OFADD__(*(v81 + 16), v53);
            v54 = *(v81 + 16) + v53;
            if (v27)
            {
              BUG();
            }

            __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v69, v54))
            {
              v56 = v73;
              object = v76;
              v55 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v76);
              LOBYTE(v32) = v32 & 1;
              LOBYTE(v56) = v71;
              v34 = v56;
              LOBYTE(v34) = v71 & 1;
              if ((v71 & 1) != v32)
              {
                goto LABEL_49;
              }

              v57 = v76;
            }

            else
            {
              v57 = v76;
              v55 = v68;
              LOBYTE(v56) = v71;
            }

            v58 = v75;
            v81 = v75;
            if (v56)
            {
              *(v75[7] + 8 * v55) = v70;

              v57;
            }

            else
            {
              v75[(v55 >> 6) + 8] |= 1 << v55;
              v59 = v58[6];
              v60 = 16 * v55;
              *(v59 + v60) = v73;
              *(v59 + v60 + 8) = v57;
              *(v58[7] + 8 * v55) = v70;
              v61 = v58[2];
              v27 = __OFADD__(1, v61);
              v62 = v61 + 1;
              if (v27)
              {
                BUG();
              }

              v58[2] = v62;
            }
          }

          v44 = v78._object + 1;
        }

        while (v72 != v78._object + 1);
      }

      *v4 = v80;
      result = v81;
      *(v4 + 8) = v81;
      *(v4 + 16) = v66;
      *(v4 + 24) = v67;
      *(v4 + 32) = 0;
    }
  }

  else
  {
    v10 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    result = swift_allocError(&type metadata for MLCreateError, v10, 0, 0);
    *v11 = 0xD000000000000026;
    *(v11 + 8) = "mean_average_precision_50" + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 0;
    *v4 = result;
    *(v4 + 8) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
  }

  return result;
}

_OWORD *MLObjectDetector.PrecisionRecallCurve.init(annotatedPredictionForLabel:iouThreshold:)(uint64_t a1, uint64_t a2, CGFloat a3, uint64_t a4, uint64_t a5)
{
  v63.width = a3;
  v7 = *&a1;
  v58 = v5;
  v52 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  *&v54 = _swiftEmptyArrayStorage;
  v8 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  *(&v54 + 1) = _swiftEmptyArrayStorage;
  *&rect.origin.x = a1;
  swift_bridgeObjectRetain_n(a1, 2);
  specialized MutableCollection<>.sort(by:)(&rect);
  *&v59.x = a5;
  *&v69 = a2;
  a1;
  x = rect.origin.x;
  v10 = *(*&rect.origin.x + 16);
  if (v10)
  {
    v66.origin.x = v7;
    *&rect.origin.x = _swiftEmptyArrayStorage;
    v64.width = x;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = rect.origin.x;
    v12 = *(*&rect.origin.x + 16);
    v13 = 32 * v12 + 48;
    v14 = (*&x + 64);
    do
    {
      v15 = v12;
      v16 = *(v14 - 1);
      v17 = *v14;
      rect.origin.x = v11;
      v18 = *(*&v11 + 24);
      ++v12;
      if (v18 >> 1 <= v15)
      {
        v66.size = v16;
        v65 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v12, 1);
        v11 = rect.origin.x;
      }

      *(*&v11 + 16) = v12;
      *(*&v11 + v13 - 16) = v16;
      *(*&v11 + v13) = v17;
      v13 += 32;
      v14 = (v14 + 56);
      --v10;
    }

    while (v10);
    v8 = v11;

    v7 = v66.origin.x;
  }

  else
  {
  }

  *&v50 = v8;
  LOBYTE(v8);
  v69;
  *&v7;
  *(&v50 + 1) = v69;
  *&v59.x;
  width = v63.width;
  v19 = MLObjectDetector.PrecisionRecallCurve.buildMatchingIndices(sampleBoxes:referenceBoxes:setPrediction:)(*&v8, v69, 1);
  *&v8;
  v69;
  v52;
  v52 = v19;
  v69 = v50;
  v20 = *(&v50 + 1);
  v21 = *(*(&v50 + 1) + 16);
  BYTE8(v50);
  LOBYTE(v8);
  v22 = _sSa9repeating5countSayxGx_SitcfCSiSg_Tt1g5(0, 1, v21);
  v55 = *(*(&v50 + 1) + 16);
  if (!v55)
  {
    *(&v50 + 1);
    v50;
    goto LABEL_34;
  }

  v23 = *(v50 + 16);
  v61 = width;
  v56 = *(&v50 + 1) + 32;
  BYTE8(v50);
  v68 = v50;
  v57 = (v50 + 48);
  v24 = 0;
  v62 = *(&v50 + 1);
  do
  {
    if (v24 >= *(v20 + 16))
    {
      BUG();
    }

    if (v23)
    {
      v60 = v22;
      v67 = v24;
      v69 = *(v56 + 32 * v24);
      v63 = *(v56 + 32 * v24 + 16);
      v68;
      v70 = 0.0;
      v25 = v57;
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = v25[-1];
        v29 = *v25;
        rect.origin = v69;
        rect.size = v63;
        v59 = v28;
        v48.origin = v28;
        v64 = v29;
        v48.size = v29;
        r2.size = v29;
        r2.origin = v28;
        r1.size = v63;
        r1.origin = v69;
        CGRectIntersection(&v47, r1, r2);
        v66 = v47;
        rect = v47;
        v30 = 0;
        if (!CGRectIsNull(v47))
        {
          rect = v66;
          v65.f64[0] = CGRectGetWidth(v66);
          rect = v66;
          v31.f64[1] = v66.origin.y;
          v31.f64[0] = CGRectGetHeight(v66) * v65.f64[0];
          v30 = _mm_and_pd(v31, xmmword_33E3F0);
        }

        v66.origin = v30;
        rect.origin = v69;
        rect.size = v63;
        v32.height = *(&v69 + 1);
        r1a.size = v63;
        r1a.origin = v69;
        v32.width = CGRectGetWidth(r1a);
        v66.size = v32;
        rect.origin = v69;
        rect.size = v63;
        v32.height = *(&v69 + 1);
        r1b.size = v63;
        r1b.origin = v69;
        v32.width = CGRectGetHeight(r1b);
        v65 = v32;
        rect.origin = v59;
        rect.size = v64;
        v32.height = v59.y;
        r1c.size = v64;
        r1c.origin = v59;
        v32.width = CGRectGetWidth(r1c);
        v49 = v32;
        rect.origin = v59;
        rect.size = v64;
        v32.height = v59.y;
        r1d.size = v64;
        r1d.origin = v59;
        v32.width = CGRectGetHeight(r1d);
        v33 = _mm_and_pd(_mm_mul_pd(_mm_unpacklo_pd(v65, v32), _mm_unpacklo_pd(v66.size, v49)), xmmword_33E3F0);
        v34 = _mm_hadd_pd(v33, v33).f64[0] - v66.origin.x;
        if (v34 <= 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = v66.origin.x / v34;
        }

        if (v35 > v70)
        {
          v70 = v35;
          v27 = v26;
        }

        ++v26;
        v25 += 2;
      }

      while (v23 != v26);
      v68;
      if (v70 <= v61)
      {
        v22 = v60;
        v20 = v62;
        v24 = v67;
        goto LABEL_30;
      }

      v22 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v60);
      v20 = v62;
      if (!isUniquelyReferenced_nonNull_native)
      {
LABEL_32:
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      }
    }

    else
    {
      if (v61 >= 0.0)
      {
        goto LABEL_30;
      }

      v67 = v24;
      v27 = 0;
      if (!swift_isUniquelyReferenced_nonNull_native(v22))
      {
        goto LABEL_32;
      }

      v27 = 0;
    }

    v24 = v67;
    if (v67 >= v22[2])
    {
      BUG();
    }

    v37 = 2 * v67;
    v22[v37 + 4] = v27;
    LOBYTE(v22[v37 + 5]) = 0;
LABEL_30:
    ++v24;
  }

  while (v24 != v55);
  v68;
  swift_bridgeObjectRelease_n(v20, 2);
  v69 = v50;
  v19 = v52;
LABEL_34:
  v53;
  v38 = width;
  v39 = v54;
  result = v58;
  *v58 = v69;
  *(result + 2) = v38;
  *(result + 3) = v19;
  *(result + 4) = v22;
  *(result + 40) = v39;
  return result;
}

void *MLObjectDetector.PrecisionRecallCurve.buildMatchingIndices(sampleBoxes:referenceBoxes:setPrediction:)(uint64_t a1, uint64_t a2, int a3)
{
  v68 = v3;
  v62 = a3;
  v63 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(v4, v5);
  v6[2] = v4;
  v7 = v6 + 4;
  v8 = v4;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 1;
    v7 += 2;
    --v8;
  }

  while (v8);
  v9 = *(v63 + 16);
  v64 = v68[2];
  v56 = a1 + 32;
  v58 = a1;
  a1;
  v57 = (v63 + 48);
  v10 = 0;
  v65 = v4;
  do
  {
    v67 = v10;
    if (!v9)
    {
      if (v64 >= 0.0)
      {
        goto LABEL_41;
      }

      v13 = 0.0;
      if (swift_isUniquelyReferenced_nonNull_native(v6))
      {
        v13 = 0.0;
        goto LABEL_21;
      }

LABEL_43:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      goto LABEL_21;
    }

    v70 = v6;
    v69 = *(v56 + 32 * v10);
    v59 = *(v56 + 32 * v10 + 16);
    v63;
    v66 = 0.0;
    v11 = v57;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = v11[-1];
      v15 = *v11;
      rect.origin = v69;
      rect.size = v59;
      v55.origin = v14;
      v53.origin = v14;
      v55.size = v15;
      v53.size = v15;
      r2.size = v15;
      r2.origin = v14;
      r1.size = v59;
      r1.origin = v69;
      CGRectIntersection(&v46, r1, r2);
      v61 = v46;
      rect = v46;
      v16 = 0;
      if (!CGRectIsNull(v46))
      {
        rect = v61;
        v60.width = CGRectGetWidth(v61);
        rect = v61;
        v17.f64[1] = v61.origin.y;
        v17.f64[0] = CGRectGetHeight(v61) * v60.width;
        v16 = _mm_and_pd(v17, xmmword_33E3F0);
      }

      v61.origin = v16;
      rect.origin = v69;
      rect.size = v59;
      v18.height = v69.y;
      r1a.size = v59;
      r1a.origin = v69;
      v18.width = CGRectGetWidth(r1a);
      v61.size = v18;
      rect.origin = v69;
      rect.size = v59;
      v18.height = v69.y;
      r1b.size = v59;
      r1b.origin = v69;
      v18.width = CGRectGetHeight(r1b);
      v60 = v18;
      rect = v55;
      v18.height = v55.origin.y;
      v18.width = CGRectGetWidth(v55);
      v54 = v18;
      rect = v55;
      v18.height = v55.origin.y;
      v18.width = CGRectGetHeight(v55);
      v19 = _mm_and_pd(_mm_mul_pd(_mm_unpacklo_pd(v60, v18), _mm_unpacklo_pd(v61.size, v54)), xmmword_33E3F0);
      v20 = _mm_hadd_pd(v19, v19).f64[0] - v61.origin.x;
      if (v20 <= 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v61.origin.x / v20;
      }

      if (v21 > v66)
      {
        v66 = v21;
        v13 = v12;
      }

      ++*&v12;
      v11 += 2;
    }

    while (v9 != *&v12);
    v63;
    v4 = v65;
    if (v66 <= v64)
    {
      v6 = v70;
      v10 = v67;
      goto LABEL_41;
    }

    v6 = v70;
    if (!swift_isUniquelyReferenced_nonNull_native(v70))
    {
      goto LABEL_43;
    }

LABEL_21:
    v10 = v67;
    if (v67 >= v6[2])
    {
      BUG();
    }

    v22 = 2 * v67;
    *&v6[v22 + 4] = v13;
    LOBYTE(v6[v22 + 5]) = 0;
    if (v62)
    {
      v70 = v6;
      v23 = *(v68 + 5);
      v24 = *(v23 + 2);
      if (!v24)
      {
        goto LABEL_30;
      }

      if (*(v23 + 4) != *&v13)
      {
        if (v24 != 1)
        {
          v25 = 5;
          do
          {
            v26 = v25 - 4 + 1;
            if (__OFADD__(1, v25 - 4))
            {
              BUG();
            }

            if (*&v23[v25] == *&v13)
            {
              goto LABEL_39;
            }

            ++v25;
          }

          while (v26 != v24);
        }

LABEL_30:
        v27 = *(v23 + 2);
        if (!swift_isUniquelyReferenced_nonNull_native(*(v68 + 5)))
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ++v24, 1, v23);
        }

        v28 = *(v23 + 2);
        v29 = *(v23 + 3);
        *&x = v28 + 1;
        if (v29 >> 1 <= v28)
        {
          *&v69.x = v28 + 1;
          v24 = v28 + 1;
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 >= 2, v28 + 1, 1, v23);
          x = v69.x;
          v23 = v39;
        }

        v23[2] = x;
        v23[v28 + 4] = v13;
        v31 = v68;
        *(v68 + 5) = v23;
        v69.x = v31[3];
        v32 = v70;
        v70;
        v33 = *&v69.x;
        *&v69.x;
        *(v31 + 3) = v32;
        v34 = *(v31 + 4);
        v35 = *(v31 + 6);
        v47 = *v31;
        v48 = v64;
        v49 = v32;
        v50 = v34;
        v51 = v23;
        v36 = v35;
        v52 = v35;
        v69.x = MLObjectDetector.PrecisionRecallCurve.precision.getter(v33, v24);
        if (swift_isUniquelyReferenced_nonNull_native(v36))
        {
          v4 = v65;
          v37 = v36;
        }

        else
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
          v4 = v65;
        }

        v38 = v37[2];
        v10 = v67;
        if (v37[3] >> 1 <= v38)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37[3] >= 2uLL, v38 + 1, 1, v37);
          v10 = v67;
          v37 = v40;
        }

        v37[2] = v38 + 1;
        v37[v38 + 4] = *&v69.x;
        *(v68 + 6) = v37;
      }

LABEL_39:
      v6 = v70;
    }

LABEL_41:
    ++v10;
  }

  while (v10 != v4);
  v58;
  return v6;
}

double MLObjectDetector.PrecisionRecallCurve.precision.getter(uint64_t a1, int64_t a2)
{
  v3 = *(v2 + 24);
  v9 = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v3;
    v5 = (v3 + 40);
    v6 = _swiftEmptyArrayStorage;
    v10 = v4;
    do
    {
      if (!*v5)
      {
        v11 = *(v5 - 1);
        if (!swift_isUniquelyReferenced_nonNull_native(v6))
        {
          a2 = v6[2] + 1;
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 1, v6);
        }

        v7 = v6[2];
        if (v6[3] >> 1 <= v7)
        {
          a2 = v7 + 1;
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1, v6);
        }

        v6[2] = v7 + 1;
        *&v6[v7 + 4] = v11;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
    outlined release of [Int?](&v9, a2);
    LODWORD(v4) = v10;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v11 = v6[2];
  v6;
  return v11 / v4;
}

uint64_t MLObjectDetectorMetrics.averagePrecision.getter()
{
  if (*(v0 + 32))
  {
    v1 = Dictionary.init(dictionaryLiteral:)(&_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
    Dictionary.init(dictionaryLiteral:)(&_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  }

  else
  {
    v1 = *v0;
    v2 = v0[1];
    *v0;
    v2;
  }

  return v1;
}

uint64_t MLObjectDetectorMetrics.error.getter()
{
  if (*(v0 + 32) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

unint64_t MLObjectDetectorMetrics.description.getter()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    v69._countAndFlagsBits = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v69, &v57, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v57;
  }

  v67 = *(v0 + 8);
  v60 = *(v0 + 16);
  v61 = *(v0 + 24);
  v64 = v60;
  v65 = v61;
  v57 = 0xD000000000000023;
  v58 = "Empty ArraySlice" + 0x8000000000000000;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v4._object = "------------------\n" + 0x8000000000000000;
  v4._countAndFlagsBits = 0xD000000000000045;
  String.append(_:)(v4);
  v59 = v1;
  Double.write<A>(to:)(&v69, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v4._countAndFlagsBits = 2592;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  object = v69._object;
  String.append(_:)(v69);
  object;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  v4._object = "er-Union Thresholds: " + 0x8000000000000000;
  v4._countAndFlagsBits = 0xD000000000000047;
  String.append(_:)(v4);
  v6 = v59;
  Double.write<A>(to:)(&v69, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v4._countAndFlagsBits = 2592;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v7 = v69._object;
  String.append(_:)(v69);
  v7;
  v8 = 0;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v59, v67, v60, v61, 0);
  v67;
  v9 = 1 << *(v59 + 32);
  v10 = ~(-1 << v9);
  if (v9 >= 64)
  {
    v10 = -1;
  }

  v11 = *(v59 + 64) & v10;
  v66 = (v9 + 63) >> 6;
  v68 = "nion Threshold of 50%: " + 0x8000000000000000;
  while (1)
  {
    if (v11)
    {
LABEL_7:
      v12 = v8;
      goto LABEL_22;
    }

    v13 = (v8 + 1);
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v13 >= v66)
    {
      goto LABEL_31;
    }

    v11 = v6[v13 + 8];
    if (v11)
    {
      v12 = v8 + 1;
      goto LABEL_22;
    }

    v12 = v8 + 2;
    if ((v8 + 2) >= v66)
    {
      goto LABEL_31;
    }

    v11 = v6[v13 + 9];
    if (!v11)
    {
      v12 = v8 + 3;
      if ((v8 + 3) >= v66)
      {
        goto LABEL_31;
      }

      v11 = v6[v13 + 10];
      if (!v11)
      {
        v12 = v8 + 4;
        if ((v8 + 4) >= v66)
        {
          goto LABEL_31;
        }

        v11 = v6[v13 + 11];
        if (!v11)
        {
          v12 = v8 + 5;
          if ((v8 + 5) >= v66)
          {
            goto LABEL_31;
          }

          v11 = v6[v13 + 12];
          if (!v11)
          {
            v12 = v8 + 6;
            if ((v8 + 6) >= v66)
            {
              goto LABEL_31;
            }

            v11 = v6[v13 + 13];
            if (!v11)
            {
              break;
            }
          }
        }
      }
    }

LABEL_22:
    v65 = v11;
    _BitScanForward64(&v14, v11);
    v15 = v6[6];
    v64 = v12;
    v16 = (v12 << 10) | (16 * v14);
    v17 = *(v15 + v16);
    v18 = *(v15 + v16 + 8);
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    v18;
    _StringGuts.grow(_:)(76);
    v19._countAndFlagsBits = 0xD000000000000043;
    v19._object = v68;
    String.append(_:)(v19);
    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    v19._countAndFlagsBits = 2112032;
    v19._object = 0xE300000000000000;
    String.append(_:)(v19);
    v20 = v67;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v6, v67, v60, v61, 0);
    v20;
    v21 = 1;
    if (v6[2] && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v23 & 1) != 0))
    {
      v24 = *(v6[7] + 8 * v22);
      v21 = 0;
    }

    else
    {
      v24 = 0;
    }

    v25 = v18;
    v26 = (v65 - 1) & v65;
    v25;
    v6 = v59;
    v59;
    v62 = v24;
    v63 = v21;
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Double?);
    v28._countAndFlagsBits = String.init<A>(describing:)(&v62, v27);
    v29 = v28._object;
    String.append(_:)(v28);
    v29;
    v30._countAndFlagsBits = 2592;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    v31 = v69._object;
    String.append(_:)(v69);
    v31;
    v11 = v26;
    v8 = v64;
  }

  v32 = (v8 + 7);
  while (v32 < v66)
  {
    v11 = v6[v32++ + 8];
    if (v11)
    {
      v8 = (v32 - 1);
      goto LABEL_7;
    }
  }

LABEL_31:

  v33 = 0;
  v34 = v67;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v6, v67, v60, v61, 0);
  v6;
  v35 = 1 << *(v34 + 32);
  v36 = ~(-1 << v35);
  if (v35 >= 64)
  {
    v36 = -1;
  }

  v37 = *(v34 + 64) & v36;
  v68 = ((v35 + 63) >> 6);
  v64 = "ion Thresholds for " + 0x8000000000000000;
  while (2)
  {
    if (v37)
    {
LABEL_35:
      v38 = v33;
      goto LABEL_50;
    }

    v39 = v33 + 1;
    if (__OFADD__(1, v33))
    {
      BUG();
    }

    if (v39 >= v68)
    {
      goto LABEL_59;
    }

    v37 = *(v67 + 8 * v39 + 64);
    if (v37)
    {
      v38 = v33 + 1;
LABEL_50:
      _BitScanForward64(&v40, v37);
      v41 = *(v67 + 48);
      v65 = v38;
      v42 = (v38 << 10) | (16 * v40);
      v43 = *(v41 + v42);
      v44 = *(v41 + v42 + 8);
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v44;
      _StringGuts.grow(_:)(78);
      v45._countAndFlagsBits = 0xD000000000000045;
      v45._object = v64;
      String.append(_:)(v45);
      v45._countAndFlagsBits = v43;
      v45._object = v44;
      String.append(_:)(v45);
      v45._countAndFlagsBits = 2112032;
      v45._object = 0xE300000000000000;
      String.append(_:)(v45);
      outlined copy of Result<MLObjectDetector.Metrics, Error>(v6, v67, v60, v61, 0);
      v6;
      v46 = v67;
      v47 = 1;
      if (*(v67 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44), (v49 & 1) != 0))
      {
        v50 = *(*(v46 + 56) + 8 * v48);
        v47 = 0;
      }

      else
      {
        v50 = 0;
      }

      v37 &= v37 - 1;
      v44;
      v67;
      v62 = v50;
      v63 = v47;
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Double?);
      v52._countAndFlagsBits = String.init<A>(describing:)(&v62, v51);
      v53 = v52._object;
      String.append(_:)(v52);
      v53;
      v54._countAndFlagsBits = 2592;
      v54._object = 0xE200000000000000;
      String.append(_:)(v54);
      v55 = v69._object;
      String.append(_:)(v69);
      v55;
      v33 = v65;
      v6 = v59;
      continue;
    }

    break;
  }

  v38 = v33 + 2;
  if (v33 + 2 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 72);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 3;
  if (v33 + 3 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 80);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 4;
  if (v33 + 4 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 88);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 5;
  if (v33 + 5 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 96);
  if (v37)
  {
    goto LABEL_50;
  }

  v38 = v33 + 6;
  if (v33 + 6 >= v68)
  {
    goto LABEL_59;
  }

  v37 = *(v67 + 8 * v39 + 104);
  if (v37)
  {
    goto LABEL_50;
  }

  v56 = v33 + 7;
  while (v56 < v68)
  {
    v37 = *(v67 + 8 * v56++ + 64);
    if (v37)
    {
      v33 = v56 - 1;
      goto LABEL_35;
    }
  }

LABEL_59:

  return v57;
}

unint64_t MLObjectDetectorMetrics.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    v13 = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v13, &v8, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v8;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 8);
    v6 = *(v0 + 16);
    outlined copy of Result<MLObjectDetector.Metrics, Error>(*v0, v5, v6, v4, 0);
    v5;
    v1;
    v8 = v1;
    v9 = v5;
    v10 = v6;
    v11 = v4;
    v12 = 0;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v1, v5, v6, v4, 0);
    v3 = MLObjectDetectorMetrics.description.getter();
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v1, v5, v6, v4, 0);
  }

  return v3;
}

unint64_t MLObjectDetectorMetrics.playgroundDescription.getter()
{
  v22 = v0;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    v21 = v2;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v2, v3, v4, v5, 1);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v21, &v16, v6, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v23 = v16;
    v7 = v17;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    v12 = 1;
  }

  else
  {
    outlined copy of Result<MLObjectDetector.Metrics, Error>(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), 0);
    v3;
    v2;
    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = v5;
    v20 = 0;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v2, v3, v4, v5, 0);
    v23 = MLObjectDetectorMetrics.description.getter();
    v7 = v13;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    v12 = 0;
  }

  outlined consume of Result<MLObjectDetector.Metrics, Error>(v8, v9, v10, v11, v12);
  v14 = v22;
  v22[3] = &type metadata for String;
  result = v23;
  *v14 = v23;
  v14[1] = v7;
  return result;
}

uint64_t _Model.hasObjectDetectorValidationMetrics.getter(double a1)
{
  v3 = "Threshold of 50% for " + 0x8000000000000000;
  v1 = _Model.attributes.getter(a1);
  specialized Dictionary.subscript.getter(0xD00000000000001CLL, ("Threshold of 50% for " + 0x8000000000000000), v1);
  v1;
  v2 = v11;
  outlined destroy of Any?(v10);
  LOBYTE(v3) = 1;
  if (!v2)
  {
    v4 = _Model.attributes.getter(a1);
    specialized Dictionary.subscript.getter(0xD00000000000001FLL, ("validation_average_precision" + 0x8000000000000000), v4);
    v4;
    v5 = v11;
    outlined destroy of Any?(v10);
    if (!v5)
    {
      v6 = _Model.attributes.getter(a1);
      specialized Dictionary.subscript.getter(0xD000000000000021, ("validation_average_precision_50" + 0x8000000000000000), v6);
      v6;
      v7 = v11;
      outlined destroy of Any?(v10);
      if (!v7)
      {
        v3 = "average_precision" + 0x8000000000000000;
        v8 = _Model.attributes.getter(a1);
        specialized Dictionary.subscript.getter(0xD000000000000024, ("average_precision" + 0x8000000000000000), v8);
        v8;
        LOBYTE(v3) = v11 != 0;
        outlined destroy of Any?(v10);
      }
    }
  }

  return v3;
}

uint64_t _Model.makeDetectorMetrics(onTraining:)(char a1, double a2)
{
  v28 = v3;
  v21 = v2;
  v4 = 0x69746164696C6176;
  if (a1)
  {
    v4 = 0x676E696E69617274;
  }

  v5 = 0xEB000000005F6E6FLL;
  if (a1)
  {
    v5 = 0xE90000000000005FLL;
  }

  v26[0] = v4;
  v6 = v4;
  v5;
  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = "average_precision_50" + 0x8000000000000000;
  String.append(_:)(v7);
  v25 = v26[0];
  v24 = v5;
  v31 = v6;
  v5;
  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = "average_precision" + 0x8000000000000000;
  String.append(_:)(v7);
  v23 = v6;
  v22 = v5;
  v5;
  v7._countAndFlagsBits = 0xD000000000000016;
  v7._object = "average_precision_50" + 0x8000000000000000;
  String.append(_:)(v7);
  v30 = v6;
  v26[0] = v6;
  v26[1] = v5;
  v5;
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = "mean_average_precision" + 0x8000000000000000;
  String.append(_:)(v7);
  v5;
  v8 = v6;
  v9 = _Model.attributes.getter(a2);
  specialized Dictionary.subscript.getter(v30, v5, v9);
  v5;
  v9;
  if (v27)
  {
    if (swift_dynamicCast(&v32, v26, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      if (v34 == 1)
      {
        v31 = v32;
        goto LABEL_12;
      }

      outlined consume of MLDataValue(v32, v33, v34);
    }
  }

  else
  {
    outlined destroy of Any?(v26);
  }

  v31 = 0;
LABEL_12:
  v10 = _Model.attributes.getter(a2);
  specialized Dictionary.subscript.getter(v8, v5, v10);
  v5;
  v10;
  if (v27)
  {
    if (swift_dynamicCast(&v32, v26, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      if (v34 == 1)
      {
        v29 = v32;
        goto LABEL_19;
      }

      outlined consume of MLDataValue(v32, v33, v34);
    }
  }

  else
  {
    outlined destroy of Any?(v26);
  }

  v29 = 0;
LABEL_19:
  v30 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  v11 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  v12 = _Model.attributes.getter(a2);
  specialized Dictionary.subscript.getter(v25, v24, v12);
  v24;
  v12;
  if (v27)
  {
    if (swift_dynamicCast(&v32, v26, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      v13 = v32;
      v14 = v33;
      if (v34 == 4)
      {
        v30;
        ML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8CreateML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm(v13);
        outlined consume of MLDataValue(v13, v14, 4);
        v30 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SdSaySS_SdtGTt0g5(ML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm);
      }

      else
      {
        outlined consume of MLDataValue(v32, v33, v34);
      }
    }
  }

  else
  {
    outlined destroy of Any?(v26);
  }

  v16 = _Model.attributes.getter(a2);
  specialized Dictionary.subscript.getter(v23, v22, v16);
  v22;
  v16;
  if (v27)
  {
    if (swift_dynamicCast(&v32, v26, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
    {
      v17 = v32;
      v18 = v33;
      if (v34 == 4)
      {
        v11;
        v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8CreateML11MLDataValueOAHG_SS_Sdts5NeverOTg503_s8d4ML11fg38OACSSSdIgnnod_AC3key_AC5valuetSS_Sdts5H117OIegnrzr_TR03_s8a74ML6_ModelC19makeDetectorMetrics10onTrainingAA08MLObjecteF0VSb_tFSS_SdtAA11cD10O_AItXEfU_Tf3nnnpf_nTf1cn_nTm(v17);
        outlined consume of MLDataValue(v17, v18, 4);
        v11 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SdSaySS_SdtGTt0g5(v19);
      }

      else
      {
        outlined consume of MLDataValue(v32, v33, v34);
      }
    }
  }

  else
  {
    outlined destroy of Any?(v26);
  }

  result = v21;
  *v21 = v30;
  *(v21 + 8) = v11;
  *(v21 + 16) = v31;
  *(v21 + 24) = v29;
  *(v21 + 32) = 0;
  return result;
}

uint64_t outlined copy of Result<MLObjectDetector.Metrics, Error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return swift_errorRetain(a1);
  }

  a1;
  return a2;
}

uint64_t outlined consume of Result<MLObjectDetector.Metrics, Error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return a1;
  }

  a1, a2;
  return a2, a2;
}

uint64_t initializeWithCopy for MLObjectDetectorMetrics(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Result<MLObjectDetector.Metrics, Error>(*a2, v3, v4, v5, v7);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for MLObjectDetectorMetrics(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v13 = *(a2 + 32);
  outlined copy of Result<MLObjectDetector.Metrics, Error>(*a2, v4, v5, v6, v13);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v11 = *(a1 + 32);
  *(a1 + 32) = v13;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v7, v8, v9, v10, v11);
  return a1;
}

uint64_t __swift_memcpy33_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 32) = *(a2 + 32);
  v3 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLObjectDetectorMetrics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v8 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v4, v5, v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetectorMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 32) >= 2u)
      {
        v2 = *(a1 + 32) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLObjectDetectorMetrics(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
    *(a1 + 32) = 0;
    if (a3 >= 0xFF)
    {
      *(a1 + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 33) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = -a2;
    }
  }
}

uint64_t initializeWithCopy for MLObjectDetector.Metrics(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = a2[1];
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 1);
  v3;
  v4;
  return a1;
}

uint64_t *assignWithCopy for MLObjectDetector.Metrics(uint64_t *a1, uint64_t *a2)
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
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for MLObjectDetector.Metrics(uint64_t a1, _OWORD *a2)
{
  *a1, a2;
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3, a2;
  *(a1 + 16) = a2[1];
  return a1;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1)
{
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, Double>);
  v3 = static _DictionaryStorage.copy(original:)(a1);
  v4 = 1 << *(a1 + 32);
  v5 = ~(-1 << v4);
  if (v4 >= 64)
  {
    v5 = -1;
  }

  v6 = v3;
  v32 = a1;
  v7 = *(a1 + 64) & v5;
  v31 = (v4 + 63) >> 6;
  v8 = 0;
  v29 = v3;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v9, v7);
      v28 = (v7 - 1) & v7;
      v27 = v8;
      v10 = v9 | (v8 << 6);
      goto LABEL_17;
    }

    v11 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v11 >= v31)
    {
      return v6;
    }

    v12 = *(v32 + 8 * v11 + 64);
    if (!v12)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v14, v12);
    v28 = v12 & (v12 - 1);
    v10 = v14 | (v11 << 6);
    v27 = v11;
LABEL_17:
    v15 = *(v32 + 48);
    v16 = *(*(v32 + 56) + 8 * v10);
    v24[0] = v16;
    v25 = *(v15 + 16 * v10);
    v17 = *(v15 + 16 * v10 + 8);
    v16;
    v26 = v17;
    v17;
    v18 = v30;
    closure #2 in static MLObjectDetector.evaluation(on:detectedObjects:)(v24);
    v16;
    v30 = v18;
    if (v18)
    {
      v26;
      v6 = v29;

      return v6;
    }

    v6 = v29;
    v29[(v10 >> 6) + 8] |= 1 << v10;
    v19 = v6[6];
    *(v19 + 16 * v10) = v25;
    *(v19 + 16 * v10 + 8) = v26;
    *(v6[7] + 8 * v10) = v24[1];
    v20 = v6[2];
    v21 = __OFADD__(1, v20);
    v22 = v20 + 1;
    if (v21)
    {
      BUG();
    }

    v6[2] = v22;
    v8 = v27;
    v7 = v28;
  }

  v13 = v8 + 2;
  if (v8 + 2 >= v31)
  {
    return v6;
  }

  v12 = *(v32 + 8 * v11 + 72);
  if (v12)
  {
    goto LABEL_15;
  }

  v13 = v8 + 3;
  if (v8 + 3 >= v31)
  {
    return v6;
  }

  v12 = *(v32 + 8 * v11 + 80);
  if (v12)
  {
    goto LABEL_15;
  }

  v13 = v8 + 4;
  if (v8 + 4 >= v31)
  {
    return v6;
  }

  v12 = *(v32 + 8 * v11 + 88);
  if (v12)
  {
LABEL_15:
    v11 = v13;
    goto LABEL_16;
  }

  while (v8 + 5 < v31)
  {
    v12 = *(v32 + 8 * v8++ + 104);
    if (v12)
    {
      v11 = v8 + 4;
      goto LABEL_16;
    }
  }

  return v6;
}

{
  v2 = 0;
  v27 = type metadata accessor for URL(0);
  v30 = *(v27 - 8);
  v3 = *(v30 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v28 = &v25;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
  v6 = static _DictionaryStorage.copy(original:)(a1);
  v7 = 1 << *(a1 + 32);
  v8 = ~(-1 << v7);
  if (v7 >= 64)
  {
    v8 = -1;
  }

  v35 = a1;
  v9 = *(a1 + 64) & v8;
  v10 = v6;
  v34 = (v7 + 63) >> 6;
  v29 = v6;
  v11 = v28;
  while (1)
  {
    if (v9)
    {
      _BitScanForward64(&v12, v9);
      v32 = (v9 - 1) & v9;
      v31 = v2;
      v13 = v12 | (v2 << 6);
      goto LABEL_20;
    }

    v14 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v14 >= v34)
    {
      return v10;
    }

    v15 = *(v35 + 8 * v14 + 64);
    if (!v15)
    {
      break;
    }

    v16 = v2 + 1;
LABEL_19:
    _BitScanForward64(&v17, v15);
    v32 = v15 & (v15 - 1);
    v13 = v17 | (v16 << 6);
    v31 = v16;
LABEL_20:
    v33 = *(v35 + 48);
    v18 = *(v30 + 16);
    v19 = v27;
    v18(v11, *(v35 + 56) + v13 * *(v30 + 72), v27);
    LOBYTE(v33) = *(v33 + v13);
    v26 = v19;
    v20 = __swift_allocate_boxed_opaque_existential_0(&v25);
    v18(v20, v11, v19);
    (*(v30 + 8))(v11, v19);
    v10 = v29;
    v29[(v13 >> 6) + 8] |= 1 << v13;
    *(v10[6] + v13) = v33;
    outlined init with take of Any(&v25, (v10[7] + 32 * v13));
    v21 = v10[2];
    v22 = __OFADD__(1, v21);
    v23 = v21 + 1;
    if (v22)
    {
      BUG();
    }

    v10[2] = v23;
    v2 = v31;
    v9 = v32;
  }

  v16 = v2 + 2;
  if (v2 + 2 >= v34)
  {
    return v10;
  }

  v15 = *(v35 + 8 * v14 + 72);
  if (v15)
  {
    goto LABEL_19;
  }

  v16 = v2 + 3;
  if (v2 + 3 >= v34)
  {
    return v10;
  }

  v15 = *(v35 + 8 * v14 + 80);
  if (v15)
  {
    goto LABEL_19;
  }

  v16 = v2 + 4;
  if (v2 + 4 >= v34)
  {
    return v10;
  }

  v15 = *(v35 + 8 * v14 + 88);
  if (v15)
  {
    goto LABEL_19;
  }

  while (v2 + 5 < v34)
  {
    v15 = *(v35 + 8 * v2++ + 104);
    if (v15)
    {
      v16 = v2 + 4;
      goto LABEL_19;
    }
  }

  return v10;
}

{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
  v1 = static _DictionaryStorage.copy(original:)(a1);
  v2 = 1 << *(a1 + 32);
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = v1;
  v5 = *(a1 + 64) & v3;
  v21 = (v2 + 63) >> 6;
  v6 = 0;
  while (1)
  {
    if (v5)
    {
      _BitScanForward64(&v7, v5);
      v5 &= v5 - 1;
      v8 = v7 | (v6 << 6);
      goto LABEL_20;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v21)
    {
      return v4;
    }

    v10 = *(a1 + 8 * v9 + 64);
    if (!v10)
    {
      break;
    }

    v11 = v6 + 1;
LABEL_19:
    _BitScanForward64(&v12, v10);
    v5 = v10 & (v10 - 1);
    v8 = v12 | (v11 << 6);
    v6 = v11;
LABEL_20:
    v13 = *(*(a1 + 56) + 8 * v8);
    v14 = *(*(a1 + 48) + v8);
    v20 = &type metadata for Double;
    *&v19 = v13;
    v4[(v8 >> 6) + 8] |= 1 << v8;
    *(v4[6] + v8) = v14;
    outlined init with take of Any(&v19, (v4[7] + 32 * v8));
    v15 = v4[2];
    v16 = __OFADD__(1, v15);
    v17 = v15 + 1;
    if (v16)
    {
      BUG();
    }

    v4[2] = v17;
  }

  v11 = v6 + 2;
  if (v6 + 2 >= v21)
  {
    return v4;
  }

  v10 = *(a1 + 8 * v9 + 72);
  if (v10)
  {
    goto LABEL_19;
  }

  v11 = v6 + 3;
  if (v6 + 3 >= v21)
  {
    return v4;
  }

  v10 = *(a1 + 8 * v9 + 80);
  if (v10)
  {
    goto LABEL_19;
  }

  v11 = v6 + 4;
  if (v6 + 4 >= v21)
  {
    return v4;
  }

  v10 = *(a1 + 8 * v9 + 88);
  if (v10)
  {
    goto LABEL_19;
  }

  while (v6 + 5 < v21)
  {
    v10 = *(a1 + 8 * v6++ + 104);
    if (v10)
    {
      v11 = v6 + 4;
      goto LABEL_19;
    }
  }

  return v4;
}

{
  v2 = v1;
  v57 = 0;
  v54 = type metadata accessor for URL(0);
  v56 = *(v54 - 8);
  v3 = *(v56 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v55 = &v44;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [CIImage]>);
  v6 = static _DictionaryStorage.copy(original:)(a1);
  v7 = a1;
  v8 = 1 << *(a1 + 32);
  v9 = v6;
  v10 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v10 = -1;
  }

  v11 = v7[8] & v10;
  v61 = (v8 + 63) >> 6;
  v59 = v6;
  v52 = v7;
  while (1)
  {
    if (v11)
    {
      _BitScanForward64(&v12, v11);
      v13 = (v11 - 1) & v11;
      v14 = v57;
      v15 = v12 | (v57 << 6);
      goto LABEL_17;
    }

    v16 = v57;
    v17 = v57 + 1;
    if (__OFADD__(1, v57))
    {
      BUG();
    }

    if (v17 >= v61)
    {
      return v9;
    }

    v18 = v7[v17 + 8];
    if (!v18)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v20, v18);
    v13 = v18 & (v18 - 1);
    v15 = v20 | (v17 << 6);
    v14 = v17;
LABEL_17:
    v48 = v13;
    v57 = v14;
    v21 = 16 * v15;
    v22 = v7[6];
    v23 = v7[7];
    v49 = v15;
    v24 = *(v23 + 8 * v15);
    v51 = *(v22 + v21);
    v50 = v21;
    v25 = *(v22 + v21 + 8);
    v26 = *(v24 + 16);
    if (v26)
    {
      v60 = _swiftEmptyArrayStorage;
      v27 = v25;
      v58 = v24;
      v28 = v26;
      v24;
      v53 = v27;
      v27;
      v46 = v28;
      specialized ContiguousArray.reserveCapacity(_:)(v28);
      v29 = v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v45 = *(v56 + 16);
      v47 = *(v56 + 72);
      while (1)
      {
        v30 = v55;
        v45(v55, v29, v54);
        static ImageReader.read(url:)(v30);
        if (v2)
        {
          break;
        }

        v31 = v55;
        (*(v56 + 8))(v55, v54);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v31);
        v44 = 0;
        v32 = v60[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v32);
        v33 = v32;
        v2 = v44;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v33);
        specialized ContiguousArray._endMutation()(v33);
        v29 += v47;
        if (!--v46)
        {
          v58;
          v34 = v60;
          v9 = v59;
          v7 = v52;
          v25 = v53;
          goto LABEL_23;
        }
      }

      (*(v56 + 8))(v55, v54);
      v58;
      v53;
      v42 = v59;

      v9 = v42;

      return v9;
    }

    v35 = v7;
    *(v22 + v21 + 8);
    v7 = v35;
    v9 = v59;
    v34 = _swiftEmptyArrayStorage;
LABEL_23:
    v36 = v49;
    v9[(v49 >> 6) + 8] |= 1 << v49;
    v37 = v9[6];
    v38 = v50;
    *(v37 + v50) = v51;
    *(v37 + v38 + 8) = v25;
    *(v9[7] + 8 * v36) = v34;
    v39 = v9[2];
    v40 = __OFADD__(1, v39);
    v41 = v39 + 1;
    v11 = v48;
    if (v40)
    {
      BUG();
    }

    v9[2] = v41;
  }

  v19 = v57 + 2;
  if (v57 + 2 >= v61)
  {
    return v9;
  }

  v18 = v7[v17 + 9];
  if (v18)
  {
    goto LABEL_15;
  }

  v19 = v57 + 3;
  if (v57 + 3 >= v61)
  {
    return v9;
  }

  v18 = v7[v17 + 10];
  if (v18)
  {
    goto LABEL_15;
  }

  v19 = v57 + 4;
  if (v57 + 4 >= v61)
  {
    return v9;
  }

  v18 = v7[v17 + 11];
  if (v18)
  {
LABEL_15:
    v17 = v19;
    goto LABEL_16;
  }

  while (v16 + 5 < v61)
  {
    v18 = v7[v16++ + 13];
    if (v18)
    {
      v17 = v16 + 4;
      goto LABEL_16;
    }
  }

  return v9;
}

{
  v1 = a1;
  v2 = 0;
  v37 = type metadata accessor for URL(0);
  v38 = *(v37 - 8);
  v3 = *(v38 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [URL]>);
  result = static _DictionaryStorage.copy(original:)(a1);
  v7 = 1 << *(a1 + 32);
  v8 = ~(-1 << v7);
  if (v7 >= 64)
  {
    v8 = -1;
  }

  v9 = v1[8] & v8;
  v50 = (v7 + 63) >> 6;
  v48 = v1;
  v47 = result;
  v39 = &v34;
  while (1)
  {
    if (v9)
    {
      _BitScanForward64(&v10, v9);
      v11 = (v9 - 1) & v9;
      v12 = v10 | (v2 << 6);
      goto LABEL_20;
    }

    v13 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v13 >= v50)
    {
      return result;
    }

    v14 = v1[v13 + 8];
    if (!v14)
    {
      break;
    }

    v15 = v2 + 1;
LABEL_19:
    _BitScanForward64(&v16, v14);
    v11 = v14 & (v14 - 1);
    v12 = v16 | (v15 << 6);
    v2 = v15;
LABEL_20:
    v43 = v11;
    v17 = v1[6];
    v18 = v1[7];
    v40 = v12;
    v19 = *(v18 + 8 * v12);
    v42 = *(v17 + 16 * v12);
    v41 = 16 * v12;
    v20 = *(v17 + 16 * v12 + 8);
    v21 = *(v19 + 16);
    if (v21)
    {
      v44 = v2;
      v22 = v21;
      v49 = _swiftEmptyArrayStorage;
      v19;
      v45 = v20;
      v20;
      v36 = v22;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v23 = v49;
      v46 = v19;
      v24 = (v19 + 40);
      do
      {
        v35 = *(v24 - 1);
        v25 = *v24;
        *v24;
        URL.init(fileURLWithPath:)(v35, v25);
        v25;
        v49 = v23;
        v26 = v23[2];
        if (v23[3] >> 1 <= v26)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23[3] >= 2uLL, v26 + 1, 1);
          v23 = v49;
        }

        v23[2] = v26 + 1;
        (*(v38 + 32))(v23 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, v39, v37);
        v24 += 2;
        --v36;
      }

      while (v36);
      v46;
      v1 = v48;
      v2 = v44;
      v27 = v45;
    }

    else
    {
      v20;
      v27 = v20;
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v40;
    result = v47;
    v47[(v40 >> 6) + 8] |= 1 << v40;
    v29 = result[6];
    v30 = v41;
    *(v29 + v41) = v42;
    *(v29 + v30 + 8) = v27;
    *(result[7] + 8 * v28) = v23;
    v31 = result[2];
    v32 = __OFADD__(1, v31);
    v33 = v31 + 1;
    if (v32)
    {
      BUG();
    }

    result[2] = v33;
    v9 = v43;
  }

  v15 = v2 + 2;
  if (v2 + 2 >= v50)
  {
    return result;
  }

  v14 = v1[v13 + 9];
  if (v14)
  {
    goto LABEL_19;
  }

  v15 = v2 + 3;
  if (v2 + 3 >= v50)
  {
    return result;
  }

  v14 = v1[v13 + 10];
  if (v14)
  {
    goto LABEL_19;
  }

  v15 = v2 + 4;
  if (v2 + 4 >= v50)
  {
    return result;
  }

  v14 = v1[v13 + 11];
  if (v14)
  {
    goto LABEL_19;
  }

  while (v2 + 5 < v50)
  {
    v14 = v1[v2++ + 13];
    if (v14)
    {
      v15 = v2 + 4;
      goto LABEL_19;
    }
  }

  return result;
}

{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [String]>);
  v2 = static _DictionaryStorage.copy(original:)(a1);
  v3 = 1 << *(a1 + 32);
  v4 = v2;
  v5 = ~(-1 << v3);
  if (v3 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a1 + 64) & v5;
  v46 = (v3 + 63) >> 6;
  v7 = 0;
  v43 = v2;
  while (1)
  {
    if (v6)
    {
      _BitScanForward64(&v8, v6);
      v9 = (v6 - 1) & v6;
      v10 = v8 | (v7 << 6);
      goto LABEL_20;
    }

    v11 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v11 >= v46)
    {
      return v4;
    }

    v12 = *(v1 + 8 * v11 + 64);
    if (!v12)
    {
      break;
    }

    v13 = v7 + 1;
LABEL_19:
    _BitScanForward64(&v14, v12);
    v9 = v12 & (v12 - 1);
    v10 = v14 | (v13 << 6);
    v7 = v13;
LABEL_20:
    v40 = v9;
    v15 = 16 * v10;
    v16 = *(v1 + 48);
    v37 = v10;
    v17 = *(*(v1 + 56) + 8 * v10);
    v39 = *(v16 + v15);
    v38 = v15;
    v18 = *(v16 + v15 + 8);
    if (*(v17 + 16))
    {
      v19 = v17;
      v20 = *(v17 + 16);
      v17;
      v18;
      v35 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = 0;
      v22 = *(type metadata accessor for URL(0) - 8);
      v41 = v19;
      v23 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v36 = *(v22 + 72);
      do
      {
        v24 = URL.path.getter(v21);
        v26 = _swiftEmptyArrayStorage[2];
        v27 = v26 + 1;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v26)
        {
          v21 = _swiftEmptyArrayStorage[3] >= 2uLL;
          v44 = v24;
          v45 = v25;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v27, 1);
          v25 = v45;
          v24 = v44;
        }

        _swiftEmptyArrayStorage[2] = v27;
        v28 = 2 * v26;
        _swiftEmptyArrayStorage[v28 + 4] = v24;
        _swiftEmptyArrayStorage[v28 + 5] = v25;
        v23 += v36;
        --v35;
      }

      while (v35);
      v41;
      v1 = a1;
      v4 = v43;
      v29 = v18;
    }

    else
    {
      *(v16 + v15 + 8);
      v29 = v18;
    }

    v4[(v37 >> 6) + 8] |= 1 << v37;
    v30 = v4[6];
    *(v30 + v38) = v39;
    *(v30 + v38 + 8) = v29;
    *(v4[7] + 8 * v37) = _swiftEmptyArrayStorage;
    v31 = v4[2];
    v32 = __OFADD__(1, v31);
    v33 = v31 + 1;
    if (v32)
    {
      BUG();
    }

    v4[2] = v33;
    v6 = v40;
  }

  v13 = v7 + 2;
  if (v7 + 2 >= v46)
  {
    return v4;
  }

  v12 = *(v1 + 8 * v11 + 72);
  if (v12)
  {
    goto LABEL_19;
  }

  v13 = v7 + 3;
  if (v7 + 3 >= v46)
  {
    return v4;
  }

  v12 = *(v1 + 8 * v11 + 80);
  if (v12)
  {
    goto LABEL_19;
  }

  v13 = v7 + 4;
  if (v7 + 4 >= v46)
  {
    return v4;
  }

  v12 = *(v1 + 8 * v11 + 88);
  if (v12)
  {
    goto LABEL_19;
  }

  while (v7 + 5 < v46)
  {
    v12 = *(v1 + 8 * v7++ + 104);
    if (v12)
    {
      v13 = v7 + 4;
      goto LABEL_19;
    }
  }

  return v4;
}

{
  v50 = type metadata accessor for URL(0);
  v61 = *(v50 - 8);
  v1 = *(v61 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v51 = &v45;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v60 = &v45;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [String]>);
  v6 = static _DictionaryStorage.copy(original:)(a1);
  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = ~(-1 << v8);
  if (v8 >= 64)
  {
    v9 = -1;
  }

  v10 = v6;
  v11 = a1;
  v12 = *(a1 + 64) & v9;
  v65 = (v8 + 63) >> 6;
  v62 = a1;
  v59 = v6;
  while (1)
  {
    if (v12)
    {
      _BitScanForward64(&v13, v12);
      v12 &= v12 - 1;
      v14 = v13 | (v7 << 6);
      goto LABEL_20;
    }

    v15 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v15 >= v65)
    {
      return v10;
    }

    v16 = *(v11 + 8 * v15 + 64);
    if (!v16)
    {
      break;
    }

    v17 = v7 + 1;
LABEL_19:
    _BitScanForward64(&v18, v16);
    v12 = v16 & (v16 - 1);
    v14 = v18 | (v17 << 6);
    v7 = v17;
LABEL_20:
    v19 = *(v11 + 48);
    v20 = *(v11 + 56);
    v52 = v14;
    v21 = *(v20 + 8 * v14);
    v54 = *(v19 + 16 * v14);
    v53 = 16 * v14;
    v22 = *(v19 + 16 * v14 + 8);
    v23 = *(v21 + 16);
    if (v23)
    {
      v56 = v12;
      v55 = v7;
      v64 = _swiftEmptyArrayStorage;
      v21;
      v57 = v22;
      v22;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v63 = v64;
      v24 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v58 = v21;
      v25 = v21 + v24;
      v48 = *(v61 + 16);
      v49 = *(v61 + 72);
      do
      {
        v45 = v23;
        v26 = v60;
        v46 = v25;
        v27 = v50;
        v28 = v48(v60, v25, v50);
        v29 = v51;
        URL.absoluteURL.getter(v28);
        v30 = URL.path.getter(v26);
        v47 = v31;
        v32 = *(v61 + 8);
        v32(v29, v27);
        v32(v60, v27);
        v64 = v63;
        v33 = v63[2];
        v34 = v63;
        if (v63[3] >> 1 <= v33)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63[3] >= 2uLL, v33 + 1, 1);
          v34 = v64;
        }

        v63 = v34;
        v34[2] = v33 + 1;
        v35 = 2 * v33;
        v34[v35 + 4] = v30;
        v34[v35 + 5] = v47;
        v25 = v49 + v46;
        v23 = v45 - 1;
      }

      while (v45 != 1);
      v58;
      v11 = v62;
      v7 = v55;
      v10 = v59;
      v12 = v56;
      v22 = v57;
      v36 = v63;
    }

    else
    {
      v37 = v7;
      *(v19 + 16 * v14 + 8);
      v7 = v37;
      v11 = v62;
      v36 = _swiftEmptyArrayStorage;
    }

    v38 = v52;
    v10[(v52 >> 6) + 8] |= 1 << v52;
    v39 = v10[6];
    v40 = v53;
    *(v39 + v53) = v54;
    *(v39 + v40 + 8) = v22;
    *(v10[7] + 8 * v38) = v36;
    v41 = v10[2];
    v42 = __OFADD__(1, v41);
    v43 = v41 + 1;
    if (v42)
    {
      BUG();
    }

    v10[2] = v43;
  }

  v17 = v7 + 2;
  if (v7 + 2 >= v65)
  {
    return v10;
  }

  v16 = *(v11 + 8 * v15 + 72);
  if (v16)
  {
    goto LABEL_19;
  }

  v17 = v7 + 3;
  if (v7 + 3 >= v65)
  {
    return v10;
  }

  v16 = *(v11 + 8 * v15 + 80);
  if (v16)
  {
    goto LABEL_19;
  }

  v17 = v7 + 4;
  if (v7 + 4 >= v65)
  {
    return v10;
  }

  v16 = *(v11 + 8 * v15 + 88);
  if (v16)
  {
    goto LABEL_19;
  }

  while (v7 + 5 < v65)
  {
    v16 = *(v11 + 8 * v7++ + 104);
    if (v16)
    {
      v17 = v7 + 4;
      goto LABEL_19;
    }
  }

  return v10;
}

uint64_t _sxRi_zRi0_zlySaySdGIsegr_SgWOe(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a2;
  }

  return result;
}

uint64_t *outlined release of MLObjectDetector.PrecisionRecallCurve(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  a1[6], a2;
  v5, a2;
  v4, a2;
  v3, a2;
  v2, a2;
  v7, a2;
  return a1;
}

uint64_t destroy for MLObjectDetector.AnnotatedPredictionForLabel(void *a1, uint64_t a2)
{
  *a1, a2;
  a1[1], a2;
  return a1[3], a2;
}

uint64_t *initializeWithCopy for MLObjectDetector.AnnotatedPredictionForLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = a2[3];
  a1[3] = v5;
  v3;
  v4;
  v5;
  return a1;
}

uint64_t *assignWithCopy for MLObjectDetector.AnnotatedPredictionForLabel(uint64_t *a1, uint64_t *a2)
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
  a1[2] = a2[2];
  v7 = a2[3];
  v8 = a1[3];
  a1[3] = v7;
  v7;
  v8, a2;
  return a1;
}

void *assignWithTake for MLObjectDetector.AnnotatedPredictionForLabel(void *a1, uint64_t a2)
{
  *a1, a2;
  v3 = a1[1];
  *a1 = *a2;
  v3, a2;
  a1[2] = *(a2 + 16);
  v4 = a1[3];
  a1[3] = *(a2 + 24);
  v4, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.Metrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

{
  return getEnumTagSinglePayload for MLObjectDetector.AnnotatedPredictionForLabel(a1, a2);
}

void storeEnumTagSinglePayload for MLObjectDetector.Metrics(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 32) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 32) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

{
  storeEnumTagSinglePayload for MLObjectDetector.AnnotatedPredictionForLabel(a1, a2, a3);
}

uint64_t *initializeBufferWithCopyOfBuffer for PersistentParametersForTreeBasedMethods(uint64_t *a1, uint64_t *a2, int *a3)
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
    v19 = *(*(v6 - 8) + 16);
    v19(a1, a2, v6);
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
      v19(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v11 = a3[6];
    *(a1 + v11) = *(a2 + v11);
    v12 = *(a2 + v11 + 8);
    *(a1 + v11 + 8) = v12;
    v13 = a3[7];
    v14 = *(a2 + v13);
    *(a1 + v13) = v14;
    v15 = a3[8];
    __dsta = a1 + v15;
    v16 = a2 + v15;
    v17 = type metadata accessor for BoostedTreeConfiguration(0);
    v20 = *(*(v17 - 8) + 16);
    v12;
    v14;
    v20(__dsta, v16, v17);
  }

  return v3;
}

uint64_t destroy for PersistentParametersForTreeBasedMethods(uint64_t a1, int *a2)
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
  v5 = a1 + a2[8];
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v6 - 8) + 8))(v5, v6);
}

char *initializeWithCopy for PersistentParametersForTreeBasedMethods(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v16 = *(*(v4 - 8) + 16);
  v16(a1, a2, v4);
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
    v16(__dst, v6, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  v8 = a3[6];
  *&a1[v8] = *&a2[v8];
  v9 = *&a2[v8 + 8];
  *&a1[v8 + 8] = v9;
  v10 = a3[7];
  v11 = *&a2[v10];
  *&a1[v10] = v11;
  v12 = a3[8];
  __dsta = &a1[v12];
  v13 = &a2[v12];
  v14 = type metadata accessor for BoostedTreeConfiguration(0);
  v17 = *(*(v14 - 8) + 16);
  v9;
  v11;
  v17(__dsta, v13, v14);
  return a1;
}

uint64_t assignWithCopy for PersistentParametersForTreeBasedMethods(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v25 = *(v5 - 8);
  v24 = *(v25 + 24);
  v24(a1, a2, v5);
  v23 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v25 + 16))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_9;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v24(v7, v8, v5);
      goto LABEL_9;
    }

    (*(v25 + 8))(v7, v5, v10, v24);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  memcpy(v7, v8, v11);
LABEL_9:
  v12 = v23[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a2 + v12 + 8);
  v14 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = v13;
  v13;
  v14;
  v15 = v23[7];
  v16 = *(a2 + v15);
  v17 = *(a1 + v15);
  *(a1 + v15) = v16;
  v16;
  v17;
  v18 = v23[8];
  v19 = a1 + v18;
  v20 = v18 + a2;
  v21 = type metadata accessor for BoostedTreeConfiguration(0);
  (*(*(v21 - 8) + 24))(v19, v20, v21);
  return a1;
}

char *initializeWithTake for PersistentParametersForTreeBasedMethods(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v13 = *(*(v4 - 8) + 32);
  v13(a1, a2, v4);
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
    v13(__dst, v6, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  v8 = a3[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for BoostedTreeConfiguration(0);
  (*(*(v11 - 8) + 32))(v9, v10, v11);
  return a1;
}

uint64_t assignWithTake for PersistentParametersForTreeBasedMethods(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v23 = *(v5 - 8);
  v22 = *(v23 + 40);
  v22(a1, a2, v5);
  v21 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v23 + 32))(v7, v8, v5);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
      goto LABEL_9;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v22(v7, v8, v5);
      goto LABEL_9;
    }

    (*(v23 + 8))(v7, v5, v10, v22);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  }

  memcpy(v7, v8, v11);
LABEL_9:
  v12 = v21[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);
  v13;
  v14 = v21[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  v15;
  v16 = v21[8];
  v17 = a1 + v16;
  v18 = v16 + a2;
  v19 = type metadata accessor for BoostedTreeConfiguration(0);
  (*(*(v19 - 8) + 40))(v17, v18, v19);
  return a1;
}

uint64_t sub_5320C(uint64_t a1, unsigned int a2, int *a3)
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
    v6 = a3[5];
LABEL_9:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for BoostedTreeConfiguration(0);
    v6 = a3[8];
    goto LABEL_9;
  }

  result = 0;
  if ((*(a1 + a3[6] + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[6] + 8) >> 1) + 1;
  }

  return result;
}

uint64_t sub_532B5(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for DataFrame(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        result = a4[6];
        *(a1 + result + 8) = 2 * (a2 - 1);
        return result;
      }

      v7 = type metadata accessor for BoostedTreeConfiguration(0);
      v8 = a4[8];
    }

    v6 = v8 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for PersistentParametersForTreeBasedMethods(uint64_t a1)
{
  result = type metadata singleton initialization cache for PersistentParametersForTreeBasedMethods;
  if (!type metadata singleton initialization cache for PersistentParametersForTreeBasedMethods)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for PersistentParametersForTreeBasedMethods);
  }

  return result;
}

uint64_t type metadata completion function for PersistentParametersForTreeBasedMethods(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    result = type metadata accessor for DataFrame?(319);
    if (v3 <= 0x3F)
    {
      v5[1] = *(result - 8) + 64;
      v5[2] = &unk_33E508;
      v5[3] = &value witness table for Builtin.BridgeObject + 64;
      result = type metadata accessor for BoostedTreeConfiguration(319);
      if (v4 <= 0x3F)
      {
        v5[4] = *(result - 8) + 64;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

NSURL *PersistentParametersForTreeBasedMethods.init(sessionDirectory:)(uint64_t a1)
{
  v136 = v2;
  v143 = a1;
  v3 = v1;
  v120 = type metadata accessor for CSVType(0);
  v125 = *(v120 - 8);
  v4 = *(v125 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v119 = &v106;
  v7 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v107 = &v106;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v108 = &v106;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v122 = &v106;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v134 = &v106;
  v17 = type metadata accessor for DataFrame(0);
  v124 = *(v17 - 8);
  v18 = *(v124 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v121 = &v106;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v128 = &v106;
  v137 = type metadata accessor for URL(0);
  v23 = *(v137 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v118 = &v106;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v123 = &v106;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v109 = &v106;
  v31 = alloca(v24);
  v32 = alloca(v24);
  v133 = &v106;
  v33 = alloca(v24);
  v34 = alloca(v24);
  v132 = &v106;
  v35 = alloca(v24);
  v36 = alloca(v24);
  v129 = &v106;
  v37 = alloca(v24);
  v38 = alloca(v24);
  v126 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v39 = *(v126 + 20);
  v131 = v3;
  v117 = v3 + v39;
  v127 = v17;
  __swift_storeEnumTagSinglePayload(v3 + v39, 1, 1, v17);
  v40 = v143;
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v41 = v136;
  v42 = Data.init(contentsOf:options:)(&v106, 0);
  v136 = v41;
  if (v41)
  {
    v44 = *(v23 + 8);
    v45 = v137;
    v44(v40, v137);
    v44(&v106, v45);
LABEL_48:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v117, &demangling cache variable for type metadata for DataFrame?);
    return __stack_chk_guard;
  }

  v46 = v43;
  v130 = v23;
  v47 = *(v23 + 8);
  v48 = v137;
  v49 = v42;
  v142 = v47;
  v47(&v106, v137);
  v50 = objc_opt_self(NSPropertyListSerialization);
  v135 = v49;
  v51.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v144 = v46;
  isa = v51.super.isa;
  v146[0] = 0;
  v53 = [v50 propertyListWithData:v51.super.isa options:0 format:0 error:v146];
  v54 = v53;

  v55 = v146[0];
  if (!v54)
  {
    v73 = v55;
    _convertNSErrorToError(_:)(v55);

    swift_willThrow(v73, "propertyListWithData:options:format:error:");
    outlined consume of Data._Representation(v135, v144);
    v142(v143, v48);
    goto LABEL_48;
  }

  _bridgeAnyObjectToAny(_:)(v54);
  swift_unknownObjectRelease(v54);
  outlined init with copy of Any(v148, v146);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v145, v146, &type metadata for Any + 8, v56, 6))
  {
    v74 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v74, 0, 0);
    *v75 = 0xD000000000000037;
    *(v75 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v75 + 16) = 0;
    *(v75 + 32) = 0;
    *(v75 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v74);
    outlined consume of Data._Representation(v135, v144);
    v142(v143, v48);
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    goto LABEL_48;
  }

  v138 = &type metadata for Any + 8;
  v57 = v145[0];
  specialized Dictionary.subscript.getter(0x746567726174, 0xE600000000000000, v145[0]);
  v58 = v143;
  v59 = v144;
  if (!v147)
  {
    v57;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v146, &demangling cache variable for type metadata for Any?);
LABEL_34:
    v76 = v142;
LABEL_46:
    v81 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v81, 0, 0);
    *v82 = 0xD000000000000034;
    *(v82 + 8) = "ad training parameters." + 0x8000000000000000;
    *(v82 + 16) = 0;
    *(v82 + 32) = 0;
    *(v82 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v81);
    outlined consume of Data._Representation(v135, v59);
    v76(v58, v137);
    goto LABEL_47;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for String, 6))
  {
    v57;
    goto LABEL_34;
  }

  v110 = v145[0];
  v60 = v145[1];
  specialized Dictionary.subscript.getter(0xD000000000000010, ("training parameters." + 0x8000000000000000), v57);
  if (!v147)
  {
LABEL_42:
    v77 = v60;
    goto LABEL_43;
  }

  v141 = v57;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(v145, v146, v138, v61, 6))
  {
LABEL_39:
    v78 = v60;
    goto LABEL_40;
  }

  v139 = v60;
  v62 = v145[0];
  v57 = v141;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v141);
  if (!v147)
  {
    v62;
    v77 = v139;
LABEL_43:
    v77;
    v80 = v57;
LABEL_44:
    v80;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v146, &demangling cache variable for type metadata for Any?);
    goto LABEL_45;
  }

  v140 = v62;
  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Int, 6))
  {
    goto LABEL_36;
  }

  v111 = v145[0];
  v57 = v141;
  specialized Dictionary.subscript.getter(0x687470654478616DLL, 0xE800000000000000, v141);
  v60 = v139;
  if (!v147)
  {
    v140;
    goto LABEL_42;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Int, 6))
  {
LABEL_37:
    v79 = v140;
LABEL_38:
    v79;
    goto LABEL_39;
  }

  v63 = v145[0];
  v64 = v141;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("selectedFeatures" + 0x8000000000000000), v141);
  if (!v147)
  {
    v140;
    v60;
    v80 = v64;
    goto LABEL_44;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Double, 6))
  {
    goto LABEL_37;
  }

  v112 = *v145;
  specialized Dictionary.subscript.getter(0x646C6968436E696DLL, 0xEE00746867696557, v141);
  v65 = v140;
  if (!v147)
  {
LABEL_51:
    v65;
    v84 = v60;
LABEL_52:
    v84;
    v80 = v141;
    goto LABEL_44;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Double, 6))
  {
    v79 = v65;
    goto LABEL_38;
  }

  v113 = *v145;
  specialized Dictionary.subscript.getter(0x65536D6F646E6172, 0xEA00000000006465, v141);
  if (!v147)
  {
    goto LABEL_51;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Int, 6))
  {
    goto LABEL_36;
  }

  v66 = v145[0];
  specialized Dictionary.subscript.getter(0x6173627553776F72, 0xEC000000656C706DLL, v141);
  if (!v147)
  {
LABEL_54:
    v140;
    v84 = v139;
    goto LABEL_52;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Double, 6))
  {
LABEL_36:
    v140;
    v78 = v139;
LABEL_40:
    v78;
    v141;
LABEL_45:
    v58 = v143;
    v76 = v142;
    v59 = v144;
    goto LABEL_46;
  }

  v114 = *v145;
  specialized Dictionary.subscript.getter(0x75536E6D756C6F63, 0xEF656C706D617362, v141);
  if (!v147)
  {
    goto LABEL_54;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Double, 6))
  {
    goto LABEL_36;
  }

  v115 = *v145;
  specialized Dictionary.subscript.getter(0x657A695370657473, 0xE800000000000000, v141);
  if (!v147)
  {
    goto LABEL_54;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Double, 6))
  {
    goto LABEL_36;
  }

  v116 = *v145;
  specialized Dictionary.subscript.getter(0xD000000000000013, ("minLossReduction" + 0x8000000000000000), v141);
  if (!v147)
  {
    goto LABEL_54;
  }

  if (!swift_dynamicCast(v145, v146, v138, &type metadata for Int, 6))
  {
    goto LABEL_36;
  }

  v67 = v145[0];
  v68 = v126;
  v69 = *(v126 + 24);
  v70 = v131;
  *(v131 + v69) = v110;
  *(v70 + v69 + 8) = v139;
  *(v70 + *(v68 + 28)) = v140;
  v71 = v70 + *(v68 + 32);
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.maximumIterations.setter(v111);
  BoostedTreeConfiguration.maximumDepth.setter(v63);
  BoostedTreeConfiguration.minimumLossReduction.setter(v112);
  BoostedTreeConfiguration.minimumChildWeight.setter(v113);
  BoostedTreeConfiguration.randomSeed.setter(v66);
  BoostedTreeConfiguration.rowSubsample.setter(v114);
  BoostedTreeConfiguration.columnSubsample.setter(v115);
  BoostedTreeConfiguration.learningRate.setter(v116);
  BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v67, 0);
  v72 = v141;
  specialized Dictionary.subscript.getter(0xD000000000000011, ("earlyStoppingRounds" + 0x8000000000000000), v141);
  v72;
  if (v147)
  {
    if (swift_dynamicCast(v145, v146, v138, &type metadata for Int, 6))
    {
      BoostedTreeConfiguration.parallelTreeCount.setter(v145[0]);
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v146, &demangling cache variable for type metadata for Any?);
  }

  v85 = v129;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  v86 = v133;
  v130 = *(v130 + 16);
  (v130)(v133, v85, v137);
  v87 = v136;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v86, 0, 0, 0, 1);
  v133 = v87;
  if (v87)
  {
    (v130)(v118, v129, v137);
    v136 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v134 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v88 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v89 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v90 = *(v125 + 104);
    v91 = v119;
    LODWORD(v125) = enum case for CSVType.double(_:);
    v128 = v90;
    (v90)(v119, enum case for CSVType.double(_:), v120);
    v92 = v107;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v134, v88, v89, v91, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v118, 0, 0, 0, 1, v136, v92);
    v136 = 0;
    (*(v124 + 32))(v131, v121, v127);
    (v130)(v123, v132, v137);
    v131 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v126 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v134 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v96 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v97 = v119;
    (v128)(v119, v125, v120);
    v98 = v108;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v126, v134, v96, v97, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    v99 = 0;
    v100 = v136;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v123, 0, 0, 0, 1, v131, v98);
    outlined consume of Data._Representation(v135, v144);
    if (v100)
    {
      v133;
      v133 = v100;
      v99 = 1;
    }

    v133;
    v103 = v137;
    v104 = v142;
    v142(v143, v137);
    v104(v132, v103);
    v104(v129, v103);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    v105 = v122;
    __swift_storeEnumTagSinglePayload(v122, v99, 1, v127);
    v134 = v105;
  }

  else
  {
    (*(v124 + 32))(v131, v128, v127);
    v93 = v109;
    (v130)(v109, v132, v137);
    v94 = 0;
    v95 = v133;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v93, 0, 0, 0, 1);
    outlined consume of Data._Representation(v135, v144);
    if (v95)
    {
      v95;
      v94 = 1;
    }

    v101 = v137;
    v102 = v142;
    v142(v143, v137);
    v102(v132, v101);
    v102(v129, v101);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    __swift_storeEnumTagSinglePayload(v134, v94, 1, v127);
  }

  outlined assign with take of DataFrame?(v134, v117);
  return __stack_chk_guard;
}

NSURL *PersistentParametersForTreeBasedMethods.save(toSessionDirectory:)(uint64_t a1)
{
  v76 = v1;
  v3 = v2;
  v68 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v73 = &v61;
  v72 = type metadata accessor for CSVWritingOptions(0);
  v69 = *(v72 - 8);
  v7 = *(v69 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v67 = &v61;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v64 = &v61;
  v75 = type metadata accessor for URL(0);
  v78 = *(v75 - 8);
  v12 = *(v78 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v70 = &v61;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v65 = &v61;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v62 = &v61;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v19, v83);
  *(inited + 16) = 11;
  *(inited + 24) = 22;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v21 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v22 = v21[6];
  v23 = *(v2 + v22);
  v77 = *(v2 + v22 + 8);
  v24 = v77;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "training parameters." + 0x8000000000000000;
  v25 = *(v2 + v21[7]);
  v74 = v25;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 96) = v25;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v66 = v21;
  v26 = v21[8];
  v63 = v3;
  v77;
  v74;
  v27 = BoostedTreeConfiguration.maximumIterations.getter();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v27;
  *(inited + 176) = 0x687470654478616DLL;
  *(inited + 184) = 0xE800000000000000;
  v28 = BoostedTreeConfiguration.maximumDepth.getter();
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v28;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = "selectedFeatures" + 0x8000000000000000;
  v29 = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(inited + 264) = &type metadata for Double;
  *(inited + 240) = v29;
  strcpy((inited + 272), "minChildWeight");
  *(inited + 287) = -18;
  v30 = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v30;
  *(inited + 320) = 0x65536D6F646E6172;
  *(inited + 328) = 0xEA00000000006465;
  v31 = BoostedTreeConfiguration.randomSeed.getter();
  *(inited + 360) = &type metadata for Int;
  *(inited + 336) = v31;
  strcpy((inited + 368), "rowSubsample");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  v32 = BoostedTreeConfiguration.rowSubsample.getter();
  *(inited + 408) = &type metadata for Double;
  *(inited + 384) = v32;
  *(inited + 416) = 0x75536E6D756C6F63;
  *(inited + 424) = 0xEF656C706D617362;
  v33 = BoostedTreeConfiguration.columnSubsample.getter();
  *(inited + 456) = &type metadata for Double;
  *(inited + 432) = v33;
  *(inited + 464) = 0x657A695370657473;
  *(inited + 472) = 0xE800000000000000;
  v34 = BoostedTreeConfiguration.learningRate.getter();
  *(inited + 504) = &type metadata for Double;
  *(inited + 480) = v34;
  *(inited + 512) = 0xD000000000000013;
  *(inited + 520) = "minLossReduction" + 0x8000000000000000;
  v35 = BoostedTreeConfiguration.earlyStoppingIterationCount.getter();
  *(inited + 552) = &type metadata for Int;
  if (v36)
  {
    v35 = 0;
  }

  *(inited + 528) = v35;
  v37 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  if (BoostedTreeConfiguration.parallelTreeCount.getter() != 1)
  {
    v38 = BoostedTreeConfiguration.parallelTreeCount.getter();
    v82 = &type metadata for Int;
    *&v81 = v38;
    outlined init with take of Any(&v81, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v37);
    v79 = v37;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, 0xD000000000000011, ("earlyStoppingRounds" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    v37 = v79;
  }

  v40 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v37;
  *&v81 = 0;
  v42 = [v40 dataWithPropertyList:isa format:200 options:0 error:&v81];
  v43 = v42;

  v44 = v81;
  if (v43)
  {
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v43);
    v46 = v43;
    v48 = v47;

    v49 = v62;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v50 = v76;
    Data.write(to:options:)(v49, 0, v45, v48);
    v77 = v50;
    if (v50)
    {
      (*(v78 + 8))(v49, v75);
      outlined consume of Data._Representation(v45, v48);
    }

    else
    {
      v71 = v45;
      v76 = v48;
      v74 = *(v78 + 8);
      v74(v49, v75);
      v52 = v65;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v53 = v64;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v78 = type metadata accessor for DataFrame(0);
      v54 = v63;
      v55 = v77;
      DataFrameProtocol.writeCSV(to:options:)(v52, v53, v78, &protocol witness table for DataFrame);
      if (v55)
      {
        outlined consume of Data._Representation(v71, v76);
        (*(v69 + 8))(v53, v72);
        v74(v52, v75);
      }

      else
      {
        v77 = *(v69 + 8);
        v77(v53, v72);
        v74(v52, v75);
        v56 = v66[5] + v54;
        v57 = v73;
        outlined init with copy of (String, CSVType)(v56, v73, &demangling cache variable for type metadata for DataFrame?);
        if (__swift_getEnumTagSinglePayload(v57, 1, v78) == 1)
        {
          outlined consume of Data._Representation(v71, v76);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v57, &demangling cache variable for type metadata for DataFrame?);
        }

        else
        {
          v58 = v70;
          URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
          v59 = v67;
          CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
          DataFrameProtocol.writeCSV(to:options:)(v58, v59, v78, &protocol witness table for DataFrame);
          outlined consume of Data._Representation(v71, v76);
          v77(v59, v72);
          v74(v70, v75);
          (*(*(v78 - 8) + 8))(v73);
        }
      }
    }
  }

  else
  {
    v51 = v44;
    _convertNSErrorToError(_:)(v44);

    swift_willThrow(v51, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v30 = &v26;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, CSVType>);
    v7 = static _DictionaryStorage.allocate(capacity:)(v6);
    v8 = *(a1 + 16);
    if (v8)
    {
      v27 = v30 + *(v1 + 48);
      v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v29 = a1;
      v10 = a1 + v9;
      v28 = *(v2 + 72);

      do
      {
        v26 = v8;
        v11 = v30;
        outlined init with copy of (String, CSVType)(v10, v30, &demangling cache variable for type metadata for (String, CSVType));
        v12 = *v11;
        v13 = v11[1];
        *&v14 = *v11;
        *(&v14 + 1) = v13;
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v16)
        {
          BUG();
        }

        v17 = v15;
        v7[(v15 >> 6) + 8] |= 1 << v15;
        v18 = v7[6];
        v19 = 16 * v17;
        *(v18 + v19) = v12;
        *(v18 + v19 + 8) = v13;
        v20 = v7[7];
        v21 = type metadata accessor for CSVType(0);
        (*(*(v21 - 8) + 32))(v20 + v17 * *(*(v21 - 8) + 72), v27, v21);
        v22 = v7[2];
        v23 = __OFADD__(1, v22);
        v24 = v22 + 1;
        if (v23)
        {
          BUG();
        }

        v7[2] = v24;
        v10 += v28;
        v8 = v26 - 1;
      }

      while (v26 != 1);

      a1 = v29;
    }
  }

  else
  {
    v7 = _swiftEmptyDictionarySingleton;
  }

  a1;
  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 a1)
{
  Hasher.init(_seed:)(*(v1 + 40));
  String.hash(into:)(v4, a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(__int128 a1, unint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  v4 = v3 & a2;
  v5 = *(v2 + 8 * ((v3 & a2) >> 6) + 64);
  if (_bittest64(&v5, v3 & a2))
  {
    v6 = *(v2 + 48);
    if (a1 != *(v6 + 16 * v4) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v4), *(v6 + 16 * v4 + 8), a1, *(&a1 + 1), 0) & 1) == 0)
    {
      v4 = v3 & (v4 + 1);
      v7 = *(v2 + 8 * (v4 >> 6) + 64);
      if (_bittest64(&v7, v4))
      {
        if (a1 != *(v6 + 16 * v4) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v4), *(v6 + 16 * v4 + 8), a1, *(&a1 + 1), 0) & 1) == 0)
        {
          v4 = v3 & (v4 + 1);
          v8 = *(v2 + 8 * (v4 >> 6) + 64);
          if (_bittest64(&v8, v4))
          {
            do
            {
              if (a1 == *(v6 + 16 * v4))
              {
                break;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)(*(v6 + 16 * v4), *(v6 + 16 * v4 + 8), a1, *(&a1 + 1), 0))
              {
                break;
              }

              v4 = v3 & (v4 + 1);
              v9 = *(v2 + 8 * (v4 >> 6) + 64);
            }

            while (_bittest64(&v9, v4));
          }
        }
      }
    }
  }

  return v4;
}

uint64_t outlined init with copy of (String, CSVType)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t MLStyleTransfer.init(model:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for _Model();
  swift_allocObject(v4, 48, 7);

  v5 = swift_task_alloc(80);
  v3[5] = v5;
  *v5 = v3;
  v5[1] = MLStyleTransfer.init(model:parameters:);
  return _Model.init(impl:)(a2);
}

uint64_t MLStyleTransfer.init(model:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 40);
  v4 = *v2;
  *(*v2 + 48) = v1;
  v5;
  if (v1)
  {
    v6 = MLStyleTransfer.init(model:parameters:);
  }

  else
  {
    *(v4 + 56) = a1;
    v6 = MLStyleTransfer.init(model:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}