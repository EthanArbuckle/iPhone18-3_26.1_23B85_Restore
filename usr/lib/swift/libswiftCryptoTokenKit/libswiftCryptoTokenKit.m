uint64_t sub_299A66AF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

void TKSmartCard.send(ins:p1:p2:data:le:reply:)(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (a5 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = a9;
    if ((a7 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  isa = 0;
  v17 = a9;
  if (a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_6:
  v20[4] = a8;
  v20[5] = v17;
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @unowned UInt16, @guaranteed Error?) -> ();
  v20[3] = &block_descriptor;
  v19 = _Block_copy(v20);

  [v9 sendIns:a1 p1:a2 p2:a3 data:isa le:v18 reply:v19];

  _Block_release(v19);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @unowned UInt16, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a4;
  v8(v6, v11, a3, a4);

  outlined consume of Data?(v6, v11);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TKSmartCard.send(ins:p1:p2:data:le:)(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  v22 = *MEMORY[0x29EDCA608];
  v21 = 0;
  if (a5 >> 60 == 15)
  {
    isa = 0;
    if ((a7 & 1) == 0)
    {
LABEL_3:
      v14 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if ((a7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v20 = 0;
  v15 = [v7 sendIns:a1 p1:a2 p2:a3 data:isa le:v14 sw:&v21 error:&v20];

  v16 = v20;
  if (v15)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    result = v21;
  }

  else
  {
    v18 = v16;
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t TKSmartCard.withSession<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v5 = v4;
  aBlock[6] = *MEMORY[0x29EDCA608];
  v9 = type metadata accessor for Optional();
  v25 = *(v9 - 8);
  v10 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v12 = &v24 - v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(a3 - 8);
  (*(v16 + 56))(v14, 1, 1, a3);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v13;
  v17[4] = a1;
  v17[5] = a2;
  aBlock[4] = partial apply for closure #1 in TKSmartCard.withSession<A>(_:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_3;
  v18 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(v5) = [v5 inSessionWithError:aBlock executeBlock:v18];
  _Block_release(v18);
  v19 = aBlock[0];
  if (!v5)
  {
    v22 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_5;
  }

  swift_beginAccess();
  (*(v25 + 16))(v12, v15, v9);
  result = (*(v16 + 48))(v12, 1, a3);
  if (result != 1)
  {
    (*(v16 + 32))(v24, v12, a3);
    v21 = v19;

LABEL_5:
    v23 = *MEMORY[0x29EDCA608];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in TKSmartCard.withSession<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = &v14 - v10;
  v12 = swift_projectBox();
  a3();
  (*(*(a5 - 8) + 56))(v11, 0, 1, a5);
  swift_beginAccess();
  (*(v8 + 40))(v12, v11, v7);
  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}