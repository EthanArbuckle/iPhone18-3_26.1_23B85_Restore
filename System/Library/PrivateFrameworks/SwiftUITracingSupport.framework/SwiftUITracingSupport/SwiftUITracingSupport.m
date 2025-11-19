uint64_t MergeOnce.init()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(a1 + 8) + 8))();
  result = type metadata accessor for MergeOnce();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t MergeOnce.merge(other:asSelf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 36);
  v5 = *(a1 + v4);
  if (*(v3 + v4) == v5)
  {
    return 0;
  }

  *(v3 + v4) = v5;
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  return (*(*(v8 + 8) + 16))();
}

void *EventTreeStats.init()@<X0>(uint64_t a1@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  return result;
}

uint64_t EventTreeStats.selection.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t EventTreeStats.selection.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EventTreeStats.merge(other:asSelf:)(uint64_t result, char a2)
{
  if (__OFADD__(*v2, *result))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 36);
  v6 = *(result + 8);
  *v2 += *result;
  v7 = *(v2 + 8);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v2 + 8) = v9;
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v10 = *(v2 + 16);
  v8 = __OFADD__(v10, v3);
  v11 = v10 + v3;
  if (v8)
  {
    goto LABEL_28;
  }

  *(v2 + 16) = v11;
  v12 = *(v2 + 32);
  if (*(v2 + 36) + v5 >= v12)
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * (v12 + v5));
  }

  if (!v5)
  {
    return 1;
  }

  if (v4)
  {
    for (i = (v4 + 32); ; i += 10)
    {
      v14 = *(i - 2);
      v15 = *(i - 1);
      v16 = *i;
      v17 = *(v2 + 36);
      if (v17 == *(v2 + 32))
      {
        v18 = 2 * v17;
        if (!v17)
        {
          v18 = 1;
        }

        if (HIDWORD(v18))
        {
          goto LABEL_25;
        }

        v21 = *(i - 1);
        v22 = *(i - 2);
        v19 = *(v2 + 24);
        *(v2 + 32) = v18;
        if (v19)
        {
          result = realloc(v19, 40 * v18);
          if (!result)
          {
            goto LABEL_30;
          }
        }

        else
        {
          result = swift_slowAlloc();
        }

        *(v2 + 24) = result;
        v15 = v21;
        v14 = v22;
      }

      else
      {
        result = *(v2 + 24);
      }

      if (!result)
      {
        goto LABEL_29;
      }

      v20 = result + 40 * v17;
      *v20 = v14;
      *(v20 + 16) = v15;
      *(v20 + 32) = v16;
      if (v17 == -1)
      {
        break;
      }

      *(v2 + 36) = v17 + 1;
      if (!--v5)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Void __swiftcall EventTreeStats.deallocate()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 24) = 0;
  }
}

Swift::Void __swiftcall EventTreeStats.copy()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = 5 * *(v0 + 32);
    v4 = swift_slowAlloc();
    *(v0 + 24) = v4;

    memcpy(v4, v1, 40 * v2);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance EventTreeStats()
{
  result = *(v0 + 24);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 24) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance EventTreeStats()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = 5 * *(v0 + 32);
    v4 = swift_slowAlloc();
    *(v0 + 24) = v4;

    memcpy(v4, v1, 40 * v2);
  }
}

void *protocol witness for DefaultInit.init() in conformance EventTreeStats@<X0>(uint64_t a1@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  return result;
}

void *DiffTreeStats.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v3 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = v4;
  v6 = HIDWORD(v4);
  v7 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(v2);
  v9 = v8;
  v10 = HIDWORD(v8);
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(v2);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 36) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = v9;
  *(a1 + 76) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = result;
  *(a1 + 112) = v12;
  *(a1 + 116) = v13;
  return result;
}

double DiffTreeStats.baseline.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

double DiffTreeStats.baseline.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

double DiffTreeStats.candidate.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
  result = *(v1 + 72);
  *(a1 + 32) = result;
  return result;
}

double DiffTreeStats.candidate.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v2;
  result = *(a1 + 32);
  *(v1 + 72) = result;
  return result;
}

uint64_t DiffTreeStats.selection.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t DiffTreeStats.selection.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2;
  return result;
}

Swift::Void __swiftcall DiffTreeStats.deallocate()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 24) = 0;
  }

  v2 = *(v0 + 64);
  if (v2)
  {
    MEMORY[0x26D69EAB0](v2, -1, -1);
    *(v0 + 64) = 0;
  }
}

Swift::Void __swiftcall DiffTreeStats.copy()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = 5 * *(v0 + 32);
    v4 = swift_slowAlloc();
    *(v0 + 24) = v4;
    memcpy(v4, v1, 40 * v2);
  }

  v5 = *(v0 + 64);
  if (v5)
  {
    v6 = *(v0 + 76);
    v7 = 5 * *(v0 + 72);
    v8 = swift_slowAlloc();
    *(v0 + 64) = v8;

    memcpy(v8, v5, 40 * v6);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance DiffTreeStats()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 24) = 0;
  }

  result = *(v0 + 64);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 64) = 0;
  }

  return result;
}

Swift::Int UnsafeTreeNodeRef.Typed.hashValue.getter(uint64_t a1)
{
  return UnsafeTreeNodeRef.Typed.hashValue.getter(a1);
}

{
  v5[19] = *v1;
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  RefProtocol.hash(into:)(v5, a1, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UnsafeTreeNodeRef.Typed<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RefProtocol.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnsafeTreeNodeRef.Typed<A, B>(uint64_t a1, uint64_t a2)
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance UnsafeTreeNodeRef.Typed<A, B>(a1, a2);
}

{
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  RefProtocol.hash(into:)(v5, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t _s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_xq_GAA0G8ProtocolA2aGP8rawValue03RawK0QzvgTW_0@<X0>(_DWORD *a1@<X8>)
{
  result = UnsafeTree.Symbol.Ref.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UnsafeTree<A, B>.Symbol.Ref(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RefProtocol.hash(into:)(a1, a2, WitnessTable);
}

uint64_t (*UnsafeTree.Symbol.stableIdentity.modify(uint64_t a1, uint64_t a2))()
{
  result = EventTreeStats.count.modify;
  v4 = v2 + *(a2 + 44);
  return result;
}

Swift::Void __swiftcall UnsafeTree.Symbol.deallocate()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  type metadata accessor for UnsafeArray();
  UnsafeArray.deallocate()();
}

uint64_t UnsafeTree.Symbol.init(element:stableIdentity:recent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4;
  v10 = HIDWORD(a4);
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for UnsafeTree.Symbol();
  *(a6 + *(result + 44)) = a2;
  v12 = a6 + *(result + 48);
  *v12 = a3;
  *(v12 + 8) = v6;
  *(v12 + 12) = v10;
  return result;
}

uint64_t UnsafeTree.Node._deallocate()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 52);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  v7 = type metadata accessor for UnsafeArray();
  return a2(v7);
}

uint64_t UnsafeTree.Node.describe(state:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v27 = *(v9 + 32);
  v28 = v10;
  LODWORD(v10) = *(v9 + 40);
  v25 = *(v9 + 41);
  v26 = v10;
  v15 = *(v14 + 48);
  v16 = *(v4 + 16);
  v16(&v24 - v17, v2 + v15, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(&v29, v36);
    v34 = 0x2065646F4E28;
    v35 = 0xE600000000000000;
    v18 = v37;
    v19 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    *&v29 = v28;
    *(&v29 + 1) = v11;
    LOBYTE(v30) = v12;
    *(&v30 + 1) = v13;
    v31 = v27;
    v32 = v26;
    v33 = v25;
    v20 = (*(v19 + 32))(&v29, v18, v19);
    MEMORY[0x26D69CDB0](v20);

    v21 = v34;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    outlined destroy of Inspectable?(&v29);
    *&v29 = 0x2065646F4E28;
    *(&v29 + 1) = 0xE600000000000000;
    v16(v8, v2 + v15, v3);
    v22 = String.init<A>(describing:)();
    MEMORY[0x26D69CDB0](v22);

    return v29;
  }

  return v21;
}

uint64_t default argument 2 of UnsafeTree.Symbol.init(element:stableIdentity:recent:)()
{
  v0 = type metadata accessor for UnsafeTreeNodeRef.Typed();
  v1 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v1, v0);
  v3 = v2;

  return v3;
}

uint64_t UnsafeTree.Node.init(subject:stableIdentity:data:children:parent:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v9 = a5;
  v13 = *a6;
  v14 = HIDWORD(a5);
  *a8 = *a1;
  *(a8 + 8) = a2;
  v15 = type metadata accessor for UnsafeTree.Node();
  result = (*(*(a7 - 8) + 32))(a8 + v15[12], a3, a7);
  v17 = a8 + v15[13];
  *v17 = a4;
  *(v17 + 8) = v9;
  *(v17 + 12) = v14;
  *(a8 + v15[14]) = v13;
  return result;
}

uint64_t UnsafeTree.Storage.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for UnsafeTree.Node();
  v3 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v3, v2);
  v18 = v4;
  v6 = v5;

  v7 = type metadata accessor for UnsafeTree.Symbol();
  v8 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v8, v7);
  v10 = v9;
  v12 = v11;

  type metadata accessor for UnsafeTree.Symbol.Ref();
  v19 = Dictionary.init()();
  v13 = type metadata accessor for Dictionary();
  v14 = specialized Strong.init(_:)(&v19, v13);

  type metadata accessor for UnsafeTreeNodeRef.Typed();
  v19 = Dictionary.init()();
  v15 = type metadata accessor for Dictionary();
  v16 = specialized Strong.init(_:)(&v19, v15);

  *a1 = v18;
  a1[1] = v6;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v16;
  return result;
}

uint64_t (*UnsafeTree.storage.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  type metadata accessor for UnsafeTree.Storage();
  *(v6 + 32) = Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t UnsafeTree.nodes.getter()
{
  result = **v0;
  v2 = (*v0)[1];
  return result;
}

double key path getter for UnsafeTree.nodes : <A, B>UnsafeTree<A, B>@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  *a2 = **a1;
  result = v2[1];
  a2[1] = result;
  return result;
}

uint64_t (*UnsafeTree.nodes.read())()
{
  v1 = **v0;
  v2 = (*v0)[1];
  return EventTreeStats.count.modify;
}

double key path setter for UnsafeTree.nodes : <A, B>UnsafeTree<A, B>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *v2 = *a1;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

uint64_t (*UnsafeTree.nodes.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = UnsafeTree.storage.modify(v4, a2);
  return UnsafeTree.storage.modify;
}

uint64_t UnsafeTree.nodes.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *v3 = result;
  v3[1] = a2;
  return result;
}

uint64_t UnsafeTree.subjects.getter()
{
  result = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return result;
}

double key path getter for UnsafeTree.subjects : <A, B>UnsafeTree<A, B>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 16);
  result = *(v2 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t (*UnsafeTree.subjects.read())()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return EventTreeStats.count.modify;
}

double key path setter for UnsafeTree.subjects : <A, B>UnsafeTree<A, B>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 16) = *a1;
  result = *(a1 + 8);
  *(v2 + 24) = result;
  return result;
}

uint64_t (*UnsafeTree.subjects.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = UnsafeTree.storage.modify(v4, a2);
  return UnsafeTree.storage.modify;
}

uint64_t UnsafeTree.subjects.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

uint64_t (*specialized UnsafeTree.subjectsMap.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(*v1 + 32);
  *(v3 + 32) = specialized Strong.subscript.read();
  v6 = *v5;
  return UnsafeTree.subjectsMap.readspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(*v1 + 32);
  *(v3 + 32) = specialized Strong.subscript.read();
  v6 = *v5;
  return UnsafeTree.subjectsMap.readspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(*v1 + 32);
  *(v3 + 32) = specialized Strong.subscript.read();
  v6 = *v5;
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*UnsafeTree.subjectsMap.read(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*v2 + 32);
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  type metadata accessor for UnsafeTree.Symbol.Ref();
  type metadata accessor for Dictionary();
  *(v6 + 32) = Strong.subscript.read();
  v12 = *v11;
  return UnsafeTree.subjectsMap.read;
}

uint64_t key path setter for UnsafeTree.subjectsMap : <A, B>UnsafeTree<A, B>(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  v3 = *v2;
  *v2 = *a1;
}

uint64_t (*UnsafeTree.subjectsMap.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*v2 + 32);
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  type metadata accessor for UnsafeTree.Symbol.Ref();
  type metadata accessor for Dictionary();
  *(v6 + 32) = Strong.subscript.modify();
  return UnsafeTree.subjectsMap.modify;
}

uint64_t UnsafeTree.subjectsMap.setter(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *v2;
  *v2 = a1;
}

uint64_t (*UnsafeTree.mixedIdentityMap.read(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*v2 + 40);
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  type metadata accessor for Dictionary();
  *(v6 + 32) = Strong.subscript.read();
  v12 = *v11;
  return UnsafeTree.subjectsMap.readspecialized ;
}

void UnsafeTree.subjectsMap.readspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t key path setter for UnsafeTree.mixedIdentityMap : <A, B>UnsafeTree<A, B>(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  v3 = *v2;
  *v2 = *a1;
}

uint64_t (*UnsafeTree.mixedIdentityMap.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*v2 + 40);
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  type metadata accessor for Dictionary();
  *(v6 + 32) = Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

void UnsafeTree.storage.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t UnsafeTree.mixedIdentityMap.setter(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *v2;
  *v2 = a1;
}

uint64_t UnsafeTree.init()@<X0>(uint64_t *a1@<X8>)
{
  UnsafeTree.Storage.init()(v17);
  v2 = type metadata accessor for UnsafeTree.Storage();
  v3 = specialized Strong.init(_:)(v17, v2);
  v4 = type metadata accessor for UnsafeTree.Symbol.Ref();
  v5 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v5, v4);
  v7 = v6;
  v9 = v8;

  v10 = type metadata accessor for UnsafeTreeNodeRef.Typed();
  v11 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v11, v10);
  v13 = v12;
  v15 = v14;

  *a1 = v3;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v13;
  a1[4] = v15;
  return result;
}

uint64_t UnsafeTree.first.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = **v2;
  v9 = (*v2)[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  type metadata accessor for UnsafeTree.Node();
  type metadata accessor for UnsafeArray();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  *a2 = 0;
  *(a2 + 4) = result & 1;
  return result;
}

void UnsafeTree.add(hashed:to:data:)(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v8 = *a2;
  UnsafeTree.symbol(hashed:)(a1, a4, &v13);
  v12 = v8;
  v9[1] = *(a4 + 16);
  v10 = *(a4 + 32);
  v11 = a3;
  UnsafeTree.add(child:to:default:)(&v13, &v12, partial apply for closure #1 in UnsafeTree.add(child:to:default:), v9, a4, a5);
}

void UnsafeTree.symbol(hashed:)(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = v3[1];
  v19 = *v3;
  v20 = v7;
  v21 = *(v3 + 4);
  v8 = UnsafeTree.subjectsMap.read(v18, a2);
  v10 = v9;
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v14 = type metadata accessor for UnsafeTree.Symbol.Ref();
  MEMORY[0x26D69CA60](&v17, a1, v10, v12, v14, v13);
  if ((v17 & 0x100000000) != 0)
  {
    (v8)(v18, 0);
    v15 = dispatch thunk of Hashable.hashValue.getter();
    UnsafeTree.new(element:identity:)(a1, v15, a2, a3);
  }

  else
  {
    v16 = v17;
    (v8)(v18, 0);
    *a3 = v16;
  }
}

void UnsafeTree.add(child:to:default:)(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v5 = *a1;
  v9 = *a2;
  v10 = v5;
  v6[1] = *(a4 + 16);
  v7 = *(a4 + 32);
  v8 = a3;
  UnsafeTree.add(child:to:default:)(&v10, &v9, partial apply for closure #1 in UnsafeTree.add(child:to:default:), v6, a4, a5);
}

void UnsafeTree.add(child:identity:to:data:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X8>)
{
  v9 = *a3;
  UnsafeTree.symbol(_:identity:)(a1, a2, a5, &v14);
  v13 = v9;
  v10[1] = *(a5 + 16);
  v11 = *(a5 + 32);
  v12 = a4;
  UnsafeTree.add(child:to:default:)(&v14, &v13, partial apply for closure #1 in UnsafeTree.add(child:to:default:), v10, a5, a6);
}

void UnsafeTree.symbol(_:identity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  v9 = v4[1];
  v20 = *v4;
  v21 = v9;
  v22 = *(v4 + 4);
  v10 = UnsafeTree.subjectsMap.read(v19, a3);
  v12 = v11;
  v14 = a3[2];
  v13 = a3[3];
  v15 = a3[4];
  v16 = type metadata accessor for UnsafeTree.Symbol.Ref();
  MEMORY[0x26D69CA60](&v18, a1, v12, v14, v16, v15);
  if ((v18 & 0x100000000) != 0)
  {
    (v10)(v19, 0);
    UnsafeTree.new(element:identity:)(a1, a2, a3, a4);
  }

  else
  {
    v17 = v18;
    (v10)(v19, 0);
    *a4 = v17;
  }
}

uint64_t specialized UnsafeTree.add(child:to:default:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, void (*a3)(_OWORD *__return_ptr, uint64_t, uint64_t *)@<X2>, int *a4@<X8>)
{
  v6 = result;
  v8 = *v4;
  if (a2 == -1)
  {
    if (*(v8 + 12))
    {
      goto LABEL_28;
    }

    v14 = 0;
  }

  else
  {
    v9 = *v8 + 88 * a2;
    v10 = *(v9 + 76);
    v11 = *(v9 + 64);
    while (v10)
    {
      if (!*(v9 + 64))
      {
        goto LABEL_29;
      }

      v13 = *v11++;
      v12 = v13;
      --v10;
      if (*(*v8 + 88 * v13) == result)
      {
        *a4 = v12;
        return result;
      }
    }

    v14 = *(v9 + 8);
  }

  v15 = result;
  v16 = *(*(v8 + 16) + (result << 6) + 40) + v14;
  a3(v42, v16, v4);
  v39 = v42[1];
  v40 = v42[0];
  v17 = v43;
  v18 = v44;
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v19 = result;
  v21 = v20;
  v22 = *v4;
  v23 = *(*v4 + 12);
  if (v23 == *(*v4 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v23);
  }

  if (!*v22)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24 = *(v22 + 12);
  v25 = *v22 + 88 * v24;
  *v25 = v6;
  *(v25 + 8) = v16;
  *(v25 + 16) = v40;
  *(v25 + 32) = v39;
  *(v25 + 48) = v17;
  *(v25 + 56) = v18;
  *(v25 + 64) = v19;
  *(v25 + 72) = v21;
  *(v25 + 80) = a2;
  if (v24 == -1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v22 + 12) = v24 + 1;
  v26 = v24;
  v27 = *(v22 + 40);
  v28 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v27;
  *v27 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v16, isUniquelyReferenced_nonNull_native);
  v30 = *v27;
  *v27 = v41;

  v31 = *(v22 + 16) + (v15 << 6);
  v32 = *(v31 + 60);
  if (v32 == *(v31 + 56))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v32);
  }

  v33 = *(v31 + 48);
  if (!v33)
  {
    goto LABEL_31;
  }

  v34 = *(v31 + 60);
  *(v33 + 4 * v34) = v26;
  if (v34 == -1)
  {
    goto LABEL_26;
  }

  *(v31 + 60) = v34 + 1;
  if (a2 == -1)
  {
LABEL_24:
    *a4 = v26;
    return result;
  }

  v35 = *v22 + 88 * a2;
  v36 = *(v35 + 76);
  if (v36 == *(v35 + 72))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v36);
  }

  v37 = *(v35 + 64);
  if (v37)
  {
    v38 = *(v35 + 76);
    *(v37 + 4 * v38) = v26;
    if (v38 != -1)
    {
      *(v35 + 76) = v38 + 1;
      goto LABEL_24;
    }

    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeTree.add(child:to:default:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, _DWORD *a5@<X8>)
{
  v6 = result;
  v7 = *a3;
  if (a2 == -1)
  {
    if (*(v7 + 12))
    {
      goto LABEL_29;
    }

    v38 = a5;
    v39 = a4;
    v40 = 0;
  }

  else
  {
    v8 = *v7 + 88 * a2;
    v9 = *(v8 + 76);
    v10 = *(v8 + 64);
    while (v9)
    {
      if (!*(v8 + 64))
      {
        goto LABEL_30;
      }

      v12 = *v10++;
      LODWORD(v11) = v12;
      --v9;
      if (*(*v7 + 88 * v12) == result)
      {
        goto LABEL_25;
      }
    }

    v38 = a5;
    v39 = a4;
    v40 = *(v8 + 8);
  }

  v13 = result;
  v14 = *(*(v7 + 16) + (result << 6) + 40);
  v15 = MEMORY[0x277D84F90];
  v16 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v18 = v17;
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v15);
  v19 = result;
  v21 = v20;
  v22 = *(v7 + 12);
  if (v22 == *(v7 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (!*v7)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v7 + 12);
  v24 = *v7 + 88 * v23;
  *v24 = v6;
  v25 = v14 + v40;
  *(v24 + 8) = v14 + v40;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 40) = v16;
  *(v24 + 48) = v18;
  *(v24 + 52) = HIDWORD(v18);
  *(v24 + 64) = v19;
  *(v24 + 72) = v21;
  *(v24 + 80) = a2;
  if (v23 == -1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v7 + 12) = v23 + 1;
  v11 = v23;
  v26 = *(v7 + 40);
  v27 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v26;
  *v26 = 0x8000000000000000;
  v39(v11, v25, isUniquelyReferenced_nonNull_native);
  v29 = *v26;
  *v26 = v41;

  v30 = *(v7 + 16) + (v13 << 6);
  v31 = *(v30 + 60);
  if (v31 == *(v30 + 56))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v31);
  }

  v32 = *(v30 + 48);
  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = *(v30 + 60);
  *(v32 + 4 * v33) = v11;
  if (v33 == -1)
  {
    goto LABEL_27;
  }

  *(v30 + 60) = v33 + 1;
  if (a2 == -1)
  {
    goto LABEL_24;
  }

  v34 = *v7 + 88 * a2;
  v35 = *(v34 + 76);
  if (v35 == *(v34 + 72))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v35);
  }

  v36 = *(v34 + 64);
  if (!v36)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v37 = *(v34 + 76);
  *(v36 + 4 * v37) = v11;
  if (v37 == -1)
  {
    goto LABEL_28;
  }

  *(v34 + 76) = v37 + 1;
LABEL_24:
  a5 = v38;
LABEL_25:
  *a5 = v11;
  return result;
}

uint64_t specialized UnsafeTree.add(child:to:default:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int *a5@<X8>)
{
  v6 = result;
  v7 = *a3;
  if (a2 == -1)
  {
    if (*(v7 + 12))
    {
      goto LABEL_29;
    }

    v39 = a5;
    v13 = 0;
  }

  else
  {
    v8 = *v7 + 48 * a2;
    v9 = *(v8 + 36);
    v10 = *(v8 + 24);
    while (v9)
    {
      if (!*(v8 + 24))
      {
        goto LABEL_30;
      }

      v12 = *v10++;
      v11 = v12;
      --v9;
      if (*(*v7 + 48 * v12) == result)
      {
        *a5 = v11;
        return result;
      }
    }

    v39 = a5;
    v13 = *(v8 + 8);
  }

  v14 = *(*(v7 + 16) + 40 * result + 16) + v13;
  specialized closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)(v14, a4, v43);
  v15 = v43[1];
  v16 = v43[2];
  v17 = v43[3];
  v40 = v43[4];
  v41 = v43[0];
  v18 = v43[5];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v19 = result;
  v21 = v20;
  v22 = *(v7 + 12);
  if (v22 == *(v7 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (!*v7)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v23 = *(v7 + 12);
  v24 = *v7 + 48 * v23;
  *v24 = v6;
  *(v24 + 8) = v14;
  *(v24 + 16) = v41;
  *(v24 + 17) = v15;
  *(v24 + 18) = v16;
  *(v24 + 19) = v17;
  *(v24 + 20) = v40;
  *(v24 + 21) = v18;
  *(v24 + 24) = v19;
  *(v24 + 32) = v21;
  *(v24 + 40) = a2;
  if (v23 == -1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = v6;
  *(v7 + 12) = v23 + 1;
  v26 = v23;
  v27 = *(v7 + 40);
  v28 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v14, isUniquelyReferenced_nonNull_native);
  v30 = *v27;
  *v27 = v42;

  v31 = *(v7 + 16) + 40 * v25;
  v32 = *(v31 + 36);
  if (v32 == *(v31 + 32))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v32);
  }

  v33 = *(v31 + 24);
  if (!v33)
  {
    goto LABEL_32;
  }

  v34 = *(v31 + 36);
  *(v33 + 4 * v34) = v26;
  if (v34 == -1)
  {
    goto LABEL_27;
  }

  *(v31 + 36) = v34 + 1;
  if (a2 != -1)
  {
    v35 = *v7 + 48 * a2;
    v36 = *(v35 + 36);
    if (v36 == *(v35 + 32))
    {
      result = specialized UnsafeArray.growToCapacity(_:)(2 * v36);
    }

    v37 = *(v35 + 24);
    if (!v37)
    {
      goto LABEL_33;
    }

    v38 = *(v35 + 36);
    *(v37 + 4 * v38) = v26;
    if (v38 != -1)
    {
      *(v35 + 36) = v38 + 1;
      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_24:
  *v39 = v26;
  return result;
}

void UnsafeTree.add(child:to:default:)(unsigned int *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(void, uint64_t **)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int *a6@<X8>)
{
  v80 = a4;
  v81 = a3;
  v10 = a5[2];
  v11 = a5[3];
  v12 = a5[4];
  v13 = type metadata accessor for UnsafeTree.Node();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v78 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v90 = (&v76 - v19);
  v89 = *(v11 - 1);
  v20 = *(v89 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v79 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v87 = v11;
  v88 = &v76 - v23;
  v24 = *a1;
  v25 = *a2;
  v91 = v6;
  v26 = *v6;
  v27 = **v6;
  v83 = v25;
  v84 = a6;
  v85 = v12;
  v86 = v10;
  v82 = v14;
  if (v25 == -1)
  {
    v38 = v26[1];
    v93 = v27;
    v94 = v38;
    type metadata accessor for UnsafeArray();
    swift_getWitnessTable();
    v39 = 0;
    if (Collection.isEmpty.getter())
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v28 = type metadata accessor for UnsafeTreeNodeRef.Typed();
    v29 = *(v14 + 72);
    v11 = &v27[v29 * v25];
    a6 = v13;
    v30 = &v11[v13[13]];
    v31 = *v30;
    v32 = *(v30 + 3);
    v33 = UnsafeArray.endIndex.getter(*v30, *(v30 + 2) | (v32 << 32), v28);
    v34 = v31;
    while (v33)
    {
      if (!v32)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (!v31)
      {
        goto LABEL_35;
      }

      v36 = *v34++;
      v35 = v36;
      --v32;
      --v33;
      if (*&v27[v29 * v36] == v24)
      {
        v37 = v35;
        goto LABEL_28;
      }
    }
  }

  v39 = *(v11 + 1);
  v11 = v87;
  v13 = a6;
LABEL_11:
  v40 = v26[2];
  v41 = type metadata accessor for UnsafeTree.Symbol();
  v76 = *(*(v41 - 8) + 72) * v24;
  v77 = v41;
  v42 = (*(v40 + v76 + *(v41 + 44)) + v39);
  v43 = v88;
  v81(v42, v91);
  v44 = v89;
  v45 = v79;
  (*(v89 + 16))(v79, v43, v11);
  v46 = default argument 2 of UnsafeTree.Symbol.init(element:stableIdentity:recent:)();
  v48 = v47;
  v49 = HIDWORD(v47);
  v50 = v90;
  *v90 = v24;
  v81 = v42;
  *(v50 + 1) = v42;
  (*(v44 + 32))(v50 + v13[12], v45, v11);
  v51 = v50 + v13[13];
  *v51 = v46;
  *(v51 + 2) = v48;
  *(v51 + 3) = v49;
  v52 = v83;
  *(v50 + v13[14]) = v83;
  v53 = *v91;
  v54 = *(*v91 + 3);
  v55 = v13;
  if (UnsafeArray.capacity.getter(**v91, *(*v91 + 2)) == v54)
  {
    type metadata accessor for UnsafeArray();
    UnsafeArray.growToCapacity(_:)(2 * v54);
  }

  v56 = *v53;
  v57 = v82;
  if (!*v53)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v58 = *(v53 + 3);
  v59 = *(v82 + 72);
  v60 = v78;
  v61 = v90;
  (*(v82 + 16))(v78, v90, v55);
  _sSpsRi_zrlE10initialize2toyxn_tF(v60, v56 + v59 * v58, v55);
  if (v58 == -1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v53 + 3) = v58 + 1;
  v62 = *(v53 + 2);
  v93 = v56;
  LODWORD(v94) = v62;
  HIDWORD(v94) = v58 + 1;
  v63 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  ArrayLike.lastIndex.getter(v63, WitnessTable);
  (*(v57 + 8))(v61, v55);
  v37 = v92;
  if ((v92 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(v92))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  BYTE4(v92) = 0;
  v93 = v81;
  v65 = v53[5];
  v66 = v87;
  v67 = type metadata accessor for UnsafeTreeNodeRef.Typed();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v68 = v53[2] + *(v77 + 48) + v76;
  v69 = *(v68 + 12);
  if (UnsafeArray.capacity.getter(*v68, *(v68 + 8)) == v69)
  {
    type metadata accessor for UnsafeArray();
    UnsafeArray.growToCapacity(_:)(2 * v69);
  }

  v70 = *v68;
  if (!*v68)
  {
    goto LABEL_37;
  }

  v71 = *(v68 + 12);
  LODWORD(v93) = v37;
  _sSpsRi_zrlE10initialize2toyxn_tF(&v93, v70 + 4 * v71, v67);
  if (v71 == -1)
  {
    goto LABEL_33;
  }

  *(v68 + 12) = v71 + 1;
  if (v52 == -1)
  {
    goto LABEL_27;
  }

  v72 = *v53 + v59 * v52 + *(v55 + 52);
  v73 = *(v72 + 12);
  if (UnsafeArray.capacity.getter(*v72, *(v72 + 8)) == v73)
  {
    type metadata accessor for UnsafeArray();
    UnsafeArray.growToCapacity(_:)(2 * v73);
  }

  v74 = *v72;
  if (!*v72)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v75 = *(v72 + 12);
  LODWORD(v93) = v37;
  _sSpsRi_zrlE10initialize2toyxn_tF(&v93, v74 + 4 * v75, v67);
  if (v75 == -1)
  {
    goto LABEL_34;
  }

  *(v72 + 12) = v75 + 1;
LABEL_27:
  (*(v89 + 8))(v88, v66);
LABEL_28:
  *v84 = v37;
}

uint64_t UnsafeTree.subscript.getter(uint64_t a1, void *a2)
{
  v4 = **(*v2 + 32);
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = type metadata accessor for UnsafeTree.Symbol.Ref();

  MEMORY[0x26D69CA60](a1, v4, v6, v8, v7);
}

uint64_t specialized UnsafeTree.new(element:identity:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *, uint64_t)@<X2>, _DWORD *a4@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v10 = result;
  v12 = v11;
  v24 = *a1;
  v25 = a1[1];
  LODWORD(v26) = *(a1 + 8);
  v13 = *v4;
  v14 = *(*v4 + 28);
  if (v14 == *(*v4 + 24))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v14);
  }

  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *(v13 + 28);
    v17 = v15 + (v16 << 6);
    *v17 = v24;
    *(v17 + 16) = v25;
    *(v17 + 32) = v26;
    *(v17 + 40) = a2;
    *(v17 + 48) = v10;
    *(v17 + 56) = v12;
    if (v16 != -1)
    {
      *(v13 + 28) = v16 + 1;
      v18 = v16;
      v19 = *(v13 + 32);
      v20 = *v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v19;
      *v19 = 0x8000000000000000;
      a3(v18, a1, isUniquelyReferenced_nonNull_native);
      v22 = *v19;
      *v19 = v23;

      *a4 = v18;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeTree.new(element:identity:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int *a4@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v10 = result;
  v12 = v11;
  v13 = *v4;
  v14 = *(*v4 + 28);
  if (v14 == *(*v4 + 24))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v14);
  }

  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *(v13 + 28);
    v17 = v15 + 40 * v16;
    *v17 = a1;
    v18 = a2 & 1;
    *(v17 + 8) = v18;
    *(v17 + 16) = a3;
    *(v17 + 24) = v10;
    *(v17 + 32) = v12;
    if (v16 != -1)
    {
      *(v13 + 28) = v16 + 1;
      v19 = v16;
      v20 = *(v13 + 32);
      v21 = *v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v20;
      *v20 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a1, v18, isUniquelyReferenced_nonNull_native);
      v23 = *v20;
      *v20 = v24;

      *a4 = v19;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void UnsafeTree.new(element:identity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v43 = a2;
  v42 = a4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](a1);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 + 24);
  v11 = *(v10 + 32);
  v13 = type metadata accessor for UnsafeTree.Symbol();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v38 - v19;
  v21 = v6[2];
  v39 = a1;
  v38[0] = v21;
  v38[1] = v6 + 2;
  v21(v9, a1, v5);
  v38[2] = v12;
  v40 = v11;
  v22 = default argument 2 of UnsafeTree.Symbol.init(element:stableIdentity:recent:)();
  LODWORD(v12) = v23;
  v24 = HIDWORD(v23);
  v25 = v6[4];
  v41 = v9;
  v25(v20, v9, v5);
  *&v20[*(v13 + 44)] = v43;
  v26 = &v20[*(v13 + 48)];
  *v26 = v22;
  *(v26 + 2) = v12;
  *(v26 + 3) = v24;
  v27 = *v44;
  v28 = (*v44 + 16);
  v29 = *(*v44 + 28);
  if (UnsafeArray.capacity.getter(*v28, *(*v44 + 24)) == v29)
  {
    type metadata accessor for UnsafeArray();
    UnsafeArray.growToCapacity(_:)(2 * v29);
  }

  v30 = *v28;
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = *(v27 + 28);
  v32 = v30 + *(v14 + 72) * v31;
  (*(v14 + 16))(v18, v20, v13);
  _sSpsRi_zrlE10initialize2toyxn_tF(v18, v32, v13);
  if (v31 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 28) = v31 + 1;
    v33 = *(v27 + 24);
    v46 = v30;
    v47 = v33;
    v48 = v31 + 1;
    v34 = type metadata accessor for UnsafeArray();
    WitnessTable = swift_getWitnessTable();
    ArrayLike.lastIndex.getter(v34, WitnessTable);
    (*(v14 + 8))(v20, v13);
    v36 = v45;
    if ((v45 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v45))
      {
        (v38[0])(v41, v39, v5);
        LODWORD(v46) = v36;
        BYTE4(v46) = 0;
        v37 = *(v27 + 32);
        type metadata accessor for UnsafeTree.Symbol.Ref();
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        *v42 = v36;
        return;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t UnsafeTree.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = **(*v3 + 40);
  v12 = a1;
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for UnsafeTreeNodeRef.Typed();

  MEMORY[0x26D69CA60](&v13, &v12, v5, MEMORY[0x277D83B88], v9, MEMORY[0x277D83B98]);

  v11 = BYTE4(v13);
  *a3 = v13;
  *(a3 + 4) = v11;
  return result;
}

uint64_t UnsafeTree.sort(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = v3[1];
  v45 = *v3;
  v46 = v7;
  v47 = *(v3 + 4);
  UnsafeTree.first.getter(a3, &v44);
  v42 = v44;
  v43 = BYTE4(v44);
  v8 = a3[2];
  v9 = a3[3];
  v38 = v8;
  v39 = v9;
  v40 = a3[4];
  v10 = v40;
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  type metadata accessor for Optional();
  v11 = type metadata accessor for Array();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in UnsafeTree.sort(_:), v37, MEMORY[0x277D84A98], v11, v12, v41);
  v13 = v41[0];
  v34 = v10;
  v35 = v9;
  if (!v41[0])
  {
    v13 = static Array._allocateUninitialized(_:)();
  }

  v33 = v8;
  v44 = v13;
  v14 = v45;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  MEMORY[0x26D69D230](v41, v11, WitnessTable, v16);
  if ((v41[0] & 0x100000000) == 0)
  {
    v32 = type metadata accessor for UnsafeTree.Node();
    v30 = *(*(v32 - 8) + 72);
    v17 = type metadata accessor for UnsafeArray();
    v31 = v11;
    do
    {
      v36 = &v29;
      MEMORY[0x28223BE20](v17);
      v18 = v32;
      v19 = a2;
      v21 = v30 * v20;
      v22 = *v14 + *(v32 + 52);
      swift_getWitnessTable();
      swift_getWitnessTable();
      MutableCollection<>.sort(by:)();
      v14 = *v4;
      v23 = (**v4 + *(v18 + 52) + v21);
      a2 = v19;
      v24 = v31;
      v25 = v23[1];
      v41[0] = *v23;
      v41[1] = v25;
      swift_getWitnessTable();
      Array.append<A>(contentsOf:)();
      v26 = swift_getWitnessTable();
      v27 = swift_getWitnessTable();
      v17 = MEMORY[0x26D69D230](v41, v24, v26, v27);
    }

    while (BYTE4(v41[0]) != 1);
  }
}

uint64_t closure #1 in UnsafeTree.sort(_:)@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  *v5 = v3;
  v8 = v4;
  v6 = type metadata accessor for Array();
  result = EventTreeStats.count.modify(v6);
  *a2 = v8;
  return result;
}

uint64_t UnsafeTree.deallocate()(void *a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v6 = *v3;
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  type metadata accessor for UnsafeTree.Node();
  v10 = type metadata accessor for UnsafeArray();
  a2(v10);
  type metadata accessor for UnsafeTree.Symbol();
  v11 = type metadata accessor for UnsafeArray();
  a2(v11);
  type metadata accessor for UnsafeTree.Symbol.Ref();
  type metadata accessor for Dictionary();
  v12 = type metadata accessor for Strong();
  a3(v12);
  v13 = type metadata accessor for UnsafeArray();
  a2(v13);
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  v14 = type metadata accessor for UnsafeArray();
  a2(v14);
  type metadata accessor for Dictionary();
  v15 = type metadata accessor for Strong();
  return (a3)(v15);
}

uint64_t UnsafeTree.traverse(visitor:revisit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = UnsafeTree.first.getter(a5, &v29);
  if ((v30 & 1) == 0)
  {
    v12 = MEMORY[0x28223BE20](result);
    v13 = a5[3];
    v22 = a5[2];
    v23 = v13;
    v14 = a5[4];
    v24 = v14;
    v25 = a1;
    v26 = a2;
    v27 = v5;
    MEMORY[0x28223BE20](v12);
    v20[2] = v22;
    v20[3] = v13;
    v20[4] = v14;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = v5;
    v28 = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = v22;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    v17 = *(v5 + 16);
    *(v16 + 40) = *v5;
    *(v16 + 56) = v17;
    *(v16 + 72) = *(v5 + 32);
    *&v19 = type metadata accessor for UnsafeTreeNodeRef.Typed();
    *(&v19 + 1) = MEMORY[0x277D84F78] + 8;
    static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for closure #1 in UnsafeTree.traverse(visitor:revisit:), &v21, partial apply for closure #2 in UnsafeTree.traverse(visitor:revisit:), v20, &v28, v18, 1, partial apply for closure #3 in UnsafeTree.traverse(visitor:revisit:), v16, v19);
  }

  return result;
}

uint64_t closure #1 in UnsafeTree.traverse(visitor:revisit:)(_DWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t **, _OWORD *), uint64_t a5, uint64_t **a6)
{
  LODWORD(v24) = *a1;
  v8 = v24;
  v9 = *(a3 + 48);
  v26[2] = *(a3 + 32);
  v26[3] = v9;
  v27 = *(a3 + 64);
  v28 = *(a3 + 80);
  v10 = *(a3 + 16);
  v26[0] = *a3;
  v26[1] = v10;
  a4(&v24, a6, v26);
  v11 = **a6;
  v12 = type metadata accessor for UnsafeTreeNodeRef.Typed();
  v13 = type metadata accessor for UnsafeTree.Node();
  v14 = (v11 + *(*(v13 - 8) + 72) * v8 + *(v13 + 52));
  v15 = v14[1];
  v24 = *v14;
  v25 = v15;
  type metadata accessor for UnsafeArray();
  swift_getWitnessTable();
  v16 = Sequence.reversed()();
  result = MEMORY[0x26D69D060](v16, v12);
  if (!result)
  {
  }

  v18 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    v19 = 0;
    v20 = v28;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_12;
      }

      v23 = v20 + v19 + 1;
      if (__OFADD__(v20 + v19, 1))
      {
        goto LABEL_13;
      }

      LODWORD(v24) = *(v16 + 4 * v19 + 32);
      v25 = v18;
      swift_getTupleTypeMetadata3();
      type metadata accessor for Array();
      Array.append(_:)();
      ++v19;
      if (v22 == MEMORY[0x26D69D060](v16, v12))
      {

        *(a3 + 80) = v23;
        return result;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in UnsafeTree.traverse(visitor:revisit:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v8 = type metadata accessor for UnsafeTree.Node();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26C328DC0;
  (*(v9 + 16))(v12, **a6 + *(v9 + 72) * v13, v8);
  *(v14 + 56) = v8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v14 + 32));
  (*(v9 + 32))(boxed_opaque_existential_1Tm, v12, v8);
  print(_:separator:terminator:)();
}

uint64_t UnsafeTree.describe(state:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v19[0] = 40;
  v19[1] = 0xE100000000000000;
  v15 = *a1;
  v16 = v1;
  v3 = *(a1 + 24);
  v17 = v3;
  v18 = v2;
  if ((v3 & 2) == 0)
  {
    *&v17 = v3 | 2;
  }

  v4 = MEMORY[0x28223BE20](a1);
  v6 = v5[3];
  v14[8] = v5[2];
  v14[9] = v6;
  v14[10] = v5[4];
  v14[11] = v19;
  v14[12] = &v15;
  MEMORY[0x28223BE20](v4);
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  UnsafeTree.traverse(visitor:revisit:)(partial apply for closure #1 in UnsafeTree.describe(state:), v11, EventTreeStats.count.modify, v14, v12);
  return v19[0];
}

uint64_t closure #1 in UnsafeTree.describe(state:)(unsigned int *a1, void *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v67 = a1;
  v68 = a3;
  v66 = a2;
  v9 = type metadata accessor for UnsafeTree.Node();
  v63 = *(v9 - 8);
  v10 = v63;
  v64 = v9;
  v11 = *(v63 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v62 = &v59 - v13;
  v65 = *(a6 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UnsafeTree.Symbol();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v60 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - v22;
  v24 = *v67;
  v67 = a4;
  MEMORY[0x26D69CDB0](10, 0xE100000000000000);
  v25 = *(*v66 + 16);
  v66 = *v66;
  v26 = v65;
  v27 = *(v10 + 72) * v24;
  v28 = v18[2];
  v29 = v18[9];
  v28(v23, v25 + v29 * *(*v66 + v27), v17);
  (*(v26 + 32))(v16, v23, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  v30 = swift_dynamicCast();
  v61 = v27;
  if (v30)
  {
    outlined init with take of Inspectable(v71, &v73);
    v69 = 40;
    v70 = 0xE100000000000000;
    v31 = v75;
    v32 = v76;
    v33 = __swift_project_boxed_opaque_existential_1(&v73, v75);
    v34 = *(a5 + 16);
    v35 = *(a5 + 40);
    *v71 = *a5;
    v71[16] = v34;
    *&v71[24] = *(a5 + 24);
    v72 = v35;
    v36 = InspectionState.describe<A>(_:)(v33, v31, v32);
    MEMORY[0x26D69CDB0](v36);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    MEMORY[0x26D69CDB0](v69, v70);

    result = __swift_destroy_boxed_opaque_existential_1(&v73);
    v38 = v66;
  }

  else
  {
    memset(v71, 0, sizeof(v71));
    outlined destroy of Inspectable?(v71);
    v73 = 40;
    v74 = 0xE100000000000000;
    v39 = *(a5 + 16);
    v40 = *(a5 + 40);
    *v71 = *a5;
    v71[16] = v39;
    *&v71[24] = *(a5 + 24);
    v72 = v40;
    v41 = v66;
    v42 = v66[2] + v29 * *(*v66 + v27);
    v43 = v60;
    v28(v60, v42, v17);
    v44 = InspectionState.describe<A>(value:)(v43, a6);
    v46 = v45;
    (*(v26 + 8))(v43, a6);
    MEMORY[0x26D69CDB0](v44, v46);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    MEMORY[0x26D69CDB0](v73, v74);

    v38 = v41;
  }

  v47 = *(v68 + 64);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    *a5 = v49;
    v50 = *(a5 + 8);
    v51 = *(a5 + 16);
    v52 = *(a5 + 40);
    *v71 = v49;
    *&v71[8] = v50;
    v71[16] = v51;
    *&v71[24] = *(a5 + 24);
    v72 = v52;
    v54 = v62;
    v53 = v63;
    v55 = v64;
    (*(v63 + 16))(v62, *v38 + v61, v64);
    v56 = InspectionState.describe<A>(_:)(v54, v55, &protocol witness table for UnsafeTree<A, B>.Node);
    v58 = v57;
    (*(v53 + 8))(v54, v55);
    MEMORY[0x26D69CDB0](v56, v58);
  }

  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance UnsafeTree<A, B>(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return UnsafeTree.describe(state:)(a1);
}

void *_s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA09AggregateE7ElementOyAA5EventV2IdVG_AA9MergeOnceVyAA0kE5StatsVGTt0B5@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(v3);
  v9 = MEMORY[0x277D84F98];
  v36 = v4;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v10;
  v41 = v11;
  v42 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(MEMORY[0x277D84F98]);
  v43 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v9);
  v12 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5(&v36);
  v29 = v12;
  v30 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v31 = v13;
  v32 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v33 = v14;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  v15 = Hasher._finalize()();
  specialized UnsafeTree.new(element:identity:)(v34, v15, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v28);
  v16 = v28[0];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v18 = result;
  v20 = v19;
  v21 = *(v12 + 12);
  if (v21 == *(v12 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v21);
  }

  if (*v12)
  {
    v22 = *(v12 + 12);
    v23 = *v12 + 88 * v22;
    *v23 = v16;
    *(v23 + 8) = 0;
    v24 = a1[1];
    *(v23 + 16) = *a1;
    *(v23 + 32) = v24;
    *(v23 + 44) = *(a1 + 28);
    *(v23 + 64) = v18;
    *(v23 + 72) = v20;
    *(v23 + 80) = -1;
    if (v22 != -1)
    {
      *(v12 + 12) = v22 + 1;
      v25 = v30;
      v26 = v32;
      *a2 = v29;
      a2[1] = v25;
      a2[2] = v31;
      a2[3] = v26;
      a2[4] = v33;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA09AggregateE7ElementOyAA04ViewE0V8TElementOG_AA9MergeOnceVyAA05EventE5StatsVGTt0B5@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(v3);
  v9 = MEMORY[0x277D84F98];
  v36 = v4;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v10;
  v41 = v11;
  v42 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(MEMORY[0x277D84F98]);
  v43 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v9);
  v12 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5(&v36);
  v29 = v12;
  v30 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v31 = v13;
  v32 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v33 = v14;
  v34[0] = xmmword_26C328DD0;
  v34[1] = vdupq_n_s64(0xF000000000000007);
  v35 = 0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  v15 = Hasher._finalize()();
  specialized UnsafeTree.new(element:identity:)(v34, v15, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v28);
  v16 = v28[0];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v18 = result;
  v20 = v19;
  v21 = *(v12 + 12);
  if (v21 == *(v12 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v21);
  }

  if (*v12)
  {
    v22 = *(v12 + 12);
    v23 = *v12 + 88 * v22;
    *v23 = v16;
    *(v23 + 8) = 0;
    v24 = a1[1];
    *(v23 + 16) = *a1;
    *(v23 + 32) = v24;
    *(v23 + 44) = *(a1 + 28);
    *(v23 + 64) = v18;
    *(v23 + 72) = v20;
    *(v23 + 80) = -1;
    if (v22 != -1)
    {
      *(v12 + 12) = v22 + 1;
      v25 = v30;
      v26 = v32;
      *a2 = v29;
      a2[1] = v25;
      a2[2] = v31;
      a2[3] = v26;
      a2[4] = v33;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(v3);
  v9 = MEMORY[0x277D84F98];
  v35 = v4;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v39 = v10;
  v40 = v11;
  v41 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(MEMORY[0x277D84F98]);
  v42 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v9);
  v12 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5(&v35);
  v30 = v12;
  v13 = MEMORY[0x277D84F90];
  v31 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v32 = v14;
  v33 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v13);
  v34 = v15;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](1);
  v16 = Hasher._finalize()();
  specialized UnsafeTree.new(element:identity:)(0, 1, v16, v29);
  v17 = v29[0];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v13);
  v19 = result;
  v21 = v20;
  LOBYTE(v29[0]) = BYTE1(a1) & 1;
  v22 = *(v12 + 12);
  if (v22 == *(v12 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (*v12)
  {
    v23 = *(v12 + 12);
    v24 = v29[0];
    v25 = *v12 + 48 * v23;
    *v25 = v17;
    *(v25 + 8) = 0;
    *(v25 + 16) = a1;
    *(v25 + 17) = v24;
    *(v25 + 18) = BYTE2(a1);
    *(v25 + 19) = BYTE3(a1) & 1;
    *(v25 + 20) = BYTE4(a1);
    *(v25 + 21) = BYTE5(a1) & 1;
    *(v25 + 24) = v19;
    *(v25 + 32) = v21;
    *(v25 + 40) = -1;
    if (v23 != -1)
    {
      *(v12 + 12) = v23 + 1;
      v26 = v31;
      v27 = v33;
      *a2 = v30;
      a2[1] = v26;
      a2[2] = v32;
      a2[3] = v27;
      a2[4] = v34;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double UnsafeTree<>.init(root:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  specialized UnsafeTree<>.init(root:)(a1, a2, a3, a4, v10);
  (*(*(a3 - 8) + 8))(a1, a3);
  result = *v10;
  v9 = v10[1];
  *a5 = v10[0];
  *(a5 + 16) = v9;
  *(a5 + 32) = v11;
  return result;
}

double UnsafeTree<>.init(root:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 8))(v13, v12);
  specialized UnsafeTree<>.init(root:)(v11, a1, a2, a3, v17);
  (*(v8 + 8))(v11, a2);
  result = *v17;
  v15 = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = v15;
  *(a4 + 32) = v18;
  return result;
}

void $defer #1 <A, B>() in UnsafeTree<>.add(child:inverted:parents:nodeData:)()
{
  type metadata accessor for UnsafeTree.Symbol.Ref();
  type metadata accessor for UnsafeArray();
  UnsafeArray.removeAll(keepingCapacity:)(1);
}

void UnsafeTree<>.add(child:inverted:parents:)(int *a1@<X0>, char a2@<W1>, void (*a3)(_OWORD *, __int128 *)@<X2>, void *a4@<X4>, uint64_t a5@<X5>, _DWORD *a6@<X8>)
{
  v7 = v6;
  v13 = *a1;
  v14 = v6[1];
  v45 = *v6;
  v46 = v14;
  v47 = *(v6 + 4);
  v15 = UnsafeTree.first.getter(a4, v43);
  if (BYTE4(v43[0]))
  {
    goto LABEL_20;
  }

  v34 = &v32;
  v35 = a6;
  MEMORY[0x28223BE20](v15);
  v16 = a4[2];
  v38 = a4[3];
  v39 = v16;
  v31[2] = v16;
  v31[3] = v38;
  v37 = a4[4];
  v31[4] = v37;
  v31[5] = a5;
  v36 = v13;
  LODWORD(v43[0]) = v13;
  a3(v43, v6);
  v17 = v6[1];
  v43[0] = *v6;
  v43[1] = v17;
  v44 = *(v6 + 4);
  UnsafeTree.first.getter(a4, v42);
  if ((v42[0] & 0x100000000) != 0)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v18 = v42[0];
  v33 = a5;
  if (a2)
  {
    v40 = v42[0];
    LODWORD(v41) = v36;
    UnsafeTree.add(child:to:default:)(&v41, &v40, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:), v31, a4, v42);
    v18 = v42[0];
    HIDWORD(v32) = v42[0];
  }

  else
  {
    HIDWORD(v32) = 0;
  }

  v19 = *(v6 + 1);
  v20 = *(v6 + 2);
  type metadata accessor for UnsafeTree.Symbol.Ref();
  v21 = UnsafeArray.indices.getter();
  if (v21 != v22)
  {
    v23 = v21;
    v24 = v22;
    if (v22 < v21)
    {
      goto LABEL_21;
    }

    while (v23 < v24)
    {
      v25 = v23;
      if ((a2 & 1) == 0)
      {
        v42[0] = *(v7 + 1);
        v42[1] = *(v7 + 2);
        v26 = type metadata accessor for UnsafeArray();
        WitnessTable = swift_getWitnessTable();
        ArrayLike.lastIndex.getter(v26, WitnessTable);
        v25 = v41 - v23;
        if (__OFSUB__(v41, v23))
        {
          goto LABEL_19;
        }
      }

      if (v25 >= *(v7 + 5))
      {
        goto LABEL_18;
      }

      v28 = *(v7 + 1);
      if (!v28)
      {
        goto LABEL_22;
      }

      v29 = *(v28 + 4 * v25);
      ++v23;
      v40 = v18;
      LODWORD(v41) = v29;
      UnsafeTree.add(child:to:default:)(&v41, &v40, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:), v31, a4, v42);
      v18 = v42[0];
      if (v24 == v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v30 = HIDWORD(v32);
  if ((a2 & 1) == 0)
  {
    v40 = v18;
    LODWORD(v41) = v36;
    UnsafeTree.add(child:to:default:)(&v41, &v40, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:), v31, a4, v42);
    v30 = v42[0];
  }

  *v35 = v30;
  $defer #1 <A, B>() in UnsafeTree<>.add(child:inverted:parents:nodeData:)();
}

void UnsafeTree<>.add(child:inverted:parents:old:)(int *a1@<X0>, char a2@<W1>, void (*a3)(_OWORD *, uint64_t)@<X2>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, _DWORD *a7@<X8>)
{
  v8 = v7;
  v13 = *a1;
  v14 = a5[3];
  v34 = a5[2];
  v35 = v14;
  v36 = a5[4];
  v37 = a6;
  v38 = a4;
  v32 = v13;
  LODWORD(v42[0]) = v13;
  a3(v42, v7);
  v15 = *(v7 + 16);
  v42[0] = *v7;
  v42[1] = v15;
  v43 = *(v7 + 32);
  UnsafeTree.first.getter(a5, v41);
  if ((v41[0] & 0x100000000) != 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v41[0];
  v31 = a6;
  if (a2)
  {
    v39 = v41[0];
    LODWORD(v40) = v32;
    UnsafeTree.add(child:to:default:)(&v40, &v39, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:old:), v33, a5, v41);
    v16 = v41[0];
    v30 = v41[0];
  }

  else
  {
    v30 = 0;
  }

  v17 = *(v7 + 8);
  v18 = *(v8 + 16);
  type metadata accessor for UnsafeTree.Symbol.Ref();
  v19 = UnsafeArray.indices.getter();
  if (v19 != v20)
  {
    v21 = v19;
    v22 = v20;
    if (v20 >= v19)
    {
      while (v21 < v22)
      {
        v23 = v21;
        if ((a2 & 1) == 0)
        {
          v41[0] = *(v8 + 8);
          v41[1] = *(v8 + 16);
          v24 = type metadata accessor for UnsafeArray();
          WitnessTable = swift_getWitnessTable();
          ArrayLike.lastIndex.getter(v24, WitnessTable);
          v23 = v40 - v21;
          if (__OFSUB__(v40, v21))
          {
            goto LABEL_18;
          }
        }

        if (v23 >= *(v8 + 20))
        {
          goto LABEL_17;
        }

        v26 = *(v8 + 8);
        if (!v26)
        {
          goto LABEL_20;
        }

        v27 = *(v26 + 4 * v23);
        ++v21;
        v39 = v16;
        LODWORD(v40) = v27;
        UnsafeTree.add(child:to:default:)(&v40, &v39, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:old:), v33, a5, v41);
        v16 = v41[0];
        if (v22 == v21)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  v28 = v30;
  if ((a2 & 1) == 0)
  {
    v39 = v16;
    LODWORD(v40) = v32;
    UnsafeTree.add(child:to:default:)(&v40, &v39, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:old:), v33, a5, v41);
    v28 = v41[0];
  }

  *a7 = v28;
  v29 = *(v31 + 8);
  $defer #1 <A, B>() in UnsafeTree<>.add(child:inverted:parents:nodeData:)();
}

unint64_t specialized closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)@<X0>(unint64_t result@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v5 = **(v4 + 40);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_6:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFs6UInt64V_Tg5_0(result);
  if ((v7 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v6) = 0;
    goto LABEL_6;
  }

  v8 = (*v4 + 48 * *(*(v5 + 56) + 4 * result));
  LOBYTE(v6) = v8[18];
  v9 = v8[19];
  v10 = v8[20];
  v11 = v8[21];
LABEL_7:
  *a3 = 0;
  *(a3 + 2) = v6;
  *(a3 + 3) = v9;
  *(a3 + 4) = v10;
  *(a3 + 5) = v11;
  return result;
}

uint64_t closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v22 = a5;
  v23 = a4;
  v21 = *(a3 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnsafeTree.Node();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *a2;
  if (!*a2)
  {
    return (*(*(v23 + 8) + 8))(a3);
  }

  v26 = *a2;
  v17 = *(a2 + 24);
  v27 = *(a2 + 8);
  v28 = v17;
  v18 = type metadata accessor for UnsafeTree();
  UnsafeTree.subscript.getter(a1, v18, &v24);
  if (v25 == 1)
  {
    return (*(*(v23 + 8) + 8))(a3);
  }

  (*(v12 + 16))(v15, *v16 + *(v12 + 72) * v24, v11);
  (*(v21 + 32))(v10, &v15[*(v11 + 48)], a3);
  return (*(v23 + 16))(v10, a3);
}

uint64_t specialized UnsafeTree<>.merge(_:into:)(uint64_t result, unsigned int a2)
{
  if (a2 != -1)
  {
    v3 = result;
    v4 = a2;
    v5 = *(result + 40);
    v6 = a2;
    do
    {
      v7 = *v2;
      v8 = 88 * v6;
      v9 = **v2 + 88 * v6;
      if (*(v9 + 56) == v5)
      {
        break;
      }

      *(v9 + 56) = v5;
      result = EventTreeStats.merge(other:asSelf:)(v3, v6 == v4);
      v6 = *(*v7 + v8 + 80);
    }

    while (v6 != -1);
  }

  return result;
}

void specialized UnsafeTree<>.add(_:to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5)
{
  v8 = a2;
  v9 = *(*a3 + 16) + (a2 << 6);
  if (*(v9 + 60) && !*(v9 + 48))
  {
    goto LABEL_23;
  }

  *(v9 + 60) = 0;
  if (*(a3 + 36) && !*(a3 + 24))
  {
    goto LABEL_24;
  }

  *(a3 + 36) = 0;
  closure #1 in CauseEffect.addTime(rootedAt:partial:within:)(a3, a4, a5);
  v10 = *(a3 + 24);
  v11 = *(a3 + 36);
  if (v11)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (!*(a3 + 32))
  {
    specialized UnsafeArray.growToCapacity(_:)(0);
    v10 = *(a3 + 24);
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v12 = *(a3 + 36);
  v10[v12] = 0;
  v13 = __CFADD__(v12, 1);
  v11 = v12 + 1;
  if (!v13)
  {
    *(a3 + 36) = v11;
LABEL_13:
    v14 = v11;
    while (1)
    {
      v15 = *v10++;
      v21 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v21);
      specialized UnsafeTree.add(child:to:default:)(a2, v15, partial apply for specialized closure #1 in UnsafeTree.add(child:to:default:), &v22);
      v16 = v22;
      specialized UnsafeTree<>.merge(_:into:)(a1, v22);
      v17 = *(*a3 + 16) + (v8 << 6);
      v18 = *(v17 + 60);
      if (v18 == *(v17 + 56))
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v18);
      }

      v19 = *(v17 + 48);
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = *(v17 + 60);
      *(v19 + 4 * v20) = v16;
      if (v20 == -1)
      {
        __break(1u);
        break;
      }

      *(v17 + 60) = v20 + 1;
      if (!--v14)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t static AggregateTreeElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v8;
  v9 = type metadata accessor for AggregateTreeElement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v29 - v17;
  v19 = *(v16 + 48);
  v32 = v10;
  v20 = *(v10 + 16);
  v20(&v29 - v17, v33, v9);
  v20(&v18[v19], a2, v9);
  v33 = v5;
  v21 = *(v5 + 48);
  if (v21(v18, 1, a3) == 1)
  {
    v22 = 1;
    if (v21(&v18[v19], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20(v34, v18, v9);
    if (v21(&v18[v19], 1, a3) != 1)
    {
      v23 = v33;
      v24 = v30;
      (*(v33 + 32))(v30, &v18[v19], a3);
      v25 = *(v31 + 8);
      v26 = v34;
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v23 + 8);
      v27(v24, a3);
      v27(v26, a3);
LABEL_8:
      v14 = v32;
      goto LABEL_9;
    }

    (*(v33 + 8))(v34, a3);
  }

  v22 = 0;
  v9 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v18, v9);
  return v22 & 1;
}

uint64_t AggregateTreeElement.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    return MEMORY[0x26D69DBC0](0);
  }

  (*(v4 + 32))(v8, v12, v3);
  MEMORY[0x26D69DBC0](1);
  v16 = *(a2 + 24);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v8, v3);
}

Swift::Int AggregateTreeElement.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  AggregateTreeElement.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AggregateTreeElement<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AggregateTreeElement.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static UnsafeTree_SuppliesRoot.element(_:) in conformance AggregateTreeElement<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a3, a1, v4);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t UnsafeTree<>.symbol(_:identity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  v23 = a2;
  v7 = a3[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 24))(v10, v7, v13);
  v14 = v4[1];
  v26 = *v4;
  v27 = v14;
  v28 = *(v4 + 4);
  v15 = UnsafeTree.subjectsMap.read(v25, a3);
  v17 = v16;
  v18 = a3[3];
  v19 = a3[4];
  v20 = type metadata accessor for UnsafeTree.Symbol.Ref();
  MEMORY[0x26D69CA60](&v24, v12, v17, v7, v20, v19);
  if ((v24 & 0x100000000) != 0)
  {
    (v15)(v25, 0);
    UnsafeTree.new(element:identity:)(v12, v23, a3, a4);
    return (*(v8 + 8))(v12, v7);
  }

  else
  {
    v22 = v24;
    (v15)(v25, 0);
    result = (*(v8 + 8))(v12, v7);
    *a4 = v22;
  }

  return result;
}

uint64_t static Aggregate.invertable.getter()
{
  return 1;
}

{
  return 1;
}

uint64_t Aggregate.root.getter@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  (*(a1 + 88))(v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getWitnessTable();
  result = swift_getWitnessTable();
  *a2 = 0;
  return result;
}

uint64_t specialized Aggregate.children(for:within:)(unsigned int a1)
{
  v2 = **(v1 + 8) + 88 * a1;
  v3 = *(v2 + 76);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = *(v2 + 64);
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v10;
    v6 = v5;
    while (v5)
    {
      v7 = *v6;
      v11 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      *(result + 16) = v9 + 1;
      *(result + 4 * v9 + 32) = v7;
      ++v6;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v2 = **v1 + 88 * a1;
  v3 = *(v2 + 76);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = *(v2 + 64);
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v10;
    v6 = v5;
    while (v5)
    {
      v7 = *v6;
      v11 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      *(result + 16) = v9 + 1;
      *(result + 4 * v9 + 32) = v7;
      ++v6;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Aggregate.children(for:within:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  (*(a4 + 88))(&v16, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v7 = *v16;
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  v8 = type metadata accessor for UnsafeTree.Node();
  v9 = (v7 + *(*(v8 - 8) + 72) * v6 + *(v8 + 52));
  v10 = v9[1];
  v15[5] = *v9;
  v15[6] = v10;
  v15[2] = a3;
  v15[3] = a4;
  v11 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Aggregate.children(for:within:), v15, v11, &type metadata for UnsafeTreeNodeRef, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);
}

uint64_t Aggregate.displayName(for:within:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v16[-v11];
  v13 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getWitnessTable();
  v17 = v13;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  v14 = (*(a4 + 168))(&v17, v12, a3, a4);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v14;
}

uint64_t Aggregate.displayWeight(for:within:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v16[-v11];
  v13 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getWitnessTable();
  v17 = v13;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  v14 = (*(a4 + 176))(&v17, v12, a3, a4);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v14;
}

uint64_t Aggregate.appendSelection(for:within:to:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v18[-v13];
  v15 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getWitnessTable();
  v19 = v15;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  (*(a5 + 192))(&v19, v14, a3, a4, a5);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t Aggregate.weight(for:within:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v16[-v11];
  v13 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getWitnessTable();
  v17 = v13;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  v14 = (*(a4 + 184))(&v17, v12, a3, a4);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v14;
}

uint64_t Aggregate.displayWeight(for:within:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v30 = a2;
  v6 = type metadata accessor for NumberFormatStyleConfiguration.Grouping();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v30 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v30 - v25;
  LODWORD(v37) = *a1;
  v36 = (*(a4 + 184))(&v37, v30, v31, a4) * 125.0 / 3.0 / 1000000.0;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x26D69C5D0](v13, v16);
  (*(v32 + 8))(v13, v33);
  v27 = *(v17 + 8);
  v28 = v27(v21, v16);
  MEMORY[0x26D69C5E0](v28);
  MEMORY[0x26D69C5C0](v9, v16);
  (*(v34 + 8))(v9, v35);
  v27(v24, v16);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  BinaryFloatingPoint.formatted<A>(_:)();
  v27(v26, v16);
  return v37;
}

uint64_t Aggregate.weight(for:within:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Aggregate.weight(for:within:)(a1, a3, a4);
}

{
  return specialized Aggregate.weight(for:within:)(a1, a3, a4);
}

uint64_t Aggregate.sort(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v7[5] = a2;
  v4 = (*(a4 + 104))(v8, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v5 = type metadata accessor for UnsafeTree();
  UnsafeTree.sort(_:)(partial apply for closure #1 in Aggregate.sort(_:), v7, v5);
  return v4(v8, 0);
}

uint64_t specialized Aggregate.sort(method:)(char a1)
{
  v2 = v1;
  lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect();
  if (!a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *(v2 + 8);
    if (*(v5 + 12))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26C328DC0;
      *(v7 + 32) = 0;

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a1 != 1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *(v2 + 8);
    if (*(v5 + 12))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26C328DC0;
      *(v8 + 32) = 0;

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  KeyPath = swift_getKeyPath();
  v5 = *(v2 + 8);
  if (*(v5 + 12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C328DC0;
    *(v6 + 32) = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);

    if (!v9)
    {
      goto LABEL_30;
    }
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v10 = *(v6 + 16);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10 - 1;
    v12 = *(v6 + 4 * v11 + 32);
    *(v6 + 16) = v11;
    v25 = v6;
    v13 = *v5 + 88 * v12;

    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v13 + 64, (v2 + 8), KeyPath);

    v5 = *(v2 + 8);
    specialized Array.append<A>(contentsOf:)(*(*v5 + 88 * v12 + 64), *(*v5 + 88 * v12 + 72));
    v6 = v25;
    if (!*(v25 + 16))
    {
      goto LABEL_30;
    }
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v10 = *(v6 + 16);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v14 = *(MEMORY[0x277D84F90] + 16);

  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_17:
  while (2)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = *(v7 + 16);
      if (!v15)
      {
        break;
      }

      goto LABEL_19;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v15 = *(v7 + 16);
    if (v15)
    {
LABEL_19:
      v16 = v15 - 1;
      v17 = *(v7 + 4 * v16 + 32);
      *(v7 + 16) = v16;
      v26 = v7;
      v18 = *v5 + 88 * v17;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v18 + 64, (v2 + 8), KeyPath);

      v5 = *(v2 + 8);
      specialized Array.append<A>(contentsOf:)(*(*v5 + 88 * v17 + 64), *(*v5 + 88 * v17 + 72));
      v7 = v26;
      if (!*(v26 + 16))
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v8 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);

  if (v19)
  {
    do
    {
LABEL_24:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v8 + 16);
        if (!v20)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v20 = *(v8 + 16);
        if (!v20)
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      v21 = v20 - 1;
      v22 = *(v8 + 4 * v21 + 32);
      *(v8 + 16) = v21;
      v27 = v8;
      v23 = *v5 + 88 * v22;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v23 + 64, (v2 + 8), KeyPath);

      v5 = *(v2 + 8);
      specialized Array.append<A>(contentsOf:)(*(*v5 + 88 * v22 + 64), *(*v5 + 88 * v22 + 72));
      v8 = v27;
    }

    while (*(v27 + 16));
  }

LABEL_30:
}

{
  v2 = v1;
  lazy protocol witness table accessor for type UpdateStack and conformance UpdateStack();
  if (!a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26C328DC0;
      *(v7 + 32) = 0;

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a1 != 1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26C328DC0;
      *(v8 + 32) = 0;

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  KeyPath = swift_getKeyPath();
  v5 = *v2;
  if (*(*v2 + 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C328DC0;
    *(v6 + 32) = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);

    if (!v9)
    {
      goto LABEL_30;
    }
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v10 = *(v6 + 16);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10 - 1;
    v12 = *(v6 + 4 * v11 + 32);
    *(v6 + 16) = v11;
    v28 = v6;
    v13 = *v5 + 88 * v12;

    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v13 + 64, v2, KeyPath);

    v5 = *v2;
    v14 = **v2 + 88 * v12;
    specialized Array.append<A>(contentsOf:)(*(v14 + 64), *(v14 + 72));
    v6 = v28;
    if (!*(v28 + 16))
    {
      goto LABEL_30;
    }
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v10 = *(v6 + 16);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);

  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_17:
  while (2)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v7 + 16);
      if (!v16)
      {
        break;
      }

      goto LABEL_19;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v16 = *(v7 + 16);
    if (v16)
    {
LABEL_19:
      v17 = v16 - 1;
      v18 = *(v7 + 4 * v17 + 32);
      *(v7 + 16) = v17;
      v29 = v7;
      v19 = *v5 + 88 * v18;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v19 + 64, v2, KeyPath);

      v5 = *v2;
      v20 = **v2 + 88 * v18;
      specialized Array.append<A>(contentsOf:)(*(v20 + 64), *(v20 + 72));
      v7 = v29;
      if (!*(v29 + 16))
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v8 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);

  if (v21)
  {
    do
    {
LABEL_24:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = *(v8 + 16);
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v22 = *(v8 + 16);
        if (!v22)
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      v23 = v22 - 1;
      v24 = *(v8 + 4 * v23 + 32);
      *(v8 + 16) = v23;
      v30 = v8;
      v25 = *v5 + 88 * v24;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v25 + 64, v2, KeyPath);

      v5 = *v2;
      v26 = **v2 + 88 * v24;
      specialized Array.append<A>(contentsOf:)(*(v26 + 64), *(v26 + 72));
      v8 = v30;
    }

    while (*(v30 + 16));
  }

LABEL_30:
}

{
  v2 = v1;
  lazy protocol witness table accessor for type ViewTree and conformance ViewTree();
  if (!a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26C328DC0;
      *(v7 + 32) = 0;

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a1 != 1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26C328DC0;
      *(v8 + 32) = 0;

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  KeyPath = swift_getKeyPath();
  v5 = *v2;
  if (*(*v2 + 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C328DC0;
    *(v6 + 32) = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);

    if (!v9)
    {
      goto LABEL_30;
    }
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v10 = *(v6 + 16);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10 - 1;
    v12 = *(v6 + 4 * v11 + 32);
    *(v6 + 16) = v11;
    v28 = v6;
    v13 = *v5 + 88 * v12;

    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17gijkzl3Vy_x2J7c36Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA04N9J0V_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_n(v13 + 64, v2, KeyPath);

    v5 = *v2;
    v14 = **v2 + 88 * v12;
    specialized Array.append<A>(contentsOf:)(*(v14 + 64), *(v14 + 72));
    v6 = v28;
    if (!*(v28 + 16))
    {
      goto LABEL_30;
    }
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v10 = *(v6 + 16);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);

  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_17:
  while (2)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v7 + 16);
      if (!v16)
      {
        break;
      }

      goto LABEL_19;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v16 = *(v7 + 16);
    if (v16)
    {
LABEL_19:
      v17 = v16 - 1;
      v18 = *(v7 + 4 * v17 + 32);
      *(v7 + 16) = v17;
      v29 = v7;
      v19 = *v5 + 88 * v18;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17gijkzl3Vy_x2J7c36Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA04N9J0V_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_n(v19 + 64, v2, KeyPath);

      v5 = *v2;
      v20 = **v2 + 88 * v18;
      specialized Array.append<A>(contentsOf:)(*(v20 + 64), *(v20 + 72));
      v7 = v29;
      if (!*(v29 + 16))
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v8 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);

  if (v21)
  {
    do
    {
LABEL_24:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = *(v8 + 16);
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v22 = *(v8 + 16);
        if (!v22)
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      v23 = v22 - 1;
      v24 = *(v8 + 4 * v23 + 32);
      *(v8 + 16) = v23;
      v30 = v8;
      v25 = *v5 + 88 * v24;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17gijkzl3Vy_x2J7c36Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA04N9J0V_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_n(v25 + 64, v2, KeyPath);

      v5 = *v2;
      v26 = **v2 + 88 * v24;
      specialized Array.append<A>(contentsOf:)(*(v26 + 64), *(v26 + 72));
      v8 = v30;
    }

    while (*(v30 + 16));
  }

LABEL_30:
}

uint64_t Aggregate.deallocate()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = (*(a2 + 104))(v7, a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v5 = type metadata accessor for UnsafeTree();
  a3(v5);
  return v4(v7, 0);
}

uint64_t closure #1 in Aggregate.children(for:within:)@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  result = swift_getWitnessTable();
  *a2 = v3;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Aggregate.describe(state:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1[3];
  v9 = a1[4];
  v11 = *(a1 + 20);
  (*(a3 + 112))(&v17, a2, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  swift_getWitnessTable();
  v12[0] = v5;
  v12[1] = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v11;
  return (*(a3 + 200))(&v17, v12, a2, a3);
}

uint64_t Aggregate.stats(for:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v11 = v7;
  a4[3] = AssociatedTypeWitness;
  a4[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  return Aggregate.stats(for:)(&v11, a2, a3, boxed_opaque_existential_1Tm);
}

uint64_t Aggregate.stats(for:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v9 = type metadata accessor for UnsafeTree.Node();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = *a1;
  (*(a3 + 88))(&v17, a2, a3);
  (*(v10 + 16))(v13, *v17 + *(v10 + 72) * v14, v9);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a4, &v13[*(v9 + 48)], AssociatedTypeWitness);
}

uint64_t closure #1 in Aggregate.sort(_:)(unsigned int *a1, unsigned int *a2, uint64_t **a3, uint64_t (*a4)(char *, char *))
{
  v27 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v7 = type metadata accessor for UnsafeTree.Node();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &AssociatedTypeWitness - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &AssociatedTypeWitness - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = **a3;
  v18 = v8[2];
  v19 = v8[9];
  v18(&AssociatedTypeWitness - v13, v17 + v19 * v15, v7);
  v20 = *(v7 + 48);
  v18(v12, v17 + v19 * v16, v7);
  v21 = *(v7 + 48);
  LOBYTE(v19) = v27(&v14[v20], &v12[v21]);
  v22 = *(*(AssociatedTypeWitness - 8) + 8);
  v23 = &v12[v21];
  v24 = AssociatedTypeWitness;
  v22(v23);
  (v22)(&v14[v20], v24);
  return v19 & 1;
}

uint64_t Aggregate.sort<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v5 = v4;
  v6 = (*(a3 + 104))(v11);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  v7 = *(v5 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  v8 = type metadata accessor for UnsafeTree();
  UnsafeTree.sort(_:)(partial apply for closure #1 in Aggregate.sort<A>(_:), v10, v8);
  return v6(v11, 0);
}

BOOL specialized closure #1 in Aggregate.sort<A>(_:)(unsigned int a1, unsigned int a2, void **a3)
{
  v4 = *a3;
  memmove(__dst, (**a3 + 88 * a1), 0x54uLL);
  swift_getAtKeyPath();
  memmove(v7, (*v4 + 88 * a2), 0x54uLL);
  swift_getAtKeyPath();
  return v6 < v8;
}

uint64_t closure #1 in Aggregate.sort<A>(_:)(unsigned int *a1, unsigned int *a2, void **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a4;
  v10 = (*a4 + *MEMORY[0x277D84DE8]);
  v41 = v10[1];
  v42 = *(v41 - 8);
  v11 = *(v42 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v39 = &v37 - v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement();
  v15 = *v10;
  swift_getWitnessTable();
  v16 = type metadata accessor for UnsafeTree.Node();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v24 = *a1;
  v38 = *a2;
  v25 = *a3;
  v26 = v17[2];
  v27 = v17[9];
  v26(&v37 - v22, **a3 + v27 * v24, v16);
  v28 = *(v16 + 48);
  swift_getAtKeyPath();
  v29 = *(*(v15 - 8) + 8);
  v29(&v23[v28]);
  v26(v21, *v25 + v27 * v38, v16);
  v30 = *(v16 + 48);
  v31 = v40;
  swift_getAtKeyPath();
  (v29)(&v21[v30], v15);
  v32 = *(*(v43 + 32) + 8);
  v33 = v39;
  v34 = v41;
  LOBYTE(v21) = dispatch thunk of static Comparable.> infix(_:_:)();
  v35 = *(v42 + 8);
  v35(v31, v34);
  v35(v33, v34);
  return v21 & 1;
}

uint64_t key path getter for Aggregate_StatsProtocol.selfWeight : <A>A.Stats@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 48);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t key path getter for Aggregate_StatsProtocol.weight : <A>A.Stats@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 40);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t key path getter for Aggregate_StatsProtocol.count : <A>A.Stats@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 32);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t specialized Aggregate<>.describe(ref:state:)(unsigned int a1, uint64_t a2)
{
  v5 = v2[1];
  v33 = *v2;
  v34[0] = v5;
  *(v34 + 9) = *(v2 + 25);
  v6 = 0xE000000000000000;
  v31 = 0;
  v32 = 0xE000000000000000;
  if (*(a2 + 16) == 3 && (v7 = **v2 + 88 * a1, v8 = *(v7 + 76), v8))
  {
    v9 = *(v7 + 64);
    if (!v9)
    {
      __break(1u);
      goto LABEL_18;
    }

    do
    {
      v12 = *v9++;
      v11 = v12;
      if ((v32 & 0xF00000000000000) != 0)
      {
        String.index(before:)();
        String.subscript.getter();
        v13 = Character.isWhitespace.getter();

        if ((v13 & 1) == 0)
        {
          MEMORY[0x26D69CDB0](10, 0xE100000000000000);
        }
      }

      v36[2] = v33;
      v37[0] = v34[0];
      *(v37 + 9) = *(v34 + 9);
      v10 = specialized Aggregate<>.describe(ref:state:)(v11, a2);
      MEMORY[0x26D69CDB0](v10);

      --v8;
    }

    while (v8);
    v14 = v31;
    v6 = v32;
  }

  else
  {
    v14 = 0;
  }

  if ((v6 & 0xF00000000000000) != 0)
  {
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    strcpy(v30, "(node name ");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    LODWORD(v28) = a1;
    if (*(a2 + 41) == 1)
    {
      v15 = *(a2 + 40);
      *&v35 = *(a2 + 32);
      BYTE8(v35) = v15;
      *&v35 = ViewTree.displayName(for:within:)(&v28, &v35);
      *(&v35 + 1) = v16;
      v28 = 34;
      v29 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v19 = v18;

      MEMORY[0x26D69CDB0](v17, v19);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v35 = v33;
      v36[0] = v34[0];
      *(v36 + 9) = *(v34 + 9);
      v20 = specialized Aggregate.displayWeight(for:within:)(a1);
      MEMORY[0x26D69CDB0](v20);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v14, v6);
LABEL_16:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v30[0];
    }
  }

  else
  {

    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    strcpy(v30, "(node name ");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    LODWORD(v28) = a1;
    if (*(a2 + 41) == 1)
    {
      v21 = *(a2 + 40);
      *&v35 = *(a2 + 32);
      BYTE8(v35) = v21;
      *&v35 = ViewTree.displayName(for:within:)(&v28, &v35);
      *(&v35 + 1) = v22;
      v28 = 34;
      v29 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v25 = v24;

      MEMORY[0x26D69CDB0](v23, v25);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v35 = v33;
      v36[0] = v34[0];
      *(v36 + 9) = *(v34 + 9);
      v26 = specialized Aggregate.displayWeight(for:within:)(a1);
      MEMORY[0x26D69CDB0](v26);
      goto LABEL_16;
    }
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = 0xE000000000000000;
  v24 = 0;
  v25 = 0xE000000000000000;
  if (*(a2 + 16) == 3 && (v6 = **v2 + 88 * a1, v7 = *(v6 + 76), v7))
  {
    v8 = *(v6 + 64);
    if (!v8)
    {
      __break(1u);
      goto LABEL_18;
    }

    do
    {
      v11 = *v8++;
      v10 = v11;
      if ((v25 & 0xF00000000000000) != 0)
      {
        String.index(before:)();
        String.subscript.getter();
        v12 = Character.isWhitespace.getter();

        if ((v12 & 1) == 0)
        {
          MEMORY[0x26D69CDB0](10, 0xE100000000000000);
        }
      }

      v9 = specialized Aggregate<>.describe(ref:state:)(v10, a2);
      MEMORY[0x26D69CDB0](v9);

      --v7;
    }

    while (v7);
    v13 = v24;
    v5 = v25;
  }

  else
  {
    v13 = 0;
  }

  if ((v5 & 0xF00000000000000) != 0)
  {
    _StringGuts.grow(_:)(29);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(a1, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v16 = v15;

      MEMORY[0x26D69CDB0](v14, v16);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v17 = specialized Aggregate.displayWeight(for:within:)(a1);
      MEMORY[0x26D69CDB0](v17);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v13, v5);
LABEL_16:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v23[0];
    }
  }

  else
  {

    _StringGuts.grow(_:)(26);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(a1, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v20 = v19;

      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v21 = specialized Aggregate.displayWeight(for:within:)(a1);
      MEMORY[0x26D69CDB0](v21);
      goto LABEL_16;
    }
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = 0xE000000000000000;
  v24 = 0;
  v25 = 0xE000000000000000;
  if (*(a2 + 16) == 3 && (v6 = **(v2 + 8) + 88 * a1, v7 = *(v6 + 76), v7))
  {
    v8 = *(v6 + 64);
    if (!v8)
    {
      __break(1u);
      goto LABEL_18;
    }

    do
    {
      v11 = *v8++;
      v10 = v11;
      if ((v25 & 0xF00000000000000) != 0)
      {
        String.index(before:)();
        String.subscript.getter();
        v12 = Character.isWhitespace.getter();

        if ((v12 & 1) == 0)
        {
          MEMORY[0x26D69CDB0](10, 0xE100000000000000);
        }
      }

      v9 = specialized Aggregate<>.describe(ref:state:)(v10, a2);
      MEMORY[0x26D69CDB0](v9);

      --v7;
    }

    while (v7);
    v13 = v24;
    v5 = v25;
  }

  else
  {
    v13 = 0;
  }

  if ((v5 & 0xF00000000000000) != 0)
  {
    _StringGuts.grow(_:)(29);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(a1, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v16 = v15;

      MEMORY[0x26D69CDB0](v14, v16);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v17 = specialized Aggregate.displayWeight(for:within:)(a1);
      MEMORY[0x26D69CDB0](v17);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v13, v5);
LABEL_16:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v23[0];
    }
  }

  else
  {

    _StringGuts.grow(_:)(26);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(a1, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v20 = v19;

      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v21 = specialized Aggregate.displayWeight(for:within:)(a1);
      MEMORY[0x26D69CDB0](v21);
      goto LABEL_16;
    }
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Aggregate<>.describe(ref:state:)(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *a1;
  v38 = *a2;
  v7 = *(a2 + 16);
  v37 = *(a2 + 3);
  v41 = *(a2 + 4);
  v42 = *(a2 + 40);
  v40 = *(a2 + 41);
  v8 = 0xE000000000000000;
  v55 = 0;
  v56 = 0xE000000000000000;
  v36 = v6;
  if (v7 == 3)
  {
    (*(a4 + 88))(&v57, a3, a4);
    v9 = *v57;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for AggregateTreeElement();
    swift_getAssociatedTypeWitness();
    swift_getWitnessTable();
    v10 = type metadata accessor for UnsafeTreeNodeRef.Typed();
    v11 = type metadata accessor for UnsafeTree.Node();
    v12 = v9 + *(*(v11 - 8) + 72) * v6 + *(v11 + 52);
    v13 = *v12;
    v14 = *(v12 + 12);
    v15 = UnsafeArray.endIndex.getter(*v12, *(v12 + 8) | (v14 << 32), v10);
    if (v15)
    {
      v16 = v15;
      v17 = v4;
      v18 = v13;
      while (v14)
      {
        if (!v13)
        {
          goto LABEL_25;
        }

        v20 = *v18;
        v21 = HIBYTE(v56) & 0xF;
        if ((v56 & 0x2000000000000000) == 0)
        {
          v21 = v55 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          String.index(before:)();
          String.subscript.getter();
          v22 = Character.isWhitespace.getter();

          if ((v22 & 1) == 0)
          {
            MEMORY[0x26D69CDB0](10, 0xE100000000000000);
          }
        }

        LODWORD(v53) = v20;
        v43 = v38;
        v44 = 3;
        v45 = v37;
        v46 = v41;
        v47 = v42;
        v48 = v40;
        v19 = (*(v17 + 200))(&v53, &v43, a3, v17);
        MEMORY[0x26D69CDB0](v19);

        --v14;
        ++v18;
        if (!--v16)
        {
          v23 = v55;
          v8 = v56;
          v4 = v17;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v23 = 0;
    v8 = 0xE000000000000000;
LABEL_15:
    LODWORD(v6) = v36;
  }

  else
  {
    v23 = 0;
  }

  v24 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v39 = v23;
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    strcpy(&v43, "(node name ");
    BYTE13(v43) = 0;
    HIWORD(v43) = -5120;
    LODWORD(v51) = v6;
    if (v40 == 1)
    {
      v53 = v41;
      LOBYTE(v54) = v42;
      v53 = (*(v4 + 168))(&v51, &v53, a3, v4);
      v54 = v25;
      v51 = 34;
      v52 = 0xE100000000000000;
      v49 = 0;
      v50 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v28 = v27;

      MEMORY[0x26D69CDB0](v26, v28);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      LODWORD(v51) = v36;
      v53 = v41;
      LOBYTE(v54) = v42;
      v29 = (*(v4 + 176))(&v51, &v53, a3, v4);
      MEMORY[0x26D69CDB0](v29);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v39, v8);
LABEL_23:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v43;
    }
  }

  else
  {

    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    strcpy(&v43, "(node name ");
    BYTE13(v43) = 0;
    HIWORD(v43) = -5120;
    LODWORD(v51) = v6;
    if (v40 == 1)
    {
      v53 = v41;
      LOBYTE(v54) = v42;
      v53 = (*(v4 + 168))(&v51, &v53, a3, v4);
      v54 = v30;
      v51 = 34;
      v52 = 0xE100000000000000;
      v49 = 0;
      v50 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v33 = v32;

      MEMORY[0x26D69CDB0](v31, v33);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      LODWORD(v51) = v6;
      v53 = v41;
      LOBYTE(v54) = v42;
      v34 = (*(v4 + 176))(&v51, &v53, a3, v4);
      MEMORY[0x26D69CDB0](v34);
      goto LABEL_23;
    }
  }

LABEL_26:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SnapshotAccessor.init(interpreter:index:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t specialized Aggregate<>.displayName(for:within:)(unsigned int a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v3 + 8) + 16) + (*(**(v3 + 8) + 88 * a1) << 6);
  v19 = *v18;
  if (!*v18)
  {
    return 1953460050;
  }

  v20 = *(v18 + 32);
  v21 = *(v18 + 24);
  v34 = *v18;
  v22 = *(v18 + 8);
  v35 = v22;
  v36 = v21;
  v37 = v20;
  if (*(a2 + 116) <= a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = *(a2 + 104);
  if (!v23)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v24 = *(v23 + 8 * a3);
  if ((*(v24 + 4) & 1) == 0)
  {
    v30 = v15;
    v31 = result;
    v32 = v22;
    os_unfair_lock_lock_with_options();
    *(v24 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v29 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_912;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v28;
    v26 = v29;
    MEMORY[0x26D69D2D0](0, v17, v11, v28);
    _Block_release(v27);

    (*(v8 + 8))(v11, v7);
    (*(v30 + 8))(v17, v31);
    *&v22 = v32;
  }

  return (*(v22 + 24))(&v34, *(v24 + 8), v19);
}

{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*v3 + 16) + (*(**v3 + 88 * a1) << 6);
  v19 = *v18;
  if (!*v18)
  {
    return 1953460050;
  }

  v20 = *(v18 + 32);
  v21 = *(v18 + 24);
  v34 = *v18;
  v22 = *(v18 + 8);
  v35 = v22;
  v36 = v21;
  v37 = v20;
  if (*(a2 + 116) <= a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = *(a2 + 104);
  if (!v23)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v24 = *(v23 + 8 * a3);
  if ((*(v24 + 4) & 1) == 0)
  {
    v30 = v15;
    v31 = result;
    v32 = v22;
    os_unfair_lock_lock_with_options();
    *(v24 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v29 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_889;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v28;
    v26 = v29;
    MEMORY[0x26D69D2D0](0, v17, v11, v28);
    _Block_release(v27);

    (*(v8 + 8))(v11, v7);
    (*(v30 + 8))(v17, v31);
    *&v22 = v32;
  }

  return (*(v22 + 24))(&v34, *(v24 + 8), v19);
}

uint64_t Aggregate<>.displayName(for:within:)(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *a2;
  v15 = *(a2 + 8);
  (*(a4 + 88))(&v44, a3, a4);
  v16 = v44[2];
  v17 = *v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMd, &_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMR);
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type AggregateTreeElement<Event.Id> and conformance AggregateTreeElement<A>, &_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMd, &_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMR);
  v18 = type metadata accessor for UnsafeTree.Node();
  v20 = *(v18 - 8);
  result = v18 - 8;
  v21 = (v16 + (*(v17 + *(v20 + 72) * v13) << 6));
  v22 = *v21;
  if (!*v21)
  {
    return 1953460050;
  }

  v23 = *(v21 + 8);
  v24 = v21[3];
  v45 = *v21;
  v25 = *(v21 + 1);
  v46 = v25;
  v47 = v24;
  v48 = v23;
  if (*(v14 + 116) <= v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v26 = *(v14 + 104);
  if (!v26)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v27 = *(v26 + 8 * v15);
  if ((*(v27 + 4) & 1) == 0)
  {
    v36 = v25;
    os_unfair_lock_lock_with_options();
    *(v27 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v35 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    aBlock[4] = partial apply for specialized closure #1 in Atomic.subscript.read;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v29 = _Block_copy(aBlock);

    v30 = v37;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v31 = v39;
    v32 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v35;
    MEMORY[0x26D69D2D0](0, v30, v31, v29);
    _Block_release(v29);

    (*(v41 + 8))(v31, v32);
    (*(v38 + 8))(v30, v40);
    *&v25 = v36;
  }

  return (*(v25 + 24))(&v45, *(v27 + 8), v22);
}

__n128 CauseEffect.init()@<Q0>(uint64_t a1@<X8>)
{
  v8 = 0uLL;
  v9 = 0;
  v10 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = v2;
  v12 = v3;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA09AggregateE7ElementOyAA5EventV2IdVG_AA9MergeOnceVyAA0kE5StatsVGTt0B5(&v8, v6);
  *&v5[4] = v6[0];
  *&v5[20] = v6[1];
  *&v5[36] = v7;
  *a1 = 0;
  *(a1 + 4) = *v5;
  *(a1 + 20) = *&v5[16];
  result = *&v5[28];
  *(a1 + 32) = *&v5[28];
  *(a1 + 48) = 0;
  return result;
}

double CauseEffect.tree.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 24) = v3;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

__n128 CauseEffect.tree.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

void CauseEffect.addTime(rootedAt:partial:within:)(unsigned int a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[10];
  v5 = a3[11];
  v6 = a3[8];
  v62 = a3[9];
  v63 = v4;
  v64 = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[4];
  v60[5] = a3[5];
  v60[6] = v7;
  v60[7] = v8;
  v61 = v6;
  v10 = a3[2];
  v11 = a3[3];
  v12 = *a3;
  v60[1] = a3[1];
  v60[2] = v10;
  v60[3] = v11;
  v60[4] = v9;
  v65 = *(a3 + 192);
  v60[0] = v12;
  if (v11)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v64;
  v14 = LOBYTE(v60[0]);
  if (LOBYTE(v60[0]) >= *(v64 + 116))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = *(v64 + 104);
  if (!v15)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *(*(v15 + 8 * LOBYTE(v60[0])) + 8);
  if (*(v16 + 44) <= a1)
  {
    goto LABEL_25;
  }

  v17 = *(v16 + 32);
  if (!v17)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = (v17 + (a1 << 7));
  v19 = *(v18 + 31) + 1;
  v20 = *(v18 + 14);
  while (--v19)
  {
    if (!*(v18 + 14))
    {
      goto LABEL_29;
    }

    v21 = *v20;
    v20 += 4;
    if ((v21 & 0x4200) == 0x200)
    {
      return;
    }
  }

  v23 = *(v3 + 8);
  v22 = v3 + 8;
  if (*(v23 + 12) <= 0x98967Fu)
  {
    v50 = v22;
    v24 = v18[1];
    v73 = *v18;
    v74 = v24;
    v25 = v18[5];
    v77 = v18[4];
    v78 = v25;
    v26 = v18[7];
    v79 = v18[6];
    v80 = v26;
    v27 = v18[3];
    v75 = v18[2];
    v76 = v27;
    LOBYTE(v58) = BYTE8(v74);
    v28 = HeterogeneousBuffer.type(at:)(0, *(&v73 + 1), v74, SBYTE8(v74), v75);
    v29 = swift_conformsToProtocol2();
    if (!v29)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v30 = v29;
    v31 = HeterogeneousBuffer.index(after:)(0, *(&v73 + 1), v74, SBYTE8(v74), v75);
    LOBYTE(v58) = BYTE8(v74);
    v32 = HeterogeneousBuffer.type(at:)(v31, *(&v73 + 1), v74, SBYTE8(v74), v75);
    v33 = swift_conformsToProtocol2();
    if (!v33)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    project #1 <A, B>(_:_:) in Event.id.getter(v32, &v73, v28, v30, v33, &v54);
    if (v14 < *(v13 + 116))
    {
      v34 = *(v13 + 104);
      if (!v34)
      {
LABEL_35:
        __break(1u);
        return;
      }

      v35 = v54;
      v36 = v56;
      v37 = *(v34 + 8 * v14);
      v38 = v57;
      v48 = v55;
      v39 = (*(v55 + 32))(&v54, *(v37 + 8), v54);
      EventTreeStats.init(from:within:)(a2, a3, &v58);
      if ((*(&v61 + 1) & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(*(&v61 + 1)))
        {
          v59 = DWORD2(v61);
          v67 = v48;
          v66 = v35;
          v68 = v36;
          v69 = v38;
          v40 = *(v50 + 16);
          v70 = *v50;
          v71 = v40;
          v72 = *(v50 + 32);
          v42 = specialized UnsafeTree.subjectsMap.read(v53);
          if (*(v41 + 16) && (v43 = v41, v44 = specialized __RawDictionaryStorage.find<A>(_:)(&v66), (v45 & 1) != 0))
          {
            v46 = *(*(v43 + 56) + 4 * v44);
            (v42)(v53, 0);
            v47 = v46;
          }

          else
          {
            (v42)(v53, 0);
            specialized UnsafeTree.new(element:identity:)(&v66, v39, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v53);
            v47 = LODWORD(v53[0]);
          }

          specialized UnsafeTree<>.add(_:to:at:)(&v58, v47, v50, v60, a1);
          return;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void *MergeOnce<>.init(from:within:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v4;
  v5 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v5;
  v6 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v6;
  v7 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v7;
  v8 = *(a2 + 160);
  v18 = *(a2 + 144);
  v19 = v8;
  v9 = *(a2 + 176);
  v21 = *(a2 + 192);
  v10 = *(a2 + 128);
  v11 = *(a2 + 136);
  v20 = v9;
  v16 = v10;
  v17 = v11;
  result = EventTreeStats.init(from:within:)(a1, v15, v22);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v11))
  {
    v13 = v22[1];
    v14 = v23;
    *a3 = v22[0];
    *(a3 + 16) = v13;
    *(a3 + 32) = v14;
    *(a3 + 40) = v11;
    return result;
  }

  __break(1u);
  return result;
}

void closure #1 in CauseEffect.addTime(rootedAt:partial:within:)(__int128 *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a2[48])
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    goto LABEL_64;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v7 = *(*(v5 + 8 * v4) + 8);
  if (*(v7 + 44) <= a3)
  {
    goto LABEL_65;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v10 = v8 + (a3 << 7);
  v11 = *(v10 + 112);
  v12 = *(v10 + 120);
  v13 = *(v10 + 124);
  v14 = v13 + 1;
  v15 = v11;
  while (--v14)
  {
    if (!v11)
    {
      goto LABEL_71;
    }

    v16 = *v15;
    v15 += 4;
    if ((v16 & 0x8004) == 4)
    {
      v17 = 16388;
      goto LABEL_12;
    }
  }

  v17 = 16448;
LABEL_12:
  if (Event.RelativesSequnece.isEmpty.getter(v11, v12 | (v13 << 32), v17))
  {
    if (v4 >= *(v3 + 116))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v18 = *(v3 + 104);
    if (!v18)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v19 = *(*(v18 + 8 * v4) + 8);
    if (*(v19 + 44) <= a3)
    {
      goto LABEL_67;
    }

    v20 = *(v19 + 32);
    if (!v20)
    {
LABEL_82:
      __break(1u);
      return;
    }

    v21 = v20 + (a3 << 7);
    v11 = *(v21 + 112);
    v13 = *(v21 + 124);
    v17 = 19459;
  }

  if (v13)
  {
    v22 = 0;
    v23 = v17 & 0x1FFF;
    v71 = v3;
    v72 = v11 + 4;
    v69 = v11;
    v70 = v4;
    v68 = v13;
    v67 = v23;
    while (v22 < v13)
    {
      if (!v11)
      {
        goto LABEL_70;
      }

      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_60;
      }

      v25 = 8 * v22;
      v26 = *(v11 + 8 * v22++);
      if (v26 < 0 || v23 && (v23 & v26) == 0)
      {
        if (v24 == v13)
        {
          return;
        }
      }

      else
      {
        if (*(v3 + 116) <= v4)
        {
          goto LABEL_61;
        }

        v27 = *(v3 + 104);
        if (!v27)
        {
          goto LABEL_72;
        }

        v28 = *(v72 + v25);
        v29 = *(*(v27 + 8 * v4) + 8);
        if (v28 >= *(v29 + 44))
        {
          goto LABEL_62;
        }

        v30 = *(v29 + 32);
        if (!v30)
        {
          goto LABEL_74;
        }

        v31 = (v30 + (v28 << 7));
        v32 = v31[1];
        v86 = *v31;
        v87 = v32;
        v33 = v31[5];
        v90 = v31[4];
        v91 = v33;
        v34 = v31[7];
        v92 = v31[6];
        v93 = v34;
        v35 = v31[3];
        v88 = v31[2];
        v89 = v35;
        v36 = *(&v86 + 1);
        v37 = v87;
        v38 = BYTE8(v87);
        v39 = v88;
        LOBYTE(v74[0]) = BYTE8(v87);
        v40 = HeterogeneousBuffer.type(at:)(0, *(&v86 + 1), v87, SBYTE8(v87), v88);
        v41 = swift_conformsToProtocol2();
        if (!v41)
        {
          goto LABEL_73;
        }

        v42 = v41;
        LOBYTE(v74[0]) = v38;
        v43 = HeterogeneousBuffer.index(after:)(0, v36, v37, v38, v39);
        LOBYTE(v74[0]) = v38;
        v44 = HeterogeneousBuffer.type(at:)(v43, v36, v37, v38, v39);
        v45 = swift_conformsToProtocol2();
        if (!v45)
        {
          goto LABEL_75;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v44, &v86, v40, v42, v45, &v75);
        v4 = v70;
        v3 = v71;
        if (*(v71 + 116) <= v70)
        {
          goto LABEL_63;
        }

        v46 = *(v71 + 104);
        if (!v46)
        {
          goto LABEL_76;
        }

        v47 = v75;
        v73 = v76;
        v48 = v77;
        v49 = v78;
        v50 = (*(v76 + 32))(&v75, *(*(v46 + 8 * v70) + 8), v75);
        v79 = v47;
        v80 = v73;
        v81 = v48;
        v82 = v49;
        v51 = a1[1];
        v83 = *a1;
        v84 = v51;
        v85 = *(a1 + 4);
        v53 = specialized UnsafeTree.subjectsMap.read(v74);
        if (*(v52 + 16) && (v54 = v52, v55 = specialized __RawDictionaryStorage.find<A>(_:)(&v79), (v56 & 1) != 0))
        {
          v57 = *(*(v54 + 56) + 4 * v55);
          (v53)(v74, 0);
        }

        else
        {
          (v53)(v74, 0);
          specialized UnsafeTree.new(element:identity:)(&v79, v50, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v74);
          v57 = LODWORD(v74[0]);
        }

        v58 = *(v83 + 16) + (v57 << 6);
        v59 = *(v58 + 48);
        v60 = *(v58 + 60);
        if (v60 + HIDWORD(v85) >= v85)
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * (v60 + v85));
        }

        if (v60)
        {
          if (!v59)
          {
            goto LABEL_77;
          }

          while (1)
          {
            v62 = *v59++;
            v61 = v62;
            v63 = *(a1 + 9);
            if (v63 == *(a1 + 8))
            {
              v64 = 2 * v63;
              if (!v63)
              {
                v64 = 1;
              }

              if (HIDWORD(v64))
              {
                goto LABEL_58;
              }

              v65 = *(a1 + 3);
              *(a1 + 8) = v64;
              if (v65)
              {
                v66 = realloc(v65, 4 * v64);
                if (!v66)
                {
                  goto LABEL_69;
                }

                *(a1 + 3) = v66;
              }

              else
              {
                v66 = swift_slowAlloc();
                *(a1 + 3) = v66;
                if (!v66)
                {
                  goto LABEL_68;
                }
              }
            }

            else
            {
              v66 = *(a1 + 3);
              if (!v66)
              {
                goto LABEL_68;
              }
            }

            *(v66 + 4 * v63) = v61;
            if (v63 == -1)
            {
              break;
            }

            *(a1 + 9) = v63 + 1;
            if (!--v60)
            {
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          break;
        }

LABEL_55:
        v13 = v68;
        v11 = v69;
        v23 = v67;
        if (v24 == v68)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }
}

double protocol witness for Aggregate.tree.getter in conformance CauseEffect@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 24) = v3;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

__n128 protocol witness for Aggregate.tree.setter in conformance CauseEffect(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t protocol witness for Aggregate.children(for:within:) in conformance CauseEffect(unsigned int *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return specialized Aggregate.children(for:within:)(*a1);
}

uint64_t protocol witness for Aggregate.displayName(for:within:) in conformance CauseEffect(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v9 = *v2;
  v10 = v4;
  v11 = v2[2];
  v12 = *(v2 + 48);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate<>.displayName(for:within:)(v3, v6, v7);
}

{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 48);
  return specialized Aggregate<>.displayName(for:within:)(*a1, *a2, *(a2 + 8));
}

uint64_t protocol witness for Aggregate.displayWeight(for:within:) in conformance CauseEffect(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v7 = *v2;
  v8 = v4;
  v9 = v2[2];
  v10 = *(v2 + 48);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate.displayWeight(for:within:)(v3);
}

uint64_t protocol witness for Aggregate.appendSelection(for:within:to:) in conformance CauseEffect(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Aggregate_AccessorProtocol(a2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  return swift_dynamicCast();
}

uint64_t protocol witness for Aggregate.weight(for:within:) in conformance CauseEffect(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + 8);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return *(*v4 + 88 * v3 + 24);
}

uint64_t protocol witness for Aggregate.displayWeight(for:within:) in conformance CauseEffect(unsigned int *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return specialized Aggregate.displayWeight(for:within:)(*a1);
}

uint64_t protocol witness for Aggregate.describe(ref:state:) in conformance CauseEffect(unsigned int *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v7 = *a2;
  v8[0] = v4;
  *(v8 + 10) = *(a2 + 26);
  v5 = *(v2 + 16);
  v8[2] = *v2;
  v8[3] = v5;
  v8[4] = *(v2 + 32);
  v9 = *(v2 + 48);
  return specialized Aggregate<>.describe(ref:state:)(v3, &v7);
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance CauseEffect(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = v1[2];
  v10 = *(v1 + 48);
  return specialized Aggregate<>.describe(ref:state:)(v7, &v5);
}

uint64_t protocol witness for Clonable.copy() in conformance CauseEffect()
{
  v1 = *(v0 + 8);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    v4 = *(v1 + 12);
    v5 = swift_slowAlloc();
    *v1 = v5;
    memcpy(v5, v2, 88 * v4);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = *(v1 + 24);
    v8 = *(v1 + 28);
    v9 = swift_slowAlloc();
    *(v1 + 16) = v9;
    memcpy(v9, v6, v8 << 6);
  }

  v10 = **(v1 + 32);

  *(v1 + 32) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v11);
  v12 = *(v0 + 16);
  if (v12)
  {
    v13 = *(v0 + 24);
    v14 = *(v0 + 28);
    v15 = swift_slowAlloc();
    *(v0 + 16) = v15;
    memcpy(v15, v12, 4 * v14);
  }

  v16 = *(v0 + 32);
  if (v16)
  {
    v17 = *(v0 + 40);
    v18 = *(v0 + 44);
    v19 = swift_slowAlloc();
    *(v0 + 32) = v19;
    memcpy(v19, v16, 4 * v18);
  }

  v20 = **(v1 + 40);

  result = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v21);
  *(v1 + 40) = result;
  return result;
}

__n128 UpdateStack.tree.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

void UpdateStack.addTime(rootedAt:partial:within:)(unsigned int a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[10];
  v5 = a3[11];
  v6 = a3[8];
  v68 = a3[9];
  v69 = v4;
  v70 = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[4];
  v66[5] = a3[5];
  v66[6] = v7;
  v66[7] = v8;
  v67 = v6;
  v10 = a3[2];
  v11 = a3[3];
  v12 = *a3;
  v66[1] = a3[1];
  v66[2] = v10;
  v66[3] = v11;
  v66[4] = v9;
  v71 = *(a3 + 192);
  v66[0] = v12;
  if (v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v13 = v70;
  if (LOBYTE(v66[0]) >= *(v70 + 116))
  {
    goto LABEL_40;
  }

  v14 = *(v70 + 104);
  if (!v14)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v15 = *(*(v14 + 8 * LOBYTE(v66[0])) + 8);
  if (*(v15 + 44) <= a1)
  {
    goto LABEL_41;
  }

  v16 = *(v15 + 32);
  if (!v16)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = v3;
  v19 = (v16 + (a1 << 7));
  v20 = *(v19 + 31) + 1;
  v21 = *(v19 + 14);
  while (--v20)
  {
    if (!*(v19 + 14))
    {
      goto LABEL_47;
    }

    v22 = *v21;
    v21 += 4;
    if ((v22 & 0x4200) == 0x200)
    {
      return;
    }
  }

  v56 = LOBYTE(v66[0]);
  v23 = v19[1];
  v79 = *v19;
  v80 = v23;
  v24 = v19[5];
  v83 = v19[4];
  v84 = v24;
  v25 = v19[7];
  v85 = v19[6];
  v86 = v25;
  v26 = v19[3];
  v81 = v19[2];
  v82 = v26;
  LOBYTE(v64) = BYTE8(v80);
  v27 = HeterogeneousBuffer.type(at:)(0, *(&v79 + 1), v80, SBYTE8(v80), v81);
  v55 = swift_conformsToProtocol2();
  if (!v55)
  {
    goto LABEL_52;
  }

  v28 = HeterogeneousBuffer.index(after:)(0, *(&v79 + 1), v80, SBYTE8(v80), v81);
  LOBYTE(v64) = BYTE8(v80);
  v29 = HeterogeneousBuffer.type(at:)(v28, *(&v79 + 1), v80, SBYTE8(v80), v81);
  v30 = swift_conformsToProtocol2();
  if (!v30)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v29, &v79, v27, v55, v30, &v60);
  if (v56 >= *(v13 + 116))
  {
    goto LABEL_42;
  }

  v31 = *(v13 + 104);
  if (!v31)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v32 = v60;
  v33 = v62;
  v34 = v63;
  v35 = *(*(v31 + 8 * v56) + 8);
  v57 = v61;
  v36 = (*(v61 + 32))(&v60, v35, v60);
  EventTreeStats.init(from:within:)(a2, a3, &v64);
  if ((*(&v67 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (HIDWORD(*(&v67 + 1)))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v65 = DWORD2(v67);
  v72 = v32;
  v73 = v57;
  v74 = v33;
  v75 = v34;
  v37 = *(v17 + 16);
  v76 = *v17;
  v77 = v37;
  v78 = *(v17 + 32);
  v39 = specialized UnsafeTree.subjectsMap.read(v59);
  if (*(v38 + 16) && (v40 = v38, v41 = specialized __RawDictionaryStorage.find<A>(_:)(&v72), (v42 & 1) != 0))
  {
    v43 = *(*(v40 + 56) + 4 * v41);
    (v39)(v59, 0);
  }

  else
  {
    (v39)(v59, 0);
    specialized UnsafeTree.new(element:identity:)(&v72, v36, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v59);
    v43 = LODWORD(v59[0]);
  }

  v44 = v76;
  if (!*(v76 + 12))
  {
    goto LABEL_45;
  }

  v45 = *(v17 + 40);
  v58 = v43;
  closure #1 in UpdateStack.addTime(rootedAt:partial:within:)(&v58, v17, v66, a1);
  if (!*(v44 + 12))
  {
    goto LABEL_46;
  }

  if (v45)
  {
    specialized UnsafeTree.add(child:to:default:)(v43, 0, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v58);
    v46 = v58;
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v17 + 20);
  v48 = v46;
  if (v47)
  {
    v49 = 0;
    v50 = *(v17 + 8);
    v51 = v47 - 1;
    v48 = v46;
    while (1)
    {
      v52 = v45 ? v49 : v51;
      if (v52 >= v47)
      {
        break;
      }

      if (!v50)
      {
        goto LABEL_48;
      }

      specialized UnsafeTree.add(child:to:default:)(*(v50 + 4 * v52), v48, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v58);
      v48 = v58;
      --v51;
      ++v49;
      if (v51 == -1)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_34:
  if ((v45 & 1) == 0)
  {
    specialized UnsafeTree.add(child:to:default:)(v43, v48, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v58);
    v46 = v58;
  }

  if (!v47 || *(v17 + 8))
  {
    *(v17 + 20) = 0;
    specialized UnsafeTree<>.merge(_:into:)(&v64, v46);
    return;
  }

LABEL_55:
  __break(1u);
}

void closure #1 in UpdateStack.addTime(rootedAt:partial:within:)(uint64_t a1, __int128 *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a3[48])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v4 = *(a3 + 22);
  v5 = *a3;
  if (v5 >= *(v4 + 116))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v7 = *(*(v6 + 8 * v5) + 8);
  v8 = *(v7 + 44);
  if (v8 <= a4)
  {
    goto LABEL_35;
  }

  v9 = *(v7 + 32);
  if (!v9)
  {
    goto LABEL_44;
  }

  v10 = v9 + (a4 << 7);
  v11 = *(v10 + 112);
  v12 = *(v10 + 124) + 1;
  v13 = v11;
  while (--v12)
  {
    if (!v11)
    {
      goto LABEL_40;
    }

    v14 = v13 + 4;
    v15 = *v13 & 0x8200;
    v13 += 4;
    if (v15 == 512)
    {
      v16 = *(v14 - 1);
      if (v16 >= v8)
      {
LABEL_32:
        __break(1u);
        return;
      }

LABEL_11:
      v17 = v5;
      v57 = v16;
      v18 = (v9 + (v16 << 7));
      v19 = v18[1];
      v71 = *v18;
      v72 = v19;
      v20 = v18[5];
      v75 = v18[4];
      v76 = v20;
      v21 = v18[7];
      v77 = v18[6];
      v78 = v21;
      v22 = v18[3];
      v73 = v18[2];
      v74 = v22;
      v23 = *(&v71 + 1);
      v24 = v72;
      v25 = BYTE8(v72);
      v26 = v73;
      LOBYTE(v59[0]) = BYTE8(v72);
      v27 = HeterogeneousBuffer.type(at:)(0, *(&v71 + 1), v72, SBYTE8(v72), v73);
      v28 = swift_conformsToProtocol2();
      if (!v28)
      {
        goto LABEL_46;
      }

      v29 = v28;
      LOBYTE(v59[0]) = v25;
      v30 = HeterogeneousBuffer.index(after:)(0, v23, v24, v25, v26);
      LOBYTE(v59[0]) = v25;
      v31 = HeterogeneousBuffer.type(at:)(v30, v23, v24, v25, v26);
      v32 = swift_conformsToProtocol2();
      if (!v32)
      {
        goto LABEL_45;
      }

      project #1 <A, B>(_:_:) in Event.id.getter(v31, &v71, v27, v29, v32, &v60);
      v5 = v17;
      if (*(v4 + 116) <= v17)
      {
        goto LABEL_36;
      }

      v33 = *(v4 + 104);
      if (!v33)
      {
        goto LABEL_48;
      }

      v34 = v60;
      v58 = v61;
      v35 = v62;
      v36 = v63;
      v37 = (*(v61 + 32))(&v60, *(*(v33 + 8 * v17) + 8), v60);
      v64 = v34;
      v65 = v58;
      v66 = v35;
      v67 = v36;
      v38 = a2[1];
      v68 = *a2;
      v69 = v38;
      v70 = *(a2 + 4);
      v40 = specialized UnsafeTree.subjectsMap.read(v59);
      if (*(v39 + 16) && (v41 = v39, v42 = specialized __RawDictionaryStorage.find<A>(_:)(&v64), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 4 * v42);
        (v40)(v59, 0);
      }

      else
      {
        (v40)(v59, 0);
        specialized UnsafeTree.new(element:identity:)(&v64, v37, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v59);
        v44 = v59[0];
      }

      if (DWORD1(v69) == v69)
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v69);
      }

      v45 = *(a2 + 1);
      if (!v45)
      {
        goto LABEL_47;
      }

      v46 = *(a2 + 5);
      *(v45 + 4 * v46) = v44;
      if (v46 == -1)
      {
        goto LABEL_37;
      }

      *(a2 + 5) = v46 + 1;
      if (*(v4 + 116) > v17)
      {
        v47 = *(v4 + 104);
        if (!v47)
        {
          goto LABEL_49;
        }

        v48 = *(*(v47 + 8 * v17) + 8);
        v49 = *(v48 + 44);
        if (v57 >= v49)
        {
          goto LABEL_39;
        }

        v9 = *(v48 + 32);
        if (!v9)
        {
          goto LABEL_50;
        }

        v50 = v9 + (v57 << 7);
        v51 = *(v50 + 112);
        v52 = *(v50 + 124) + 1;
        v53 = v51;
        while (--v52)
        {
          if (!v51)
          {
            goto LABEL_41;
          }

          v54 = v53 + 4;
          v55 = *v53 & 0x8200;
          v53 += 4;
          if (v55 == 512)
          {
            v16 = *(v54 - 1);
            if (v16 < v49)
            {
              goto LABEL_11;
            }

            goto LABEL_32;
          }
        }

        return;
      }

      goto LABEL_38;
    }
  }
}

__n128 _s21SwiftUITracingSupport8ViewTreeVAA9AggregateA2aDP4treeAA06UnsafeE0VyAA0fE7ElementOy0I0QzG5StatsQzGvsTW_0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t _s21SwiftUITracingSupport8ViewTreeVAA9AggregateA2aDP8children3for6withinSayAA06UnsafeE7NodeRefVGAJ_AA0F17_AccessorProtocol_ptFTW_0(unsigned int *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return specialized Aggregate.children(for:within:)(*a1);
}

uint64_t protocol witness for Aggregate.displayName(for:within:) in conformance UpdateStack(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v9 = *v2;
  v10[0] = v4;
  *(v10 + 9) = *(v2 + 25);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate<>.displayName(for:within:)(v3, v6, v7);
}

{
  v4 = *v2;
  *v5 = v2[1];
  *&v5[9] = *(v2 + 25);
  return specialized Aggregate<>.displayName(for:within:)(*a1, *a2, *(a2 + 8));
}

uint64_t _s21SwiftUITracingSupport8ViewTreeVAA9AggregateA2aDP13displayWeight3for6withinSSAA06UnsafeE7NodeRefV5TypedVy_AA0fE7ElementOy0O0QzG5StatsQzG_8AccessorQztFTW_0(unsigned int *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return specialized Aggregate.displayWeight(for:within:)(*a1);
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance UpdateStack(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = v1[1];
  v6[2] = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  return specialized Aggregate<>.describe(ref:state:)(0, &v5);
}

unint64_t ViewTree.displayName(for:within:)(unsigned int *a1, uint64_t *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v2 + 16) + (*(**v2 + 88 * *a1) << 6);
  v18 = *(v16 + 8);
  v17 = *(v16 + 16);
  v19 = *(v16 + 24);
  if ((~(v18 & v17 & v19) & 0xF000000000000007) == 0)
  {
    return 1953460050;
  }

  v21 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v21 == 3)
    {
      return 0x65726564726F6E55;
    }

    goto LABEL_36;
  }

  v22 = *a2;
  v23 = *(a2 + 8);
  v24 = *v16;
  v50 = v6;
  if (!v21)
  {
    v25 = *(v16 + 32);
    v51 = v24;
    v52 = v18;
    v53 = v17;
    v54 = v19;
    LODWORD(v55) = v25;
    if (*(v22 + 116) > v23)
    {
      v26 = *(v22 + 104);
      if (v26)
      {
        v27 = *(v26 + 8 * v23);
        if ((*(v27 + 4) & 1) == 0)
        {
          v48 = v13;
          v49 = v12;
          os_unfair_lock_lock_with_options();
          *(v27 + 4) = 1;
          type metadata accessor for OS_dispatch_queue();
          v47 = static OS_dispatch_queue.main.getter();
          v28 = swift_allocObject();
          *(v28 + 16) = v27;
          *&v59 = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v59 + 1) = v28;
          *&v57 = MEMORY[0x277D85DD0];
          *(&v57 + 1) = 1107296256;
          *&v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v58 + 1) = &block_descriptor_67;
          v46 = _Block_copy(&v57);

          static DispatchQoS.unspecified.getter();
          *&v57 = MEMORY[0x277D84F90];
          v45 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v30 = v46;
          v29 = v47;
          MEMORY[0x26D69D2D0](0, v15, v9, v46);
          _Block_release(v30);

          (*(v50 + 8))(v9, v5);
          (*(v48 + 8))(v15, v49);
        }

        return (*(v18 + 24))(&v51, *(v27 + 8), v24, v18);
      }

      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (*(v22 + 116) <= v23)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = *(v22 + 104);
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = v13;
  v49 = v12;
  v32 = *(v31 + 8 * v23);
  if ((*(v32 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v32 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v47 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *&v59 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v59 + 1) = v33;
    *&v57 = MEMORY[0x277D85DD0];
    *(&v57 + 1) = 1107296256;
    *&v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v58 + 1) = &block_descriptor_74;
    v46 = _Block_copy(&v57);

    static DispatchQoS.unspecified.getter();
    *&v57 = MEMORY[0x277D84F90];
    v45 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v46;
    v34 = v47;
    MEMORY[0x26D69D2D0](0, v15, v9, v46);
    _Block_release(v35);

    (*(v50 + 8))(v9, v5);
    (*(v48 + 8))(v15, v49);
  }

  v36 = *(v32 + 8);
  if (HIDWORD(v24) >= *(v36 + 124))
  {
    goto LABEL_28;
  }

  v37 = *(v36 + 112);
  if (!v37)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v38 = *(v37 + 168 * HIDWORD(v24));
  if (v24 >= *(v38 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v39 = (v38 + 208 * v24);
  v66 = v39[11];
  v67 = v39[12];
  v68 = v39[13];
  v69 = v39[14];
  v62 = v39[7];
  v63 = v39[8];
  v64 = v39[9];
  v65 = v39[10];
  v58 = v39[3];
  v59 = v39[4];
  v60 = v39[5];
  v61 = v39[6];
  v57 = v39[2];
  if (*(v22 + 116) <= v23)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = *(v22 + 104);
  if (!v40)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v41 = *(v40 + 8 * v23);
  if ((*(v41 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v41 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v47 = static OS_dispatch_queue.main.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v55 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v56 = v42;
    v51 = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v54 = &block_descriptor_81;
    v43 = _Block_copy(&v51);

    static DispatchQoS.unspecified.getter();
    v51 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v44 = v47;
    MEMORY[0x26D69D2D0](0, v15, v9, v43);
    _Block_release(v43);

    (*(v50 + 8))(v9, v5);
    (*(v48 + 8))(v15, v49);
  }

  return specialized Tree.displayName(within:_:)(*(v41 + 8));
}

double UpdateStack.tree.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 24) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

double UpdateStack.init()@<D0>(void (*a1)(_OWORD *__return_ptr, void *)@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  memset(v18, 0, 24);
  v18[3] = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v19 = v5;
  v20 = v6;
  a1(v12, v18);
  v7 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(v4);
  memset(v14, 0, 24);
  v14[3] = v7;
  v15 = v8;
  v16 = v9;
  v17 = 0;
  a1(v12, v14);
  result = *v12;
  v11 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = 0;
  return result;
}

void ViewTree.TElement.hash(into:)()
{
  v1 = *v0;
  v2 = v0[3] >> 62;
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = *(v0 + 8);
      v4 = v0[2];
      MEMORY[0x26D69DBC0](0);
      Hasher.init()();
      MEMORY[0x26D69DBC0](v1);
      MEMORY[0x26D69DBC0](v4);
      v5 = Hasher.finalize()();
      MEMORY[0x26D69DBC0](v5);
      Hasher._combine(_:)(v3);
      return;
    }

    v6 = 1;
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v6 = 3;
LABEL_7:
    MEMORY[0x26D69DBC0](v6);
    MEMORY[0x26D69DC00](v1);
    return;
  }

  MEMORY[0x26D69DBC0](2);
}

Swift::Int ViewTree.TElement.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  Hasher.init(_seed:)();
  ViewTree.TElement.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ViewTree.TElement()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  Hasher.init(_seed:)();
  ViewTree.TElement.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ViewTree.TElement()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  Hasher.init(_seed:)();
  ViewTree.TElement.hash(into:)();
  return Hasher._finalize()();
}

void ViewTree.addTime(rootedAt:partial:within:)(unsigned int a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[10];
  v5 = a3[11];
  v6 = a3[8];
  v72 = a3[9];
  v73 = v4;
  v74 = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[4];
  v70[5] = a3[5];
  v70[6] = v7;
  v70[7] = v8;
  v71 = v6;
  v10 = a3[2];
  v11 = a3[3];
  v12 = *a3;
  v70[1] = a3[1];
  v70[2] = v10;
  v70[3] = v11;
  v70[4] = v9;
  v75 = *(a3 + 192);
  v70[0] = v12;
  if (v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v13 = v74;
  if (LOBYTE(v70[0]) >= *(v74 + 116))
  {
    goto LABEL_40;
  }

  v14 = *(v74 + 104);
  if (!v14)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v15 = *(*(v14 + 8 * LOBYTE(v70[0])) + 8);
  if (*(v15 + 44) <= a1)
  {
    goto LABEL_41;
  }

  v16 = *(v15 + 32);
  if (!v16)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = v3;
  v19 = (v16 + (a1 << 7));
  v20 = *(v19 + 31) + 1;
  v21 = *(v19 + 14);
  while (--v20)
  {
    if (!*(v19 + 14))
    {
      goto LABEL_47;
    }

    v22 = *v21;
    v21 += 4;
    if ((v22 & 0x4200) == 0x200)
    {
      return;
    }
  }

  v60 = LOBYTE(v70[0]);
  v23 = v19[1];
  v83 = *v19;
  v84 = v23;
  v24 = v19[5];
  v87 = v19[4];
  v88 = v24;
  v25 = v19[7];
  v89 = v19[6];
  v90 = v25;
  v26 = v19[3];
  v85 = v19[2];
  v86 = v26;
  LOBYTE(v68) = BYTE8(v84);
  v27 = HeterogeneousBuffer.type(at:)(0, *(&v83 + 1), v84, SBYTE8(v84), v85);
  v59 = swift_conformsToProtocol2();
  if (!v59)
  {
    goto LABEL_52;
  }

  v28 = HeterogeneousBuffer.index(after:)(0, *(&v83 + 1), v84, SBYTE8(v84), v85);
  LOBYTE(v68) = BYTE8(v84);
  v29 = HeterogeneousBuffer.type(at:)(v28, *(&v83 + 1), v84, SBYTE8(v84), v85);
  v30 = swift_conformsToProtocol2();
  if (!v30)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v29, &v83, v27, v59, v30, &v64);
  if (v60 >= *(v13 + 116))
  {
    goto LABEL_42;
  }

  v31 = *(v13 + 104);
  if (!v31)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v32 = v64;
  v33 = v66;
  v34 = v67;
  v35 = *(*(v31 + 8 * v60) + 8);
  v61 = v65;
  v36 = (*(v65 + 32))(&v64, v35, v64);
  EventTreeStats.init(from:within:)(a2, a3, &v68);
  if ((*(&v71 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (HIDWORD(*(&v71 + 1)))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v69 = DWORD2(v71);
  v76 = v32;
  v77 = v61;
  v78 = v33;
  v79 = v34;
  v37 = *(v17 + 16);
  v80 = *v17;
  v81 = v37;
  v82 = *(v17 + 32);
  v39 = specialized UnsafeTree.subjectsMap.read(v63);
  if (*(v38 + 16) && (v40 = v38, v41 = specialized __RawDictionaryStorage.find<A>(_:)(&v76), (v42 & 1) != 0))
  {
    v43 = *(*(v40 + 56) + 4 * v41);
    (v39)(v63, 0);
  }

  else
  {
    (v39)(v63, 0);
    specialized UnsafeTree.new(element:identity:)(&v76, v36, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v63);
    v43 = LODWORD(v63[0]);
  }

  v48 = v80;
  if (!*(v80 + 12))
  {
    goto LABEL_45;
  }

  v49 = *(v17 + 40);
  v62 = v43;
  closure #1 in ViewTree.addTime(rootedAt:partial:within:)(&v62, v17, v70, a1, v44, v45, v46, v47);
  if (!*(v48 + 12))
  {
    goto LABEL_46;
  }

  if (v49)
  {
    specialized UnsafeTree.add(child:to:default:)(v43, 0, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v62);
    v50 = v62;
  }

  else
  {
    v50 = 0;
  }

  v51 = *(v17 + 20);
  v52 = v50;
  if (v51)
  {
    v53 = 0;
    v54 = *(v17 + 8);
    v55 = v51 - 1;
    v52 = v50;
    while (1)
    {
      v56 = v49 ? v53 : v55;
      if (v56 >= v51)
      {
        break;
      }

      if (!v54)
      {
        goto LABEL_48;
      }

      specialized UnsafeTree.add(child:to:default:)(*(v54 + 4 * v56), v52, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v62);
      v52 = v62;
      --v55;
      ++v53;
      if (v55 == -1)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_34:
  if ((v49 & 1) == 0)
  {
    specialized UnsafeTree.add(child:to:default:)(v43, v52, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v62);
    v50 = v62;
  }

  if (!v51 || *(v17 + 8))
  {
    *(v17 + 20) = 0;
    specialized UnsafeTree<>.merge(_:into:)(&v68, v50);
    return;
  }

LABEL_55:
  __break(1u);
}

void closure #1 in ViewTree.addTime(rootedAt:partial:within:)(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3[48])
  {
    goto LABEL_13;
  }

  v10 = *(a3 + 22);
  v11 = *a3;
  if (v11 >= *(v10 + 116))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(*(v12 + 8 * v11) + 8);
  if (*(v13 + 44) <= a4)
  {
    goto LABEL_12;
  }

  v14 = *(v13 + 32);
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = a2;
  v15 = (v14 + (a4 << 7));
  v16 = v15[5];
  v75 = v15[4];
  v76 = v16;
  v17 = v15[7];
  v77 = v15[6];
  v78 = v17;
  v18 = v15[1];
  v71 = *v15;
  v72 = v18;
  v19 = v15[3];
  v73 = v15[2];
  v74 = v19;
  v9 = Event.hasTree(within:)(v13);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  v66[0] = xmmword_26C328DD0;
  v66[1] = vdupq_n_s64(0xF000000000000007);
  v67 = 0;
  v21 = v8[1];
  v68 = *v8;
  v69 = v21;
  v70 = *(v8 + 4);
  v23 = specialized UnsafeTree.subjectsMap.read(v57);
  if (*(v22 + 16) && (v24 = v22, v25 = specialized __RawDictionaryStorage.find<A>(_:)(v66), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 4 * v25);
    (v23)(v57, 0);
    v28 = 1;
  }

  else
  {
    (v23)(v57, 0);
    specialized UnsafeTree.new(element:identity:)(v66, 1, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v57);
    v27 = v57[0];
    v28 = 1;
  }

  while (1)
  {
    v47 = *(v8 + 5);
    if (v47 == *(v8 + 4))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v47);
    }

    v48 = *(v8 + 1);
    if (!v48)
    {
      break;
    }

    v49 = *(v8 + 5);
    *(v48 + 4 * v49) = v27;
    if (v49 == -1)
    {
      goto LABEL_51;
    }

    *(v8 + 5) = v49 + 1;
    if (v28)
    {
      return;
    }

    if (v11 >= *(v10 + 116))
    {
      goto LABEL_55;
    }

    v50 = *(v10 + 104);
    if (!v50)
    {
      goto LABEL_65;
    }

    v51 = *(*(v50 + 8 * v11) + 8);
    if (HIDWORD(v9) >= *(v51 + 124))
    {
      goto LABEL_56;
    }

    v52 = *(v51 + 112);
    if (!v52)
    {
      goto LABEL_66;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    v53 = *(v52 + 168 * HIDWORD(v9));
    if (v9 >= *(v53 + 16))
    {
      goto LABEL_58;
    }

    v54 = (v53 + 208 * v9);
    v57[9] = v54[11];
    v57[10] = v54[12];
    v57[11] = v54[13];
    v57[12] = v54[14];
    v57[5] = v54[7];
    v57[6] = v54[8];
    v57[7] = v54[9];
    v57[8] = v54[10];
    v57[1] = v54[3];
    v57[2] = v54[4];
    v57[3] = v54[5];
    v57[4] = v54[6];
    v57[0] = v54[2];
    v58 = v51;
    v55 = specialized Tree.parent(_:within:unabstracting:)(16, &v58, a3, a4, a5, a6, a7, a8);
    if (v56)
    {
      return;
    }

    v9 = v55;
LABEL_16:
    if (v11 >= *(v10 + 116))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      break;
    }

    v29 = *(v10 + 104);
    if (!v29)
    {
      goto LABEL_63;
    }

    v30 = *(*(v29 + 8 * v11) + 8);
    if (HIDWORD(v9) >= *(v30 + 124))
    {
      goto LABEL_52;
    }

    v31 = *(v30 + 112);
    if (!v31)
    {
      goto LABEL_64;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v32 = *(v31 + 168 * HIDWORD(v9));
    if (v9 >= *(v32 + 16))
    {
      goto LABEL_54;
    }

    v33 = v32 + 32;
    v34 = *(v33 + 208 * v9 + 200);
    if (!v34 || (v27 = *v34, *(v34 + 4) == 1))
    {
      v35 = *(v33 + 208 * v9 + 24);
      v59 = v9;
      v60 = 0;
      v61 = 0x4000000000000000;
      v62 = 0;
      v36 = v8[1];
      v63 = *v8;
      v64 = v36;
      v65 = *(v8 + 4);
      v38 = specialized UnsafeTree.subjectsMap.read(v57);
      if (*(v37 + 16) && (v39 = v37, v40 = specialized __RawDictionaryStorage.find<A>(_:)(&v59), (v41 & 1) != 0))
      {
        v27 = *(*(v39 + 56) + 4 * v40);
        (v38)(v57, 0);
      }

      else
      {
        (v38)(v57, 0);
        specialized UnsafeTree.new(element:identity:)(&v59, v35, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v57);
        v27 = v57[0];
      }

      if (v11 >= *(v10 + 116))
      {
        goto LABEL_59;
      }

      v42 = *(v10 + 104);
      if (!v42)
      {
        goto LABEL_67;
      }

      v43 = *(*(v42 + 8 * v11) + 8);
      if (HIDWORD(v9) >= *(v43 + 124))
      {
        goto LABEL_60;
      }

      v44 = *(v43 + 112);
      if (!v44)
      {
        goto LABEL_68;
      }

      v45 = *(v44 + 168 * HIDWORD(v9));
      if (v9 >= *(v45 + 16))
      {
        goto LABEL_61;
      }

      v46 = *(v45 + 208 * v9 + 232);
      if (v46)
      {
        LOBYTE(v57[0]) = 0;
        *v46 = v27;
        *(v46 + 4) = 0;
      }
    }

    v28 = 0;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

unint64_t protocol witness for Aggregate.displayName(for:within:) in conformance ViewTree(unsigned int *a1, uint64_t a2)
{
  v5 = *a1;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return ViewTree.displayName(for:within:)(&v5, &v3);
}

uint64_t protocol witness for Aggregate.displayWeight(for:within:) in conformance UpdateStack(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v7 = *v2;
  v8[0] = v4;
  *(v8 + 9) = *(v2 + 25);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate.displayWeight(for:within:)(v3);
}

uint64_t protocol witness for Aggregate.weight(for:within:) in conformance UpdateStack(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return *(*v4 + 88 * v3 + 24);
}

uint64_t protocol witness for Aggregate.describe(ref:state:) in conformance UpdateStack(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, __int128 *))
{
  v6 = *a1;
  v7 = a2[1];
  v10 = *a2;
  v11[0] = v7;
  *(v11 + 10) = *(a2 + 26);
  v8 = v5[1];
  v11[2] = *v5;
  v12[0] = v8;
  *(v12 + 9) = *(v5 + 25);
  return a5(v6, &v10);
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance ViewTree(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = v1[1];
  v6[2] = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  return specialized Aggregate<>.describe(ref:state:)(0, &v5);
}

uint64_t protocol witness for Clonable.copy() in conformance UpdateStack(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = **v4;
  if (v8)
  {
    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v11 = swift_slowAlloc();
    *v7 = v11;
    memcpy(v11, v8, 88 * v10);
  }

  v12 = v7[2];
  if (v12)
  {
    v13 = *(v7 + 6);
    v14 = *(v7 + 7);
    v15 = swift_slowAlloc();
    v7[2] = v15;
    memcpy(v15, v12, v14 << 6);
  }

  v16 = *v7[4];

  v7[4] = a3(v17);
  v18 = v4[1];
  if (v18)
  {
    v19 = *(v4 + 4);
    v20 = *(v4 + 5);
    v21 = swift_slowAlloc();
    v4[1] = v21;
    memcpy(v21, v18, 4 * v20);
  }

  v22 = v4[3];
  if (v22)
  {
    v23 = *(v4 + 8);
    v24 = *(v4 + 9);
    v25 = swift_slowAlloc();
    v4[3] = v25;
    memcpy(v25, v22, 4 * v24);
  }

  v26 = *v7[5];

  result = a4(v27);
  v7[5] = result;
  return result;
}

void *EventTreeStats.init(from:within:)@<X0>(unsigned int a1@<W0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[48];
  v7 = *(a2 + 22);
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v6)
  {
    goto LABEL_9;
  }

  if (v5 >= *(v7 + 116))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(v7 + 104);
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(*(v10 + 8 * v5) + 8);
  if (*(v11 + 44) <= a1)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 32);
  if (v12)
  {
    v13 = *(v12 + (a1 << 7) + 40);
    *a3 = 1;
    a3[1] = v13;
    a3[2] = v13;
    a3[3] = result;
    a3[4] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

Swift::Int AggregateContainer.Method.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AggregateContainer.Method()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AggregateContainer.Method()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

SwiftUITracingSupport::AggregateContainer::Kind_optional __swiftcall AggregateContainer.Kind.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *_s21SwiftUITracingSupport18AggregateContainerC5LevelOSYAASY8rawValuexSg03RawH0Qz_tcfCTW_0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t AggregateContainer.Config.type.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t AggregateContainer.Config.type.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

unint64_t AggregateContainer.Config.init(_:_:_:_:)@<X0>(char a1@<W0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  result = lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect();
  *a5 = a1;
  *(a5 + 1) = v7;
  *(a5 + 2) = v8;
  *(a5 + 3) = v9;
  *(a5 + 8) = &type metadata for CauseEffect;
  *(a5 + 16) = result;
  return result;
}

unint64_t AggregateContainer.Config.init(_:_:_:_:type:)@<X0>(char a1@<W0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  result = lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect();
  *a7 = a1;
  *(a7 + 1) = v11;
  *(a7 + 2) = v12;
  *(a7 + 3) = v13;
  *(a7 + 8) = a5;
  *(a7 + 16) = a6;
  return result;
}

uint64_t AggregateContainer.Config.describe(state:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(20);
  MEMORY[0x26D69CDB0](0x206769666E6F6328, 0xE800000000000000);
  if (v1)
  {
    v5 = 0x7463617274736261;
  }

  else
  {
    v5 = 0;
  }

  if (v1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v5, v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

uint64_t AggregateContainer.Child.children.getter()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = closure #1 in AggregateContainer.Child.children.getter(v0);
    v2 = v0[4];
    v0[4] = v1;
  }

  return v1;
}

uint64_t key path getter for AggregateContainer.Child.children : AggregateContainer.Child@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AggregateContainer.Child.children.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for AggregateContainer.Child.children : AggregateContainer.Child(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
}

uint64_t AggregateContainer.Child.children.setter(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t closure #1 in AggregateContainer.Child.children.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 16, v16);

  v4 = v17;
  v5 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v15 = *(a1 + 4);
  swift_unownedRetainStrong();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 56, v14);

  v6 = (*(v5 + 128))(&v15, v14, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v7 = *(v6 + 16);
  if (v7)
  {
    v14[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 32;
    do
    {
      v9 = *(v6 + v8);
      swift_unownedRetainStrong();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v3;
      *(v10 + 32) = 0;
      swift_unownedRetain();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v14[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 4;
      --v7;
    }

    while (v7);

    v12 = v14[0];
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v12;
}

uint64_t (*AggregateContainer.Child.children.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AggregateContainer.Child.children.getter();
  return AggregateContainer.Child.children.modify;
}

uint64_t AggregateContainer.Child.children.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

Swift::String __swiftcall AggregateContainer.Child.displayName()()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v1 + 16, v12);

  v2 = v13;
  v3 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11 = *(v0 + 16);
  swift_unownedRetainStrong();
  outlined init with copy of Aggregate_AccessorProtocol(v1 + 56, v10);

  v4 = (*(v3 + 136))(&v11, v10, v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t AggregateContainer.Child.stats()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 16, v8);

  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = *(v1 + 16);
  Aggregate.stats(for:)(&v7, v4, v5, a1);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t AggregateContainer.Child.appendSelection(to:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 16, v9);

  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = *(v1 + 16);
  swift_unownedRetainStrong();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 56, v7);

  (*(v5 + 152))(&v8, v7, a1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t AggregateContainer.Child.deinit()
{
  v1 = *(v0 + 24);
  swift_unownedRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t AggregateContainer.Child.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unownedRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

__n128 AggregateContainer.config.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 97);
  v4 = *(v1 + 98);
  v5 = *(v1 + 99);
  *a1 = *(v1 + 96);
  *(a1 + 1) = v3;
  *(a1 + 2) = v4;
  *(a1 + 3) = v5;
  result = *(v1 + 104);
  *(a1 + 8) = result;
  return result;
}

__n128 AggregateContainer.config.setter(char *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  *(v1 + 96) = v3;
  *(v1 + 97) = v4;
  *(v1 + 98) = v5;
  *(v1 + 99) = v6;
  result = *(a1 + 8);
  *(v1 + 104) = result;
  return result;
}

uint64_t AggregateContainer.root.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t AggregateContainer.root.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t AggregateContainer.__allocating_init<A>(_:_:config:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = specialized AggregateContainer.init<A>(_:_:config:)(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v10;
}

uint64_t AggregateContainer.init<A>(_:_:config:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = specialized AggregateContainer.init<A>(_:_:config:)(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

uint64_t AggregateContainer.__allocating_init(_:_:config:)(uint64_t *a1, uint64_t *a2, char *a3)
{
  v6 = swift_allocObject();
  AggregateContainer.init(_:_:config:)(a1, a2, a3);
  return v6;
}

uint64_t AggregateContainer.init(_:_:config:)(uint64_t *a1, uint64_t *a2, char *a3)
{
  v4 = v3;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  *(v4 + 120) = 0;
  outlined init with copy of Aggregate_AccessorProtocol(a1, v4 + 16);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v4 + 56);
  *(v4 + 96) = v8;
  *(v4 + 97) = v9;
  *(v4 + 98) = v10;
  *(v4 + 99) = v11;
  *(v4 + 104) = *(a3 + 8);
  swift_beginAccess();
  v12 = *(v4 + 40);
  v13 = *(v4 + 48);
  v14 = __swift_project_boxed_opaque_existential_1((v4 + 16), v12);
  v15 = *(v12 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v15 + 16))(v18);
  (*(v13 + 112))(v27, v12, v13);
  (*(v15 + 8))(v18, v12);
  LODWORD(v12) = v27[0];
  type metadata accessor for AggregateContainer.Child();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  *(v19 + 24) = v4;
  *(v19 + 32) = 0;
  swift_beginAccess();
  v20 = *(v4 + 120);
  *(v4 + 120) = v19;
  swift_unownedRetain();

  swift_beginAccess();
  v22 = *(v4 + 40);
  v21 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v22);
  (*(*(v21 + 8) + 8))(v22);
  HIBYTE(v26) = 0;
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v23);
  (*(v24 + 216))(&v26 + 7, v23, v24);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t AggregateContainer.describe(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 20);
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v1 + 16, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v12[0] = v2;
  v12[1] = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v10 = (*(*(v9 + 24) + 32))(v12, v8);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v10;
}

uint64_t *AggregateContainer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[15];

  return v0;
}

uint64_t AggregateContainer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance AggregateContainer(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 20);
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v2 + 16, v18);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v13[0] = v3;
  v13[1] = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v11 = (*(*(v10 + 24) + 32))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

uint64_t protocol witness for static UnsafeTree_SuppliesRoot.element(_:) in conformance Changelist.Id@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void specialized closure #1 in Atomic.subscript.read(os_unfair_lock_t lock)
{
  if (LOBYTE(lock[1]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(lock[1]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(lock);
  }
}

void *specialized UnsafeArray.growToCapacity(_:)(unint64_t a1)
{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 88 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, a1 << 6);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 32 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 16 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, a1 << 7);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 120 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 48 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 40 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 4 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 8 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 24 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

unint64_t specialized UnsafeArray.growToCapacity(_:)(unint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    v3 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (result || v3)
  {
    return result;
  }

  LODWORD(result) = 1;
LABEL_7:
  *(v1 + 2) = result;
  if (v2)
  {
    v5 = swift_slowAlloc();
    *v1 = v5;
    if (v5 != v2 || v5 >= &v2[40 * v4])
    {
      memmove(v5, v2, 40 * v4);
    }

    JUMPOUT(0x26D69EAB0);
  }

  result = swift_slowAlloc();
  *v1 = result;
  return result;
}

{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    v3 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (result || v3)
  {
    return result;
  }

  LODWORD(result) = 1;
LABEL_7:
  *(v1 + 2) = result;
  if (v2)
  {
    v5 = swift_slowAlloc();
    *v1 = v5;
    v6 = 120 * v4;
    if (v5 != v2 || v5 >= &v2[v6])
    {
      memmove(v5, v2, v6);
    }

    JUMPOUT(0x26D69EAB0);
  }

  result = swift_slowAlloc();
  *v1 = result;
  return result;
}

{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    v3 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (result || v3)
  {
    return result;
  }

  LODWORD(result) = 1;
LABEL_7:
  *(v1 + 2) = result;
  if (v2)
  {
    v5 = swift_slowAlloc();
    *v1 = v5;
    if (v5 != v2 || v5 >= &v2[80 * v4])
    {
      memmove(v5, v2, 80 * v4);
    }

    JUMPOUT(0x26D69EAB0);
  }

  result = swift_slowAlloc();
  *v1 = result;
  return result;
}

uint64_t specialized UnsafeArray.growToCapacity(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    if (HIDWORD(result))
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v1 + 2) = result;
    if (v2)
    {
LABEL_4:
      v5 = swift_slowAlloc();
      *v1 = v5;
      if (v5 != v2 || v5 >= &v2[312 * v4])
      {
        memmove(v5, v2, 312 * v4);
      }

LABEL_19:
      JUMPOUT(0x26D69EAB0);
    }

    goto LABEL_16;
  }

  if (!result && !v3)
  {
    *(v1 + 2) = 1;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_16:
    result = swift_slowAlloc();
    *v1 = result;
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    if (HIDWORD(result))
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v1 + 2) = result;
    if (v2)
    {
LABEL_4:
      v5 = swift_slowAlloc();
      *v1 = v5;
      if (v5 != v2 || v5 >= &v2[168 * v4])
      {
        memmove(v5, v2, 168 * v4);
      }

LABEL_19:
      JUMPOUT(0x26D69EAB0);
    }

    goto LABEL_16;
  }

  if (!result && !v3)
  {
    *(v1 + 2) = 1;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_16:
    result = swift_slowAlloc();
    *v1 = result;
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x26D69DC50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v3 = static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AGAttribute@<X0>(_DWORD *a1@<X8>)
{
  result = static UInt32._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance os_unfair_lock_options_t(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSFileAttributeKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x26D69CE40](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSFileAttributeKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSFileAttributeKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSFileAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x26D69CC20](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AGSubgraphRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AGSubgraphRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AGSubgraphRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance AGSubgraphRef();
}

{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AGGraphRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AGGraphRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AGSubgraphRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance TreeValueFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSFileAttributeKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AGAttribute()
{
  v2 = *v0;
  lazy protocol witness table accessor for type AGGraphRef and conformance AGGraphRef(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSFileAttributeKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x26D69CC20](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSFileAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey()
{
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    MEMORY[0x26D69DBC0](v6);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](a1);
  }

  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 1, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v3 = HIDWORD(a1);
  v4 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = HIDWORD(a1);
  v4 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](a1);
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0xFFFFFFFF000000FFLL, v5);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a1);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 | ((HIDWORD(a1) & 1) << 32), v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  specialized AggregateTreeElement.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(v2 + 40);
  Hasher.init(_seed:)();
  if ((~(v5 & v6 & v7) & 0xF000000000000007) != 0)
  {
    MEMORY[0x26D69DBC0](1);
    ViewTree.TElement.hash(into:)();
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
  }

  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher.init()();
  MEMORY[0x26D69DBC0](*a1);
  MEMORY[0x26D69DBC0](*(a1 + 16));
  v4 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v4);
  Hasher._combine(_:)(*(a1 + 32));
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for SHA256Digest();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for AGGraphRef(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AGGraphRef and conformance AGGraphRef, type metadata accessor for AGGraphRef);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x26D69DB90](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D84BD0]);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D84BC8]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt16 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  MEMORY[0x26D69DC00](a2);
  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x26D69DBC0](1);
    LODWORD(v6) = a1;
  }

  else
  {
    v6 = HIDWORD(a1);
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 1, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 16);
  v6 = *a1;
  v7 = a1[1];
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  a3(a2);
  v8 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v9)
        {
          if ((a2 & (a1 != 0)) != 0)
          {
            return result;
          }
        }

        else if ((a2 & (a1 == 0)) != 0)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
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
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
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
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 40 * result;
      if (*v7 == *a1 && *(v7 + 16) == *(a1 + 16) && *(v7 + 32) == *(a1 + 32))
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
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v8 = *v7;
      v9 = *(v7 + 1);
      if (v8 == a1 && v9 == HIDWORD(a1))
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
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

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
  v20 = a1;
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AGGraphRef(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AGGraphRef and conformance AGGraphRef, type metadata accessor for AGGraphRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v9 = *(a1 + 8);
    do
    {
      v10 = *(v2 + 48) + 40 * result;
      v11 = *v10;
      if (*v10)
      {
        if (v7)
        {
          v12 = *(v10 + 16);
          v13 = *(v10 + 32);
          v14 = v11 == v7 && v12 == v8;
          if (v14 && v13 == v9)
          {
            return result;
          }
        }
      }

      else if (!v7)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(a1 + 8);
    v12 = v8 & v9 & v10 & 0xF000000000000007;
    if (v8 | v7 | v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 == 0xC000000000000000;
    }

    v15 = !v13 || v11 != 0;
    v16 = v10 & 0xC000000000000000;
    do
    {
      v17 = *(v2 + 48) + 40 * result;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if ((~(*(v17 + 8) & v18 & v19) & 0xF000000000000007) == 0)
      {
        if (v12 == 0xF000000000000007)
        {
          return result;
        }

        goto LABEL_13;
      }

      if (v12 != 0xF000000000000007)
      {
        v20 = *v17;
        v21 = v19 >> 62;
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            if (v16 != 0x8000000000000000)
            {
              goto LABEL_13;
            }

LABEL_32:
            if (v20 == v7)
            {
              return result;
            }

            goto LABEL_13;
          }

          if (!((v10 >> 62 != 3) | v15 & 1))
          {
            return result;
          }
        }

        else
        {
          if (v21)
          {
            if (v16 != 0x4000000000000000)
            {
              goto LABEL_13;
            }

            goto LABEL_32;
          }

          if (!(v10 >> 62))
          {
            v22 = *(v17 + 32);
            v23 = v20 == v7 && v18 == v9;
            if (v23 && v22 == v11)
            {
              return result;
            }
          }
        }
      }

LABEL_13:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v9 = *(a1 + 24);
    v10 = *(a1 + 25);
    v11 = a1[4];
    v12 = a1[6];
    v13 = *(a1 + 16);
    do
    {
      v17 = *(v2 + 48) + 72 * result;
      if (*v17 == v7)
      {
        v18 = *(v17 + 16);
        v19 = *(v17 + 32);
        v20 = *(v17 + 48);
        v21 = *(v17 + 64);
        if (*(v17 + 25) > 1u)
        {
          if (*(v17 + 25) == 2)
          {
            if (v10 != 2)
            {
              goto LABEL_13;
            }

            v22 = v18 == v8;
          }

          else
          {
            if (v10 != 3)
            {
              goto LABEL_13;
            }

            v22 = v18 == v8;
          }
        }

        else if (*(v17 + 25))
        {
          if (v10 != 1)
          {
            goto LABEL_13;
          }

          v23 = *(v17 + 24);
          v22 = v18 == v8 && v23 == v9;
        }

        else
        {
          if (v10)
          {
            goto LABEL_13;
          }

          v22 = v8 == v18;
        }

        if (v22 && v19 == v11 && v20 == v12 && v21 == v13)
        {
          return result;
        }
      }

LABEL_13:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}