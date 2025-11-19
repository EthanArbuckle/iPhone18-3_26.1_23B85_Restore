unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV9deprotect10ciphertextAA17DeprotectedRecordVAA13TLSCiphertextV_tAA8TLSErrorOYKF(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TLSRecordProtector();
  v14 = *(v1 + *(v13 + 28));
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = v13;
  outlined init with copy of SymmetricKey?(v1 + *(v13 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of SymmetricKey?(v7);
LABEL_4:
    v16 = 0xD00000000000002DLL;
    v36 = 0xD00000000000002DLL;
    v37 = 0x80000001B26CDC20;
    v38 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v16;
  }

  v39 = a1;
  (*(v9 + 32))(v12, v7, v8);
  v17 = *(v15 + 36);
  v18 = *(v1 + v17);
  v16 = _s15SwiftTLSLibrary23calculateTLSRecordNonce2iv5seqnoAA0E0VSays5UInt8VG_s6UInt64VtAA8TLSErrorOYKF(v14, v18);
  v20 = v19;
  if (v2)
  {
LABEL_9:
    (*(v9 + 8))(v12, v8);
    return v16;
  }

  v35 = v17;
  v21 = *(v39 + 16);
  if (v21 > 0x4100)
  {
    v16 = 0xD000000000000036;
    v36 = 0xD000000000000036;
    v37 = 0x80000001B26CDBA0;
    v38 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_9;
  }

  v33 = v1;
  v34 = 0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, logger);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v32 = v21 - 17;
    v26 = swift_slowAlloc();
    v27 = v25;
    v28 = v26;
    *v26 = 134218240;
    *(v26 + 4) = v32;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v21;
    _os_log_impl(&dword_1B25F5000, v24, v27, "deprotecting ciphertext record: pt len: %ld, ct len: %ld", v26, 0x16u);
    MEMORY[0x1B274ECF0](v28, -1, -1);
  }

  v29 = v34;
  v16 = _s15SwiftTLSLibrary13TLSCiphertextV9deprotect12peerWriteKey5nonce19aeadExpansionLengthAA17DeprotectedRecordV9CryptoKit09SymmetricG0V_AA5NonceVSitAA8TLSErrorOYKF(v12, v16, v20, 16, v39);
  v30 = v33;
  if (v29)
  {
    goto LABEL_9;
  }

  if (v18 == -1)
  {

    v36 = 0xD00000000000001DLL;
    v37 = 0x80000001B26CDC50;
    v38 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    (*(v9 + 8))(v12, v8);
    return 0xD00000000000001DLL;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    *(v30 + v35) = v18 + 1;
  }

  return v16;
}

uint64_t _s15SwiftTLSLibrary5NonceVyACSays5UInt8VGAA8TLSErrorOYKcfCTf4nd_n(uint64_t a1)
{
  if (*(a1 + 16) == 12)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = *(a1 + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_1B25F5000, v5, v6, "tried to initialize a nonce with array length %ld, but expected 12", v7, 0xCu);
      MEMORY[0x1B274ECF0](v7, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 29;
  }

  return v2;
}

uint64_t type metadata accessor for TLSRecordProtector()
{
  result = type metadata singleton initialization cache for TLSRecordProtector;
  if (!type metadata singleton initialization cache for TLSRecordProtector)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of SymmetricKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TLSRecordProtector(uint64_t a1)
{
  v2 = type metadata accessor for TLSRecordProtector();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Nonce and conformance Nonce()
{
  result = lazy protocol witness table cache variable for type Nonce and conformance Nonce;
  if (!lazy protocol witness table cache variable for type Nonce and conformance Nonce)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Nonce and conformance Nonce);
  }

  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Nonce(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Nonce(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void type metadata completion function for TLSRecordProtector()
{
  type metadata accessor for SymmetricKey?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [UInt8]?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt16?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [UInt8]?()
{
  if (!lazy cache variable for type metadata for [UInt8]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UInt8]?);
    }
  }
}

void type metadata accessor for UInt16?()
{
  if (!lazy cache variable for type metadata for UInt16?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UInt16?);
    }
  }
}

uint64_t ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  LOBYTE(v26) = (*(a3 + 8))(a2, a3);
  v6 = MEMORY[0x1E69E6290];
  v7 = MEMORY[0x1E6969DF8];
  v29 = MEMORY[0x1E69E6290];
  v30 = MEMORY[0x1E6969DF8];
  v27 = &v26;
  v28 = (&v26 + 1);
  v8 = __swift_project_boxed_opaque_existential_0(&v27, MEMORY[0x1E69E6290]);
  v10 = *v8;
  v9 = v8[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  v11 = *v3;
  v12 = v3[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v11 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v11 >> 32;
  }

  else
  {
    v14 = BYTE6(v12);
  }

  LOBYTE(v26) = 0;
  v29 = v6;
  v30 = v7;
  v27 = &v26;
  v28 = (&v26 + 1);
  v15 = __swift_project_boxed_opaque_existential_0(&v27, v6);
  v17 = *v15;
  v16 = v15[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  v26 = 0;
  v29 = v6;
  v30 = v7;
  v27 = &v26;
  v28 = &v27;
  v18 = __swift_project_boxed_opaque_existential_0(&v27, v6);
  v20 = *v18;
  v19 = v18[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  v21 = (*(a3 + 16))(v3, a2, a3);
  if (v21 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v22 = v21;
  v23 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v21), v14);
  if (__OFADD__(v14, v23))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v22, v14 + v23);
  v24 = *MEMORY[0x1E69E9840];
  return v22 + 4;
}

double _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1, &v10, v12);
  if (v3)
  {
    v6 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v6;
  }

  else
  {
    v8 = v12[1];
    *a3 = v12[0];
    a3[1] = v8;
    result = *&v13;
    v9 = v14;
    a3[2] = v13;
    a3[3] = v9;
  }

  return result;
}

uint64_t NewSessionTicket.ticketNonce.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  outlined copy of Data._Representation(v1, v2);
  return v1;
}

uint64_t NewSessionTicket.ticket.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  outlined copy of Data._Representation(v1, v2);
  return v1;
}

uint64_t NewSessionTicket.ticket.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = outlined consume of Data._Representation(v3[4], v3[5]);
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

uint64_t NewSessionTicket.extensions.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t NewSessionTicket.init(ticketLifetime:ticketAgeAdd:ticketNonce:ticket:extensions:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t static NewSessionTicket.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || (specialized static ByteBuffer.== infix(_:_:)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a2 + 8), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a2 + 32), *(a2 + 40), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v4, v5);
}

uint64_t NewSessionTicket.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 4));
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  result = *(v1 + 24);
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v4 >> 32;
  }

  else
  {
    v8 = BYTE6(v5);
  }

  if (v8 < result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.hash(into:)();
  outlined consume of Data._Representation(v9, v11);
  v12 = v2[4];
  v13 = v2[5];
  result = v2[6];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v12 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v12 >> 32;
  }

  else
  {
    v15 = BYTE6(v13);
  }

  if (v15 < result)
  {
    goto LABEL_22;
  }

  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  Data.hash(into:)();
  outlined consume of Data._Representation(v16, v18);
  v19 = v2[7];
  v20 = *(v19 + 16);
  result = MEMORY[0x1B274DB20](v20);
  if (v20)
  {
    v21 = v19 + 32;
    do
    {
      v22 = *(v21 + 16);
      v27[0] = *v21;
      v27[1] = v22;
      v23 = *(v21 + 32);
      v24 = *(v21 + 48);
      v25 = *(v21 + 64);
      v28 = *(v21 + 80);
      v27[3] = v24;
      v27[4] = v25;
      v27[2] = v23;
      outlined init with copy of Extension(v27, v26);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v27);
      v21 += 88;
      --v20;
    }

    while (v20);
  }

  return result;
}

Swift::Int NewSessionTicket.hashValue.getter()
{
  Hasher.init(_seed:)();
  NewSessionTicket.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NewSessionTicket()
{
  Hasher.init(_seed:)();
  NewSessionTicket.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NewSessionTicket(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 32);
  v9 = *(a1 + 32);
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a2 + 8), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(v9, v2, v3, v8, v5, v6) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v4, v7);
}

uint64_t NewSessionTicket.write(into:)(uint64_t *a1)
{
  v2 = v1;
  v66 = *MEMORY[0x1E69E9840];
  v61 = bswap32(*v2);
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  v64 = MEMORY[0x1E69E6290];
  v65 = MEMORY[0x1E6969DF8];
  v62 = &v61;
  v63 = &v62;
  v6 = __swift_project_boxed_opaque_existential_0(&v62, MEMORY[0x1E69E6290]);
  v8 = *v6;
  v7 = v6[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v62);
  v61 = bswap32(*(v2 + 4));
  v64 = v4;
  v65 = v5;
  v62 = &v61;
  v63 = &v62;
  v9 = __swift_project_boxed_opaque_existential_0(&v62, v4);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v62);
  v12 = *a1;
  v13 = a1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v15 = 0;
    if (v14 == 2)
    {
      v15 = *(v12 + 24);
    }
  }

  else if (v14)
  {
    v15 = v12 >> 32;
  }

  else
  {
    v15 = BYTE6(v13);
  }

  LOBYTE(v61) = 0;
  v64 = v4;
  v65 = v5;
  v62 = &v61;
  v63 = (&v61 + 1);
  v16 = __swift_project_boxed_opaque_existential_0(&v62, v4);
  v18 = *v16;
  v17 = v16[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v62);
  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }
  }

  else if (v21)
  {
    v22 = v19;
    v23 = v19 >> 32;
  }

  else
  {
    v22 = 0;
    v23 = BYTE6(v20);
  }

  if (v23 < *(v2 + 24) || v23 < v22)
  {
    __break(1u);
    goto LABEL_69;
  }

  v24 = Data._Representation.subscript.getter();
  v26 = v25;
  Data.append(_:)();
  v27 = v26;
  v28 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v28)
    {
      outlined consume of Data._Representation(v24, v26);
      v24 = BYTE6(v26);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v28 != 2)
  {
    goto LABEL_28;
  }

  v30 = *(v24 + 16);
  v29 = *(v24 + 24);
  outlined consume of Data._Representation(v24, v27);
  v24 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
LABEL_23:
    outlined consume of Data._Representation(v24, v27);
    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    v24 = HIDWORD(v24) - v24;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v24 <= 0xFF)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_28:
  outlined consume of Data._Representation(v24, v27);
  v24 = 0;
LABEL_29:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v24, v15);
  v31 = *a1;
  v32 = a1[1];
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 == 2)
    {
      v34 = *(v31 + 24);
    }

    else
    {
      v34 = 0;
    }
  }

  else if (v33)
  {
    v34 = v31 >> 32;
  }

  else
  {
    v34 = BYTE6(v32);
  }

  LOWORD(v61) = 0;
  v64 = v4;
  v65 = v5;
  v62 = &v61;
  v63 = (&v61 + 2);
  v35 = __swift_project_boxed_opaque_existential_0(&v62, v4);
  v37 = *v35;
  v36 = v35[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v62);
  v38 = *(v2 + 32);
  v39 = *(v2 + 40);
  v40 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v41 = *(v38 + 16);
      v42 = *(v38 + 24);
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }
  }

  else if (v40)
  {
    v41 = v38;
    v42 = v38 >> 32;
  }

  else
  {
    v41 = 0;
    v42 = BYTE6(v39);
  }

  if (v42 < *(v2 + 48) || v42 < v41)
  {
    goto LABEL_70;
  }

  v43 = Data._Representation.subscript.getter();
  v45 = v44;
  Data.append(_:)();
  v46 = v45;
  v47 = v45 >> 62;
  if ((v45 >> 62) <= 1)
  {
    if (!v47)
    {
      outlined consume of Data._Representation(v43, v45);
      v43 = BYTE6(v45);
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  if (v47 != 2)
  {
    goto LABEL_57;
  }

  v49 = *(v43 + 16);
  v48 = *(v43 + 24);
  outlined consume of Data._Representation(v43, v46);
  v43 = v48 - v49;
  if (__OFSUB__(v48, v49))
  {
    __break(1u);
LABEL_52:
    outlined consume of Data._Representation(v43, v46);
    if (__OFSUB__(HIDWORD(v43), v43))
    {
      goto LABEL_75;
    }

    v43 = HIDWORD(v43) - v43;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (!(v43 >> 16))
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_57:
  outlined consume of Data._Representation(v43, v46);
  v43 = 0;
LABEL_58:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v43, v34);
  v50 = *a1;
  v51 = a1[1];
  v52 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    if (v52 == 2)
    {
      v53 = *(v50 + 24);
    }

    else
    {
      v53 = 0;
    }
  }

  else if (v52)
  {
    v53 = v50 >> 32;
  }

  else
  {
    v53 = BYTE6(v51);
  }

  LOWORD(v61) = 0;
  v64 = v4;
  v65 = v5;
  v62 = &v61;
  v63 = (&v61 + 2);
  v54 = __swift_project_boxed_opaque_existential_0(&v62, v4);
  v56 = *v54;
  v55 = v54[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v62);
  v57 = specialized Sequence.reduce<A>(into:_:)(0, *(v2 + 56));
  if ((v57 & 0x8000000000000000) != 0)
  {
    goto LABEL_72;
  }

  v58 = v57;
  if (v57 >> 16)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v57, v53);
  v59 = *MEMORY[0x1E69E9840];
  return v24 + v43 + v58 + 13;
}

unint64_t lazy protocol witness table accessor for type NewSessionTicket and conformance NewSessionTicket()
{
  result = lazy protocol witness table cache variable for type NewSessionTicket and conformance NewSessionTicket;
  if (!lazy protocol witness table cache variable for type NewSessionTicket and conformance NewSessionTicket)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NewSessionTicket and conformance NewSessionTicket);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NewSessionTicket(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NewSessionTicket(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ExtensionType.description.getter(unsigned __int16 a1)
{
  if (a1 > 0x29u)
  {
    if (a1 <= 0x32u)
    {
      switch(a1)
      {
        case '*':
          return 0x6144796C7261652ELL;
        case '+':
          return 0xD000000000000012;
        case '-':
          return 0xD000000000000015;
      }

      goto LABEL_32;
    }

    if (a1 > 0x39u)
    {
      if (a1 == 58)
      {
        return 0x5274656B6369742ELL;
      }

      if (a1 == 35387)
      {
        return 0x656B61702ELL;
      }

      goto LABEL_32;
    }

    if (a1 != 51)
    {
      if (a1 == 57)
      {
        return 0xD000000000000018;
      }

      goto LABEL_32;
    }

    v2 = 2036689710;
    return v2 | 0x7261685300000000;
  }

  if (a1 <= 0xFu)
  {
    switch(a1)
    {
      case 0u:
        return 0x4E7265767265732ELL;
      case 0xAu:
        return 0xD000000000000010;
      case 0xDu:
        return 0xD000000000000014;
    }

    goto LABEL_32;
  }

  switch(a1)
  {
    case 0x10u:
      return 0xD000000000000024;
    case 0x14u:
      return 0xD000000000000016;
    case 0x29u:
      v2 = 1701998638;
      return v2 | 0x7261685300000000;
  }

LABEL_32:
  _StringGuts.grow(_:)(27);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v3);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t lazy protocol witness table accessor for type ExtensionType and conformance ExtensionType()
{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

double _s15SwiftTLSLibrary8TLSErrorO19wrappingCryptoErroryxxyq_YKXEACYKs0F0R_r0_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v12);
  if (v6)
  {
    (*(v9 + 8))(v12, a4);
    v15[0] = xmmword_1B26C6420;
    v15[1] = xmmword_1B26C6420;
    v16 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = *v15;
    *a6 = v15[0];
    *(a6 + 16) = 2;
  }

  return result;
}

uint64_t specialized static TLSError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4 && WORD1(a1) == WORD1(a4);
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      if (a6 != 2 || a4 != 1 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 2 || a4 != 2 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 2 || a4 != 3 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 2 || a4 != 4 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 2 || a4 != 5 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 2 || a4 != 6 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 2 || a4 != 7 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 2 || a4 != 8 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 2 || a4 != 9 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 2 || a4 != 10 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 2 || a4 != 11 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 12:
      if (a6 != 2 || a4 != 12 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 13:
      if (a6 != 2 || a4 != 13 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 14:
      if (a6 != 2 || a4 != 14 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 15:
      if (a6 != 2 || a4 != 15 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 16:
      if (a6 != 2 || a4 != 16 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 17:
      if (a6 != 2 || a4 != 17 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 18:
      if (a6 != 2 || a4 != 18 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 19:
      if (a6 != 2 || a4 != 19 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 20:
      if (a6 != 2 || a4 != 20 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 21:
      if (a6 != 2 || a4 != 21 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 22:
      if (a6 != 2 || a4 != 22 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 23:
      if (a6 != 2 || a4 != 23 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 24:
      if (a6 != 2 || a4 != 24 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 25:
      if (a6 != 2 || a4 != 25 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 26:
      if (a6 != 2 || a4 != 26 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 27:
      if (a6 != 2 || a4 != 27 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 28:
      if (a6 != 2 || a4 != 28 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 29:
      if (a6 != 2 || a4 != 29 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 30:
      if (a6 != 2 || a4 != 30 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 31:
      if (a6 != 2 || a4 != 31 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 32:
      if (a6 != 2 || a4 != 32 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 33:
      if (a6 != 2 || a4 != 33 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 34:
      if (a6 != 2 || a4 != 34 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 35:
      if (a6 != 2 || a4 != 35 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 36:
      if (a6 != 2 || a4 != 36 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 37:
      if (a6 != 2 || a4 != 37 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    default:
      if (a6 != 2 || a5 | a4)
      {
        return 0;
      }

      result = 1;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SwiftTLSLibrary8TLSErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TLSError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TLSError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TLSError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t HandshakeMessage.logDescription.getter()
{
  v1 = *(v0 + 104);
  v2 = 0x6548746E65696C63;
  v3 = 0x64656873696E6966;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6369666974726563;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*(v0 + 104) <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 == 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*(v0 + 104))
  {
    v2 = 0x6548726576726573;
  }

  if (*(v0 + 104) > 1u)
  {
    v2 = v5;
  }

  if (*(v0 + 104) <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void HandshakeMessage.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 104);
  if (v7 <= 3)
  {
    if (*(v1 + 104) > 1u)
    {
      if (v7 == 2)
      {
        MEMORY[0x1B274DB20](2);
        v13 = *(v4 + 16);
        MEMORY[0x1B274DB20](v13);
        if (v13)
        {
          v14 = v4 + 32;
          do
          {
            v15 = *(v14 + 16);
            v34 = *v14;
            v35 = v15;
            v16 = *(v14 + 32);
            v17 = *(v14 + 48);
            v18 = *(v14 + 64);
            LOBYTE(v39) = *(v14 + 80);
            v37 = v17;
            v38 = v18;
            v36 = v16;
            outlined init with copy of Extension(&v34, v33);
            Extension.hash(into:)(a1);
            outlined destroy of Extension(&v34);
            v14 += 88;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        MEMORY[0x1B274DB20](3);

        CertificateRequest.hash(into:)(a1, v4, v3, v5, v6);
      }
    }

    else
    {
      *&v34 = *v1;
      *(&v34 + 1) = v3;
      *&v35 = v5;
      *(&v35 + 1) = v6;
      if (v7)
      {
        v21 = *(v1 + 48);
        v36 = *(v1 + 32);
        v22 = *(v1 + 64);
        v23 = *(v1 + 80);
        v37 = v21;
        v38 = v22;
        v39 = v23;
        MEMORY[0x1B274DB20](1);
        ServerHello.hash(into:)(a1);
      }

      else
      {
        v8 = *(v1 + 64);
        v9 = *(v1 + 80);
        v10 = *(v1 + 32);
        v37 = *(v1 + 48);
        v38 = v8;
        v39 = v9;
        v40 = *(v1 + 96);
        v36 = v10;
        MEMORY[0x1B274DB20](0);
        ClientHello.hash(into:)(a1);
      }
    }

    return;
  }

  if (*(v1 + 104) > 5u)
  {
    if (v7 != 6)
    {
      *&v34 = *v1;
      *(&v34 + 1) = v3;
      *&v35 = v5;
      *(&v35 + 1) = v6;
      v26 = *(v1 + 48);
      v36 = *(v1 + 32);
      v37 = v26;
      MEMORY[0x1B274DB20](7);
      NewSessionTicket.hash(into:)(a1);
      return;
    }

    MEMORY[0x1B274DB20](6);
    v19 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(v4 + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = v4 >> 32;
    }

    else
    {
      v20 = BYTE6(v3);
    }

    if (v20 < v5)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }
  }

  else
  {
    if (v7 == 4)
    {
      MEMORY[0x1B274DB20](4);
      v11 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v4 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v4 >> 32;
      }

      else
      {
        v12 = BYTE6(v3);
      }

      if (v12 >= v5)
      {
        v27 = Data._Representation.subscript.getter();
        v29 = v28;
        Data.hash(into:)();
        outlined consume of Data._Representation(v27, v29);

        specialized Array<A>.hash(into:)(a1, v6);
        return;
      }

      __break(1u);
      goto LABEL_51;
    }

    MEMORY[0x1B274DB20](5);
    Hasher._combine(_:)(v4);
    v24 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(v3 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = v3 >> 32;
    }

    else
    {
      v25 = BYTE6(v5);
    }

    if (v25 < v6)
    {
      goto LABEL_52;
    }
  }

  v30 = Data._Representation.subscript.getter();
  v32 = v31;
  Data.hash(into:)();

  outlined consume of Data._Representation(v30, v32);
}

Swift::Int HandshakeMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  HandshakeMessage.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HandshakeMessage()
{
  Hasher.init(_seed:)();
  HandshakeMessage.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HandshakeMessage(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return specialized static HandshakeMessage.__derived_enum_equals(_:_:)(v10, v12) & 1;
}

uint64_t specialized static HandshakeMessage.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 104);
  if (v9 <= 3)
  {
    if (*(a1 + 104) > 1u)
    {
      if (v9 == 2)
      {
        if (*(a2 + 104) == 2)
        {
          v16 = *a2;
          v17 = *(v3 + 16);
          if (v17 == *(*a2 + 16))
          {
            if (v17 && v3 != v16)
            {
              v18 = v3 + 32;
              v19 = v16 + 32;
              do
              {
                v20 = *(v18 + 16);
                v39[0] = *v18;
                v39[1] = v20;
                v21 = *(v18 + 32);
                v22 = *(v18 + 48);
                v23 = *(v18 + 64);
                v40 = *(v18 + 80);
                v39[3] = v22;
                v39[4] = v23;
                v39[2] = v21;
                v24 = *(v19 + 16);
                v41[0] = *v19;
                v41[1] = v24;
                v25 = *(v19 + 32);
                v26 = *(v19 + 48);
                v27 = *(v19 + 64);
                v42 = *(v19 + 80);
                v41[3] = v26;
                v41[4] = v27;
                v41[2] = v25;
                outlined init with copy of Extension(v39, v38);
                outlined init with copy of Extension(v41, v38);
                v28 = specialized static Extension.__derived_enum_equals(_:_:)(v39, v41);
                outlined destroy of Extension(v41);
                outlined destroy of Extension(v39);
                if ((v28 & 1) == 0)
                {
                  break;
                }

                v19 += 88;
                v18 += 88;
                --v17;
              }

              while (v17);
              return v28 & 1;
            }

            goto LABEL_48;
          }
        }

        goto LABEL_54;
      }

      if (*(a2 + 104) != 3)
      {
        goto LABEL_54;
      }

      v14 = a2[3];
      if ((specialized static ByteBuffer.== infix(_:_:)(v3, v4.u64[0], v4.i64[1], *a2, a2[1], a2[2]) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v10 = *(a1 + 72);
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      if (*(a1 + 104))
      {
        if (*(a2 + 104) == 1 && __PAIR64__(*(a2 + 1), *a2) == __PAIR64__(BYTE1(v3), v3) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 1), v4), vceqq_s64(*(a2 + 3), *(a1 + 24))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 5), v7), vceqq_s64(*(a2 + 7), *(a1 + 56))))) & 1) != 0 && v10 == a2[9] && *(a2 + 40) == v11 && *(a2 + 82) == BYTE2(v11) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v12, a2[11]) & 1) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_54;
      }

      if (*(a2 + 104))
      {
        goto LABEL_54;
      }

      if (__PAIR64__(*(a2 + 1), *a2) != __PAIR64__(BYTE1(v3), v3))
      {
        goto LABEL_54;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 1), v4), vceqq_s64(*(a2 + 3), *(a1 + 24))))) & 1) == 0)
      {
        goto LABEL_54;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a2 + 5), v7), vceqq_s64(*(a2 + 7), *(a1 + 56))))) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v10 != a2[9])
      {
        goto LABEL_54;
      }

      v5 = *(a1 + 96);
      v13 = a2[11];
      v14 = a2[12];
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary11CipherSuiteV_Tt1g5(v11, a2[10]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(v12, v13) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v5, v14))
    {
LABEL_48:
      v28 = 1;
      return v28 & 1;
    }

LABEL_54:
    v28 = 0;
    return v28 & 1;
  }

  if (*(a1 + 104) <= 5u)
  {
    if (v9 == 4)
    {
      if (*(a2 + 104) == 4)
      {
        v15 = a2[3];
        if (specialized static ByteBuffer.== infix(_:_:)(v3, v4.u64[0], v4.i64[1], *a2, a2[1], a2[2]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary18CertificateMessageV0D5EntryV_Tt1g5(v5, v15))
        {
          goto LABEL_48;
        }
      }
    }

    else if (*(a2 + 104) == 5 && *a2 == v3 && (specialized static ByteBuffer.== infix(_:_:)(v4.i64[0], v4.u64[1], *(a1 + 24), a2[1], a2[2], a2[3]) & 1) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_54;
  }

  if (v9 != 6)
  {
    if (*(a2 + 104) == 7 && *a2 == v3)
    {
      v33 = a2[4];
      v34 = a2[5];
      v35 = a2[6];
      v36 = a2[7];
      v37 = *(a1 + 40);
      if (specialized static ByteBuffer.== infix(_:_:)(v4.i64[0], v4.u64[1], *(a1 + 24), a2[1], a2[2], a2[3]) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v6, v37, *(&v37 + 1), v33, v34, v35) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v8, v36))
      {
        goto LABEL_48;
      }
    }

    goto LABEL_54;
  }

  if (*(a2 + 104) != 6)
  {
    goto LABEL_54;
  }

  v29 = a2[1];
  v30 = a2[2];
  v31 = *a2;

  return specialized static ByteBuffer.== infix(_:_:)(v3, v4.u64[0], v4.i64[1], v31, v29, v30);
}

unint64_t lazy protocol witness table accessor for type HandshakeMessage and conformance HandshakeMessage()
{
  result = lazy protocol witness table cache variable for type HandshakeMessage and conformance HandshakeMessage;
  if (!lazy protocol witness table cache variable for type HandshakeMessage and conformance HandshakeMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandshakeMessage and conformance HandshakeMessage);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeMessage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 105))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 104);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

void Extension.SupportedGroups.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }
}

Swift::Int Extension.SupportedGroups.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.SupportedGroups()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.SupportedGroups()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV19readSupportedGroups11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 != 8 && a1 != 1)
  {
    v10 = a1 | 0xA0000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_9;
  }

  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  outlined copy of Data._Representation(*v1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0 || (v7 = ByteBuffer.readSlice(length:)(v6), v8 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v10 = 0;
    goto LABEL_9;
  }

  v13 = v7;
  v14 = v9;
  v15 = v8 >> 62;
  v16 = BYTE6(v8);
  v17 = v7 >> 32;
  v31 = BYTE6(v8);
  if ((v8 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v7 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v7 >> 32;
  }

  v32 = v8;
  v28 = v5;
  v29 = v4;
  v30 = v3;
  v18 = __OFSUB__(v16, v9);
  v19 = v16 - v9;
  if (v18)
  {
    goto LABEL_44;
  }

  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v19 / 2) & ~((v19 + (v19 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v21 = v14 + 2;
  if (__OFADD__(v14, 2))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = v20;
  while (v15 > 1)
  {
    v22 = v32;
    if (v15 == 2)
    {
      v23 = *(v13 + 24);
      goto LABEL_25;
    }

    if (v21 >= 1)
    {
      v26 = 0;
      goto LABEL_38;
    }

LABEL_28:
    v33 = v22;
    if (v21 < v14)
    {
      goto LABEL_43;
    }

    outlined copy of Data._Representation(v13, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v13, v33);
    v25 = *(v10 + 16);
    v24 = *(v10 + 24);
    if (v25 >= v24 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v10);
    }

    *(v10 + 16) = v25 + 1;
    *(v10 + 2 * v25 + 32) = bswap32(0) >> 16;
    v14 = v21;
    v18 = __OFADD__(v21, 2);
    v21 += 2;
    if (v18)
    {
      goto LABEL_42;
    }
  }

  v23 = v31;
  v22 = v32;
  if (v15)
  {
    v23 = v17;
  }

LABEL_25:
  if (v23 >= v21)
  {
    goto LABEL_28;
  }

  v26 = v31;
  if (v15)
  {
    v26 = v17;
    if (v15 == 2)
    {
      v26 = *(v13 + 24);
    }
  }

LABEL_38:
  if (__OFSUB__(v26, v14))
  {
LABEL_45:
    __break(1u);
  }

  if (v26 == v14)
  {
    outlined consume of Data._Representation(v13, v22);
    outlined consume of Data._Representation(v29, v3);
  }

  else
  {
    v27 = v22;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v13, v27);
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v29;
    v1[1] = v30;
    v1[2] = v28;
    swift_willThrowTypedImpl();
    v10 = 1;
  }

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t lazy protocol witness table accessor for type Extension.SupportedGroups and conformance Extension.SupportedGroups()
{
  result = lazy protocol witness table cache variable for type Extension.SupportedGroups and conformance Extension.SupportedGroups;
  if (!lazy protocol witness table cache variable for type Extension.SupportedGroups and conformance Extension.SupportedGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.SupportedGroups and conformance Extension.SupportedGroups);
  }

  return result;
}

uint64_t (*ByteBuffer.writeRecord<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v79 = *MEMORY[0x1E69E9840];
  v71 = *(a2 - 8);
  v6 = *(v71 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v72 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v73 = &v60[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v60[-v11];
  v68 = *(v12 + 8);
  v69 = v12 + 8;
  LOBYTE(v74) = v68(v13, v12);
  v14 = &v74;
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v77 = MEMORY[0x1E69E6290];
  v78 = MEMORY[0x1E6969DF8];
  v75 = &v74;
  v76 = (&v74 + 1);
  v17 = __swift_project_boxed_opaque_existential_0(&v75, MEMORY[0x1E69E6290]);
  v19 = *v17;
  v18 = v17[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v75);
  v66 = *(a3 + 16);
  v67 = a3 + 16;
  v74 = v66(a2, a3);
  v77 = v15;
  v78 = v16;
  v75 = &v74;
  v76 = &v75;
  v20 = __swift_project_boxed_opaque_existential_0(&v75, v15);
  v22 = *v20;
  v21 = v20[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v75);
  v23 = *(a3 + 24);
  v24 = *(v23(a2, a3) + 16);

  if (v24 >> 16)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  v74 = bswap32(v24) >> 16;
  v77 = v15;
  v78 = MEMORY[0x1E6969DF8];
  v75 = &v74;
  v76 = &v75;
  v25 = __swift_project_boxed_opaque_existential_0(&v75, v15);
  v27 = *v25;
  v26 = v25[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v75);
  v28 = v23(a2, a3);
  v29 = v23;
  if (*(v28 + 16))
  {
    v30 = v28;
    Data._Representation.append(contentsOf:)();
    v14 = *(v30 + 16);
  }

  else
  {
    v14 = 0;
  }

  v23 = v73;
  v63 = v29;
  v64 = a3;
  v65 = a3 + 24;

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, logger);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v14;
    _os_log_impl(&dword_1B25F5000, v32, v33, "wrote contentlength: %ld", v34, 0xCu);
    v35 = v34;
    v23 = v73;
    MEMORY[0x1B274ECF0](v35, -1, -1);
  }

  if (__OFADD__(v14, 5))
  {
    __break(1u);
  }

  v73 = (v14 + 5);
  v36 = v70;
  v37 = v71;
  v38 = *(v71 + 16);
  v38(v70, a1, a2);
  v38(v23, a1, a2);
  v39 = v72;
  v38(v72, a1, a2);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75 = v62;
    *v42 = 136315906;
    v61 = v41;
    v43 = v64;
    v44 = v68(a2, v64);
    v45 = *(v37 + 8);
    v45(v36, a2);
    v46 = ContentType.description.getter(v44);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v75);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    v49 = v66(a2, v43);
    v45(v23, a2);
    v50 = ProtocolVersion.description.getter(v49);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v75);

    *(v42 + 14) = v52;
    *(v42 + 22) = 2048;
    v53 = v72;
    v54 = *(v63(a2, v43) + 16);

    v45(v53, a2);
    *(v42 + 24) = v54;
    *(v42 + 32) = 2048;
    v55 = v73;
    *(v42 + 34) = v73;
    _os_log_impl(&dword_1B25F5000, v40, v61, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v42, 0x2Au);
    v56 = v62;
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v56, -1, -1);
    MEMORY[0x1B274ECF0](v42, -1, -1);
  }

  else
  {
    v57 = *(v37 + 8);
    v57(v39, a2);
    v57(v23, a2);
    v57(v36, a2);

    v55 = v73;
  }

  v58 = *MEMORY[0x1E69E9840];
  return v55;
}

uint64_t HandshakeStateMachine.Configuration.serverName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HandshakeStateMachine.Configuration.serverName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.validPublicKeys.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.quicTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  result = outlined consume of ByteBuffer?(v3[3], v3[4]);
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.alpn.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.ticketRequest.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 58) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.fixedKeyExchangeGroup.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 62) = BYTE2(result) & 1;
  return result;
}

void HandshakeStateMachine.Configuration.hash(into:)()
{
  v1 = v0;
  if (v0[1])
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = v0[2];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for P256.Signing.PublicKey() - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = MEMORY[0x1B274D470]();
      v10 = v9;
      Data.hash(into:)();
      outlined consume of Data._Representation(v8, v10);
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  v11 = v1[4];
  if (v11 >> 60 != 15)
  {
    v17 = v1[3];
    v18 = v1[5];
    Hasher._combine(_:)(1u);
    v19 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(v17 + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = v17 >> 32;
    }

    else
    {
      v20 = BYTE6(v11);
    }

    if (v20 < v18)
    {
      __break(1u);
      return;
    }

    v21 = Data._Representation.subscript.getter();
    v23 = v22;
    Data.hash(into:)();
    outlined consume of Data._Representation(v21, v23);
    v12 = v1[6];
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_22:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v12 = v1[6];
  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  v13 = *(v12 + 16);
  MEMORY[0x1B274DB20](v13);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      String.hash(into:)();

      v14 += 2;
      --v13;
    }

    while (v13);
  }
}

Swift::Int HandshakeStateMachine.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  HandshakeStateMachine.Configuration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HandshakeStateMachine.Configuration()
{
  Hasher.init(_seed:)();
  HandshakeStateMachine.Configuration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HandshakeStateMachine.Configuration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static HandshakeStateMachine.Configuration.== infix(_:_:)(v7, v9) & 1;
}

uint64_t specialized static HandshakeStateMachine.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v96 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - v15;
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v94 = v5;
  v95 = v9;
  v93 = v8;
  v101 = *(a1 + 24);
  v19 = *(a1 + 40);
  v102 = v19;
  v99 = *(a2 + 24);
  v20 = *(a2 + 40);
  v100 = v20;
  v21 = v101;
  v22 = v99;
  if (*(&v101 + 1) >> 60 == 15)
  {
    if (*(&v99 + 1) >> 60 == 15)
    {
      outlined init with copy of Any?(&v101, v98, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
      outlined init with copy of Any?(&v99, v98, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
      outlined consume of ByteBuffer?(v21, *(&v21 + 1));
      goto LABEL_16;
    }

LABEL_12:
    outlined init with copy of Any?(&v101, v98, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
    outlined init with copy of Any?(&v99, v98, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
    outlined consume of ByteBuffer?(v21, *(&v21 + 1));
    outlined consume of ByteBuffer?(v22, *(&v22 + 1));
    return 0;
  }

  if (*(&v99 + 1) >> 60 == 15)
  {
    goto LABEL_12;
  }

  outlined init with copy of Any?(&v101, v98, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  outlined init with copy of Any?(&v99, v98, &_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  LODWORD(v92) = specialized static ByteBuffer.== infix(_:_:)(v21, *(&v21 + 1), v19, v22, *(&v22 + 1), v20);
  outlined consume of ByteBuffer?(v22, *(&v22 + 1));
  outlined consume of ByteBuffer?(v21, *(&v21 + 1));
  if ((v92 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v24 = *(a1 + 48);
  v25 = *(a2 + 48);
  if (v24)
  {
    v27 = v93;
    v26 = v94;
    v28 = v95;
    if (v25 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v24, v25) & 1) != 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  v27 = v93;
  v26 = v94;
  v28 = v95;
  if (v25)
  {
    return 0;
  }

LABEL_21:
  v29 = *(a1 + 16);
  v86 = *(v29 + 16);
  if (!v86)
  {
    return 1;
  }

  v30 = 0;
  v81 = 0;
  v31 = *(a2 + 16);
  v34 = *(v26 + 16);
  v32 = v26 + 16;
  v33 = v34;
  v35 = (*(v32 + 64) + 32) & ~*(v32 + 64);
  v36 = v29 + v35;
  v82 = *(v32 + 56);
  v87 = v31;
  v37 = v31 + v35;
  v83 = (v32 + 16);
  v92 = (v32 - 8);
  v94 = v32;
  v85 = v34;
  v84 = v16;
  v88 = v4;
  for (result = v34(v27, v29 + v35, v4); ; result = v33(v27, v36, v4))
  {
    v46 = *(v87 + 16);
    if (v30 == v46)
    {
      (*v92)(v27, v4);
      return 1;
    }

    if (v30 >= v46)
    {
      break;
    }

    v90 = v36;
    v91 = v30;
    v47 = *(v28 + 48);
    (*v83)(v16, v27, v4);
    v89 = v37;
    v33(&v16[v47], v37, v4);
    v48 = v96;
    v49 = outlined init with copy of Any?(v16, v96, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
    v50 = MEMORY[0x1B274D470](v49);
    v51 = v16;
    v53 = v52;
    v54 = *v92;
    (*v92)(v48, v4);
    v55 = v51;
    v56 = v97;
    v57 = outlined init with copy of Any?(v55, v97, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
    v58 = *(v28 + 48);
    v59 = MEMORY[0x1B274D470](v57);
    v61 = v60;
    v62 = v56 + v58;
    v63 = v53;
    result = (v54)(v62, v4);
    v64 = v61;
    v65 = v53 >> 62;
    v66 = v61 >> 62;
    if (v53 >> 62 == 3)
    {
      v67 = 0;
      v68 = v50;
      if (v50)
      {
        goto LABEL_40;
      }

      v27 = v93;
      v28 = v95;
      v33 = v85;
      v16 = v84;
      v4 = v88;
      if (v63 == 0xC000000000000000)
      {
        v69 = v91;
        if (v66 >= 3)
        {
          v67 = 0;
          if (!v59 && v64 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v70 = 0;
            v71 = 0xC000000000000000;
            goto LABEL_55;
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
      v68 = v50;
      if (!v65)
      {
        v67 = BYTE6(v53);
LABEL_40:
        v27 = v93;
        v28 = v95;
        v33 = v85;
        v16 = v84;
        v69 = v91;
        v4 = v88;
LABEL_41:
        if (v66 <= 1)
        {
          goto LABEL_42;
        }

        goto LABEL_48;
      }

      v4 = v88;
      if (v65 == 1)
      {
        LODWORD(v67) = HIDWORD(v50) - v50;
        v27 = v93;
        v28 = v95;
        v33 = v85;
        v16 = v84;
        if (__OFSUB__(HIDWORD(v50), v50))
        {
          goto LABEL_63;
        }

        v67 = v67;
      }

      else
      {
        v74 = *(v50 + 16);
        v73 = *(v50 + 24);
        v75 = __OFSUB__(v73, v74);
        v67 = v73 - v74;
        v27 = v93;
        v28 = v95;
        v33 = v85;
        v16 = v84;
        if (v75)
        {
          goto LABEL_62;
        }
      }
    }

    v69 = v91;
    if (v66 <= 1)
    {
LABEL_42:
      if (v66)
      {
        LODWORD(v72) = HIDWORD(v59) - v59;
        if (__OFSUB__(HIDWORD(v59), v59))
        {
          goto LABEL_60;
        }

        v72 = v72;
      }

      else
      {
        v72 = BYTE6(v64);
      }

      goto LABEL_50;
    }

LABEL_48:
    if (v66 != 2)
    {
      if (v67)
      {
LABEL_58:
        outlined consume of Data._Representation(v59, v64);
        outlined consume of Data._Representation(v68, v63);
        v79 = *(v28 + 48);
        outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(v16);
        v54(v97, v4);
        v54((v96 + v79), v4);
        return 0;
      }

LABEL_54:
      outlined consume of Data._Representation(v59, v64);
      v70 = v68;
      v71 = v63;
LABEL_55:
      outlined consume of Data._Representation(v70, v71);
      v78 = *(v28 + 48);
      outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(v16);
      v54(v97, v4);
      v54((v96 + v78), v4);
      goto LABEL_24;
    }

    v77 = *(v59 + 16);
    v76 = *(v59 + 24);
    v75 = __OFSUB__(v76, v77);
    v72 = v76 - v77;
    if (v75)
    {
      goto LABEL_61;
    }

LABEL_50:
    if (v67 != v72)
    {
      goto LABEL_58;
    }

    if (v67 < 1)
    {
      goto LABEL_54;
    }

    v38 = v64;
    outlined copy of Data._Representation(v59, v64);
    v39 = v68;
    v40 = v68;
    v41 = v54;
    v42 = v81;
    LODWORD(v91) = specialized Data.withUnsafeBytes<A>(_:)(v39, v63, v59, v38);
    v81 = v42;
    v43 = v38;
    v28 = v95;
    outlined consume of Data._Representation(v59, v43);
    v44 = v40;
    v4 = v88;
    outlined consume of Data._Representation(v44, v63);
    v45 = *(v28 + 48);
    outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(v16);
    v41(v97, v4);
    v41(v96 + v45, v4);
    if ((v91 & 1) == 0)
    {
      return 0;
    }

LABEL_24:
    v30 = v69 + 1;
    v37 = v89 + v82;
    v36 = v90 + v82;
    result = 1;
    if (v86 == v30)
    {
      return result;
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
  return result;
}

unint64_t lazy protocol witness table accessor for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration()
{
  result = lazy protocol witness table cache variable for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration;
  if (!lazy protocol witness table cache variable for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandshakeStateMachine.Configuration and conformance HandshakeStateMachine.Configuration);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeStateMachine.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeStateMachine.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of (P256.Signing.PublicKey, P256.Signing.PublicKey)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV_AGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 LegacySessionID.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = *(*(a3 + 8) + 8);
  if (dispatch thunk of Collection.count.getter() > 32)
  {
    __break(1u);
  }

  UnsafeMutableRawBufferPointer.copyBytes<A>(from:)();
  v8 = dispatch thunk of Collection.count.getter();
  (*(*(a2 - 8) + 8))(a1, a2);
  result = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static LegacySessionID.random()@<X0>(void *a1@<X8>)
{
  v7 = 0;
  MEMORY[0x1B274ED00](&v7, 8);
  v2 = v7;
  v7 = 0;
  MEMORY[0x1B274ED00](&v7, 8);
  v3 = v7;
  v7 = 0;
  MEMORY[0x1B274ED00](&v7, 8);
  v4 = v7;
  v7 = 0;
  result = MEMORY[0x1B274ED00](&v7, 8);
  v6 = v7;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 32;
  return result;
}

double static LegacySessionID.zero.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t LegacySessionID.hash(into:)()
{
  MEMORY[0x1B274DB20](v0[4]);
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  MEMORY[0x1B274DB60](*v0);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v3);
  return MEMORY[0x1B274DB60](v2);
}

Swift::Int LegacySessionID.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](v0[4]);
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  MEMORY[0x1B274DB60](*v0);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LegacySessionID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](v5);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LegacySessionID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x1B274DB20](v0[4]);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  return MEMORY[0x1B274DB60](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LegacySessionID()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](v5);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  return Hasher._finalize()();
}

uint64_t specialized Collection.prefix(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = specialized RandomAccessCollection<>.distance(from:to:)(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = outlined consume of Data._Representation(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  outlined copy of Data._Representation(*v2, v6);
  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v9 & 0x100) != 0 || (v10 = ByteBuffer.readSlice(length:)(v9), v11 >> 60 == 15))
  {
    result = outlined consume of Data._Representation(*v2, v2[1]);
    v14 = 0;
    *v2 = v7;
    v2[1] = v6;
    v15 = 0uLL;
    v16 = 1;
    v17 = 0uLL;
    v2[2] = v8;
LABEL_4:
    *a2 = v15;
    *(a2 + 16) = v17;
    *(a2 + 32) = v14;
    *(a2 + 40) = v16;
    return result;
  }

  v32 = v10;
  v33 = v11;
  v34 = v12;
  _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(&v32, v27, &v29);
  if (v3)
  {
    v19 = v27[0];
    v18 = v27[1];
    v20 = v28;
    v21 = v32;
    v22 = v33;
LABEL_18:
    outlined consume of Data._Representation(v21, v22);
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    *&v29 = v19;
    *(&v29 + 1) = v18;
    LOBYTE(v30) = v20;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    *a1 = v19;
    *(a1 + 8) = v18;
    *(a1 + 16) = v20;
    return result;
  }

  result = v32;
  v23 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v24 = *(v32 + 24);
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v23)
  {
    v24 = v32 >> 32;
  }

  else
  {
    v24 = BYTE6(v33);
  }

  if (!__OFSUB__(v24, v34))
  {
    if (v24 == v34)
    {
      outlined consume of Data._Representation(v32, v33);
      result = outlined consume of Data._Representation(v7, v6);
      v16 = 0;
      v15 = v29;
      v17 = v30;
      v14 = v31;
      goto LABEL_4;
    }

    v20 = 2;
    v25 = v32;
    v26 = v33;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v22 = v26;
    v21 = v25;
    v18 = 0;
    v19 = 1;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type LegacySessionID and conformance LegacySessionID()
{
  result = lazy protocol witness table cache variable for type LegacySessionID and conformance LegacySessionID;
  if (!lazy protocol witness table cache variable for type LegacySessionID and conformance LegacySessionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegacySessionID and conformance LegacySessionID);
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

uint64_t getEnumTagSinglePayload for LegacySessionID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LegacySessionID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t TLSRecordParser.numberOfBytesBuffered.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a1 >> 32;
  }

  else
  {
    v5 = BYTE6(a2);
  }

  result = v5 - a3;
  if (__OFSUB__(v5, a3))
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TLSRecordParser.clearBufferedBytes()()
{
  v1 = v0[2];
  outlined consume of ByteBuffer?(*v0, v0[1]);
  *v0 = xmmword_1B26C5EF0;
  v0[2] = 0;
}

Swift::Void __swiftcall TLSRecordParser.appendBytes(_:)(Swift::OpaquePointer a1)
{
  if (v1[1] >> 60 == 15)
  {

    v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v2);
    v5 = v4;

    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      v7 = 0;
      if (v6 == 2)
      {
        v7 = *(v3 + 16);
      }
    }

    else if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    v8 = v1[2];
    outlined consume of ByteBuffer?(*v1, v1[1]);
    *v1 = v3;
    v1[1] = v5;
    v1[2] = v7;
  }

  else if (*(a1._rawValue + 2))
  {

    Data._Representation.append(contentsOf:)();
  }
}

uint64_t _s15SwiftTLSLibrary15TLSRecordParserV20parsePlaintextRecordAA12TLSPlaintextVSgyAA8TLSErrorOYKF()
{
  result = _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKF(0);
  if (!v0)
  {
    if (v3 == -1)
    {
      return 0;
    }

    else if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = result;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1B25F5000, v8, v9, "unexpectedly parsed ciphertext when expecting plaintext", v10, 2u);
        MEMORY[0x1B274ECF0](v10, -1, -1);
      }

      outlined consume of TLSRecord?(v6, v5, v4);
      return 0;
    }

    else
    {
      return result & 0xFFFFFF;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKF(char a1)
{
  v3 = v2;
  v31 = 0;
  v4 = v1[1];
  if (v4 >> 60 == 15)
  {
LABEL_2:
    if (one-time initialization token for logger != -1)
    {
LABEL_36:
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v7, "less than 5 bytes to parse, need at least 5 for any valid record, waiting for more data", v8, 2u);
      MEMORY[0x1B274ECF0](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    while (1)
    {
      v12 = *v1;
      v13 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v14 = *(v12 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else if (v13)
      {
        v14 = v12 >> 32;
      }

      else
      {
        v14 = BYTE6(v4);
      }

      v15 = v1[2];
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 < 5)
      {
        goto LABEL_2;
      }

      outlined copy of Data._Representation(*v1, v4);
      _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKFAiA10ByteBufferVzAKYKXEfU_(v1, a1 & 1, v1, &v31, v26, &v28);
      if (v3)
      {
        outlined consume of Data._Representation(*v1, v1[1]);
        v9 = v26[0];
        v20 = v26[1];
        v21 = v27;
        *v1 = v12;
        v1[1] = v4;
        v1[2] = v15;
        v28 = v9;
        v29 = v20;
        v30 = v21;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        return v9;
      }

      v3 = 0;
      v9 = v28;
      v18 = v29;
      v19 = v30;
      if (v30 == 255)
      {
        outlined consume of Data._Representation(*v1, v1[1]);
        *v1 = v12;
        v1[1] = v4;
        v1[2] = v15;
      }

      else
      {
        outlined consume of Data._Representation(v12, v4);
      }

      if (v31 != 1)
      {
        break;
      }

      outlined consume of TLSRecord?(v9, v18, v19);
      v4 = v1[1];
      if (v4 >> 60 == 15)
      {
        goto LABEL_2;
      }
    }

    result = *v1;
    v22 = v1[1];
    v23 = v1[2];
    if (v22 >> 60 == 15)
    {
LABEL_34:
      outlined consume of ByteBuffer?(result, v22);
      *v1 = xmmword_1B26C6130;
      v1[2] = 0;
      return v9;
    }

    v24 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(result + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = result >> 32;
    }

    else
    {
      v25 = BYTE6(v22);
    }

    if (!__OFSUB__(v25, v23))
    {
      if (v25 != v23)
      {
        return v9;
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15TLSRecordParserV21parseCiphertextRecordAA13TLSCiphertextVSgyAA8TLSErrorOYKF()
{
  result = _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKF(1);
  if (!v0)
  {
    if (v3 == -1)
    {
      return 0;
    }

    else if ((v3 & 1) == 0)
    {
      v4 = v3;
      v5 = v2;
      v6 = result;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1B25F5000, v8, v9, "unexpectedly parsed plaintext when expecting ciphertext", v10, 2u);
        MEMORY[0x1B274ECF0](v10, -1, -1);
      }

      outlined consume of TLSRecord?(v6, v5, v4);
      return 0;
    }
  }

  return result;
}

void _s15SwiftTLSLibrary15TLSRecordParserV11parseRecord33_2D1A15A64B17F1752114F1197E9F989DLL23recordProtectionEnabledAA0C0OSgSb_tAA8TLSErrorOYKFAiA10ByteBufferVzAKYKXEfU_(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v108 = a2;
  v11 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v11 & 0x100) != 0 || (v12 = v11, v13 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5(), (v13 & 0x10000) != 0))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "failed to parse contentType and protocolVersion";
    goto LABEL_13;
  }

  v14 = v13;
  if (v12 == 23 && (v108 & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "record protection not enabled and received record with content type application data";
    goto LABEL_13;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v103 = a4;
  v104 = a6;
  v105 = a3;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v106 = v26;
    *v25 = 136315138;
    v27 = ProtocolVersion.description.getter(bswap32(v14) >> 16);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v106);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1B25F5000, v23, v24, "protocolVersion is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B274ECF0](v26, -1, -1);
    MEMORY[0x1B274ECF0](v25, -1, -1);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v106 = v33;
    *v32 = 136315138;
    v34 = ContentType.description.getter(v12);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v106);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1B25F5000, v30, v31, "content type is %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1B274ECF0](v33, -1, -1);
    MEMORY[0x1B274ECF0](v32, -1, -1);
  }

  v37 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v16 = Logger.logObject.getter();
  if ((v37 & 0x10000) != 0)
  {
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "unable to read content length";
LABEL_13:
    _os_log_impl(&dword_1B25F5000, v16, v17, v19, v18, 2u);
    MEMORY[0x1B274ECF0](v18, -1, -1);
LABEL_14:

    v21 = xmmword_1B26C88C0;
LABEL_15:
    *a5 = v21;
    *(a5 + 16) = 2;
    v106 = v21;
    v107 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return;
  }

  v38 = v37;
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 33554688;
    *(v40 + 4) = v37;
    _os_log_impl(&dword_1B25F5000, v16, v39, "content length is: %hu", v40, 6u);
    MEMORY[0x1B274ECF0](v40, -1, -1);
  }

  if ((v108 & 1) == 0)
  {
    if (v37 <= 0x4000u)
    {
      goto LABEL_41;
    }

    v41 = 0x4000;
LABEL_32:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v106 = v45;
      *v44 = 33555202;
      *(v44 + 4) = v38;
      *(v44 + 6) = 512;
      *(v44 + 8) = v41;
      *(v44 + 10) = 2080;
      if (v108)
      {
        v46 = 0x6574726568706963;
      }

      else
      {
        v46 = 0x7865746E69616C70;
      }

      if (v108)
      {
        v47 = 0xEA00000000007478;
      }

      else
      {
        v47 = 0xE900000000000074;
      }

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v106);

      *(v44 + 12) = v48;
      _os_log_impl(&dword_1B25F5000, v42, v43, "contentLength (%hu bytes) exceeds maximum length of %hu bytes for %s messages", v44, 0x14u);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B274ECF0](v45, -1, -1);
      MEMORY[0x1B274ECF0](v44, -1, -1);
    }

    v21 = xmmword_1B26C88E0;
    goto LABEL_15;
  }

  v41 = 16640;
  if (v37 > 0x4100u)
  {
    goto LABEL_32;
  }

LABEL_41:
  v49 = v37;
  v50 = ByteBuffer.readSlice(length:)(v49);
  if (v51 >> 60 == 15)
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1B25F5000, v53, v54, "unable to read full content, waiting for more data", v55, 2u);
      MEMORY[0x1B274ECF0](v55, -1, -1);
    }

    v56 = *a1;
    v57 = a1[1];
    v58 = a1[2];
    v59 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v59 == 2)
      {
        v60 = *(v56 + 24);
      }

      else
      {
        v60 = 0;
      }
    }

    else if (v59)
    {
      v60 = v56 >> 32;
    }

    else
    {
      v60 = BYTE6(v57);
    }

    v69 = __OFSUB__(v60, v58);
    v70 = v60 - v58;
    if (v69)
    {
      __break(1u);
    }

    else
    {
      v69 = __OFSUB__(v49, v70);
      v71 = v49 - v70;
      if (!v69)
      {
        *(v105 + 24) = v71;
        *v104 = 0;
        *(v104 + 8) = 0;
        *(v104 + 16) = -1;
        return;
      }
    }

    __break(1u);
    goto LABEL_112;
  }

  v61 = v51;
  *(v105 + 24) = 5;
  if (v12 == 20)
  {
    v62 = v50;
    v63 = v52;
    if (v37 == 1)
    {
      v64 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v64 == 2)
        {
          v65 = *(v50 + 24);
        }

        else
        {
          v65 = 0;
        }
      }

      else if (v64)
      {
        v65 = v50 >> 32;
      }

      else
      {
        v65 = BYTE6(v51);
      }

      if (v65 < v52)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v73 = Data._Representation.subscript.getter();
      v75 = v74;
      v76 = v61;
      v77 = specialized Collection.first.getter(v73, v74);
      outlined consume of Data._Representation(v73, v75);
      v78 = v77 & 0x1FF;
      v61 = v76;
      if (v78 == 1)
      {
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_1B25F5000, v79, v80, "got a change cipher spec message with value 0x01, ignoring", v81, 2u);
          MEMORY[0x1B274ECF0](v81, -1, -1);
        }

        *v103 = 1;
        if (v64 > 1)
        {
          if (v64 == 2)
          {
            v82 = *(v62 + 24);
          }

          else
          {
            v82 = 0;
          }
        }

        else if (v64)
        {
          v82 = v62 >> 32;
        }

        else
        {
          v82 = BYTE6(v76);
        }

        v66 = v104;
        if (v82 < v63)
        {
          goto LABEL_115;
        }

        v98 = Data._Representation.subscript.getter();
        v96 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v98, v99);
        outlined consume of ByteBuffer?(v62, v76);
        v97 = 197396;
        goto LABEL_106;
      }
    }

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v61;
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1B25F5000, v83, v84, "received unexpected change cipher spec message", v86, 2u);
      v87 = v86;
      v61 = v85;
      MEMORY[0x1B274ECF0](v87, -1, -1);
    }

    *a5 = xmmword_1B26C6430;
    *(a5 + 16) = 2;
    v106 = xmmword_1B26C6430;
    v107 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v88 = v62;
    v89 = v61;
LABEL_90:
    outlined consume of ByteBuffer?(v88, v89);
    return;
  }

  v66 = v104;
  *v103 = 0;
  v67 = v51 >> 62;
  if ((v108 & 1) == 0)
  {
    if (v67 > 1)
    {
      if (v67 == 2)
      {
        v72 = *(v50 + 24);
      }

      else
      {
        v72 = 0;
      }
    }

    else if (v67)
    {
      v72 = v50 >> 32;
    }

    else
    {
      v72 = BYTE6(v51);
    }

    if (v72 < v52)
    {
      goto LABEL_114;
    }

    v93 = v50;
    v94 = Data._Representation.subscript.getter();
    v96 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v94, v95);
    outlined consume of ByteBuffer?(v93, v61);
    v97 = v12 | 0x30300;
LABEL_106:
    *v66 = v97;
    *(v66 + 8) = v96;
    *(v66 + 16) = 0;
    return;
  }

  if (v67 > 1)
  {
    if (v67 == 2)
    {
      v68 = *(v50 + 24);
    }

    else
    {
      v68 = 0;
    }
  }

  else if (v67)
  {
    v68 = v50 >> 32;
  }

  else
  {
    v68 = BYTE6(v51);
  }

  v69 = __OFSUB__(v68, v52);
  v90 = v68 - v52;
  if (v69)
  {
    goto LABEL_113;
  }

  v91 = v50;
  if (v90 < 16)
  {
    *a5 = xmmword_1B26C88D0;
    *(a5 + 16) = 2;
    v106 = xmmword_1B26C88D0;
    v107 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v88 = v91;
    v89 = v61;
    goto LABEL_90;
  }

  if (v67 > 1)
  {
    if (v67 == 2)
    {
      v92 = *(v50 + 24);
    }

    else
    {
      v92 = 0;
    }
  }

  else if (v67)
  {
    v92 = v50 >> 32;
  }

  else
  {
    v92 = BYTE6(v51);
  }

  if (v92 >= v52)
  {
    v100 = Data._Representation.subscript.getter();
    v102 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v100, v101);
    outlined consume of ByteBuffer?(v91, v61);
    *v104 = v102;
    *(v104 + 8) = 0;
    *(v104 + 16) = 1;
    return;
  }

LABEL_116:
  __break(1u);
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B274D640](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t outlined consume of TLSRecord?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TLSRecord();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLSRecordParser(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TLSRecordParser(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV23readSignatureAlgorithms11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 != 13 && a1 != 1)
  {
    v10 = a1 | 0xD0000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_9;
  }

  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  outlined copy of Data._Representation(*v1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0 || (v7 = ByteBuffer.readSlice(length:)(v6), v8 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v10 = 0;
    goto LABEL_9;
  }

  v13 = v7;
  v14 = v9;
  v15 = v8 >> 62;
  v16 = BYTE6(v8);
  v17 = v7 >> 32;
  v31 = BYTE6(v8);
  if ((v8 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v7 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v7 >> 32;
  }

  v32 = v8;
  v28 = v5;
  v29 = v4;
  v30 = v3;
  v18 = __OFSUB__(v16, v9);
  v19 = v16 - v9;
  if (v18)
  {
    goto LABEL_44;
  }

  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v19 / 2) & ~((v19 + (v19 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v21 = v14 + 2;
  if (__OFADD__(v14, 2))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = v20;
  while (v15 > 1)
  {
    v22 = v32;
    if (v15 == 2)
    {
      v23 = *(v13 + 24);
      goto LABEL_25;
    }

    if (v21 >= 1)
    {
      v26 = 0;
      goto LABEL_38;
    }

LABEL_28:
    v33 = v22;
    if (v21 < v14)
    {
      goto LABEL_43;
    }

    outlined copy of Data._Representation(v13, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v13, v33);
    v25 = *(v10 + 16);
    v24 = *(v10 + 24);
    if (v25 >= v24 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v10);
    }

    *(v10 + 16) = v25 + 1;
    *(v10 + 2 * v25 + 32) = bswap32(0) >> 16;
    v14 = v21;
    v18 = __OFADD__(v21, 2);
    v21 += 2;
    if (v18)
    {
      goto LABEL_42;
    }
  }

  v23 = v31;
  v22 = v32;
  if (v15)
  {
    v23 = v17;
  }

LABEL_25:
  if (v23 >= v21)
  {
    goto LABEL_28;
  }

  v26 = v31;
  if (v15)
  {
    v26 = v17;
    if (v15 == 2)
    {
      v26 = *(v13 + 24);
    }
  }

LABEL_38:
  if (__OFSUB__(v26, v14))
  {
LABEL_45:
    __break(1u);
  }

  if (v26 == v14)
  {
    outlined consume of Data._Representation(v13, v22);
    outlined consume of Data._Representation(v29, v3);
  }

  else
  {
    v27 = v22;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v13, v27);
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v29;
    v1[1] = v30;
    v1[2] = v28;
    swift_willThrowTypedImpl();
    v10 = 1;
  }

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t lazy protocol witness table accessor for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms()
{
  result = lazy protocol witness table cache variable for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms;
  if (!lazy protocol witness table cache variable for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.SignatureAlgorithms and conformance Extension.SignatureAlgorithms);
  }

  return result;
}

uint64_t Random.init()()
{
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  v2 = 0;
  MEMORY[0x1B274ED00](&v2, 8);
  return v0;
}

uint64_t Random.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *(*(a3 + 8) + 8);
  if (dispatch thunk of Collection.count.getter() != 32)
  {
    __break(1u);
  }

  UnsafeMutableRawBufferPointer.copyBytes<A>(from:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void one-time initialization function for helloRetryRequest()
{
  if (qword_1F29DB490 == 32)
  {
    static Random.helloRetryRequest = xmmword_1F29DB4A0;
    *&qword_1ED4D5F90 = unk_1F29DB4B0;
  }

  else
  {
    __break(1u);
  }
}

void *Random.helloRetryRequest.unsafeMutableAddressor()
{
  if (one-time initialization token for helloRetryRequest != -1)
  {
    swift_once();
  }

  return &static Random.helloRetryRequest;
}

uint64_t static Random.helloRetryRequest.getter()
{
  if (one-time initialization token for helloRetryRequest != -1)
  {
    swift_once();
  }

  return static Random.helloRetryRequest;
}

uint64_t Random.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1B274DB60](a2);
  MEMORY[0x1B274DB60](a3);
  MEMORY[0x1B274DB60](a4);
  return MEMORY[0x1B274DB60](a5);
}

Swift::Int Random.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB60](a1);
  MEMORY[0x1B274DB60](a2);
  MEMORY[0x1B274DB60](a3);
  MEMORY[0x1B274DB60](a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Random()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Random()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1B274DB60](*v0);
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  return MEMORY[0x1B274DB60](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Random()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB60](v1);
  MEMORY[0x1B274DB60](v2);
  MEMORY[0x1B274DB60](v3);
  MEMORY[0x1B274DB60](v4);
  return Hasher._finalize()();
}

uint64_t ByteBuffer.writeRandom(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10[3] = MEMORY[0x1E69E6290];
  v10[4] = MEMORY[0x1E6969DF8];
  v10[0] = v9;
  v10[1] = v10;
  v4 = __swift_project_boxed_opaque_existential_0(v10, MEMORY[0x1E69E6290]);
  v6 = *v4;
  v5 = v4[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v10);
  v7 = *MEMORY[0x1E69E9840];
  return 32;
}

unint64_t lazy protocol witness table accessor for type Random and conformance Random()
{
  result = lazy protocol witness table cache variable for type Random and conformance Random;
  if (!lazy protocol witness table cache variable for type Random and conformance Random)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Random and conformance Random);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Random(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Random(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator()
{
  result = lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator;
  if (!lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator);
  }

  return result;
}

uint64_t outlined destroy of EnumeratedSequence<Data>.Iterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Extension.PreSharedKeyKexModes.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }
}

Swift::Int Extension.PreSharedKeyKexModes.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKeyKexModes()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKeyKexModes()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readPreSharedKeyKexModes11messageTypeAA9ExtensionO0fghiJ0VAA09HandshakeL0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v4 = *v1;
    v3 = v1[1];
    v5 = v1[2];
    outlined copy of Data._Representation(*v1, v3);
    v6 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAA9ExtensionO20PreSharedKeyKexModesV4ModeVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O20rstuv2V4w5VGAA8l73OIglozo_AcjLIeglrzo_TR04_s15a12TLSLibrary10cd7V24readfghi21Modes11messageK72AA9e30O0fghiJ0VAA09HandshakeL0V_tAA8l6OYKF0et9L_ySayAI4K6VGACzFTf3nnpf_nTf1nc_n();
    v7 = v6;
    if (v2 || !v6)
    {
      outlined consume of Data._Representation(*v1, v1[1]);
      *v1 = v4;
      v1[1] = v3;
      v1[2] = v5;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
    }

    else
    {
      outlined consume of Data._Representation(v4, v3);
    }
  }

  else
  {
    v7 = a1 | 0x2D0000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes.Mode and conformance Extension.PreSharedKeyKexModes.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKeyKexModes and conformance Extension.PreSharedKeyKexModes);
  }

  return result;
}

uint64_t Extension.PAKE.PAKEClientHello.serverIdentity.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  outlined copy of Data._Representation(v1, v2);
  return v1;
}

uint64_t Extension.PAKE.PAKEClientHello.serverIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = outlined consume of Data._Representation(v3[3], v3[4]);
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t Extension.PAKE.PAKEClientHello.init(clientIdentity:serverIdentity:clientShares:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t Extension.PAKE.PAKEServerHello.serverShare.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  outlined copy of Data._Representation(v1, v2);
  return v4;
}

uint64_t Extension.PAKE.PAKEServerHello.serverShare.setter(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of Data._Representation(*(v4 + 8), *(v4 + 16));
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return result;
}

uint64_t Extension.PAKE.PAKEServerHello.clientIdentity.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  outlined copy of Data?(v1, v2);
  return v1;
}

uint64_t Extension.PAKE.PAKEServerHello.clientIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  result = outlined consume of ByteBuffer?(v3[4], v3[5]);
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

uint64_t Extension.PAKE.PAKEServerHello.serverIdentity.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  outlined copy of Data?(v1, v2);
  return v1;
}

uint64_t Extension.PAKE.PAKEServerHello.serverIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[9];
  result = outlined consume of ByteBuffer?(v3[7], v3[8]);
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
  return result;
}

uint64_t Extension.PAKE.PAKEServerHello.init(serverShare:clientIdentity:serverIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t static Extension.PAKE.PAKEClientHello.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(a1[3], a1[4], a1[5], a2[3], a2[4], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[6];
  v5 = a2[6];

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v4, v5);
}

uint64_t Extension.PAKE.PAKEClientHello.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v3 >> 32;
  }

  else
  {
    v7 = BYTE6(v4);
  }

  if (v7 < result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = Data._Representation.subscript.getter();
  v10 = v9;
  Data.hash(into:)();
  outlined consume of Data._Representation(v8, v10);
  v11 = v1[3];
  v12 = v1[4];
  result = v1[5];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v11 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v11 >> 32;
  }

  else
  {
    v14 = BYTE6(v12);
  }

  if (v14 < result)
  {
    goto LABEL_21;
  }

  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  Data.hash(into:)();
  outlined consume of Data._Representation(v15, v17);
  v18 = v1[6];

  return specialized Array<A>.hash(into:)(a1, v18);
}

Swift::Int Extension.PAKE.PAKEClientHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEClientHello.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PAKE.PAKEClientHello()
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEClientHello.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PAKE.PAKEClientHello(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(v2, v3, v4, v6, v7, v8) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v5, v9);
}

void Extension.PAKE.PAKEServerHello.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher._combine(_:)(*v0);
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < v3)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = Data._Representation.subscript.getter();
  v8 = v7;
  Data.hash(into:)();
  outlined consume of Data._Representation(v6, v8);
  v9 = *(v0 + 40);
  if (v9 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
    goto LABEL_20;
  }

  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  Hasher._combine(_:)(1u);
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v10 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v9);
  }

  if (v13 < v11)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v14 = Data._Representation.subscript.getter();
  v16 = v15;
  Data.hash(into:)();
  outlined consume of Data._Representation(v14, v16);
LABEL_20:
  v17 = *(v0 + 64);
  if (v17 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
    return;
  }

  v18 = *(v0 + 56);
  v19 = *(v0 + 72);
  Hasher._combine(_:)(1u);
  v20 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v18 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v18 >> 32;
  }

  else
  {
    v21 = BYTE6(v17);
  }

  if (v21 < v19)
  {
    goto LABEL_35;
  }

  v22 = Data._Representation.subscript.getter();
  v24 = v23;
  Data.hash(into:)();

  outlined consume of Data._Representation(v22, v24);
}

Swift::Int Extension.PAKE.PAKEServerHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEServerHello.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PAKE.PAKEServerHello()
{
  Hasher.init(_seed:)();
  Extension.PAKE.PAKEServerHello.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PAKE.PAKEServerHello(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v8, v9);
}

BOOL static Extension.PAKE.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if ((*(a1 + 80) & 1) == 0)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      v13 = *(a2 + 32);
      v14 = *(a2 + 40);
      v15 = *(a2 + 48);
      v16 = *(a2 + 24);
      if (specialized static ByteBuffer.== infix(_:_:)(v3, v5, v4, *a2, *(a2 + 8), *(a2 + 16)) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v7, v6, v9, v16, v13, v14) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v8, v15))
      {
        return 1;
      }
    }

    return 0;
  }

  v19[0] = v3;
  v19[1] = v5;
  v19[2] = v4;
  v19[3] = v7;
  v19[4] = v6;
  v19[5] = v9;
  v19[6] = v8;
  v20 = *(a1 + 56);
  v21 = *(a1 + 72);
  if ((*(a2 + 80) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v10;
  v18[4] = *(a2 + 64);
  v11 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v11;
  return specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v19, v18);
}

void Extension.PAKE.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  if (*(v1 + 80))
  {
    v10 = *(v1 + 64);
    v11 = *(v1 + 72);
    v38 = v11;
    v39 = *(v1 + 56);
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v3);
    v12 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v13 = *(v4 + 24);
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v12)
    {
      v13 = v4 >> 32;
    }

    else
    {
      v13 = BYTE6(v6);
    }

    if (v13 >= v5)
    {
      v21 = Data._Representation.subscript.getter();
      v23 = v22;
      Data.hash(into:)();
      outlined consume of Data._Representation(v21, v23);
      if (v8 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
        goto LABEL_39;
      }

      Hasher._combine(_:)(1u);
      v24 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v25 = *(v7 + 24);
        }

        else
        {
          v25 = 0;
        }
      }

      else if (v24)
      {
        v25 = v7 >> 32;
      }

      else
      {
        v25 = BYTE6(v8);
      }

      if (v25 >= v9)
      {
        v29 = Data._Representation.subscript.getter();
        v31 = v30;
        Data.hash(into:)();
        outlined consume of Data._Representation(v29, v31);
LABEL_39:
        if (v10 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
          return;
        }

        Hasher._combine(_:)(1u);
        v32 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          v33 = v38;
          if (v32 == 2)
          {
            v34 = *(v39 + 24);
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          v33 = v38;
          if (v32)
          {
            v34 = v39 >> 32;
          }

          else
          {
            v34 = BYTE6(v10);
          }
        }

        if (v34 >= v33)
        {
          v35 = Data._Representation.subscript.getter();
          v37 = v36;
          Data.hash(into:)();

          outlined consume of Data._Representation(v35, v37);
          return;
        }

LABEL_56:
        __break(1u);
        return;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  MEMORY[0x1B274DB20](0);
  v14 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v15 = 0;
    if (v14 == 2)
    {
      v15 = *(v3 + 24);
    }
  }

  else if (v14)
  {
    v15 = v3 >> 32;
  }

  else
  {
    v15 = BYTE6(v4);
  }

  if (v15 < v6)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  Data.hash(into:)();
  outlined consume of Data._Representation(v16, v18);
  v19 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v5 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else if (v19)
  {
    v20 = v5 >> 32;
  }

  else
  {
    v20 = BYTE6(v7);
  }

  if (v20 < v8)
  {
    goto LABEL_54;
  }

  v26 = Data._Representation.subscript.getter();
  v28 = v27;
  Data.hash(into:)();
  outlined consume of Data._Representation(v26, v28);

  specialized Array<A>.hash(into:)(a1, v9);
}

Swift::Int Extension.PAKE.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.PAKE.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PAKE()
{
  Hasher.init(_seed:)();
  Extension.PAKE.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PAKE(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 80);
  if ((*(a1 + 80) & 1) == 0)
  {
    return (*(a2 + 80) & 1) == 0 && (specialized static ByteBuffer.== infix(_:_:)(*a1, v2, v4, v9, v10, v11) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v5, v7, v6, v12, v14, v13) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v8, v15) & 1) != 0;
  }

  v19[0] = *a1;
  v19[1] = v2;
  v19[2] = v4;
  v19[3] = v5;
  v19[4] = v7;
  v19[5] = v6;
  v19[6] = v8;
  v20 = *(a1 + 56);
  v21 = *(a1 + 72);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  v22[4] = v14;
  v22[5] = v13;
  v22[6] = v15;
  v23 = *(a2 + 56);
  v24 = *(a2 + 72);
  return specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v19, v22);
}

unint64_t ByteBuffer.writePAKE(_:)(unsigned __int16 *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  *(&v26 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v27 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if (v3)
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    if (a1[40])
    {
      result = ByteBuffer.writePAKEShareRFC(_:)(*a1, v4, v5, v6);
    }

    else
    {
      LOWORD(v25) = *a1;
      *(&v25 + 2) = *(a1 + 1);
      WORD3(v25) = a1[3];
      *(&v25 + 1) = v4;
      *&v26 = v5;
      *(&v26 + 1) = v6;
      v27 = *(a1 + 2);
      *&v28 = *(a1 + 6);
      result = ByteBuffer.writePAKEClientHelloRFC(_:)(&v25);
    }
  }

  else
  {
    if ((a1[40] & 1) == 0)
    {
      v10 = *(a1 + 1);
      v25 = *a1;
      v26 = v10;
      v27 = *(a1 + 2);
      *&v28 = *(a1 + 6);
      v11 = *v1;
      v12 = v1[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v16 = *(v11 + 24);
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v14 = BYTE6(v12);
        v15 = v11 >> 32;
        if (v13)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }
      }

      v23 = 0;
      v24[3] = MEMORY[0x1E69E6290];
      v24[4] = MEMORY[0x1E6969DF8];
      v24[0] = &v23;
      v24[1] = v24;
      v17 = __swift_project_boxed_opaque_existential_0(v24, MEMORY[0x1E69E6290]);
      v19 = *v17;
      v18 = v17[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(v24);
      v20 = v28;
      outlined init with copy of Extension.PAKE.PAKEClientHello(&v25, v24);
      v21 = specialized Sequence.reduce<A>(into:_:)(0, v20, v1, &v25);
      outlined destroy of Extension.PAKE(a1);
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v21 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v21, v16);
        result = v21 + 2;
        goto LABEL_17;
      }

      __break(1u);
    }

    v8 = *(a1 + 3);
    v27 = *(a1 + 2);
    v28 = v8;
    v29 = *(a1 + 4);
    v9 = *(a1 + 1);
    v25 = *a1;
    v26 = v9;
    result = ByteBuffer.writePAKEServerHelloNonRFC(_:)(&v25);
  }

LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ByteBuffer.writePAKERFC(_:)(unsigned __int16 *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  if (a1[40])
  {
    v4 = *a1;

    return ByteBuffer.writePAKEShareRFC(_:)(v4, v1, v2, v3);
  }

  else
  {
    v6[0] = *a1;
    v6[1] = v1;
    v6[2] = v2;
    v6[3] = v3;
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    return ByteBuffer.writePAKEClientHelloRFC(_:)(v6);
  }
}

uint64_t ByteBuffer.writePAKENonRFC(_:)(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 80) & 1) == 0)
  {
    v5 = *(a1 + 16);
    v21 = *a1;
    v22 = v5;
    v23 = *(a1 + 32);
    *&v24 = *(a1 + 48);
    v6 = *v1;
    v7 = v1[1];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v12 = *(v6 + 24);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v10 = BYTE6(v7);
      v11 = v6 >> 32;
      if (v8)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }
    }

    v19 = 0;
    v20[3] = MEMORY[0x1E69E6290];
    v20[4] = MEMORY[0x1E6969DF8];
    v20[0] = &v19;
    v20[1] = v20;
    v13 = __swift_project_boxed_opaque_existential_0(v20, MEMORY[0x1E69E6290]);
    v15 = *v13;
    v14 = v13[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(v20);
    v16 = v24;
    outlined init with copy of Extension.PAKE.PAKEClientHello(&v21, v20);
    v17 = specialized Sequence.reduce<A>(into:_:)(0, v16, v1, &v21);
    outlined destroy of Extension.PAKE(a1);
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v17 >> 16))
    {
      _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v17, v12);
      result = v17 + 2;
      goto LABEL_13;
    }

    __break(1u);
  }

  v2 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v2;
  v25 = *(a1 + 64);
  v3 = *(a1 + 16);
  v21 = *a1;
  v22 = v3;
  result = ByteBuffer.writePAKEServerHelloNonRFC(_:)(&v21);
LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

double _s15SwiftTLSLibrary10ByteBufferV8readPAKE11messageType17helloRetryRequestAA9ExtensionO0F0OAA09HandshakeH0V_SbtAA8TLSErrorOYKF@<D0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[3] = &type metadata for SwiftTLSFeatureFlags;
  v21[4] = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v9 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if ((v9 & 1) == 0)
  {
    v10 = v23;
    _s15SwiftTLSLibrary10ByteBufferV14readPAKENonRFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeI0V_SbtAA8TLSErrorOYKF(a1, a2 & 1, &v19, v23);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = v20;
    *&v11 = v19;
    *a3 = v19;
    *(a3 + 16) = v17;
    return *&v11;
  }

  v10 = v22;
  _s15SwiftTLSLibrary10ByteBufferV11readPAKERFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeH0V_SbtAA8TLSErrorOYKF(a1, a2 & 1, &v19, v22);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = *(v10 + 2);
  v12 = *(v10 + 3);
  v26 = v11;
  v27 = v12;
  v28 = *(v10 + 4);
  v13 = v28;
  v29 = v10[80];
  v14 = v29;
  v16 = *(v10 + 1);
  v24 = *v10;
  v15 = v24;
  v25 = v16;
  *(a4 + 32) = v11;
  *(a4 + 48) = v12;
  *(a4 + 64) = v13;
  *(a4 + 80) = v14;
  *a4 = v15;
  *(a4 + 16) = v16;
  return *&v11;
}

double _s15SwiftTLSLibrary10ByteBufferV11readPAKERFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeH0V_SbtAA8TLSErrorOYKF@<D0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B25F5000, v8, v9, "PAKE extension not supported for hello retry requests", v10, 2u);
      MEMORY[0x1B274ECF0](v10, -1, -1);
    }

    v11 = a1 | 0x8A3B0000;
    v33 = v11;
    LOBYTE(v34) = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
LABEL_18:
    swift_willThrowTypedImpl();
    v19 = 0;
    v20 = 0;
    goto LABEL_19;
  }

  if (a1 == 2)
  {
    v12 = a4;
    _s15SwiftTLSLibrary10ByteBufferV22readPAKEServerHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(v29, v37);
    if (!v4)
    {
      v15 = v37[0];
      v16 = v37[1];
      v17 = v37[2];
      v18 = v38;
      v33 = v39;
      v34 = v40;
      v14 = 1;
      LOBYTE(v31[0]) = 1;
      goto LABEL_21;
    }

LABEL_12:
    v11 = v29[0];
    v19 = v29[1];
    v20 = v30;
LABEL_19:
    *a3 = v11;
    *(a3 + 8) = v19;
    *(a3 + 16) = v20;
    return result;
  }

  if (a1 != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136315138;
      v26 = HandshakeType.description.getter(a1);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1B25F5000, v22, v23, "PAKE extension not supported in message type %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B274ECF0](v25, -1, -1);
      MEMORY[0x1B274ECF0](v24, -1, -1);
    }

    v11 = a1 | 0x8A3B0000;
    v31[0] = v11;
    v31[1] = 0;
    v32 = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    goto LABEL_18;
  }

  v12 = a4;
  _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(v29, v35);
  if (v4)
  {
    goto LABEL_12;
  }

  v14 = 0;
  v15 = v35[0];
  v16 = v35[1];
  v17 = v35[2];
  v18 = v36;
  LOBYTE(v31[0]) = 0;
LABEL_21:
  *v12 = v15;
  *(v12 + 16) = v16;
  *(v12 + 32) = v17;
  *(v12 + 48) = v18;
  result = *&v33;
  *(v12 + 56) = v33;
  *(v12 + 72) = v34;
  *(v12 + 80) = v14;
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV14readPAKENonRFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeI0V_SbtAA8TLSErrorOYKF@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B25F5000, v9, v10, "PAKE extension not supported for hello retry requests", v11, 2u);
      MEMORY[0x1B274ECF0](v11, -1, -1);
    }

LABEL_19:
    v22 = a1 | 0x8A3B0000;
    v44 = v22;
    LOBYTE(v45) = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v23 = 0;
    v20 = 0;
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    v12 = a4;
    result = _s15SwiftTLSLibrary10ByteBufferV25readPAKEServerHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF(&v51, v56);
    if (v5)
    {
      v22 = v51;
      v23 = v52;
      v20 = v53;
      goto LABEL_20;
    }

    v32 = v56[0];
    v33 = v56[1];
    v34 = v56[2];
    v35 = v57;
    v54 = v58;
    v55 = v59;
    v36 = 1;
    LOBYTE(v44) = 1;
LABEL_22:
    *v12 = v32;
    *(v12 + 16) = v33;
    *(v12 + 32) = v34;
    *(v12 + 48) = v35;
    *(v12 + 56) = v54;
    *(v12 + 72) = v55;
    *(v12 + 80) = v36;
    return result;
  }

  if (a1 != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v44 = v28;
      *v27 = 136315138;
      v29 = HandshakeType.description.getter(a1);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v44);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1B25F5000, v25, v26, "PAKE extension not supported in message type %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B274ECF0](v28, -1, -1);
      MEMORY[0x1B274ECF0](v27, -1, -1);
    }

    goto LABEL_19;
  }

  v12 = a4;
  v14 = *v4;
  v13 = v4[1];
  v15 = v4[2];
  outlined copy of Data._Representation(*v4, v13);
  v16 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v16 & 0x10000) != 0 || (v17 = ByteBuffer.readSlice(length:)(v16), v18 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v4[2] = v15;
    v44 = 0uLL;
    v20 = 2;
    LOBYTE(v45) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v22 = 0;
    v23 = 0;
LABEL_20:
    *a3 = v22;
    *(a3 + 8) = v23;
    *(a3 + 16) = v20;
    return result;
  }

  v48 = v17;
  v49 = v18;
  v50 = v19;
  _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFAjCzALYKXEfU_(&v48, &v51, &v44);
  if (v5)
  {
    v22 = v51;
    v23 = v52;
    v20 = v53;
    v37 = v48;
    v38 = v49;
LABEL_36:
    outlined consume of Data._Representation(v37, v38);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v4[2] = v15;
    *&v44 = v22;
    *(&v44 + 1) = v23;
    LOBYTE(v45) = v20;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    goto LABEL_20;
  }

  result = v48;
  v39 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    if (v39 == 2)
    {
      v40 = *(v48 + 24);
    }

    else
    {
      v40 = 0;
    }
  }

  else if (v39)
  {
    v40 = v48 >> 32;
  }

  else
  {
    v40 = BYTE6(v49);
  }

  if (!__OFSUB__(v40, v50))
  {
    if (v40 != v50)
    {
      v20 = 2;
      v60 = v48;
      v43 = v49;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v41 = *(&v45 + 1);
      v42 = v46;
      outlined consume of Data._Representation(v44, *(&v44 + 1));
      outlined consume of Data._Representation(v41, v42);

      v38 = v43;
      v37 = v60;
      v23 = 0;
      v22 = 1;
      goto LABEL_36;
    }

    outlined consume of Data._Representation(v48, v49);
    result = outlined consume of Data._Representation(v14, v13);
    v36 = 0;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.writePAKEClientHelloRFC(_:)(uint64_t *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v8 = 0;
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v56 = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v59 = MEMORY[0x1E69E6290];
  v60 = MEMORY[0x1E6969DF8];
  v57 = &v56;
  v58 = &v57;
  v11 = __swift_project_boxed_opaque_existential_0(&v57, MEMORY[0x1E69E6290]);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v57);
  v14 = *a1;
  v15 = a1[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v15);
    }

    if (v16)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v17 < a1[2] || v17 < v18)
  {
    __break(1u);
    goto LABEL_72;
  }

  v19 = Data._Representation.subscript.getter();
  v21 = v20;
  Data.append(_:)();
  v22 = v21;
  v23 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v23)
    {
      outlined consume of Data._Representation(v19, v21);
      v19 = BYTE6(v21);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v23 != 2)
  {
    goto LABEL_31;
  }

  v25 = *(v19 + 16);
  v24 = *(v19 + 24);
  outlined consume of Data._Representation(v19, v22);
  v19 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_26:
    outlined consume of Data._Representation(v19, v22);
    if (__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

    v19 = HIDWORD(v19) - v19;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!(v19 >> 16))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  outlined consume of Data._Representation(v19, v22);
  v19 = 0;
LABEL_32:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v19, v8);
  v26 = *v1;
  v27 = v1[1];
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v29 = *(v26 + 24);
    }

    else
    {
      v29 = 0;
    }
  }

  else if (v28)
  {
    v29 = v26 >> 32;
  }

  else
  {
    v29 = BYTE6(v27);
  }

  v56 = 0;
  v59 = v9;
  v60 = v10;
  v57 = &v56;
  v58 = &v57;
  v30 = __swift_project_boxed_opaque_existential_0(&v57, v9);
  v32 = *v30;
  v31 = v30[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v57);
  v33 = a1[3];
  v34 = a1[4];
  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 == 2)
    {
      v36 = *(v33 + 16);
      v37 = *(v33 + 24);
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }
  }

  else if (v35)
  {
    v36 = v33;
    v37 = v33 >> 32;
  }

  else
  {
    v36 = 0;
    v37 = BYTE6(v34);
  }

  if (v37 < a1[5] || v37 < v36)
  {
    goto LABEL_73;
  }

  v38 = Data._Representation.subscript.getter();
  v40 = v39;
  Data.append(_:)();
  v41 = v40;
  v42 = v40 >> 62;
  if ((v40 >> 62) <= 1)
  {
    if (!v42)
    {
      outlined consume of Data._Representation(v38, v40);
      v38 = BYTE6(v40);
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  if (v42 != 2)
  {
    goto LABEL_60;
  }

  v44 = *(v38 + 16);
  v43 = *(v38 + 24);
  outlined consume of Data._Representation(v38, v41);
  v38 = v43 - v44;
  if (__OFSUB__(v43, v44))
  {
    __break(1u);
LABEL_55:
    outlined consume of Data._Representation(v38, v41);
    if (__OFSUB__(HIDWORD(v38), v38))
    {
      goto LABEL_78;
    }

    v38 = HIDWORD(v38) - v38;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!(v38 >> 16))
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_60:
  outlined consume of Data._Representation(v38, v41);
  v38 = 0;
LABEL_61:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v38, v29);
  v45 = *v1;
  v46 = v1[1];
  v47 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v47 == 2)
    {
      v48 = *(v45 + 24);
    }

    else
    {
      v48 = 0;
    }
  }

  else if (v47)
  {
    v48 = v45 >> 32;
  }

  else
  {
    v48 = BYTE6(v46);
  }

  v56 = 0;
  v59 = v9;
  v60 = v10;
  v57 = &v56;
  v58 = &v57;
  v49 = __swift_project_boxed_opaque_existential_0(&v57, v9);
  v51 = *v49;
  v50 = v49[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v57);
  v52 = specialized Sequence.reduce<A>(into:_:)(0, a1[6]);
  if ((v52 & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  v53 = v52;
  if (v52 >> 16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v52, v48);
  v54 = *MEMORY[0x1E69E9840];
  return v19 + v38 + v53 + 6;
}

unint64_t ByteBuffer.writePAKEShareRFC(_:)(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = bswap32(a1) >> 16;
  v8 = MEMORY[0x1E69E6290];
  v9 = MEMORY[0x1E6969DF8];
  v37 = MEMORY[0x1E69E6290];
  v38 = MEMORY[0x1E6969DF8];
  v35 = &v34;
  v36 = &v35;
  v10 = __swift_project_boxed_opaque_existential_0(&v35, MEMORY[0x1E69E6290]);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v35);
  v13 = *v4;
  v14 = v4[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v18 = *(v13 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v16 = BYTE6(v14);
    v17 = v13 >> 32;
    if (v15)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }
  }

  v34 = 0;
  v37 = v8;
  v38 = v9;
  v35 = &v34;
  v36 = &v35;
  v19 = __swift_project_boxed_opaque_existential_0(&v35, v8);
  v21 = *v19;
  v20 = v19[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v35);
  v22 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a2 + 16);
      v24 = *(a2 + 24);
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = a2;
    v24 = a2 >> 32;
  }

  else
  {
    v23 = 0;
    v24 = BYTE6(a3);
  }

  if (v24 < a4 || v24 < v23)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v25 = Data._Representation.subscript.getter();
  v27 = v26;
  Data.append(_:)();
  v28 = v27;
  v29 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v29 != 2)
    {
      goto LABEL_29;
    }

    v31 = *(v25 + 16);
    v30 = *(v25 + 24);
    outlined consume of Data._Representation(v25, v28);
    v25 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
LABEL_26:
      if ((v25 & 0x8000000000000000) == 0)
      {
        if (!(v25 >> 16))
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_29:
        outlined consume of Data._Representation(v25, v28);
        v25 = 0;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_24:
    outlined consume of Data._Representation(v25, v28);
    if (__OFSUB__(HIDWORD(v25), v25))
    {
      goto LABEL_33;
    }

    v25 = HIDWORD(v25) - v25;
    goto LABEL_26;
  }

  if (v29)
  {
    goto LABEL_24;
  }

  outlined consume of Data._Representation(v25, v27);
  v25 = BYTE6(v27);
LABEL_30:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v25, v18);
  v32 = *MEMORY[0x1E69E9840];
  return v25 + 4;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2;
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  outlined copy of Data._Representation(*v2, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v10 & 0x10000) != 0 || (v11 = ByteBuffer.readSlice(length:)(v10), v12 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
    v61 = 0uLL;
    v14 = 2;
    LOBYTE(v62) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
LABEL_4:
    v16 = 0;
    v17 = 0;
LABEL_5:
    *a1 = v16;
    *(a1 + 8) = v17;
    *(a1 + 16) = v14;
    return result;
  }

  *&v61 = v11;
  *(&v61 + 1) = v12;
  v62 = v13;
  v18 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v11 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v11 >> 32;
  }

  else
  {
    v19 = BYTE6(v12);
  }

  result = v19 - v13;
  if (__OFSUB__(v19, v13))
  {
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

  result = ByteBuffer.readSlice(length:)(result);
  if (v20 >> 60 == 15)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v22 = *(&v61 + 1) >> 62;
  if ((*(&v61 + 1) >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v61 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v61 >> 32;
  }

  else
  {
    v23 = BYTE14(v61);
  }

  if (__OFSUB__(v23, v62))
  {
    goto LABEL_66;
  }

  v54 = result;
  v55 = v20;
  v56 = v21;
  if (v23 != v62)
  {
    v59 = xmmword_1B26C66C0;
    v14 = 2;
    v60 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v54, v55);
    outlined consume of Data._Representation(v61, *(&v61 + 1));
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
    v61 = xmmword_1B26C66C0;
    LOBYTE(v62) = 2;
    result = swift_willThrowTypedImpl();
LABEL_28:
    v17 = 0;
    v16 = 1;
    goto LABEL_5;
  }

  outlined consume of Data._Representation(v61, *(&v61 + 1));
  outlined consume of Data._Representation(v8, v7);
  v24 = *v2;
  v25 = v2[1];
  v26 = v2[2];
  outlined copy of Data._Representation(*v2, v25);
  v27 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v27 & 0x10000) != 0 || (v28 = ByteBuffer.readSlice(length:)(v27), v29 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v24;
    v2[1] = v25;
    v2[2] = v26;
    v61 = 0uLL;
    v14 = 2;
    LOBYTE(v62) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = outlined consume of ByteBuffer?(v54, v55);
    goto LABEL_4;
  }

  *&v61 = v28;
  *(&v61 + 1) = v29;
  v62 = v30;
  v31 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v32 = *(v28 + 24);
    }

    else
    {
      v32 = 0;
    }
  }

  else if (v31)
  {
    v32 = v28 >> 32;
  }

  else
  {
    v32 = BYTE6(v29);
  }

  result = v32 - v30;
  if (__OFSUB__(v32, v30))
  {
    goto LABEL_67;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v33 >> 60 == 15)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  v35 = v34;
  v36 = *(&v61 + 1) >> 62;
  if ((*(&v61 + 1) >> 62) > 1)
  {
    if (v36 == 2)
    {
      v37 = *(v61 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else if (v36)
  {
    v37 = v61 >> 32;
  }

  else
  {
    v37 = BYTE14(v61);
  }

  if (__OFSUB__(v37, v62))
  {
    goto LABEL_68;
  }

  v52 = result;
  v53 = v33;
  if (v37 != v62)
  {
    v59 = xmmword_1B26C66C0;
    v14 = 2;
    v60 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v52, v53);
    outlined consume of Data._Representation(v61, *(&v61 + 1));
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v24;
    v2[1] = v25;
    v2[2] = v26;
    v61 = xmmword_1B26C66C0;
    LOBYTE(v62) = 2;
    swift_willThrowTypedImpl();
    result = outlined consume of ByteBuffer?(v54, v55);
    goto LABEL_28;
  }

  outlined consume of Data._Representation(v61, *(&v61 + 1));
  outlined consume of Data._Representation(v24, v25);
  v39 = *v2;
  v38 = v2[1];
  v40 = v2[2];
  outlined copy of Data._Representation(*v2, v38);
  v41 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v41 & 0x10000) != 0 || (v42 = ByteBuffer.readSlice(length:)(v41), v43 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v39;
    v2[1] = v38;
    v2[2] = v40;
    v61 = 0uLL;
    v14 = 2;
    LOBYTE(v62) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v54, v55);
    result = outlined consume of ByteBuffer?(v52, v53);
    goto LABEL_4;
  }

  *&v61 = v42;
  *(&v61 + 1) = v43;
  v62 = v44;
  _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFSayAH9PAKEShareVGACzALYKXEfU1_(&v61, v57, &v63);
  if (v3)
  {
    v16 = v57[0];
    v17 = v57[1];
    v14 = v58;
    v46 = *(&v61 + 1);
    v45 = v61;
LABEL_64:
    outlined consume of Data._Representation(v45, v46);
    outlined consume of Data._Representation(*v5, v5[1]);
    *v5 = v39;
    v5[1] = v38;
    v5[2] = v40;
    *&v61 = v16;
    *(&v61 + 1) = v17;
    LOBYTE(v62) = v14;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v52, v53);
    result = outlined consume of ByteBuffer?(v54, v55);
    goto LABEL_5;
  }

  result = v61;
  v47 = *(&v61 + 1) >> 62;
  if ((*(&v61 + 1) >> 62) > 1)
  {
    if (v47 == 2)
    {
      v48 = *(v61 + 24);
    }

    else
    {
      v48 = 0;
    }
  }

  else if (v47)
  {
    v48 = v61 >> 32;
  }

  else
  {
    v48 = BYTE14(v61);
  }

  if (__OFSUB__(v48, v62))
  {
    goto LABEL_69;
  }

  if (v48 != v62)
  {
    v59 = xmmword_1B26C66C0;
    v14 = 2;
    v60 = 2;
    v51 = *(&v61 + 1);
    v50 = v61;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v46 = v51;
    v45 = v50;
    v17 = 0;
    v16 = 1;
    goto LABEL_64;
  }

  outlined consume of Data._Representation(v61, *(&v61 + 1));
  result = outlined consume of Data._Representation(v39, v38);
  v49 = v63;
  *a2 = v54;
  a2[1] = v55;
  a2[2] = v56;
  a2[3] = v52;
  a2[4] = v53;
  a2[5] = v35;
  a2[6] = v49;
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV22readPAKEServerHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v24 = v6;
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  outlined copy of Data._Representation(*v2, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v10 & 0x10000) != 0 || (v11 = ByteBuffer.readSlice(length:)(v10), v12 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
LABEL_5:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v15 = 0;
LABEL_6:
    *a1 = v15;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    return result;
  }

  v25 = v11;
  v26 = v12;
  v27 = v13;
  v16 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v11 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v11 >> 32;
  }

  else
  {
    v17 = BYTE6(v12);
  }

  result = v17 - v13;
  if (__OFSUB__(v17, v13))
  {
    __break(1u);
    goto LABEL_28;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v18 >> 60 == 15)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v20 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v25 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v25 >> 32;
  }

  else
  {
    v21 = BYTE6(v26);
  }

  if (__OFSUB__(v21, v27))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = result;
  v23 = v18;
  v28 = v19;
  if (v21 != v27)
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v22, v23);
    outlined consume of Data._Representation(v25, v26);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v8;
    v4[1] = v7;
    v4[2] = v9;
    result = swift_willThrowTypedImpl();
    v15 = 1;
    goto LABEL_6;
  }

  outlined consume of Data._Representation(v25, v26);
  result = outlined consume of Data._Representation(v8, v7);
  *a2 = v24;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v28;
  *(a2 + 32) = xmmword_1B26C5EF0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = xmmword_1B26C8CA0;
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV22readPAKEClientHelloRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFSayAH9PAKEShareVGACzALYKXEfU1_@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  v61 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = BYTE6(v4);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  v11 = v10 - v6;
  if (__OFSUB__(v10, v6))
  {
    goto LABEL_102;
  }

  if (v11 >= 0)
  {
    v12 = v10 - v6;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v14 = v3[1];
  v54 = *v3;
  v15 = v6 + 2;
  if (__OFADD__(v6, 2))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
  }

  v16 = result;
  v17 = v14 >> 62;
  v55 = BYTE6(v14);
  v56 = v14 >> 62;
  v57 = v3;
  while (1)
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (*(v54 + 24) < v15)
        {
          goto LABEL_85;
        }
      }

      else if (v15 > 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v18 = v55;
      if (v17)
      {
        v18 = v54 >> 32;
      }

      if (v18 < v15)
      {
LABEL_85:
        *a3 = v16;
        goto LABEL_89;
      }
    }

    v59 = *v3;
    v60 = v3[1];
    if (v15 < v6)
    {
      goto LABEL_91;
    }

    v58 = v16;
    outlined copy of Data._Representation(*v3, v3[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v59, v60);
    v3[2] = v15;
    v19 = *v3;
    v20 = v3[1];
    v21 = v15 + 2;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_92;
    }

    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      break;
    }

    if (v22)
    {
      v23 = v19 >> 32;
    }

    else
    {
      v23 = BYTE6(v20);
    }

LABEL_31:
    if (v23 < v21)
    {
      goto LABEL_86;
    }

LABEL_34:
    if (v21 < v15)
    {
      goto LABEL_93;
    }

    outlined copy of Data._Representation(v19, v20);
    outlined copy of Data._Representation(v19, v20);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v19, v20);
    v24 = bswap32(0) >> 16;
    v3[2] = v21;
    v6 = v21 + v24;
    if (__OFADD__(v21, v24))
    {
      goto LABEL_94;
    }

    v25 = *v3;
    v26 = v3[1];
    v27 = v26 >> 62;
    if ((v26 >> 62) <= 1)
    {
      if (v27)
      {
        v28 = v25 >> 32;
      }

      else
      {
        v28 = BYTE6(v26);
      }

LABEL_42:
      if (v28 < v6)
      {
        goto LABEL_87;
      }

      goto LABEL_45;
    }

    if (v27 == 2)
    {
      v28 = *(v25 + 24);
      goto LABEL_42;
    }

    if (v6 > 0)
    {
      goto LABEL_87;
    }

LABEL_45:
    if (v6 < v21)
    {
      goto LABEL_95;
    }

    v29 = Data._Representation.subscript.getter();
    v31 = v29;
    v32 = v30;
    v3[2] = v6;
    v33 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v29 = *(v29 + 16);
        v34 = *(v31 + 24);
      }

      else
      {
        v29 = 0;
        v34 = 0;
      }
    }

    else if (v33)
    {
      v29 = v29;
      v34 = v31 >> 32;
    }

    else
    {
      v29 = 0;
      v34 = BYTE6(v30);
    }

    v35 = __OFSUB__(v34, v29);
    v36 = v34 - v29;
    if (v35)
    {
      goto LABEL_96;
    }

    v37 = v29 + v36;
    if (__OFADD__(v29, v36))
    {
      goto LABEL_97;
    }

    if (v33 <= 1)
    {
      if (v33)
      {
        v38 = v31 >> 32;
      }

      else
      {
        v38 = BYTE6(v30);
      }

LABEL_61:
      if (v38 < v37)
      {
        goto LABEL_100;
      }

      goto LABEL_64;
    }

    if (v33 == 2)
    {
      v38 = *(v31 + 24);
      goto LABEL_61;
    }

    if (v37 > 0)
    {
      goto LABEL_101;
    }

LABEL_64:
    if (v37 < v29)
    {
      goto LABEL_98;
    }

    v39 = Data._Representation.subscript.getter();
    v41 = v40;
    v42 = 0;
    v43 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v43 == 2)
      {
        v42 = *(v39 + 16);
      }
    }

    else if (v43)
    {
      v42 = v39;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v44 = *(v31 + 24);
      }

      else
      {
        v44 = 0;
      }
    }

    else if (v33)
    {
      v44 = v31 >> 32;
    }

    else
    {
      v44 = BYTE6(v32);
    }

    if (__OFSUB__(v44, v37))
    {
      goto LABEL_99;
    }

    v45 = v39;
    if (v44 != v37)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v45, v41);
      outlined consume of Data._Representation(v31, v32);
      outlined consume of Data._Representation(*v57, v57[1]);
      *v57 = v19;
      v57[1] = v20;
      v57[2] = v15;
      swift_willThrowTypedImpl();

      v50 = 1;
      goto LABEL_88;
    }

    v46 = v42;
    outlined consume of Data._Representation(v31, v32);
    result = outlined consume of Data._Representation(v19, v20);
    v16 = v58;
    v48 = *(v58 + 16);
    v47 = *(v58 + 24);
    if (v48 >= v47 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v58);
      v16 = result;
    }

    *(v16 + 16) = v48 + 1;
    v49 = v16 + 32 * v48;
    *(v49 + 32) = bswap32(0) >> 16;
    *(v49 + 40) = v45;
    *(v49 + 48) = v41;
    *(v49 + 56) = v46;
    v15 = v6 + 2;
    LODWORD(v17) = v56;
    v3 = v57;
    if (__OFADD__(v6, 2))
    {
      goto LABEL_90;
    }
  }

  if (v22 == 2)
  {
    v23 = *(v19 + 24);
    goto LABEL_31;
  }

  if (v21 < 1)
  {
    goto LABEL_34;
  }

LABEL_86:
  outlined copy of Data._Representation(v19, v20);
  v25 = *v3;
  v26 = v3[1];
LABEL_87:
  outlined consume of Data._Representation(v25, v26);
  *v3 = v19;
  v3[1] = v20;
  v3[2] = v15;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();

  v50 = 0;
LABEL_88:
  *a2 = v50;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
LABEL_89:
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV16readPAKEShareRFCAA9ExtensionO4PAKEO0F0VSgyAA8TLSErrorOYKF()
{
  v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v1 & 0x10000) != 0)
  {
    return 0;
  }

  v16 = v1;
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  outlined copy of Data._Representation(*v0, v2);
  v5 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v5 & 0x10000) != 0 || (v6 = ByteBuffer.readSlice(length:)(v5), v7 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v0, v0[1]);
    *v0 = v3;
    v0[1] = v2;
    v0[2] = v4;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v17 = v6;
  v18 = v7;
  v19 = v8;
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v6 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v6 >> 32;
  }

  else
  {
    v11 = BYTE6(v7);
  }

  result = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    __break(1u);
    goto LABEL_27;
  }

  result = ByteBuffer.readSlice(length:)(result);
  v20 = result;
  if (v12 >> 60 == 15)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v13 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v17 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v17 >> 32;
  }

  else
  {
    v14 = BYTE6(v18);
  }

  if (__OFSUB__(v14, v19))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v12;
  if (v14 == v19)
  {
    outlined consume of Data._Representation(v17, v18);
    outlined consume of Data._Representation(v3, v2);
    return v16;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v20, v15);
    outlined consume of Data._Representation(v17, v18);
    outlined consume of Data._Representation(*v0, v0[1]);
    *v0 = v3;
    v0[1] = v2;
    v0[2] = v4;
    swift_willThrowTypedImpl();
    return 1;
  }
}

unint64_t ByteBuffer.writePAKEClientHelloNonRFC(_:)(uint64_t *a1)
{
  v17[7] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v8 = 0;
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v16 = 0;
  v17[3] = MEMORY[0x1E69E6290];
  v17[4] = MEMORY[0x1E6969DF8];
  v17[0] = &v16;
  v17[1] = v17;
  v9 = __swift_project_boxed_opaque_existential_0(v17, MEMORY[0x1E69E6290]);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v17);
  v12 = a1[6];
  outlined init with copy of Extension.PAKE.PAKEClientHello(a1, v17);
  v13 = specialized Sequence.reduce<A>(into:_:)(0, v12, v1, a1);
  outlined destroy of Extension.PAKE.PAKEClientHello(a1);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v13 >> 16)
  {
    goto LABEL_11;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v13, v8);
  v14 = *MEMORY[0x1E69E9840];
  return v13 + 2;
}

uint64_t ByteBuffer.writePAKEServerHelloNonRFC(_:)(unsigned __int16 *a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 5);
  if (v3 >> 60 == 15)
  {
    goto LABEL_100;
  }

  v2 = *(a1 + 4);
  v4 = *(a1 + 6);
  v91 = *(a1 + 28);
  v5 = *(a1 + 9);
  v92 = v5;
  v6 = *(&v91 + 1);
  if (*(&v91 + 1) >> 60 == 15)
  {
    goto LABEL_105;
  }

  v8 = *(a1 + 1);
  v7 = *(a1 + 2);
  v82 = *(a1 + 3);
  v83 = v91;
  v84 = bswap32(*a1) >> 16;
  v89 = MEMORY[0x1E69E6290];
  v90 = MEMORY[0x1E6969DF8];
  v87 = &v84;
  v88 = &v85;
  v9 = __swift_project_boxed_opaque_existential_0(&v87, MEMORY[0x1E69E6290]);
  v10 = *v9;
  v11 = v9[1];
  outlined copy of Data?(v2, v3);
  outlined init with copy of ByteBuffer?(&v91, &v85);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v87);
  v12 = *v1;
  v13 = v1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v12 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v12 >> 32;
  }

  else
  {
    v15 = BYTE6(v13);
  }

  v85 = 0;
  v89 = MEMORY[0x1E69E6290];
  v90 = MEMORY[0x1E6969DF8];
  v87 = &v85;
  v88 = v86;
  v16 = __swift_project_boxed_opaque_existential_0(&v87, MEMORY[0x1E69E6290]);
  v18 = *v16;
  v17 = v16[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v87);
  v19 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v2 + 16);
      v21 = *(v2 + 24);
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }
  }

  else if (v19)
  {
    v20 = v2;
    v21 = v2 >> 32;
  }

  else
  {
    v20 = 0;
    v21 = BYTE6(v3);
  }

  if (v21 < v4 || v21 < v20)
  {
    __break(1u);
    goto LABEL_89;
  }

  v22 = Data._Representation.subscript.getter();
  v24 = v23;
  Data.append(_:)();
  v25 = v24;
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_30;
    }

    v81 = v6;
    v27 = v5;
    v28 = v15;
    v29 = v3;
    v30 = v8;
    v31 = v7;
    v32 = v2;
    v2 = *(v22 + 16);
    v33 = *(v22 + 24);
    outlined consume of Data._Representation(v22, v25);
    v22 = v33 - v2;
    if (__OFSUB__(v33, v2))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v2 = v32;
    v7 = v31;
    v8 = v30;
    v3 = v29;
    v15 = v28;
    v5 = v27;
    v6 = v81;
  }

  else
  {
    if (!v26)
    {
      outlined consume of Data._Representation(v22, v24);
      v22 = BYTE6(v24);
      goto LABEL_31;
    }

    outlined consume of Data._Representation(v22, v24);
    if (__OFSUB__(HIDWORD(v22), v22))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v22 = HIDWORD(v22) - v22;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (!(v22 >> 16))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_30:
  outlined consume of Data._Representation(v22, v25);
  v22 = 0;
LABEL_31:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v22, v15);
  v34 = *v1;
  v35 = v1[1];
  v36 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v36 == 2)
    {
      v37 = *(v34 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else if (v36)
  {
    v37 = v34 >> 32;
  }

  else
  {
    v37 = BYTE6(v35);
  }

  v85 = 0;
  v89 = MEMORY[0x1E69E6290];
  v90 = MEMORY[0x1E6969DF8];
  v87 = &v85;
  v88 = v86;
  v38 = __swift_project_boxed_opaque_existential_0(&v87, MEMORY[0x1E69E6290]);
  v40 = *v38;
  v39 = v38[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v87);
  v41 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v41 == 2)
    {
      v42 = *(v83 + 16);
      v43 = *(v83 + 24);
    }

    else
    {
      v43 = 0;
      v42 = 0;
    }
  }

  else if (v41)
  {
    v42 = v83;
    v43 = v83 >> 32;
  }

  else
  {
    v42 = 0;
    v43 = BYTE6(v6);
  }

  if (v43 < v5 || v43 < v42)
  {
    goto LABEL_90;
  }

  v44 = Data._Representation.subscript.getter();
  v46 = v45;
  Data.append(_:)();
  v47 = v46;
  v48 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v48 != 2)
    {
      goto LABEL_58;
    }

    v49 = v3;
    v50 = v8;
    v51 = v7;
    v52 = v2;
    v2 = *(v44 + 16);
    v53 = *(v44 + 24);
    outlined consume of Data._Representation(v44, v47);
    v44 = v53 - v2;
    if (__OFSUB__(v53, v2))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v2 = v52;
    v7 = v51;
    v8 = v50;
    v3 = v49;
  }

  else
  {
    if (!v48)
    {
      outlined consume of Data._Representation(v44, v46);
      v44 = BYTE6(v46);
      goto LABEL_59;
    }

    outlined consume of Data._Representation(v44, v46);
    if (__OFSUB__(HIDWORD(v44), v44))
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v44 = HIDWORD(v44) - v44;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!(v44 >> 16))
  {
    goto LABEL_59;
  }

  __break(1u);
LABEL_58:
  outlined consume of Data._Representation(v44, v47);
  v44 = 0;
LABEL_59:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v44, v37);
  v54 = *v1;
  v55 = v1[1];
  v56 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v56 == 2)
    {
      v57 = *(v54 + 24);
    }

    else
    {
      v57 = 0;
    }
  }

  else if (v56)
  {
    v57 = v54 >> 32;
  }

  else
  {
    v57 = BYTE6(v55);
  }

  v85 = 0;
  v89 = MEMORY[0x1E69E6290];
  v90 = MEMORY[0x1E6969DF8];
  v87 = &v85;
  v88 = v86;
  v58 = __swift_project_boxed_opaque_existential_0(&v87, MEMORY[0x1E69E6290]);
  v60 = *v58;
  v59 = v58[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v87);
  v61 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v62 = v82;
    if (v61 == 2)
    {
      v63 = *(v8 + 16);
      v64 = *(v8 + 24);
    }

    else
    {
      v64 = 0;
      v63 = 0;
    }
  }

  else
  {
    v62 = v82;
    if (v61)
    {
      v63 = v8;
      v64 = v8 >> 32;
    }

    else
    {
      v63 = 0;
      v64 = BYTE6(v7);
    }
  }

  if (v64 < v62 || v64 < v63)
  {
    goto LABEL_92;
  }

  v65 = Data._Representation.subscript.getter();
  v67 = v66;
  Data.append(_:)();
  v68 = v67;
  v69 = v67 >> 62;
  if ((v67 >> 62) > 1)
  {
    if (v69 != 2)
    {
      goto LABEL_86;
    }

    v70 = v2;
    v2 = *(v65 + 16);
    v71 = *(v65 + 24);
    outlined consume of Data._Representation(v65, v68);
    v65 = v71 - v2;
    if (__OFSUB__(v71, v2))
    {
      goto LABEL_98;
    }

    v2 = v70;
    goto LABEL_83;
  }

  if (v69)
  {
    outlined consume of Data._Representation(v65, v67);
    if (__OFSUB__(HIDWORD(v65), v65))
    {
LABEL_99:
      __break(1u);
LABEL_100:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, logger);
      v3 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_1B25F5000, v3, v75, "PAKE extension missing client identity", v76, 2u);
        MEMORY[0x1B274ECF0](v76, -1, -1);
      }

      __break(1u);
LABEL_105:
      outlined copy of Data._Representation(v2, v3);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, logger);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1B25F5000, v78, v79, "PAKE extension missing server identity", v80, 2u);
        MEMORY[0x1B274ECF0](v80, -1, -1);
      }

      __break(1u);
    }

    v65 = HIDWORD(v65) - v65;
LABEL_83:
    if ((v65 & 0x8000000000000000) == 0)
    {
      if (!(v65 >> 16))
      {
        goto LABEL_87;
      }

      __break(1u);
LABEL_86:
      outlined consume of Data._Representation(v65, v68);
      v65 = 0;
      goto LABEL_87;
    }

    goto LABEL_93;
  }

  outlined consume of Data._Representation(v65, v67);
  v65 = BYTE6(v67);
LABEL_87:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v65, v57);
  outlined consume of ByteBuffer?(v2, v3);
  outlined destroy of ByteBuffer?(&v91);
  v72 = *MEMORY[0x1E69E9840];
  return v22 + v44 + v65 + 8;
}

uint64_t closure #1 in closure #1 in ByteBuffer.writePAKEClientHelloNonRFC(_:)(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v77 = a2[3];
  v78 = a2[1];
  v79 = bswap32(*a2) >> 16;
  v8 = MEMORY[0x1E69E6290];
  v82 = MEMORY[0x1E69E6290];
  v83 = MEMORY[0x1E6969DF8];
  v80 = &v79;
  v81 = &v80;
  v9 = __swift_project_boxed_opaque_existential_0(&v80, MEMORY[0x1E69E6290]);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v80);
  v12 = *a1 + 2;
  if (__OFADD__(*a1, 2))
  {
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v13 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v13 >> 32;
  }

  else
  {
    v16 = BYTE6(v14);
  }

  v79 = 0;
  v82 = v8;
  v83 = MEMORY[0x1E6969DF8];
  v80 = &v79;
  v81 = &v80;
  v17 = __swift_project_boxed_opaque_existential_0(&v80, v8);
  v19 = *v17;
  v18 = v17[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v80);
  v20 = *a4;
  v21 = a4[1];
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v20;
    v24 = v20 >> 32;
  }

  else
  {
    v23 = 0;
    v24 = BYTE6(v21);
  }

  if (v24 < a4[2] || v24 < v23)
  {
    goto LABEL_94;
  }

  v76 = a1;
  v25 = Data._Representation.subscript.getter();
  v27 = v26;
  Data.append(_:)();
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 != 2)
    {
LABEL_29:
      outlined consume of Data._Representation(v25, v27);
      v27 = 0;
      goto LABEL_30;
    }

    v75 = v12;
    v29 = *(v25 + 16);
    v30 = *(v25 + 24);
    outlined consume of Data._Representation(v25, v27);
    v27 = v30 - v29;
    if (__OFSUB__(v30, v29))
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v12 = v75;
    goto LABEL_26;
  }

  if (v28)
  {
    outlined consume of Data._Representation(v25, v27);
    if (__OFSUB__(HIDWORD(v25), v25))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v27 = HIDWORD(v25) - v25;
LABEL_26:
    v25 = MEMORY[0x1E69E6290];
    if ((v27 & 0x8000000000000000) == 0)
    {
      if (!(v27 >> 16))
      {
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  outlined consume of Data._Representation(v25, v27);
  v27 = BYTE6(v27);
LABEL_30:
  v25 = MEMORY[0x1E69E6290];
LABEL_31:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v27, v16);
  v31 = v12 + v27 + 2;
  if (__OFADD__(v12, v27 + 2))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v32 = *a3;
  v33 = a3[1];
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 == 2)
    {
      v35 = *(v32 + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else if (v34)
  {
    v35 = v32 >> 32;
  }

  else
  {
    v35 = BYTE6(v33);
  }

  v79 = 0;
  v82 = v25;
  v83 = MEMORY[0x1E6969DF8];
  v80 = &v79;
  v81 = &v80;
  v36 = __swift_project_boxed_opaque_existential_0(&v80, v25);
  v38 = *v36;
  v37 = v36[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v80);
  v39 = a4[3];
  v40 = a4[4];
  v41 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v41 == 2)
    {
      v42 = *(v39 + 16);
      v43 = *(v39 + 24);
    }

    else
    {
      v43 = 0;
      v42 = 0;
    }
  }

  else if (v41)
  {
    v42 = v39;
    v43 = v39 >> 32;
  }

  else
  {
    v42 = 0;
    v43 = BYTE6(v40);
  }

  if (v43 < a4[5] || v43 < v42)
  {
    goto LABEL_97;
  }

  v44 = Data._Representation.subscript.getter();
  v46 = v45;
  Data.append(_:)();
  v47 = v46;
  v48 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v48 != 2)
    {
LABEL_59:
      outlined consume of Data._Representation(v44, v47);
      v44 = 0;
      goto LABEL_60;
    }

    v49 = v7;
    v51 = *(v44 + 16);
    v50 = *(v44 + 24);
    outlined consume of Data._Representation(v44, v47);
    v44 = v50 - v51;
    if (__OFSUB__(v50, v51))
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v7 = v49;
    goto LABEL_56;
  }

  if (v48)
  {
    outlined consume of Data._Representation(v44, v46);
    if (__OFSUB__(HIDWORD(v44), v44))
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
    }

    v44 = HIDWORD(v44) - v44;
LABEL_56:
    v52 = MEMORY[0x1E69E6290];
    if ((v44 & 0x8000000000000000) == 0)
    {
      if (!(v44 >> 16))
      {
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_59;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  outlined consume of Data._Representation(v44, v46);
  v44 = BYTE6(v46);
LABEL_60:
  v52 = MEMORY[0x1E69E6290];
LABEL_61:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v44, v35);
  v53 = __OFADD__(v31, v44 + 2);
  v54 = v31 + v44 + 2;
  if (v53)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v55 = *a3;
  v56 = a3[1];
  v57 = v56 >> 62;
  if ((v56 >> 62) > 1)
  {
    if (v57 == 2)
    {
      v58 = *(v55 + 24);
    }

    else
    {
      v58 = 0;
    }
  }

  else if (v57)
  {
    v58 = v55 >> 32;
  }

  else
  {
    v58 = BYTE6(v56);
  }

  v79 = 0;
  v82 = v52;
  v83 = MEMORY[0x1E6969DF8];
  v80 = &v79;
  v81 = &v80;
  v59 = __swift_project_boxed_opaque_existential_0(&v80, v52);
  v61 = *v59;
  v60 = v59[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v80);
  v62 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v63 = v77;
    if (v62 == 2)
    {
      v64 = *(v78 + 16);
      v65 = *(v78 + 24);
    }

    else
    {
      v65 = 0;
      v64 = 0;
    }
  }

  else
  {
    v63 = v77;
    if (v62)
    {
      v64 = v78;
      v65 = v78 >> 32;
    }

    else
    {
      v64 = 0;
      v65 = BYTE6(v7);
    }
  }

  if (v65 < v63 || v65 < v64)
  {
    goto LABEL_100;
  }

  v66 = Data._Representation.subscript.getter();
  v68 = v67;
  Data.append(_:)();
  v69 = v68;
  v70 = v68 >> 62;
  if ((v68 >> 62) <= 1)
  {
    if (!v70)
    {
      outlined consume of Data._Representation(v66, v68);
      v66 = BYTE6(v68);
      goto LABEL_91;
    }

    goto LABEL_85;
  }

  if (v70 != 2)
  {
    goto LABEL_90;
  }

  v72 = *(v66 + 16);
  v71 = *(v66 + 24);
  outlined consume of Data._Representation(v66, v69);
  v66 = v71 - v72;
  if (__OFSUB__(v71, v72))
  {
    __break(1u);
LABEL_85:
    outlined consume of Data._Representation(v66, v69);
    if (__OFSUB__(HIDWORD(v66), v66))
    {
      goto LABEL_107;
    }

    v66 = HIDWORD(v66) - v66;
  }

  if ((v66 & 0x8000000000000000) != 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (!(v66 >> 16))
  {
    goto LABEL_91;
  }

  __break(1u);
LABEL_90:
  outlined consume of Data._Representation(v66, v69);
  v66 = 0;
LABEL_91:
  result = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v66, v58);
  if (__OFADD__(v54, v66 + 2))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  *v76 = v54 + v66 + 2;
  v74 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  outlined copy of Data._Representation(*v2, v6);
  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v9 & 0x10000) != 0 || (v10 = ByteBuffer.readSlice(length:)(v9), v11 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    v30 = 0uLL;
    v13 = 2;
    LOBYTE(v31) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v15 = 0;
    v16 = 0;
LABEL_18:
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v13;
    return result;
  }

  v34 = v10;
  v35 = v11;
  v36 = v12;
  _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFAjCzALYKXEfU_(&v34, v28, &v30);
  if (v3)
  {
    v15 = v28[0];
    v16 = v28[1];
    v13 = v29;
    v17 = v34;
    v18 = v35;
LABEL_17:
    outlined consume of Data._Representation(v17, v18);
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    *&v30 = v15;
    *(&v30 + 1) = v16;
    LOBYTE(v31) = v13;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    goto LABEL_18;
  }

  result = v34;
  v19 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v34 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else if (v19)
  {
    v20 = v34 >> 32;
  }

  else
  {
    v20 = BYTE6(v35);
  }

  if (!__OFSUB__(v20, v36))
  {
    if (v20 == v36)
    {
      outlined consume of Data._Representation(v34, v35);
      result = outlined consume of Data._Representation(v7, v6);
      v21 = v33;
      v22 = v31;
      v23 = v32;
      *a2 = v30;
      *(a2 + 16) = v22;
      *(a2 + 32) = v23;
      *(a2 + 48) = v21;
      return result;
    }

    v13 = 2;
    v26 = v35;
    v27 = v34;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v24 = *(&v31 + 1);
    v25 = v32;
    outlined consume of Data._Representation(v30, *(&v30 + 1));
    outlined consume of Data._Representation(v24, v25);

    v18 = v26;
    v17 = v27;
    v16 = 0;
    v15 = 1;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV25readPAKEServerHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v61 = v6;
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  outlined copy of Data._Representation(*v2, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v10 & 0x10000) != 0 || (v11 = ByteBuffer.readSlice(length:)(v10), v12 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
LABEL_5:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v15 = 0;
LABEL_6:
    *a1 = v15;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    return result;
  }

  v52 = v11;
  v55 = v12;
  v58 = v13;
  v16 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v11 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v11 >> 32;
  }

  else
  {
    v17 = BYTE6(v12);
  }

  result = v17 - v13;
  if (__OFSUB__(v17, v13))
  {
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
    goto LABEL_76;
  }

  v50 = a2;
  result = ByteBuffer.readSlice(length:)(result);
  if (v18 >> 60 == 15)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v19 = v18;
  v20 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v52 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v52 >> 32;
  }

  else
  {
    v21 = BYTE6(v55);
  }

  if (__OFSUB__(v21, v58))
  {
    goto LABEL_71;
  }

  v22 = result;
  if (v21 != v58)
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v22, v19);
    outlined consume of Data._Representation(v52, v55);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v8;
    v4[1] = v7;
    v4[2] = v9;
LABEL_29:
    result = swift_willThrowTypedImpl();
    v15 = 1;
    goto LABEL_6;
  }

  outlined consume of Data._Representation(v52, v55);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of ByteBuffer?(v22, v19);
  v24 = *v4;
  v23 = v4[1];
  v25 = v4[2];
  outlined copy of Data._Representation(*v4, v23);
  v26 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v26 & 0x10000) != 0 || (v27 = ByteBuffer.readSlice(length:)(v26), v28 >> 60 == 15))
  {
LABEL_28:
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v24;
    v4[1] = v23;
    v4[2] = v25;
    goto LABEL_5;
  }

  v53 = v27;
  v56 = v28;
  v59 = v29;
  v30 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v27 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v27 >> 32;
  }

  else
  {
    v31 = BYTE6(v28);
  }

  result = v31 - v29;
  if (__OFSUB__(v31, v29))
  {
    goto LABEL_72;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v32 >> 60 == 15)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v33 = v32;
  v35 = v56;
  v34 = v53;
  v36 = v56 >> 62;
  if ((v56 >> 62) > 1)
  {
    if (v36 == 2)
    {
      v37 = *(v53 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else if (v36)
  {
    v37 = v53 >> 32;
  }

  else
  {
    v37 = BYTE6(v56);
  }

  if (__OFSUB__(v37, v59))
  {
    goto LABEL_73;
  }

  v38 = result;
  if (v37 != v59)
  {
    goto LABEL_69;
  }

  outlined consume of Data._Representation(v53, v56);
  outlined consume of Data._Representation(v24, v23);
  outlined consume of ByteBuffer?(v38, v33);
  v24 = *v4;
  v23 = v4[1];
  v25 = v4[2];
  outlined copy of Data._Representation(*v4, v23);
  v39 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v39 & 0x10000) != 0)
  {
    goto LABEL_28;
  }

  v40 = ByteBuffer.readSlice(length:)(v39);
  if (v41 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v54 = v40;
  v57 = v41;
  v60 = v42;
  v43 = v41 >> 62;
  if ((v41 >> 62) > 1)
  {
    if (v43 == 2)
    {
      v44 = *(v40 + 24);
    }

    else
    {
      v44 = 0;
    }
  }

  else if (v43)
  {
    v44 = v40 >> 32;
  }

  else
  {
    v44 = BYTE6(v41);
  }

  result = v44 - v42;
  if (__OFSUB__(v44, v42))
  {
    goto LABEL_74;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v45 >> 60 != 15)
  {
    v33 = v45;
    v47 = v46;
    v35 = v57;
    v34 = v54;
    v48 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v48 == 2)
      {
        v49 = *(v54 + 24);
      }

      else
      {
        v49 = 0;
      }
    }

    else if (v48)
    {
      v49 = v54 >> 32;
    }

    else
    {
      v49 = BYTE6(v57);
    }

    if (!__OFSUB__(v49, v60))
    {
      v38 = result;
      if (v49 == v60)
      {
        outlined consume of Data._Representation(v54, v57);
        result = outlined consume of Data._Representation(v24, v23);
        *v50 = v61;
        *(v50 + 8) = v38;
        *(v50 + 16) = v33;
        *(v50 + 24) = v47;
        *(v50 + 32) = xmmword_1B26C5EF0;
        *(v50 + 48) = 0;
        *(v50 + 56) = 0;
        *(v50 + 64) = xmmword_1B26C8CA0;
        return result;
      }

LABEL_69:
      v51 = v34;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v38, v33);
      outlined consume of Data._Representation(v51, v35);
      outlined consume of Data._Representation(*v4, v4[1]);
      *v4 = v24;
      v4[1] = v23;
      v4[2] = v25;
      goto LABEL_29;
    }

    goto LABEL_75;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV25readPAKEClientHelloNonRFCAA9ExtensionO4PAKEO0fG0VyAA8TLSErrorOYKFAjCzALYKXEfU_@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v127 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = BYTE6(v4);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  v11 = v10 - v6;
  if (__OFSUB__(v10, v6))
  {
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
  }

  if (v11 >= 0)
  {
    v12 = v10 - v6;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v14 = a1[1];
  v104 = *a1;
  v15 = v6 + 2;
  if (__OFADD__(v6, 2))
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v16 = result;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = v14 >> 62;
  v103 = BYTE6(v14);
  v22 = 0xF000000000000000;
  v23 = 0xF000000000000000;
  v105 = v14 >> 62;
  while (1)
  {
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (*(v104 + 24) < v15)
        {
          goto LABEL_167;
        }
      }

      else if (v15 > 0)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v24 = v103;
      if (v21)
      {
        v24 = v104 >> 32;
      }

      if (v24 < v15)
      {
LABEL_167:
        if (v22 >> 60 != 15 && v23 >> 60 != 15)
        {
          *a3 = v18;
          a3[1] = v22;
          a3[2] = v17;
          a3[3] = v20;
          a3[4] = v23;
          a3[5] = v19;
          a3[6] = v16;
          goto LABEL_182;
        }

        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of ByteBuffer?(v20, v23);
        v95 = v18;
        v96 = v22;
        goto LABEL_180;
      }
    }

    v116 = *a1;
    v120 = a1[1];
    if (v15 < v6)
    {
      goto LABEL_184;
    }

    v113 = v23;
    v114 = v20;
    v115 = v22;
    v112 = v16;
    outlined copy of Data._Representation(*a1, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v116, v120);
    a1[2] = v15;
    v26 = *a1;
    v25 = a1[1];
    v27 = v15 + 2;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_185;
    }

    v28 = v25 >> 62;
    if ((v25 >> 62) <= 1)
    {
      if (v28)
      {
        v29 = v26 >> 32;
      }

      else
      {
        v29 = BYTE6(v25);
      }

LABEL_31:
      if (v29 < v27)
      {
        goto LABEL_170;
      }

      goto LABEL_34;
    }

    if (v28 == 2)
    {
      v29 = *(v26 + 24);
      goto LABEL_31;
    }

    if (v27 >= 1)
    {
LABEL_170:
      outlined copy of Data._Representation(v26, v25);
      v32 = *a1;
      v33 = a1[1];
LABEL_171:
      outlined consume of Data._Representation(v32, v33);

      *a1 = v26;
      a1[1] = v25;
      a1[2] = v15;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_174;
    }

LABEL_34:
    if (v27 < v15)
    {
      goto LABEL_186;
    }

    outlined copy of Data._Representation(v26, v25);
    outlined copy of Data._Representation(v26, v25);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v26, v25);
    v30 = bswap32(0) >> 16;
    a1[2] = v27;
    v31 = v27 + v30;
    if (__OFADD__(v27, v30))
    {
      goto LABEL_187;
    }

    v32 = *a1;
    v33 = a1[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (v34)
      {
        v35 = v32 >> 32;
      }

      else
      {
        v35 = BYTE6(v33);
      }

LABEL_42:
      if (v35 < v31)
      {
        goto LABEL_171;
      }

      goto LABEL_45;
    }

    if (v34 == 2)
    {
      v35 = *(v32 + 24);
      goto LABEL_42;
    }

    if (v31 > 0)
    {
      goto LABEL_171;
    }

LABEL_45:
    if (v31 < v27)
    {
      goto LABEL_188;
    }

    v36 = Data._Representation.subscript.getter();
    a1[2] = v31;
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 == 2)
      {
        v39 = *(v36 + 16);
        v117 = v36;
        v121 = v37;
        v124 = v39;
LABEL_57:
        v40 = *(v36 + 24);
        goto LABEL_58;
      }
    }

    else if (v38)
    {
      v39 = v36;
      v117 = v36;
      v121 = v37;
      v124 = v36;
LABEL_54:
      v40 = v36 >> 32;
      goto LABEL_58;
    }

    v39 = 0;
    v117 = v36;
    v121 = v37;
    v124 = 0;
    if (v38 <= 1)
    {
      if (!v38)
      {
        v39 = 0;
        v40 = BYTE6(v37);
        goto LABEL_58;
      }

      goto LABEL_54;
    }

    v40 = 0;
    if (v38 != 3)
    {
      v39 = 0;
      goto LABEL_57;
    }

LABEL_58:
    if (__OFSUB__(v40, v39))
    {
      goto LABEL_189;
    }

    v41 = ByteBuffer.readSlice(length:)(v40 - v39);
    if (v42 >> 60 == 15)
    {
      goto LABEL_204;
    }

    v44 = v121 >> 62;
    if ((v121 >> 62) > 1)
    {
      if (v44 == 2)
      {
        v45 = *(v117 + 24);
      }

      else
      {
        v45 = 0;
      }
    }

    else if (v44)
    {
      v45 = v117 >> 32;
    }

    else
    {
      v45 = BYTE6(v121);
    }

    if (__OFSUB__(v45, v124))
    {
      goto LABEL_190;
    }

    v109 = v41;
    v110 = v42;
    v111 = v43;
    if (v45 != v124)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v109, v110);
      outlined consume of Data._Representation(v117, v121);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v26;
      a1[1] = v25;
      a1[2] = v15;
      swift_willThrowTypedImpl();
LABEL_175:
      outlined consume of ByteBuffer?(v114, v113);
      v98 = v115;
      v97 = v18;
      goto LABEL_178;
    }

    outlined consume of Data._Representation(v117, v121);
    outlined consume of Data._Representation(v26, v25);
    v46 = *a1;
    v47 = a1[1];
    v48 = a1[2];
    v49 = v48 + 2;
    if (__OFADD__(v48, 2))
    {
      goto LABEL_191;
    }

    v50 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      if (v50 == 2)
      {
        v51 = *(v46 + 24);
        goto LABEL_77;
      }

      if (v49 < 1)
      {
        goto LABEL_80;
      }

LABEL_172:
      outlined copy of Data._Representation(v46, v47);
      v54 = *a1;
      v55 = a1[1];
LABEL_173:
      outlined consume of Data._Representation(v54, v55);

      *a1 = v46;
      a1[1] = v47;
      a1[2] = v48;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v109, v110);
LABEL_174:
      outlined consume of ByteBuffer?(v114, v113);
      v96 = v115;
      v95 = v18;
      goto LABEL_180;
    }

    v51 = v50 ? v46 >> 32 : BYTE6(v47);
LABEL_77:
    if (v51 < v49)
    {
      goto LABEL_172;
    }

LABEL_80:
    if (v49 < v48)
    {
      goto LABEL_192;
    }

    outlined copy of Data._Representation(v46, v47);
    outlined copy of Data._Representation(v46, v47);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v46, v47);
    v52 = bswap32(0) >> 16;
    a1[2] = v49;
    v53 = v49 + v52;
    if (__OFADD__(v49, v52))
    {
      goto LABEL_193;
    }

    v54 = *a1;
    v55 = a1[1];
    v56 = v55 >> 62;
    if ((v55 >> 62) <= 1)
    {
      if (v56)
      {
        v57 = v54 >> 32;
      }

      else
      {
        v57 = BYTE6(v55);
      }

LABEL_88:
      if (v57 < v53)
      {
        goto LABEL_173;
      }

      goto LABEL_91;
    }

    if (v56 == 2)
    {
      v57 = *(v54 + 24);
      goto LABEL_88;
    }

    if (v53 > 0)
    {
      goto LABEL_173;
    }

LABEL_91:
    if (v53 < v49)
    {
      goto LABEL_194;
    }

    v58 = Data._Representation.subscript.getter();
    a1[2] = v53;
    v60 = v59 >> 62;
    if ((v59 >> 62) > 1)
    {
      if (v60 == 2)
      {
        v61 = *(v58 + 16);
        v118 = v58;
        v122 = v59;
        v125 = v61;
LABEL_103:
        v62 = *(v58 + 24);
        goto LABEL_104;
      }
    }

    else if (v60)
    {
      v61 = v58;
      v118 = v58;
      v122 = v59;
      v125 = v58;
LABEL_100:
      v62 = v58 >> 32;
      goto LABEL_104;
    }

    v61 = 0;
    v118 = v58;
    v122 = v59;
    v125 = 0;
    if (v60 <= 1)
    {
      if (!v60)
      {
        v61 = 0;
        v62 = BYTE6(v59);
        goto LABEL_104;
      }

      goto LABEL_100;
    }

    v62 = 0;
    if (v60 != 3)
    {
      v61 = 0;
      goto LABEL_103;
    }

LABEL_104:
    if (__OFSUB__(v62, v61))
    {
      goto LABEL_195;
    }

    v63 = ByteBuffer.readSlice(length:)(v62 - v61);
    if (v64 >> 60 == 15)
    {
      goto LABEL_205;
    }

    v66 = v122 >> 62;
    if ((v122 >> 62) > 1)
    {
      if (v66 == 2)
      {
        v67 = *(v118 + 24);
      }

      else
      {
        v67 = 0;
      }
    }

    else if (v66)
    {
      v67 = v118 >> 32;
    }

    else
    {
      v67 = BYTE6(v122);
    }

    if (__OFSUB__(v67, v125))
    {
      goto LABEL_196;
    }

    v106 = v63;
    v107 = v64;
    v108 = v65;
    if (v67 != v125)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v106, v107);
      outlined consume of Data._Representation(v118, v122);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v46;
      a1[1] = v47;
      a1[2] = v48;
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v109, v110);
      goto LABEL_175;
    }

    outlined consume of Data._Representation(v118, v122);
    outlined consume of Data._Representation(v46, v47);
    outlined consume of ByteBuffer?(v114, v113);
    outlined consume of ByteBuffer?(v18, v115);
    v68 = *a1;
    v69 = a1[1];
    v70 = a1[2];
    v71 = v70 + 2;
    if (__OFADD__(v70, 2))
    {
      goto LABEL_197;
    }

    v72 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      break;
    }

    if (v72)
    {
      v73 = v68 >> 32;
    }

    else
    {
      v73 = BYTE6(v69);
    }

LABEL_123:
    if (v73 < v71)
    {
      goto LABEL_176;
    }

LABEL_126:
    if (v71 < v70)
    {
      goto LABEL_198;
    }

    outlined copy of Data._Representation(v68, v69);
    outlined copy of Data._Representation(v68, v69);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v68, v69);
    v74 = bswap32(0) >> 16;
    a1[2] = v71;
    v6 = v71 + v74;
    if (__OFADD__(v71, v74))
    {
      goto LABEL_199;
    }

    v75 = *a1;
    v76 = a1[1];
    v77 = v76 >> 62;
    if ((v76 >> 62) <= 1)
    {
      if (v77)
      {
        v78 = v75 >> 32;
      }

      else
      {
        v78 = BYTE6(v76);
      }

LABEL_134:
      if (v78 < v6)
      {
        goto LABEL_177;
      }

      goto LABEL_137;
    }

    if (v77 == 2)
    {
      v78 = *(v75 + 24);
      goto LABEL_134;
    }

    if (v6 > 0)
    {
      goto LABEL_177;
    }

LABEL_137:
    if (v6 < v71)
    {
      goto LABEL_200;
    }

    v79 = Data._Representation.subscript.getter();
    a1[2] = v6;
    v81 = v80 >> 62;
    if ((v80 >> 62) > 1)
    {
      if (v81 == 2)
      {
        v82 = *(v79 + 16);
        v119 = v79;
        v123 = v80;
        v126 = v82;
LABEL_149:
        v83 = *(v79 + 24);
        goto LABEL_150;
      }
    }

    else if (v81)
    {
      v82 = v79;
      v119 = v79;
      v123 = v80;
      v126 = v79;
LABEL_146:
      v83 = v79 >> 32;
      goto LABEL_150;
    }

    v82 = 0;
    v119 = v79;
    v123 = v80;
    v126 = 0;
    if (v81 <= 1)
    {
      if (!v81)
      {
        v82 = 0;
        v83 = BYTE6(v80);
        goto LABEL_150;
      }

      goto LABEL_146;
    }

    v83 = 0;
    if (v81 != 3)
    {
      v82 = 0;
      goto LABEL_149;
    }

LABEL_150:
    if (__OFSUB__(v83, v82))
    {
      goto LABEL_201;
    }

    v84 = ByteBuffer.readSlice(length:)(v83 - v82);
    if (v85 >> 60 == 15)
    {
      goto LABEL_206;
    }

    v87 = v84;
    v88 = v85;
    v89 = v86;
    v90 = v123 >> 62;
    if ((v123 >> 62) > 1)
    {
      if (v90 == 2)
      {
        v91 = *(v119 + 24);
      }

      else
      {
        v91 = 0;
      }
    }

    else if (v90)
    {
      v91 = v119 >> 32;
    }

    else
    {
      v91 = BYTE6(v123);
    }

    if (__OFSUB__(v91, v126))
    {
      goto LABEL_202;
    }

    if (v91 != v126)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v87, v88);
      outlined consume of Data._Representation(v119, v123);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v68;
      a1[1] = v69;
      a1[2] = v70;
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v106, v107);
      v97 = v109;
      v98 = v110;
LABEL_178:
      outlined consume of ByteBuffer?(v97, v98);

      v99 = 1;
      goto LABEL_181;
    }

    outlined consume of Data._Representation(v119, v123);
    result = outlined consume of Data._Representation(v68, v69);
    v16 = v112;
    v93 = *(v112 + 16);
    v92 = *(v112 + 24);
    if (v93 >= v92 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v112);
      v16 = result;
    }

    *(v16 + 16) = v93 + 1;
    v94 = v16 + 32 * v93;
    *(v94 + 32) = bswap32(0) >> 16;
    *(v94 + 40) = v87;
    *(v94 + 48) = v88;
    v17 = v111;
    v22 = v110;
    v18 = v109;
    *(v94 + 56) = v89;
    v23 = v107;
    v19 = v108;
    LODWORD(v21) = v105;
    v20 = v106;
    v15 = v6 + 2;
    if (__OFADD__(v6, 2))
    {
      goto LABEL_183;
    }
  }

  if (v72 == 2)
  {
    v73 = *(v68 + 24);
    goto LABEL_123;
  }

  if (v71 < 1)
  {
    goto LABEL_126;
  }

LABEL_176:
  outlined copy of Data._Representation(v68, v69);
  v75 = *a1;
  v76 = a1[1];
LABEL_177:
  outlined consume of Data._Representation(v75, v76);

  *a1 = v68;
  a1[1] = v69;
  a1[2] = v70;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v106, v107);
  v95 = v109;
  v96 = v110;
LABEL_180:
  result = outlined consume of ByteBuffer?(v95, v96);
  v99 = 0;
LABEL_181:
  *a2 = v99;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
LABEL_182:
  v100 = *MEMORY[0x1E69E9840];
  return result;
}