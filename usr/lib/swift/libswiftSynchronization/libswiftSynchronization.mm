uint64_t Atomic.deinit(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v9, v2, v14);
  (*(v4 + 24))(v9, v3, v4);
  (*(v10 + 8))(v13, v3);
  return UnsafeMutablePointer.deinitialize(count:)();
}

__int16 protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance Float16@<H0>(__int16 *a1@<X0>, __int16 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance Float@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance Double@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t AtomicLazyReference.deinit(uint64_t a1)
{
  v6[6] = atomic_load_explicit(v1, memory_order_acquire);
  v6[2] = *(a1 + 16);
  swift_getCanonicalSpecializedMetadata();
  v2 = type metadata accessor for Unmanaged();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance ObjectIdentifier, v6, MEMORY[0x29EDC9F80], v2, v3, &v7);
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for Optional();
  v6[4] = &protocol witness table for Unmanaged<A>;
  swift_getWitnessTable();
  v4 = type metadata accessor for Atomic();
  return Atomic.deinit(v4);
}

uint64_t AtomicLazyReference.storeIfNil(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_unknownObjectRetain();
  v6 = 0;
  atomic_compare_exchange_strong(v2, &v6, v5);
  v7 = v6 == 0;
  v12[4] = v6;
  v12[2] = *(a2 + 16);
  swift_getCanonicalSpecializedMetadata();
  v8 = type metadata accessor for Unmanaged();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in static Unmanaged.decodeAtomicOptionalRepresentation(_:)partial apply, v12, MEMORY[0x29EDC9F80], v8, v9, &v13);
  v10 = v13;
  result = swift_unknownObjectRelease();
  if (v7)
  {
    swift_unknownObjectRetain();
    return a1;
  }

  if (v10)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t AtomicLazyReference.load()(uint64_t a1)
{
  v5[4] = atomic_load_explicit(v1, memory_order_acquire);
  v5[2] = *(a1 + 16);
  swift_getCanonicalSpecializedMetadata();
  v2 = type metadata accessor for Unmanaged();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in static Unmanaged.decodeAtomicOptionalRepresentation(_:)partial apply, v5, MEMORY[0x29EDC9F80], v2, v3, &v6);
  result = v6;
  if (v6)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t AtomicLoadOrdering.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x646578616C6572;
    case 5:
      return 0xD000000000000016;
    case 2:
      return 0x6E69726975716361;
  }

  _StringGuts.grow(_:)(22);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AD6F0](v2);

  MEMORY[0x29C2AD6F0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t AtomicStoreOrdering.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x646578616C6572;
    case 5:
      return 0xD000000000000016;
    case 3:
      return 0x6E697361656C6572;
  }

  _StringGuts.grow(_:)(23);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AD6F0](v2);

  MEMORY[0x29C2AD6F0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

Swift::Int AtomicLoadOrdering.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x29C2AD750](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AtomicLoadOrdering()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2AD750](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AtomicLoadOrdering()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2AD750](v1);
  return Hasher._finalize()();
}

uint64_t AtomicUpdateOrdering.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0xD000000000000015;
      }

      if (a1 == 5)
      {
        return 0xD000000000000016;
      }

      goto LABEL_13;
    }

    v2 = 0x7361656C6572;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
  }

  if (!a1)
  {
    return 0x646578616C6572;
  }

  if (a1 == 2)
  {
    v2 = 0x726975716361;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
  }

LABEL_13:
  _StringGuts.grow(_:)(24);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AD6F0](v3);

  MEMORY[0x29C2AD6F0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

void *_sSpyxG15Synchronization19AtomicRepresentableABRi_zrlAbCP06decodeB14Representationyx0bE0QznFZTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x2A1C7C4A8])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t protocol witness for static AtomicOptionalRepresentable.decodeAtomicOptionalRepresentation(_:) in conformance Unmanaged<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7[4] = *a1;
  v7[2] = *(a2 + 16);
  swift_getCanonicalSpecializedMetadata();
  result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in static Unmanaged.decodeAtomicOptionalRepresentation(_:)partial apply, v7, MEMORY[0x29EDC9F80], a2, v5, &v8);
  *a3 = v8;
  return result;
}

uint64_t _sSRyxG15Synchronization19AtomicRepresentableABRi_zrlAbCP06encodeB14Representationy0bE0QzxnFZTWTm@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, void)@<X3>, uint64_t *a4@<X8>)
{
  v5 = a1[1];
  result = a3(*a1, v5, *(a2 + 16));
  *a4 = result;
  a4[1] = v5;
  return result;
}

uint64_t _sSRyxG15Synchronization19AtomicRepresentableABRi_zrlAbCP06decodeB14Representationyx0bE0QznFZTWTm@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *(a2 + 16));
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t *_sSw15Synchronization19AtomicRepresentableA2aBP06encodeB14Representationy0bE0QzxnFZTW_0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = result[1] - v2;
    *a2 = v2;
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *_sSw15Synchronization19AtomicRepresentableA2aBP06decodeB14Representationyx0bE0QznFZTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1] + *result;
  if (!*result)
  {
    v2 = 0;
  }

  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t *protocol witness for static AtomicRepresentable.encodeAtomicRepresentation(_:) in conformance Duration@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  *a2 = result[1];
  a2[1] = v2;
  return result;
}

uint64_t *protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance Duration@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  *a2 = result[1];
  a2[1] = v2;
  return result;
}

void *protocol witness for static AtomicRepresentable.encodeAtomicRepresentation(_:) in conformance WordPair@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void *protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance WordPair@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

Swift::Int WordPair.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x29C2AD750](a1);
  MEMORY[0x29C2AD750](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WordPair()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x29C2AD750](v1);
  MEMORY[0x29C2AD750](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WordPair()
{
  v1 = v0[1];
  MEMORY[0x29C2AD750](*v0);
  return MEMORY[0x29C2AD750](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WordPair()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x29C2AD750](v1);
  MEMORY[0x29C2AD750](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance WordPair(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance WordPair(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] >= a1[1];
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance WordPair(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] >= a2[1];
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance WordPair(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] < a1[1];
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t WordPair.description.getter()
{
  _StringGuts.grow(_:)(31);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AD6F0](v0);

  MEMORY[0x29C2AD6F0](0x646E6F636573202CLL, 0xEA0000000000203ALL);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AD6F0](v1);

  MEMORY[0x29C2AD6F0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t (*_s15Synchronization5MutexVAARi_zrlE5valueAA5_CellVyxGvr(uint64_t a1, uint64_t a2))()
{
  result = AtomicLazyReference.storage.read;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t _Atomic128BitStorage._storage.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AtomicLoadOrdering and conformance AtomicLoadOrdering()
{
  result = lazy protocol witness table cache variable for type AtomicLoadOrdering and conformance AtomicLoadOrdering;
  if (!lazy protocol witness table cache variable for type AtomicLoadOrdering and conformance AtomicLoadOrdering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AtomicLoadOrdering and conformance AtomicLoadOrdering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AtomicStoreOrdering and conformance AtomicStoreOrdering()
{
  result = lazy protocol witness table cache variable for type AtomicStoreOrdering and conformance AtomicStoreOrdering;
  if (!lazy protocol witness table cache variable for type AtomicStoreOrdering and conformance AtomicStoreOrdering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AtomicStoreOrdering and conformance AtomicStoreOrdering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AtomicUpdateOrdering and conformance AtomicUpdateOrdering()
{
  result = lazy protocol witness table cache variable for type AtomicUpdateOrdering and conformance AtomicUpdateOrdering;
  if (!lazy protocol witness table cache variable for type AtomicUpdateOrdering and conformance AtomicUpdateOrdering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AtomicUpdateOrdering and conformance AtomicUpdateOrdering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WordPair and conformance WordPair()
{
  result = lazy protocol witness table cache variable for type WordPair and conformance WordPair;
  if (!lazy protocol witness table cache variable for type WordPair and conformance WordPair)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WordPair and conformance WordPair);
  }

  return result;
}

uint64_t type metadata completion function for Atomic(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8);
    swift_initRawStructMetadata2();
    return 0;
  }

  return result;
}

uint64_t destroy for Atomic(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t assignWithTake for Atomic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for Atomic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 48);

  return v9(a1, a2, AssociatedTypeWitness);
}

uint64_t storeEnumTagSinglePayload for Atomic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 56);

  return v10(a1, a2, a3, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for AtomicLazyReference(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AtomicLazyReference(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_299BD66A0(uint64_t *a1)
{
  if (!MEMORY[0x29EDCA1F8])
  {
    return MEMORY[0x29EDCA180] + 8;
  }

  v1 = *a1;
  type metadata accessor for Unmanaged();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  return type metadata accessor for Atomic();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WordPair(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WordPair(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t type metadata completion function for _Cell(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initRawStructMetadata2();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _MutexHandle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _MutexHandle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_299BD6A4C()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVySo16os_unfair_lock_sVGMd, &_s15Synchronization5_CellVySo16os_unfair_lock_sVGMR);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
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

uint64_t type metadata completion function for Mutex(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for _Cell();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeWithTake for Mutex(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithTake for Mutex(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for Mutex(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for Mutex(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

void *sub_299BD7018()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return &type metadata for _MutexHandle;
  }

  else
  {
    return (MEMORY[0x29EDCA180] + 8);
  }
}

uint64_t sub_299BD7040(uint64_t *a1)
{
  if (!MEMORY[0x29EDCA1F8])
  {
    return MEMORY[0x29EDCA180] + 8;
  }

  v1 = *a1;
  return type metadata accessor for _Cell();
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for Optional(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t destroy for Optional(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for Optional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for Optional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for Optional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for Optional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for Optional(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for Optional(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}