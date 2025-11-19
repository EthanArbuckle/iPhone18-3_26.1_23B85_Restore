uint64_t KtraceFile.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
}

uint64_t KtraceFile.init(ktrace_fd:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = result;
    *(v3 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 40) = 0;
    *(v3 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 56) = 0;
    *(v3 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    v6 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
    result = ktrace_file_open_fd();
    if (result)
    {
      v8 = result;
      type metadata accessor for KtraceFile.Storage();
      v9 = swift_allocObject();
      *(v9 + 24) = 1;
      *(v9 + 16) = v8;
      v10 = *(v3 + 16);
      *(v3 + 16) = v9;

      swift_beginAccess();
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
      swift_beginAccess();
      outlined assign with take of URL?(a3, v3 + v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_endAccess();
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t KtraceFile.__allocating_init(file:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  KtraceFile.init(file:owner:path:)(a1, a2, a3);
  return v9;
}

uint64_t KtraceFile.init(file:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = result;
    *(v3 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 40) = 0;
    *(v3 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 56) = 0;
    *(v3 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    v7 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
    type metadata accessor for KtraceFile.Storage();
    v9 = swift_allocObject();
    *(v9 + 24) = 1;
    *(v9 + 16) = a1;
    v10 = *(v3 + 16);
    *(v3 + 16) = v9;

    *(v9 + 24) = 0;

    swift_beginAccess();
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    swift_beginAccess();
    outlined assign with take of URL?(a3, v3 + v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    swift_endAccess();
    return v3;
  }

  return result;
}

uint64_t KtraceFile.__allocating_init(ktrace_fd:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  a4(a1, a2, a3);
  return v11;
}

uint64_t KtraceFile.init(create:owner:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = result;
    *(v3 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 40) = 0;
    *(v3 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 56) = 0;
    *(v3 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    v6 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
    result = ktrace_file_create_fd();
    if (result)
    {
      v8 = result;
      type metadata accessor for KtraceFile.Storage();
      v9 = swift_allocObject();
      *(v9 + 24) = 1;
      *(v9 + 16) = v8;
      v10 = *(v3 + 16);
      *(v3 + 16) = v9;

      swift_beginAccess();
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
      swift_beginAccess();
      outlined assign with take of URL?(a3, v3 + v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_endAccess();
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t KtraceFile.append(_:expected:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(specialized _copySequenceToContiguousArray<A>(_:)(v4) + 16);

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 32))(v15, v4, v9, v10);
  if ((a3 & 1) != 0 || (v11 = v16, v12 = v17, __swift_project_boxed_opaque_existential_1(v15, v16), (*(v12 + 40))(v11, v12), ktrace_chunk_size() == a2))
  {
    v13 = *(specialized _copySequenceToContiguousArray<A>(_:)(v4) + 16);

    if (v8 < v13)
    {
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t KtraceFile.__allocating_init(url:symbols:owner:)(uint64_t a1, int *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return KtraceFile.init(url:symbols:owner:)(a1, a2);
}

uint64_t KtraceFile.init(url:symbols:owner:)(uint64_t a1, int *a2)
{
  v3 = v2;
  v5 = *a2;
  v24 = *(a2 + 6);
  v25 = *(a2 + 2);
  v23 = *(a2 + 10);
  *(v3 + 16) = 0;
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = result;
    *(v3 + 32) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 40) = 0;
    *(v3 + 48) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 56) = 0;
    *(v3 + 64) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    v7 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v3 + v7, 1, 1, v8);
    swift_beginAccess();
    v10 = *(v3 + 40);
    v11 = *(v3 + 56);
    v12 = *(v3 + 72);
    *(v3 + 24) = v5;
    *(v3 + 32) = v25;
    *(v3 + 48) = v24;
    *(v3 + 64) = v23;

    URL.path.getter();
    String.utf8CString.getter();

    v13 = ktrace_file_open();
    (*(v9 + 8))(a1, v8);

    if (v13)
    {
      type metadata accessor for KtraceFile.Storage();
      v14 = swift_allocObject();
      *(v14 + 24) = 1;
      *(v14 + 16) = v13;
      v15 = *(v3 + 16);
      *(v3 + 16) = v14;

      swift_beginAccess();
      swift_unknownObjectUnownedInit();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v16 = *(v3 + 16);

      v17 = *(v3 + 40);
      v18 = *(v3 + 56);
      v19 = *(v3 + 72);

      v20 = *(v3 + 88);

      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v3 + v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      type metadata accessor for KtraceFile(0);
      v21 = *(*v3 + 48);
      v22 = *(*v3 + 52);
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v3;
  }

  return result;
}

uint64_t KtraceFile.scenario<A>(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = a3;
  v37 = a2;
  v35 = *(a2 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0VGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0VGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C328DC0;
  v10 = [objc_opt_self() processInfo];
  v11 = [v10 processIdentifier];

  *(v9 + 32) = v11;
  *(v9 + 40) = xmmword_26C335300;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v9 + 72) = MEMORY[0x277D84F90];
  *(v9 + 80) = v12;
  v13 = mach_absolute_time();
  a1();
  v14 = mach_absolute_time();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
  }

  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  if (v16 >= v15 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
  }

  *(v12 + 2) = v16 + 1;
  v17 = &v12[16 * v16];
  v18 = type metadata accessor for PropertyListEncoder();
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v33 = v14;
  v34 = v13;
  *&v73 = v13;
  *(&v73 + 1) = v14;
  v31 = xmmword_26C335310;
  *&v74[8] = xmmword_26C335310;
  *v74 = 0x3E665E9F80F29212;
  *&v74[24] = 0xE000000000000000;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  v76 = 0uLL;
  LOBYTE(v77) = 1;
  *(&v77 + 1) = 0x3FF0000000000000;
  *&v78 = v12;
  WORD4(v78) = 513;
  v79 = xmmword_26C335320;
  v80 = xmmword_26C335320;
  v32 = xmmword_26C335320;
  v70 = v78;
  v71 = xmmword_26C335320;
  v72 = xmmword_26C335320;
  v66 = *&v74[16];
  v67 = v75;
  v68 = 0uLL;
  v69 = v77;
  v64 = v73;
  v65 = *v74;
  outlined init with copy of ARTraceV3.Traceinfo(&v73, &v55);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo();
  v21 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v23 = v22;
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v55 = v64;
  v56 = v65;
  outlined destroy of ARTraceV3.Traceinfo(&v55);

  specialized Data.withUnsafeBytes<A>(_:)(v21, v23, v4);
  v24 = outlined consume of Data._Representation(v21, v23);
  if (MEMORY[0x26D69C8C0](v24))
  {
    __break(1u);
  }

  else
  {
    v54 = v9;
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap();

    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v27 = v26;
    swift_bridgeObjectRelease_n();

    specialized Data.withUnsafeBytes<A>(_:)(v25, v27, v4);
    v28 = outlined consume of Data._Representation(v25, v27);
    v29 = MEMORY[0x26D69C8C0](v28);

    if (!v29)
    {
      (*(v35 + 32))(v36, v8, v37);
      v38[0] = v34;
      v38[1] = v33;
      v38[2] = 0x3E665E9F80F29212;
      v39 = v31;
      v40 = 0xE000000000000000;
      v41 = 0;
      v43 = 0;
      v44 = 0;
      v42 = 0xE000000000000000;
      v45 = 1;
      *v46 = v83[0];
      *&v46[3] = *(v83 + 3);
      v47 = 0x3FF0000000000000;
      v48 = v12;
      v49 = 513;
      v51 = v82;
      v50 = v81;
      v52 = v32;
      v53 = v32;
      return outlined destroy of ARTraceV3.Traceinfo(v38);
    }
  }

  __break(1u);
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v55 = v64;
  v56 = v65;
  outlined destroy of ARTraceV3.Traceinfo(&v55);
  swift_unexpectedError();
  __break(1u);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Void __swiftcall KtraceFile.close()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = *(v0 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(v5 + 16);
  ktrace_file_close();
  v7 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
  swift_beginAccess();
  outlined init with copy of ResourceSet<Interpreter, ()>(v0 + v7, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  URL.path(percentEncoded:)(1);
  (*(v9 + 8))(v4, v8);
  String.utf8CString.getter();

  v10 = ktrace_file_open();

  if (v10)
  {
    ktrace_file_close();
    return;
  }

LABEL_7:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *KtraceFile.deinit()
{
  v1 = v0[11];
  v0[11] = MEMORY[0x277D84F90];

  v2 = v0[2];
  v0[2] = 0;

  v3 = v0[2];

  v4 = v0[5];
  v5 = v0[7];
  v6 = v0[9];

  outlined destroy of unowned Swift.AnyObject((v0 + 10));
  v7 = v0[11];

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0 + OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v0;
}

uint64_t KtraceFile.__deallocating_deinit()
{
  KtraceFile.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void protocol witness for Sequence.makeIterator() in conformance KtraceFile(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance KtraceFile()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t Chunk.describe(state:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 24);
  v7 = v2;
  return TraceChunk.describe(state:)(&v4);
}

uint64_t TraceChunk.describe(state:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-v9];
  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = *a1;
    v12 = a1[1];
    v37 = *(a1 + 3);
    v36 = *(a1 + 40);
    v14 = *(a1 + 41);
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v38 = v41;
    MEMORY[0x26D69CDB0](0x206B6E75684328, 0xE700000000000000);
    v15 = *v2;
    v41 = *(*v2 + 32);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v16 = type metadata accessor for _Chunk_Fields(0);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + *(v16 + 24), v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    else
    {
      v27 = URL.description.getter();
      v20 = v28;
      (*(v18 + 8))(v8, v17);
      v19 = v27;
    }

    MEMORY[0x26D69CDB0](v19, v20);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    specialized T_Header.init(loadedFrom:)(*(v15 + 32), &v39);
    LODWORD(v41) = v40;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v29);

    MEMORY[0x26D69CDB0](0x656461656820200ALL, 0xEA00000000002072);
    result = specialized T_Header.init(loadedFrom:)(*(v15 + 32), &v41);
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      v43 = v13 - 1;
      v44 = v12;
      v45 = v11;
      v46 = v37;
      v47 = v36;
      v48 = v14;
      v31 = specialized InspectionState.wrapDescription<A>(_:)();
      MEMORY[0x26D69CDB0](v31);

      MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
      return v38;
    }
  }

  else
  {
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v39 = v41;
    MEMORY[0x26D69CDB0](0x206B6E75684328, 0xE700000000000000);
    v21 = *v2;
    v41 = *(*v2 + 32);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v22 = type metadata accessor for _Chunk_Fields(0);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + *(v22 + 24), v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v23 = type metadata accessor for URL();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v10, 1, v23) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v25 = 0;
      v26 = 0xE000000000000000;
    }

    else
    {
      v32 = URL.description.getter();
      v26 = v33;
      (*(v24 + 8))(v10, v23);
      v25 = v32;
    }

    MEMORY[0x26D69CDB0](v25, v26);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    specialized T_Header.init(loadedFrom:)(*(v21 + 32), &v41);
    LODWORD(v43) = v42;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v34);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    return v39;
  }

  return result;
}

uint64_t Chunk.interpreterForInstruments(symbols:)(int *a1)
{
  v3 = type metadata accessor for _Chunk_Fields(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TraceChunk(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = *(a1 + 6);
  v14 = OBJC_IVAR____TtC21SwiftUITracingSupport5Chunk_chunk;
  v15 = lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI();
  outlined init with copy of TraceChunk(v1 + v14, v10, type metadata accessor for TraceChunk);
  LODWORD(v42) = v11;
  *(&v42 + 1) = v12;
  v16 = *(a1 + 2);
  v39[0] = *(a1 + 1);
  v39[1] = v16;
  v43 = v39[0];
  *v44 = v16;
  *&v44[16] = v13;
  outlined init with copy of TraceChunk(v1 + v14, v6, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();

  outlined destroy of _Chunk_Fields(v6, type metadata accessor for _Chunk_Fields);
  type metadata accessor for Interpreter();
  swift_allocObject();
  v18 = specialized Interpreter.init(chunk:symbols:owner:)(v10, &v42, Strong);
  swift_unknownObjectRelease();
  v19 = *(v18 + 24);
  v20 = *(v15 + 16);
  v21 = (v19 + 40);

  specialized EvolutionTable.add(_:impl:)(0x8000000287CD6370, v20, 0, v19 + 40, v18);

  result = (*(v20 + 24))(&type metadata for Interpreter.SwiftUI, v20);
  v23 = *(v19 + 56);
  v42 = *(v19 + 40);
  v43 = v23;
  *v44 = *(v19 + 72);
  v24 = (v19 + 56);
  v25 = (v19 + 68);
  v26 = (v19 + 88);
  *&v44[9] = *(v19 + 81);
  v27 = (v19 + 40);
  v28 = (v19 + 56);
  v29 = (v19 + 68);
  v30 = (v19 + 88);
  while (1)
  {
    v31 = *v30;
    if (*v29)
    {
      v32 = *v28;
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v42);
    }

    v28 = (v31 + 16);
    v29 = (v31 + 28);
    v30 = (v31 + 48);
    v27 = v31;
  }

  v33 = *v27;
  if (v33)
  {
    v34 = (v33 + 24 * *v32);
    v35 = *(v19 + 56);
    v40[0] = *v21;
    v40[1] = v35;
    v41[0] = *(v19 + 72);
    *(v41 + 9) = *(v19 + 81);
    while (1)
    {
      v36 = *v26;
      if (result < *v25)
      {
        v37 = (*v24 + 8 * result);
        if ((v37[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v40);
      }

      v24 = (v36 + 16);
      v25 = (v36 + 28);
      v26 = (v36 + 48);
      v21 = v36;
    }

    if (*v21)
    {
      v38 = *(*v21 + 24 * *v37);
      *(v38 + 104) = *v34 + 56;
      *(v38 + 168) = *v34 + 120;
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TraceChunk.interpreter(symbols:handles:)(int *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _Chunk_Fields(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TraceChunk(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = *(a1 + 6);
  outlined init with copy of TraceChunk(v3, v13, type metadata accessor for TraceChunk);
  LODWORD(v48) = v14;
  *(&v48 + 1) = v15;
  v17 = *(a1 + 2);
  v45[0] = *(a1 + 1);
  v45[1] = v17;
  v49 = v45[0];
  *v50 = v17;
  *&v50[16] = v16;
  outlined init with copy of TraceChunk(v3, v9, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();

  outlined destroy of _Chunk_Fields(v9, type metadata accessor for _Chunk_Fields);
  type metadata accessor for Interpreter();
  swift_allocObject();
  v19 = specialized Interpreter.init(chunk:symbols:owner:)(v13, &v48, Strong);
  swift_unknownObjectRelease();
  v20 = *(a2 + 16);
  if (!v20)
  {
    return v19;
  }

  v21 = 0;
  v22 = a2 + 32;
  while (1)
  {
    v24 = v22 + 16 * v21;
    v25 = *v24;
    v26 = *(v19 + 24);
    v27 = *(*(v24 + 8) + 16);
    v28 = (v26 + 40);

    specialized EvolutionTable.add(_:impl:)(v25 | 0x8000000000000000, v27, 0, v26 + 40, v19);

    if (v25 == &type metadata for Interpreter.Control)
    {
      goto LABEL_4;
    }

    result = (*(v27 + 24))(v25, v27);
    v30 = *(v26 + 56);
    v48 = *v28;
    v49 = v30;
    *v50 = *(v26 + 72);
    v31 = (v26 + 56);
    v32 = (v26 + 68);
    v33 = (v26 + 88);
    *&v50[9] = *(v28 + 41);
    v34 = v28;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    while (1)
    {
      v38 = *v37;
      if (*v36)
      {
        v39 = *v35;
        if ((v39[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v38)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v48);
      }

      v35 = (v38 + 16);
      v36 = (v38 + 28);
      v37 = (v38 + 48);
      v34 = v38;
    }

    v40 = *v34;
    if (!v40)
    {
      break;
    }

    v41 = (v40 + 24 * *v39);
    v42 = v28[1];
    v46[0] = *v28;
    v46[1] = v42;
    v47[0] = v28[2];
    *(v47 + 9) = *(v28 + 41);
    while (1)
    {
      v43 = *v33;
      if (result < *v32)
      {
        v44 = &(*v31)[2 * result];
        if ((v44[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v43)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v46);
      }

      v31 = (v43 + 16);
      v32 = (v43 + 28);
      v33 = (v43 + 48);
      v28 = v43;
    }

    if (!*v28)
    {
      goto LABEL_22;
    }

    v23 = *(*v28 + 24 * *v44);
    *(v23 + 104) = *v41 + 56;
    *(v23 + 168) = *v41 + 120;
LABEL_4:
    if (++v21 == v20)
    {
      return v19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t Chunk.__deallocating_deinit()
{
  outlined destroy of _Chunk_Fields(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport5Chunk_chunk, type metadata accessor for TraceChunk);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Chunk(__int128 *a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = *a1;
  v7 = v3;
  v8 = *(a1 + 24);
  v9 = v4;
  return TraceChunk.describe(state:)(&v6);
}

Swift::Int Chunk_Error.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

uint64_t _Chunk_Storage.init(chunk:storage:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v2[2] = a2;
  v2[3] = a1;

  result = ktrace_chunk_size();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = ktrace_chunk_map_data();
    if (v6)
    {
      v7 = v6;

      v2[4] = v7;
      v2[5] = v7 + v5;
    }

    else
    {
      lazy protocol witness table accessor for type Chunk_Error and conformance Chunk_Error();
      swift_allocError();
      *v8 = 2;
      swift_willThrow();

      v9 = v2[2];

      swift_deallocPartialClassInstance();
    }

    return v2;
  }

  return result;
}

void *_Chunk_Storage.deinit()
{
  if (v0[4])
  {
    v1 = v0[3];
    v2 = v0[5];
    ktrace_chunk_unmap_data();
    v3 = v0[2];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _Chunk_Storage.__deallocating_deinit()
{
  if (v0[4])
  {
    v1 = v0[3];
    v2 = v0[5];
    ktrace_chunk_unmap_data();
    v3 = v0[2];

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized KTraceFile_Chunk.append(to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for _Chunk_Fields(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v9 + 16);
  v11 = *v2;
  v12 = *(*v2 + 24);
  ktrace_chunk_tag();
  v13 = v11[3];
  ktrace_chunk_version_major();
  v14 = v11[3];
  ktrace_chunk_version_minor();
  if (!v11[4])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = v11[5];
  appended = ktrace_file_append_chunk();
  if (!appended)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = appended;
  a2[3] = type metadata accessor for Miscellaneous(0);
  a2[4] = &protocol witness table for Miscellaneous;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = boxed_opaque_existential_1Tm;
    type metadata accessor for _Chunk_Storage();
    v21 = swift_allocObject();

    _Chunk_Storage.init(chunk:storage:)(v17, v19);
    swift_beginAccess();
    swift_unknownObjectUnownedLoadStrong();
    v22 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    swift_beginAccess();
    outlined init with copy of ResourceSet<Interpreter, ()>(a1 + v22, v8 + *(v5 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v8 = v21;
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    return outlined init with take of TraceChunk(v8, v20, type metadata accessor for _Chunk_Fields);
  }

LABEL_9:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t KTraceFile_Chunk.append(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = type metadata accessor for _Chunk_Fields(0);
  v8 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v24 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v26 = *(v10 + 16);
  (*(a3 + 80))(a2, a3);
  v25 = ktrace_chunk_tag();
  (*(a3 + 88))(a2, a3);
  (*(a3 + 96))(a2, a3);
  v11 = *(a3 + 56);
  if (!v11(a2, a3))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11(a2, a3);
  appended = ktrace_file_append_chunk();
  if (!appended)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = appended;
  a4[3] = type metadata accessor for Miscellaneous(0);
  a4[4] = &protocol witness table for Miscellaneous;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = boxed_opaque_existential_1Tm;
    type metadata accessor for _Chunk_Storage();
    v17 = swift_allocObject();

    _Chunk_Storage.init(chunk:storage:)(v13, v15);
    swift_beginAccess();
    swift_unknownObjectUnownedLoadStrong();
    v18 = OBJC_IVAR____TtC21SwiftUITracingSupport10KtraceFile_url;
    swift_beginAccess();
    v19 = a1 + v18;
    v20 = v24;
    outlined init with copy of ResourceSet<Interpreter, ()>(v19, v24 + *(v23 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v20 = v17;
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    return outlined init with take of TraceChunk(v20, v16, type metadata accessor for _Chunk_Fields);
  }

LABEL_9:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t KTraceFile_Chunk.owner.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  Strong = swift_unknownObjectUnownedLoadStrong();
  outlined destroy of _Chunk_Fields(v7, type metadata accessor for _Chunk_Fields);
  return Strong;
}

uint64_t KTraceFile_Chunk.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _Chunk_Fields(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v10[*(v7 + 32)], a3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined destroy of _Chunk_Fields(v10, type metadata accessor for _Chunk_Fields);
}

uint64_t KTraceFile_Chunk.size.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 56))();
  if (v2)
  {
    return v3 - v2;
  }

  else
  {
    return 0;
  }
}

uint64_t KTraceFile_Chunk.storage.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 8))(a1, a2);
  v8 = *v7;

  outlined destroy of _Chunk_Fields(v7, type metadata accessor for _Chunk_Fields);
  v9 = *(v8 + 24);

  return v9;
}

uint64_t KTraceFile_Chunk.tag.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))();

  return ktrace_chunk_tag();
}

uint64_t _s21SwiftUITracingSupport15CompressedChunkVAA011KTraceFile_E0A2aDP7pointerSWvgTW_0()
{
  result = *(*v0 + 32);
  v2 = *(*v0 + 40);
  return result;
}

uint64_t _s21SwiftUITracingSupport15CompressedChunkVAA011KTraceFile_E0A2aDP4sizeSivgTW_0()
{
  v1 = *(*v0 + 32);
  if (v1)
  {
    return *(*v0 + 40) - v1;
  }

  else
  {
    return 0;
  }
}

uint64_t CompressedChunk.append(to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  appended = NSPageSize();
  if ((appended - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_56;
  }

  v7 = 8 * appended;
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v3 = 256;
  v10 = compression_stream_init(v9, COMPRESSION_STREAM_DECODE, COMPRESSION_LZ4);
  v9->dst_ptr = v8;
  v9->dst_size = v7;
  if (v10)
  {
    goto LABEL_66;
  }

  v11 = v8 + v7;
  LODWORD(v63) = 1;
  *(&v63 + 1) = v7;
  LODWORD(v64) = 256;
  *(&v64 + 1) = v9;
  v65 = 0;
  v66 = v8;
  v67 = v8 + v7;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v71 = v63;
  v72 = v64;
  appended = swift_allocObject();
  *(appended + 16) = 1;
  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_59;
  }

  v3 = appended;
  v13 = *(v12 + 16);
  v14 = *v2;
  v15 = *(*v2 + 24);
  ktrace_chunk_version_major();
  v16 = v14[3];
  ktrace_chunk_version_minor();
  appended = ktrace_file_append_start();
  if (!appended)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    if (appended == -1)
    {
      lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
      v18 = swift_allocError();
      *v45 = 0xD000000000000024;
      v45[1] = 0x800000026C33CDD0;
      swift_willThrow();
      LODWORD(appended) = swift_unexpectedError();
      __break(1u);
LABEL_64:
      if (appended == -1)
      {
        lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
        swift_allocError();
        *v46 = 0xD000000000000024;
        v46[1] = 0x800000026C33CDD0;
        swift_willThrow();
        v61 = 0;
        v62 = 0xE000000000000000;
        swift_getErrorValue();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        v53 = v71;
        v54 = v72;
        v55 = v52;
        v56 = v49;
        v57 = v48;
        v58 = v3;
        v59 = partial apply for closure #1 in CompressedChunk.append(to:);
        v60 = v18;
        v47 = BufferCompressor.describe(state:)();
        MEMORY[0x26D69CDB0](v47);
      }
    }

    while (1)
    {
LABEL_66:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v17 = appended;
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a1;
  v51 = v17;
  v18[4] = v17;

  outlined destroy of BufferCompressor(&v63);
  v19 = v14[4];
  v48 = v11;
  v49 = v8;
  if (v19)
  {
    v20 = v14[5] - v19;
  }

  else
  {
    v20 = 0;
  }

  v52 = 0;
  v3 = 0;
  v9->src_ptr = v19;
  v9->src_size = v20;
  v21 = v65;
  v22 = v66;
  v50 = v67;
  v23 = v67 - v66;
  if (v66)
  {
    v24 = v67 - v66;
  }

  else
  {
    v24 = 0;
  }

  while (1)
  {
    LODWORD(appended) = compression_stream_process(v9, 0);
    if (!appended)
    {
      break;
    }

LABEL_18:
    if (appended != 1)
    {
      goto LABEL_64;
    }

    dst_size = v9->dst_size;
    v52 = 1;
    v21 = 1;
    v28 = v24 - dst_size;
    if (__OFSUB__(v24, dst_size))
    {
      goto LABEL_54;
    }

LABEL_24:
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v22)
    {
      v29 = v28 + v22;
    }

    else
    {
      v29 = 0;
    }

    v30 = v18[4];
    LODWORD(appended) = closure #1 in CompressedChunk.append(to:)(v22, v29, v18[2], v18[3]);
    if (!v22)
    {
      goto LABEL_58;
    }

    v9->dst_ptr = v22;
    v9->dst_size = v23;
    v3 += v28;
    if (!v9->src_size)
    {
      goto LABEL_32;
    }
  }

  v25 = v9->dst_size;
  v26 = v25 == 0;
  if (v26 | v21 & 1)
  {
LABEL_23:
    v21 |= !v26;
    v28 = v24 - v25;
    if (__OFSUB__(v24, v25))
    {
      goto LABEL_54;
    }

    goto LABEL_24;
  }

  if (v9->src_size)
  {
    while (1)
    {
      LODWORD(appended) = compression_stream_process(v9, 0);
      if (appended)
      {
        goto LABEL_18;
      }

      v25 = v9->dst_size;
      if (!v25)
      {
        break;
      }

      if (!v9->src_size)
      {
        goto LABEL_31;
      }
    }

    v21 = 0;
    v26 = 1;
    goto LABEL_23;
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  a2[3] = type metadata accessor for TraceChunk(0);
  a2[4] = &protocol witness table for TraceChunk;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);

  TraceChunk.init(chunk:file:)(v51, a1, boxed_opaque_existential_1Tm);
  LODWORD(appended) = 0;
  v32 = v52;
  v33 = *(a1 + 16);
  if (!v33)
  {
    goto LABEL_61;
  }

  v49 = 0;
  v34 = *(v33 + 16);
  ktrace_file_append_finish();

  if (specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(v22, v50, 0, 0))
  {
    goto LABEL_66;
  }

  v9->src_ptr = 0;
  v9->src_size = 0;
  v35 = v21;
  do
  {
    LODWORD(appended) = compression_stream_process(v9, 1);
    if (appended)
    {
LABEL_41:
      if (appended != 1)
      {
        goto LABEL_62;
      }

      v36 = v9->dst_size;
      v32 = 1;
      v39 = 1;
      v35 = 1;
    }

    else
    {
      v36 = v9->dst_size;
      v37 = v36 == 0;
      if (!(v37 | v35 & 1))
      {
        do
        {
          LODWORD(appended) = compression_stream_process(v9, 1);
          if (appended)
          {
            goto LABEL_41;
          }

          v36 = v9->dst_size;
        }

        while (v36);
        v21 = 0;
        v35 = 0;
        v37 = 1;
      }

      v38 = !v37;
      v39 = v38 | v21;
      v35 |= v38;
    }

    v40 = v24 - v36;
    if (__OFSUB__(v24, v36))
    {
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
      goto LABEL_60;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    if (v22)
    {
      v41 = v40 + v22;
    }

    else
    {
      v41 = 0;
    }

    v42 = v18[4];
    LODWORD(appended) = closure #1 in CompressedChunk.append(to:)(v22, v41, v18[2], v18[3]);
    if (!v22)
    {
      goto LABEL_57;
    }

    v9->dst_ptr = v22;
    v9->dst_size = v23;
    v3 += v40;
    src_size = v9->src_size;
    v21 = (src_size != 0) & v39;
  }

  while (src_size || ((v39 ^ 1) & 1) != 0);
  compression_stream_destroy(v9);
  MEMORY[0x26D69EAB0](v9, -1, -1);
  MEMORY[0x26D69EAB0](v22, -1, -1);
  v53 = v71;
  v54 = v72;
  v55 = v32;
  v56 = 0;
  v57 = 0;
  v58 = v3;
  v59 = partial apply for closure #1 in CompressedChunk.append(to:);
  v60 = v18;
  return outlined destroy of BufferCompressor(&v53);
}

uint64_t closure #1 in CompressedChunk.append(to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if (a2 != result)
    {
      swift_beginAccess();
      if (*(a3 + 16) == 1)
      {
        if (*v4 != 123123123)
        {
          __break(1u);
          goto LABEL_10;
        }

        swift_beginAccess();
        *(a3 + 16) = 0;
      }

      v7 = *(a4 + 16);
      if (v7)
      {
        v8 = *(v7 + 16);
        result = ktrace_file_append_data();
        if (!result)
        {
          return result;
        }

LABEL_11:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t TraceChunk.interpreterForInstruments(symbols:)(int *a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TraceChunk(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 6);
  v15 = lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI();
  outlined init with copy of TraceChunk(v2, v11, type metadata accessor for TraceChunk);
  LODWORD(v42) = v12;
  *(&v42 + 1) = v13;
  v16 = *(a1 + 2);
  v39[0] = *(a1 + 1);
  v39[1] = v16;
  v43 = v39[0];
  *v44 = v16;
  *&v44[16] = v14;
  outlined init with copy of TraceChunk(v2, v7, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();

  outlined destroy of _Chunk_Fields(v7, type metadata accessor for _Chunk_Fields);
  type metadata accessor for Interpreter();
  swift_allocObject();
  v18 = specialized Interpreter.init(chunk:symbols:owner:)(v11, &v42, Strong);
  swift_unknownObjectRelease();
  v19 = *(v18 + 24);
  v20 = *(v15 + 16);
  v21 = (v19 + 40);

  specialized EvolutionTable.add(_:impl:)(0x8000000287CD6370, v20, 0, v19 + 40, v18);

  result = (*(v20 + 24))(&type metadata for Interpreter.SwiftUI, v20);
  v23 = *(v19 + 56);
  v42 = *(v19 + 40);
  v43 = v23;
  *v44 = *(v19 + 72);
  v24 = (v19 + 56);
  v25 = (v19 + 68);
  v26 = (v19 + 88);
  *&v44[9] = *(v19 + 81);
  v27 = (v19 + 40);
  v28 = (v19 + 56);
  v29 = (v19 + 68);
  v30 = (v19 + 88);
  while (1)
  {
    v31 = *v30;
    if (*v29)
    {
      v32 = *v28;
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v42);
    }

    v28 = (v31 + 16);
    v29 = (v31 + 28);
    v30 = (v31 + 48);
    v27 = v31;
  }

  v33 = *v27;
  if (v33)
  {
    v34 = (v33 + 24 * *v32);
    v35 = *(v19 + 56);
    v40[0] = *v21;
    v40[1] = v35;
    v41[0] = *(v19 + 72);
    *(v41 + 9) = *(v19 + 81);
    while (1)
    {
      v36 = *v26;
      if (result < *v25)
      {
        v37 = (*v24 + 8 * result);
        if ((v37[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v40);
      }

      v24 = (v36 + 16);
      v25 = (v36 + 28);
      v26 = (v36 + 48);
      v21 = v36;
    }

    if (*v21)
    {
      v38 = *(*v21 + 24 * *v37);
      *(v38 + 104) = *v34 + 56;
      *(v38 + 168) = *v34 + 120;
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for KTraceFile_Chunk.owner.getter in conformance Miscellaneous()
{
  v1 = type metadata accessor for _Chunk_Fields(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TraceChunk(v0, v4, type metadata accessor for _Chunk_Fields);
  Strong = swift_unknownObjectUnownedLoadStrong();
  outlined destroy of _Chunk_Fields(v4, type metadata accessor for _Chunk_Fields);
  return Strong;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v28[0] = a1;
  v28[1] = 0;
  v2 = MEMORY[0x277D84F90];
  v28[2] = MEMORY[0x277D84F90];

  v3 = 0;
  v23 = v2;
  for (i = (v2 + 4); ; i += 40)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    v6 = swift_allocObject();
    *(v6 + 16) = v28;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    *(result + 16) = closure #1 in KtraceFile.ChunkIterator.next()partial apply;
    *(result + 24) = v6;
    v8 = *(v1 + 16);
    if (!v8)
    {
      break;
    }

    v9 = *(v8 + 16);
    aBlock[4] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)partial apply;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
    aBlock[3] = &block_descriptor_100;
    v10 = _Block_copy(aBlock);

    ktrace_file_iterate();
    _Block_release(v10);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      break;
    }

    swift_beginAccess();
    outlined init with copy of ResourceSet<Interpreter, ()>(v5 + 16, v25, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

    if (!v26)
    {

      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v25, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
      result = v23;
      v20 = v23[3];
      if (v20 < 2)
      {
        return result;
      }

      v21 = v20 >> 1;
      v19 = __OFSUB__(v21, v3);
      v22 = v21 - v3;
      if (!v19)
      {
        v23[2] = v22;
        return result;
      }

      goto LABEL_25;
    }

    result = outlined init with take of KTraceFile_Chunk(v25, v27);
    if (!v3)
    {
      v11 = v23[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMR);
      v14 = swift_allocObject();
      v15 = (_swift_stdlib_malloc_size(v14) - 32) / 40;
      v14[2] = v13;
      v14[3] = 2 * v15;
      v16 = (v14 + 4);
      v17 = v23[3] >> 1;
      if (v23[2])
      {
        v18 = v23 + 4;
        if (v14 != v23 || v16 >= v18 + 40 * v17)
        {
          memmove(v14 + 4, v18, 40 * v17);
        }

        v23[2] = 0;
      }

      i = v16 + 40 * v17;
      v3 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

      v23 = v14;
    }

    v19 = __OFSUB__(v3--, 1);
    if (v19)
    {
      goto LABEL_23;
    }

    outlined init with take of KTraceFile_Chunk(v27, i);
    v1 = v28[0];
  }

  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(__int128 *a1)
{
  v1 = a1[5];
  v38 = a1[4];
  v39 = v1;
  v40 = a1[6];
  v2 = a1[1];
  v34 = *a1;
  v35 = v2;
  v3 = a1[3];
  v36 = a1[2];
  v37 = v3;
  v41 = -1;
  outlined init with copy of Interpreter.Storage.Types(a1, v23);
  result = Interpreter.Storage.Types.Iterator.next()(&v27);
  v5 = MEMORY[0x277D84F90];
  if (v29 == 0xFF)
  {
    v6 = 0;
LABEL_20:
    v23[4] = v38;
    v23[5] = v39;
    v23[6] = v40;
    v24 = v41;
    v23[0] = v34;
    v23[1] = v35;
    v23[2] = v36;
    v23[3] = v37;
    outlined destroy of Interpreter.Storage.Types.Iterator(v23);
    v25[4] = v31;
    v25[5] = v32;
    *v26 = *v33;
    *&v26[14] = *&v33[14];
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v25, &_s21SwiftUITracingSupport5PTypeVSgMd, &_s21SwiftUITracingSupport5PTypeVSgMR);
    v18 = v5[3];
    if (v18 < 2)
    {
      return v5;
    }

    v19 = v18 >> 1;
    v17 = __OFSUB__(v19, v6);
    v20 = v19 - v6;
    if (!v17)
    {
      v5[2] = v20;
      return v5;
    }
  }

  else
  {
    v6 = 0;
    v7 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      v21[4] = v31;
      v21[5] = v32;
      v22[0] = *v33;
      *(v22 + 14) = *&v33[14];
      v21[0] = v27;
      v21[1] = v28;
      v21[2] = v29;
      v21[3] = v30;
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeVGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 120;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v5[3] >> 1;
        v15 = 15 * v14;
        if (v5[2])
        {
          if (v11 != v5 || v13 >= &v5[v15 + 4])
          {
            memmove(v11 + 4, v5 + 4, 120 * v14);
          }

          v5[2] = 0;
        }

        v7 = (v13 + v15 * 8);
        v6 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v5 = v11;
      }

      v17 = __OFSUB__(v6--, 1);
      if (v17)
      {
        break;
      }

      memmove(v7, v21, 0x76uLL);
      v7 += 120;
      result = Interpreter.Storage.Types.Iterator.next()(&v27);
      if (v29 == 0xFF)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C26CB70()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C26CBB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _ss13OpaquePointerVSbIegyd_ABSbIegyd_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of TraceChunk?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10TraceChunkVSgMd, &_s21SwiftUITracingSupport10TraceChunkVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo and conformance ARTraceV3.Traceinfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap and conformance ARTraceV3.ProcessMap);
  }

  return result;
}

uint64_t outlined init with copy of TraceChunk(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, unsigned int a2, unsigned __int16 a3)
{
  result = MEMORY[0x277D84F90];
  if (!a2)
  {
    v6 = 0;
    goto LABEL_32;
  }

  v5 = 0;
  v6 = 0;
  v7 = a3;
  v8 = a2;
  v9 = a3 & 0xC000;
  v10 = a3 & 0x1FFF;
  v11 = (MEMORY[0x277D84F90] + 32);
  v12 = a1 + 4;
  while (2)
  {
    v13 = (v12 + 8 * v5);
    while (1)
    {
      if (v5 >= v8)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!a1)
      {
        goto LABEL_41;
      }

      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_37;
      }

      v15 = *(v13 - 2);
      if ((!v9 || (v15 & (v9 ^ 0xC000)) == 0) && ((v7 & 0x2000) == 0 || (v15 & 0x2000) != 0))
      {
        break;
      }

LABEL_5:
      v13 += 2;
      ++v5;
      if (v14 == v8)
      {
        goto LABEL_32;
      }
    }

    if (!v10)
    {
      if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    if ((v10 & v15) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v16 = *v13;
    if (!v6)
    {
      v34 = *v13;
      v35 = a1;
      v17 = result[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v18 = result;
      v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
      v21 = swift_allocObject();
      v22 = _swift_stdlib_malloc_size(v21);
      v23 = v22 - 32;
      if (v22 < 32)
      {
        v23 = v22 - 29;
      }

      v24 = v23 >> 2;
      v21[2] = v20;
      v21[3] = 2 * (v23 >> 2);
      v25 = (v21 + 4);
      v26 = v18;
      v27 = v18[3] >> 1;
      if (v18[2])
      {
        v28 = v18 + 4;
        if (v21 != v18 || v25 >= v28 + 4 * v27)
        {
          v33 = v23 >> 2;
          memmove(v21 + 4, v28, 4 * v27);
          v25 = (v21 + 4);
          v24 = v33;
          v26 = v18;
        }

        v26[2] = 0;
      }

      v11 = (v25 + 4 * v27);
      v6 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v27;

      result = v21;
      a1 = v35;
      v16 = v34;
    }

    v29 = __OFSUB__(v6--, 1);
    if (v29)
    {
      goto LABEL_39;
    }

    *v11++ = v16;
    v5 = v14;
    if (v14 != v8)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v30 = result[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v6);
    v32 = v31 - v6;
    if (!v29)
    {
      result[2] = v32;
      return result;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of _Chunk_Fields(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TraceChunk(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of _Chunk_Fields(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C26D1C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError()
{
  result = lazy protocol witness table cache variable for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError;
  if (!lazy protocol witness table cache variable for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator()
{
  result = lazy protocol witness table cache variable for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator;
  if (!lazy protocol witness table cache variable for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KtraceFile.ChunkIterator and conformance KtraceFile.ChunkIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Chunk_Error and conformance Chunk_Error()
{
  result = lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error;
  if (!lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error;
  if (!lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Chunk_Error and conformance Chunk_Error);
  }

  return result;
}

uint64_t sub_26C26D36C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectUnownedLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_26C26D3B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectUnownedAssign();
}

void type metadata completion function for KtraceFile()
{
  type metadata accessor for URL?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t getEnumTagSinglePayload for KtraceFile.ChunkIterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for KtraceFile.ChunkIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for Chunk()
{
  result = type metadata accessor for _Chunk_Fields(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C26D96C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_26C26DA3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for _Chunk_Fields()
{
  type metadata accessor for _Chunk_Storage();
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_68Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chunk_Fields(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for _Chunk_Fields(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Miscellaneous()
{
  result = type metadata accessor for _Chunk_Fields(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v8 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = MEMORY[0x26D69C520]();
  v9 = *(a4 + 16);
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8)
  {
    v10 = *(v9 + 16);
    return ktrace_file_append_chunk();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D69EAB0);
  }

  return result;
}

uint64_t BufferCompressor.stream(src:finalize:)(const uint8_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(v3 + 24);
  v7 = a2 - a1;
  if (!a1)
  {
    v7 = 0;
  }

  v6->src_ptr = a1;
  v6->src_size = v7;
  while (1)
  {
    result = compression_stream_process(v6, a3 & 1);
    if (result)
    {
      break;
    }

LABEL_7:
    dst_size = v6->dst_size;
    if (!dst_size || *(v4 + 32) == 1)
    {
      v11 = *(v4 + 40);
      v10 = *(v4 + 48);
      v12 = v10 - v11;
      if (v11)
      {
        v13 = v10 - v11;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 - dst_size;
      if (__OFSUB__(v13, dst_size))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v15 = *(v4 + 64);
        if (!v15)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
        }

        v18 = *(v4 + 72);
        v15(v11, 0);
        __break(1u);
        goto LABEL_33;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (!v11)
      {
        goto LABEL_29;
      }

      v15 = *(v4 + 64);
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_31;
        }
      }

      else if (!v15)
      {
        goto LABEL_30;
      }

      v16 = *(v4 + 72);
      result = (v15)(*(v4 + 40), &v11[v14]);
      v6->dst_ptr = v11;
      v6->dst_size = v12;
      *(v4 + 56) += v14;
    }

    if (!v6->src_size && ((a3 & 1) == 0 || *(v4 + 32) == 1))
    {
      return result;
    }
  }

  if (result == 1)
  {
    *(v4 + 32) = 1;
    goto LABEL_7;
  }

  if (result == -1)
  {
    lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
    swift_allocError();
    *v17 = 0xD000000000000024;
    v17[1] = 0x800000026C33CDD0;
    return swift_willThrow();
  }

LABEL_33:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall BufferCompressor.deallocate()()
{
  v1 = v0;
  v2 = v0;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = (v2 + 40);
  if (specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(v3, v4, 0, 0))
  {
    goto LABEL_32;
  }

  v6 = *(v1 + 24);
  v7 = v4 - v3;
  if (v3)
  {
    v8 = v4 - v3;
  }

  else
  {
    v8 = 0;
  }

  v6->src_ptr = 0;
  v6->src_size = 0;
  do
  {
    v9 = compression_stream_process(v6, 1);
    if (v9)
    {
      if (v9 != COMPRESSION_STATUS_END)
      {
        goto LABEL_30;
      }

      *(v1 + 32) = 1;
    }

    dst_size = v6->dst_size;
    if (dst_size && *(v1 + 32) != 1)
    {
      continue;
    }

    v11 = v8 - dst_size;
    if (__OFSUB__(v8, dst_size))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v12 = *(v1 + 64);
      if (!v12)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      v14 = *(v1 + 72);
      v9 = v12(v3, 0);
      __break(1u);
LABEL_30:
      if (v9 == COMPRESSION_STATUS_ERROR)
      {
        lazy protocol witness table accessor for type BufferCompressor.CompressorError and conformance BufferCompressor.CompressorError();
        swift_allocError();
        *v15 = 0xD000000000000024;
        v15[1] = 0x800000026C33CDD0;
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
      }

      while (1)
      {
LABEL_32:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (!v3)
    {
      goto LABEL_26;
    }

    v12 = *(v1 + 64);
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_28;
      }
    }

    else if (!v12)
    {
      goto LABEL_27;
    }

    v13 = *(v1 + 72);
    v12(v3, &v3[v11]);
    v6->dst_ptr = v3;
    v6->dst_size = v7;
    *(v1 + 56) += v11;
  }

  while (v6->src_size || *(v1 + 32) != 1);
  compression_stream_destroy(v6);
  MEMORY[0x26D69EAB0](v6, -1, -1);
  if (v3)
  {
    MEMORY[0x26D69EAB0](v3, -1, -1);
  }

  *v5 = 0;
  v5[1] = 0;
}

uint64_t BufferCompressor.describe(state:)()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(v0 + 3);
  _StringGuts.grow(_:)(57);
  MEMORY[0x26D69CDB0](0x736572706D6F6328, 0xEC00000020726F73);
  if (v2 == 2049)
  {
    v4 = 0xE500000000000000;
    v5 = 0x6573667A6CLL;
  }

  else
  {
    if (v2 != 256)
    {
      goto LABEL_9;
    }

    v4 = 0xE300000000000000;
    v5 = 3439212;
  }

  v6 = 0x65646F636564;
  MEMORY[0x26D69CDB0](v5, v4);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (!v1)
  {
    v6 = 0x65646F636E65;
LABEL_8:
    MEMORY[0x26D69CDB0](v6, 0xE600000000000000);

    MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33CF90);
    v10 = v3[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5UInt8VGMd, &_sSPys5UInt8VGMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v11 = v3[3];
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v7);

    MEMORY[0x26D69CDB0](0x28202020200A29, 0xE700000000000000);
    v12 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5UInt8VGMd, &_sSpys5UInt8VGMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v13 = v3[1];
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v8);

    MEMORY[0x26D69CDB0](0x290A2920200A29, 0xE700000000000000);
    return 0;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t FileCompressor.describe(state:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v24 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v22 = *(a1 + 41);
  v23 = *(a1 + 16);
  *&v27[0] = 0;
  *(&v27[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v26 = v27[0];
  MEMORY[0x26D69CDB0](0xD000000000000011, 0x800000026C33CFB0);
  v7 = *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
  v8 = *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8);
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Double) -> ();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *&v27[0] = v10;
  *(&v27[0] + 1) = v9;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySdcSgMd, &_sySdcSgMR);
  _print_unlocked<A, B>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10);
  MEMORY[0x26D69CDB0](0x202020200A29, 0xE600000000000000);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v11);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v12);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  v13 = (v2 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor);
  result = swift_beginAccess();
  v15 = v13[2];
  v16 = v13[3];
  v17 = *v13;
  v27[1] = v13[1];
  v27[2] = v15;
  v18 = v13[4];
  v27[3] = v16;
  v27[4] = v18;
  v27[0] = v17;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v3 - 1;
    v29 = v24;
    v30 = v23;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v22;
    outlined init with copy of BufferCompressor?(v27, v25);
    v19 = specialized InspectionState.wrapDescription<A>(_:)();
    v21 = v20;
    outlined destroy of BufferCompressor?(v27);
    MEMORY[0x26D69CDB0](v19, v21);

    return v26;
  }

  return result;
}

uint64_t FileCompressor.__allocating_init(src:dst:bufferSize:operation:progress:)(uint64_t a1, uint64_t a2, size_t a3, compression_stream_operation a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v6 + 48);
  v11 = *(v6 + 52);
  v12 = swift_allocObject();
  v13 = (v12 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v12 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = xmmword_26C32F2B0;
  *(v12 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_total) = 0;
  *(v12 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_progress) = 0;
  v15 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v16 = *MEMORY[0x277D832D0];
  v17 = type metadata accessor for Algorithm();
  (*(*(v17 - 8) + 104))(v12 + v15, v16, v17);
  v18 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v21(v12 + v18, a1, v19);
  v21(v12 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, a2, v19);
  v22 = Algorithm.rawValue.getter();
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v25 = compression_stream_init(v24, a4, v22);
  v24->dst_ptr = v23;
  v24->dst_size = a3;
  if (v25)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v26 = *(v20 + 8);
    v26(a2, v19);
    v26(a1, v19);
    v27 = v12 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
    swift_beginAccess();
    v28 = *(v27 + 48);
    v35[2] = *(v27 + 32);
    v35[3] = v28;
    v35[4] = *(v27 + 64);
    v29 = *(v27 + 16);
    v35[0] = *v27;
    v35[1] = v29;
    *v27 = a4;
    *(v27 + 8) = a3;
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    *(v27 + 32) = 0;
    *(v27 + 40) = v23;
    *(v27 + 48) = v23 + a3;
    *(v27 + 64) = 0;
    *(v27 + 72) = 0;
    *(v27 + 56) = 0;
    outlined destroy of BufferCompressor?(v35);
    v30 = (v12 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
    *v30 = a5;
    v30[1] = a6;
    return v12;
  }

  return result;
}

uint64_t FileCompressor.init(src:dst:bufferSize:operation:progress:)(uint64_t a1, uint64_t a2, size_t a3, compression_stream_operation a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = (v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = xmmword_26C32F2B0;
  *(v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_total) = 0;
  *(v6 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_progress) = 0;
  v14 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v15 = *MEMORY[0x277D832D0];
  v16 = type metadata accessor for Algorithm();
  (*(*(v16 - 8) + 104))(v7 + v14, v15, v16);
  v17 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v35 = a1;
  v20(v7 + v17, a1, v18);
  v21 = a2;
  v20(v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, a2, v18);
  v22 = Algorithm.rawValue.getter();
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v34 = a4;
  v25 = compression_stream_init(v24, a4, v22);
  v24->dst_ptr = v23;
  v24->dst_size = a3;
  if (v25)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v26 = *(v19 + 8);
    v26(v21, v18);
    v26(v35, v18);
    v27 = v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
    swift_beginAccess();
    v28 = *(v27 + 48);
    v38[2] = *(v27 + 32);
    v38[3] = v28;
    v38[4] = *(v27 + 64);
    v29 = *(v27 + 16);
    v38[0] = *v27;
    v38[1] = v29;
    *v27 = v34;
    *(v27 + 8) = a3;
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    *(v27 + 32) = 0;
    *(v27 + 40) = v23;
    *(v27 + 48) = v23 + a3;
    *(v27 + 64) = 0;
    *(v27 + 72) = 0;
    *(v27 + 56) = 0;
    outlined destroy of BufferCompressor?(v38);
    v30 = (v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
    v31 = *(v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb);
    v32 = *(v7 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8);
    *v30 = a5;
    v30[1] = a6;
    outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5);
    outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v31);
    outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(a5);
    return v7;
  }

  return result;
}

uint64_t FileCompressor.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
  swift_beginAccess();
  if (*(v2 + 64) != 1)
  {
    BufferCompressor.deallocate()();
  }

  swift_endAccess();
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, v4);
  v6 = *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(*(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb));
  v7 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v7;
  v12[4] = *(v2 + 64);
  v8 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v8;
  outlined destroy of BufferCompressor?(v12);
  v9 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v10 = type metadata accessor for Algorithm();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  return v1;
}

uint64_t FileCompressor.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
  swift_beginAccess();
  if (*(v2 + 64) != 1)
  {
    BufferCompressor.deallocate()();
  }

  swift_endAccess();
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest, v4);
  v6 = *(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb + 8);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(*(v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_cb));
  v7 = *(v2 + 48);
  v14[2] = *(v2 + 32);
  v14[3] = v7;
  v14[4] = *(v2 + 64);
  v8 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v8;
  outlined destroy of BufferCompressor?(v14);
  v9 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_algorithm;
  v10 = type metadata accessor for Algorithm();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(*v1 + 48);
  v12 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

Swift::Void __swiftcall FileCompressor.run()()
{
  v1 = v0;
  v91 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v81 = *(v2 - 8);
  v82 = v2;
  v3 = *(v81 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v75 - v7;
  v80 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_src;
  if ((URL.regularFileExists.getter() & 1) == 0)
  {
    goto LABEL_50;
  }

  v9 = OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_dest;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = URL.path.getter();
  v13 = MEMORY[0x26D69CC20](v12);

  v14 = [v11 fileExistsAtPath_];

  if (v14)
  {
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v90 = v1;
    type metadata accessor for FileCompressor();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33CFF0);
    goto LABEL_49;
  }

  v79 = v9;
  URL.appendingPathExtension(_:)();
  v15 = [v10 defaultManager];
  v16 = URL.path.getter();
  v17 = MEMORY[0x26D69CC20](v16);

  v18 = [v15 fileExistsAtPath_];

  if (v18)
  {
    v19 = [v10 defaultManager];
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    *&v85 = 0;
    v23 = [v19 removeItemAtURL:v21 error:&v85];

    v24 = v85;
    if (!v23)
    {
      goto LABEL_55;
    }

    v25 = v85;
  }

  v78 = v10;
  v26 = [v10 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v28 = MEMORY[0x26D69CC20](countAndFlagsBits);

  [v26 createFileAtPath:v28 contents:0 attributes:0];

  type metadata accessor for NSFileHandle();
  (*(v81 + 16))(v6, v8, v82);
  v29 = @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(v6);
  v30 = URL.fileSize.getter();
  v31 = URL.openFd(mode:)(0);
  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = v31;
  v33 = mmap(0, v30, 1, 1, v31, 0);
  if (!v33)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v34 = v33;
  if (MEMORY[0x26D69C8C0]())
  {
    *&v85 = 0x203A292870616D6DLL;
    *(&v85 + 1) = 0xE800000000000000;
    LODWORD(v90) = MEMORY[0x26D69C8C0]();
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v73;
    MEMORY[0x26D69CDB0](v72);

    goto LABEL_49;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  v80 = v1;
  v36 = v1 + OBJC_IVAR____TtC21SwiftUITracingSupport14FileCompressor_compressor;
  swift_beginAccess();
  v37 = *(v36 + 8);
  if (v37 == 1)
  {
    goto LABEL_44;
  }

  if (*(v36 + 7))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v77 = v32;
  v38 = *(v36 + 9);
  *(v36 + 8) = partial apply for closure #1 in FileCompressor.run();
  *(v36 + 9) = v35;
  v76 = v29;
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v37);
  swift_beginAccess();
  if (*(v36 + 8) == 1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v39 = *(v36 + 3);
  v39->src_ptr = v34;
  v39->src_size = v30;
  v75 = v34;
  while (1)
  {
    v40 = compression_stream_process(v39, 0);
    if (v40)
    {
      if (v40 != COMPRESSION_STATUS_END)
      {
        if (v40 == COMPRESSION_STATUS_ERROR)
        {
          swift_endAccess();
          v85 = xmmword_26C32DAD0;
          LOBYTE(v86) = 1;
          *(&v86 + 1) = 0;
          *&v87 = 0;
          WORD4(v87) = 512;
          FileCompressor.describe(state:)(&v85);
        }

        while (1)
        {
LABEL_49:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_50:
          *&v85 = 0;
          *(&v85 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(32);
          v90 = v1;
          type metadata accessor for FileCompressor();
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x26D69CDB0](0xD00000000000001ELL, 0x800000026C33CFD0);
        }
      }

      v36[32] = 1;
    }

    if (v39->dst_size && v36[32] != 1)
    {
      goto LABEL_14;
    }

    v42 = *(v36 + 5);
    v41 = *(v36 + 6);
    v43 = v41 - v42;
    if (v42)
    {
      v44 = v41 - v42;
    }

    else
    {
      v44 = 0;
    }

    v1 = *(v36 + 3);
    v45 = v1[1];
    v46 = __OFSUB__(v44, v45);
    v47 = v44 - v45;
    if (v46)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v47 < 0)
    {
      goto LABEL_38;
    }

    if (!v42)
    {
      break;
    }

    v48 = v47 + v42;
    if (!v47)
    {
      goto LABEL_30;
    }

    v49 = *(v36 + 8);
    if (!v49)
    {
      goto LABEL_42;
    }

    v50 = *(v36 + 9);
    v49(*(v36 + 5), v48);
LABEL_13:
    *v1 = v42;
    v1[1] = v43;
    *(v36 + 7) += v48 - v42;
LABEL_14:
    if (!v39->src_size)
    {
      goto LABEL_33;
    }
  }

  v48 = 0;
LABEL_30:
  v51 = *(v36 + 8);
  if (!v51)
  {
    goto LABEL_41;
  }

  v52 = *(v36 + 9);
  v51(*(v36 + 5), v48);
  if (v42)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_33:
  swift_endAccess();
  swift_beginAccess();
  if (*(v36 + 8) == 1)
  {
LABEL_46:
    __break(1u);
  }

  BufferCompressor.deallocate()();
  swift_endAccess();
  v53 = *(v36 + 3);
  v87 = *(v36 + 2);
  v88 = v53;
  v89 = *(v36 + 4);
  v54 = *(v36 + 1);
  v85 = *v36;
  v86 = v54;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *(v36 + 3) = 0u;
  *(v36 + 4) = xmmword_26C32F2B0;
  outlined destroy of BufferCompressor?(&v85);
  v55 = v78;
  v56 = [v78 defaultManager];
  v1 = v80;
  v57 = URL.path.getter();
  v58 = MEMORY[0x26D69CC20](v57);

  v59 = [v56 fileExistsAtPath_];

  if (v59)
  {
    v84[0] = 0;
    v84[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v83 = v1;
    type metadata accessor for FileCompressor();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33CFF0);
    goto LABEL_49;
  }

  v60 = [v55 defaultManager];
  URL._bridgeToObjectiveC()(v61);
  v63 = v62;
  URL._bridgeToObjectiveC()(v64);
  v66 = v65;
  v84[0] = 0;
  v67 = [v60 moveItemAtURL:v63 toURL:v65 error:v84];

  v69 = v81;
  v68 = v82;
  if (v67)
  {
    v70 = v84[0];
    munmap(v75, v30);
    close(v77);

    (*(v69 + 8))(v8, v68);
    v71 = *MEMORY[0x277D85DE8];
    return;
  }

  v24 = v84[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
LABEL_55:
  v74 = v24;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

id @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v14);
  v3 = v2;
  v13 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v13];

  v5 = v13;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t closure #1 in FileCompressor.run()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v9 + 104))(v11, *MEMORY[0x277CC92A8]);
    v12 = specialized Data.init(bytesNoCopy:count:deallocator:)(a1, a2 - a1, v11);
    v14 = v13;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [a3 writeData_];

    return outlined consume of Data._Representation(v12, v14);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t outlined init with copy of BufferCompressor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferCompressorVSgMd, &_s21SwiftUITracingSupport16BufferCompressorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of BufferCompressor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferCompressorVSgMd, &_s21SwiftUITracingSupport16BufferCompressorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C2700F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Double) -> ()(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t type metadata accessor for FileCompressor()
{
  result = type metadata singleton initialization cache for FileCompressor;
  if (!type metadata singleton initialization cache for FileCompressor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t sub_26C2701EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_SWIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for BufferCompressor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BufferCompressor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for FileCompressor()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Algorithm();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BufferCompressor.CompressorError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BufferCompressor.CompressorError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x26D69C520]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = __DataStorage._capacity.modify();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = specialized Data._Representation.init(_:count:)(v14, a2);
  }

  else
  {
    v17 = Data.Deallocator._deallocator.getter();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t UnsafeLongestCommonSubsequence.subsequence.getter(uint64_t a1)
{
  specialized UnsafeLongestCommonSubsequence.subsequence.getter(a1);
}

uint64_t UnsafeLongestCommonSubsequence.init(baseline:candidate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UnsafeLongestCommonSubsequence();
  v9 = *(v8 + 48);
  memset(v14, 0, sizeof(v14));
  v15 = -1;
  type metadata accessor for UnsafeLongestCommonSubsequence.Work();
  v10 = type metadata accessor for Optional();
  v11 = static UnsafeMutablePointer.allocate(capacity:)();
  _sSpsRi_zrlE10initialize2toyxn_tF(v14, v11, v10);
  *(a4 + v9) = v11;
  v12 = *(*(a3 - 8) + 32);
  v12(a4, a1, a3);
  return (v12)(a4 + *(v8 + 44), a2, a3);
}

double protocol witness for Comparison.init(baseline:candidate:) in conformance <> UnsafeLongestCommonSubsequence<A>@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a3 = *a1;
  a3[1] = v4;
  v5 = swift_slowAlloc();
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -1;
  a3[2] = v5;
  return result;
}

Swift::Void __swiftcall UnsafeLongestCommonSubsequence.Work.deallocate()()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *v0;
    v3 = *(v0 + 8);
    outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work(*v0, v3, v1, v2, 0);
    if (v4)
    {
      MEMORY[0x26D69EAB0](v4, -1, -1);
    }

    *v0 = 0;
    *(v0 + 8) = v3;
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    *(v0 + 32) = 0;
  }
}

Swift::Void __swiftcall UnsafeLongestCommonSubsequence.deallocate()()
{
  v2 = v1;
  v3 = *(v0 + 48);
  v4 = *(v1 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  if (*(v4 + 32) != 255)
  {
    v8 = *(v1 + v3);
    UnsafeLongestCommonSubsequence.Work.deallocate()();
  }

  type metadata accessor for UnsafeLongestCommonSubsequence.Work();
  v9 = type metadata accessor for Optional();
  v10 = _sSp21SwiftUITracingSupportRi_zrlE7nullPtrSpyxGvgZ();
  if (v4 == v10)
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    type metadata accessor for Unique();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v11 = v10;
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v4, v9);
    *(v2 + v3) = v11;
  }
}

unint64_t UnsafeLongestCommonSubsequence.count.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v86 = *(*(a1 + 24) + 8);
  v3 = *(v86 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = *(AssociatedTypeWitness - 8);
  v5 = *(v108 + 64);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v112 = &v82 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v113 = type metadata accessor for Optional();
  v110 = *(v113 - 8);
  v10 = v110[8];
  v11 = MEMORY[0x28223BE20](v113);
  v13 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v82 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = type metadata accessor for EnumeratedSequence();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v82 - v21;
  v95 = v2;
  v23 = type metadata accessor for EnumeratedSequence.Iterator();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x28223BE20](v25);
  v98 = a1;
  v30 = *(v96 + *(a1 + 48));
  v31 = *(v30 + 32);
  if (v31 != 255)
  {
    goto LABEL_2;
  }

  v107 = v29;
  v97 = v18;
  v94 = &v82 - v27;
  v109 = v28;
  v111 = v26;
  v92 = v22;
  v85 = v30;
  v93 = v19;
  v39 = v95;
  result = dispatch thunk of Collection.count.getter();
  v40 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_69;
  }

  v90 = *(v98 + 44);
  result = dispatch thunk of Collection.count.getter();
  v41 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = v40 * v41;
  if ((v40 * v41) >> 64 != (v40 * v41) >> 63)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v87 = v41;
  v84 = v40;
  v42 = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(result);
  v83 = v43;
  v44 = HIDWORD(v43);
  v89 = v3;
  MEMORY[0x26D69CEE0](v39, v3);
  EnumeratedSequence.makeIterator()();
  v110 += 4;
  v91 = TupleTypeMetadata2 - 8;
  v105 = (v108 + 32);
  v45 = (v108 + 8);
  v88 = (v107 + 8);
  for (i = v16; ; v16 = i)
  {
    EnumeratedSequence.Iterator.next()();
    v46 = v97;
    v108 = *v110;
    (v108)(v97, v16, v113);
    v47 = TupleTypeMetadata2;
    v48 = *(TupleTypeMetadata2 - 8);
    v49 = *(v48 + 48);
    v106 = v48 + 48;
    v107 = v49;
    if ((v49)(v46, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v101 = *v97;
    v50 = v97 + *(v47 + 48);
    v104 = *v105;
    v104(v112, v50, AssociatedTypeWitness);
    MEMORY[0x26D69CEE0](v95, v89);
    EnumeratedSequence.makeIterator()();
    EnumeratedSequence.Iterator.next()();
    v51 = TupleTypeMetadata2;
    (v108)(v13, v16, v113);
    if ((v107)(v13, 1, v51) != 1)
    {
      v52 = v101 + 1;
      v53 = __OFADD__(v101, 1);
      v102 = v53;
      v100 = v101 * v87;
      LODWORD(v101) = (v101 * v87) >> 64 != (v101 * v87) >> 63;
      v54 = v52 * v87;
      v99 = (v52 * v87) >> 64 != (v52 * v87) >> 63;
      do
      {
        v56 = *v13;
        v104(v8, v13 + *(v51 + 48), AssociatedTypeWitness);
        v57 = *(v98 + 32);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          if (v102)
          {
            goto LABEL_50;
          }

          v58 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_52;
          }

          if (v101)
          {
            goto LABEL_55;
          }

          v59 = v100 + v56;
          if (__OFADD__(v100, v56))
          {
            goto LABEL_57;
          }

          if (v59 >= v44)
          {
            goto LABEL_59;
          }

          if (!v42)
          {
            goto LABEL_76;
          }

          v60 = *(v42 + 8 * v59);
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          v63 = v113;
          if (v61)
          {
            goto LABEL_60;
          }

          if (v99)
          {
            goto LABEL_62;
          }

          v61 = __OFADD__(v54, v58);
          v64 = v54 + v58;
          if (v61)
          {
            goto LABEL_64;
          }

          if (v64 >= v44)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v102)
          {
            goto LABEL_51;
          }

          v65 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_53;
          }

          if (v101)
          {
            goto LABEL_54;
          }

          v66 = v100 + v65;
          if (__OFADD__(v100, v65))
          {
            goto LABEL_56;
          }

          if (v66 >= v44)
          {
            goto LABEL_58;
          }

          if (!v42)
          {
            goto LABEL_75;
          }

          if (v99)
          {
            goto LABEL_61;
          }

          v67 = v54 + v56;
          if (__OFADD__(v54, v56))
          {
            goto LABEL_63;
          }

          if (v67 >= v44)
          {
            goto LABEL_65;
          }

          v61 = __OFADD__(v54, v65);
          v64 = v54 + v65;
          if (v61)
          {
            goto LABEL_66;
          }

          v62 = *(v42 + 8 * v66);
          v68 = *(v42 + 8 * v67);
          if (v68 > v62)
          {
            v62 = v68;
          }

          if (v64 >= v44)
          {
            goto LABEL_68;
          }

          v63 = v113;
        }

        *(v42 + 8 * v64) = v62;
        (*v45)(v8, AssociatedTypeWitness);
        v55 = i;
        EnumeratedSequence.Iterator.next()();
        (v108)(v13, v55, v63);
        v51 = TupleTypeMetadata2;
      }

      while ((v107)(v13, 1, TupleTypeMetadata2) != 1);
    }

    (*v88)(v109, v111);
    (*v45)(v112, AssociatedTypeWitness);
  }

  (*v88)(v94, v111);
  v74 = v85;
  v75 = *v85;
  v76 = v85[1];
  v77 = v85[2];
  v78 = v85[3];
  v79 = v83;
  *v85 = v42;
  v74[1] = v79;
  v80 = v87;
  v74[2] = v84;
  v74[3] = v80;
  v81 = *(v74 + 32);
  *(v74 + 32) = 0;
  result = outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v75, v76, v77, v78, v81);
  v30 = v74;
  v31 = *(v74 + 32);
  if (v31 == 255)
  {
    __break(1u);
LABEL_50:
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
LABEL_62:
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
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_2:
  v32 = *v30;
  v33 = v30[1];
  v34 = v30[3];
  if (v31)
  {
    v35 = v30[2];
    outlined copy of UnsafeLongestCommonSubsequence<A>.Work<A>(*v30, v30[1], v35, v30[3], 1);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v37 = MEMORY[0x26D69D030](v32, TupleTypeMetadata3);
    outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v32, v33, v35, v34, v31);
    return v37;
  }

  v69 = v96;
  v70 = dispatch thunk of Collection.count.getter();
  v71 = v69 + *(v98 + 44);
  result = dispatch thunk of Collection.count.getter();
  v72 = v70 * v34;
  if ((v70 * v34) >> 64 != (v70 * v34) >> 63)
  {
    goto LABEL_72;
  }

  v61 = __OFADD__(v72, result);
  v73 = v72 + result;
  if (v61)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v73 >= HIDWORD(v33))
  {
    goto LABEL_74;
  }

  if (!v32)
  {
LABEL_77:
    __break(1u);
    return result;
  }

  return *(v32 + 8 * v73);
}

uint64_t UnsafeLongestCommonSubsequence.indexedSubsequence(_:)(uint64_t *a1, uint64_t a2)
{
  v66 = a2;
  v4 = *(a2 + 16);
  v64 = *(a2 + 24);
  v57 = *(v64 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(v57 + 8);
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = *(*(TupleTypeMetadata3 - 8) + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v52 = &v47 - v10;
  v56 = v7;
  v54 = *(v7 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v55 = &v47 - v13;
  v67 = AssociatedTypeWitness;
  v58 = *(AssociatedTypeWitness - 8);
  v14 = *(v58 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v21 = *a1;
  v22 = *(a1 + 3);
  v23 = a1[3];
  v68 = v2;
  v24 = dispatch thunk of Collection.count.getter();
  v25 = *(v66 + 44);
  v26 = dispatch thunk of Collection.count.getter();
  dispatch thunk of Collection.endIndex.getter();
  v53 = v25;
  v65 = v4;
  dispatch thunk of Collection.endIndex.getter();
  result = Array.init()();
  v70 = result;
  if (v24 < 1 || v26 < 1)
  {
LABEL_23:
    type metadata accessor for Array();
    swift_getWitnessTable();
    swift_getWitnessTable();
    MutableCollection<>.reverse()();
    v45 = *(v58 + 8);
    v46 = v67;
    v45(v60, v67);
    v45(v20, v46);
    return v70;
  }

  else
  {
    v61 = (v58 + 32);
    v62 = (v58 + 8);
    v51 = (v54 + 16);
    v50 = (v58 + 16);
    v54 += 32;
LABEL_4:
    v66 = v26 - 1;
    while (1)
    {
      v28 = v24 * v23;
      if ((v24 * v23) >> 64 != (v24 * v23) >> 63)
      {
        break;
      }

      v29 = v28 + v26;
      if (__OFADD__(v28, v26))
      {
        goto LABEL_25;
      }

      if (v29 >= v22)
      {
        goto LABEL_26;
      }

      if (!v21)
      {
        goto LABEL_32;
      }

      v30 = __OFADD__(v28, v66);
      v31 = v28 + v66;
      if (v30)
      {
        goto LABEL_27;
      }

      if (v31 >= v22)
      {
        goto LABEL_28;
      }

      v32 = *(v21 + 8 * v29);
      if (v32 == *(v21 + 8 * v31))
      {
        v38 = v63;
        v39 = v60;
        dispatch thunk of BidirectionalCollection.index(before:)();
        v40 = v67;
        (*v62)(v39, v67);
        result = (*v61)(v39, v38, v40);
        if (v24 < 1)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v33 = --v24 * v23;
      if ((v24 * v23) >> 64 != (v24 * v23) >> 63)
      {
        goto LABEL_29;
      }

      v30 = __OFADD__(v33, v26);
      v34 = v33 + v26;
      if (v30)
      {
        goto LABEL_30;
      }

      if (v34 >= v22)
      {
        goto LABEL_31;
      }

      v35 = *(v21 + 8 * v34);
      v36 = v63;
      dispatch thunk of BidirectionalCollection.index(before:)();
      v37 = v67;
      (*v62)(v20, v67);
      result = (*v61)(v20, v36, v37);
      if (v32 != v35)
      {
        v41 = dispatch thunk of Collection.subscript.read();
        (*v51)(v55);
        v41(v69, 0);
        v48 = *(TupleTypeMetadata3 + 48);
        v49 = *(TupleTypeMetadata3 + 64);
        v42 = *v50;
        v43 = v52;
        (*v50)(v52, v20, v67);
        (*v54)(&v43[v48], v55, v56);
        v42(&v43[v49], v60, v67);
        type metadata accessor for Array();
        result = Array.append(_:)();
        if (v24 < 1)
        {
          goto LABEL_23;
        }

LABEL_21:
        v44 = v26 <= 1;
        v26 = v66;
        if (v44)
        {
          goto LABEL_23;
        }

        goto LABEL_4;
      }

      if ((v24 + 1) < 2)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
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
  }

  return result;
}

uint64_t UnsafeLongestCommonSubsequence.rest(ts:)(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v3 = *(a2 + 16);
  v64 = *(a2 + 24);
  v4 = *(v64 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = v4;
  v6 = *(v4 + 8);
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v55 = &v52 - v9;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(*(TupleTypeMetadata3 - 8) + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v60 = &v52 - v12;
  v78 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v75 = *(v7 - 8);
  v20 = *(v75 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  v79 = v7;
  v23 = swift_getTupleTypeMetadata2();
  v70 = type metadata accessor for Optional();
  v76 = *(v70 - 8);
  v24 = *(v76 + 64);
  v25 = MEMORY[0x28223BE20](v70);
  v69 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v68 = &v52 - v27;
  v28 = v6;
  v29 = type metadata accessor for EnumeratedSequence();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v74 = type metadata accessor for EnumeratedSequence.Iterator();
  v52 = *(v74 - 8);
  v31 = *(v52 + 64);
  MEMORY[0x28223BE20](v74);
  v33 = &v52 - v32;
  v71 = specialized UnsafeLongestCommonSubsequence.subsequence.getter(a2);

  v80 = Array.init()();
  v63 = v3;
  MEMORY[0x26D69CEE0](v3, v28);
  v73 = v33;
  v34 = v22;
  EnumeratedSequence.makeIterator()();
  v35 = 0;
  v66 = v23 - 8;
  v67 = (v76 + 32);
  v58 = (v75 + 32);
  v76 = v75 + 8;
  v77 = (v13 + 8);
  v54 = (v13 + 16);
  v53 = (v75 + 16);
  v57 = v23;
  v65 = v34;
  while (1)
  {
    v39 = v69;
    EnumeratedSequence.Iterator.next()();
    v40 = v68;
    (*v67)(v68, v39, v70);
    if ((*(*(v23 - 8) + 48))(v40, 1, v23) == 1)
    {
      break;
    }

    v41 = *v40;
    (*v58)(v34, &v40[*(v23 + 48)], v79);
    v42 = v59;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of BidirectionalCollection.index(_:offsetBy:)();
    v43 = *v77;
    v44 = v42;
    v45 = v78;
    (*v77)(v44, v78);
    v47 = v60;
    v46 = TupleTypeMetadata3;
    Array.subscript.getter();
    v75 = *(v46 + 48);
    v48 = *(v46 + 64);
    v49 = *(swift_getAssociatedConformanceWitness() + 8);
    LOBYTE(v46) = dispatch thunk of static Equatable.== infix(_:_:)();
    v43(&v47[v48], v45);
    v50 = *v76;
    (*v76)(&v47[v75], v79);
    v43(v47, v45);
    if (v46)
    {
      v34 = v65;
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        break;
      }
    }

    else
    {
      v36 = v35;
      v37 = *(TupleTypeMetadata2 + 48);
      v38 = v55;
      (*v54)(v55, v19, v78);
      v34 = v65;
      (*v53)(&v38[v37], v65, v79);
      type metadata accessor for Array();
      Array.append(_:)();
    }

    v43(v19, v78);
    v50(v34, v79);
    v23 = v57;
    v35 = v36;
  }

  (*(v52 + 8))(v73, v74);

  return v80;
}

unint64_t specialized UnsafeLongestCommonSubsequence.subsequence.getter(uint64_t a1)
{
  result = UnsafeLongestCommonSubsequence.count.getter(a1);
  v4 = *(v1 + *(a1 + 48));
  v6 = (v4 + 32);
  v5 = *(v4 + 32);
  if (v5 == 255)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    while (1)
    {
      result = *v4;
      if (v5)
      {
        break;
      }

      v7 = *(v4 + 8);
      v14[0] = *v4;
      v14[1] = v7;
      v15 = *(v4 + 16);
      v8 = UnsafeLongestCommonSubsequence.indexedSubsequence(_:)(v14, a1);
      v10 = *v4;
      v9 = *(v4 + 8);
      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      v13 = *v6;
      *v4 = v8;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *v6 = 1;
      outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v10, v9, v11, v12, v13);
      result = UnsafeLongestCommonSubsequence.count.getter(a1);
      v4 = *(v1 + *(a1 + 48));
      v6 = (v4 + 32);
      v5 = *(v4 + 32);
      if (v5 == 255)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t outlined copy of UnsafeLongestCommonSubsequence<A>.Work<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t type metadata completion function for UnsafeLongestCommonSubsequence(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v6 = a1[4];
    type metadata accessor for UnsafeLongestCommonSubsequence.Work();
    type metadata accessor for Optional();
    result = type metadata accessor for Unique();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeLongestCommonSubsequence(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (v17)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    else
    {
      return *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) == 0;
    }
  }

  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *(a1 + v11);
  if (!v17)
  {
    goto LABEL_28;
  }

LABEL_24:
  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *storeEnumTagSinglePayload for UnsafeLongestCommonSubsequence(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = v7 + v9;
  v11 = (v7 + v9) & ~v9;
  v12 = v7 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v17 = 0;
    v18 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v8;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
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
      if (v6)
      {
        v22 = *(v5 + 56);

        return v22();
      }

      else
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 == 1)
        {
          *v23 = 0;
        }

        else
        {
          *v23 = a2 - 2;
        }
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v8 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t type metadata instantiation function for UnsafeLongestCommonSubsequence.Work()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for UnsafeLongestCommonSubsequence.Work(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeLongestCommonSubsequence.Work(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t Clonable.init(copying:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  (*(v9 + 16))(a4, a1, a2);
  (*(a3 + 8))(a2, a3);
  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t UnsafeArray.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  specialized UnsafeArray.init(arrayLiteral:)(a1, a2);
  v3 = v2;

  return v3;
}

void UnsafeArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35[1] = a2;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v39 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v35 - v17;
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  AssociatedConformanceWitness = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35[0] = *(AssociatedTypeWitness - 8);
  v22 = *(v35[0] + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = v35 - v23;
  v24 = dispatch thunk of Sequence.underestimatedCount.getter();
  v25 = *(v4 + 12);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v4 + 8);
  if (v26 >= v27)
  {
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (!v28)
    {
      if (v29 + 0x4000000000000000 >= 0)
      {
        UnsafeArray.growToCapacity(_:)(2 * v29);
        goto LABEL_6;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  (*(v19 + 16))(AssociatedConformanceWitness, a1, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v36 = *(v8 + 48);
  v37 = v8 + 48;
  if (v36(v18, 1, v7) == 1)
  {
LABEL_13:
    (*(v35[0] + 8))(v40, AssociatedTypeWitness);
    return;
  }

  v30 = *(v8 + 32);
  v35[2] = v8 + 8;
  v35[3] = v8 + 16;
  v31 = v39;
  while (1)
  {
    v30(v13, v18, v7);
    v32 = *(v4 + 12);
    if (v32 == *(v4 + 8))
    {
      UnsafeArray.growToCapacity(_:)(2 * v32);
    }

    if (!*v4)
    {
      break;
    }

    v33 = *(v4 + 12);
    v34 = *v4 + *(v8 + 72) * v33;
    (*(v8 + 16))(v31, v13, v7);
    v30(v34, v31, v7);
    (*(v8 + 8))(v13, v7);
    if (v33 == -1)
    {
      __break(1u);
      goto LABEL_15;
    }

    *(v4 + 12) = v33 + 1;
    dispatch thunk of IteratorProtocol.next()();
    if (v36(v18, 1, v7) == 1)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  __break(1u);
}

Swift::Void __swiftcall UnsafeArray.deallocate()()
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 3);
    v4 = *(v0 + 16);
    v5 = *v1;
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v2, v4);
    *v1 = 0;
  }
}

Swift::Void __swiftcall UnsafeArray.copy()()
{
  if (*v1)
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 12);
    v4 = *(v0 + 16);
    *v1 = static UnsafeMutablePointer.allocate(capacity:)();

    UnsafeMutablePointer.initialize(from:count:)();
  }
}

void *protocol witness for Clonable.init(copying:) in conformance EventTreeStats@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[2];
  v4 = result[3];
  v5 = *(result + 8);
  v6 = *(result + 9);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 36) = v6;
  if (v4)
  {
    v7 = swift_slowAlloc();
    *(a2 + 24) = v7;

    return memcpy(v7, v4, 40 * v6);
  }

  return result;
}

void protocol witness for Clonable.init(copying:) in conformance DiffTreeStats(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  DiffTreeStats.copy()();
}

uint64_t specialized Inspectable.description(depth:mode:context:)(uint64_t a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = a4;
  v9 = a4 >> 8;
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v4 + 16, v20);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v14[0] = a1;
  v14[1] = 1;
  v15 = a2;
  v16 = 0;
  v17 = a3;
  v18 = v5;
  v19 = v9;
  v12 = (*(*(v11 + 24) + 32))(v14, v10);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v12;
}

uint64_t specialized Inspectable.description(depth:mode:context:)(uint64_t a1, char a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a1;
  v9[1] = 1;
  v10 = a2;
  v11 = 0;
  v12 = a3;
  v13 = a4;
  os_unfair_lock_lock_with_options();
  closure #1 in CircularBuffer.describe(state:)((a6 + 8), v9, &v8);
  os_unfair_lock_unlock(a6);
  return v8;
}

uint64_t Inspectable.description(depth:mode:context:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  v9[0] = a1;
  v9[1] = 1;
  v10 = v5;
  v11 = 0;
  v12 = v6;
  v13 = v7;
  return (*(a5 + 32))(v9, a4, a5);
}

void UnsafeArray.append<A>(ref:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v26 = a5;
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v28 = *(v25 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v25 - v10;
  v12 = *(a2 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 3);
  if (*(v5 + 2) == v17)
  {
    UnsafeArray.growToCapacity(_:)(2 * v17);
  }

  v29 = a3;
  v18 = *v5;
  if (*v5)
  {
    v19 = *(v5 + 3);
    v20 = v18 + *(v13 + 72) * v19;
    (*(v13 + 16))(v16, v30, v12);
    (*(v13 + 32))(v20, v16, v12);
    if (v19 == -1)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 3) = v19 + 1;
      v21 = *(v5 + 2);
      v33 = v18;
      v34 = v21;
      v35 = v19 + 1;
      WitnessTable = swift_getWitnessTable();
      ArrayLike.lastIndex.getter(a2, WitnessTable);
      v31 = v32;
      v23 = v29;
      v24 = *(swift_getAssociatedConformanceWitness() + 8);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(_:)();
      if (v28 == *(*(v23 - 8) + 64))
      {
        (*(*(v23 - 8) + 16))(v26, v11, v23);
        (*(v25 + 8))(v11, AssociatedTypeWitness);
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void UnsafeArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 12);
  if (*(v2 + 8) == v9)
  {
    UnsafeArray.growToCapacity(_:)(2 * v9);
  }

  if (*v2)
  {
    v10 = *(v2 + 12);
    v11 = *v2 + *(v5 + 72) * v10;
    (*(v5 + 16))(v8, a1, v4);
    (*(v5 + 32))(v11, v8, v4);
    if (v10 != -1)
    {
      *(v2 + 12) = v10 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t UnsafeArray.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v36 = a5;
  v37 = a2;
  v35 = a1;
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  (*(a4 + 56))(a3, a4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v38 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v18)
    {
      if (v19 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v20 = v34;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v21 = *(*(v7 + 32) + 8);
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v12 + 8))(v20, v11);
        if ((v22 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v24 = v34;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v25 = *(*(v7 + 32) + 8);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v12 + 8))(v24, v11);
      if (v26)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v19 < 64)
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
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v29 = v34;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v30 = *(*(v7 + 32) + 8);
    v31 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v12 + 8))(v29, v11);
    if (v31)
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

  if (v28 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v32 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v12 + 8))(v17, v11);
  return (*(*(v37 - 8) + 16))(v36, v35 + *(*(v37 - 8) + 72) * v32);
}

void (*UnsafeArray.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x28uLL);
  }

  v12 = v11;
  *a1 = v11;
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v36 = *(*(v13 + 24) + 16);
  v14 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(v14);
  }

  v12[2] = v15;
  v16 = swift_checkMetadataState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  if (v10)
  {
    v19 = swift_coroFrameAlloc();
    v12[3] = v19;
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(*(v16 - 8) + 64));
    v12[3] = v19;
    v20 = malloc(v18);
  }

  v21 = v20;
  v12[4] = v20;
  (*(a7 + 56))(a6, a7);
  v22 = v17;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v12[1] = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v23)
    {
      if (v24 > 64)
      {
LABEL_17:
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v25 = *(*(v13 + 32) + 8);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v22 + 8))(v19, v16);
        if ((v26 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_34:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v28 = *(*(v13 + 32) + 8);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v22 + 8))(v19, v16);
      if (v29)
      {
        goto LABEL_34;
      }

LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    if (v24 < 64)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_28;
  }

  while (1)
  {
    *v12 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v31 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v30 & 1) == 0)
    {
      break;
    }

    if (v31 <= 64)
    {
      goto LABEL_32;
    }

LABEL_26:
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v32 = *(*(v13 + 32) + 8);
    v33 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v22 + 8))(v19, v16);
    if (v33)
    {
      __break(1u);
LABEL_28:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if (v31 >= 64)
  {
    goto LABEL_26;
  }

LABEL_32:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_33:
  v34 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v22 + 8))(v21, v16);
  v35 = a3 + *(*(a5 - 8) + 72) * v34;
  return UnsafeArray.subscript.modify;
}

void UnsafeArray.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  free(*(*a1 + 32));
  free(v2);
  free(v3);

  free(v1);
}

Swift::Void __swiftcall Strong.deallocate()()
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 16);
    v4 = *v1;
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v2, v3);
    *v1 = 0;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

Swift::Void __swiftcall Strong.copy()()
{
  v2 = *(v0 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, *v1, v2);
  v7 = specialized Strong.init(_:)(v6, v2);
  (*(v3 + 8))(v6, v2);
  *v1 = v7;
}

uint64_t IterativeTreeTraversal.visit<A>(each:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v36 = a2;
  v9 = *(a3 + 16);
  v37 = *(a3 + 24);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(*(TupleTypeMetadata3 - 8) + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v13 = v30 - v12;
  v38 = *(v9 - 8);
  v14 = *(v38 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v30[0] = v16;
  v39 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  (*(v19 + 16))(v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v20 = Sequence.reversed()();
  result = MEMORY[0x26D69D060](v20, v9);
  if (!result)
  {
  }

  v22 = *(v4 + 64);
  v32 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    v23 = 0;
    v33 = *(v4 + 80);
    v34 = (v38 + 16);
    v30[1] = v37 - 8;
    v31 = (v38 + 32);
    v24 = TupleTypeMetadata3;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v38 + 16))(v39, v20 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v23, v9);
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v30[0] != 8)
        {
          goto LABEL_18;
        }

        v40 = result;
        (*v34)(v39, &v40, v9);
        result = swift_unknownObjectRelease();
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:

          *(v6 + 80) = v5;
          return result;
        }
      }

      v5 = v33 + v23 + 1;
      if (__OFADD__(v33 + v23, 1))
      {
        break;
      }

      v27 = *(v24 + 48);
      v28 = v6;
      v29 = *(v24 + 64);
      (*v31)(v13, v39, v9);
      (*(*(v37 - 8) + 16))(&v13[v27], v36);
      *&v13[v29] = v32;
      v6 = v28;
      type metadata accessor for Array();
      Array.append(_:)();
      ++v23;
      if (v26 == MEMORY[0x26D69D060](v20, v9))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (**a6)(char *, uint64_t), int a7, uint64_t a8, void (**a9)(char *, char *, uint64_t), __int128 a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a10;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v16, a3, a4, a7, a8, a9, a5, a6, a10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t InspectionState.describe<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *v3 - 1;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    v8 = *(v3 + 40);
    return InspectionState.wrapDescription<A>(_:)(result, a2, a3);
  }

  return result;
}

uint64_t InspectionState.describe<A>(value:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 40);
    v8 = *(v2 + 16);
    v9 = *(v2 + 8);
    v12[0] = *v2 - 1;
    v12[1] = v9;
    v13 = v8;
    v14 = *(v2 + 24);
    v15 = v7;
    (*(v6 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = String.init<A>(describing:)();
    v11 = specialized InspectionState.wrapDescription<A>(_:)(v10);

    return v11;
  }

  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance UnsafeTree<A, B>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v5 = a1[3];
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = a1[2];
  v7[3] = v5;
  v7[4] = a1[4];
  return Clonable.init(copying:)(v7, a2, a3, a4);
}

uint64_t ArrayLike.lastIndex.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  dispatch thunk of Collection.endIndex.getter();
  v9 = *(*(a2 + 16) + 8);
  dispatch thunk of BidirectionalCollection.index(before:)();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

unint64_t UnsafeArray.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (result >= HIDWORD(a3))
  {
    __break(1u);
  }

  else if (a2)
  {
    return (*(*(a4 - 8) + 16))(a5, a2 + *(*(a4 - 8) + 72) * result, a4);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UnsafeArray.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (!keepingCapacity)
  {
    v5 = v1;
    UnsafeArray.deallocate()();
    *(v2 + 2) = 16;
    v6 = *(v5 + 16);
    *v2 = static UnsafeMutablePointer.allocate(capacity:)();
    goto LABEL_6;
  }

  if (!*(v2 + 3))
  {
LABEL_6:
    *(v2 + 3) = 0;
    return;
  }

  if (*v2)
  {
    v3 = *(v1 + 16);
    v4 = *v2;
    UnsafeMutablePointer.deinitialize(count:)();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t (*Atomic.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v23 - 8);
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v23 - 8) + 64));
  }

  v12 = v11;
  v9[7] = v11;
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  if (v7)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(*(v13 - 8) + 64));
  }

  v9[8] = v15;
  if ((*(a3 + 4) & 1) == 0)
  {
    v20 = v15;
    os_unfair_lock_lock_with_options();
    *(a3 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a3;
    v9[4] = partial apply for closure #1 in Atomic.subscript.read;
    v9[5] = v16;
    *v9 = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_4;
    v21 = _Block_copy(v9);
    v17 = v9[5];

    static DispatchQoS.unspecified.getter();
    v9[6] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v20, v12, v21);
    _Block_release(v21);

    (*(v10 + 8))(v12, v23);
    (*(v14 + 8))(v20, v13);
  }

  v18 = *(type metadata accessor for Atomic.Storage() + 32);
  return Atomic.subscript.read;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CauseEffect(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[1];
  v14 = *v3;
  v15 = v7;
  v16 = v3[2];
  v17 = *(v3 + 48);
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return specialized Aggregate<>.describe(ref:state:)(v14, v9);
}

uint64_t protocol witness for Clonable.init(copying:) in conformance CauseEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 28) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 44) = v9;
  *(a2 + 48) = v10;
  v11 = *v3;
  if (*v3)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 12);
    v14 = swift_slowAlloc();
    *v3 = v14;
    memcpy(v14, v11, 88 * v13);
  }

  v15 = *(v3 + 16);
  if (v15)
  {
    v16 = *(v3 + 24);
    v17 = *(v3 + 28);
    v18 = swift_slowAlloc();
    *(v3 + 16) = v18;
    memcpy(v18, v15, v17 << 6);
  }

  v19 = **(v3 + 32);

  *(v3 + 32) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v20);
  if (v4)
  {
    v21 = swift_slowAlloc();
    *(a2 + 16) = v21;
    memcpy(v21, v4, 4 * v5);
  }

  if (v7)
  {
    v22 = swift_slowAlloc();
    *(a2 + 32) = v22;
    memcpy(v22, v7, 4 * v9);
  }

  v23 = **(v3 + 40);

  result = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v24);
  *(v3 + 40) = result;
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance UpdateStack(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = v6[1];
  v17 = *v6;
  v18[0] = v10;
  *(v18 + 9) = *(v6 + 25);
  v12[0] = a1;
  v12[1] = 1;
  v13 = v7;
  v14 = 0;
  v15 = v8;
  v16 = v9;
  return a6(0, v12);
}

uint64_t protocol witness for Clonable.init(copying:) in conformance UpdateStack@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v4 = a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = a1[3];
  v12 = *(a1 + 8);
  v11 = *(a1 + 9);
  v13 = *(a1 + 40);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v8;
  *(a4 + 20) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v12;
  *(a4 + 36) = v11;
  *(a4 + 40) = v13;
  v14 = *v7;
  if (*v7)
  {
    v15 = v11;
    v17 = *(v7 + 8);
    v18 = *(v7 + 12);
    v19 = swift_slowAlloc();
    *v7 = v19;
    v20 = 88 * v18;
    v4 = a3;
    v11 = v15;
    memcpy(v19, v14, v20);
  }

  v21 = *(v7 + 16);
  if (v21)
  {
    v22 = *(v7 + 24);
    v23 = *(v7 + 28);
    v24 = swift_slowAlloc();
    *(v7 + 16) = v24;
    memcpy(v24, v21, v23 << 6);
  }

  v25 = **(v7 + 32);

  *(v7 + 32) = a2(v26);
  if (v6)
  {
    v27 = swift_slowAlloc();
    *(a4 + 8) = v27;
    memcpy(v27, v6, 4 * v9);
  }

  if (v10)
  {
    v28 = swift_slowAlloc();
    *(a4 + 24) = v28;
    memcpy(v28, v10, 4 * v11);
  }

  v29 = **(v7 + 40);

  result = v4(v30);
  *(v7 + 40) = result;
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance AggregateContainer.Config(uint64_t a1, char *a2, uint64_t *a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = *(v3 + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  return AggregateContainer.Config.describe(state:)();
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TreeValueFlags(uint64_t a1, char *a2, uint64_t *a3)
{
  v8 = *v3;
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  return TreeValueFlags.describe(state:)();
}

uint64_t _s21SwiftUITracingSupport6UniqueVAARi_zrlE12wrappedValueACyxGx_tcfC(uint64_t a1, uint64_t a2)
{
  v4 = static UnsafeMutablePointer.allocate(capacity:)();
  (*(*(a2 - 8) + 32))(v4, a1, a2);
  return v4;
}

uint64_t Strong.init(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void (*Atomic.subscript.modify(uint64_t a1, char a2, os_unfair_lock *lock))(uint64_t a1, char a2)
{
  *a1 = lock;
  *(a1 + 8) = a2;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
  }

  v3 = *(type metadata accessor for Atomic.Storage() + 32);
  return Atomic.subscript.modify;
}

void Atomic.subscript.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 8))
    {
      os_unfair_lock_unlock(*a1);
    }
  }
}

Swift::Void __swiftcall Atomic.deallocate()()
{
  v2 = *v1;
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Atomic.Storage();
  if (v2)
  {
    v5 = v4;
    if (*(v2 + 5) == 1)
    {
      v6 = *(v4 + 32);
      UnsafeMutablePointer.deinitialize(count:)();
    }

    type metadata accessor for Atomic.Params();
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v2, v5);
    *v1 = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s21SwiftUITracingSupport6UniqueVAARi_zrlE10deallocateyyF(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(a1 + 16);
    v4 = *v1;
    UnsafeMutablePointer.deinitialize(count:)();
    result = MEMORY[0x26D69D370](v2, v3);
    *v1 = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Attachment_Entry(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12[0] = a1;
  v12[1] = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return Attachment_Entry.describe(state:)(v12, v7, v8, v9);
}

unint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Tracepoint_Entry(uint64_t a1, char *a2, uint64_t *a3)
{
  v10 = v3[2];
  v11 = v3[3];
  v12 = *(v3 + 32);
  v8 = *v3;
  v9 = v3[1];
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  return Tracepoint_Entry.describe(state:)();
}

uint64_t UnsafeArray.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return a2 + *(*(a4 - 8) + 72) * result;
  }

  __break(1u);
  return result;
}

uint64_t ArrayLike.has(index:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v20[-v7];
  dispatch thunk of Collection.indices.getter();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(v9) = Sequence<>.contains(_:)();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v11 = dispatch thunk of Collection.subscript.read();
    v13 = v12;
    v14 = *(v3 + 8);
    v15 = swift_getAssociatedTypeWitness();
    v16 = *(v15 - 8);
    (*(v16 + 16))(a2, v13, v15);
    v11(v20, 0);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  else
  {
    v18 = *(v3 + 8);
    v19 = swift_getAssociatedTypeWitness();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t ArrayLike.mutEach(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a1;
  v56 = a2;
  v46 = *(a4 + 8);
  v57 = *(v46 + 8);
  v48 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v45 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  v26 = *(v5 + 56);
  v26(&v45 - v24, 1, 1, AssociatedTypeWitness);
  v53 = v23;
  v26(v23, 1, 1, AssociatedTypeWitness);
  v27 = v13;
  v51 = v14;
  v28 = *(v14 + 16);
  v49 = v25;
  v47 = v28;
  v28(v20, v25, v13);
  v29 = *(v5 + 48);
  v30 = v29(v20, 1, AssociatedTypeWitness);
  v52 = v13;
  if (v30 == 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    v27 = v52;
    if (v29(v20, 1, AssociatedTypeWitness) != 1)
    {
      (*(v51 + 8))(v20, v27);
    }
  }

  else
  {
    (*(v5 + 32))(v12, v20, AssociatedTypeWitness);
  }

  v31 = v54;
  v47(v54, v53, v27);
  if (v29(v31, 1, AssociatedTypeWitness) == 1)
  {
    v32 = v58;
    dispatch thunk of Collection.endIndex.getter();
    v33 = v54;
    v34 = v29(v54, 1, AssociatedTypeWitness);
    v27 = v52;
    v35 = v32;
    if (v34 != 1)
    {
      (*(v51 + 8))(v33, v52);
    }
  }

  else
  {
    v35 = v58;
    (*(v5 + 32))(v58, v31, AssociatedTypeWitness);
  }

  v36 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v37 = *(v5 + 8);
    v37(v35, AssociatedTypeWitness);
  }

  else
  {
    v38 = (v5 + 8);
    v39 = (v5 + 32);
    v50 = v38 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = v45;
    v54 = v36;
    do
    {
      v41 = dispatch thunk of MutableCollection.subscript.modify();
      v55(v42);
      v41(v59, 0);
      dispatch thunk of Collection.index(after:)();
      v37 = *v38;
      (*v38)(v12, AssociatedTypeWitness);
      (*v39)(v12, v40, AssociatedTypeWitness);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v27 = v52;
    v37(v58, AssociatedTypeWitness);
  }

  v37(v12, AssociatedTypeWitness);
  v43 = *(v51 + 8);
  v43(v53, v27);
  return (v43)(v49, v27);
}

uint64_t (*UnsafeArray.subscript.modify(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5))()
{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    v5 = a3 + *(*(a5 - 8) + 72) * a2;
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance EvolutionTable<A>@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return Clonable.init(copying:)(v6, a2, a3, a4);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance IntervalSet(uint64_t result, char *a2, uint64_t *a3)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *a2;
    v5 = *a3;
    v6 = *(a3 + 4);
    return specialized InspectionState.wrapDescription<A>(_:)(*v3);
  }

  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Control.Events(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 8);
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return specialized Interpreter.Control.Events.describe(state:)(v9, v7);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Control()
{
  v1 = *v0;
  v2 = v0[40];
  MEMORY[0x26D69CDB0](0x6C6F72746E6F4328, 0xE900000000000020);
  if (v2)
  {
    v3 = 0x6C65636E6163;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v3, v4);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

unint64_t UnsafeArray.init(capacity:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = 0;
  if (v1)
  {
    v2 = *(type metadata accessor for UnsafeArray() + 16);
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  return result;
}

uint64_t Atomic.initialized.getter(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 5);
  os_unfair_lock_unlock(a1);
  return v2;
}

uint64_t (*Atomic.subscript.read(uint64_t a1, char a2, os_unfair_lock *lock))()
{
  *a1 = lock;
  *(a1 + 8) = a2;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
  }

  v3 = *(type metadata accessor for Atomic.Storage() + 32);
  return Atomic.subscript.read;
}

uint64_t Collection<>.binarySearchFirstBefore(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v184 = a1;
  v159 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v154 = type metadata accessor for Optional();
  v153 = *(v154 - 8);
  v9 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v163 = (&v153 - v10);
  v11 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v180 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v158 = *(*(v13 + 24) + 16);
  v157 = swift_getAssociatedTypeWitness();
  v14 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v156 = &v153 - v15;
  v16 = swift_checkMetadataState();
  v182 = *(v16 - 8);
  v17 = *(v182 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v187 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v165 = &v153 - v20;
  v177 = swift_checkMetadataState();
  v183 = *(v177 - 8);
  v21 = *(v183 + 64);
  v22 = MEMORY[0x28223BE20](v177);
  v174 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v166 = &v153 - v25;
  v160 = *(AssociatedTypeWitness - 8);
  v26 = *(v160 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v176 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v181 = &v153 - v30;
  MEMORY[0x28223BE20](v29);
  v168 = &v153 - v31;
  v32 = swift_checkMetadataState();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v192 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v173 = &v153 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v164 = &v153 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v171 = &v153 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v153 - v43;
  v185 = a2;
  v186 = a3;
  if (!dispatch thunk of Collection.count.getter())
  {
    v46 = *(v160 + 56);
    v47 = v159;

    return v46(v47, 1, 1, AssociatedTypeWitness);
  }

  v179 = AssociatedTypeWitness;
  v45 = *(AssociatedConformanceWitness + 56);
  v190 = v16;
  v175 = AssociatedConformanceWitness;
  v188 = v45;
  v189 = AssociatedConformanceWitness + 56;
  v45(v16, AssociatedConformanceWitness);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v193 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v49 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v50 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v49)
    {
      if (v50 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v54 = v171;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v55 = *(*(v13 + 32) + 8);
        v56 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v33 + 8))(v54, v32);
        if (v56)
        {
          goto LABEL_114;
        }

        goto LABEL_17;
      }

LABEL_12:
      lazy protocol witness table accessor for type Int and conformance Int();
      v51 = v171;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v52 = *(*(v13 + 32) + 8);
      v53 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v33 + 8))(v51, v32);
      if (v53)
      {
        goto LABEL_114;
      }

      goto LABEL_18;
    }

    if (v50 < 64)
    {
LABEL_17:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_18:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v193 = 0x7FFFFFFFFFFFFFFFLL;
    v57 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v58 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v57 & 1) == 0)
    {
      break;
    }

    if (v58 <= 64)
    {
      goto LABEL_27;
    }

LABEL_21:
    lazy protocol witness table accessor for type Int and conformance Int();
    v59 = v171;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v60 = *(*(v13 + 32) + 8);
    v61 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v33 + 8))(v59, v32);
    if (v61)
    {
      __break(1u);
LABEL_23:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_28;
  }

  if (v58 >= 64)
  {
    goto LABEL_21;
  }

LABEL_27:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_28:
  v155 = dispatch thunk of BinaryInteger._lowWord.getter();
  v178 = *(v33 + 8);
  v191 = v33 + 8;
  v178(v44, v32);
  v62 = v181;
  dispatch thunk of Collection.endIndex.getter();
  v63 = v168;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v64 = (v160 + 8);
  v65 = *(v160 + 8);
  v65(v62, v179);
  v172 = v65;
  v66 = dispatch thunk of Collection.subscript.read();
  v67 = v183;
  v68 = *(v183 + 16);
  v69 = v166;
  v70 = v177;
  v170 = v183 + 16;
  v169 = v68;
  v68(v166);
  v66(&v193, 0);
  v71 = v63;
  v72 = v179;
  v65(v71, v179);
  v73 = *(v180 + 24);
  v74 = v165;
  v168 = (v180 + 24);
  v167 = v73;
  (v73)(v70);
  v75 = *(v67 + 8);
  v183 = v67 + 8;
  v166 = v75;
  (v75)(v69, v70);
  v76 = v164;
  v188(v190, v175);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v193 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        v77 = v171;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v78 = *(*(v13 + 32) + 8);
        v79 = dispatch thunk of static Comparable.< infix(_:_:)();
        v80 = v77;
        v74 = v165;
        result = (v178)(v80, v32);
        if (v79)
        {
          goto LABEL_115;
        }

        goto LABEL_42;
      }

LABEL_41:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

    else
    {
      v81 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v82 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v81)
      {
        if (v82 > 64)
        {
          lazy protocol witness table accessor for type Int and conformance Int();
          v83 = v171;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v84 = *(*(v13 + 32) + 8);
          v85 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (v178)(v83, v32);
          v74 = v165;
          if (v85)
          {
            goto LABEL_115;
          }

          goto LABEL_42;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v86 = v171;
        v76 = v164;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v87 = *(*(v13 + 32) + 8);
        v88 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v178)(v86, v32);
        v74 = v165;
        if (v88)
        {
          goto LABEL_115;
        }

        goto LABEL_41;
      }

      if (v82 < 64)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  v89 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v90 = v184;
  if (v89 <= 64)
  {
    goto LABEL_47;
  }

  while (2)
  {
    v193 = 0x7FFFFFFFFFFFFFFFLL;
    v91 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v92 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v91)
    {
      if (v92 <= 64)
      {
        break;
      }

      goto LABEL_45;
    }

    if (v92 >= 64)
    {
LABEL_45:
      lazy protocol witness table accessor for type Int and conformance Int();
      v93 = v171;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v94 = *(*(v13 + 32) + 8);
      v95 = dispatch thunk of static Comparable.< infix(_:_:)();
      v96 = v93;
      v74 = v165;
      v178(v96, v32);
      if ((v95 & 1) == 0)
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
LABEL_52:
  v97 = dispatch thunk of BinaryInteger._lowWord.getter();
  v178(v76, v32);
  v98 = *(v182 + 8);
  v182 += 8;
  v165 = v98;
  (v98)(v74, v190);
  if (v97 < v155)
  {
    v99 = v181;
    dispatch thunk of Collection.endIndex.getter();
    v100 = v159;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v172(v99, v72);
    return (*(v160 + 56))(v100, 0, 1, v72);
  }

  v164 = v64;
  v101 = v163;
  Collection<>.binarySearch(for:)(v90, v185, v186, v180, v163);
  v102 = *(v160 + 48);
  v103 = v102(v101, 1, v72);
  v162 = v32;
  if (v103 == 1)
  {
    v104 = v181;
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.index(_:offsetBy:)();
    v172(v104, v72);
    v32 = v162;
    if (v102(v101, 1, v72) != 1)
    {
      (*(v153 + 8))(v101, v154);
    }
  }

  else
  {
    (*(v160 + 32))();
  }

  v163 = (v160 + 32);
  v161 = v13;
  while (2)
  {
    v105 = dispatch thunk of Collection.subscript.read();
    v106 = v174;
    v107 = v177;
    v169(v174);
    v105(&v193, 0);
    v167(v107, v180);
    (v166)(v106, v107);
    v108 = v173;
    v109 = v175;
    v188(v190, v175);
    v110 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v111 = v178;
    if ((v110 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v193 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_71;
        }

LABEL_66:
        lazy protocol witness table accessor for type Int and conformance Int();
        v114 = v171;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v115 = *(*(v13 + 32) + 8);
        v116 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v111(v114, v32);
        if (v116)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v112 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v113 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v112)
        {
          if (v113 > 64)
          {
            goto LABEL_66;
          }

          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v117 = v171;
          v111 = v178;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v118 = *(*(v13 + 32) + 8);
          v119 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = v111(v117, v32);
          if (v119)
          {
            goto LABEL_112;
          }

LABEL_71:
          dispatch thunk of BinaryInteger._lowWord.getter();
        }

        else if (v113 < 64)
        {
          goto LABEL_71;
        }
      }
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
LABEL_82:
      v125 = dispatch thunk of BinaryInteger._lowWord.getter();
      v111(v108, v32);
      v126 = v190;
      (v165)(v187, v190);
      v188(v126, v109);
      v127 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v128 = v181;
      if ((v127 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
      {
        v193 = 0x8000000000000000;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
          {
            goto LABEL_94;
          }

LABEL_89:
          lazy protocol witness table accessor for type Int and conformance Int();
          v131 = v171;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v132 = *(*(v13 + 32) + 8);
          v133 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = v111(v131, v32);
          if (v133)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v129 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v130 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v129)
          {
            if (v130 > 64)
            {
              goto LABEL_89;
            }

            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v134 = v171;
            v111 = v178;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v135 = *(*(v13 + 32) + 8);
            v136 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = v111(v134, v32);
            if (v136)
            {
              goto LABEL_113;
            }

LABEL_94:
            dispatch thunk of BinaryInteger._lowWord.getter();
          }

          else if (v130 < 64)
          {
            goto LABEL_94;
          }
        }
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
LABEL_105:
        v142 = v192;
        v143 = dispatch thunk of BinaryInteger._lowWord.getter();
        v111(v142, v32);
        if (v143 >= v125)
        {
          v149 = v159;
          v144 = v179;
          (*(v160 + 32))(v159, v176, v179);
          v150 = *(v160 + 56);
          v151 = v149;
          v152 = 0;
          return v150(v151, v152, 1, v144);
        }

        dispatch thunk of Collection.startIndex.getter();
        v144 = v179;
        v145 = *(swift_getAssociatedConformanceWitness() + 8);
        v146 = v176;
        v147 = dispatch thunk of static Equatable.== infix(_:_:)();
        v148 = v172;
        v172(v128, v144);
        if (v147)
        {
          v148(v146, v144);
          v150 = *(v160 + 56);
          v151 = v159;
          v152 = 1;
          return v150(v151, v152, 1, v144);
        }

        dispatch thunk of Collection.index(_:offsetBy:)();
        v148(v146, v144);
        (*v163)(v146, v128, v144);
        v13 = v161;
        v32 = v162;
        continue;
      }

      v193 = 0x7FFFFFFFFFFFFFFFLL;
      v137 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v138 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v137)
      {
        if (v138 > 64)
        {
          goto LABEL_98;
        }
      }

      else if (v138 >= 64)
      {
LABEL_98:
        lazy protocol witness table accessor for type Int and conformance Int();
        v139 = v171;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v140 = *(*(v13 + 32) + 8);
        v141 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v111(v139, v32);
        if (v141)
        {
          goto LABEL_111;
        }

        goto LABEL_105;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_105;
    }

    break;
  }

  v193 = 0x7FFFFFFFFFFFFFFFLL;
  v120 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v121 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v120)
  {
    if (v121 > 64)
    {
      goto LABEL_75;
    }

LABEL_81:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_82;
  }

  if (v121 < 64)
  {
    goto LABEL_81;
  }

LABEL_75:
  lazy protocol witness table accessor for type Int and conformance Int();
  v122 = v171;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v123 = *(*(v13 + 32) + 8);
  v124 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = v111(v122, v32);
  if ((v124 & 1) == 0)
  {
    goto LABEL_82;
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
  return result;
}

uint64_t (*Atomic.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v23 - 8);
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v23 - 8) + 64));
  }

  v12 = v11;
  v9[7] = v11;
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  if (v7)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(*(v13 - 8) + 64));
  }

  v9[8] = v15;
  if ((*(a3 + 4) & 1) == 0)
  {
    v20 = v15;
    os_unfair_lock_lock_with_options();
    *(a3 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a3;
    v9[4] = partial apply for closure #1 in Atomic.subscript.modify;
    v9[5] = v16;
    *v9 = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_8;
    v21 = _Block_copy(v9);
    v17 = v9[5];

    static DispatchQoS.unspecified.getter();
    v9[6] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v20, v12, v21);
    _Block_release(v21);

    (*(v10 + 8))(v12, v23);
    (*(v14 + 8))(v20, v13);
  }

  v18 = *(type metadata accessor for Atomic.Storage() + 32);
  return Interpreter.Storage.subscript.read;
}

uint64_t Inspectable_Context.init(_:_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 9) = 1;
  return result;
}

uint64_t Inspectable.printDescription(depth:mode:context:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *(a3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C328DC0;
  v17 = v8;
  v15 = v9;
  v16 = v10;
  v12 = (*(a5 + 8))(a1, &v17, &v15, a4, a5);
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  print(_:separator:terminator:)();
}

uint64_t IterativeTreeTraversal.visit(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = *(*(TupleTypeMetadata3 - 8) + 64);
  result = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v12 = &v20 - v11;
  v13 = *(v3 + 80);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 80) = v15;
    v16 = *(v3 + 64);
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      v18 = *(TupleTypeMetadata3 + 48);
      v19 = *(TupleTypeMetadata3 + 64);
      (*(*(v7 - 8) + 16))(v12, a1, v7);
      (*(*(v6 - 8) + 16))(&v12[v18], a2, v6);
      *&v12[v19] = v17;
      type metadata accessor for Array();
      return Array.append(_:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Storage()
{
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return Interpreter.Storage.debugName.getter();
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interval(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = *v6;
  v11 = v6[1];
  v13[0] = a1;
  v13[1] = 1;
  v14 = v7;
  v15 = 0;
  v16 = v8;
  v17 = v9;
  return a6(v13, v10, v11);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Context(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[11];
  v29 = v3[10];
  v30[0] = v7;
  *(v30 + 9) = *(v3 + 185);
  v8 = v3[7];
  v25 = v3[6];
  v26 = v8;
  v9 = v3[9];
  v27 = v3[8];
  v28 = v9;
  v10 = v3[3];
  v21 = v3[2];
  v22 = v10;
  v11 = v3[5];
  v23 = v3[4];
  v24 = v11;
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v14[0] = a1;
  v14[1] = 1;
  v15 = v4;
  v16 = 0;
  v17 = v5;
  v18 = v6;
  return Interpreter.Context.describe(state:)(v14);
}

uint64_t Array.mutLast(_:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x26D69D030](*v3, v6);
  if (result)
  {
    result = MEMORY[0x26D69D030](v5, v6);
    v8 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      Array._makeMutableAndUnique()();
      v9 = *v3;
      Array._checkSubscript_mutating(_:)(v8);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v11 = v9;
      }

      return a1(v11 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v8);
    }
  }

  return result;
}

_DWORD *Atomic.init()()
{
  type metadata accessor for Atomic.Storage();
  v0 = static UnsafeMutablePointer.allocate(capacity:)();
  *v0 = 0;
  v3 = 0;
  v1 = type metadata accessor for Atomic.Params();
  (*(*(v1 - 8) + 32))(v0 + 1, &v3, v1);
  return v0;
}

void Atomic.initialize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  os_unfair_lock_assert_owner(*v2);
  if ((v9[1]._os_unfair_lock_opaque & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = *(type metadata accessor for Atomic.Storage() + 32);
    (*(v5 + 16))(v8, a1, v4);
    (*(v5 + 32))(v9 + v10, v8, v4);
    BYTE1(v9[1]._os_unfair_lock_opaque) = 1;
  }
}

Swift::Void __swiftcall Atomic.deinitialize()()
{
  v2 = *v1;
  v3 = *(v0 + 16);
  os_unfair_lock_assert_owner(v2);
  if (*(v2 + 5) == 1)
  {
    v4 = *(type metadata accessor for Atomic.Storage() + 32);
    UnsafeMutablePointer.deinitialize(count:)();
    *(v2 + 5) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = v5[1];
  v11 = *(v5 + 16);
  v12 = v5[3];
  v13 = v5[4];
  v14 = *(v5 + 20);
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v15 = InspectionState.wrapDescription<A>(_:)(a3, a4, a5);
  MEMORY[0x26D69CDB0](v15);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v16 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v16;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Request(uint64_t a1, char *a2, uint64_t *a3)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  if (*(v3 + 8))
  {
    v4 = 0x73656469766F7270;
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x736465656ELL;
    v5 = 0xE500000000000000;
  }

  return specialized InspectionState.describe<A>(_:_:)(v4, v5, *v3);
}

BOOL Dictionary.isDisjoint<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a2;
  v41 = a6;
  v43 = a4;
  v45 = a1;
  v39 = type metadata accessor for Optional();
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v11 = &v36 - v10;
  v38 = *(a3 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v36 - v18;
  v20 = *(a5 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v25 = *(v36 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v36 - v26;
  (*(v20 + 16))(v23, v45, a5);
  v44 = v27;
  dispatch thunk of Sequence.makeIterator()();
  v28 = v38;
  v29 = (v38 + 32);
  v45 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = (v28 + 48);
  v31 = (v28 + 8);
  v38 = v43 - 8;
  v32 = (v37 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v33 = (*v30)(v19, 1, a3);
    if (v33 == 1)
    {
      break;
    }

    (*v29)(v14, v19, a3);
    v34 = v43;
    MEMORY[0x26D69CA60](v14, v40, a3, v43, v41);
    (*v31)(v14, a3);
    LODWORD(v34) = (*(*(v34 - 8) + 48))(v11, 1, v34);
    (*v32)(v11, v39);
  }

  while (v34 == 1);
  (*(v36 + 8))(v44, v45);
  return v33 == 1;
}

uint64_t IterativePair.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for IterativePair();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a4);
}

uint64_t Array.lastIndex.getter(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x26D69D060]() < 1)
  {
    goto LABEL_5;
  }

  v4 = MEMORY[0x26D69D060](a1, a2);
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_5:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Snapshot.Kind(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 32);
  v8 = v3[1];
  v15 = *v3;
  v16 = v8;
  v17 = v7;
  *&v10 = a1;
  *(&v10 + 1) = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return Snapshot.Kind.describe(state:)(&v10);
}

uint64_t static Pair<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = &v32 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  v23 = *(a4 + 24);
  v34 = a1;
  v23(a3, a4);
  v35 = a2;
  v23(a3, a4);
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v24 = *(v16 + 8);
  v24(v20, v15);
  v24(v22, v15);
  if (a1)
  {
    v25 = *(a4 + 48);
    v26 = v32;
    v25(a3, a4);
    v27 = v33;
    v25(a3, a4);
    v28 = v37;
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    v30 = *(v36 + 8);
    v30(v27, v28);
    v30(v26, v28);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t UnsafeArray<A>.copy()(uint64_t result, uint64_t a2)
{
  if (*v2)
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 12);
    v6 = *(result + 16);
    v7 = result;
    *v2 = static UnsafeMutablePointer.allocate(capacity:)();
    v8 = UnsafeMutablePointer.initialize(from:count:)();
    MEMORY[0x28223BE20](v8);
    v10[2] = v6;
    v10[3] = a2;
    WitnessTable = swift_getWitnessTable();
    return ArrayLike.mutEach(_:)(partial apply for closure #1 in UnsafeArray<A>.copy(), v10, v7, WitnessTable);
  }

  return result;
}

uint64_t UnsafeArray.removeAll(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v9;
  v10 = *(v9 + 12);
  if (v10)
  {
    v11 = 0;
    v21 = 0;
    v22 = v4;
    v19[0] = v4 + 8;
    v19[1] = v4 + 16;
    while (*v23)
    {
      (*(v4 + 16))(v8, *v23 + *(v4 + 72) * v11, v3);
      v12 = v20(v8);
      result = (*(v4 + 8))(v8, v3);
      if ((v12 & 1) == 0)
      {
        v13 = v21;
        result = UnsafeMutablePointer.moveInitialize(from:count:)();
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_9:
          v14 = v21;
          v15 = v22;
          if (v21 > v10)
          {
            __break(1u);
            goto LABEL_20;
          }

          if (v21 == v10)
          {
            goto LABEL_16;
          }

          v16 = v21;
          while (*v23)
          {
            v17 = v16 + 1;
            v18 = *v23 + *(v15 + 72) * v16;
            result = UnsafeMutablePointer.deinitialize(count:)();
            v16 = v17;
            if (v10 == v17)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_23;
        }
      }

      if (v10 == ++v11)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = 0;
LABEL_16:
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_20:
      __break(1u);
    }

    else if (!HIDWORD(v14))
    {
      *(v23 + 12) = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t Array.mutEach(_:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x26D69D030](*v3, v6);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (result)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        Array._makeMutableAndUnique()();
        v11 = *v4;
        Array._checkSubscript_mutating(_:)(v9);
        if (_swift_isClassOrObjCExistentialType())
        {
          v12 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v12 = v11;
        }

        result = a1(v12 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v9++);
      }

      while (v8 != v10);
    }
  }

  return result;
}

void protocol witness for Clonable.init(copying:) in conformance Snapshot(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  Snapshot.copy()();
  *a2 = v3;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TreeRef(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = *v6;
  v12[0] = a1;
  v12[1] = 1;
  v13 = v7;
  v14 = 0;
  v15 = v8;
  v16 = v9;
  return a6(v12, v10);
}

uint64_t JustIterator.init(_:onlyIf:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *(a3 - 8);
  v11 = *(v12 + 56);
  v11(a4, 1, 1, a3);
  if (a2)
  {
    v8 = type metadata accessor for Optional();
    (*(*(v8 - 8) + 8))(a4, v8);
    (*(v12 + 32))(a4, a1, a3);

    return (v11)(a4, 0, 1, a3);
  }

  else
  {
    v10 = *(v12 + 8);

    return v10(a1, a3);
  }
}

uint64_t ConcatIterator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ConcatIterator();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t UnsafeArray.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized UnsafeArray.init<A>(_:)(a1, a2, a3);
  v6 = v5;
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Tree(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[11];
  v29 = v3[10];
  v30 = v7;
  v31 = v3[12];
  v8 = v3[7];
  v25 = v3[6];
  v26 = v8;
  v9 = v3[9];
  v27 = v3[8];
  v28 = v9;
  v10 = v3[3];
  v21 = v3[2];
  v22 = v10;
  v11 = v3[5];
  v23 = v3[4];
  v24 = v11;
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v14[0] = a1;
  v14[1] = 1;
  v15 = v4;
  v16 = 0;
  v17 = v5;
  v18 = v6;
  return Tree.describe(state:)(v14);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TreeValue(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[6];
  v8 = *(v3 + 28);
  v15 = *v3;
  v16 = *(v3 + 2);
  v17 = v7;
  v18 = v8;
  v19 = *(v3 + 4);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return TreeValue.describe(state:)(v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Subforest2.Item(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v18 = *v3;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  *&v13 = a1;
  *(&v13 + 1) = 1;
  v14 = v4;
  v15 = 0;
  v16 = v5;
  v17 = v6;
  return Subforest2.Item.describe(state:)(&v13);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Subforest2(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[1];
  v15 = *v3;
  v16[0] = v7;
  *(v16 + 9) = *(v3 + 25);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  strcpy(v9, "(subforest \n");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v9, v10, &v15);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v9[0];
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance GraphContext(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[3];
  v17 = v3[2];
  v18 = v7;
  v19 = v3[4];
  v8 = v3[1];
  v15 = *v3;
  v16 = v8;
  *&v10 = a1;
  *(&v10 + 1) = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return GraphContext.describe(state:)(&v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Subgraph(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[9];
  v26 = v3[8];
  v27 = v7;
  v28 = *(v3 + 20);
  v8 = v3[5];
  v22 = v3[4];
  v23 = v8;
  v9 = v3[7];
  v24 = v3[6];
  v25 = v9;
  v10 = v3[1];
  v18 = *v3;
  v19 = v10;
  v11 = v3[3];
  v20 = v3[2];
  v21 = v11;
  *&v13 = a1;
  *(&v13 + 1) = 1;
  v14 = v4;
  v15 = 0;
  v16 = v5;
  v17 = v6;
  return Subgraph.describe(state:)(&v13);
}

__n128 protocol witness for Clonable.init(copying:) in conformance Subgraph@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  v6 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v6;
  Subgraph.copy()();
  return result;
}

char *protocol witness for Clonable.init(copying:) in conformance Attribute.Value@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 2);
  v5 = result[12];
  v6 = *(result + 2);
  v7 = *(result + 6);
  v8 = *(result + 28);
  if (v6)
  {
    v10 = *(result + 28);
    v9 = swift_slowAlloc();
    result = memcpy(v9, v6, 40 * v10);
    v8 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v7;
  *(a2 + 28) = v8;
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Attribute.AttributeType(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 8);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return Attribute.AttributeType.describe(state:)(v10, v7);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Attribute(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  memcpy(__dst, v3, sizeof(__dst));
  *&v9 = a1;
  *(&v9 + 1) = 1;
  v10 = v5;
  v11 = 0;
  v12 = v6;
  v13 = v7;
  return Attribute.describe(state:)(&v9);
}

Swift::Void __swiftcall UnsafeArray.removeLast()()
{
  if (*v1)
  {
    v2 = v0;
    v3 = *(v1 + 3);
    v6 = *v1;
    v7 = *(v1 + 2);
    WitnessTable = swift_getWitnessTable();
    ArrayLike.lastIndex.getter(v2, WitnessTable);
    v5 = *(*(*(v2 + 16) - 8) + 72);
    UnsafeMutablePointer.deinitialize(count:)();
    if (v3)
    {
      *(v1 + 3) = v3 - 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t HeterogeneousBuffer.index(after:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  if (a5 <= HIDWORD(result))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = HeterogeneousBuffer.type(at:)(result, a2, a3, a4 & 1, a5);
  v7 = *(v6 - 8);
  result = v6 - 8;
  v8 = *(v7 + 72);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = __OFADD__(v8, 8);
  v10 = v8 + 8;
  if (v9)
  {
    goto LABEL_10;
  }

  v9 = __OFADD__(v10, v5);
  v11 = v10 + v5;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 > 0xFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    return (v5 & 0xFFFFFFFF00000000 | v11) + 0x100000000;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Event.Relative(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 1);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return Event.Relative.describe(state:)(v10, v7 | (v8 << 32));
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Event.Relationship(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return Event.Relationship.describe(state:)(v9, v7);
}

double protocol witness for Clonable.init(copying:) in conformance Event.Abstract@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance Event.Prefetch@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  return result;
}

__n128 protocol witness for Clonable.init(copying:) in conformance Event.Update@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void protocol witness for Clonable.init(copying:) in conformance Event.AttributeValue(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 52) = *(a1 + 52);
  if (v4)
  {
    v10[0] = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    *&v11[12] = *(v4 + 60);
    v10[2] = v6;
    *v11 = v7;
    v10[1] = v5;
    outlined init with copy of Event.AttributeValue.ChangedField(v10, &v9);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(v10);
    *(a2 + 40) = v8;
  }
}

double protocol witness for Clonable.init(copying:) in conformance Event.Observable@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 protocol witness for Clonable.init(copying:) in conformance Event.Transaction@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

double protocol witness for Clonable.init(copying:) in conformance Event.Animation@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = result;
  return result;
}

double protocol witness for Clonable.init(copying:) in conformance Event.RenderTick@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

double protocol witness for Clonable.init(copying:) in conformance Event.DynamicProperties@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance Event.GraphRootValueUpdate@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

unint64_t HeterogeneousBuffer.type(at:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v5 = a5;
  if (a5 <= HIDWORD(result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  if (a2)
  {
    if (a3 - a2 >= result)
    {
      return *(a2 + result);
    }

    goto LABEL_7;
  }

LABEL_9:
  if (!v5)
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t HeterogeneousBuffer.valuePointer<A>(for:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != a6)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return a2 + a1 + 8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 82))
  {
    *(v2 + 17) = 0;
  }

  v9 = *(v2 + 16);
  v41 = v8;
  v42 = v6;
  if (v9 == 1)
  {
    v10 = *(v4 + 72);
    v11 = 8;
    if (v10 > 8)
    {
      v11 = *(v4 + 72);
    }

    v12 = v11 + 8;
    v13 = __OFADD__(v11, 8);
  }

  else
  {
    v14 = *v2;
    v15 = *(v2 + 8);
    v16 = *(v2 + 20);
    v17 = v15 - *v2;
    if (!*v2)
    {
      v17 = 0;
    }

    v18 = v17 - v16;
    if (__OFSUB__(v17, v16))
    {
      goto LABEL_56;
    }

    v10 = *(v4 + 72);
    v19 = 8;
    if (v10 > 8)
    {
      v19 = *(v4 + 72);
    }

    v20 = __OFADD__(v19, 8);
    v12 = v19 + 8;
    v13 = __OFADD__(v19, 8);
    if (v20)
    {
      goto LABEL_57;
    }

    if (v18 >= v12)
    {
      v21 = 0;
LABEL_22:
      v22 = *(v2 + 17);
      v23 = *(v2 + 24);
      LOBYTE(v44) = v21;
      v24 = HeterogeneousBuffer.find<A>(_:)(a2, v14, v15, v21, v23);
      if (v16 != v24 || v23 != HIDWORD(v24))
      {
        goto LABEL_60;
      }

      if (v21)
      {
        goto LABEL_58;
      }

      v26 = v15 - v14;
      if (v14)
      {
        v27 = v15 - v14;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < v16)
      {
        __break(1u);
      }

      else
      {
        MetatypeMetadata = swift_getMetatypeMetadata();
        v29 = MetatypeMetadata;
        if (v14)
        {
          v30 = v14 + v27;
        }

        else
        {
          v30 = 0;
        }

        if (v14)
        {
          v31 = v14 + v16;
        }

        else
        {
          v31 = 0;
        }

        v32 = _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(MetatypeMetadata, v31, v30, MetatypeMetadata);
        v44 = a2;
        (*(*(v29 - 8) + 32))(v32, &v44, v29);
        if (!v14)
        {
          goto LABEL_59;
        }

        if (v26 >= v16 + 8)
        {
          v33 = _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(a2, v14 + v16 + 8, v14 + v26, a2);
          v34 = v41;
          (*(v4 + 16))(v41, v42, a2);
          result = (*(v4 + 32))(v33, v34, a2);
          v36 = 8;
          if (v10 > 8)
          {
            v36 = v10;
          }

          v20 = __OFADD__(v36, 8);
          v37 = v36 + 8;
          if (!v20)
          {
            v20 = __OFADD__(v16, v37);
            v38 = v16 + v37;
            if (!v20)
            {
              if (v38 <= 0xFFFFFFFFLL)
              {
                if ((v38 & 0x8000000000000000) == 0)
                {
                  if (v23 != -1)
                  {
                    *(v2 + 20) = v38;
                    *(v2 + 24) = v23 + 1;
                    return result;
                  }

                  goto LABEL_54;
                }

LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  if (!v13)
  {
    HeterogeneousBuffer.grow(_:)(v12);
    v14 = *v2;
    v15 = *(v2 + 8);
    v21 = *(v2 + 16);
    v16 = *(v2 + 20);
    goto LABEL_22;
  }

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
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v44 = 0xD000000000000011;
  v45 = 0x800000026C33C250;
  v43 = a2;
  swift_getMetatypeMetadata();
  v39 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v39);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL HeterogeneousBuffer.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v6 = HIDWORD(a4);
  v7 = HeterogeneousBuffer.find<A>(_:)(a1, a2, a3, a4 & 1, a5);
  return v7 != v6 || HIDWORD(v7) != a5;
}

uint64_t (*HeterogeneousBuffer.subscript.modify(uint64_t a1, unint64_t a2, uint64_t a3))(void)
{
  v4 = *(v3 + 20);
  *(v3 + 17);
  HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), a3);
  return EventTreeStats.count.modify;
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11[4] = HeterogeneousBuffer.valuePointerAs<A>(for:)(a1, a2, a3, a4 & 1, a5, a6);
  v11[2] = a6;
  type metadata accessor for UnsafeMutablePointer();
  type metadata accessor for Optional();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in HeterogeneousBuffer.subscript.getter, v11, MEMORY[0x277D84A98], a6, v9, a7);
}

{
  v9 = HeterogeneousBuffer.valuePointer<A>(for:)(a1, a2, a3, a4 & 1, a5, a6);
  v10 = *(*(a6 - 8) + 16);

  return v10(a7, v9, a6);
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, a2, a3, a4 & 0xFFFFFFFF00000101, a5, a6);
  if (v9)
  {
    v14 = *(a6 - 8);
    (*(v14 + 16))(a7, v9, a6);
    v10 = v14;
    v11 = 0;
  }

  else
  {
    v10 = *(a6 - 8);
    v11 = 1;
  }

  v12 = *(v10 + 56);

  return v12(a7, v11, 1, a6);
}

uint64_t (*HeterogeneousBuffer.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6))(void)
{
  v10 = a4 & 1;
  v11 = HeterogeneousBuffer.find<A>(_:)(a6, a2, a3, a4 & 1, a5);
  HeterogeneousBuffer.valuePointer<A>(for:)(v11, a2, a3, v10, a5, a6);
  return EventTreeStats.count.modify;
}

uint64_t (*HeterogeneousBuffer.subscript.modify(uint64_t a1, uint64_t a2))(void)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 20);
  v8 = *(v2 + 24);
  v6 = *(v2 + 16);
  *(v2 + 17);
  v9 = HeterogeneousBuffer.find<A>(_:)(a2, *v2, v5, v6, v8);
  HeterogeneousBuffer.valuePointer<A>(for:)(v9, v4, v5, v6, v8, a2);
  return EventTreeStats.count.modify;
}

uint64_t IterativeTreeTraversal<>.visit(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(*(TupleTypeMetadata3 - 8) + 64);
  result = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v9 = &v16 - v8;
  v10 = *(v2 + 80);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 80) = v12;
    v13 = *(v2 + 64);
    v14 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v15 = *(TupleTypeMetadata3 + 64);
      (*(*(v4 - 8) + 16))(v9, a1, v4);
      *&v9[v15] = v14;
      type metadata accessor for Array();
      return Array.append(_:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t HeterogeneousBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - v16;
  v18 = *v3;
  v19 = *(v3 + 8);
  v20 = *(v3 + 17);
  v22 = *(v3 + 20);
  v21 = *(v3 + 24);
  LOBYTE(v34) = *(v3 + 16);
  v23 = v20 == 0;
  v24 = 256;
  if (v23)
  {
    v24 = 0;
  }

  v25 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(v15, v18, v19, v24 | (v22 << 32) | v34, v21, a3);
  v26 = *(v10 + 16);
  v27 = (v5 + 48);
  if (v25)
  {
    v28 = v25;
    v29 = v33;
    v26(v17, v33, v9);
    if ((*v27)(v17, 1, a3) != 1)
    {
      (*(v5 + 40))(v28, v17, a3);
      return (*(v10 + 8))(v29, v9);
    }

    __break(1u);
    goto LABEL_11;
  }

  v26(v14, v33, v9);
  if ((*v27)(v14, 1, a3) == 1)
  {
LABEL_11:
    (*(v10 + 8))(v14, v9);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(114);
    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
    v31 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v31);

    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v5 + 32))(v8, v14, a3);
  HeterogeneousBuffer.insert<A>(_:)(v8, a3);
  (*(v10 + 8))(v33, v9);
  return (*(v5 + 8))(v8, a3);
}

{
  v6 = *v3;
  v7 = *(v3 + 8);
  v9 = *(v3 + 20);
  v10 = *(v3 + 24);
  v8 = *(v3 + 16);
  *(v3 + 17);
  v11 = HeterogeneousBuffer.find<A>(_:)(a3, *v3, v7, v8, v10);
  v12 = HeterogeneousBuffer.valuePointer<A>(for:)(v11, v6, v7, v8, v10, a3);
  v13 = *(*(a3 - 8) + 40);

  return v13(v12, a1, a3);
}

Swift::Void __swiftcall HeterogeneousBuffer.deallocate()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *v0;
    if ((*(v0 + 17) & 1) == 0)
    {
      v2 = 0;
      v3 = 0;
      v4 = *(v0 + 24);
      v5 = *(v0 + 8) - v1;
      do
      {
        v6 = v3;
        if (v3 >= v4)
        {
          goto LABEL_3;
        }

        if (!v1)
        {
          goto LABEL_23;
        }

        if (v5 < v2)
        {
          goto LABEL_19;
        }

        projectDeinit #1 <A>(_:) in HeterogeneousBuffer.deallocate()(*(v1 + v2), v0, *(v1 + v2));
        v7 = *(*(*(v1 + v2) - 8) + 72);
        if (v7 <= 8)
        {
          v7 = 8;
        }

        v8 = __OFADD__(v7, 8);
        v9 = v7 + 8;
        if (v8)
        {
          goto LABEL_20;
        }

        v8 = __OFADD__(v9, v2);
        v2 += v9;
        if (v8)
        {
          goto LABEL_21;
        }

        if (v2 > 0xFFFFFFFFLL)
        {
          goto LABEL_22;
        }

        v3 = v6 + 1;
      }

      while ((v2 & 0x8000000000000000) == 0);
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      JUMPOUT(0x26D69EAB0);
    }

LABEL_3:
    if (v1)
    {

      goto LABEL_24;
    }
  }
}

Swift::Void __swiftcall HeterogeneousBuffer.copy()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v2 = *v0;
    v1 = *(v0 + 8);
    v21 = 0;
    v3 = v1 - v2;
    if (v2)
    {
      v4 = v1 - v2;
    }

    else
    {
      v4 = 0;
    }

    v5 = swift_slowAlloc();
    *&v18 = v5;
    *(&v18 + 1) = &v5[v4];
    v19 = 0;
    v20 = *(v0 + 17);
    if (v20 == 1)
    {
      if (v2)
      {
        memmove(v5, v2, v3);
      }

      v21 = *(v0 + 20);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(v0 + 24);
      while (1)
      {
        v11 = v9;
        if (v9 >= v10)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_31;
        }

        if (v3 < v8)
        {
          goto LABEL_27;
        }

        specialized projectCopy #1 <A>(_:) in HeterogeneousBuffer.copy()(*&v2[v8], &v18, v0, *&v2[v8]);
        v12 = *&v2[v8];
        v13 = swift_conformsToProtocol2();
        if (v13)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          projectClone #1 <A>(_:) in HeterogeneousBuffer.copy()(v12, v0, v12, v13);
          v12 = *&v2[v8];
        }

        v15 = *(*(v12 - 8) + 72);
        if (v15 <= 8)
        {
          v15 = 8;
        }

        v16 = __OFADD__(v15, 8);
        v17 = v15 + 8;
        if (v16)
        {
          goto LABEL_28;
        }

        v16 = __OFADD__(v17, v8);
        v8 += v17;
        if (v16)
        {
          goto LABEL_29;
        }

        if (v8 > 0xFFFFFFFFLL)
        {
          goto LABEL_30;
        }

        v9 = v11 + 1;
        if (v8 < 0)
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
LABEL_31:
          __break(1u);
          return;
        }
      }
    }

    swift_beginAccess();
    v6 = v19;
    v7 = v20;
    *v0 = v18;
    *(v0 + 16) = v6;
    *(v0 + 17) = v7;
    *(v0 + 20) = v21;
  }
}

void protocol witness for Clonable.init(copying:) in conformance Event(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  v5 = *(a1 + 120);
  v4 = *(a1 + 124);
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  *(a2 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  v8 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  *(a2 + 112) = v3;
  *(a2 + 120) = v5;
  *(a2 + 124) = v4;
  HeterogeneousBuffer.copy()();
  if (v3)
  {
    v9 = swift_slowAlloc();
    *(a2 + 112) = v9;

    memcpy(v9, v3, 8 * v4);
  }
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Event(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[5];
  v21 = v3[4];
  v22 = v7;
  v8 = v3[7];
  v23 = v3[6];
  v24 = v8;
  v9 = v3[1];
  v17 = *v3;
  v18 = v9;
  v10 = v3[3];
  v19 = v3[2];
  v20 = v10;
  v12[0] = a1;
  v12[1] = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return Event.describe(state:)(v12);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator.Kind(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 48);
  v8 = v3[1];
  v15 = *v3;
  v16 = v8;
  v17 = v3[2];
  v18 = v7;
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return Interpreter.Iterator.Kind.describe(state:)(v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator.Mode(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[7];
  v23 = v3[6];
  v24 = v7;
  v25 = v3[8];
  v26 = *(v3 + 18);
  v8 = v3[3];
  v19 = v3[2];
  v20 = v8;
  v9 = v3[5];
  v21 = v3[4];
  v22 = v9;
  v10 = v3[1];
  v17 = *v3;
  v18 = v10;
  *&v12 = a1;
  *(&v12 + 1) = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return Interpreter.Iterator.Mode.describe(state:)(&v12);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator.CancelationPolicy(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 8);
  v14 = *v3;
  v15 = v7;
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return Interpreter.Iterator.CancelationPolicy.describe(state:)(v9);
}

Swift::String __swiftcall UnsafeRawBufferPointer.previewDescription()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  specialized Collection.prefix(_:)(40, v3, v2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v6 = String.init<A>(bytes:encoding:)();
  if (!v7)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator.AttachmentBuffer(uint64_t a1, char *a2, uint64_t *a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 32);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  return Interpreter.Iterator.AttachmentBuffer.describe(state:)();
}

BOOL UnsafeRawBufferPointer.contains(address:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  return a2 && a2 <= a1 && a3 > a1;
}

{
  v3 = a3 > a1;
  if (a2 > a1)
  {
    v3 = 0;
  }

  return a2 && v3;
}

uint64_t UnsafeRawBufferPointer.endAddress.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

const void *UnsafeRawBufferPointer.partialLoadUnaligned<A>()@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(*(a3 - 8) + 64);
  if (result)
  {
    if (a2 - result >= v4)
    {
      return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, result, a3, a4);
    }

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  if (v4 >= 1)
  {
    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t RandomAccessCollection.enumeratedReversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  return EnumeratedReversedIterator.init(collection:)(v9, a1, a2, a3);
}

uint64_t EnumeratedReversedIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v28 = a2;
  v5 = *(a1 + 16);
  v29 = *(a1 + 24);
  v6 = *(*(v29 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v27 - v9;
  v11 = *(v6 + 8);
  v12 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v27 - v15;
  v17 = *(v4 + 36);
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v30 = v3;
  v18 = v27;
  LOBYTE(v4) = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v18 + 8))(v10, AssociatedTypeWitness);
  if (v4)
  {
    v19 = *(TupleTypeMetadata2 + 48);
    (*(v18 + 16))(v16, v30 + v17, AssociatedTypeWitness);
    v20 = dispatch thunk of Collection.subscript.read();
    v21 = *(v12 - 8);
    (*(v21 + 16))(&v16[v19]);
    v20(v31, 0);
    v22 = swift_getTupleTypeMetadata2();
    v23 = *(v22 + 48);
    v24 = v28;
    (*(v18 + 32))(v28, v16, AssociatedTypeWitness);
    (*(v21 + 32))(v24 + v23, &v16[v19], v12);
    (*(*(v22 - 8) + 56))(v24, 0, 1, v22);
  }

  else
  {
    v25 = swift_getTupleTypeMetadata2();
    (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
  }

  return $defer #1 <A>() in EnumeratedReversedIterator.next()(v30, v5);
}

uint64_t Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v31 = a2;
  v33 = a5;
  v8 = *(a4 + 16);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  v22 = *v5;
  v23 = *(a4 + 32);
  v32 = a1;
  MEMORY[0x26D69CA60](a1, v22, v8, v13, v23);
  v24 = *(v13 - 8);
  if ((*(v24 + 48))(v21, 1, v13) != 1)
  {
    return (*(v24 + 32))(v33, v21, v13);
  }

  v25 = (*(v15 + 8))(v21, v14);
  v26 = v33;
  v31(v25);
  (*(v29 + 16))(v11, v32, v8);
  (*(v24 + 16))(v19, v26, v13);
  (*(v24 + 56))(v19, 0, 1, v13);
  return Dictionary.subscript.setter();
}

uint64_t Inspectable_Context.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

NSUInteger protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[11];
  v29 = v3[10];
  v30 = v7;
  v31 = *(v3 + 192);
  v8 = v3[7];
  v25 = v3[6];
  v26 = v8;
  v9 = v3[9];
  v27 = v3[8];
  v28 = v9;
  v10 = v3[3];
  v21 = v3[2];
  v22 = v10;
  v11 = v3[5];
  v23 = v3[4];
  v24 = v11;
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v14[0] = a1;
  v14[1] = 1;
  v15 = v4;
  v16 = 0;
  v17 = v5;
  v18 = v6;
  return Interpreter.Iterator.describe(state:)(v14);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TraceChunk(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a3 + 4);
  v7[0] = a1;
  v7[1] = 1;
  v8 = v3;
  v9 = 0;
  v10 = v4;
  v11 = v5;
  return TraceChunk.describe(state:)(v7);
}

uint64_t _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return a2;
  }

  v4 = *(*(a4 - 8) + 72);
  if (v4)
  {
    if (a3 - a2 != 0x8000000000000000 || v4 != -1)
    {
      return a2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance BufferCompressor(uint64_t a1, char *a2, uint64_t *a3)
{
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v8 = *v3;
  v9 = v3[1];
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  return BufferCompressor.describe(state:)();
}

uint64_t URL.regularFileExists.getter()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = URL.path.getter();
  v3 = MEMORY[0x26D69CC20](v2);

  v4 = [v1 fileExistsAtPath_];

  if (v4)
  {
    v11 = 0;
    v5 = [v0 defaultManager];
    v6 = URL.path.getter();
    v7 = MEMORY[0x26D69CC20](v6);

    v8 = [v5 fileExistsAtPath:v7 isDirectory:&v11];

    result = (v8 & v11) ^ 1u;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

id URL.fileExists.getter()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = URL.path.getter();
  v2 = MEMORY[0x26D69CC20](v1);

  v3 = [v0 fileExistsAtPath_];

  return v3;
}

Swift::Void __swiftcall URL.createFile()()
{
  v0 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v2 = MEMORY[0x26D69CC20](countAndFlagsBits);

  [v0 createFileAtPath:v2 contents:0 attributes:0];
}

uint64_t URL.fileSize.getter()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = URL.path.getter();
  v2 = MEMORY[0x26D69CC20](v1);

  v11[0] = 0;
  v3 = [v0 attributesOfItemAtPath:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    type metadata accessor for NSFileAttributeKey(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [(objc_class *)isa fileSize];

    v8 = *MEMORY[0x277D85DE8];
    return v7;
  }

  else
  {
    v10 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Int32 __swiftcall URL.openFd(mode:)(Swift::Int32 mode)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = URL.path.getter();
  v4 = MEMORY[0x26D69CC20](v3);

  v5 = [v2 fileExistsAtPath_];

  if (v5)
  {
    if ((URL.regularFileExists.getter() & 1) != 0 || (mode & 0x100000) != 0)
    {
      MEMORY[0x26D69C8D0](0);
      URL.pathBytes.getter();
      v6 = open(_:_:)();

      $defer #1 () in URL.openFd(mode:)();
      return v6;
    }

    type metadata accessor for URL();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    MEMORY[0x26D69CDB0](0xD00000000000001FLL, 0x800000026C33D0C0);
  }

  else
  {
    type metadata accessor for URL();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33D0A0);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}