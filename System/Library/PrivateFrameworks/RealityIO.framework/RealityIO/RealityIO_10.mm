void AnyAttribute.value.setter(void *a1)
{
  v2 = *(v1 + 16);
  RIOPxrUsdAttributeSetValue();
}

void (*AnyAttribute.value.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  *a1 = EmptyValue;
  return AnyAttribute.value.modify;
}

void AnyAttribute.value.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrUsdAttributeSetValue();
}

uint64_t AnyAttribute.subscript.getter()
{
  v1 = *(v0 + 16);
  result = RIOPxrUsdAttributeCopyValue();
  if (!result)
  {

    return RIOPxrVtValueCreateEmptyValue();
  }

  return result;
}

uint64_t key path getter for AnyAttribute.subscript(at:) : AnyAttribute@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = *(*a1 + 16);
  result = RIOPxrUsdAttributeCopyValue();
  if (!result)
  {
    result = RIOPxrVtValueCreateEmptyValue();
  }

  *a3 = result;
  return result;
}

void AnyAttribute.subscript.setter(void *a1)
{
  v2 = *(v1 + 16);
  RIOPxrUsdAttributeSetValue();
}

void (*AnyAttribute.subscript.modify(uint64_t a1, double a2))(uint64_t a1)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = *(v2 + 16);
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  *a1 = EmptyValue;
  return AnyAttribute.subscript.modify;
}

void AnyAttribute.subscript.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = *a1;
  RIOPxrUsdAttributeSetValue();
}

unint64_t AnyAttribute.sdfVariability.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdAttributeGetVariability();
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    *a1 = (result & 1) == 0;
  }

  return result;
}

uint64_t AnyAttribute.timeSamples.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOPxrUsdAttributeCopyTimeSamples();
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  return MEMORY[0x277D84F90];
}

uint64_t AnyAttribute.addConnection(source:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdAttributeAddConnection();
}

uint64_t AnyAttribute.removeConnection(source:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return RIOPxrUsdAttributeRemoveConnection();
}

Swift::Void __swiftcall AnyAttribute.setConnections(connections:)(Swift::OpaquePointer connections)
{
  v2 = *(v1 + 16);
  v3 = *(connections._rawValue + 2);
  if (v3)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (connections._rawValue + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for RIOPxrSdfPathRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  RIOPxrUsdAttributeSetConnections();
}

uint64_t Prim.propertyNames()(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v6 = a1(*(v3 + 16));
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      a2(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_20:

    return MEMORY[0x277D84F90];
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_7:
  result = a3(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v7;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          a3(v15 > 1, v16 + 1, 1);
          v14 = v17;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v7 + 16);
        v20 = *(v7 + 24);
        v21 = *(v9 + v18);
        if (v19 >= v20 >> 1)
        {
          v22 = v20 > 1;
          v23 = v21;
          a3(v22, v19 + 1, 1);
          v21 = v23;
        }

        *(v7 + 16) = v19 + 1;
        *(v7 + 8 * v19 + 32) = v21;
        v18 += 8;
        --v10;
      }

      while (v10);
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t AnyAttribute.colorSpace.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOPxrUsdAttributeCopyColorSpace();
  *a1 = result;
  return result;
}

void AnyAttribute.colorSpace.setter(id *a1)
{
  v3 = *a1;
  v2 = *(v1 + 16);
  RIOPxrUsdAttributeSetColorSpace();
}

void (*AnyAttribute.colorSpace.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdAttributeCopyColorSpace();
  return AnyAttribute.colorSpace.modify;
}

void AnyAttribute.colorSpace.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrUsdAttributeSetColorSpace();
}

id key path setter for Properties.subscript<A>(dynamicMember:) : <A><A1>Properties<A>AA1(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = type metadata accessor for Properties();

  return specialized Properties.subscript.setter(a1, v7, v8, v6);
}

uint64_t Properties.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *a1;
  v11 = *(a2 + 28);
  swift_getAtKeyPath();
  v12 = *v5;
  if (String.count.getter() < 1)
  {

    v13 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();

    v13 = RIOPxrTfTokenCreateWithCString();
  }

  v21 = v13;
  v14 = *(*(v10 + *MEMORY[0x277D84DE8] + 8) + 16);
  Prim.attribute<A>(of:type:)(&v21, v14, a3, &v24);

  v21 = v24;
  v22 = v25;
  type metadata accessor for Attribute();
  lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
  v15 = type metadata accessor for Result();
  v16 = _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v15, &v20, &v23);
  v24 = v23;
  MEMORY[0x28223BE20](v16);
  v19[2] = *(a2 + 16);
  v19[3] = v14;
  v19[4] = a3;
  *&v19[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Properties.subscript.getter, v19, MEMORY[0x277D84A98], v14, v17, a4);
}

id Properties.subscript.setter(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v34 = a6;
  v36 = a4;
  v33 = a3;
  v12 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v30 - v17;
  v19 = *(v12 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v30 - v21;
  v23 = *(a5 + 28);
  v35 = v7;
  swift_getAtKeyPath();
  (*(v14 + 16))(v18, a1, v13);
  if ((*(v19 + 48))(v18, 1, v12) == 1)
  {
    v24 = *(v14 + 8);
    v24(a1, v13);

    return (v24)(v18, v13);
  }

  else
  {
    v30[1] = a2;
    v31 = v19;
    v32 = a1;
    (*(v19 + 32))(v22, v18, v12);
    v26 = *v35;
    if (String.count.getter() < 1)
    {

      result = RIOPxrTfTokenEmpty();
      v27 = result;
    }

    else
    {
      String.utf8CString.getter();

      v27 = RIOPxrTfTokenCreateWithCString();
    }

    v28 = v31;
    v38 = v27;
    v29 = v32;
    if (v36 > 2)
    {
      __break(1u);
    }

    else
    {
      v37 = (v36 & 1) == 0;
      Prim.setAttribute<A>(of:value:at:custom:variability:)(&v38, v22, &v37, v12, v34, &v39, a7);

      (*(v14 + 8))(v29, v13);

      outlined consume of Result<AnyAttribute, Object.Error>(v39, v40);
      return (*(v28 + 8))(v22, v12);
    }
  }

  return result;
}

void (*Properties.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v13 = type metadata accessor for Optional();
  v11[4] = v13;
  v14 = *(v13 - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  Properties.subscript.getter(a2, a3, a4, v16, NAN);
  return Properties.subscript.modify;
}

void Properties.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);

    specialized Properties.subscript.setter(v3, v10, v9, v8);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    v12 = **a1;

    specialized Properties.subscript.setter(v4, v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for Properties.subscript<A>(of:at:custom:variability:) : <A><A1>Properties<A>AA1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = type metadata accessor for Properties();
  return Properties.subscript.getter(v6, v8, v5, a3, v7);
}

id key path setter for Properties.subscript<A>(of:at:custom:variability:) : <A><A1>Properties<A>AA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  (*(v18 + 16))(&v21 - v12, a1, v11);
  v19 = type metadata accessor for Properties();

  return Properties.subscript.setter(v13, v14, v16, v17, v19, v8, v15);
}

void (*Properties.subscript.modify(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7))(unsigned __int8 **a1, char a2)
{
  v15 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(0x58uLL);
  }

  v17 = v16;
  *a1 = v16;
  *(v16 + 32) = a6;
  *(v16 + 40) = v7;
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 80) = a3 & 1;
  *(v16 + 8) = a7;
  *v16 = a2;
  v18 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v19 = type metadata accessor for Optional();
  v17[6] = v19;
  v20 = *(v19 - 8);
  v17[7] = v20;
  v21 = *(v20 + 64);
  if (v15)
  {
    v17[8] = swift_coroFrameAlloc();
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v17[8] = malloc(*(v20 + 64));
    v22 = malloc(v21);
  }

  v17[9] = v22;
  Properties.subscript.getter(a2, a5, a6, v22, a7);
  return Properties.subscript.modify;
}

void Properties.subscript.modify(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 9);
  if (a2)
  {
    v5 = *(v2 + 6);
    v6 = *(v2 + 7);
    v7 = *(v2 + 4);
    v20 = *(v2 + 5);
    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    v10 = v2[80];
    v11 = *(v2 + 1);
    v12 = *v2;
    (*(v6 + 16))(v3, v4, v5);

    Properties.subscript.setter(v3, v12, v10, v9, v8, v7, v11);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v14 = *(v2 + 4);
    v13 = *(v2 + 5);
    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    v17 = v2[80];
    v18 = *(v2 + 1);
    v19 = *v2;

    Properties.subscript.setter(v4, v19, v17, v16, v15, v14, v18);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*Properties.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = specialized Properties.subscript.getter(a2, a3);
  return Properties.subscript.modify;
}

uint64_t key path setter for Properties.subscript(dynamicMember:) : <A>Properties<A>A(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = *a1;
  v9 = type metadata accessor for Properties();

  return a5(v10, v7, v9);
}

uint64_t (*Properties.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  a1[2] = a4;
  a1[3] = v4;
  a1[1] = a2;
  *a1 = specialized Properties.subscript.getter(a2, a4);
  return Properties.subscript.modify;
}

uint64_t Properties.subscript.modify(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v6 = *a1;

    specialized Properties.subscript.setter(v4, v5, v3);
  }

  else
  {
    v8 = a1[1];

    return specialized Properties.subscript.setter(v4, v5, v3);
  }
}

char *StaticTypePrim.__allocating_init(prim:type:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized StaticTypePrim.init(prim:type:)(a1);

  return v5;
}

uint64_t key path setter for StaticTypePrim.subscript<A>(of:at:custom:variability:) : <A><A1>StaticTypePrim<A>AA1(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = *a2;

  return specialized StaticTypePrim.subscript.setter(a1, v6, v8, v9, v5, v7);
}

uint64_t key path setter for StaticTypePrim.subscript(dynamicMember:) : <A>StaticTypePrim<A>A(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *a2;

  return StaticTypePrim.subscript.setter(v4, v3);
}

uint64_t key path setter for StaticTypePrim.subscript(of:custom:) : <A>StaticTypePrim<A>A(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *a2;

  return StaticTypePrim.subscript.setter(v4, v3);
}

uint64_t StaticTypePrim.__deallocating_deinit()
{
  StaticTypePrim.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t StaticTypePrim.description.getter()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = RIOPxrUsdObjectCopyPath();
  v3 = RIOPxrSdfPathCopyString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t StaticTypePrim.debugDescription.getter()
{
  MEMORY[0x26670F080](60, 0xE100000000000000);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26670F080](62, 0xE100000000000000);
  v3 = v0[2];
  v4 = Object.debugDescription.getter();
  MEMORY[0x26670F080](v4);

  MEMORY[0x26670F080](10, 0xE100000000000000);

  return 0;
}

uint64_t PrimFlagsConjunctionPredicate.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsConjunctionPredicateCreate();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsConjunctionPredicate.&& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrUsdPrimFlagsCreateConjunctionPredicateJoinWithTerm();
  *a2 = result;
  return result;
}

void static RIOPxrUsdTerm.&& infix(_:_:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void *, uint64_t, void)@<X5>, uint64_t *a7@<X8>)
{
  v13 = a5();
  v14 = a6(v13, a1, a2 & 1);

  v15 = a6(v14, a3, a4 & 1);
  *a7 = v15;
}

uint64_t PrimFlagsDisjunctionPredicate.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsDisjunctionPredicateCreate();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsDisjunctionPredicate.|| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrUsdPrimFlagsCreateDisjunctionPredicateJoinWithTerm();
  *a2 = result;
  return result;
}

uint64_t PrimFlagsPredicate.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreate();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsPredicate.Tautology.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreateTautology();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsPredicate.Contradiction.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreateContradiction();
  *a1 = result;
  return result;
}

uint64_t PrimFlagsPredicate.traverseInstanceProxies(_:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrUsdPrimFlagsPredicateCopyTraverseInstanceProxies();
  *a1 = result;
  return result;
}

uint64_t PrimFlagsPredicate.callAsFunction(prim:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return RIOPxrUsdPrimFlagsPredicateVerifyRIOPxrUsdPrim();
}

uint64_t static PrimFlagsConjunctionPredicate.&& infix(_:_:)@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrUsdPrimFlagsCreateConjunctionPredicateJoinWithTerm();
  *a2 = result;
  return result;
}

uint64_t static PrimFlagsConjunctionPredicate.! prefix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrUsdPrimFlagsCreateConjunctionPredicateNegation();
  *a2 = result;
  return result;
}

uint64_t PrimFlagsConjunctionPredicate.isInstanceProxiesInTraversalIncluded.getter()
{
  v1 = *v0;
  v2 = RIOPxrUsdPrimFlagsConjunctionPredicateToRIOPxrUsdPrimFlagsPredicate();
  v3 = RIOPxrUsdPrimFlagsPredicateIncludeInstanceProxiesInTraversal();

  return v3;
}

uint64_t static PrimFlagsConjunctionPredicate.Default.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateDefaultPredicate();
  *a1 = result;
  return result;
}

void PrimFlagsConjunctionPredicate.init(_:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void *, uint64_t, void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = a3();
  v10 = a4(v9, a1, a2 & 1);

  *a5 = v10;
}

uint64_t static PrimFlagsDisjunctionPredicate.|| infix(_:_:)@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrUsdPrimFlagsCreateDisjunctionPredicateJoinWithTerm();
  *a2 = result;
  return result;
}

uint64_t static PrimFlagsDisjunctionPredicate.! prefix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrUsdPrimFlagsCreateDisjunctionPredicateNegation();
  *a2 = result;
  return result;
}

uint64_t PrimFlagsConjunctionPredicate.traverseInstanceProxies(_:)@<X0>(uint64_t (*a1)(void)@<X1>, void (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  v6 = a1(*v3);
  RIOPxrUsdPrimFlagsPredicateCopyTraverseInstanceProxies();

  a2(0);
  result = swift_dynamicCastUnknownClassUnconditional();
  *a3 = result;
  return result;
}

uint64_t PrimFlagsDisjunctionPredicate.isInstanceProxiesInTraversalIncluded.getter()
{
  v1 = *v0;
  v2 = RIOPxrUsdPrimFlagsDisjunctionPredicateToRIOPxrUsdPrimFlagsPredicate();
  v3 = RIOPxrUsdPrimFlagsPredicateIncludeInstanceProxiesInTraversal();

  return v3;
}

uint64_t PrimFlagsConjunctionPredicate.callAsFunction(prim:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(*v2);
  v5 = *(a1 + 16);
  v6 = RIOPxrUsdPrimFlagsPredicateVerifyRIOPxrUsdPrim();

  return v6;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD3VySiGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySiGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD4VySiGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySiGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO8PrimSpecVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO8PrimSpecVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9ReferenceVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9ReferenceVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMR, &_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMR, &_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMR, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR, &_sSaySdGMd, &_sSaySdGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays5Int32VGGMd, &_ss23_ContiguousArrayStorageCySays5Int32VGGMR, &_sSays5Int32VGMd, &_sSays5Int32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO7Frame4DVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Frame4DVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 7);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float2x2aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float2x2aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float3x3aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float3x3aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySiGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16OutputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16OutputDescriptorOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO6InputsC13PropertyDeltaVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6InputsC13PropertyDeltaVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyytGMd, &_ss23_ContiguousArrayStorageCyytGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMd, &_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCG_SitGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCG_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit17AnimationResourceCG_SitMd, &_sSay10RealityKit17AnimationResourceCG_SitMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16RIOPxrTfTokenRefa_So0d7VtValueG0atGMd, &_ss23_ContiguousArrayStorageCySo16RIOPxrTfTokenRefa_So0d7VtValueG0atGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16RIOPxrTfTokenRefa_So0a7VtValueD0atMd, &_sSo16RIOPxrTfTokenRefa_So0a7VtValueD0atMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token, &type metadata for ToolsFoundations.Token, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path, &type metadata for SceneDescriptionFoundations.Path, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrTfTokenRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, type metadata accessor for RIOPxrTfTokenRef, &lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfLayerRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef, 255, type metadata accessor for RIOPxrSdfLayerRef);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, type metadata accessor for RIOPxrSdfLayerRef, &lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef, type metadata accessor for RIOPxrSdfLayerRef);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v6 = *(v4 + 40);
  a2();
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7, a4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = ~v5;
    a3();
    do
    {
      v12 = *(*(v7 + 48) + 8 * v6);
      v9 = v12;
      v10 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v10)
      {
        break;
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v6 = -1 << *(v5 + 32);
  v7 = a2 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    a3(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(a4, 255, a5);
    do
    {
      v11 = *(*(v5 + 48) + 8 * v7);
      v12 = static _CFObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v21 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMd, &_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v30 = type metadata accessor for __RKEntityInteractionSpecification();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMd, &_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMd, &_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of (URL, __REAsset)(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of (URL, __REAsset)(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMd, &_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMd, &_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMR);
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMd, &_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMR);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v35 = *(*(v5 + 48) + 8 * v20);
      v21 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v22 = *(*(v5 + 48) + 8 * v20);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v35;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v34 = *(*(v5 + 48) + 8 * v20);
      v21 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        v22 = *(*(v5 + 48) + 8 * v20);
      }

      v23 = *(v8 + 40);
      lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMd, &_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMR);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrTfTokenRef(0);
      _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrSdfLayerRef(0);
      _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef, 255, type metadata accessor for RIOPxrSdfLayerRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v33 = *(*(v5 + 56) + 16 * v20);
      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x26670FA20](v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v32;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMd, &_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMd, &_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      v38 = v26[1];
      v39 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v39;
      v18[1] = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for UUID();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for __RKEntityInteractionSpecification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMR);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v7 + 16);
    v44 = v10;
    v45 = v7;
    v46 = v6;
    v20 = (v7 + 32);
    v21 = result + 64;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v27 = v24 | (v14 << 6);
      v28 = *(v10 + 56);
      v29 = *(*(v10 + 48) + 8 * v27);
      v49 = v29;
      v30 = *(v45 + 72);
      v31 = v28 + v30 * v27;
      if (v47)
      {
        (*v20)(v48, v31, v6);
      }

      else
      {
        (*v43)(v48, v31, v6);
        v32 = v29;
      }

      v33 = *(v13 + 40);
      lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v46;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v48;
      *(*(v13 + 48) + 8 * v22) = v49;
      result = (*v20)(*(v13 + 56) + v30 * v22, v23, v6);
      ++*(v13 + 16);
      v10 = v44;
    }

    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v26 = v15[v14];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v18 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMd, &_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        outlined init with take of (URL, __REAsset)(v31, v45);
      }

      else
      {
        outlined init with copy of (URL, __REAsset)(v31, v45);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = outlined init with take of (URL, __REAsset)(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v36 = *(*(v7 + 48) + 8 * v22);
      v23 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
        v24 = *(*(v7 + 48) + 8 * v22);
      }

      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v36;
      *(*(v10 + 56) + 8 * v18) = v23;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

char *specialized StaticTypePrim.init(prim:type:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for Properties();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  *(v2 + 2) = a1;

  Prim.properties<A>(of:)(v4, v9);
  (*(v6 + 32))(&v2[*(*v2 + 96)], v9, v5);
  return v2;
}

uint64_t specialized StaticTypePrim.subscript.setter(uint64_t a1, void *a2)
{
  v3 = *(*(*(*a2 + *MEMORY[0x277D84568] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = *(v2 + 16);
  (*(v6 + 16))(v8 - v4);
  v8[1] = v5;

  swift_setAtReferenceWritableKeyPath();
}

id specialized Properties.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1);
  return Properties.subscript.setter(v12, a2, 0, 0, a3, a4, NAN);
}

uint64_t specialized StaticTypePrim.subscript.setter(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 96);
  swift_beginAccess();
  v9 = *(v7 + 80);
  v10 = type metadata accessor for Properties();
  specialized Properties.subscript.setter(a1, a2, v10, a3);
  return swift_endAccess();
}

uint64_t specialized StaticTypePrim.subscript.setter(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, double a6)
{
  v13 = *v6;
  v14 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  (*(v20 + 16))(&v25 - v18, a1, v17);
  v21 = *(*v6 + 96);
  swift_beginAccess();
  v22 = *(v13 + 80);
  v23 = type metadata accessor for Properties();
  Properties.subscript.setter(v19, a2, a3, a4, v23, a5, a6);
  return swift_endAccess();
}

uint64_t specialized Properties.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 28);
  swift_getAtKeyPath();
  v4 = *v2;
  if (String.count.getter() < 1)
  {

    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();

    v5 = RIOPxrTfTokenCreateWithCString();
  }

  v6 = *(v4 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v7 = *(v4 + 16);
    v8 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v9 = swift_allocObject();
    v9[2] = v8;

    v10 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v9, 0);
    outlined consume of Result<AnyAttribute, Object.Error>(v9, 0);
    return v10;
  }

  else
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return 0;
  }
}

uint64_t specialized Properties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *(a3 + 28);
  swift_getAtKeyPath();
  if (a1)
  {
    v6 = *v3;
    if (String.count.getter() < 1)
    {

      v7 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v7 = RIOPxrTfTokenCreateWithCString();
    }

    v8 = *(v6 + 16);
    Relationship = RIOPxrUsdPrimCreateCreateRelationship();
    v10 = *(a1 + 16);
    if (v10)
    {
      v16 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v11 = 32;
      do
      {
        v12 = *(a1 + v11);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *(v16 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 += 8;
        --v10;
      }

      while (v10);
    }

    type metadata accessor for RIOPxrSdfPathRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    RIOPxrUsdRelationshipSetTargets();
  }

  else
  {
  }
}

uint64_t specialized Attribute.value.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 96);
  return static UsdAttributeValue.setValue(_:to:time:)(a1, v2);
}

uint64_t specialized Attribute.subscript.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 96);
  return static UsdAttributeValue.setValue(_:to:time:)(a1, v2);
}

uint64_t partial apply for closure #1 in Properties.subscript.getter(void **a1)
{
  v2 = *(v1 + 40);
  v3 = *a1;
  v4 = *(*v3 + 96);
  return static UsdAttributeValue.getValue(from:time:)(v3);
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t keypath_get_75Tm@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = type metadata accessor for Properties();
  result = a3(v7, v8);
  *a4 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9RealityIO6ObjectC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Object.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Object.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for Properties(uint64_t a1)
{
  type metadata accessor for Prim();
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Properties(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for Properties(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t type metadata completion function for StaticTypePrim(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Properties();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of StaticTypePrim.subscript.getter()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 240))();
}

uint64_t dispatch thunk of StaticTypePrim.subscript.setter()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 248))();
}

uint64_t dispatch thunk of StaticTypePrim.subscript.modify()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 232))();
}

{
  return (*(*v0 + 256))();
}

uint64_t outlined init with copy of (URL, __REAsset)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (URL, __REAsset)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(uint64_t a1, uint64_t a2, double a3)
{
  v66 = *(a2 + 16);
  v73 = MEMORY[0x277D84F90];
  ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:)();
  ImportSession.TextureOperatorContainer.makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v4 = v72;
  if (v72)
  {
    v5 = v71;
    while (1)
    {
      v6 = v4;
      v7 = RETextureImportOperationGetImageUTType();
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = v7;
      v9 = RETextureImportOperationCopyImageProperties();
      if (!v9)
      {
        break;
      }

      v10 = v9;
      PixelFormatMode = RETextureImportOperationGetPixelFormatMode();
      v12 = RETextureImportOperationCopyTextureDescriptorTemplate();
      v69 = RETextureImportOperationGetMipmapMode() != 2;
      v13 = v12;
      v14 = specialized RIOPixelFormat.init(pixelFormatMode:textureDescriptor:)(PixelFormatMode, v13);
      v16 = v15;
      v17 = objc_allocWithZone(RIOTextureDescription);
      v18 = v10;
      v19 = v8;
      v20 = MEMORY[0x26670EFB0](v5, v6);

      v21 = [v17 initWithName:v20 destinationPixelFormat:v14 imageProperties:v16 fileType:v18 generateMipmaps:v19, v69];

      if (v21)
      {
        v25 = v21;
        MEMORY[0x26670F130]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        dispatch thunk of _AnyIteratorBoxBase.next()();
        v5 = v71;
        v4 = v72;
      }

      else
      {

LABEL_3:
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v5 = v71;
        v4 = v72;
        if (!v72)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_9:

    if (one-time initialization token for rioComplexityAnalysis != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.rioComplexityAnalysis);
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26187B000, v19, v23, "Either file type and/or image properties is NULL", v24, 2u);
      MEMORY[0x266713AD0](v24, -1, -1);
    }

    goto LABEL_3;
  }

LABEL_16:

  isa = [objc_opt_self() defaultTextureConverters];
  if (!isa)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RIOTextureConverter, off_279AEDB00);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v27 = objc_opt_self();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RIOTextureDescription, &off_279AEDB08);
  v28 = Array._bridgeToObjectiveC()().super.isa;
  v29 = [v27 conversionEstimatesFromTextureDescriptions:v28 toFitAvailableMemory:a1 withConverters:isa preferredMaxTextureSize:0 outcome:a3];

  if (v29)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RIOTextureConversionEstimate, off_279AEDAF8);
    v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (v70 >> 62)
    {
LABEL_51:
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v68;
    v58 = v27;
    v59 = v29;
    if (!v67)
    {
LABEL_41:

      [v58 peakMemoryForConversionEstimates_];

      return;
    }

    v31 = 0;
    v29 = (v70 & 0xC000000000000001);
    v32 = &unk_279AF0000;
    while (1)
    {
      if (v29)
      {
        v33 = MEMORY[0x26670F670](v31, v70);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v31 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v33 = *(v70 + 8 * v31 + 32);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      v35 = v33;
      v36 = [v35 v32[114]];
      if (v36 == 1)
      {
      }

      else
      {
        v27 = v36;
        if (HIDWORD(v36))
        {

          __break(1u);
          return;
        }

        v68 = v30;
        if (one-time initialization token for rioComplexityAnalysis != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.rioComplexityAnalysis);
        v38 = v35;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v63 = v39;
          v41 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v71 = v64;
          *v41 = 136316162;
          v42 = [v38 name];
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v71);

          *(v41 + 4) = v46;
          *(v41 + 12) = 1024;
          *(v41 + 14) = v27;
          *(v41 + 18) = 1024;
          [v38 originalSize];
          v60 = v47;

          *(v41 + 20) = v60;
          *(v41 + 24) = 1024;
          [v38 originalSize];
          v61 = v48;

          *(v41 + 26) = v61;
          *(v41 + 30) = 2112;
          v49 = [objc_opt_self() currentThread];
          *(v41 + 32) = v49;
          *v62 = v49;
          _os_log_impl(&dword_26187B000, v63, v40, "Downsampling %s by a factor of %u, original size: %dx%d, Thread: %@", v41, 0x28u);
          outlined destroy of NSObject?(v62);
          MEMORY[0x266713AD0](v62, -1, -1);
          v29 = v64;
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x266713AD0](v64, -1, -1);
          MEMORY[0x266713AD0](v41, -1, -1);
        }

        else
        {
        }

        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_49;
        }

        v50 = [v38 name];

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        ImportSession.TextureOperatorContainer.setDownsample(factor:for:in:)(v27, v51, v53, v66);
        v30 = v68;
        if (v68)
        {

          return;
        }

        v29 = (v70 & 0xC000000000000001);
        v32 = &unk_279AF0000;
      }

      ++v31;
      if (v34 == v67)
      {
        goto LABEL_41;
      }
    }
  }

  if (one-time initialization token for rioComplexityAnalysis != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.rioComplexityAnalysis);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_26187B000, v55, v56, "File too big to load on this device", v57, 2u);
    MEMORY[0x266713AD0](v57, -1, -1);
  }

  lazy protocol witness table accessor for type EstimateError and conformance EstimateError();
  swift_allocError();
  swift_willThrow();
}

uint64_t one-time initialization function for rioComplexityAnalysis()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.rioComplexityAnalysis);
  __swift_project_value_buffer(v0, static Logger.rioComplexityAnalysis);
  return Logger.init(subsystem:category:)();
}

Swift::Int EstimateError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type EstimateError and conformance EstimateError()
{
  result = lazy protocol witness table cache variable for type EstimateError and conformance EstimateError;
  if (!lazy protocol witness table cache variable for type EstimateError and conformance EstimateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EstimateError and conformance EstimateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EstimateError and conformance EstimateError;
  if (!lazy protocol witness table cache variable for type EstimateError and conformance EstimateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EstimateError and conformance EstimateError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized RIOPixelFormat.init(pixelFormatMode:textureDescriptor:)(int a1, id a2)
{
  if (a1 != 1)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v3 = [a2 pixelFormat];
  if ((v3 - 10) < 2)
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (v3 != 71 && v3 != 70)
  {
    if (one-time initialization token for rioComplexityAnalysis != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.rioComplexityAnalysis);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v6 pixelFormat];

      _os_log_impl(&dword_26187B000, v7, v8, "Unexpected pixel format %lu", v9, 0xCu);
      MEMORY[0x266713AD0](v9, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v4 = 2;
LABEL_13:

  return v4;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t closure #1 in static ActionBuilder.generateVisibilityActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v87 = a7;
  v93 = a6;
  v85 = a2;
  v89 = a8;
  v90 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v70 - v13;
  v75 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v74 = *(v75 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v71 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v70 - v17;
  v18 = type metadata accessor for __RKEntityActionAnimationStyle();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for __RKEntityMoveEaseType();
  v80 = *(v21 - 8);
  v81 = v21;
  v22 = *(v80 + 64);
  MEMORY[0x28223BE20](v21);
  v86 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for __RKEntityMoveEase();
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = *(v77 + 64);
  MEMORY[0x28223BE20](v24);
  v82 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v76 = *(v27 - 8);
  v28 = *(v76 + 64);
  MEMORY[0x28223BE20](v27);
  v79 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for __RKEntityActionSpecification();
  v91 = *(v30 - 8);
  v92 = v30;
  v31 = *(v91 + 64);
  MEMORY[0x28223BE20](v30);
  v70 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v70 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v70 - v38;
  v40 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v70 - v46;
  if (a3 == 2003789939 && a4 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    __RKEntityShowActionBuildInAnimationType.init(inputs:)(v39);
    (*(v41 + 56))(v39, 0, 1, v40);
    (*(v41 + 32))(v47, v39, v40);
    (*(v76 + 16))(v79, v85, v27);
    (*(v77 + 16))(v82, v87, v78);
    (*(v80 + 16))(v86, v89, v81);
    (*(v83 + 16))(v88, v90, v84);
    (*(v41 + 16))(v44, v47, v40);
    __RKEntityShowActionArguments.init(target:duration:distance:ease:easeType:fadeIn:finalOpacity:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:animationStyle:buildInAnimationType:)();
    v49 = v91;
    v48 = v92;
    (*(v91 + 104))(v35, *MEMORY[0x277CDAF78], v92);
    v50 = v93;
    v51 = *v93;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
      *v50 = v51;
    }

    v54 = v51[2];
    v53 = v51[3];
    if (v54 >= v53 >> 1)
    {
      *v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1, v51);
    }

    (*(v41 + 8))(v47, v40);
    v55 = *v50;
    *(v55 + 16) = v54 + 1;
    return (*(v49 + 32))(v55 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v54, v35, v48);
  }

  else if (a3 == 1701079400 && a4 == 0xE400000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {

    v57 = v73;
    __RKEntityHideActionBuildOutAnimationType.init(inputs:)(v73);
    v58 = v74;
    v59 = v75;
    (*(v74 + 56))(v57, 0, 1, v75);
    v60 = v72;
    (*(v58 + 32))(v72, v57, v59);
    (*(v76 + 16))(v79, v85, v27);
    (*(v77 + 16))(v82, v87, v78);
    (*(v80 + 16))(v86, v89, v81);
    (*(v83 + 16))(v88, v90, v84);
    (*(v58 + 16))(v71, v60, v59);
    v61 = v70;
    __RKEntityHideActionArguments.init(target:duration:distance:ease:easeType:fadeOut:finalOpacity:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:animationStyle:buildOutAnimationType:)();
    v63 = v91;
    v62 = v92;
    (*(v91 + 104))(v61, *MEMORY[0x277CDAF70], v92);
    v64 = v93;
    v65 = *v93;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *v64 = v65;
    if ((v66 & 1) == 0)
    {
      v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
      *v64 = v65;
    }

    v68 = v65[2];
    v67 = v65[3];
    if (v68 >= v67 >> 1)
    {
      *v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1, v65);
    }

    (*(v58 + 8))(v60, v59);
    v69 = *v64;
    *(v69 + 16) = v68 + 1;
    return (*(v63 + 32))(v69 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v68, v61, v62);
  }

  return result;
}

uint64_t specialized static ActionBuilder.generateVisibilityActionSpecifications(inputs:)(char *a1)
{
  v2 = type metadata accessor for __RKEntityGroupActionOrder();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v64 - v7;
  v8 = type metadata accessor for __RKEntityMoveEaseType();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v64 - v15;
  v17 = type metadata accessor for __RKEntityMoveEase();
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v64 - v23;
  v25 = type metadata accessor for __RKEntityActionAnimationStyle();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v79);
  v69 = v24;
  v70 = v26;
  v66 = v16;
  v67 = v29;
  v64 = v12;
  v65 = v20;
  v68 = v17;
  v71 = v25;
  v30 = v79[0];
  v31 = RIOPxrTfTokenCopyString();
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v36 = v35;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v38 = v37;

  v39 = v69;
  __RKEntityActionAnimationStyle.init(inputs:)(v69);
  v41 = v70;
  v40 = v71;
  (*(v70 + 56))(v39, 0, 1, v71);
  (*(v41 + 32))(v67, v39, v40);

  v42 = v66;
  __RKEntityMoveEase.init(inputs:)(v66);
  v69 = v32;
  v43 = v34;
  v44 = v78;
  v45 = v68;
  (*(v78 + 56))(v42, 0, 1, v68);
  v46 = v65;
  (*(v44 + 32))(v65, v42, v45);

  v47 = v75;
  __RKEntityMoveEaseType.init(inputs:)(v75);
  v48 = v77;
  v49 = v47;
  v50 = v47;
  v51 = v76;
  (*(v77 + 56))(v49, 0, 1, v76);
  v52 = *(v48 + 32);
  v53 = v64;
  v54 = v52(v64, v50, v51);
  v79[0] = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v54);
  *(&v64 - 10) = v69;
  *(&v64 - 9) = v43;
  *(&v64 - 8) = a1;
  *(&v64 - 7) = v79;
  *(&v64 - 6) = v36;
  *(&v64 - 5) = v38;
  *(&v64 - 4) = v46;
  *(&v64 - 3) = v53;
  *(&v64 - 2) = v55;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateVisibilityActionSpecifications(inputs:), (&v64 - 12));

  v56 = v79[0];
  if (*(v79[0] + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v57 = type metadata accessor for __RKEntityActionSpecification();
    v58 = *(v57 - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2619891C0;
    (*(v73 + 104))(v72, *MEMORY[0x277CDAEF8], v74);

    v53 = v64;
    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    v61 = v56 + v60;
    v46 = v65;
    (*(v58 + 104))(v61, *MEMORY[0x277CDAFA0], v57);
    v40 = v71;
  }

  v62 = v68;
  (*(v77 + 8))(v53, v51);
  (*(v44 + 8))(v46, v62);
  (*(v41 + 8))(v67, v40);
  return v56;
}

uint64_t partial apply for closure #1 in static ActionBuilder.generateVisibilityActionSpecifications(inputs:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  return closure #1 in static ActionBuilder.generateVisibilityActionSpecifications(inputs:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 64), *(v2 + 72), *(v2 + 80));
}

uint64_t ObjectsChangeInfo.changedFields(_:)(uint64_t *a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(*(v2 + 56) + 8 * v3);
}

uint64_t ObjectsChangeInfo.hasChangedFields(_:)(uint64_t *a1)
{
  if (*(*v1 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ObjectsChangeInfo.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {
    _StringGuts.grow(_:)(18);

    v3 = MEMORY[0x26670F180](v2, &type metadata for SceneDescriptionFoundations.Path);
    MEMORY[0x26670F080](v3);

    MEMORY[0x26670F080](32, 0xE100000000000000);
    v4 = 0x6465636E79736572;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (*(v1 + 16))
  {
    _StringGuts.grow(_:)(24);

    v6 = MEMORY[0x26670F180](v1, &type metadata for SceneDescriptionFoundations.Path);
    MEMORY[0x26670F080](v6);

    v7 = 0xD000000000000016;
    v5 = 0x8000000261997B40;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x26670F080](v7, v5);

  return v4;
}

uint64_t ObjectsChangeInfo.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAC05ToolsG0O5TokenVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v4 = RIOPxrUsdNoticeObjectsChangedCopyStageRef();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Stage();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = RIOPxrUsdNoticeObjectsChangedCopyResyncedPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v55 = 0;
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v8 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_6;
    }

LABEL_15:
    v9 = __CocoaSet.count.getter();
    v53 = v6;
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_16:

    v8 = 0;
    v10 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v8 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_15;
  }

LABEL_6:
  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = v6;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_7:
  v55 = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = v55;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v50 = a1;
    v11 = v3;
    for (i = 0; i != v9; ++i)
    {
      v13 = MEMORY[0x26670F670](i, v8);
      v55 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v10 = v55;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
    }

    v8 = 0;
    v3 = v11;
    a1 = v50;
  }

  else
  {
    v16 = 32;
    do
    {
      v17 = *(v8 + v16);
      v55 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = v17;
      if (v19 >= v18 >> 1)
      {
        v21 = v3;
        v22 = a1;
        v23 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v20 = v23;
        a1 = v22;
        v3 = v21;
        v10 = v55;
      }

      *(v10 + 16) = v19 + 1;
      *(v10 + 8 * v19 + 32) = v20;
      v16 += 8;
      --v9;
    }

    while (v9);

    v8 = 0;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_23:

  v24 = RIOPxrUsdNoticeObjectsChangedCopyChangedInfoOnlyPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v55 = 0;
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v25 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_25:
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_26;
      }

LABEL_35:

      v27 = MEMORY[0x277D84F90];
LABEL_41:
      v55 = v3;
      v40 = *(v10 + 16);

      if (v40)
      {
        v41 = 0;
        while (v41 < *(v10 + 16))
        {
          v54 = *(v10 + 32 + 8 * v41);
          v42 = v54;
          closure #1 in ObjectsChangeInfo.init(_:)(&v55, &v54);
          ++v41;

          if (v40 == v41)
          {
            v43 = v55;
            goto LABEL_47;
          }
        }

        __break(1u);
      }

      else
      {
        v43 = v3;
LABEL_47:

        v55 = v43;
        v44 = *(v27 + 16);
        v45 = v43;
        if (!v44)
        {
LABEL_52:

          *a1 = v45;
          a1[1] = v27;
          a1[2] = v10;
          a1[3] = v53;
          return result;
        }

        v46 = 0;
        while (v46 < *(v27 + 16))
        {
          v54 = *(v27 + 32 + 8 * v46);
          v47 = v54;
          closure #1 in ObjectsChangeInfo.init(_:)(&v55, &v54);
          ++v46;

          if (v44 == v46)
          {
            v45 = v55;
            goto LABEL_52;
          }
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  v26 = __CocoaSet.count.getter();
  if (!v26)
  {
    goto LABEL_35;
  }

LABEL_26:
  v55 = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v49 = v3;
    v27 = v55;
    if ((v25 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v26; ++j)
      {
        v29 = MEMORY[0x26670F670](j, v25);
        v55 = v27;
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          v51 = a1;
          v32 = v29;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v29 = v32;
          a1 = v51;
          v27 = v55;
        }

        *(v27 + 16) = v31 + 1;
        *(v27 + 8 * v31 + 32) = v29;
      }

      v3 = v49;
    }

    else
    {
      v52 = a1;
      v33 = 32;
      do
      {
        v34 = *(v25 + v33);
        v55 = v27;
        v36 = *(v27 + 16);
        v35 = *(v27 + 24);
        v37 = v34;
        if (v36 >= v35 >> 1)
        {
          v38 = v35 > 1;
          v39 = v37;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v36 + 1, 1);
          v37 = v39;
          v27 = v55;
        }

        *(v27 + 16) = v36 + 1;
        *(v27 + 8 * v36 + 32) = v37;
        v33 += 8;
        --v26;
      }

      while (v26);

      v3 = v49;
      a1 = v52;
    }

    goto LABEL_41;
  }

LABEL_56:
  __break(1u);

  __break(1u);
  return result;
}

void closure #1 in ObjectsChangeInfo.init(_:)(uint64_t *a1, void **a2)
{
  v3 = v2;
  v5 = *a2;
  if ((RIOPxrSdfPathIsPropertyPath() & 1) == 0 && !RIOPxrSdfPathIsNamespacedPropertyPath())
  {
    v26 = v5;
    v27 = RIOPxrUsdNoticeObjectsChangedCopyChangedFields();
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      type metadata accessor for RIOPxrTfTokenRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v30 = v29;
      if (!(v29 >> 62))
      {
        goto LABEL_18;
      }
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_18:
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
LABEL_19:
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0);
          if (v31 < 0)
          {
            goto LABEL_46;
          }

          v32 = v29;
          if ((v30 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v31; ++i)
            {
              v34 = MEMORY[0x26670F670](i, v30);
              v59 = v32;
              v36 = *(v32 + 16);
              v35 = *(v32 + 24);
              if (v36 >= v35 >> 1)
              {
                v37 = v34;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
                v34 = v37;
                v32 = v59;
              }

              *(v32 + 16) = v36 + 1;
              *(v32 + 8 * v36 + 32) = v34;
            }
          }

          else
          {
            v49 = 32;
            do
            {
              v62 = v32;
              v51 = *(v32 + 16);
              v50 = *(v32 + 24);
              v52 = *(v30 + v49);
              if (v51 >= v50 >> 1)
              {
                v53 = v52;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
                v52 = v53;
                v32 = v62;
              }

              *(v32 + 16) = v51 + 1;
              *(v32 + 8 * v51 + 32) = v52;
              v49 += 8;
              --v31;
            }

            while (v31);
          }

LABEL_44:
          v54 = *a1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = *a1;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v26, isUniquelyReferenced_nonNull_native);

          *a1 = v63;
          return;
        }

LABEL_38:

        v32 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    v31 = __CocoaSet.count.getter();
    if (v31)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  v57 = a1;
  v6 = RIOPxrSdfPathCopyPrimPath();
  v7 = RIOPxrSdfPathCopyElementString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = specialized Collection.dropFirst(_:)(1uLL, v8, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  MEMORY[0x26670F020](v11, v13, v15, v17);

  v56 = v6;
  v18 = RIOPxrUsdNoticeObjectsChangedCopyChangedFields();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v19 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }

LABEL_14:
    v20 = __CocoaSet.count.getter();
    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v19 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_14;
  }

LABEL_5:
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_6:
    v58 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = v58;
      if ((v19 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v20; ++j)
        {
          v23 = MEMORY[0x26670F670](j, v19);
          v25 = *(v58 + 16);
          v24 = *(v58 + 24);
          if (v25 >= v24 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          }

          *(v58 + 16) = v25 + 1;
          *(v58 + 8 * v25 + 32) = v23;
        }
      }

      else
      {
        v38 = 32;
        do
        {
          v60 = v21;
          v40 = *(v21 + 2);
          v39 = *(v21 + 3);
          v41 = *(v19 + v38);
          if (v40 >= v39 >> 1)
          {
            v42 = v3;
            v43 = v41;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
            v41 = v43;
            v3 = v42;
            v21 = v60;
          }

          *(v21 + 2) = v40 + 1;
          *&v21[8 * v40 + 32] = v41;
          v38 += 8;
          --v20;
        }

        while (v20);
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

LABEL_15:

  v21 = MEMORY[0x277D84F90];
LABEL_31:
  String.utf8CString.getter();

  v44 = RIOPxrTfTokenCreateWithCString();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
  }

  v46 = *(v21 + 2);
  v45 = *(v21 + 3);
  if (v46 >= v45 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v21);
  }

  *(v21 + 2) = v46 + 1;
  *&v21[8 * v46 + 32] = v44;
  v47 = *v57;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v57;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v56, v48);

  *v57 = v61;
}

uint64_t getEnumTagSinglePayload for ObjectsChangeInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectsChangeInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

void *NamedPropertyDirtyState.__allocating_init(propertyName:)(void **a1)
{
  v1 = *a1;
  type metadata accessor for NamedPropertyDirtyState();
  v2 = swift_allocObject();
  v2[4] = v1;
  v3 = v1;
  v4 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v2[2] = v4;
  v2[3] = v6;
  return v2;
}

uint64_t PropertyDirtyState.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO18PropertyDirtyStateCmMd, &_s9RealityIO18PropertyDirtyStateCmMR);
  v2 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(35);

  v3 = v0[2];
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v4 = Set.description.getter();
  MEMORY[0x26670F080](v4);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD000000000000020, 0x8000000261997B60);

  return v2;
}

uint64_t PropertyDirtyState.__allocating_init(propertyMetadataContainsAnyOf:core:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  if (!a2)
  {
    v5 = result;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v6);

    type metadata accessor for RIOPxrTfTokenRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    a2 = RIOBuilderDirtyPropertyDescriptorCreateWithMetadataDescriptors();

    result = v5;
  }

  *(result + 24) = a2;
  return result;
}

char *PropertyDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x266710690]();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = MEMORY[0x26670F670](i, v7);
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }
  }

  else
  {
    v16 = 32;
    do
    {
      v17 = *(v6 + 16);
      v18 = *(v6 + 24);
      v19 = *(v7 + v16);
      if (v17 >= v18 >> 1)
      {
        v20 = v18 > 1;
        v21 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v17 + 1, 1);
        v19 = v21;
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = v19;
      v16 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_19:
  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

  v23 = *(v2 + 144);

  return v23(v22, a1);
}

uint64_t PropertyDirtyState.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PropertyDirtyState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int PropertyDirtyState.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 120))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PropertyDirtyState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PropertyDirtyState()
{
  Hasher.init(_seed:)();
  (*(**v0 + 120))(v2);
  return Hasher._finalize()();
}

id NamedPropertyDirtyState.propertyName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

void *NamedPropertyDirtyState.__allocating_init(propertyName:propertyMetadataContainsAnyOf:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for NamedPropertyDirtyState();
  v4 = swift_allocObject();
  v4[4] = v3;
  v5 = v3;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v4[2] = a2;
  v4[3] = v7;
  return v4;
}

void NamedPropertyDirtyState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  type metadata accessor for RIOPxrTfTokenRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
  _CFObject.hash(into:)();
  v5 = *(v2 + 16);

  specialized Set.hash(into:)(a1, v5);
}

uint64_t NamedPropertyDirtyState.isEqual(to:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = v0[4];
    v6 = *(v3 + 32);
    type metadata accessor for RIOPxrTfTokenRef(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);

    v7 = v5;
    v8 = v6;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      v10 = v1[2];
      v11 = *(v4 + 16);

      v12 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v10, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t NamedPropertyDirtyState.description.getter()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO23NamedPropertyDirtyStateCmMd, &_s9RealityIO23NamedPropertyDirtyStateCmMR);
  v3 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(19);

  v4 = v0[4];
  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x26670F080](v6, v8);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0x747265706F727028, 0xEF203A656D614E79);

  _StringGuts.grow(_:)(34);

  v9 = v1[2];
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v10 = Set.description.getter();
  MEMORY[0x26670F080](v10);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001FLL, 0x8000000261997B90);

  return v3;
}

uint64_t NamedPropertyDirtyState.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NamedPropertyDirtyState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t NamespacedPropertyDirtyState.propertyNamespace.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *NamespacedPropertyDirtyState.__allocating_init(propertyNamespace:propertyMetadataContainsAnyOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NamespacedPropertyDirtyState();
  v6 = swift_allocObject();
  v6[4] = a1;
  v6[5] = a2;

  v7 = MEMORY[0x26670EFB0](a1, a2);

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a3);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = RIOBuilderAnyValueNamespacedDirtyPropertyDescriptorCreateWithNamespacePrefixAndMetadataDescriptors();

  v6[2] = a3;
  v6[3] = v9;
  return v6;
}

void NamespacedPropertyDirtyState.hash(into:)(__int128 *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  String.hash(into:)();
  v5 = v1[2];

  specialized Set.hash(into:)(a1, v5);
}

uint64_t NamespacedPropertyDirtyState.isEqual(to:)()
{
  v1 = *v0;
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v0[4] != v2[4] || v0[5] != v2[5])
  {
    v4 = v2;
    v5 = v0[4];
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v2 = v4;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = v0[2];
  v8 = v2[2];

  LOBYTE(v7) = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v7, v8);

  return v7 & 1;
}

uint64_t NamespacedPropertyDirtyState.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO28NamespacedPropertyDirtyStateCmMd, &_s9RealityIO28NamespacedPropertyDirtyStateCmMR);
  v2 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(24);

  MEMORY[0x26670F080](v0[4], v0[5]);
  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000014, 0x8000000261997BB0);

  _StringGuts.grow(_:)(35);

  v3 = v0[2];
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v4 = Set.description.getter();
  MEMORY[0x26670F080](v4);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD000000000000020, 0x8000000261997BD0);

  return v2;
}

uint64_t NamespacedPropertyDirtyState.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t NamespacedPropertyDirtyState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *specialized NamedPropertyDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = RIOBuilderAnyValueDirtyPropertyDescriptorCopyName();
  v3 = MEMORY[0x266710470](a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_13:

      v9 = MEMORY[0x277D84F90];
LABEL_19:
      v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v9);

      type metadata accessor for NamedPropertyDirtyState();
      result = swift_allocObject();
      result[3] = a1;
      result[4] = v2;
      result[2] = v20;
      return result;
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v5;
    if ((v6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        MEMORY[0x26670F670](i, v6);
        v11 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11;
      }
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = *(v6 + v14);
        v16 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          v19 = v16;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v16 = v19;
        }

        *(v5 + 16) = v18 + 1;
        *(v5 + 8 * v18 + 32) = v16;
        v14 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

Swift::String *specialized NamespacedPropertyDirtyState.__allocating_init(core:)(void *a1)
{
  v2 = RIOBuilderAnyValueNamespacedDirtyPropertyDescriptorCopyNamespacePrefix();
  v3 = String.init(_:)(v2);
  v4 = MEMORY[0x2667104A0](a1);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_13:

      v10 = MEMORY[0x277D84F90];
LABEL_19:
      v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

      type metadata accessor for NamespacedPropertyDirtyState();
      result = swift_allocObject();
      result[2] = v3;
      result[1]._countAndFlagsBits = v21;
      result[1]._object = a1;
      return result;
    }
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v6;
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        MEMORY[0x26670F670](i, v7);
        v12 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        *(v10 + 16) = v14 + 1;
        *(v10 + 8 * v14 + 32) = v12;
      }
    }

    else
    {
      v15 = 32;
      do
      {
        v16 = *(v7 + v15);
        v17 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v19 = *(v6 + 16);
        v18 = *(v6 + 24);
        if (v19 >= v18 >> 1)
        {
          v20 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v17 = v20;
        }

        *(v6 + 16) = v19 + 1;
        *(v6 + 8 * v19 + 32) = v17;
        v15 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for modelSortComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.modelSortComponent = result;
  return result;
}

uint64_t ModelSortGroupComponentBuilder.inputDescriptors()()
{
  v1 = *v0;
  v9 = MEMORY[0x277D84FA0];
  v2 = swift_allocObject();
  v2[2] = specialized closure #2 in ModelSortGroupComponentBuilder.inputDescriptors();
  v2[3] = 0;
  v2[4] = closure #1 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v2[5] = 0;
  v2[6] = v1;
  v17[0] = 0xD000000000000018;
  v17[1] = 0x8000000261997DC0;
  v17[2] = 0xD000000000000014;
  v17[3] = 0x8000000261994310;
  v17[4] = partial apply for closure #3 in ModelSortGroupComponentBuilder.inputDescriptors();
  v17[5] = v2;
  v18 = -127;

  specialized Set._Variant.insert(_:)(&v10, v17);
  outlined consume of InputDescriptor(v10, v11, v12, v13, v14, v15, v16);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputName;
  v3 = qword_27FEBC3A0;
  v5 = one-time initialization token for OutputIdentifier;

  if (v5 != -1)
  {
    swift_once();
  }

  v10 = v4;
  v11 = v3;
  v12 = static EntityBuilder.OutputIdentifier;
  v13 = *algn_27FEC8E68;
  v14 = 0;
  v15 = 0;
  v16 = 112;

  specialized Set._Variant.insert(_:)(v7, &v10);

  outlined consume of InputDescriptor(v7[0], v7[1], v7[2], v7[3], v7[4], v7[5], v8);
  return v9;
}

uint64_t closure #3 in ModelSortGroupComponentBuilder.inputDescriptors()(uint64_t a1, id *a2, uint64_t (*a3)(uint64_t, id *), uint64_t a4, uint64_t (*a5)(id *, uint64_t))
{
  v11 = *a2;
  v6 = a3(a1, &v11);
  if (!v6)
  {
    return MEMORY[0x277D84FA0];
  }

  v7 = v6;

  if (one-time initialization token for entityRelationshipName != -1)
  {
    swift_once();
  }

  v11 = static ModelSortGroupComponentBuilder.entityRelationshipName;
  v8 = static ModelSortGroupComponentBuilder.entityRelationshipName;
  v9 = a5(&v11, v7);

  return v9;
}

uint64_t closure #1 in ModelSortGroupComponentBuilder.run(inputs:)(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23ModelSortGroupComponentVSgMd, &_s17RealityFoundation23ModelSortGroupComponentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v63 - v4;
  v6 = type metadata accessor for ModelSortGroupComponent();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for ModelSortGroup();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = &v63 - v19;
  v20 = Inputs.prim.getter();
  v21 = *(v20 + 16);
  v22 = RIOPxrUsdObjectCopyName();
  v23 = RIOPxrTfTokenCopyString();
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v26 = *(v20 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_14;
  }

  v27 = RIOPxrUsdPrimCopyAttribute();
  v28 = RIOPxrUsdAttributeCopyValue();
  if (!v28)
  {

LABEL_15:
    ModelSortGroupComponentBuilder.clear(inputs:)();
  }

  v64 = v14;
  v65 = v13;
  v29 = v28;
  v30 = RIOPxrVtValueCopyToken();

  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = RIOPxrTfTokenCopyString();
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32 == 0xD000000000000016 && 0x8000000261997DA0 == v34)
  {

    v35 = v65;
    goto LABEL_11;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = v65;
  if ((v36 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  Inputs.subscript.getter(0xD000000000000018, 0x8000000261997DC0, &v73);
  if (!v74)
  {

    outlined destroy of Any?(&v73, &_sypSgMd, &_sypSgMR);
    (*(v64 + 56))(v12, 1, 1, v35);
    return outlined destroy of Any?(v12, &_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  }

  v37 = swift_dynamicCast();
  v38 = v64;
  (*(v64 + 56))(v12, v37 ^ 1u, 1, v35);
  if ((*(v38 + 48))(v12, 1, v35) == 1)
  {

    return outlined destroy of Any?(v12, &_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  }

  v40 = v70;
  (*(v38 + 32))(v70, v12, v35);
  v41 = Prim.parent.getter();
  if (v41)
  {
    v42 = v41;
    v43 = *(v41 + 16);
    if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
    {
      if (one-time initialization token for modelSortComponent != -1)
      {
        swift_once();
      }

      v71 = static OS_os_log.modelSortComponent;
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_26198A8E0;
      v54 = *(v42 + 16);
      v55 = RIOPxrUsdObjectCopyPath();
      v56 = RIOPxrSdfPathCopyString();
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = MEMORY[0x277D837D0];
      *(v53 + 56) = MEMORY[0x277D837D0];
      v61 = lazy protocol witness table accessor for type String and conformance String();
      *(v53 + 64) = v61;
      *(v53 + 32) = v57;
      *(v53 + 40) = v59;

      *(v53 + 96) = v60;
      *(v53 + 104) = v61;
      *(v53 + 72) = v69;
      *(v53 + 80) = v25;
      os_log(_:dso:log:type:_:)();

      return (*(v64 + 8))(v70, v65);
    }
  }

  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v73);
  if (!v74)
  {
    outlined destroy of Any?(&v73, &_sypSgMd, &_sypSgMR);
    goto LABEL_38;
  }

  type metadata accessor for EntityProxy();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    if (one-time initialization token for modelSortComponent != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2619891C0;
    *(v62 + 56) = MEMORY[0x277D837D0];
    *(v62 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v62 + 32) = v69;
    *(v62 + 40) = v25;
    os_log(_:dso:log:type:_:)();

    return (*(v64 + 8))(v40, v35);
  }

  v44 = v72;
  v45 = *(v20 + 16);
  if ((RIOPxrUsdPrimIsActive() & 1) == 0)
  {
    ModelSortGroupComponentBuilder.clear(inputs:)();

    return (*(v64 + 8))(v40, v35);
  }

  *(v71 + 17) = 1;
  Inputs.prim.getter();
  if (one-time initialization token for priorityAttributeName != -1)
  {
    swift_once();
  }

  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5();

  v69 = specialized ModelSortGroupComponentBuilder.targetEntity(for:prim:)(v44, v20);
  if (v69)
  {
    (*(v64 + 16))(v17, v70, v35);
    v46 = v66;
    ModelSortGroupComponent.init(group:order:)();
    v48 = v67;
    v47 = v68;
    v63 = *(v67 + 16);
    v63(v5, v46, v68);
    (*(v48 + 56))(v5, 0, 1, v47);
    v49 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v49(&v73, 0);
    v50 = v71;
    specialized Builder.addComponent<A>(component:)(v46);
    swift_beginAccess();
    v51 = objc_getAssociatedObject(v50, &static BuilderAssociatedKeys.OutputsReference);
    result = swift_endAccess();
    if (v51)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v72, &v73);
      type metadata accessor for Outputs();
      swift_dynamicCast();
      v74 = v47;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
      v63(boxed_opaque_existential_1, v46, v47);
      Outputs.subscript.setter(&v73, 0xD000000000000024, 0x80000002619943D0);

      (*(v48 + 8))(v46, v47);
      return (*(v64 + 8))(v70, v65);
    }

    __break(1u);
  }

  else
  {
    (*(v64 + 8))(v70, v35);
  }

  return result;
}

uint64_t ModelSortGroupComponentBuilder.clear(inputs:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23ModelSortGroupComponentVSgMd, &_s17RealityFoundation23ModelSortGroupComponentVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v11 - v3;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v12);
  if (!v13)
  {
    return outlined destroy of Any?(&v12, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v11[1];
    if (*(v0 + 17) == 1 && (v7 = Inputs.prim.getter(), v8 = specialized ModelSortGroupComponentBuilder.targetEntity(for:prim:)(v6, v7), , v8))
    {
      v9 = type metadata accessor for ModelSortGroupComponent();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      v10 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v10(&v12, 0);

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupComponentBuilder()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupComponentBuilder);
  outlined destroy of OutputDescriptor(&unk_287410DD0);
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance ModelSortGroupComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in ModelSortGroupComponentBuilder.run(inputs:);
  *(v4 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_21;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v13 = v9;
      v10 = v9;
      v11 = a1(&v13);

      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t specialized closure #2 in ModelSortGroupComponentBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return 0;
  }

  v4 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v6 = swift_allocObject();
  *(v6 + 16) = PrimIfNeeded;
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (RIOPxrUsdPrimHasAttribute())
  {
    v7 = RIOPxrUsdPrimCopyAttribute();
    v8 = RIOPxrUsdAttributeCopyValue();
    if (!v8)
    {

      return 0;
    }

    v9 = v8;
    v10 = RIOPxrVtValueCopyToken();

    if (v10)
    {
      v11 = RIOPxrTfTokenCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

uint64_t specialized closure #1 in closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for entityRelationshipName != -1)
  {
    swift_once();
  }

  v0 = static ModelSortGroupComponentBuilder.entityRelationshipName;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for priorityAttributeName;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static ModelSortGroupComponentBuilder.priorityAttributeName;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v8;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();
  return v3;
}

uint64_t specialized closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v0 = static ModelSortGroupComponentBuilder.realityKitComponentTypeName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = specialized closure #1 in closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized ModelSortGroupComponentBuilder.stageSubscription.getter()
{
  v0 = specialized closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

uint64_t specialized ModelSortGroupComponentBuilder.targetEntity(for:prim:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd, &_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMR);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v32 = type metadata accessor for Entity.ChildCollection();
  v35 = *(v32 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for __EntityRef();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  v17 = MEMORY[0x277D841D8];
  __AssetRef.__as<A>(_:)();
  v36[3] = v17;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v36);
  v18 = static Entity.__fromCore(_:)();
  (*(v13 + 8))(v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVSgGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB50;
  if (String.count.getter() < 1)
  {
    v20 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v20 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 32) = v20;
  if (String.count.getter() < 1)
  {
    v21 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v21 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 40) = v21;
  if (String.count.getter() < 1)
  {
    v22 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v22 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 48) = v22;
  v23 = Prim.parent.getter();
  if (v23)
  {
    v24 = *(v23 + 16);
    v25 = RIOPxrUsdPrimCopyTypeName();
  }

  else
  {
    v25 = 0;
  }

  v36[0] = v25;
  MEMORY[0x28223BE20](v23);
  *(&v32 - 2) = v36;
  v26 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v32 - 4), inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO16ToolsFoundationsO5TokenVSgMd, &_s9RealityIO16ToolsFoundationsO5TokenVSgMR);
  swift_arrayDestroy();

  if (v26)
  {
    v34 = v18;
    HasHierarchy.children.getter();
    v27 = v32;
    (*(v35 + 16))(v8, v11, v32);
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection();
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>();
    dispatch thunk of IteratorProtocol.next()();
    v28 = v36[0];
    if (v36[0])
    {
      while (dispatch thunk of Entity.name.getter() != 0xD000000000000010 || 0x8000000261997DE0 != v29)
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v30)
        {
          goto LABEL_21;
        }

        dispatch thunk of IteratorProtocol.next()();
        v28 = v36[0];
        if (!v36[0])
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      (*(v33 + 8))(v5, v2);
      (*(v35 + 8))(v11, v27);

      return v28;
    }

    else
    {
LABEL_19:
      (*(v33 + 8))(v5, v2);
      (*(v35 + 8))(v11, v27);
      return v34;
    }
  }

  return v18;
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection()
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    type metadata accessor for Entity.ChildCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd, &_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>);
  }

  return result;
}

uint64_t partial apply for closure #3 in ModelSortGroupComponentBuilder.inputDescriptors()(uint64_t a1, id *a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  return closure #3 in ModelSortGroupComponentBuilder.inputDescriptors()(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t EditTarget.init(on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = RIOPxrUsdEditTargetCreateWithLayer();
  }

  else
  {
    result = RIOPxrUsdEditTargetCreateEmpty();
    v4 = result;
  }

  *a2 = v4;
  return result;
}