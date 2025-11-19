_DWORD *_sSo28compression_stream_operationaSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Compression::Algorithm_optional __swiftcall Algorithm.init(rawValue:)(compression_algorithm rawValue)
{
  if (rawValue > 1793)
  {
    switch(rawValue)
    {
      case COMPRESSION_LZBITMAP:
        *v1 = 4;
        return rawValue;
      case COMPRESSION_LZFSE:
        *v1 = 0;
        return rawValue;
      case COMPRESSION_BROTLI:
        *v1 = 5;
        return rawValue;
    }

LABEL_12:
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == COMPRESSION_LZ4)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == COMPRESSION_ZLIB)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != COMPRESSION_LZMA)
  {
    goto LABEL_12;
  }

  *v1 = 3;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Algorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_299A4CE48[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Algorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_299A4CE48[v1]);
  return Hasher._finalize()();
}

Compression::FilterOperation_optional __swiftcall FilterOperation.init(rawValue:)(compression_stream_operation rawValue)
{
  if (rawValue == COMPRESSION_STREAM_DECODE)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == COMPRESSION_STREAM_ENCODE)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilterOperation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilterOperation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance FilterOperation@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
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

Swift::Int FilterError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A99C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilterError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A99C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilterError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A99C0](v1);
  return Hasher._finalize()();
}

uint64_t OutputFilter.__allocating_init(_:using:bufferCapacity:writingTo:)(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v12 = *a1;
  v13 = *a2;
  *(v11 + 88) = 0;
  v17 = v12;
  v16 = v13;
  specialized compression_stream.init(operation:algorithm:)(&v17, &v16, v18);
  if (v5)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v18[1];
    *(v11 + 16) = v18[0];
    *(v11 + 32) = v14;
    *(v11 + 48) = v19;
    *(v11 + 56) = swift_slowAlloc();
    *(v11 + 64) = a3;
    *(v11 + 72) = a4;
    *(v11 + 80) = a5;
  }

  return v11;
}

uint64_t OutputFilter.init(_:using:bufferCapacity:writingTo:)(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *a2;
  *(v5 + 88) = 0;
  v15 = v10;
  v14 = v11;
  specialized compression_stream.init(operation:algorithm:)(&v15, &v14, v16);
  if (v6)
  {

    type metadata accessor for OutputFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v16[1];
    *(v5 + 16) = v16[0];
    *(v5 + 32) = v12;
    *(v5 + 48) = v17;
    *(v5 + 56) = swift_slowAlloc();
    *(v5 + 64) = a3;
    *(v5 + 72) = a4;
    *(v5 + 80) = a5;
  }

  return v5;
}

void OutputFilter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  swift_getAssociatedTypeWitness();
  v53 = a3;
  v5 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v7 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v48 = &v39 - v8;
  v9 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v46 = &v39 - v10;
  v11 = (*(*(swift_checkMetadataState() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v42 = &v39 - v12;
  v43 = v13;
  v44 = v5;
  v51 = swift_getAssociatedTypeWitness();
  v45 = *(v51 - 8);
  v14 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v50 = &v39 - v15;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = (MEMORY[0x2A1C7C4A8])();
  v49 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v39 - v21;
  v23 = *(a2 - 8);
  v24 = *(v23 + 48);
  if (v24(v52, 1, a2) == 1)
  {
    goto LABEL_4;
  }

  v41 = *(v17 + 16);
  v41(v22, v52, v16);
  if (v24(v22, 1, a2) == 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v25 = *(*(*(v53 + 8) + 8) + 8);
  v26 = dispatch thunk of Collection.isEmpty.getter();
  v40 = *(v23 + 8);
  v40(v22, a2);
  if (v26)
  {
LABEL_4:
    OutputFilter.finalize()();
    return;
  }

  if (*(v54 + 88) == 1)
  {
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    return;
  }

  v28 = v49;
  v41(v49, v52, v16);
  if (v24(v28, 1, a2) == 1)
  {
    goto LABEL_15;
  }

  dispatch thunk of DataProtocol.regions.getter();
  v40(v28, a2);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v46;
  v52 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v31 = v47;
  v49 = *(v47 + 48);
  v32 = (v49)(v30, 1, AssociatedTypeWitness);
  v33 = v48;
  if (v32 == 1)
  {
LABEL_12:
    (*(v45 + 8))(v50, v51);
  }

  else
  {
    v47 = *(v31 + 32);
    v34 = (v31 + 8);
    while (1)
    {
      v35 = (v47)(v33, v30, AssociatedTypeWitness);
      MEMORY[0x2A1C7C4A8](v35);
      v36 = v53;
      v37 = v54;
      *(&v39 - 4) = a2;
      *(&v39 - 3) = v36;
      *(&v39 - 2) = v37;
      *(&v39 - 1) = v33;
      swift_getAssociatedConformanceWitness();
      v38 = v55;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      if (v38)
      {
        break;
      }

      v55 = 0;
      (*v34)(v33, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if ((v49)(v30, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_12;
      }
    }

    (*(v45 + 8))(v50, v51);
    (*v34)(v33, AssociatedTypeWitness);
  }
}

uint64_t closure #1 in OutputFilter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v37 = type metadata accessor for Data.Deallocator();
  v33 = *(v37 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v9 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getAssociatedTypeWitness();
  v10 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v11 = dispatch thunk of Collection.count.getter();
  result = swift_beginAccess();
  *(a2 + 40) = v11;
  if (!a1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *(a2 + 32) = a1;
  if (v11 >= 1)
  {
    LODWORD(v35) = *MEMORY[0x29EDB9B50];
    v34 = (v33 + 104);
    v13 = (v33 + 8);
    while (1)
    {
      v14 = *(a2 + 56);
      swift_beginAccess();
      v15 = *(a2 + 64);
      *(a2 + 16) = v14;
      *(a2 + 24) = v15;
      LODWORD(v14) = compression_stream_process((a2 + 16), 0);
      result = swift_endAccess();
      if (v14 == -1)
      {
        lazy protocol witness table accessor for type FilterError and conformance FilterError();
        swift_allocError();
        *v32 = 1;
        return swift_willThrow();
      }

      v16 = *(a2 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        break;
      }

      if (v18 > 0)
      {
        v19 = *(a2 + 56);
        v20 = v37;
        (*v34)(v8, v35, v37);
        Data.Deallocator._deallocator.getter();
        v21 = type metadata accessor for __DataStorage();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();

        v24 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v25 = __DataStorage._capacity.modify();
        *v26 |= 0x8000000000000000;
        v25(v36, 0);
        v27 = specialized Data._Representation.init(_:count:)(v24, v18);
        v29 = v28;

        (*v13)(v8, v20);
        v31 = *(a2 + 72);
        v30 = *(a2 + 80);
        outlined copy of Data._Representation(v27, v29);
        v31(v27, v29);
        outlined consume of Data._Representation(v27, v29);
        result = outlined consume of Data._Representation(v27, v29);
        if (v3)
        {
          return result;
        }
      }

      if (*(a2 + 40) <= 0)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OutputFilter.finalize()()
{
  v2 = v0;
  v31 = type metadata accessor for Data.Deallocator();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 88) & 1) == 0)
  {
    swift_beginAccess();
    *(v2 + 40) = 0;
    v29 = *MEMORY[0x29EDB9B50];
    v27 = (v3 + 8);
    v28 = (v3 + 104);
    while (1)
    {
      v7 = *(v2 + 56);
      swift_beginAccess();
      v8 = *(v2 + 64);
      *(v2 + 16) = v7;
      *(v2 + 24) = v8;
      v9 = compression_stream_process((v2 + 16), 1);
      swift_endAccess();
      if (v9 == COMPRESSION_STATUS_ERROR)
      {
        lazy protocol witness table accessor for type FilterError and conformance FilterError();
        swift_allocError();
        *v25 = 1;
        swift_willThrow();
        return;
      }

      v10 = *(v2 + 24);
      v11 = v8 - v10;
      if (__OFSUB__(v8, v10))
      {
        break;
      }

      if (v11 >= 1)
      {
        v12 = *(v2 + 56);
        v13 = v31;
        (*v28)(v6, v29, v31);
        Data.Deallocator._deallocator.getter();
        v14 = type metadata accessor for __DataStorage();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();

        v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v18 = __DataStorage._capacity.modify();
        *v19 |= 0x8000000000000000;
        v18(v30, 0);
        v20 = specialized Data._Representation.init(_:count:)(v17, v11);
        v22 = v21;

        (*v27)(v6, v13);
        v24 = *(v2 + 72);
        v23 = *(v2 + 80);
        outlined copy of Data._Representation(v20, v22);
        v24(v20, v22);
        outlined consume of Data._Representation(v20, v22);
        outlined consume of Data._Representation(v20, v22);
        if (v1)
        {
          return;
        }
      }

      if (v9 == COMPRESSION_STATUS_END)
      {
        *(v2 + 88) = 1;
        v26 = *(v2 + 80);
        (*(v2 + 72))(0, 0xF000000000000000);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t OutputFilter.deinit()
{
  OutputFilter.finalize()();
  if (v1)
  {
    MEMORY[0x29C2A9AD0](v1);
  }

  MEMORY[0x29C2A9B90](*(v0 + 56), -1, -1);
  swift_beginAccess();
  compression_stream_destroy((v0 + 16));
  swift_endAccess();
  v2 = *(v0 + 80);

  return v0;
}

uint64_t OutputFilter.__deallocating_deinit()
{
  OutputFilter.finalize()();
  if (v1)
  {
    MEMORY[0x29C2A9AD0](v1);
  }

  MEMORY[0x29C2A9B90](*(v0 + 56), -1, -1);
  swift_beginAccess();
  compression_stream_destroy((v0 + 16));
  swift_endAccess();
  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t InputFilter.InputFilterBuffer.withUnsafeBytes<A>(_:)@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v48 = a2;
  v49 = a1;
  v52 = a4;
  v42 = *v4;
  v5 = v42;
  v6 = v42[13];
  v7 = v42[11];
  swift_getAssociatedTypeWitness();
  v56 = v6;
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  v10 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v44 = &v41 - v11;
  v12 = swift_checkMetadataState();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v53 = &v41 - v15;
  v16 = *(v7 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v19 = &v41 - v18;
  v45 = v8;
  v20 = *(v8 + 8);
  v21 = swift_getAssociatedTypeWitness();
  v54 = *(v21 - 8);
  v22 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v41 - v23;
  if (*(v4 + v5[15]))
  {
    (*(v16 + 16))(v19, v4 + v42[14], v7);
    v25 = v4;
    dispatch thunk of DataProtocol.regions.getter();
    (*(v16 + 8))(v19, v7);
    v26 = *(*v4 + 128);
    swift_beginAccess();
    v42 = v7;
    v27 = v12;
    v28 = v21;
    v29 = v46;
    v30 = v47;
    v31 = v44;
    (*(v46 + 16))(v44, v4 + v26, v47);
    v32 = v53;
    v33 = dispatch thunk of Collection.subscript.read();
    (*(v54 + 16))(v24);
    v33(v55, 0);
    (*(v29 + 8))(v31, v30);
    v34 = (*(v43 + 8))(v32, v27);
    MEMORY[0x2A1C7C4A8](v34);
    v35 = v49;
    *(&v41 - 4) = v50;
    *(&v41 - 3) = v25;
    v36 = v48;
    *(&v41 - 2) = v35;
    *(&v41 - 1) = v36;
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Optional();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return (*(v54 + 8))(v24, v28);
  }

  else
  {
    v39 = v50;
    v38 = v51;
    v40 = v52;
    result = v49(0, 0);
    if (!v38)
    {
      return (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
    }
  }

  return result;
}

uint64_t InputFilter.InputFilterBuffer.advance(by:)(uint64_t a1)
{
  v2 = v1;
  v68 = *v1;
  v4 = v68[13];
  v5 = v68[11];
  swift_getAssociatedTypeWitness();
  v65 = v4;
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = v6[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v8 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v60 = &v53 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v62 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v53 - v15;
  v64 = v5;
  v17 = *(v5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v20 = &v53 - v19;
  v63 = swift_checkMetadataState();
  v21 = *(*(v63 - 8) + 64);
  result = MEMORY[0x2A1C7C4A8](v63);
  v70 = &v53 - v24;
  v25 = v68[17];
  v26 = *&v2[v25];
  v27 = __OFSUB__(v26, a1);
  v28 = v26 < a1;
  v29 = v26 - a1;
  if (v28)
  {
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v30 = 0;
    return swift_willThrow();
  }

  if (v27)
  {
    __break(1u);
    goto LABEL_16;
  }

  *&v2[v25] = v29;
  v31 = *(*v2 + 120);
  v32 = *&v2[v31];
  v27 = __OFSUB__(v32, a1);
  v33 = v32 - a1;
  if (v27)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v53 = *(*v2 + 120);
  v54 = v23;
  *&v2[v31] = v33;
  v34 = v25;
  v35 = v64;
  (*(v17 + 16))(v20, &v2[*(*v2 + 112)], v64);
  dispatch thunk of DataProtocol.regions.getter();
  (*(v17 + 8))(v20, v35);
  v36 = *(*v2 + 128);
  v59 = v34;
  v37 = *&v2[v34];
  v68 = v6;
  v38 = v63;
  if (!v37)
  {
    v39 = v66;
    v66 += 8;
    v67 = (v39 + 16);
    v40 = (v55 + 16);
    v55 += 8;
    v56 = v40;
    v57 = v2;
    v58 = v36;
    do
    {
      swift_beginAccess();
      dispatch thunk of Collection.formIndex(after:)();
      swift_endAccess();
      v41 = *v67;
      (*v67)(v16, &v2[v36], v10);
      v42 = v62;
      dispatch thunk of Collection.endIndex.getter();
      v43 = *(swift_getAssociatedConformanceWitness() + 8);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *v66;
      v46 = v42;
      v2 = v57;
      v36 = v58;
      (*v66)(v46, v10);
      v45(v16, v10);
      if (v44)
      {
        break;
      }

      v41(v16, &v2[v36], v10);
      v47 = dispatch thunk of Collection.subscript.read();
      v48 = v60;
      v49 = AssociatedTypeWitness;
      (*v56)(v60);
      v47(v69, 0);
      v45(v16, v10);
      v50 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
      v51 = dispatch thunk of Collection.count.getter();
      v38 = v63;
      (*v55)(v48, v49);
      *&v2[v59] = v51;
    }

    while (!v51);
  }

  if (!*&v2[v53] || *&v2[v59])
  {
    return (*(v54 + 8))(v70, v38);
  }

  lazy protocol witness table accessor for type FilterError and conformance FilterError();
  swift_allocError();
  *v52 = 0;
  swift_willThrow();
  return (*(v54 + 8))(v70, v38);
}

uint64_t InputFilter.InputFilterBuffer.__deallocating_deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112), *(*v0 + 88));
  v2 = *(*v0 + 128);
  v3 = *(v1 + 104);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 InputFilter._stream.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  result = *(v1 + 64);
  *(a1 + 24) = result;
  return result;
}

uint64_t InputFilter._buf.setter(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t InputFilter.__allocating_init(_:using:bufferCapacity:readingFrom:)(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  InputFilter.init(_:using:bufferCapacity:readingFrom:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *InputFilter.init(_:using:bufferCapacity:readingFrom:)(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *a1;
  v12 = *a2;
  v5[10] = 0;
  *(v5 + 44) = 0;
  v20 = v11;
  v19 = v12;
  v13 = v10;
  specialized compression_stream.init(operation:algorithm:)(&v20, &v19, v21);
  if (v6)
  {

    v14 = v5[10];

    v15 = *(v13 + 80);
    v16 = *(v13 + 88);
    type metadata accessor for InputFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v21[1];
    *(v5 + 5) = v21[0];
    *(v5 + 7) = v17;
    v5[9] = v22;
    v5[2] = a3;
    v5[3] = a4;
    v5[4] = a5;
  }

  return v5;
}

uint64_t InputFilter.readData(ofLength:)(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + 89))
  {
    return 0;
  }

  v3 = result;
  v6 = specialized Data.init(count:)(result);
  v7 = v4;
  MEMORY[0x2A1C7C4A8](v6);
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in InputFilter.readData(ofLength:));
  if (v2)
  {
    return outlined consume of Data._Representation(v6, v7);
  }

  swift_beginAccess();
  v5 = *(v1 + 48);
  result = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  Data._Representation.count.setter();
  return v6;
}

uint64_t closure #1 in InputFilter.readData(ofLength:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v44 = *a2;
  v7 = *(v44 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v51 = &v39 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v39 - v15;
  if (a1)
  {
    swift_beginAccess();
    a2[5] = a1;
    a2[6] = a3;
    result = swift_beginAccess();
    if (a2[6] >= 1)
    {
      v43 = v7 - 8;
      v47 = (v9 + 16);
      v48 = (v9 + 8);
      v18 = MEMORY[0x29EDCA180];
      v45 = v16;
      v46 = v8;
      while (1)
      {
        if (*(a2 + 89))
        {
          return result;
        }

        v21 = a2[10];
        if (v21 && *(v21 + *(*v21 + 120)))
        {
LABEL_8:
          MEMORY[0x2A1C7C4A8](result);
          *(&v39 - 2) = a2;
          *(&v39 - 1) = v21;

          InputFilter.InputFilterBuffer.withUnsafeBytes<A>(_:)(partial apply for closure #1 in closure #1 in InputFilter.readData(ofLength:), (&v39 - 4), v18 + 8, &v49);

          if (v3)
          {
            return result;
          }

          goto LABEL_9;
        }

        if ((a2[11] & 1) == 0)
        {
          break;
        }

LABEL_7:
        if (v21)
        {
          goto LABEL_8;
        }

        v36 = *(a2 + 88);
        swift_beginAccess();
        v37 = compression_stream_process(a2 + 1, v36);
        swift_endAccess();
        if (v37 == COMPRESSION_STATUS_END)
        {
          *(a2 + 89) = 1;
        }

        else if (v37 == COMPRESSION_STATUS_ERROR)
        {
          goto LABEL_23;
        }

LABEL_9:
        result = swift_beginAccess();
        if (a2[6] <= 0)
        {
          return result;
        }
      }

      v22 = a2[4];
      result = (a2[3])(a2[2]);
      if (v3)
      {
        return result;
      }

      v23 = *v47;
      v24 = v51;
      (*v47)(v51, v16, v8);
      v25 = *(v7 - 8);
      v26 = *(v25 + 48);
      if (v26(v24, 1, v7) == 1)
      {
        (*v48)(v24, v8);
      }

      else
      {
        v40 = *(v44 + 88);
        v27 = *(*(*(v40 + 8) + 8) + 8);
        v28 = v24;
        v29 = dispatch thunk of Collection.count.getter();
        v41 = *(v25 + 8);
        v41(v28, v7);
        if (v29)
        {
          v30 = v42;
          v23(v42, v45, v46);
          result = v26(v30, 1, v7);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          *&v49 = v7;
          *(&v49 + 1) = v7;
          *&v50 = v40;
          *(&v50 + 1) = v40;
          v31 = type metadata accessor for InputFilter.InputFilterBuffer();
          v32 = *(v31 + 96);
          v49 = *(v31 + 80);
          v50 = v32;
          v33 = type metadata accessor for InputFilter.InputFilterBuffer();
          v34 = *(v33 + 48);
          v35 = *(v33 + 52);
          v19 = swift_allocObject();
          specialized InputFilter.InputFilterBuffer.init(_:)(v30);
          v41(v30, v7);
          goto LABEL_6;
        }
      }

      v19 = 0;
      *(a2 + 88) = 1;
LABEL_6:
      v16 = v45;
      v8 = v46;
      v20 = a2[10];
      a2[10] = v19;

      result = (*v48)(v16, v8);
      v21 = a2[10];
      v18 = MEMORY[0x29EDCA180];
      goto LABEL_7;
    }
  }

  else
  {
LABEL_23:
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v38 = 1;
    return swift_willThrow();
  }

  return result;
}

compression_stream *InputFilter.deinit()
{
  swift_beginAccess();
  compression_stream_destroy(v0 + 1);
  swift_endAccess();
  state = v0->state;

  dst_ptr = v0[2].dst_ptr;

  return v0;
}

uint64_t InputFilter.__deallocating_deinit()
{
  InputFilter.deinit();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance compression_algorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance compression_algorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x29EDCA608];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_299A4C890;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(a1);
      v7 = v22;
      v8 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      a1(&v22, &v22 + BYTE6(v4));
      v7 = v22;
      v8 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v7;
    v2[1] = v8;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x29EDCA608];
    return;
  }

  outlined consume of Data._Representation(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_299A4C890;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = *(&v22 + 1);
  v10 = *(v22 + 16);
  v11 = *(v22 + 24);
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    v15 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v11, v10);
      v17 = v11 - v10;
      if (!v16)
      {
        v18 = MEMORY[0x29C2A9820]();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        a1(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v9 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = a1;
  v5 = *(v1 + 1);

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v3 - v8;
  if (__OFSUB__(v3, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v4 - v3;
  v11 = MEMORY[0x29C2A9820]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13(v7 + v9, v7 + v9 + v12);
}

uint64_t specialized compression_stream.init(operation:algorithm:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *a2;
  *&v11.dst_ptr = 0xFFFFFFFFFFFFFFFFLL;
  *&v11.src_size = 0uLL;
  v11.src_ptr = -1;
  result = compression_stream_init(&v11, v4, dword_299A4CE48[v5]);
  if (result)
  {
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v7 = 0;
    result = swift_willThrow();
  }

  else
  {
    src_ptr = v11.src_ptr;
    v9 = *&v11.src_size;
    *a3 = *&v11.dst_ptr;
    *(a3 + 16) = src_ptr;
    *(a3 + 24) = v9;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t partial apply for closure #1 in OutputFilter.write<A>(_:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #1 in OutputFilter.write<A>(_:)(a1, v1[4], v1[5]);
}

unint64_t lazy protocol witness table accessor for type FilterError and conformance FilterError()
{
  result = lazy protocol witness table cache variable for type FilterError and conformance FilterError;
  if (!lazy protocol witness table cache variable for type FilterError and conformance FilterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterError and conformance FilterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterError and conformance FilterError;
  if (!lazy protocol witness table cache variable for type FilterError and conformance FilterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterError and conformance FilterError);
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x29EDCA608];
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
  v4 = MEMORY[0x29C2A9820]();
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

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

char *specialized InputFilter.InputFilterBuffer.init(_:)(char *a1)
{
  v2 = v1;
  v73 = a1;
  v3 = *v1;
  v4 = v3[13];
  v5 = v3[11];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(*(AssociatedConformanceWitness + 8) + 8);
  v79 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v8 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v64 = &v57 - v9;
  v80 = swift_getAssociatedTypeWitness();
  v78 = *(v80 - 8);
  v10 = *(v78 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v80);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v77 = &v57 - v13;
  v76 = swift_checkMetadataState();
  v82 = *(v76 - 8);
  v14 = *(v82 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v76);
  v72 = &v57 - v16;
  v17 = *(v5 - 8);
  v18 = v17[8];
  MEMORY[0x2A1C7C4A8](v15);
  v20 = &v57 - v19;
  v21 = v3[14];
  v23 = v17 + 2;
  v22 = v17[2];
  v75 = v21;
  v22(&v21[v2], v73, v5);
  v22(v20, &v21[v2], v5);
  v24 = v22;
  v71 = v22;
  v74 = v4;
  v25 = *(*(*(v4 + 8) + 8) + 8);
  v26 = dispatch thunk of Collection.count.getter();
  v27 = v17[1];
  v27(v20, v5);
  v69 = v27;
  v73 = (v17 + 1);
  *&v2[*(*v2 + 120)] = v26;
  v63 = *(*v2 + 136);
  *&v2[v63] = 0;
  v24(v20, &v75[v2], v5);
  v28 = v72;
  dispatch thunk of DataProtocol.regions.getter();
  v27(v20, v5);
  v29 = v76;
  dispatch thunk of Collection.startIndex.getter();
  v30 = *(v82 + 8);
  v82 += 8;
  v70 = v30;
  v30(v28, v29);
  v31 = *(*v2 + 128);
  v32 = v77;
  v33 = v78;
  v34 = v80;
  (*(v78 + 32))(&v2[v31], v77, v80);
  swift_beginAccess();
  v35 = *(v33 + 16);
  v60 = v31;
  v36 = &v2[v31];
  v37 = v32;
  v59 = v33 + 16;
  v58 = v35;
  v35(v32, v36, v34);
  v61 = v23;
  v71(v20, &v75[v2], v5);
  dispatch thunk of DataProtocol.regions.getter();
  v62 = v5;
  v69(v20, v5);
  v38 = v67;
  v39 = v76;
  dispatch thunk of Collection.endIndex.getter();
  v70(v28, v39);
  v40 = v80;
  v41 = *(swift_getAssociatedConformanceWitness() + 8);
  v42 = v37;
  v43 = v40;
  LOBYTE(v40) = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v33 + 8);
  v44(v38, v43);
  v78 = v33 + 8;
  v44(v42, v43);
  if ((v40 & 1) == 0)
  {
    v45 = v62;
    v71(v20, &v75[v2], v62);
    v75 = v44;
    v46 = v72;
    dispatch thunk of DataProtocol.regions.getter();
    v69(v20, v45);
    v47 = v77;
    v58(v77, &v2[v60], v80);
    v48 = v76;
    v49 = dispatch thunk of Collection.subscript.read();
    v50 = v65;
    v51 = v64;
    v52 = AssociatedTypeWitness;
    (*(v65 + 16))(v64);
    v49(v81, 0);
    (v75)(v47, v80);
    v70(v46, v48);
    v53 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
    v54 = dispatch thunk of Collection.count.getter();
    (*(v50 + 8))(v51, v52);
    *&v2[v63] = v54;
  }

  v55 = v68;
  InputFilter.InputFilterBuffer.advance(by:)(0);
  if (v55)
  {
  }

  return v2;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Algorithm and conformance Algorithm()
{
  result = lazy protocol witness table cache variable for type Algorithm and conformance Algorithm;
  if (!lazy protocol witness table cache variable for type Algorithm and conformance Algorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Algorithm and conformance Algorithm);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Algorithm] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Algorithm] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Algorithm] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11Compression9AlgorithmOGMd, &_sSay11Compression9AlgorithmOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Algorithm] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilterOperation and conformance FilterOperation()
{
  result = lazy protocol witness table cache variable for type FilterOperation and conformance FilterOperation;
  if (!lazy protocol witness table cache variable for type FilterOperation and conformance FilterOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterOperation and conformance FilterOperation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Algorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Algorithm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for InputFilter.InputFilterBuffer(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = *(a1 + 104);
    swift_getAssociatedTypeWitness();
    v6 = *(swift_getAssociatedConformanceWitness() + 8);
    result = swift_getAssociatedTypeWitness();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for compression_stream(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for compression_stream(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void type metadata accessor for compression_stream(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type compression_algorithm and conformance compression_algorithm(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in InputFilter.InputFilterBuffer.withUnsafeBytes<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = *(v6 + *(*v6 + 136));
  if (__OFSUB__(0, v10))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  result = v8(a2 - v10, a2);
  if (!v4)
  {
    return (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in InputFilter.readData(ofLength:)(uint64_t result, uint64_t a2)
{
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = result;
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  v7 = a2 - v4;
  *(v6 + 56) = v4;
  *(v6 + 64) = v7;
  v8 = compression_stream_process((v6 + 40), *(v6 + 88));
  swift_endAccess();
  if (v8 != COMPRESSION_STATUS_ERROR)
  {
    if (v8 == COMPRESSION_STATUS_END)
    {
      *(v6 + 89) = 1;
    }

    swift_beginAccess();
    v9 = *(v6 + 64);
    result = v7 - v9;
    if (!__OFSUB__(v7, v9))
    {
      return InputFilter.InputFilterBuffer.advance(by:)(result);
    }

    __break(1u);
    goto LABEL_10;
  }

  lazy protocol witness table accessor for type FilterError and conformance FilterError();
  swift_allocError();
  *v10 = 1;
  return swift_willThrow();
}