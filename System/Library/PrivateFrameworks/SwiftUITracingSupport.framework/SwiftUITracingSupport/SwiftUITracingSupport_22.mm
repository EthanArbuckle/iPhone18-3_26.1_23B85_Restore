Swift::Void __swiftcall UnsafeTable.deallocate()()
{
  if (*v0)
  {
    MEMORY[0x26D69EAB0](*v0, -1, -1);
    *v0 = 0;
  }
}

uint64_t UnsafeTable.init(rows:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    result = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(result);
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 12) = v8;
    *(a3 + 16) = a1;
    *(a3 + 24) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*UnsafeTable.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = *(v3 + 24);
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(v5, a3);
  v7 = v5 + a3;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(v3 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*v3)
  {
    v8 = *(*v3 + 8 * v7);
    return EventTreeStats.count.modify;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*UnsafeTable.subscript.modify(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v8 = v3[3];
  v9 = a2 * v8;
  if ((a2 * v8) >> 64 == (a2 * v8) >> 63)
  {
    if (!__OFADD__(v9, a3))
    {
      *(result + 4) = specialized UnsafeArray.subscript.modify(result, v9 + a3, *v3, v3[1]);
      return UnsafeTree.subjectsMap.modify;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Atomic.Storage.params.getter()
{
  if (*(v0 + 5))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 4);
}

uint64_t Atomic.Storage.params.setter(uint64_t result)
{
  *(v1 + 4) = result & 1;
  *(v1 + 5) = BYTE1(result) & 1;
  return result;
}

uint64_t (*Atomic.Storage.value.modify(uint64_t a1, uint64_t a2))()
{
  result = EventTreeStats.count.modify;
  v4 = v2 + *(a2 + 32);
  return result;
}

void Atomic.lock<A>(_:)(void (*a1)(char *), uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock_with_options();
  v5 = type metadata accessor for Atomic.Storage();
  a1(a3 + *(v5 + 32));
  os_unfair_lock_unlock(a3);
}

uint64_t Atomic.subscript.setter(uint64_t a1, char a2, os_unfair_lock *lock, uint64_t a4)
{
  if (a2)
  {
    os_unfair_lock_lock_with_options();
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
  }

  v8 = *(type metadata accessor for Atomic.Storage() + 32);
  v11 = *(a4 - 8);
  (*(v11 + 24))(lock + v8, a1, a4);
  if (a2)
  {
    os_unfair_lock_unlock(lock);
  }

  v9 = *(v11 + 8);

  return v9(a1, a4);
}

uint64_t (*Atomic.subscript.read())(void)
{
  v0 = *(type metadata accessor for Atomic.Storage() + 32);
  return EventTreeStats.count.modify;
}

{
  v0 = *(type metadata accessor for Atomic.Storage() + 32);
  return EventTreeStats.count.modify;
}

uint64_t Atomic.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Atomic.Storage();
  v7 = *(*(a3 - 8) + 40);
  v8 = a2 + *(v6 + 32);

  return v7(v8, a1, a3);
}

Swift::Void __swiftcall Atomic.unlockOnMain()()
{
  if (*(v0 + 4) == 1)
  {
    *(v0 + 4) = 0;
    os_unfair_lock_unlock(v0);
  }
}

uint64_t Atomic.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a3 + 4) & 1) == 0)
  {
    v26 = v15;
    v27 = v14;
    os_unfair_lock_lock_with_options();
    *(a3 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v28 = a1;
    v25 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a3;
    aBlock[4] = closure #1 in Atomic.subscript.modifypartial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_17;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v24;
    v19 = v25;
    MEMORY[0x26D69D2D0](0, v17, v11, v24);
    a1 = v28;
    _Block_release(v20);

    (*(v8 + 8))(v11, v7);
    (*(v26 + 8))(v17, v27);
  }

  v21 = type metadata accessor for Atomic.Storage();
  return (*(*(a4 - 8) + 40))(a3 + *(v21 + 32), a1, a4);
}

uint64_t copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v22 - v14;
  v16 = *(v8 + 80);
  if (((v16 + 1) & v16) != 0)
  {
    __break(1u);
LABEL_9:
    v22[0] = v13;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v13 = v22[0];
    if (!isStackAllocationSafe)
    {
LABEL_3:
      v17 = swift_slowAlloc();
      closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v17, a1, a2, a3, a4);

      JUMPOUT(0x26D69EAB0);
    }

    goto LABEL_7;
  }

  v13 = *(v8 + 72);
  if (v16 > 0xF)
  {
    goto LABEL_3;
  }

  if (v13 > 1024)
  {
    goto LABEL_9;
  }

LABEL_7:
  MEMORY[0x28223BE20](v13);
  closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v22 - v18, a1, a2, a3, v12);
  v19 = *(v8 + 32);
  v19(v15, v12, a3);
  return (v19)(a4, v15, a3);
}

char *closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()@<X0>(uint64_t a1@<X0>, const void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = UnsafeMutableRawBufferPointer.init<A>(_:)();
  v12 = v11 - result;
  if (result)
  {
    v13 = v11 - result;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3 - a2;
  if (a2)
  {
    v15 = a3 - a2;
  }

  else
  {
    v15 = 0;
  }

  if (v13 < v15)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  if (a2 && result)
  {
    result = memmove(result, a2, v14);
    goto LABEL_12;
  }

  if (result)
  {
LABEL_12:
    v17 = v12 - v15;
    if (v12 >= v15)
    {
      if (v17 > 0)
      {
        bzero(&v16[v15], v17);
      }

      return (*(*(a4 - 8) + 16))(a5, a1, a4);
    }

    goto LABEL_18;
  }

  if (v15 <= 0)
  {
    return (*(*(a4 - 8) + 16))(a5, a1, a4);
  }

LABEL_19:
  __break(1u);
  return result;
}

const void *UnsafeMutableRawBufferPointer.partialLoadUnaligned<A>()@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (result)
  {
    if (a2 - result >= *(*(a3 - 8) + 64))
    {
      return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, result, a3, a4);
    }

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  if (*(*(a3 - 8) + 64) >= 1)
  {
    a2 = 0;
    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall UnsafeMutableRawBufferPointer.previewDescription()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  specialized Collection.prefix(_:)(40, v3, v6);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v7 = String.init<A>(bytes:encoding:)();
  if (!v8)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t Array.mut(i:_:)(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  result = MEMORY[0x26D69D030](*v4, v6);
  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    Array._makeMutableAndUnique()();
    v9 = *v4;
    Array._checkSubscript_mutating(_:)(v8);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v11 = v9;
    }

    return a2(v11 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v8);
  }

  return result;
}

uint64_t Collection<>.binarySearch(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v257 = a1;
  v260 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v231 = *(TupleTypeMetadata2 - 8);
  v10 = *(v231 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v232 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v228 = &v211 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v230 = type metadata accessor for Range();
  v229 = *(v230 - 8);
  v14 = *(v229 + 64);
  MEMORY[0x28223BE20](v230);
  v227 = &v211 - v15;
  v238 = swift_getAssociatedTypeWitness();
  v237 = *(v238 - 8);
  v16 = *(v237 + 64);
  MEMORY[0x28223BE20](v238);
  v236 = &v211 - v17;
  v226 = type metadata accessor for PartialRangeUpTo();
  v225 = *(v226 - 8);
  v18 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v224 = &v211 - v19;
  v20 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v258 = a4;
  v21 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v259 = v21;
  v252 = *(swift_getAssociatedConformanceWitness() + 8);
  v221 = *(*(v252 + 24) + 16);
  v219 = swift_getAssociatedTypeWitness();
  v22 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v220 = &v211 - v23;
  v269 = AssociatedTypeWitness;
  v251 = swift_checkMetadataState();
  v265 = *(v251 - 8);
  v24 = *(v265 + 64);
  v25 = MEMORY[0x28223BE20](v251);
  v239 = &v211 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v241 = &v211 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v253 = &v211 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v254 = &v211 - v32;
  MEMORY[0x28223BE20](v31);
  v250 = &v211 - v33;
  v266 = swift_checkMetadataState();
  v262 = *(v266 - 8);
  v34 = *(v262 + 64);
  v35 = MEMORY[0x28223BE20](v266);
  v242 = &v211 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v261 = &v211 - v37;
  v255 = swift_checkMetadataState();
  v264 = *(v255 - 8);
  v38 = *(v264 + 64);
  v39 = MEMORY[0x28223BE20](v255);
  v240 = &v211 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v249 = &v211 - v42;
  v43 = *(AssociatedTypeWitness - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v41);
  v244 = &v211 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v268 = &v211 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v211 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v211 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v211 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v211 - v58;
  v60 = a3;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  v61 = a2;
  v62 = v60;
  dispatch thunk of Collection.endIndex.getter();
  v63 = v5;
  dispatch thunk of Collection.distance(from:to:)();
  v267 = v43;
  v64 = v43 + 8;
  v65 = *(v43 + 8);
  v234 = v51;
  v66 = v51;
  v67 = v59;
  v68 = v269;
  v65(v66, v269);
  v245 = v54;
  v65(v54, v68);
  dispatch thunk of Collection.index(_:offsetBy:)();
  v65(v57, v68);
  dispatch thunk of Collection.endIndex.getter();
  v69 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v247 = v57;
  v65(v57, v68);
  if (v69)
  {
    v65(v67, v68);
    return (*(v267 + 56))(v260, 1, 1, v68);
  }

  v246 = v65;
  v71 = *(v267 + 16);
  v218 = v267 + 16;
  v217 = v71;
  v71(v268, v67, v68);
  v222 = v63;
  v223 = v61;
  v72 = dispatch thunk of Collection.subscript.read();
  v73 = v264;
  v74 = *(v264 + 16);
  v75 = v249;
  v76 = v255;
  v216 = v264 + 16;
  v215 = v74;
  v74(v249);
  v72(&v270, 0);
  v77 = *(v258 + 24);
  v214 = v258 + 24;
  v213 = v77;
  (v77)(v76);
  v78 = *(v73 + 8);
  v264 = v73 + 8;
  v212 = v78;
  v78(v75, v76);
  v79 = v259;
  v80 = *(v259 + 56);
  v81 = v250;
  v249 = (v259 + 56);
  v243 = v80;
  v80(v266, v259);
  v82 = v251;
  v83 = v252;
  v84 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v256 = v62;
  v85 = v83;
  v86 = v82;
  v87 = v265;
  v235 = v67;
  if ((v84 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v270 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v88 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v89 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v88)
    {
      if (v89 > 64)
      {
LABEL_10:
        lazy protocol witness table accessor for type Int and conformance Int();
        v90 = v254;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v91 = *(*(v85 + 32) + 8);
        v92 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v87 + 8))(v90, v86);
        if ((v92 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v93 = v254;
      v79 = v259;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v94 = *(*(v85 + 32) + 8);
      v95 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v87 + 8))(v93, v86);
      if (v95)
      {
        goto LABEL_105;
      }

LABEL_15:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_16;
    }

    if (v89 < 64)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v96 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v97 = v269;
  if (v96 <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v270 = 0x7FFFFFFFFFFFFFFFLL;
    v98 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v99 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v98 & 1) == 0)
    {
      break;
    }

    if (v99 <= 64)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v100 = v254;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v101 = *(*(v85 + 32) + 8);
    v102 = dispatch thunk of static Comparable.< infix(_:_:)();
    v103 = v100;
    v79 = v259;
    (*(v87 + 8))(v103, v86);
    if (v102)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v99 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v248 = v64;
  v250 = dispatch thunk of BinaryInteger._lowWord.getter();
  v106 = *(v87 + 8);
  v104 = v87 + 8;
  v105 = v106;
  v106(v81, v86);
  v107 = v261;
  v108 = v266;
  v261 = *(v262 + 8);
  v262 += 8;
  (v261)(v107, v266);
  v109 = v108;
  v110 = v253;
  v243(v109, v79);
  v111 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v113 = v267;
  v112 = v268;
  if ((v111 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_40;
  }

  v270 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v118 = v113;
    v119 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v120 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v119 & 1) == 0)
    {
      v113 = v118;
      v112 = v268;
      if (v120 >= 64)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v113 = v118;
    if (v120 > 64)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v121 = v254;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v122 = *(*(v85 + 32) + 8);
      v123 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = v105(v121, v86);
      v112 = v268;
      if (v123)
      {
        goto LABEL_106;
      }

      goto LABEL_40;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v124 = v254;
    v110 = v253;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v125 = *(*(v85 + 32) + 8);
    v126 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = v105(v124, v86);
    v112 = v268;
    if ((v126 & 1) == 0)
    {
LABEL_39:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_40;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_39;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  v114 = v254;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v115 = *(*(v85 + 32) + 8);
  v116 = dispatch thunk of static Comparable.< infix(_:_:)();
  v117 = v114;
  v112 = v268;
  result = v105(v117, v86);
  if (v116)
  {
    goto LABEL_106;
  }

LABEL_40:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_45;
  }

  while (2)
  {
    v127 = v113;
    v270 = 0x7FFFFFFFFFFFFFFFLL;
    v128 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v129 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v128)
    {
      if (v129 <= 64)
      {
        break;
      }

      goto LABEL_43;
    }

    if (v129 >= 64)
    {
LABEL_43:
      lazy protocol witness table accessor for type Int and conformance Int();
      v130 = v254;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v131 = *(*(v85 + 32) + 8);
      v132 = dispatch thunk of static Comparable.< infix(_:_:)();
      v105(v130, v86);
      v113 = v127;
      v112 = v268;
      if ((v132 & 1) == 0)
      {
        goto LABEL_50;
      }

      __break(1u);
LABEL_45:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
  v113 = v127;
  v112 = v268;
LABEL_50:
  v133 = dispatch thunk of BinaryInteger._lowWord.getter();
  v105(v110, v86);
  if (v250 == v133)
  {
    goto LABEL_52;
  }

  v265 = v104;
  v134 = v86;
  v135 = v247;
  dispatch thunk of Collection.startIndex.getter();
  v136 = v245;
  dispatch thunk of Collection.endIndex.getter();
  v97 = v269;
  v137 = dispatch thunk of Collection.distance(from:to:)();
  v138 = v246;
  v246(v136, v97);
  v139 = v135;
  v140 = v134;
  v138(v139, v97);
  v112 = v268;
  v141 = v266;
  if (v137 == 1)
  {
LABEL_52:
    v246(v235, v97);
    v142 = v260;
    (*(v113 + 32))(v260, v112, v97);
    return (*(v113 + 56))(v142, 0, 1, v97);
  }

  v246(v268, v97);
  v217(v244, v235, v97);
  v143 = dispatch thunk of Collection.subscript.read();
  v144 = v240;
  v145 = v255;
  v215(v240);
  v143(&v270, 0);
  v146 = v242;
  v213(v145, v258);
  v212(v144, v145);
  v147 = v241;
  v243(v141, v259);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v270 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        v148 = v254;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v149 = *(*(v85 + 32) + 8);
        v150 = dispatch thunk of static Comparable.< infix(_:_:)();
        v151 = v148;
        v146 = v242;
        result = v105(v151, v134);
        if (v150)
        {
          goto LABEL_109;
        }

        goto LABEL_67;
      }

LABEL_66:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

    else
    {
      v152 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v153 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v152)
      {
        if (v153 > 64)
        {
          lazy protocol witness table accessor for type Int and conformance Int();
          v154 = v254;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v155 = *(*(v85 + 32) + 8);
          v156 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = v105(v154, v134);
          v146 = v242;
          if (v156)
          {
            goto LABEL_109;
          }

          goto LABEL_67;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v157 = v254;
        v141 = v266;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v158 = *(*(v85 + 32) + 8);
        v159 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v105(v157, v134);
        v146 = v242;
        if (v159)
        {
          goto LABEL_109;
        }

        goto LABEL_66;
      }

      if (v153 < 64)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_72;
  }

  while (2)
  {
    v270 = 0x7FFFFFFFFFFFFFFFLL;
    v160 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v161 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v160)
    {
      if (v161 <= 64)
      {
        break;
      }

      goto LABEL_70;
    }

    if (v161 >= 64)
    {
LABEL_70:
      lazy protocol witness table accessor for type Int and conformance Int();
      v162 = v254;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v163 = *(*(v85 + 32) + 8);
      v164 = dispatch thunk of static Comparable.< infix(_:_:)();
      v165 = v162;
      v146 = v242;
      v105(v165, v134);
      if ((v164 & 1) == 0)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_72:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_77:
  v166 = dispatch thunk of BinaryInteger._lowWord.getter();
  v105(v147, v134);
  (v261)(v146, v141);
  v167 = v239;
  v243(v141, v259);
  v168 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v169 = v247;
  if ((v168 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v270 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_89;
      }

LABEL_84:
      lazy protocol witness table accessor for type Int and conformance Int();
      v173 = v254;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v174 = *(*(v85 + 32) + 8);
      v175 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = v105(v173, v140);
      if (v175)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v170 = v113;
      v171 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v172 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v171)
      {
        v113 = v170;
        if (v172 > 64)
        {
          goto LABEL_84;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v176 = v254;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v177 = *(*(v85 + 32) + 8);
        v178 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v105(v176, v140);
        if (v178)
        {
          goto LABEL_110;
        }

LABEL_89:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else
      {
        v113 = v170;
        if (v172 < 64)
        {
          goto LABEL_89;
        }
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_95;
  }

  while (2)
  {
    v179 = v113;
    v270 = 0x7FFFFFFFFFFFFFFFLL;
    v180 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v181 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v180)
    {
      if (v181 <= 64)
      {
        break;
      }

      goto LABEL_93;
    }

    if (v181 >= 64)
    {
LABEL_93:
      lazy protocol witness table accessor for type Int and conformance Int();
      v182 = v254;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v183 = *(*(v85 + 32) + 8);
      v184 = dispatch thunk of static Comparable.< infix(_:_:)();
      v105(v182, v140);
      v113 = v179;
      if ((v184 & 1) == 0)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_95:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
  v113 = v179;
LABEL_100:
  v185 = dispatch thunk of BinaryInteger._lowWord.getter();
  v105(v167, v140);
  if (v185 >= v166)
  {
    v195 = v269;
    v246(v244, v269);
    v196 = *(v113 + 32);
    v196(v169, v235, v195);
    v197 = v245;
    dispatch thunk of Collection.index(after:)();
    v198 = v234;
    dispatch thunk of Collection.endIndex.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_108;
    }

    v199 = v228;
    v196(v228, v197, v195);
    v200 = TupleTypeMetadata2;
    v196(&v199[*(TupleTypeMetadata2 + 48)], v198, v195);
    v201 = v231;
    v202 = v232;
    (*(v231 + 16))(v232, v199, v200);
    v203 = *(v200 + 48);
    v204 = v227;
    v196(v227, v202, v195);
    v205 = &v202[v203];
    v206 = v246;
    v246(v205, v195);
    (*(v201 + 32))(v202, v199, v200);
    v207 = v230;
    v196(&v204[*(v230 + 36)], &v202[*(v200 + 48)], v195);
    v206(v202, v195);
    v208 = v236;
    dispatch thunk of Collection.subscript.getter();
    (*(v229 + 8))(v204, v207);
    v209 = v238;
    v210 = swift_getAssociatedConformanceWitness();
    Collection<>.binarySearch(for:)(v257, v209, v210, v258);
    (*(v237 + 8))(v208, v209);
    return (v206)(v247, v195);
  }

  else
  {
    v186 = v269;
    v187 = v246;
    v246(v235, v269);
    v188 = *(AssociatedConformanceWitness + 8);
    v189 = v244;
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v190 = v224;
      v217(v224, v189, v186);
      v191 = v226;
      swift_getWitnessTable();
      v192 = v236;
      Collection.subscript.getter();
      (*(v225 + 8))(v190, v191);
      v193 = v238;
      v194 = swift_getAssociatedConformanceWitness();
      Collection<>.binarySearch(for:)(v257, v193, v194, v258);
      (*(v237 + 8))(v192, v193);
      return v187(v189, v186);
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
  }

  return result;
}

BOOL Collection<>.sContains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  Collection<>.binarySearch(for:)(a1, a2, a3, a4, &v16 - v12);
  v14 = (*(*(AssociatedTypeWitness - 8) + 48))(v13, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t UnsafeArray<A>.binarySearch(for:_:_:)(uint64_t a1, uint64_t a2, int64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v149 = a1;
  v13 = HIDWORD(a5);
  swift_getAssociatedTypeWitness();
  v144 = *(swift_getAssociatedConformanceWitness() + 8);
  v134 = *(*(v144 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v132 = &v128 - v15;
  v143 = swift_checkMetadataState();
  v148 = *(v143 - 1);
  v16 = *(v148 + 64);
  v17 = MEMORY[0x28223BE20](v143);
  v141 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v138 = &v128 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v128 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v145 = &v128 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v128 - v26;
  v151 = *(a6 - 8);
  v28 = v151[8];
  v29 = MEMORY[0x28223BE20](v25);
  v142 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v128 - v31;
  v157 = a2;
  v158 = a4;
  v159 = a5;
  v160 = v13;
  v147 = a4;
  v153 = a2;
  v154 = a4;
  v137 = a5;
  v155 = a5;
  v156 = v13;
  v135 = a2;
  v152 = a3;
  type metadata accessor for UnsafeArray();
  swift_getWitnessTable();
  RandomAccessCollection<>.distance(from:to:)();
  RandomAccessCollection<>.index(_:offsetBy:)();
  v136 = a3;
  if (v154 >= a3)
  {
    return 0;
  }

  v33 = v151[2];
  v34 = v151[9];
  v131 = v154;
  v129 = v147 + v34 * v154;
  v130 = v33;
  v128 = v151 + 2;
  (v33)(v32);
  v35 = *(a7 + 56);
  v36 = a6;
  v146 = a7;
  v139 = v35;
  v140 = a7 + 56;
  v35(a6, a7);
  v37 = v143;
  v38 = v144;
  v39 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v40 = v148;
  v41 = v32;
  if ((v39 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v158 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v43)
    {
      if (v44 > 64)
      {
LABEL_10:
        lazy protocol witness table accessor for type Int and conformance Int();
        v45 = v145;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v46 = *(*(v38 + 32) + 8);
        v47 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v40 + 8))(v45, v37);
        if ((v47 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v48 = v145;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v49 = *(*(v38 + 32) + 8);
      v50 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v40 + 8))(v48, v37);
      if (v50)
      {
        goto LABEL_104;
      }

LABEL_15:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_16;
    }

    if (v44 < 64)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v51 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v52 = v36;
  v53 = v27;
  v54 = v151;
  if (v51 <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v143 = v41;
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    v55 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v56 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v55 & 1) == 0)
    {
      break;
    }

    if (v56 <= 64)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v57 = v37;
    v58 = v145;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v59 = *(*(v38 + 32) + 8);
    v60 = dispatch thunk of static Comparable.< infix(_:_:)();
    v61 = v58;
    v37 = v57;
    v54 = v151;
    (*(v40 + 8))(v61, v57);
    v41 = v143;
    if (v60)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v56 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
  v41 = v143;
LABEL_26:
  v151 = dispatch thunk of BinaryInteger._lowWord.getter();
  v148 = *(v40 + 8);
  (v148)(v53, v37);
  v63 = v54[1];
  v62 = v54 + 1;
  v143 = v63;
  (v63)(v41, v52);
  v64 = v150;
  v139(v52, v146);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_40;
  }

  v158 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v67 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v68 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v67 & 1) == 0)
    {
      v64 = v150;
      if (v68 < 64)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v68 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v71 = v145;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v72 = *(*(v38 + 32) + 8);
      v64 = v150;
      v73 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v148)(v71, v37);
      if ((v73 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v65 = v145;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v69 = *(*(v38 + 32) + 8);
      v64 = v150;
LABEL_34:
      v70 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v148)(v65, v37);
      if ((v70 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v64 = v150;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v65 = v145;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v66 = *(*(v38 + 32) + 8);
    goto LABEL_34;
  }

LABEL_39:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_40:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_45;
  }

  while (2)
  {
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    v74 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v75 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v74)
    {
      if (v75 <= 64)
      {
        break;
      }

      goto LABEL_43;
    }

    if (v75 >= 64)
    {
LABEL_43:
      lazy protocol witness table accessor for type Int and conformance Int();
      v76 = v145;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v77 = *(*(v38 + 32) + 8);
      v64 = v150;
      v78 = dispatch thunk of static Comparable.< infix(_:_:)();
      (v148)(v76, v37);
      if ((v78 & 1) == 0)
      {
        goto LABEL_50;
      }

      __break(1u);
LABEL_45:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  v64 = v150;
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_50:
  v79 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v148)(v64, v37);
  if (v151 == v79)
  {
    return v131;
  }

  v130(v142, v129, v52);
  v80 = v138;
  v139(v52, v146);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_66;
  }

  v158 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v85 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v85)
    {
      v151 = v62;
      if (v86 > 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        v87 = v145;
        v88 = v37;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v89 = *(*(v38 + 32) + 8);
        v90 = v138;
        v91 = dispatch thunk of static Comparable.< infix(_:_:)();
        v92 = v87;
        v80 = v90;
        v37 = v88;
        result = (v148)(v92, v88);
        if ((v91 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v93 = v145;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v94 = *(*(v38 + 32) + 8);
      v95 = v138;
      v96 = dispatch thunk of static Comparable.< infix(_:_:)();
      v97 = v93;
      v80 = v95;
      result = (v148)(v97, v37);
      if (v96)
      {
        goto LABEL_106;
      }
    }

    else if (v86 >= 64)
    {
      goto LABEL_66;
    }

LABEL_65:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_66;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_65;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  v81 = v145;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v82 = *(*(v38 + 32) + 8);
  v83 = dispatch thunk of static Comparable.< infix(_:_:)();
  v84 = v81;
  v80 = v138;
  result = (v148)(v84, v37);
  if (v83)
  {
    goto LABEL_106;
  }

LABEL_66:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_71;
  }

  while (2)
  {
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    v98 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v99 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v98)
    {
      if (v99 <= 64)
      {
        break;
      }

      goto LABEL_69;
    }

    if (v99 >= 64)
    {
LABEL_69:
      lazy protocol witness table accessor for type Int and conformance Int();
      v100 = v145;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v101 = *(*(v38 + 32) + 8);
      v102 = dispatch thunk of static Comparable.< infix(_:_:)();
      v103 = v100;
      v80 = v138;
      (v148)(v103, v37);
      if ((v102 & 1) == 0)
      {
        goto LABEL_76;
      }

      __break(1u);
LABEL_71:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_76:
  v104 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v148)(v80, v37);
  (v143)(v142, v52);
  v105 = v141;
  v139(v52, v146);
  v106 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v107 = v147;
  if ((v106 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_90;
  }

  v158 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v111 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v112 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v111 & 1) == 0)
    {
      v105 = v141;
      if (v112 >= 64)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    if (v112 > 64)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v113 = v145;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v114 = *(*(v38 + 32) + 8);
      v105 = v141;
      v115 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v148)(v113, v37);
      if (v115)
      {
        goto LABEL_107;
      }

      goto LABEL_90;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v116 = v145;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v117 = *(*(v38 + 32) + 8);
    v105 = v141;
    v118 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (v148)(v116, v37);
    if ((v118 & 1) == 0)
    {
LABEL_89:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_90;
    }

LABEL_107:
    __break(1u);
    return result;
  }

  v105 = v141;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_89;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  v108 = v145;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v109 = *(*(v38 + 32) + 8);
  v110 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (v148)(v108, v37);
  if (v110)
  {
    goto LABEL_107;
  }

LABEL_90:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_95;
  }

  while (2)
  {
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    v119 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v120 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v119)
    {
      if (v120 <= 64)
      {
        break;
      }

      goto LABEL_93;
    }

    if (v120 >= 64)
    {
LABEL_93:
      lazy protocol witness table accessor for type Int and conformance Int();
      v121 = v145;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v122 = *(*(v38 + 32) + 8);
      v105 = v141;
      v123 = dispatch thunk of static Comparable.< infix(_:_:)();
      (v148)(v121, v37);
      if ((v123 & 1) == 0)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_95:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  v105 = v141;
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_100:
  v124 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v148)(v105, v37);
  if (v124 >= v104)
  {
    v126 = v131 + 1;
    v125 = v149;
    v127 = &v162;
  }

  else
  {
    v125 = v149;
    v126 = v135;
    v127 = &v161;
  }

  return UnsafeArray<A>.binarySearch(for:_:_:)(v125, v126, *(v127 - 32), v107, v137, v52, v146);
}

Swift::Int __swiftcall UnsafeArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeArray<A>.binarySearchFirstBefore(id:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v126 = a2;
  v128 = a3;
  v8 = HIDWORD(a3);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(*(v9 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v116 = &v110 - v13;
  v130 = *(a4 - 8);
  v14 = v130[8];
  v15 = MEMORY[0x28223BE20](v12);
  v132 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v110 - v17;
  v18 = swift_checkMetadataState();
  v134 = *(v18 - 8);
  v19 = *(v134 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v110 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v118 = &v110 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v125 = &v110 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v110 - v30;
  v127 = v8;
  if (!v8)
  {
    return 0;
  }

  v112 = v10;
  v33 = *(a5 + 56);
  v117 = a5 + 56;
  v131 = v33;
  v33(a4, a5);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v137 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v34)
    {
      if (v35 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v40 = v125;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v41 = *(*(v9 + 32) + 8);
        v42 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v134 + 8))(v40, v18);
        if (v42)
        {
          goto LABEL_110;
        }

        goto LABEL_16;
      }

LABEL_11:
      lazy protocol witness table accessor for type Int and conformance Int();
      v36 = v125;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v37 = *(*(v9 + 32) + 8);
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v134 + 8))(v36, v18);
      if (v38)
      {
        goto LABEL_110;
      }

      goto LABEL_17;
    }

    if (v35 < 64)
    {
LABEL_16:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_17:
  v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v129 = a5;
  if (v43 <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v137 = 0x7FFFFFFFFFFFFFFFLL;
    v44 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v45 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v44 & 1) == 0)
    {
      break;
    }

    if (v45 <= 64)
    {
      goto LABEL_26;
    }

LABEL_20:
    lazy protocol witness table accessor for type Int and conformance Int();
    v46 = v125;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v47 = *(*(v9 + 32) + 8);
    v48 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v134 + 8))(v46, v18);
    a5 = v129;
    if (v48)
    {
      __break(1u);
LABEL_22:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v45 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  dispatch thunk of BinaryInteger._lowWord.getter();
  a5 = v129;
LABEL_27:
  v114 = v22;
  v113 = dispatch thunk of BinaryInteger._lowWord.getter();
  v133 = *(v134 + 8);
  v134 += 8;
  v133(v31, v18);
  v50 = v126;
  v49 = v127;
  v137 = v126;
  v138 = v128;
  v139 = v127;
  v51 = a4;
  v52 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  v123 = v52;
  v111 = WitnessTable;
  result = ArrayLike.lastIndex.getter(v52, WitnessTable);
  if (v136 >= v49)
  {
    goto LABEL_107;
  }

  if (!v50)
  {
    goto LABEL_112;
  }

  v54 = v130[2];
  v120 = v130[9];
  v121 = v54;
  v55 = v51;
  v122 = v130 + 2;
  v54(v119, v50 + v120 * v136, v51);
  v56 = v118;
  v131(v55, a5);
  v57 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v124 = a1;
  v58 = v56;
  v59 = v114;
  if ((v57 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v135 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_41;
      }

LABEL_36:
      lazy protocol witness table accessor for type Int and conformance Int();
      v62 = v125;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v63 = *(*(v9 + 32) + 8);
      v64 = dispatch thunk of static Comparable.< infix(_:_:)();
      v65 = v62;
      v58 = v118;
      result = (v133)(v65, v18);
      if (v64)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        a5 = v129;
        if (v61 > 64)
        {
          goto LABEL_36;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v66 = v125;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v67 = *(*(v9 + 32) + 8);
        v68 = dispatch thunk of static Comparable.< infix(_:_:)();
        v69 = v66;
        v58 = v118;
        result = (v133)(v69, v18);
        if (v68)
        {
          goto LABEL_111;
        }

LABEL_41:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else
      {
        a5 = v129;
        if (v61 < 64)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_47;
  }

  while (2)
  {
    v135 = 0x7FFFFFFFFFFFFFFFLL;
    v70 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v70)
    {
      if (v71 <= 64)
      {
        break;
      }

      goto LABEL_45;
    }

    if (v71 >= 64)
    {
LABEL_45:
      lazy protocol witness table accessor for type Int and conformance Int();
      v72 = v125;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v73 = *(*(v9 + 32) + 8);
      v74 = dispatch thunk of static Comparable.< infix(_:_:)();
      v133(v72, v18);
      a5 = v129;
      if ((v74 & 1) == 0)
      {
        goto LABEL_52;
      }

      __break(1u);
LABEL_47:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
  a5 = v129;
LABEL_52:
  v75 = dispatch thunk of BinaryInteger._lowWord.getter();
  v133(v58, v18);
  v76 = v130[1];
  v77 = v119;
  ++v130;
  v119 = v76;
  (v76)(v77, v55);
  if (v75 < v113)
  {
    v137 = v50;
    v138 = v128;
    v139 = v127;
    ArrayLike.lastIndex.getter(v123, v111);
    return v136;
  }

  v32 = UnsafeArray<A>.binarySearch(for:_:_:)(v124, 0, v127, v50, v128, v55, a5);
  if (v78)
  {
    return v32;
  }

  while (2)
  {
    v121(v132, v50 + v32 * v120, v55);
    v131(v55, a5);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v137 = 0x8000000000000000;
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v79 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v80 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v79)
        {
          a5 = v129;
          if (v80 > 64)
          {
            goto LABEL_63;
          }

          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v84 = v125;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v85 = *(*(v9 + 32) + 8);
          v86 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (v133)(v84, v18);
          if (v86)
          {
            goto LABEL_108;
          }
        }

        else
        {
          a5 = v129;
          if (v80 >= 64)
          {
            goto LABEL_69;
          }
        }

LABEL_68:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_69;
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_68;
      }

LABEL_63:
      lazy protocol witness table accessor for type Int and conformance Int();
      v81 = v125;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v82 = *(*(v9 + 32) + 8);
      v83 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v133)(v81, v18);
      if (v83)
      {
        goto LABEL_108;
      }
    }

LABEL_69:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
LABEL_79:
      v92 = dispatch thunk of BinaryInteger._lowWord.getter();
      v133(v25, v18);
      (v119)(v132, v55);
      v131(v55, a5);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        goto LABEL_93;
      }

      v137 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          lazy protocol witness table accessor for type Int and conformance Int();
          v93 = v125;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v94 = *(*(v9 + 32) + 8);
          v95 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (v133)(v93, v18);
          if (v95)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_92:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_93;
      }

      v96 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v97 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if ((v96 & 1) == 0)
      {
        a5 = v129;
        if (v97 >= 64)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }

      a5 = v129;
      if (v97 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v101 = v125;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v102 = *(*(v9 + 32) + 8);
        v103 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v133)(v101, v18);
        if (v103)
        {
          goto LABEL_109;
        }

        goto LABEL_92;
      }

      lazy protocol witness table accessor for type Int and conformance Int();
      v98 = v125;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v99 = *(*(v9 + 32) + 8);
      v100 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v133)(v98, v18);
      if (v100)
      {
        goto LABEL_109;
      }

LABEL_93:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
LABEL_103:
        v109 = dispatch thunk of BinaryInteger._lowWord.getter();
        v133(v59, v18);
        if (v109 >= v92 || !v32)
        {
          return v32;
        }

        v50 = v126;
        v137 = v126;
        v138 = v128;
        v139 = v127;
        v135 = v32;
        swift_getWitnessTable();
        RandomAccessCollection<>.index(_:offsetBy:)();
        v32 = v136;
        continue;
      }

      v137 = 0x7FFFFFFFFFFFFFFFLL;
      v104 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v105 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v104)
      {
        if (v105 > 64)
        {
          goto LABEL_96;
        }
      }

      else if (v105 >= 64)
      {
LABEL_96:
        lazy protocol witness table accessor for type Int and conformance Int();
        v106 = v125;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v107 = *(*(v9 + 32) + 8);
        v108 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v133)(v106, v18);
        a5 = v129;
        if (v108)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
      a5 = v129;
      goto LABEL_103;
    }

    break;
  }

  v137 = 0x7FFFFFFFFFFFFFFFLL;
  v87 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v88 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v87)
  {
    if (v88 > 64)
    {
      goto LABEL_72;
    }

LABEL_78:
    dispatch thunk of BinaryInteger._lowWord.getter();
    a5 = v129;
    goto LABEL_79;
  }

  if (v88 < 64)
  {
    goto LABEL_78;
  }

LABEL_72:
  lazy protocol witness table accessor for type Int and conformance Int();
  v89 = v125;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v90 = *(*(v9 + 32) + 8);
  v91 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (v133)(v89, v18);
  a5 = v129;
  if ((v91 & 1) == 0)
  {
    goto LABEL_79;
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

uint64_t UnsafeArray<A>.sContains(_:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v8 = *(*(a5 - 8) + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v39 = &v34 - v18;
  if (!v14)
  {
    v19 = 0;
    return v19 & 1;
  }

  if (v13[1])
  {
    UnsafeArray<A>.binarySearch(for:_:_:)(a1, 0, v14, v15, v16, a5, v40);
    v19 = v20 ^ 1;
    return v19 & 1;
  }

  v21 = *v13;
  v22 = (v17 + 8);
  v36 = v15;
  v37 = v13;
  v34 = v17;
  v35 = v14;
  v23 = v39;
  while (2)
  {
    if (v21 == v14)
    {
      v19 = 0;
      *v13 = v14;
      *(v13 + 8) = 0;
      return v19 & 1;
    }

    if (v21 >= v14)
    {
      __break(1u);
    }

    else if (v15)
    {
      v24 = *(v17 + 72);
      v38 = v21;
      v41 = v15 + v24 * v21;
      v25 = *(v17 + 16);
      while (1)
      {
        v25(v23, v41, a5);
        v26 = *(v40 + 8);
        v27 = dispatch thunk of static Comparable.< infix(_:_:)();
        v28 = *v22;
        result = (*v22)(v23, a5);
        if (v27)
        {
          break;
        }

        v25(v11, v41, a5);
        v29 = *(v26 + 8);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28(v11, a5);
        if (v30)
        {
          goto LABEL_17;
        }

        v25(v11, v41, a5);
        v31 = dispatch thunk of static Comparable.> infix(_:_:)();
        v28(v11, a5);
        if (v31)
        {
          v19 = 0;
          v33 = v37;
          *v37 = v38;
          *(v33 + 8) = 0;
          return v19 & 1;
        }
      }

      v13 = v37;
      v21 = v38 + 1;
      v14 = v35;
      v15 = v36;
      v17 = v34;
      if (!__OFADD__(v38, 1))
      {
        continue;
      }

      __break(1u);
LABEL_17:
      v32 = v37;
      *v37 = v38;
      *(v32 + 8) = 0;
      v19 = 1;
      return v19 & 1;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableRawPointer.misalignedLoad<A>(as:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 - 8) + 8))(a2, a4);

  return UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, a3, a4, a2);
}

uint64_t UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(v8 + 80);
  if (((v15 + 1) & v15) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v8 + 72);
  if (v15 > 0xF)
  {
    while (1)
    {
      v12 = swift_slowAlloc();
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v22 = v12;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v12 = v22;
      if (isStackAllocationSafe)
      {
        goto LABEL_8;
      }
    }

    v16 = (a2 + a1);
    v17 = v12;
    memcpy(v12, v16, v9);
    (*(v8 + 16))(a4, v17, a3);

LABEL_15:
    JUMPOUT(0x26D69EAB0);
  }

  if (v12 >= 1025)
  {
    goto LABEL_12;
  }

LABEL_8:
  MEMORY[0x28223BE20](v12);
  v19 = &v24 - v18;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  memcpy(&v24 - v18, (a2 + a1), v9);
  (*(v8 + 16))(v11, v19, a3);
  v20 = *(v8 + 32);
  v20(v14, v11, a3);
  return (v20)(a4, v14, a3);
}

BOOL static Box.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  return v4 == *(a2 + 16);
}

uint64_t Box.value.getter()
{
  Box.opaque.getter();

  return swift_unknownObjectRetain();
}

uint64_t Box.__allocating_init(opaque:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t Box.init(opaque:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t Box.__allocating_init(wrappedValue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t (*Box.subscript.read())(void)
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return EventTreeStats.count.modify;
}

uint64_t (*Box.subscript.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Box.value.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Box.value.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t Box.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Box.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _Ref.value.getter in conformance Box<A>@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = Box.opaque.getter();

  return swift_unknownObjectRetain();
}

uint64_t (*protocol witness for _Ref.value.modify in conformance Box<A>(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = Box.value.modify();
  return protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>;
}

uint64_t protocol witness for OpaqueConvertable.init(opaque:) in conformance Box<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Box.__allocating_init(opaque:)(a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Box<A1>()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  Box.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _sSp21SwiftUITracingSupportRi_zrlExycisTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 - 8);
  (*(v8 + 8))(a2, a3);
  v6 = *(v8 + 32);

  return v6(a2, a1, a3);
}

uint64_t _Ref.init(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if (*(*(a2 - 8) + 64) == 8)
  {
    return (*(*(a2 - 8) + 16))(a3, &v3, a2);
  }

  __break(1u);
  return result;
}

uint64_t _Ref.hashValue.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  result = a1 - 8;
  if (*(v3 + 64) == 8)
  {
    return *v1;
  }

  __break(1u);
  return result;
}

uint64_t (*_Ref.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  (*(a3 + 32))(a2, a3);
  return _Ref.subscript.read;
}

uint64_t (*_Ref.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = (*(a3 + 48))();
  return UnsafeTree.storage.modify;
}

uint64_t _Ref.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 48))(v10);
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 24))(v6, a1, AssociatedTypeWitness);
  v4(v10, 0);
  return (*(v8 + 8))(a1, AssociatedTypeWitness);
}

BOOL static _Ref<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v6(&v9, a3, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6(&v9, a3, a4);
  return ObjCClassFromMetadata == swift_getObjCClassFromMetadata();
}

void (*Strong.wrappedValue.read(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Strong.value.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*Strong.wrappedValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Strong.value.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Strong.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized Strong.init(_:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t Strong.init(conditional:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    v14 = *(v5 + 8);
    v14(a1, v4);
    v14(v9, v4);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v9, a2);
    v16 = specialized Strong.init(_:)(v13, a2);
    (*(v5 + 8))(a1, v4);
    (*(v10 + 8))(v13, a2);
    return v16;
  }
}

uint64_t key path getter for UnownedSafe.value : <A>UnownedSafe<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for UnownedSafe();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectUnownedLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t (*UnownedSafe.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.subscript.modify;
}

uint64_t UnownedSafe.init(wrappedValue:)()
{
  swift_unknownObjectUnownedInit();

  return swift_unknownObjectRelease();
}

uint64_t UnownedSafe.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1;
  v3 = type metadata accessor for UnownedSafe();
  return (*(*(v3 - 8) + 16))(a2, &v5, v3);
}

uint64_t UnownedSafe.init(conditional:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    v3 = type metadata accessor for UnownedSafe();
    return (*(*(v3 - 8) + 32))(a2, v4, v3);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t (*UnownedSafe.subscript.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.subscript.modify;
}

uint64_t (*UnownedSafe.wrappedValue.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.wrappedValue.modify;
}

uint64_t UnownedSafe.wrappedValue.setter()
{
  swift_unknownObjectUnownedAssign();

  return swift_unknownObjectRelease();
}

BOOL static UnownedSafe.== infix(_:_:)()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return Strong == v1;
}

uint64_t protocol witness for _Ref.value.getter in conformance UnownedSafe<A>@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectUnownedLoadStrong();
  *a1 = result;
  return result;
}

uint64_t protocol witness for _Ref.value.setter in conformance UnownedSafe<A>(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectUnownedAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for _Ref.value.modify in conformance UnownedSafe<A>(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.subscript.modify;
}

uint64_t UnownedSafe.value.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectUnownedAssign();

  return swift_unknownObjectRelease();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UnownedSafe<A>()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return Strong == v1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnownedSafe<A>()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](*v0);
  return Hasher._finalize()();
}

uint64_t (*Unowned.value.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.subscript.modify;
}

uint64_t Unowned.init(conditional:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_unknownObjectRelease();
    return v1;
  }

  return result;
}

uint64_t (*Unowned.subscript.read(void *a1, uint64_t a2))()
{
  *a1 = a2;
  swift_unknownObjectRetain();
  return UnownedSafe.subscript.read;
}

uint64_t (*Unowned.subscript.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.subscript.modify;
}

uint64_t (*Unowned.wrappedValue.read(void *a1, uint64_t a2))()
{
  *a1 = a2;
  swift_unknownObjectRetain();
  return UnownedSafe.subscript.read;
}

uint64_t (*Unowned.wrappedValue.modify(void *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.wrappedValue.modify;
}

uint64_t Unowned.wrappedValue.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_unknownObjectRelease();
  *v2 = v1;
  return result;
}

uint64_t Unowned.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t protocol witness for _Ref.value.setter in conformance Unowned<A>(uint64_t *a1)
{
  v2 = *a1;
  result = swift_unknownObjectRelease();
  *v1 = v2;
  return result;
}

uint64_t (*protocol witness for _Ref.value.modify in conformance Unowned<A>(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.subscript.modify;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Strong<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  Hasher.init(_seed:)();
  a4(v7, *v4);
  return Hasher._finalize()();
}

uint64_t key path getter for Weak.value : <A>Weak<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for Weak();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t Weak.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*Weak.value.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return Weak.value.modify;
}

uint64_t Weak.value.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Weak.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Weak.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for Weak();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a2, v4);
  v7 = a1;
  return (*(v5 + 16))(a2, &v7, v4);
}

uint64_t Weak.init(conditional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  if (a1)
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v4 = type metadata accessor for Weak();
    result = (*(*(v4 - 8) + 32))(a2, v7, v4);
  }

  else
  {
    v6 = type metadata accessor for Weak();
    result = (*(*(v6 - 8) + 8))(v7, v6);
    *a2 = 0;
  }

  *(a2 + 8) = a1 == 0;
  return result;
}

uint64_t UnsafeArray.withUnsafeMutableBufferPointer<A>(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 3);
  v7 = *(a3 + 16);
  v8 = UnsafeBufferPointer.init(start:count:)();
  v11[0] = MEMORY[0x26D69D400](v8);
  v11[1] = v9;
  return a1(v11);
}

Swift::Void __swiftcall UnsafeArray.growToCapacity(_:)(Swift::Int a1)
{
  v3 = *(v2 + 8);
  if (v3 < a1 || (v3 | a1) == 0)
  {
    if (a1 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a1;
    }

    if (a1 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v6 = *v2;
      v7 = *(v2 + 12);
      v8 = *(v1 + 16);
      *(v2 + 8) = v5;
      if (!v6)
      {
        goto LABEL_15;
      }

      v9 = *(v8 - 8);
      v10 = v5;
      if (*(v9 + 82))
      {
        v13 = static UnsafeMutablePointer.allocate(capacity:)();
        *v2 = v13;
        if (v13)
        {
          UnsafeMutablePointer.moveInitialize(from:count:)();

LABEL_24:
          JUMPOUT(0x26D69D370);
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v11 = *(v9 + 72);
      if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
      {
        v12 = realloc(v6, v10 * v11);
        if (v12)
        {
LABEL_16:
          *v2 = v12;
          return;
        }

        __break(1u);
LABEL_15:
        v12 = static UnsafeMutablePointer.allocate(capacity:)();
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t UnsafeArray.bytesCapacity.getter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  result = a2 * v3;
  if ((a2 * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeArray.bytesCount.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  result = HIDWORD(a2) * v3;
  if ((HIDWORD(a2) * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for UnsafeArray.subscript(_:) : <A>UnsafeArray<A>A@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 >= *(result + 12))
  {
    __break(1u);
  }

  else if (*result)
  {
    v4 = *(*(a2 + a3 - 8) - 8);
    return (*(v4 + 16))(a4, *result + *(v4 + 72) * *a2);
  }

  __break(1u);
  return result;
}

uint64_t key path setter for UnsafeArray.subscript(_:) : <A>UnsafeArray<A>A(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v4 = *(*(a3 + a4 - 8) - 8);
    return (*(v4 + 24))(*a2 + *(v4 + 72) * *a3, result);
  }

  __break(1u);
  return result;
}

uint64_t UnsafeArray.subscript.setter(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return (*(*(a5 - 8) + 40))(a3 + *(*(a5 - 8) + 72) * a2, result, a5);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for UnsafeArray.subscript<A>(_:) : <A><A1>UnsafeArray<A>AA1@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v5 = *(a2 + a3 - 16);
  v38 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = swift_checkMetadataState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = *a1;
  v18 = *(v6 + 56);
  v19 = v6;
  v21 = v20;
  v18(v5, v19);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v40 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      if (v23 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v24 = v37;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v25 = *(*(v7 + 32) + 8);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v21 + 8))(v24, v11);
        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v28 = v37;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v29 = *(*(v7 + 32) + 8);
      v30 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v21 + 8))(v28, v11);
      if (v30)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v23 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v32 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v33 = v37;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v34 = *(*(v7 + 32) + 8);
    v35 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v21 + 8))(v33, v11);
    if (v35)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v32 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v36 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v21 + 8))(v16, v11);
  return (*(*(v38 - 8) + 16))(v39, v17 + *(*(v38 - 8) + 72) * v36);
}

uint64_t key path setter for UnsafeArray.subscript<A>(_:) : <A><A1>UnsafeArray<A>AA1(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v38 = *(a3 + a4 - 24);
  v39 = a1;
  v6 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = swift_checkMetadataState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = *a2;
  v18 = *(v6 + 56);
  v19 = v6;
  v21 = v20;
  v18(v5, v19);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v40 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      if (v23 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v24 = v37;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v25 = *(*(v7 + 32) + 8);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v21 + 8))(v24, v11);
        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v28 = v37;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v29 = *(*(v7 + 32) + 8);
      v30 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v21 + 8))(v28, v11);
      if (v30)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v23 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v32 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v33 = v37;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v34 = *(*(v7 + 32) + 8);
    v35 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v21 + 8))(v33, v11);
    if (v35)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v32 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v36 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v21 + 8))(v16, v11);
  return (*(*(v38 - 8) + 24))(v17 + *(*(v38 - 8) + 72) * v36, v39);
}

uint64_t UnsafeArray.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a1;
  v41 = a5;
  v39 = a3;
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(*(v10 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = swift_checkMetadataState();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v38 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v20 = *(a7 + 56);
  v42 = a2;
  v22 = v21;
  v20(a6, a7);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v43 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v23)
    {
      if (v24 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v25 = v38;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v26 = *(*(v10 + 32) + 8);
        v27 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v22 + 8))(v25, v14);
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v29 = v38;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v30 = *(*(v10 + 32) + 8);
      v31 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v22 + 8))(v29, v14);
      if (v31)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v24 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v33 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v32 & 1) == 0)
    {
      break;
    }

    if (v33 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v34 = v38;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v35 = *(*(v10 + 32) + 8);
    v36 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v22 + 8))(v34, v14);
    if (v36)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v33 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v37 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v22 + 8))(v19, v14);
  (*(*(v41 - 8) + 40))(v39 + *(*(v41 - 8) + 72) * v37, v40);
  return (*(*(a6 - 8) + 8))(v42, a6);
}

uint64_t UnsafeArray.popLast()(uint64_t a1)
{
  if (*(v1 + 3))
  {
    if (*v1)
    {
      v9 = *v1;
      v10 = *(v1 + 2);
      v11 = *(v1 + 3);
      WitnessTable = swift_getWitnessTable();
      ArrayLike.lastIndex.getter(a1, WitnessTable);
      v4 = *(*(*(a1 + 16) - 8) + 72);
      result = UnsafeMutablePointer.move()();
      v6 = *(v1 + 3);
      v7 = v6 != 0;
      v8 = v6 - 1;
      if (v7)
      {
        *(v1 + 3) = v8;
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance UnsafeArray<A>(uint64_t result, void *a2, uint64_t a3)
{
  if (*a2 >= *(v3 + 12))
  {
    __break(1u);
  }

  else if (*v3)
  {
    return (*(*(*(a3 + 16) - 8) + 40))(*v3 + *(*(*(a3 + 16) - 8) + 72) * *a2, result);
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeArray<A>(uint64_t a1, void *a2, uint64_t a3))()
{
  if (*a2 >= *(v3 + 12))
  {
    __break(1u);
  }

  else if (*v3)
  {
    v4 = *v3 + *(*(*(a3 + 16) - 8) + 72) * *a2;
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance UnsafeArray<A>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v6 = *a2;
  v7 = v4;
  return specialized MutableCollection<>.subscript.setter(&v7, &v6, a3, a4);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeArray<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>;
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(a4 + 8);
  v13 = type metadata accessor for Slice();
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for Range();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v11[8] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[9] = v21;
  (*(v20 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v17);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v14 = (*a1)[7];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v12 = *(v4 + 8);
    v12(v3, v8);
    (*(v6 + 8))(v5, v14);
    v12(v7, v8);
  }

  else
  {
    v13 = v2[3];
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v14);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UnsafeArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  specialized UnsafeArray.init(arrayLiteral:)(a1, *(a2 + 16));
  v5 = v4;
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance UnsafeArray<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = *a1;
  v5[1] = a1[1];
  return Clonable.init(copying:)(v5, a2, a3, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeArray<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeArray<A>(uint64_t *a1)
{
  v2 = *a1;
  swift_getWitnessTable();
  return RandomAccessCollection<>.index(before:)();
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(_:offsetBy:)();
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyxGSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC6F0](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.distance(from:to:)();
}

unint64_t protocol witness for Collection.endIndex.getter in conformance UnsafeArray<A>@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = UnsafeArray.count.getter(a1, *(v2 + 8));
  *a2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance UnsafeArray<A>(void *a1, unint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = UnsafeArray.subscript.read(v7, *a2, *v3, *(v3 + 8), *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance UnsafeArray<A>;
}

void protocol witness for Collection.subscript.read in conformance UnsafeArray<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*UnsafeArray.subscript.read(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5))()
{
  v9 = HIDWORD(a4);
  v10 = *(a5 - 8);
  v11 = v10;
  *a1 = a5;
  a1[1] = v10;
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v10 + 64));
  }

  a1[2] = result;
  if (v9 <= a2)
  {
    __break(1u);
  }

  else if (a3)
  {
    (*(v11 + 16))(result, a3 + *(v11 + 72) * a2, a5);
    return UnsafeArray.subscript.read;
  }

  __break(1u);
  return result;
}

void _Ref.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v50 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v44 = *(AssociatedTypeWitness - 8);
  v14 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  swift_getAssociatedConformanceWitness();
  v47 = type metadata accessor for Range();
  v45 = *(v47 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v22 = &v39 - v21;
  dispatch thunk of Collection.startIndex.getter();
  v51 = v4;
  v48 = v6;
  v49 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v44;
    v25 = *(v44 + 32);
    v25(v13, v19, AssociatedTypeWitness);
    v26 = TupleTypeMetadata2;
    v25(&v13[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
    v27 = v25;
    v28 = v46;
    v29 = v42;
    (*(v46 + 16))(v42, v13, v26);
    v40 = *(v26 + 48);
    v27(v22, v29, AssociatedTypeWitness);
    v41 = v27;
    v30 = *(v24 + 8);
    v30(&v29[v40], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v13, v26);
    v31 = v47;
    v27(&v22[*(v47 + 36)], &v29[*(v26 + 48)], AssociatedTypeWitness);
    v30(v29, AssociatedTypeWitness);
    v32 = v51;
    v33 = v52;
    v34 = v49;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v35 = v45;
    (*(v45 + 8))(v22, v31);
    v36 = type metadata accessor for Slice();
    v37 = v50;
    (*(*(v34 - 8) + 16))(&v50[*(v36 + 40)], v32, v34);
    (*(v35 + 16))(v22, v33, v31);
    v38 = v41;
    v41(v37, v22, AssociatedTypeWitness);
    return v38(&v37[*(v36 + 36)], &v22[*(v31 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance UnsafeArray<A>@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = UnsafeArray.indices.getter();
  *a1 = 0;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeArray<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x277D83D00], MEMORY[0x277D83608]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x277D83638], MEMORY[0x277D83618]);
}

void *protocol witness for Collection.index(after:) in conformance UnsafeArray<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance UnsafeArray<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance UnsafeArray<A>(__int128 *a1, int64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ArrayLike.describe(state:)(a1, a2, WitnessTable);
}

uint64_t ArrayLike.describe(state:)(__int128 *a1, int64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v59 - v16;
  v18 = a1[1];
  v72 = *a1;
  v73[0] = v18;
  *(v73 + 10) = *(a1 + 26);
  if (v72 < 1)
  {
    return ArrayLike.basicDescription()()._countAndFlagsBits;
  }

  v19 = *(v12 + 8);
  v20 = swift_getAssociatedTypeWitness();
  if (!swift_conformsToProtocol2() || v20 == 0)
  {
    return ArrayLike.basicDescription()()._countAndFlagsBits;
  }

  v67 = v3;
  if (dispatch thunk of Collection.count.getter() < 1)
  {
    return ArrayLike.basicDescription()()._countAndFlagsBits;
  }

  (*(v7 + 16))(v10, v67, v5);
  v63 = *(&v72 + 1);
  Collection.prefix(_:)();
  v22 = v12;
  v23 = &v59;
  v24 = MEMORY[0x28223BE20](v22);
  *(&v59 - 4) = v5;
  *(&v59 - 3) = a3;
  *(&v59 - 2) = &v72;
  v68 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayLike.describe(state:), (&v59 - 6), AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v26);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  v28 = v27 + 5;
  v29 = -v27[2];
  v30 = -1;
  do
  {
    v31 = v29 + v30;
    if (v29 + v30 == -1)
    {
      break;
    }

    if (++v30 >= v27[2])
    {
      __break(1u);
      goto LABEL_36;
    }

    v23 = (v28 + 2);
    v33 = *(v28 - 1);
    v32 = *v28;

    v20 = String.count.getter();

    v28 = v23;
  }

  while (v20 < 56);
  v70 = 9051;
  v71 = 0xE200000000000000;
  v23 = v68;
  v62 = v5;
  v69 = dispatch thunk of Collection.count.getter();
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v35;
  MEMORY[0x26D69CDB0](v34);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v10 = v70;
  v36 = v71;
  if (v31 == -1)
  {
    v70 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v43 = BidirectionalCollection<>.joined(separator:)();
    v45 = v44;

    v46 = 0;
    v47 = 0xE000000000000000;
  }

  else
  {
    v60 = v71;
    v61 = v70;
    v37 = String.count.getter();
    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    v39 = String.init(repeating:count:)(v38, v37);
    countAndFlagsBits = v39._countAndFlagsBits;
    v5 = v27[2];
    if (v5)
    {
      object = v39._object;
      v69 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v64 = v27[2];
      if (!v64)
      {
        goto LABEL_36;
      }

      v40 = v69;
      v31 = v27[4];
      v10 = v27[5];
      v29 = *(v69 + 16);
      v23 = *(v69 + 24);
      v20 = v29 + 1;

      if (v29 >= v23 >> 1)
      {
        goto LABEL_38;
      }

      while (1)
      {
        *(v40 + 16) = v20;
        v41 = v40 + 16 * v29;
        *(v41 + 32) = v31;
        *(v41 + 40) = v10;
        if (v5 == 1)
        {
          break;
        }

        v29 = (v27 + 7);
        v31 = 1;
        while (v64 != v31)
        {
          if (v31 >= v27[2])
          {
            goto LABEL_37;
          }

          v54 = *(v29 - 8);
          v53 = *v29;
          v70 = countAndFlagsBits;
          v71 = object;

          MEMORY[0x26D69CDB0](v54, v53);
          v10 = v70;
          v55 = v71;
          v69 = v40;
          v57 = *(v40 + 16);
          v56 = *(v40 + 24);
          v20 = v57 + 1;
          if (v57 >= v56 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
            v40 = v69;
          }

          ++v31;
          *(v40 + 16) = v20;
          v58 = v40 + 16 * v57;
          *(v58 + 32) = v10;
          *(v58 + 40) = v55;
          v29 += 16;
          v23 = v68;
          if (v5 == v31)
          {
            goto LABEL_16;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v20, 1);
        v40 = v69;
      }

LABEL_16:
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v70 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v46 = 10;
    v47 = 0xE100000000000000;
    v43 = BidirectionalCollection<>.joined(separator:)();
    v45 = v48;

    v36 = v60;
    v10 = v61;
  }

  v70 = v10;
  v71 = v36;
  MEMORY[0x26D69CDB0](v43, v45);

  MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
  v49 = dispatch thunk of Collection.count.getter();
  v50 = v63 < v49;
  if (v63 >= v49)
  {
    v51 = 0;
  }

  else
  {
    v51 = 3026478;
  }

  if (v50)
  {
    v52 = 0xE300000000000000;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v51, v52);

  MEMORY[0x26D69CDB0](v46, v47);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v70;
}

double protocol witness for Sequence.makeIterator() in conformance UnsafeArray<A>@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance UnsafeArray<A>()
{
  swift_getWitnessTable();

  return Collection.underestimatedCount.getter();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeArray<A>()
{
  v2 = *v0;
  v3 = v0[1];
  swift_getWitnessTable();
  return specialized Collection._copyToContiguousArray()();
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance UnsafeArray<A>(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  return MEMORY[0x26D69CEF0](a1, a2);
}

void UnsafeArray<A>.zero(count:)(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(a1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 12) = a1;
  v3 = *(*(*(a2 + 16) - 8) + 72);
  if ((a1 * v3) >> 64 == (a1 * v3) >> 63)
  {
    bzero(*v2, a1 * v3);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t UnsafeArray<A>.init(zeros:)(unint64_t a1)
{
  result = UnsafeArray.init(capacity:)(a1);
  v4 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a1))
  {
    v3 = type metadata accessor for UnsafeArray();
    UnsafeArray<A>.zero(count:)(a1, v3);
    return v4;
  }

  __break(1u);
  return result;
}

void UnsafeArray<A>.zero()()
{
  v1 = *(v0 + 12);
  specialized UnsafeArray.growToCapacity(_:)(v1);
  *(v0 + 12) = v1;
  v2 = *v0;

  bzero(v2, 8 * v1);
}

void UnsafeArray<A>.zero(count:)(unint64_t a1)
{
  specialized UnsafeArray.growToCapacity(_:)(a1);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v1 + 12) = a1;
  v3 = *v1;

  bzero(v3, 8 * a1);
}

unint64_t UnsafeArray<A>.init(zeros:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = result;
  if (HIDWORD(result))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (result)
  {
    v2 = 8 * result;
    v3 = swift_slowAlloc();
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = v3;
  specialized UnsafeArray.growToCapacity(_:)(v1);
  bzero(v4, v2);
  return v4;
}

uint64_t EnumeratedReversedIterator.init(collection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  v12 = *(a2 - 8);
  (*(v12 + 16))(a4, a1, a2);
  dispatch thunk of Collection.endIndex.getter();
  v13 = a4 + *(type metadata accessor for EnumeratedReversedIterator() + 36);
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v12 + 8))(a1, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t $defer #1 <A>() in EnumeratedReversedIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  (*(v4 + 16))(v7, a1, a2);
  v18 = *(type metadata accessor for EnumeratedReversedIterator() + 36);
  (*(v11 + 16))(v15, a1 + v18, AssociatedTypeWitness);
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v11 + 8))(v15, AssociatedTypeWitness);
  (*(v4 + 8))(v7, a2);
  return (*(v11 + 40))(a1 + v18, v17, AssociatedTypeWitness);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance EnumeratedReversedIterator<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EnumeratedReversedIterator.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance EnumeratedReversedIterator<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t ArrayLike.mutLast(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v16[-v11];
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    ArrayLike.lastIndex.getter(a3, a4);
    v14 = dispatch thunk of MutableCollection.subscript.modify();
    a1(v15);
    v14(v16, 0);
    return (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t ArrayLike.mut(i:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a2;
  v6 = *(a5 + 8);
  v31 = a1;
  v32 = v6;
  v7 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v29 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - v22;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v24 = *(a5 + 16);
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:limitedBy:)();
  v25 = *(v14 + 8);
  v25(v18, AssociatedTypeWitness);
  v25(v21, AssociatedTypeWitness);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v29 + 8))(v13, v30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v23, v13, AssociatedTypeWitness);
    v26 = dispatch thunk of MutableCollection.subscript.modify();
    v34(v27);
    v26(v35, 0);
    return (v25)(v23, AssociatedTypeWitness);
  }

  return result;
}

uint64_t ArrayLike.eachIndex(start:end:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a2;
  v51 = a4;
  v44 = a3;
  v52 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v43 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v53 = &v42 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v42 = v9;
  v24 = *(v9 + 16);
  v48 = v25;
  v45 = v24;
  (v24)(v15, a1);
  v26 = *(v16 + 48);
  v27 = v26(v15, 1, AssociatedTypeWitness);
  v49 = v16;
  if (v27 == 1)
  {
    v28 = v46;
    dispatch thunk of Collection.startIndex.getter();
    if (v26(v15, 1, AssociatedTypeWitness) != 1)
    {
      (*(v42 + 8))(v15, v48);
    }
  }

  else
  {
    (*(v16 + 32))(v23, v15, AssociatedTypeWitness);
    v28 = v46;
  }

  v29 = v50;
  v45(v50, v47, v48);
  if (v26(v29, 1, AssociatedTypeWitness) == 1)
  {
    v30 = v53;
    dispatch thunk of Collection.endIndex.getter();
    v31 = v50;
    v32 = v30;
    if (v26(v50, 1, AssociatedTypeWitness) != 1)
    {
      (*(v42 + 8))(v31, v48);
    }
  }

  else
  {
    v32 = v53;
    (*(v49 + 32))(v53, v29, AssociatedTypeWitness);
  }

  v33 = *(swift_getAssociatedConformanceWitness() + 8);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = (v49 + 8);
  if (v34)
  {
    v36 = *v35;
    (*v35)(v32, AssociatedTypeWitness);
  }

  else
  {
    v50 = v33;
    v37 = v28;
    v38 = (v49 + 32);
    v49 = v35 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = v43;
    v39 = v44;
    do
    {
      v39(v23, v37);
      dispatch thunk of Collection.index(after:)();
      v36 = *v35;
      (*v35)(v23, AssociatedTypeWitness);
      (*v38)(v23, v40, AssociatedTypeWitness);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v36(v53, AssociatedTypeWitness);
  }

  return (v36)(v23, AssociatedTypeWitness);
}

uint64_t ArrayLike.mutEachI(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v62 = a2;
  v51 = *(a4 + 8);
  v63 = *(v51 + 8);
  v54 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v60 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v48 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v26 = *(v5 + 56);
  v26(&v48 - v24, 1, 1, AssociatedTypeWitness);
  v58 = v23;
  v26(v23, 1, 1, AssociatedTypeWitness);
  v56 = v25;
  v57 = v14;
  v27 = *(v14 + 16);
  v59 = v13;
  v52 = v27;
  v27(v20, v25, v13);
  v28 = *(v5 + 48);
  v29 = v28(v20, 1, AssociatedTypeWitness);
  v53 = v28;
  if (v29 == 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    v49 = v20;
    v30 = v28(v20, 1, AssociatedTypeWitness);
    v31 = v59;
    if (v30 != 1)
    {
      v32 = v59;
      (*(v57 + 8))(v49, v59);
      v31 = v32;
    }
  }

  else
  {
    (*(v5 + 32))(v12, v20, AssociatedTypeWitness);
    v31 = v59;
  }

  v33 = v60;
  v52(v60, v58, v31);
  v34 = v53;
  if (v53(v33, 1, AssociatedTypeWitness) == 1)
  {
    v35 = v64;
    dispatch thunk of Collection.endIndex.getter();
    v36 = v60;
    v37 = v34(v60, 1, AssociatedTypeWitness);
    v38 = v35;
    v39 = v59;
    if (v37 != 1)
    {
      (*(v57 + 8))(v36, v59);
    }
  }

  else
  {
    v38 = v64;
    (*(v5 + 32))(v64, v33, AssociatedTypeWitness);
    v39 = v59;
  }

  v40 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v41 = *(v5 + 8);
    v41(v38, AssociatedTypeWitness);
  }

  else
  {
    v42 = (v5 + 8);
    v43 = (v5 + 32);
    v55 = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v50;
    v60 = v40;
    do
    {
      v45 = dispatch thunk of MutableCollection.subscript.modify();
      v61(v12);
      v45(v65, 0);
      dispatch thunk of Collection.index(after:)();
      v41 = *v42;
      (*v42)(v12, AssociatedTypeWitness);
      (*v43)(v12, v44, AssociatedTypeWitness);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v39 = v59;
    v41(v64, AssociatedTypeWitness);
  }

  v41(v12, AssociatedTypeWitness);
  v46 = *(v57 + 8);
  v46(v58, v39);
  return (v46)(v56, v39);
}

uint64_t ArrayLike.mutEachIPair(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v61 = a1;
  v59 = a4;
  v6 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v70 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = type metadata accessor for Optional();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v58 = &v53 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  result = dispatch thunk of Collection.count.getter();
  if (result >= 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    v67 = v6;
    dispatch thunk of Collection.index(after:)();
    v28 = v64;
    v29 = *(v64 + 8);
    v57 = v15;
    v68 = v29;
    v69 = v64 + 8;
    v29(v15, AssociatedTypeWitness);
    v30 = *(v28 + 56);
    v30(v26, 0, 1, AssociatedTypeWitness);
    v62 = v24;
    v30(v24, 1, 1, AssociatedTypeWitness);
    v31 = *(v65 + 16);
    v55 = v65 + 16;
    v56 = v26;
    v63 = v16;
    v32 = v58;
    v54 = v31;
    v31();
    v33 = *(v28 + 48);
    if (v33(v32, 1, AssociatedTypeWitness) == 1)
    {
      dispatch thunk of Collection.startIndex.getter();
      v34 = v33(v32, 1, AssociatedTypeWitness);
      v35 = v70;
      v36 = v63;
      if (v34 != 1)
      {
        v37 = v33;
        v38 = v63;
        (*(v65 + 8))(v32, v63);
        v36 = v38;
        v33 = v37;
      }
    }

    else
    {
      (*(v28 + 32))(v13, v32, AssociatedTypeWitness);
      v35 = v70;
      v36 = v63;
    }

    v39 = v66;
    (v54)(v66, v62, v36);
    v40 = AssociatedTypeWitness;
    if (v33(v39, 1, AssociatedTypeWitness) == 1)
    {
      v41 = v4;
      dispatch thunk of Collection.endIndex.getter();
      if (v33(v39, 1, v40) != 1)
      {
        (*(v65 + 8))(v39, v63);
      }
    }

    else
    {
      v41 = v4;
      (*(v64 + 32))(v35, v39, v40);
    }

    v66 = *(swift_getAssociatedConformanceWitness() + 8);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = v59;
    v44 = v60;
    v45 = a3;
    v46 = v61;
    v47 = v41;
    v48 = v57;
    if ((v42 & 1) == 0)
    {
      v49 = (v64 + 32);
      do
      {
        closure #1 in ArrayLike.mutEachIPair(_:)(v13, v47, v46, v44, v45, v43);
        dispatch thunk of Collection.index(after:)();
        v68(v13, v40);
        (*v49)(v13, v48, v40);
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    }

    v50 = v68;
    v68(v70, v40);
    v50(v13, v40);
    v51 = *(v65 + 8);
    v52 = v63;
    v51(v62, v63);
    return (v51)(v56, v52);
  }

  return result;
}

uint64_t closure #1 in ArrayLike.mutEachIPair(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[2] = a4;
  v25 = a3;
  v7 = *(a6 + 8);
  v24[0] = a1;
  v24[1] = v7;
  v8 = *(*(v7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v24 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v19 = *(*(a6 + 16) + 8);
  v20 = v24[0];
  dispatch thunk of BidirectionalCollection.index(before:)();
  v21 = dispatch thunk of Collection.subscript.read();
  (*(v10 + 16))(v13);
  v21(v26, 0);
  (*(v15 + 8))(v18, v14);
  v22 = dispatch thunk of MutableCollection.subscript.modify();
  v25(v20);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return v22(v26, 0);
}

uint64_t static Pair<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v15 = *(a4 + 24);
  v15(a3, a4);
  v15(a3, a4);
  LOBYTE(v15) = dispatch thunk of static Comparable.< infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v12, AssociatedTypeWitness);
  v16(v14, AssociatedTypeWitness);
  return v15 & 1;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance [A](__int128 *a1, int64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ArrayLike.describe(state:)(a1, a2, WitnessTable);
}

uint64_t IterativeTreeTraversal.toVisit.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t key path getter for IterativeTreeTraversal.visitor : <A, B>IterativeTreeTraversal<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ();
  a4[1] = v8;
}

uint64_t key path setter for IterativeTreeTraversal.visitor : <A, B>IterativeTreeTraversal<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v9 = *(a2 + 16);

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (@out ());
  *(a2 + 16) = v8;
  return result;
}

uint64_t IterativeTreeTraversal.visitor.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t IterativeTreeTraversal.visitor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t key path getter for IterativeTreeTraversal.revisitor : <A, B>IterativeTreeTraversal<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, uint64_t a2, uint64_t a3)@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ();
  a4[1] = v8;
}

uint64_t key path setter for IterativeTreeTraversal.revisitor : <A, B>IterativeTreeTraversal<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v9 = *(a2 + 32);

  *(a2 + 24) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @in_guaranteed IterativeTreeTraversal<A, B>) -> (@out ());
  *(a2 + 32) = v8;
  return result;
}

uint64_t IterativeTreeTraversal.revisitor.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t IterativeTreeTraversal.revisitor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t key path getter for IterativeTreeTraversal.backtraceCallback : <A, B>IterativeTreeTraversal<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, uint64_t a2)@<X8>)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t, void, void))
{
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a3(v9, a2, a2 + TupleTypeMetadata[12], *(a2 + TupleTypeMetadata[16]), *(a2 + TupleTypeMetadata[20]));
}

uint64_t key path setter for IterativeTreeTraversal.backtraceCallback : <A, B>IterativeTreeTraversal<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed (index: A, B, returnAfter: Int, depth: Int)) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v5);
  result = outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10);
  *(a2 + 40) = v9;
  *(a2 + 48) = v8;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed (index: A, B, returnAfter: Int, depth: Int)) -> (@out ())(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a6;
  strcpy(v25, "index  returnAfter depth ");
  *&v26 = a8;
  *(&v26 + 1) = a9;
  *&v27 = MEMORY[0x277D83B88];
  *(&v27 + 1) = MEMORY[0x277D83B88];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = *(TupleTypeMetadata - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v19 = &v23 - v18;
  v20 = a1[3];
  v28 = a1[2];
  v29 = v20;
  v30 = a1[4];
  v31 = *(a1 + 10);
  v21 = a1[1];
  v26 = *a1;
  v27 = v21;
  (*(*(a8 - 8) + 16))(&v23 - v18, a2, a8);
  (*(*(a9 - 8) + 16))(&v19[TupleTypeMetadata[12]], a3, a9);
  *&v19[TupleTypeMetadata[16]] = a4;
  *&v19[TupleTypeMetadata[20]] = a5;
  v24(&v26, v19);
  return (*(v16 + 8))(v19, TupleTypeMetadata);
}

uint64_t IterativeTreeTraversal.backtraceCallback.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v1);
  return v1;
}

uint64_t IterativeTreeTraversal.backtraceCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  result = outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(*(v2 + 40));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t IterativeTreeTraversal.toRevisit.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

double IterativeTreeTraversal.init(visitor:revisitor:revisitLeaf:backtraceCallback:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  swift_getTupleTypeMetadata3();
  v14 = Array.init()();
  swift_getTupleTypeMetadata();
  *(&v29 + 11) = v23;
  HIBYTE(v29) = v24;
  *&v25 = v14;
  *(&v25 + 1) = a1;
  *&v26 = a2;
  *(&v26 + 1) = a3;
  *&v27 = a4;
  *(&v27 + 1) = a6;
  *&v28 = a7;
  *(&v28 + 1) = Array.init()();
  *&v29 = 0;
  BYTE8(v29) = a5;
  *(&v29 + 9) = 0;
  v30 = 0;
  v31[0] = v14;
  v31[1] = a1;
  v31[2] = a2;
  v31[3] = a3;
  v31[4] = a4;
  v31[5] = a6;
  v32 = __PAIR128__(*(&v28 + 1), a7);
  v33 = 0;
  v34 = a5;
  v35 = 0;
  v36 = v23;
  v37 = v24;
  v38 = 0;
  v15 = type metadata accessor for IterativeTreeTraversal();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v22, &v25, v15);
  (*(v16 + 8))(v31, v15);
  v17 = v28;
  *(a8 + 32) = v27;
  *(a8 + 48) = v17;
  *(a8 + 64) = v29;
  *(a8 + 80) = v30;
  result = *&v25;
  v19 = v26;
  *a8 = v25;
  *(a8 + 16) = v19;
  return result;
}

uint64_t closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (**a7)(char *, char *, uint64_t), char *a8, void (**a9)(char *, uint64_t), __int128 a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a10;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v16, a1, a2, a5, a6, a7, a8, a9, a10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, int a5, uint64_t a6, void (**a7)(char *, char *, uint64_t), char *a8, void (**a9)(char *, uint64_t), __int128 a10)
{
  v131 = a8;
  v123 = a7;
  v124 = a3;
  LODWORD(v128) = a5;
  v127 = a1;
  v130 = a9;
  strcpy(v134, "index  returnAfter depth ");
  v149 = a10;
  *&v150 = MEMORY[0x277D83B88];
  *(&v150 + 1) = MEMORY[0x277D83B88];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v129 = *(TupleTypeMetadata - 8);
  v14 = *(v129 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v114 = &v108 - v15;
  v132 = a10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = type metadata accessor for Optional();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v117 = &v108 - v20;
  v115 = *(*(&a10 + 1) - 8);
  v21 = *(v115 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v126 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v119 = &v108 - v25;
  v26 = *(a10 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v125 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v118 = &v108 - v30;
  v133 = TupleTypeMetadata;
  v31 = type metadata accessor for Optional();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v108 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v108 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v110 = &v108 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v121 = &v108 - v40;
  v122 = *(TupleTypeMetadata3 - 8);
  v41 = *(v122 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v108 - v42;
  v44 = a4;

  v45 = v123;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  v106 = *(&a10 + 1);
  v46 = v44;
  v47 = v45;
  v48 = v132;
  IterativeTreeTraversal.init(visitor:revisitor:revisitLeaf:backtraceCallback:)(v124, v46, v127, a2, v128, a6, v45, v144);
  LODWORD(v128) = BYTE10(v147);
  v49 = *(&v145 + 1);
  v140 = v145;
  v141 = v146;
  v142 = v147;
  v143 = v148;
  v138 = v144[0];
  v139 = v144[1];
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6);
  v50 = TupleTypeMetadata3;
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v49);
  *(&v140 + 1) = a6;
  *&v141 = v47;
  v51 = *(TupleTypeMetadata3 + 48);
  v52 = *(TupleTypeMetadata3 + 64);
  v53 = *(v26 + 16);
  v26 += 16;
  v112 = v53;
  v53(v43, v131, v48);
  v55 = v115 + 16;
  v54 = *(v115 + 16);
  v131 = *(&a10 + 1);
  v111 = v54;
  v54(&v43[v51], v130, *(&a10 + 1));
  v56 = v55;
  *&v43[v52] = 0;
  v127 = v50;
  v57 = type metadata accessor for Array();
  Array.append(_:)();
  v58 = (v55 - 8);
  v129 += 48;
  v130 = (v26 - 8);
  v115 = v56;
  v116 = (v122 + 48);
  v113 = v26;
  v123 = (v56 + 16);
  v124 = (v26 + 16);
  v122 = v57;
  v120 = v58;
  while (1)
  {
    v59 = v138;
    *&v135[0] = v138;
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      *&v135[0] = *(&v141 + 1);
      type metadata accessor for Array();
      swift_getWitnessTable();
      if (Collection.isEmpty.getter())
      {
        goto LABEL_27;
      }
    }

    *&v135[0] = v59;
    if (Collection.isEmpty.getter())
    {
      goto LABEL_18;
    }

    v60 = *(&v141 + 1);
    *&v135[0] = *(&v141 + 1);
    v61 = type metadata accessor for Array();
    swift_getWitnessTable();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v137 = v60;
      if (Collection.isEmpty.getter())
      {
        goto LABEL_18;
      }

      v137 = v60;
      swift_getWitnessTable();
      v62 = v108;
      BidirectionalCollection.last.getter();
      result = (*v129)(v62, 1, v133);
      if (result == 1)
      {
        goto LABEL_33;
      }

      v64 = *&v62[v133[16]];
      (*v58)(&v62[v133[12]], v131);
      (*v130)(v62, v132);
      if (!v64)
      {
        goto LABEL_18;
      }
    }

    WitnessTable = swift_getWitnessTable();
    v66 = swift_getWitnessTable();
    v67 = v117;
    MEMORY[0x26D69D230](v57, WitnessTable, v66);
    result = (*v116)(v67, 1, v127);
    if (result == 1)
    {
      goto LABEL_30;
    }

    v68 = *(v127 + 48);
    v69 = *&v67[*(v127 + 64)];
    v70 = v125;
    (*v124)(v125, v67, v132);
    v71 = v126;
    (*v123)(v126, &v67[v68], v131);
    BYTE9(v142) = 1;
    v143 = BYTE8(v142);
    *&v142 = v69;
    v72 = *(&v138 + 1);

    v72(v70, v71, &v138);

    if (BYTE10(v142) == 1)
    {
      (*v58)(v126, v131);
      (*v130)(v125, v132);
LABEL_27:
      v135[2] = v140;
      v135[3] = v141;
      v135[4] = v142;
      v136 = v143;
      v135[0] = v138;
      v135[1] = v139;
      v105 = type metadata accessor for IterativeTreeTraversal();
      return (*(*(v105 - 8) + 8))(v135, v105);
    }

    BYTE9(v142) = 0;
    v73 = v143;
    if (!v143)
    {
      MEMORY[0x28223BE20](result);
      v83 = v131;
      v84 = v132;
      v106 = v132;
      v107 = v131;
      Array.mutLast(_:)(partial apply for closure #1 in IterativeTreeTraversal._run(_:_:), (&v108 - 4), v61);
      (*v58)(v126, v83);
      (*v130)(v125, v84);
      goto LABEL_17;
    }

    if (BYTE8(v142) == 1)
    {
      break;
    }

LABEL_15:
    v74 = v132;
    v75 = v133[12];
    v76 = v133[16];
    v128 = v61;
    v77 = v133[20];
    v78 = v114;
    v79 = v125;
    v112(v114, v125, v132);
    v80 = &v78[v75];
    v81 = v126;
    v82 = v131;
    v111(v80, v126, v131);
    *&v78[v76] = v73;
    *&v78[v77] = v69;
    v58 = v120;
    Array.append(_:)();
    (*v58)(v81, v82);
    (*v130)(v79, v74);
LABEL_17:
    LODWORD(v128) = 0;
    v57 = v122;
LABEL_18:
    v85 = *(&v141 + 1);
    *&v135[0] = *(&v141 + 1);
    v86 = type metadata accessor for Array();
    swift_getWitnessTable();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      *&v135[0] = v85;
      v87 = swift_getWitnessTable();
      v88 = v121;
      BidirectionalCollection.last.getter();
      v89 = *v129;
      result = (*v129)(v88, 1, v133);
      if (result == 1)
      {
        goto LABEL_29;
      }

      v90 = *&v88[v133[16]];
      v91 = *v58;
      (*v58)(&v88[v133[12]], v131);
      v92 = v88;
      v93 = *v130;
      (*v130)(v92, v132);
      if (!v90)
      {
        *&v135[0] = v85;
        v94 = v110;
        BidirectionalCollection.last.getter();
        result = v89(v94, 1, v133);
        if (result == 1)
        {
          goto LABEL_31;
        }

        v95 = v133[12];
        v96 = *&v94[v133[20]];
        v97 = v118;
        (*v124)(v118, v94, v132);
        v98 = &v94[v95];
        v99 = v119;
        (*v123)(v119, v98, v131);
        *&v142 = v96;
        v151 = v140;
        v152 = v141;
        v154 = v143;
        v149 = v138;
        v150 = v139;
        v153 = v142;
        (*(&v139 + 1))(v97, v99, &v149);
        if (v128)
        {
          v91(v119, v131);
          v93(v118, v132);
          goto LABEL_27;
        }

        v100 = swift_getWitnessTable();
        v101 = v109;
        MEMORY[0x26D69D230](v86, v87, v100);
        result = v89(v101, 1, v133);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v102 = v131;
        v58 = v120;
        v91(&v101[v133[12]], v131);
        v103 = v132;
        v104 = (v93)(v101, v132);
        MEMORY[0x28223BE20](v104);
        v106 = v103;
        v107 = v102;
        Array.mutLast(_:)(partial apply for closure #1 in IterativeTreeTraversal._run(_:_:), (&v108 - 4), v86);
        v91(v119, v102);
        v93(v118, v103);
        LODWORD(v128) = 0;
        v57 = v122;
      }
    }
  }

  v73 = v143 - 1;
  if (!__OFSUB__(v143, 1))
  {
    --v143;
    goto LABEL_15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t IterativeTreeTraversal._run(_:_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a1;
  v122 = a2;
  strcpy(v124, "index  returnAfter depth ");
  v5 = *(a3 + 24);
  *&v127 = *(a3 + 16);
  v6 = v127;
  *(&v127 + 1) = v5;
  *&v128 = MEMORY[0x277D83B88];
  *(&v128 + 1) = MEMORY[0x277D83B88];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v119 = *(TupleTypeMetadata - 8);
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v105 = &v98 - v9;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v108 = &v98 - v14;
  v15 = *(v5 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v111 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v116 = &v98 - v20;
  v21 = *(v6 - 1);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v110 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v106 = &v98 - v25;
  v123 = TupleTypeMetadata;
  v26 = type metadata accessor for Optional();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v99 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v100 = &v98 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v98 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v98 = &v98 - v36;
  v115 = *(TupleTypeMetadata3 - 8);
  v37 = *(v115 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v98 - v38;
  v40 = *(TupleTypeMetadata3 + 48);
  v41 = *(TupleTypeMetadata3 + 64);
  v42 = *(v21 + 16);
  v21 += 16;
  v43 = v121;
  v121 = v6;
  v102 = v42;
  v42(&v98 - v38, v43, v6);
  v44 = *(v15 + 16);
  v15 += 16;
  v120 = v5;
  v101 = v44;
  v44(&v39[v40], v122, v5);
  *&v39[v41] = 0;
  v117 = TupleTypeMetadata3;
  v122 = type metadata accessor for Array();
  Array.append(_:)();
  v118 = (v119 + 48);
  v119 = v15 - 8;
  v45 = (v21 - 8);
  v107 = (v115 + 48);
  v103 = v21;
  v115 = v21 + 16;
  v46 = v34;
  v104 = v15;
  v114 = (v15 + 16);
  v112 = v34;
  v113 = v45;
  while (1)
  {
    v47 = *v4;
    v126 = *v4;
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      v126 = v4[7];
      type metadata accessor for Array();
      swift_getWitnessTable();
      result = Collection.isEmpty.getter();
      if (result)
      {
        return result;
      }
    }

    v126 = v47;
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v49 = v4[7];
      v126 = v49;
      v50 = type metadata accessor for Array();
      swift_getWitnessTable();
      if (Collection.isEmpty.getter())
      {
        goto LABEL_9;
      }

      v125 = v49;
      if ((Collection.isEmpty.getter() & 1) == 0)
      {
        v125 = v49;
        swift_getWitnessTable();
        v51 = v98;
        BidirectionalCollection.last.getter();
        result = (*v118)(v51, 1, v123);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v52 = *&v51[v123[16]];
        (*v119)(&v51[v123[12]], v120);
        (*v45)(v51, v121);
        if (v52)
        {
LABEL_9:
          v53 = v122;
          WitnessTable = swift_getWitnessTable();
          v55 = swift_getWitnessTable();
          v56 = v108;
          MEMORY[0x26D69D230](v53, WitnessTable, v55);
          result = (*v107)(v56, 1, v117);
          if (result == 1)
          {
            goto LABEL_29;
          }

          v57 = *(v117 + 48);
          v58 = *&v56[*(v117 + 64)];
          v59 = v106;
          (*v115)(v106, v56, v121);
          v60 = v116;
          (*v114)(v116, &v56[v57], v120);
          *(v4 + 73) = 1;
          v4[10] = *(v4 + 72);
          v4[8] = v58;
          v62 = v4[1];
          v61 = v4[2];

          v62(v59, v60, v4);

          if (*(v4 + 74) == 1)
          {
            (*v119)(v116, v120);
            return (*v45)(v59, v121);
          }

          *(v4 + 73) = 0;
          v63 = v4[10];
          if (v63)
          {
            if (*(v4 + 72) == 1)
            {
              if (__OFSUB__(v63--, 1))
              {
                __break(1u);
LABEL_28:
                __break(1u);
LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
LABEL_32:
                __break(1u);
                return result;
              }

              v4[10] = v63;
            }

            v65 = v123[12];
            v66 = v123[16];
            v109 = v50;
            v67 = v123[20];
            v68 = v105;
            v69 = v121;
            v102(v105, v59, v121);
            v70 = &v68[v65];
            v71 = v116;
            v72 = v120;
            v101(v70, v116, v120);
            *&v68[v66] = v63;
            *&v68[v67] = v58;
            v45 = v113;
            Array.append(_:)();
            v73 = v71;
            v46 = v112;
            (*v119)(v73, v72);
            (*v45)(v59, v69);
          }

          else
          {
            MEMORY[0x28223BE20](result);
            v75 = v120;
            v74 = v121;
            *(&v98 - 2) = v121;
            *(&v98 - 1) = v75;
            Array.mutLast(_:)(partial apply for closure #1 in IterativeTreeTraversal._run(_:_:), (&v98 - 4), v50);
            (*v119)(v116, v75);
            (*v45)(v59, v74);
          }
        }
      }
    }

    v76 = v4[7];
    v126 = v76;
    v77 = type metadata accessor for Array();
    swift_getWitnessTable();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v126 = v76;
      v78 = swift_getWitnessTable();
      BidirectionalCollection.last.getter();
      v79 = *v118;
      result = (*v118)(v46, 1, v123);
      if (result == 1)
      {
        goto LABEL_28;
      }

      v80 = *&v46[v123[16]];
      v81 = *v119;
      (*v119)(&v46[v123[12]], v120);
      v82 = *v45;
      (*v45)(v46, v121);
      if (!v80)
      {
        v126 = v76;
        v83 = v100;
        BidirectionalCollection.last.getter();
        result = v79(v83, 1, v123);
        if (result == 1)
        {
          goto LABEL_30;
        }

        v84 = v123[12];
        v85 = *&v83[v123[20]];
        v86 = v110;
        (*v115)(v110, v83, v121);
        v87 = &v83[v84];
        v88 = v111;
        (*v114)(v111, v87, v120);
        v4[8] = v85;
        v89 = v4[3];
        v90 = v4[4];
        v91 = *(v4 + 4);
        v130 = *(v4 + 3);
        v131 = v91;
        v92 = *(v4 + 2);
        v128 = *(v4 + 1);
        v129 = v92;
        v132 = v4[10];
        v127 = *v4;
        LOBYTE(v85) = BYTE10(v131);
        v89(v86, v88, &v127);
        if (v85)
        {
          v81(v111, v120);
          return (v82)(v110, v121);
        }

        v93 = swift_getWitnessTable();
        v94 = v99;
        MEMORY[0x26D69D230](v77, v78, v93);
        result = v79(v94, 1, v123);
        v45 = v113;
        if (result == 1)
        {
          goto LABEL_31;
        }

        v95 = v120;
        v81(&v94[v123[12]], v120);
        v96 = v121;
        v97 = (v82)(v94, v121);
        MEMORY[0x28223BE20](v97);
        *(&v98 - 2) = v96;
        *(&v98 - 1) = v95;
        Array.mutLast(_:)(partial apply for closure #2 in IterativeTreeTraversal._run(_:_:), (&v98 - 4), v77);
        v81(v111, v95);
        v82(v110, v96);
        v46 = v112;
      }
    }
  }
}

uint64_t closure #1 in IterativeTreeTraversal._run(_:_:)(uint64_t a1)
{
  result = swift_getTupleTypeMetadata();
  v3 = *(result + 64);
  v4 = *(a1 + v3);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v3) = v6;
  }

  return result;
}

uint64_t UnsafeTable.storage.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t UnsafeTable.storage.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void UnsafeTable.describe(state:)()
{
  v1 = v0[2];
  if (v1 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v2 = *v0;
  v42 = *(v0 + 3);
  v3 = v0[3];
  v38 = v0[2];
  v39 = v3;
  if (v1)
  {
    if (v3 < 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v40 = v6;
      if (v3)
      {
        break;
      }

LABEL_5:
      v3 = v39;
      v6 = (v40 + 1);
      v4 += v39;
      if (v40 + 1 == v38)
      {
        goto LABEL_17;
      }
    }

    v7 = (v6 * v3) >> 64 != (v6 * v3) >> 63;
    v8 = v3;
    v9 = v4;
    while (!v7)
    {
      if (v9 >= v42)
      {
        goto LABEL_37;
      }

      if (v4 < 0)
      {
        goto LABEL_38;
      }

      if (!v2)
      {
        goto LABEL_46;
      }

      v44 = *(v2 + 8 * v9);
      dispatch thunk of CustomStringConvertible.description.getter();
      v10 = String.count.getter();

      if (v10 > v5)
      {
        v5 = v10;
      }

      ++v9;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v5 = 0;
LABEL_17:
  v41 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v41 setFormatWidth_];
  v11 = MEMORY[0x277D84F90];
  v12 = v38;
  if (!v38)
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v33 = BidirectionalCollection<>.joined(separator:)();
    v35 = v34;

    MEMORY[0x26D69CDB0](v33, v35);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);

    return;
  }

  v43 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = v43;
    while (!__OFADD__(v14, 1))
    {
      v36 = v14 + 1;
      v37 = v15;
      if (v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        if ((v14 * v3) >> 64 != (v14 * v3) >> 63)
        {
          goto LABEL_42;
        }

        v16 = v3;
        v17 = v13;
        while (v17 < v42)
        {
          if (v13 < 0)
          {
            goto LABEL_40;
          }

          if (!v2)
          {
            goto LABEL_48;
          }

          v18 = *(v2 + 8 * v17);
          isa = Int._bridgeToObjectiveC()().super.super.isa;
          v20 = [v41 stringForObjectValue_];

          if (!v20)
          {
            goto LABEL_47;
          }

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          v25 = *(v11 + 16);
          v24 = *(v11 + 24);
          if (v25 >= v24 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          }

          *(v11 + 16) = v25 + 1;
          v26 = v11 + 16 * v25;
          *(v26 + 32) = v21;
          *(v26 + 40) = v23;
          ++v17;
          if (!--v16)
          {
            v12 = v38;
            goto LABEL_32;
          }
        }

        goto LABEL_39;
      }

LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v27 = BidirectionalCollection<>.joined(separator:)();
      v29 = v28;

      v15 = v37;
      v31 = *(v37 + 16);
      v30 = *(v37 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v15 = v37;
      }

      *(v15 + 16) = v31 + 1;
      v32 = v15 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v3 = v39;
      v13 += v39;
      v14 = v36;
      v11 = MEMORY[0x277D84F90];
      if (v36 == v12)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t UnsafeTable.subscript.getter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = result * v3;
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = __OFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= *(v2 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*v2)
  {
    return *(*v2 + 8 * v6);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t key path getter for UnsafeTable.subscript(_:_:) : UnsafeTable@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 24);
  v4 = *a2 * v3;
  if ((*a2 * v3) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a2[1];
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(result + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*result)
  {
    *a3 = *(*result + 8 * v7);
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *key path setter for UnsafeTable.subscript(_:_:) : UnsafeTable(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 24);
  v4 = *a3 * v3;
  if ((*a3 * v3) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3[1];
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(a2 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a2)
  {
    *(*a2 + 8 * v7) = *result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t UnsafeTable.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(v5, a3);
  v7 = v5 + a3;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(v3 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*v3)
  {
    *(*v3 + 8 * v7) = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UnsafeTable.zero(rows:columns:)(Swift::Int rows, Swift::Int columns)
{
  v3 = rows * columns;
  if ((rows * columns) >> 64 != (rows * columns) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  specialized UnsafeArray.growToCapacity(_:)(rows * columns);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v3))
  {
    *(v2 + 12) = v3;
    bzero(*v2, 8 * v3);
    *(v2 + 16) = rows;
    *(v2 + 24) = columns;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance UnsafeTable()
{
  result = *v0;
  if (*v0)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *v0 = 0;
  }

  return result;
}

void protocol witness for Inspectable.description(depth:mode:context:) in conformance UnsafeTable()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  UnsafeTable.describe(state:)();
}

uint64_t specialized static URL.mktempCommon(_:x:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v15 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v29 = a1;
  v30 = a2;

  MEMORY[0x26D69CDB0](1482184750, 0xE400000000000000);
  URL.appendingPathComponent(_:)();

  v16 = *(v8 + 8);
  v16(v12, v7);
  v17 = URL.pathBytes.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16), 0, v17);
  }

  v18 = mkstemp((v17 + 32));
  *a3 = v18;
  if (v18 == -1)
  {
    v21 = MEMORY[0x26D69C8C0]();
    if (!strerror(v21))
    {
      __break(1u);
    }

    v22 = String.init(cString:)();
    v29 = 0xD000000000000013;
    v30 = 0x800000026C33D190;
    MEMORY[0x26D69CDB0](v22);

    v24 = v29;
    v23 = v30;
    v29 = 0x203A726F66;
    v30 = 0xE500000000000000;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v25);

    v26 = v29;
    v27 = v30;
    v29 = v24;
    v30 = v23;

    MEMORY[0x26D69CDB0](v26, v27);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v17 + 32 isDirectory:0 relativeToURL:0];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    return (v16)(v14, v7);
  }

  return result;
}

uint64_t specialized static URL.mktempCommon(_:x:)(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v24 = a1;
  v25 = a2;

  MEMORY[0x26D69CDB0](1482184750, 0xE400000000000000);
  URL.appendingPathComponent(_:)();

  v13 = *(v5 + 8);
  v13(v9, v4);
  v14 = URL.pathBytes.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16), 0, v14);
  }

  if (mktemp((v14 + 32)))
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v14 + 32 isDirectory:0 relativeToURL:0];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    return (v13)(v11, v4);
  }

  else
  {
    v17 = MEMORY[0x26D69C8C0]();
    if (!strerror(v17))
    {
      __break(1u);
    }

    v18 = String.init(cString:)();
    v24 = 0xD000000000000013;
    v25 = 0x800000026C33D190;
    MEMORY[0x26D69CDB0](v18);

    v20 = v24;
    v19 = v25;
    v24 = 0x203A726F66;
    v25 = 0xE500000000000000;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v21);

    v22 = v24;
    v23 = v25;
    v24 = v20;
    v25 = v19;

    MEMORY[0x26D69CDB0](v22, v23);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static URL.mktempCommon(_:x:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a4;
  v26 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v28 = a1;
  v29 = a2;

  MEMORY[0x26D69CDB0](1482184750, 0xE400000000000000);
  URL.appendingPathComponent(_:)();

  v15 = *(v7 + 8);
  v15(v11, v6);
  v27 = URL.pathBytes.getter();
  if (v26(&v27))
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v27 + 32 isDirectory:0 relativeToURL:0];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    return (v15)(v13, v6);
  }

  else
  {
    v18 = MEMORY[0x26D69C8C0]();
    if (!strerror(v18))
    {
      __break(1u);
    }

    v19 = String.init(cString:)();
    v28 = 0xD000000000000013;
    v29 = 0x800000026C33D190;
    MEMORY[0x26D69CDB0](v19);

    v21 = v28;
    v20 = v29;
    v28 = 0x203A726F66;
    v29 = 0xE500000000000000;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v22);

    v23 = v28;
    v24 = v29;
    v28 = v21;
    v29 = v20;

    MEMORY[0x26D69CDB0](v23, v24);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static URL.temporary.getter()
{
  v0 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t URL.pathBytes.getter()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 1024;
  bzero((v0 + 32), 0x400uLL);

  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = *(v0 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16), 0, v0);
  }

  [v3 getFileSystemRepresentation:v0 + 32 maxLength:v4];

  return v0;
}

uint64_t URL.init(mkstemp:fd:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  specialized static URL.mktempCommon(_:x:)(a1, a2, a3, a4);
}

uint64_t URL.init(test_only_mktemp:)(unint64_t a1, unint64_t a2)
{
  specialized static URL.mktempCommon(_:x:)(a1, a2);
}

uint64_t URL.init(clone:to:)@<X0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = URL.path.getter();
  v13 = MEMORY[0x26D69CC20](v12);

  v14 = [v11 fileExistsAtPath_];

  if (v14)
  {
    (*(v7 + 8))(a2, v6);
    v15 = 1;
    return (*(v7 + 56))(a3, v15, 1, v6);
  }

  URL.deletingLastPathComponent()();
  result = URL.openFd(mode:)(0x100000);
  if ((a1 & 0x80000000) == 0)
  {
    v17 = result;
    v18 = URL.pathBytes.getter();
    v19 = fclonefileat(a1, v17, (v18 + 32), 0);

    if (v19)
    {
      close(v17);
      v20 = *(v7 + 8);
      v20(a2, v6);
      v20(v10, v6);
      v15 = 1;
    }

    else
    {
      (*(v7 + 16))(a3, a2, v6);
      close(v17);
      v21 = *(v7 + 8);
      v21(a2, v6);
      v21(v10, v6);
      v15 = 0;
    }

    return (*(v7 + 56))(a3, v15, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t URL.writeRandom(bytes:)(size_t a1)
{
  v8 = specialized Data.init(count:)(a1);
  v9 = v3;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v8, a1);
  v4 = v8;
  v5 = v9;
  Data.write(to:options:)();
  if (v1)
  {
    v6 = v4;
    v4 = v1;
    outlined consume of Data._Representation(v6, v5);
  }

  return v4;
}

uint64_t Data.init(random:)(size_t a1)
{
  v4[0] = specialized Data.init(count:)(a1);
  v4[1] = v2;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v4, a1);
  return v4[0];
}

uint64_t URL.realpath.getter()
{
  URL.path(percentEncoded:)(1);
  v0 = String.utf8CString.getter();

  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = String.init(cString:)();
  MEMORY[0x26D69EAB0](v1, -1, -1);
  return v2;
}

Swift::Void __swiftcall URL.unlink()()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v9[0] = 0;
  v4 = [v0 removeItemAtURL:v2 error:v9];

  v5 = v9[0];
  if (v4)
  {
    v6 = *MEMORY[0x277D85DE8];

    v7 = v5;
  }

  else
  {
    v8 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

Swift::String __swiftcall URL.err(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  type metadata accessor for URL();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v3;
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  MEMORY[0x26D69CDB0](countAndFlagsBits, object);
  v4 = v7;
  v5 = v8;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t $defer #1 () in URL.openFd(mode:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  result = MEMORY[0x26D69C8C0](v2);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26C328DC0;
    v5 = URL.pathBytes.getter();
    v6 = *(v5 + 16);
    if (v6)
    {
      v19 = MEMORY[0x277D84F90];
      v7 = v5;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      result = v7;
      v8 = 32;
      while (1)
      {
        v9 = *(result + v8);
        if (v9 < 0)
        {
          break;
        }

        v11 = *(v19 + 16);
        v10 = *(v19 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          result = v7;
        }

        *(v19 + 16) = v11 + 1;
        *(v19 + v11 + 32) = v9;
        ++v8;
        if (!--v6)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      static String.Encoding.ascii.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v12 = String.init<A>(bytes:encoding:)();
      v14 = v13;

      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = 16191;
      }

      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0xE200000000000000;
      }

      MEMORY[0x26D69CDB0](v15, v16);

      v17 = MEMORY[0x26D69CDB0](2112033, 0xE300000000000000);
      MEMORY[0x26D69C8C0](v17);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v18);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      *(v4 + 56) = MEMORY[0x277D837D0];
      *(v4 + 32) = 0x286E65706FLL;
      *(v4 + 40) = 0xE500000000000000;
      print(_:separator:terminator:)();
    }
  }

  return result;
}

uint64_t URL.directoryExists.getter()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = URL.path.getter();
  v2 = MEMORY[0x26D69CC20](v1);

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v6];

  v4 = *MEMORY[0x277D85DE8];
  return (v3 & v6);
}

uint64_t Optional.releasenoneMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v10);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v19);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    (*(v8 + 8))(v12, a2);
    v20 = 1;
  }

  else
  {
    (*(v15 + 32))(v18, v12, v14);
    a1(v18);
    (*(v15 + 8))(v18, v14);
    v20 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v20, 1, a3);
}

uint64_t String.init(freeing:)(void *a1)
{
  v2 = String.init(cString:)();
  free(a1);
  return v2;
}

Swift::Int InspectionState.Mode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

uint64_t Inspectable_Context.snapshot.getter()
{
  v1 = *v0;
  LODWORD(v2) = *(v0 + 9);
  if (!*(v0 + 9))
  {
    if (v1[48])
    {
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v3 = *(v1 + 22);
    v2 = *v1;
    if (v2 >= *(v3 + 116))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v1 = *(v3 + 104);
    if (v1)
    {
      return *(*&v1[8 * v2] + 8);
    }

    __break(1u);
  }

  if (v2 == 1)
  {
    v2 = *(v0 + 8);
    if (*(v1 + 29) > v2)
    {
      v1 = *(v1 + 13);
      if (v1)
      {
        return *(*&v1[8 * v2] + 8);
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 20);
  v19 = *v3;
  v21 = *v3;
  v22 = v4;
  v23 = *(v3 + 24);
  v20 = v23;
  v24 = v5;
  v6 = (*(a3 + 32))(&v21);
  *&v21 = v6;
  *(&v21 + 1) = v7;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  if (*(v8 + 16) == 1 && (v20 & 2) == 0)
  {

    return v6;
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  if ((v20 & 2) != 0)
  {
    v10 = v19;
  }

  else
  {
    v10 = 1;
  }

  v11._countAndFlagsBits = 8224;
  v11._object = 0xE200000000000000;
  v13 = String.init(repeating:count:)(v11, v10);
  result = v13._countAndFlagsBits;
  v14 = *(v8 + 16);
  if (!v14)
  {
LABEL_15:

    return v21;
  }

  v15 = 0;
  v16 = (v8 + 40);
  while (v15 < *(v8 + 16))
  {
    v18 = *(v16 - 1);
    v17 = *v16;

    MEMORY[0x26D69CDB0](v18, v17);

    MEMORY[0x26D69CDB0](v13._countAndFlagsBits, v13._object);

    if (v14 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v16 += 2;
    ++v15;
    if (!--v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional.describe(state:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v16;
  v20 = *(v16 + 8);
  v21 = *(v16 + 16);
  v22 = *(v16 + 24);
  v36 = *(v16 + 32);
  v23 = *(v16 + 40);
  v34 = *(v16 + 41);
  v35 = v23;
  (*(v24 + 16))(v18, v25);
  if ((*(v3 + 48))(v18, 1, v2) == 1)
  {
    return 7104878;
  }

  v33 = v19;
  (*(v3 + 32))(v13, v18, v2);
  v27 = *(v3 + 16);
  v27(v10, v13, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(&v37, v42);
    v28 = v43;
    v29 = v44;
    v30 = __swift_project_boxed_opaque_existential_1(v42, v43);
    *&v37 = v33;
    *(&v37 + 1) = v20;
    LOBYTE(v38) = v21;
    *(&v38 + 1) = v22;
    v39 = v36;
    v40 = v35;
    v41 = v34;
    v31 = InspectionState.describe<A>(_:)(v30, v28, v29);
    (*(v3 + 8))(v13, v2);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v37, &_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
    v27(v7, v13, v2);
    v31 = String.init<A>(describing:)();
    (*(v3 + 8))(v13, v2);
  }

  return v31;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance String()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Optional<A>.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *v11;
  v15 = *(v11 + 8);
  v16 = *(v11 + 16);
  v17 = *(v11 + 24);
  v18 = *(v11 + 32);
  v19 = *(v11 + 40);
  v25 = *(v11 + 41);
  (*(v20 + 16))(v13, v21);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    return 7104878;
  }

  (*(v4 + 32))(v8, v13, v3);
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v25;
  v23 = InspectionState.describe<A>(_:)(v8, v3, v26);
  (*(v4 + 8))(v8, v3);
  return v23;
}

Swift::String __swiftcall ArrayLike.basicDescription()()
{
  v1 = *(*(v0 + 8) + 8);
  dispatch thunk of Collection.count.getter();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v2);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  v3 = 9051;
  v4 = 0xE200000000000000;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t closure #1 in ArrayLike.describe(state:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v11 + 16))(&v18[-1] - v10, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  swift_dynamicCast();
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = a2[1];
  v17 = *a2;
  v18[0] = v14;
  *(v18 + 10) = *(a2 + 26);
  *a4 = (*(v13 + 32))(&v17, v12, v13);
  a4[1] = v15;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t OS_xpc_object.xpcMessageDictionary.getter()
{
  v1 = MEMORY[0x26D69EE00](v0);
  if (v1 != XPC_TYPE_DICTIONARY.getter())
  {
    return 0;
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in OS_xpc_object.xpcMessageDictionary.getter;
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_252;
  v5 = _Block_copy(aBlock);

  xpc_dictionary_apply(v0, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t closure #1 in OS_xpc_object.xpcMessageDictionary.getter(uint64_t a1, uint64_t a2)
{
  v3 = String.init(cString:)();
  v5 = v4;
  v6 = MEMORY[0x26D69EE00](a2);
  if (v6 == XPC_TYPE_DICTIONARY.getter())
  {
    v7 = OS_xpc_object.xpcMessageDictionary.getter();
    v8 = v7;
    if (v7)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    }

    else
    {
      v10[1] = 0;
      v10[2] = 0;
    }

    v10[0] = v8;
    v10[3] = v7;
  }

  else
  {
    OS_xpc_object.value()(v10);
  }

  specialized Dictionary.subscript.setter(v10, v3, v5);
  return 1;
}

uint64_t OS_xpc_object.value()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = MEMORY[0x26D69EE00](v1);
  if (XPC_TYPE_DICTIONARY.getter() == v3)
  {
    v7 = OS_xpc_object.xpcMessageDictionary.getter();
    if (v7)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    }

    else
    {
      v8 = 0;
    }

    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v8;
  }

  else if (XPC_TYPE_STRING.getter() == v3)
  {
    if (xpc_string_get_string_ptr(v1))
    {
      v9 = String.init(cString:)();
      v11 = v10;
      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
    }

    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    *(a1 + 24) = v12;
  }

  else
  {
    if (XPC_TYPE_BOOL.getter() == v3)
    {
      value = xpc_BOOL_get_value(v1);
      result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
      *a1 = value;
      v6 = MEMORY[0x277D839B0];
    }

    else
    {
      result = XPC_TYPE_INT64.getter();
      if (result != v3)
      {
        return result;
      }

      v5 = xpc_int64_get_value(v1);
      result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
      *a1 = v5;
      v6 = MEMORY[0x277D84A28];
    }

    *(a1 + 24) = v6;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t OS_xpc_object.subscript.setter(uint64_t a1)
{
  outlined init with copy of Any?(a1, v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v3 = String.utf8CString.getter();

      v4 = String.utf8CString.getter();

      xpc_dictionary_set_string(v1, (v3 + 32), (v4 + 32));
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v10, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any?(a1, v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v5 = String.utf8CString.getter();

      xpc_dictionary_set_BOOL(v1, (v5 + 32), v9);
LABEL_12:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v10, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any?(a1, v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v6 = String.utf8CString.getter();

      xpc_dictionary_set_int64(v1, (v6 + 32), v9);
      goto LABEL_12;
    }
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v10, &_sypSgMd, &_sypSgMR);
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  MEMORY[0x26D69CDB0](0xD000000000000030, 0x800000026C33D250);
  outlined init with copy of Any?(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33D290);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall OS_xpc_object.entitled(_:allowsInternal:)(Swift::String _, Swift::Bool allowsInternal)
{
  v3 = v2;
  String.utf8CString.getter();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  if (!xpc_dictionary_get_remote_connection(v3))
  {
    return has_internal_diagnostics & 1;
  }

  String.utf8CString.getter();
  v6 = xpc_connection_copy_entitlement_value();

  if (!v6)
  {
    swift_unknownObjectRelease();
    return has_internal_diagnostics & 1;
  }

  v7 = MEMORY[0x26D69EE00](v6);
  if (v7 == XPC_TYPE_BOOL.getter())
  {
    if (xpc_BOOL_get_value(v6))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      has_internal_diagnostics = 1;
    }

    else
    {
      static os_log_type_t.error.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      has_internal_diagnostics &= allowsInternal;
    }

    return has_internal_diagnostics & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double Dictionary<>.daemonResponse.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000026C33D200), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    outlined init with copy of Any(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t Dictionary<>.encodedXPCObject.getter(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "swiftui_command", 1);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v23 = a1;

  v9 = 0;
  v10 = &_sSDySSypGMd;
  v11 = MEMORY[0x277D84F70];
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v15 = v9;
LABEL_14:
      v18 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v23 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      outlined init with copy of Any(*(v23 + 56) + 32 * v19, &v25);
      *&v27 = v21;
      *(&v27 + 1) = v22;
      outlined init with take of Any(&v25, &v28);

      v17 = v15;
LABEL_15:
      v30 = v27;
      v31[0] = v28;
      v31[1] = v29;
      if (!*(&v27 + 1))
      {

        return v2;
      }

      outlined init with take of Any(v31, &v27);
      outlined init with copy of Any(&v27, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, &_sSDySSypGMR);
      if (!swift_dynamicCast())
      {
        break;
      }

      v24 = v17;
      v12 = v11;
      v13 = v10;
      v14 = (Dictionary<>.encodedXPCObject.getter)();

      ObjectType = swift_getObjectType();
      *&v25 = v14;
      swift_unknownObjectRetain();
      OS_xpc_object.subscript.setter(&v25);
      v10 = v13;
      v11 = v12;
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(&v27);
      v9 = v24;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    outlined init with copy of Any(&v27, &v25);
    OS_xpc_object.subscript.setter(&v25);
    result = __swift_destroy_boxed_opaque_existential_1(&v27);
    v9 = v17;
  }

  while (v6);
LABEL_7:
  if (v7 <= v9 + 1)
  {
    v16 = v9 + 1;
  }

  else
  {
    v16 = v7;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v7)
    {
      v6 = 0;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v15);
    ++v9;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void **a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v13 = *a5;
  v14 = [objc_allocWithZone(MEMORY[0x277CCACB0]) init];
  URL.init(fileURLWithPath:)();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v8 + 8))(v11, v7);
  [v14 setExecutableURL_];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v14 setArguments_];

  v19 = [objc_opt_self() processInfo];
  v20 = [v19 environment];

  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(1213481296, 0xE400000000000000), (v23 & 1) != 0))
  {
    v24 = (*(v21 + 56) + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v63 = *v24;
    v64 = v26;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    v63 = 0;
    v64 = 0xE000000000000000;
  }

  aBlock = v25;
  v58 = v26;
  strcpy(v56, "/usr/local/bin");
  v56[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  v27 = StringProtocol.contains<A>(_:)();

  if ((v27 & 1) == 0)
  {
    v28 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    }

    MEMORY[0x26D69CDB0](0x636F6C2F7273752FLL, 0xEE006E69622F6C61);
    v25 = v63;
    v26 = v64;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v26, 1213481296, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v30 = aBlock;
  v31 = MEMORY[0x277D837D0];
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v14 setEnvironment_];

  if (!v12)
  {
LABEL_14:
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_22;
  }

  if (v12 == 1)
  {
    [v14 setStandardOutput_];
    goto LABEL_14;
  }

  v53 = v30;
  v33 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  [v14 setStandardOutput_];

  result = [v14 standardOutput];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v55, v56);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
  swift_dynamicCast();
  v35 = v54;
  v36 = [v54 fileHandleForReading];

  v37 = swift_allocObject();
  *(v37 + 16) = v12;
  v61 = closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)partial apply;
  v62 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTask) -> ();
  v60 = &block_descriptor_53;
  v38 = _Block_copy(&aBlock);
  outlined copy of NSTask.OutputOption(v12);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)partial apply);

  [v36 setReadabilityHandler_];
  _Block_release(v38);

  v31 = MEMORY[0x277D837D0];
  v30 = v53;
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v13 != 1)
  {
    v53 = v30;
    v39 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
    [v14 setStandardError_];

    result = [v14 standardError];
    if (result)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      outlined init with take of Any(v55, v56);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
      swift_dynamicCast();
      v40 = v54;
      v41 = [v54 fileHandleForReading];

      v42 = swift_allocObject();
      *(v42 + 16) = v13;
      v61 = partial apply for closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:);
      v62 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTask) -> ();
      v60 = &block_descriptor_46;
      v43 = _Block_copy(&aBlock);
      outlined copy of NSTask.OutputOption(v13);
      outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(partial apply for closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:));

      [v41 setReadabilityHandler_];
      _Block_release(v43);

      goto LABEL_22;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  [v14 setStandardError_];
LABEL_22:
  v44 = swift_allocObject();
  v44[2] = v12;
  v44[3] = v14;
  v44[4] = v13;
  v61 = partial apply for closure #2 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:);
  v62 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTask) -> ();
  v60 = &block_descriptor_40;
  v45 = _Block_copy(&aBlock);
  outlined copy of NSTask.OutputOption(v12);
  outlined copy of NSTask.OutputOption(v13);
  v46 = v14;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(partial apply for closure #2 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:));

  [v46 setTerminationHandler_];
  _Block_release(v45);

  [v46 launch];
  [v46 waitUntilExit];
  if ([v46 terminationStatus])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_26C328DC0;
    aBlock = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    aBlock = 0x203A74697865;
    v58 = 0xE600000000000000;
    *v56 = [v46 terminationStatus];
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v48);

    MEMORY[0x26D69CDB0](0x646D6320726F6620, 0xEA0000000000203ALL);
    countAndFlagsBits = NSTask.invokableDescription()()._countAndFlagsBits;
    MEMORY[0x26D69CDB0](countAndFlagsBits);

    v50 = aBlock;
    v51 = v58;
    *(v47 + 56) = v31;
    *(v47 + 32) = v50;
    *(v47 + 40) = v51;
    print(_:separator:terminator:)();
  }

  v52 = [v46 terminationStatus];

  return v52;
}

uint64_t closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)(void *a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  if (a1)
  {
    v7 = [a1 availableData];
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    if (v12)
    {
      v13 = MEMORY[0x26D69CC20](v11);

      [a2 appendString_];
    }

    return outlined consume of Data._Representation(v8, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #2 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)(int a1, unint64_t a2, id a3, unint64_t a4)
{
  if (a2 >= 2)
  {
    if (![a3 standardOutput])
    {
      __break(1u);
      goto LABEL_9;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v9, v10);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
    swift_dynamicCast();
    v6 = [v8 fileHandleForReading];

    [v6 setReadabilityHandler_];
    _Block_release(0);
  }

  if (a4 < 2)
  {
    return;
  }

  if (![a3 standardError])
  {
LABEL_9:
    __break(1u);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v9, v10);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
  swift_dynamicCast();
  v7 = [v8 fileHandleForReading];

  [v7 setReadabilityHandler_];
  _Block_release(0);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSFileHandle) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::String __swiftcall NSTask.invokableDescription()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = [v1 arguments];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v12 + 16))
  {

LABEL_6:
    v13 = [v1 executableURL];
    if (v13)
    {
      v22 = v13;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = URL.path(percentEncoded:)(1);
      countAndFlagsBits = v23._countAndFlagsBits;
      object = v23._object;
      (*(v3 + 8))(v7, v2);
      goto LABEL_8;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  v13 = [v1 executableURL];
  if (!v13)
  {
    goto LABEL_10;
  }

  v15 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = URL.path(percentEncoded:)(1);
  (*(v3 + 8))(v9, v2);
  MEMORY[0x26D69CDB0](v16._countAndFlagsBits, v16._object);

  MEMORY[0x26D69CDB0](10016, 0xE200000000000000);
  v25[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  MEMORY[0x26D69CDB0](v17, v19);

  MEMORY[0x26D69CDB0](39, 0xE100000000000000);
  countAndFlagsBits = v26;
  object = v27;
LABEL_8:
  v13 = countAndFlagsBits;
  v14 = object;
LABEL_11:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

int64_t HeterogeneousBuffer.Index.init(offset:index:)(int64_t result, uint64_t a2)
{
  if (result > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a2 | result) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    return result | (a2 << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t HeterogeneousBuffer.pointer.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t HeterogeneousBuffer.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v5 + 1) = a4;
  *&v5 = a3;
  return v5 >> 32;
}

Swift::Void __swiftcall HeterogeneousBuffer.grow(_:)(Swift::Int a1)
{
  if (a1 + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v2 = 0;
  if ((*(v1 + 16) & 1) == 0)
  {
    if (*v1)
    {
      v2 = *(v1 + 8) - *v1;
      if (v2 + 0x4000000000000000 < 0)
      {
        goto LABEL_12;
      }
    }
  }

  v3 = 2 * v2;
  if (v3 <= 2 * a1)
  {
    v3 = 2 * a1;
  }

  if (v3 <= 64)
  {
    HeterogeneousBuffer.reserveCapacity(bytes:)(64);
  }

  else
  {
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
  }
}

uint64_t HeterogeneousBuffer.find<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v5 = 0;
  LODWORD(v6) = 0;
  while (1)
  {
    v6 = v6;
    if (v6 >= a5)
    {
      return v5 | (v6 << 32);
    }

    if (a4)
    {
      goto LABEL_19;
    }

    if (!a2)
    {
      goto LABEL_20;
    }

    if (a3 - a2 < v5)
    {
      break;
    }

    v7 = *(a2 + v5);
    if (v7 == result)
    {
      return v5 | (v6 << 32);
    }

    v8 = *(*(v7 - 8) + 72);
    if (v8 <= 8)
    {
      v8 = 8;
    }

    v9 = __OFADD__(v8, 8);
    v10 = v8 + 8;
    if (v9)
    {
      goto LABEL_16;
    }

    v9 = __OFADD__(v10, v5);
    v11 = v10 + v5;
    if (v9)
    {
      goto LABEL_17;
    }

    if (v11 > 0xFFFFFFFFLL)
    {
      goto LABEL_18;
    }

    v6 = v6 + 1;
    v5 = v11;
    if (v11 < 0)
    {
      __break(1u);
      return v5 | (v6 << 32);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

Swift::Void __swiftcall HeterogeneousBuffer.reserveCapacity(bytes:)(Swift::Int bytes)
{
  if ((*(v1 + 16) & 1) == 0)
  {
    v5 = *v1;
    v6 = *(v1 + 8);
    if (*v1)
    {
      if (v6 - v5 > bytes)
      {
        return;
      }

      if (*(v1 + 17) == 1)
      {
        v3 = realloc(*v1, bytes);
        v4 = v3 + bytes;
        if (!v3)
        {
          v4 = 0;
        }

        goto LABEL_4;
      }
    }

    else
    {
      if (bytes < 0)
      {
        return;
      }

      if (*(v1 + 17))
      {
        goto LABEL_34;
      }
    }

    v9 = swift_slowAlloc();
    v10 = v9 + bytes;
    v18 = 0;
    v11 = *(v1 + 24);
    swift_beginAccess();
    if (!v11)
    {
      *v1 = v9;
      *(v1 + 8) = v10;
      *(v1 + 16) = 0;
      if (v5)
      {
LABEL_26:
        MEMORY[0x26D69EAB0](v5, -1, -1);
      }

      return;
    }

    LODWORD(v12) = 0;
    v13 = 0;
    v14 = v6 - v5;
    while (v5)
    {
      if (v14 < v13)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

      specialized project #1 <A>(move:) in HeterogeneousBuffer.reserveCapacity(bytes:)(*&v5[v13], v9, v10, &v18, v1, *&v5[v13]);
      v15 = *(*(*&v5[v13] - 8) + 72);
      if (v15 <= 8)
      {
        v15 = 8;
      }

      v16 = __OFADD__(v15, 8);
      v17 = v15 + 8;
      if (v16)
      {
        goto LABEL_29;
      }

      v16 = __OFADD__(v17, v13);
      v13 += v17;
      if (v16)
      {
        goto LABEL_30;
      }

      if (v13 > 0xFFFFFFFFLL)
      {
        goto LABEL_31;
      }

      if (v13 < 0)
      {
        goto LABEL_32;
      }

      LODWORD(v18) = v13;
      HIDWORD(v18) = v12 + 1;
      v12 = (v12 + 1);
      if (v12 >= v11)
      {
        *v1 = v9;
        *(v1 + 8) = v10;
        *(v1 + 16) = 0;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  if ((bytes & 0x8000000000000000) == 0)
  {
    v3 = swift_slowAlloc();
    v4 = v3 + bytes;
LABEL_4:
    *v1 = v3;
    *(v1 + 8) = v4;
    *(v1 + 16) = 0;
  }
}

unint64_t specialized project #1 <A>(move:) in HeterogeneousBuffer.reserveCapacity(bytes:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  v12 = *a4;
  v13 = a3 - a2;
  if (a2)
  {
    v14 = a3 - a2;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < v12)
  {
    __break(1u);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16 = MetatypeMetadata;
    if (a2)
    {
      v17 = a2 + v14;
    }

    else
    {
      v17 = 0;
    }

    if (a2)
    {
      v18 = a2 + v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(MetatypeMetadata, v18, v17, MetatypeMetadata);
    v28 = a6;
    result = (*(*(v16 - 8) + 32))(v19, &v28, v16);
    if (!a2)
    {
      goto LABEL_16;
    }

    if (v13 >= v12 + 8)
    {
      v20 = *a5;
      v21 = *(a5 + 8);
      v22 = *(a5 + 17);
      v23 = v12 | (a4[1] << 32);
      v25 = *(a5 + 20);
      v24 = *(a5 + 24);
      LOBYTE(v28) = *(a5 + 16);
      HeterogeneousBuffer.valuePointer<A>(for:)(v23, v20, v21, v28, v24, a6);
      v26 = UnsafeMutableBufferPointer.init(start:count:)();
      return _sSw20moveInitializeMemory2as14fromContentsOfSryxGxm_ADtRi_zlF(a6, v26, v27, a2 + v12 + 8, a2 + v13, a6);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t _sSw20moveInitializeMemory2as14fromContentsOfSryxGxm_ADtRi_zlF(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = *(*(a6 - 8) + 72);
  v7 = a3 * v6;
  if ((a3 * v6) >> 64 == (a3 * v6) >> 63)
  {
    v8 = a4;
    v9 = a5 - a4;
    if (!a4)
    {
      v9 = 0;
    }

    if (v9 >= v7)
    {
      if (a4 < a2 || a2 + v7 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for HeterogeneousBuffer.subscript<A>(_:) : <A>HeterogeneousBufferA@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 20);
  *(a1 + 17);
  v7 = HeterogeneousBuffer.valuePointer<A>(for:)(*a2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v5);
  v8 = *(*(v5 - 8) + 16);

  return v8(a4, v7, v5);
}

uint64_t key path setter for HeterogeneousBuffer.subscript<A>(_:) : <A>HeterogeneousBufferA(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(a2 + 20);
  *(a2 + 17);
  v7 = HeterogeneousBuffer.valuePointer<A>(for:)(*a3, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), v5);
  v8 = *(*(v5 - 8) + 24);

  return v8(v7, a1, v5);
}

uint64_t HeterogeneousBuffer.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 20);
  *(v3 + 17);
  v7 = HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), a3);
  v8 = *(*(a3 - 8) + 40);

  return v8(v7, a1, a3);
}

unint64_t HeterogeneousBuffer.valuePointerAs<A>(for:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (result != a6)
  {
    return 0;
  }

  if (a5 <= HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2)
  {
    return a2 + a1 + 8;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t HeterogeneousBuffer.findValuePointerAs<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6)
{
  v7 = a4;
  v9 = HIDWORD(a4);
  result = HeterogeneousBuffer.find<A>(_:)(a6, a2, a3, a4 & 1, a5);
  if (result == v9 && HIDWORD(result) == a5)
  {
    return 0;
  }

  if (HIDWORD(result) >= a5)
  {
    __break(1u);
  }

  else if ((v7 & 1) == 0)
  {
    if (a2)
    {
      return a2 + result + 8;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void (*HeterogeneousBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x88uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = *(a3 - 8);
  v10 = v9;
  v7[2] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[4] = v12;
  v13 = type metadata accessor for Optional();
  v8[5] = v13;
  v14 = *(v13 - 8);
  v8[6] = v14;
  v15 = *(v14 + 64);
  if (v6)
  {
    v8[7] = swift_coroFrameAlloc();
    v8[8] = swift_coroFrameAlloc();
    v8[9] = swift_coroFrameAlloc();
    v8[10] = swift_coroFrameAlloc();
    v8[11] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[7] = malloc(*(v14 + 64));
    v8[8] = malloc(v15);
    v8[9] = malloc(v15);
    v8[10] = malloc(v15);
    v8[11] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v8[12] = v16;
  v18 = *v3;
  v8[13] = *v3;
  v19 = *(v3 + 8);
  v8[14] = v19;
  v20 = *(v3 + 16);
  *(v8 + 128) = v20;
  v21 = *(v3 + 17);
  *(v8 + 129) = v21;
  v22 = *(v3 + 20);
  *(v8 + 30) = v22;
  v23 = *(v3 + 24);
  *(v8 + 31) = v23;
  v24 = v21 == 0;
  v25 = 256;
  if (v24)
  {
    v25 = 0;
  }

  v26 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(v16, v18, v19, v25 | (v22 << 32) | v20, v23, a3);
  if (v26)
  {
    (*(v10 + 16))(v17, v26, a3);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v10 + 56))(v17, v27, 1, a3);
  return HeterogeneousBuffer.subscript.modify;
}

void HeterogeneousBuffer.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 124);
  v5 = *(*a1 + 129);
  v6 = *(*a1 + 128);
  v8 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  if ((a2 & 1) == 0)
  {
    v24 = v2[6];
    v25 = v2[2];
    v11 = v5 == 0;
    v26 = 256;
    if (v11)
    {
      v26 = 0;
    }

    v27 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, v8, v7, v26 | (v3 << 32) | *(*a1 + 128), v4, *v2);
    v28 = *(v24 + 16);
    v29 = (v25 + 48);
    v30 = v2[12];
    v31 = v2[5];
    v32 = *v2;
    if (v27)
    {
      v33 = v27;
      v34 = v2[11];
      v28(v34, v30, v31);
      if ((*v29)(v34, 1, v32) == 1)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      (*(v2[2] + 40))(v33, v2[11], *v2);
    }

    else
    {
      v52 = v2[10];
      v28(v52, v30, v31);
      v53 = (*v29)(v52, 1, v32);
      v23 = v2[10];
      if (v53 == 1)
      {
        goto LABEL_25;
      }

      v54 = v2[4];
      v55 = v2[2];
      v56 = *v2;
      (*(v55 + 32))(v54, v23, *v2);
      HeterogeneousBuffer.insert<A>(_:)(v54, v56);
      (*(v55 + 8))(v54, v56);
    }

    v50 = v2[11];
    v41 = v2[12];
    v43 = v2[9];
    v51 = v2[10];
    v45 = v2[7];
    v44 = v2[8];
    v48 = v2[3];
    v47 = v2[4];
    (*(v2[6] + 8))(v41, v2[5]);
    goto LABEL_20;
  }

  v9 = v2[2];
  v10 = *v2;
  v11 = v5 == 0;
  v12 = 256;
  if (v11)
  {
    v12 = 0;
  }

  v13 = v12 | (v3 << 32);
  v14 = *(v2[6] + 16);
  v15 = v14(v2[9], v2[12], v2[5]);
  v16 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(v15, v8, v7, v13 | v6, v4, v10);
  v17 = (v9 + 48);
  v18 = v2[9];
  v19 = v2[5];
  v20 = *v2;
  if (!v16)
  {
    v35 = v2[7];
    v14(v35, v18, v19);
    v36 = (*v17)(v35, 1, v20);
    v23 = v2[7];
    if (v36 != 1)
    {
      v38 = v2[2];
      v37 = v2[3];
      v40 = *v2;
      v39 = v2[1];
      (*(v38 + 32))(v37, v23, *v2);
      HeterogeneousBuffer.insert<A>(_:)(v37, v40);
      (*(v38 + 8))(v37, v40);
      goto LABEL_16;
    }

LABEL_25:
    v57 = v2[5];
    v58 = v2[6];
    v59 = *v2;
    (*(v58 + 8))(v23, v57);
    _StringGuts.grow(_:)(114);
    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
    v60 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v60);

    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21 = v16;
  v22 = v2[8];
  v14(v22, v18, v19);
  if ((*v17)(v22, 1, v20) == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  (*(v2[2] + 40))(v21, v2[8], *v2);
LABEL_16:
  v41 = v2[12];
  v43 = v2[9];
  v42 = v2[10];
  v61 = v42;
  v62 = v2[11];
  v45 = v2[7];
  v44 = v2[8];
  v46 = v2[5];
  v48 = v2[3];
  v47 = v2[4];
  v49 = *(v2[6] + 8);
  v49(v43, v46);
  v49(v41, v46);
  v51 = v61;
  v50 = v62;
LABEL_20:
  free(v41);
  free(v50);
  free(v51);
  free(v43);
  free(v44);
  free(v45);
  free(v47);
  free(v48);

  free(v2);
}

uint64_t (*HeterogeneousBuffer.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t a7))(void)
{
  v11 = a5 & 1;
  v12 = HeterogeneousBuffer.find<A>(_:)(a7, a3, a4, a5 & 1, a6);
  HeterogeneousBuffer.valuePointer<A>(for:)(v12, a3, a4, v11, a6, a7);
  return EventTreeStats.count.modify;
}

uint64_t (*HeterogeneousBuffer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(void)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 20);
  v9 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 17);
  v10 = HeterogeneousBuffer.find<A>(_:)(a3, *v3, v6, v7, v9);
  HeterogeneousBuffer.valuePointer<A>(for:)(v10, v5, v6, v7, v9, a3);
  return EventTreeStats.count.modify;
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, unsigned int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = a3 & 1;
  v12 = HeterogeneousBuffer.find<A>(_:)(a5, a1, a2, a3 & 1, a4);
  v13 = HeterogeneousBuffer.valuePointer<A>(for:)(v12, a1, a2, v11, a4, a5);
  v14 = *(*(a5 - 8) + 16);

  return v14(a6, v13, a5);
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a3 & 1;
  v12 = HeterogeneousBuffer.find<A>(_:)(a5, a1, a2, a3 & 1, a4);
  v13 = HeterogeneousBuffer.valuePointer<A>(for:)(v12, a1, a2, v11, a4, a5);
  v14 = *(*(a5 - 8) + 16);

  return v14(a6, v13, a5);
}

uint64_t key path getter for HeterogeneousBuffer.subscript<A>() : <A>HeterogeneousBufferA@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 20);
  v10 = *(a1 + 24);
  v8 = *(a1 + 16);
  *(a1 + 17);
  v11 = HeterogeneousBuffer.find<A>(_:)(v5, *a1, v7, v8, v10);
  v12 = HeterogeneousBuffer.valuePointer<A>(for:)(v11, v6, v7, v8, v10, v5);
  v13 = *(*(v5 - 8) + 16);

  return v13(a4, v12, v5);
}

uint64_t key path setter for HeterogeneousBuffer.subscript<A>() : <A>HeterogeneousBufferA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v8 = *(a2 + 16);
  *(a2 + 17);
  v11 = HeterogeneousBuffer.find<A>(_:)(v5, *a2, v7, v8, v10);
  v12 = HeterogeneousBuffer.valuePointer<A>(for:)(v11, v6, v7, v8, v10, v5);
  v13 = *(*(v5 - 8) + 24);

  return v13(v12, a1, v5);
}

uint64_t HeterogeneousBuffer.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 20);
  v9 = *(v2 + 24);
  v7 = *(v2 + 16);
  *(v2 + 17);
  v10 = HeterogeneousBuffer.find<A>(_:)(a2, *v2, v6, v7, v9);
  v11 = HeterogeneousBuffer.valuePointer<A>(for:)(v10, v5, v6, v7, v9, a2);
  v12 = *(*(a2 - 8) + 40);

  return v12(v11, a1, a2);
}

unint64_t HeterogeneousBuffer.valuePointer(for:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  if (a5 <= HIDWORD(result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    return a2 + result + 8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*HeterogeneousBuffer.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6))(void)
{
  v9 = a5 & 1;
  v10 = HeterogeneousBuffer.find<A>(_:)(a2, a3, a4, a5 & 1, a6);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v12 = *HeterogeneousBuffer.valuePointer<A>(for:)(v10, a3, a4, v9, a6, MetatypeMetadata);
  return EventTreeStats.count.modify;
}

uint64_t (*HeterogeneousBuffer.subscript.modify(uint64_t *a1, uint64_t a2))()
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
  v7 = *(v2 + 20);
  *(v2 + 17);
  v8 = HeterogeneousBuffer.find<A>(_:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  MetatypeMetadata = swift_getMetatypeMetadata();
  *(v6 + 32) = HeterogeneousBuffer.subscript.modify(v6, v8, MetatypeMetadata);
  return UnsafeTree.storage.modify;
}

uint64_t HeterogeneousBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v8 = a4 & 1;
  v9 = HeterogeneousBuffer.find<A>(_:)(a1, a2, a3, a4 & 1, a5);
  MetatypeMetadata = swift_getMetatypeMetadata();
  return *HeterogeneousBuffer.valuePointer<A>(for:)(v9, a2, a3, v8, a5, MetatypeMetadata);
}

void *HeterogeneousBuffer.subscript.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 20);
  v8 = *(v2 + 24);
  v6 = *(v2 + 16);
  *(v2 + 17);
  v9 = HeterogeneousBuffer.find<A>(_:)(a2, *v2, v5, v6, v8);
  MetatypeMetadata = swift_getMetatypeMetadata();
  result = HeterogeneousBuffer.valuePointer<A>(for:)(v9, v4, v5, v6, v8, MetatypeMetadata);
  *result = a1;
  return result;
}

unint64_t projectDeinit #1 <A>(_:) in HeterogeneousBuffer.deallocate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 256;
  if (!*(a2 + 17))
  {
    v3 = 0;
  }

  result = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, *a2, *(a2 + 8), v3 | (*(a2 + 20) << 32) | *(a2 + 16), *(a2 + 24), a3);
  if (result)
  {

    return UnsafeMutablePointer.deinitialize(count:)();
  }

  return result;
}

uint64_t specialized projectCopy #1 <A>(_:) in HeterogeneousBuffer.copy()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  LODWORD(v7) = *(v9 + 17);
  v13 = *(v9 + 20);
  v14 = *(v9 + 24);
  v19 = v12;
  v15 = HeterogeneousBuffer.find<A>(_:)(a4, v10, v11, v12, v14);
  v19 = v12;
  v16 = HeterogeneousBuffer.valuePointer<A>(for:)(v15, v10, v11, v12, v14, a4);
  (*(v5 + 16))(v8, v16, a4);
  swift_beginAccess();
  HeterogeneousBuffer.insert<A>(_:)(v8, a4);
  swift_endAccess();
  return (*(v5 + 8))(v8, a4);
}

uint64_t projectClone #1 <A>(_:) in HeterogeneousBuffer.copy()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v8 = *(a2 + 16);
  *(a2 + 17);
  v11 = HeterogeneousBuffer.find<A>(_:)(a3, *a2, v7, v8, v10);
  HeterogeneousBuffer.valuePointer<A>(for:)(v11, v6, v7, v8, v10, a3);
  return (*(a4 + 8))(a3, a4);
}

__int128 *HeterogeneousBuffer.describe(state:)(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = result[1];
  v19 = *result;
  v20[0] = v5;
  *(v20 + 10) = *(result + 26);
  if (a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v18[0] = 40;
  v18[1] = 0xE100000000000000;
  v11 = a3 - a2;
  v12 = a4 & 0xFFFFFFFF00000100;
  v13 = a5;
  while (1)
  {
    v14 = v10;
    if (v10 >= v13)
    {
      goto LABEL_14;
    }

    if (!a2)
    {
      goto LABEL_20;
    }

    if (v11 < v9)
    {
      break;
    }

    result = specialized project #1 <A>(_:) in HeterogeneousBuffer.describe(state:)(*(a2 + v9), a2, a3, v12, a5, v18, &v19, *(a2 + v9));
    v15 = *(*(*(a2 + v9) - 8) + 72);
    if (v15 <= 8)
    {
      v15 = 8;
    }

    v16 = __OFADD__(v15, 8);
    v17 = v15 + 8;
    if (v16)
    {
      goto LABEL_17;
    }

    v16 = __OFADD__(v17, v9);
    v9 += v17;
    if (v16)
    {
      goto LABEL_18;
    }

    if (v9 > 0xFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v10 = v14 + 1;
    if (v9 < 0)
    {
      __break(1u);
LABEL_14:
      swift_beginAccess();
      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      swift_endAccess();
      return v18[0];
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized project #1 <A>(_:) in HeterogeneousBuffer.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  v38 = a7;
  v12 = *(a8 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v20 = v19 & 1;
  v39[0] = v19 & 1;
  v25 = HeterogeneousBuffer.find<A>(_:)(v24, v21, v22, v19 & 1, v23);
  v39[0] = v20;
  v26 = HeterogeneousBuffer.valuePointer<A>(for:)(v25, a2, a3, v20, a5, a8);
  v27 = *(v12 + 16);
  v27(v18, v26, a8);
  swift_beginAccess();
  MEMORY[0x26D69CDB0](40, 0xE100000000000000);
  swift_endAccess();
  *v39 = a8;
  swift_getMetatypeMetadata();
  *v39 = String.init<A>(describing:)();
  *&v39[8] = v28;
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v29 = *v39;
  swift_beginAccess();
  MEMORY[0x26D69CDB0](v29, *(&v29 + 1));
  swift_endAccess();

  v27(v16, v18, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(v39, v40);
    v30 = v41;
    v31 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v32 = v38[1];
    *v39 = *v38;
    *&v39[16] = v32;
    *&v39[26] = *(v38 + 26);
    v33 = (*(v31 + 32))(v39, v30, v31);
    v35 = v34;
    swift_beginAccess();
    MEMORY[0x26D69CDB0](v33, v35);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    memset(v39, 0, 40);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v39, &_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
  }

  swift_beginAccess();
  MEMORY[0x26D69CDB0](2601, 0xE200000000000000);
  swift_endAccess();
  return (*(v12 + 8))(v18, a8);
}

__int128 *protocol witness for Inspectable.description(depth:mode:context:) in conformance HeterogeneousBuffer(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 17);
  v12 = *(v3 + 20);
  v11 = *(v3 + 24);
  *&v15 = a1;
  *(&v15 + 1) = 1;
  v16 = v4;
  v17 = 0;
  v18 = v5;
  v19 = v6;
  v13 = 256;
  if (!v10)
  {
    v13 = 0;
  }

  return HeterogeneousBuffer.describe(state:)(&v15, v7, v8, v13 | (v12 << 32) | v9, v11);
}

__int128 *protocol witness for Inspectable.describe(state:) in conformance HeterogeneousBuffer(__int128 *a1)
{
  v2 = 256;
  if (!*(v1 + 17))
  {
    v2 = 0;
  }

  return HeterogeneousBuffer.describe(state:)(a1, *v1, *(v1 + 8), v2 | (*(v1 + 20) << 32) | *(v1 + 16), *(v1 + 24));
}

uint64_t Dictionary<>.describe(state:)(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a7;
  v77 = a6;
  v8 = a4;
  v72 = *(a4 - 8);
  v12 = *(v72 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v85 = v70 - v17;
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v92 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v70 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = type metadata accessor for Optional();
  v24 = *(v83 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v83);
  v84 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v82 = v70 - v28;
  v29 = a1[1];
  v99 = *a1;
  *v100 = v29;
  *&v100[10] = *(a1 + 26);
  if (!MEMORY[0x26D69C9D0](a2, a3, v8, a5))
  {
    return 23899;
  }

  v97 = 2651;
  v98 = 0xE200000000000000;
  v73 = v23;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v30 = __CocoaDictionary.makeIterator()();
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v86 = v30 | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(a2 + 32);
    v32 = ~v35;
    v31 = a2 + 64;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v33 = v37 & *(a2 + 64);
    v86 = a2;
  }

  v38 = v85;
  v39 = TupleTypeMetadata2;
  v89 = (v71 + 32);
  v88 = (v72 + 32);
  v80 = TupleTypeMetadata2 - 8;
  v70[1] = v32;
  v40 = (v32 + 64) >> 6;
  v70[3] = v71 + 16;
  v70[2] = v72 + 16;
  v79 = (v24 + 32);
  v76 = (v72 + 8);
  v75 = (v71 + 8);

  v41 = 0;
  for (i = v31; ; v31 = i)
  {
    v87 = v33;
    if ((v86 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      v49 = v73;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v44 = v41;
      v91 = v87;
      goto LABEL_24;
    }

    v54 = 1;
    v90 = v41;
    v91 = v87;
LABEL_27:
    v52 = v84;
LABEL_28:
    v55 = *(v39 - 8);
    (*(v55 + 56))(v52, v54, 1, v39);
    v56 = v82;
    (*v79)(v82, v52, v83);
    if ((*(v55 + 48))(v56, 1, v39) == 1)
    {
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant();
      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v97;
    }

    v57 = *(v39 + 48);
    v58 = v92;
    (*v89)(v92, v56, a3);
    (*v88)(v15, &v56[v57], v8);
    v93 = v99;
    v94 = 2;
    v95 = *&v100[8];
    v96 = *&v100[24];
    v59 = a3;
    v60 = InspectionState.describe<A>(_:)(v58, a3, v77);
    v62 = v61;
    v63 = v8;
    v64 = v15;
    v65 = v63;
    v66 = InspectionState.describe<A>(_:)(v15, v63, v78);
    *&v93 = 40;
    *(&v93 + 1) = 0xE100000000000000;
    MEMORY[0x26D69CDB0](v60, v62);
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v67 = specialized InspectionState.wrapDescription<A>(_:)(v66);
    MEMORY[0x26D69CDB0](v67);

    MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
    v69 = *(&v93 + 1);
    v68 = v93;
    if (String.count.getter() < 51)
    {
    }

    else
    {
      *&v93 = 2105354;
      *(&v93 + 1) = 0xE300000000000000;
      MEMORY[0x26D69CDB0](v68, v69);

      v69 = *(&v93 + 1);
      v68 = v93;
    }

    MEMORY[0x26D69CDB0](v68, v69);

    MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    v15 = v64;
    v42 = v64;
    v8 = v65;
    (*v76)(v42, v65);
    a3 = v59;
    result = (*v75)(v92, v59);
    v41 = v90;
    v33 = v91;
    v38 = v85;
  }

  v43 = v33;
  v44 = v41;
  if (v33)
  {
LABEL_21:
    v91 = (v43 - 1) & v43;
    v48 = __clz(__rbit64(v43)) | (v44 << 6);
    v49 = v73;
    v50 = v86;
    (*(v71 + 16))(v73, *(v86 + 48) + *(v71 + 72) * v48, a3);
    (*(v72 + 16))(v38, *(v50 + 56) + *(v72 + 72) * v48, v8);
LABEL_24:
    v51 = *(TupleTypeMetadata2 + 48);
    v52 = v84;
    v53 = v49;
    v39 = TupleTypeMetadata2;
    (*v89)(v84, v53, a3);
    (*v88)(&v52[v51], v38, v8);
    v54 = 0;
    v90 = v44;
    goto LABEL_28;
  }

  if (v40 <= v41 + 1)
  {
    v45 = v41 + 1;
  }

  else
  {
    v45 = v40;
  }

  v46 = v45 - 1;
  v47 = v41;
  while (1)
  {
    v44 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v44 >= v40)
    {
      v90 = v46;
      v91 = 0;
      v54 = 1;
      goto LABEL_27;
    }

    v43 = *(v31 + 8 * v44);
    ++v47;
    if (v43)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized Dictionary.subscript.setter(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*Dictionary.subscript.modify(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x48uLL);
  }

  v12 = v11;
  *a1 = v11;
  *v11 = a5;
  v11[1] = v5;
  v13 = *(a5 + 24);
  v11[2] = v13;
  v14 = *(v13 - 8);
  v11[3] = v14;
  v15 = *(v14 + 64);
  if (v10)
  {
    v11[4] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[4] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v12[5] = v16;
  v18 = *(a5 + 16);
  v12[6] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v12[7] = v19;
  if (v10)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v12[8] = v21;
  (*(v20 + 16))();
  Dictionary.subscript.getter(a2, a3, a4, a5, v17);
  return Dictionary.subscript.modify;
}

void Dictionary.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v10);
    specialized Dictionary.subscript.setter(v7, v3, v11);
    (*(v4 + 8))(v3, v6);
    v12 = *(v8 + 8);
    v12(v7, v10);
    v12(v5, v10);
  }

  else
  {
    specialized Dictionary.subscript.setter((*a1)[5], v3, v11);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

Swift::Bool __swiftcall Dictionary.contains(keys:)(Swift::OpaquePointer keys)
{
  v5 = v4;
  v22 = v1;
  v23 = v3;
  v6 = v2;
  v8 = *(v2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](keys._rawValue);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v24 = (v8 + 16);
  v20 = v10;
  v21 = (v8 + 8);
  while (1)
  {
    v13 = v12;
    v14 = MEMORY[0x26D69D060](keys._rawValue, v6);
    if (v13 == v14)
    {
      goto LABEL_11;
    }

    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v8 + 16))(v11, keys._rawValue + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v6);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v18 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v20 != 8)
    {
      break;
    }

    v25 = v18;
    (*v24)(v11, &v25, v6);
    swift_unknownObjectRelease();
    if (__OFADD__(v13, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      LOBYTE(v18) = v13 == v14;
      return v18;
    }

LABEL_5:
    v25 = EventTreeStats.count.modify(v22);
    type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable();
    v16 = *(v5 + 8);
    v17 = Sequence<>.contains(_:)();
    (*v21)(v11, v6);

    v12 = v13 + 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return v18;
}

SwiftUITracingSupport::ValueCompressor __swiftcall ValueCompressor.init(values:offset:)(Swift::OpaquePointer values, Swift::Int offset)
{
  v4 = v2;
  v5 = *(values._rawValue + 2);
  if (v5)
  {
    *&v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    rawValue = values._rawValue;
    v8 = v17;
    v9 = *(v17 + 16);
    v10 = 32;
    do
    {
      v11 = *&rawValue[v10];
      *&v17 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
        rawValue = values._rawValue;
        v8 = v17;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 8 * v9 + 32) = v11;
      v10 += 8;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v13 = _s21SwiftUITracingSupport15ValueCompressorV6values6offsetACSayxG_SitcSzRzlufCs6UInt64V_Tt2g5(v8, offset, &v17);
  v16 = v18;
  *v4 = v17;
  *(v4 + 16) = v16;
  result.b = v15;
  result.x = v14;
  result.gcd = v13;
  return result;
}

uint64_t _s21SwiftUITracingSupport15ValueCompressorV6values6offsetACSayxG_SitcSzRzlufCs6UInt64V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {

    a2 = 0;
    v13 = 0;
    v15 = 1;
LABEL_35:
    *a3 = v15;
    a3[1] = v13;
    a3[2] = a2;
    return result;
  }

  v41 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  result = a1;
  v8 = 32;
  v9 = v41;
  do
  {
    v10 = *(result + v8);
    if (v10 < 0)
    {
      goto LABEL_38;
    }

    v12 = v41[1].u64[0];
    v11 = v41[1].u64[1];
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      result = a1;
    }

    v41[1].i64[0] = v12 + 1;
    v41[2].i64[v12] = v10;
    v8 += 8;
    --v4;
  }

  while (v4);
  v13 = v41[2].i64[0];
  if (v12 <= 2)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = (v12 + 1) & 0x7FFFFFFFFFFFFFFCLL;
  v16 = vdupq_n_s64(v13);
  v17 = v41 + 3;
  v18 = v14;
  v19 = v16;
  do
  {
    v16 = vbslq_s8(vcgtq_s64(v16, v17[-1]), v17[-1], v16);
    v19 = vbslq_s8(vcgtq_s64(v19, *v17), *v17, v19);
    v17 += 2;
    v18 -= 4;
  }

  while (v18);
  v20 = vbslq_s8(vcgtq_s64(v19, v16), v16, v19);
  v21 = vextq_s8(v20, v20, 8uLL).u64[0];
  v13 = vbsl_s8(vcgtd_s64(v21, v20.i64[0]), *v20.i8, v21);
  if (v12 + 1 != v14)
  {
LABEL_13:
    v22 = v12 - v14 + 1;
    v23 = &v41[2].i64[v14];
    do
    {
      v25 = *v23++;
      v24 = v25;
      if (v25 < v13)
      {
        v13 = v24;
      }

      --v22;
    }

    while (v22);
  }

  v26 = v41[1].i64[0];
  if (!v26)
  {

    v28 = MEMORY[0x277D84F90];
    v33 = *(MEMORY[0x277D84F90] + 16);
    if (v33)
    {
LABEL_24:
      v34 = 0;
      v15 = *(v28 + 32);
      do
      {
LABEL_25:
        if (v33 == v34)
        {

          goto LABEL_35;
        }

        if (v34 >= v33)
        {
          goto LABEL_39;
        }

        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_40;
        }

        v36 = *(v28 + 8 * v34++ + 32);
      }

      while (v36 < 1);
      v34 = v35;
      while (1)
      {
        v37 = v36;
        v38 = v15 / v36;
        v39 = v15 / v36 * v36;
        if ((v38 * v37) >> 64 != v39 >> 63)
        {
          break;
        }

        v40 = __OFSUB__(v15, v39);
        v36 = v15 - v39;
        if (v40)
        {
          goto LABEL_42;
        }

        v15 = v37;
        if (v36 <= 0)
        {
          v15 = v37;
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v27 = 4;
  v28 = v42;
  while (1)
  {
    v29 = v9->i64[v27];
    v30 = v29 - v13;
    if (__OFSUB__(v29, v13))
    {
      break;
    }

    v32 = *(v42 + 16);
    v31 = *(v42 + 24);
    if (v32 >= v31 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
    }

    *(v42 + 16) = v32 + 1;
    *(v42 + 8 * v32 + 32) = v30;
    ++v27;
    if (!--v26)
    {

      v33 = *(v42 + 16);
      if (!v33)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}