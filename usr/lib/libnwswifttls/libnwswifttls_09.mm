unint64_t lazy protocol witness table accessor for type TLSCiphertext and conformance TLSCiphertext()
{
  result = lazy protocol witness table cache variable for type TLSCiphertext and conformance TLSCiphertext;
  if (!lazy protocol witness table cache variable for type TLSCiphertext and conformance TLSCiphertext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSCiphertext and conformance TLSCiphertext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeprotectedRecord and conformance DeprotectedRecord()
{
  result = lazy protocol witness table cache variable for type DeprotectedRecord and conformance DeprotectedRecord;
  if (!lazy protocol witness table cache variable for type DeprotectedRecord and conformance DeprotectedRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeprotectedRecord and conformance DeprotectedRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TLSInnerPlaintext and conformance TLSInnerPlaintext()
{
  result = lazy protocol witness table cache variable for type TLSInnerPlaintext and conformance TLSInnerPlaintext;
  if (!lazy protocol witness table cache variable for type TLSInnerPlaintext and conformance TLSInnerPlaintext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSInnerPlaintext and conformance TLSInnerPlaintext);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeprotectedRecord(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for DeprotectedRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLSInnerPlaintext(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TLSInnerPlaintext(uint64_t result, int a2, int a3)
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

uint64_t _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  v4 = *(specialized Collection._copyToContiguousArray()(a1, a2) + 16);
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t outlined destroy of _HasContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11tlsExporter6secret5label7contextAA12SymmetricKeyVqd___SS6DigestQzt10Foundation15ContiguousBytesRd__lFZAA6SHA384V_AJTt3g5@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v25 = a5;
  v26 = a4;
  v23 = a2;
  v24 = a3;
  v22[1] = a1;
  v5 = type metadata accessor for SHA384();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA384Digest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for SymmetricKey();
  v15 = *(v22[0] - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v22[0]);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  dispatch thunk of HashFunction.init()();
  dispatch thunk of HashFunction.finalize()();
  (*(v6 + 8))(v9, v5);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  v19 = dispatch thunk of static Digest.byteCount.getter();
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(v23, v24, v19, v18);
  (*(v11 + 8))(v14, v10);
  v20 = dispatch thunk of static Digest.byteCount.getter();
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x726574726F707865, 0xE800000000000000, v20, v25);
  return (*(v15 + 8))(v18, v22[0]);
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - v5;
  v7 = v3[2];
  v7(v14 - v5, a1, v2);
  v16 = v2;
  v17 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  v7(boxed_opaque_existential_1, v6, v2);
  __swift_project_boxed_opaque_existential_0(v15, v16);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v9 = v3[1];
  v9(a1, v2);
  v9(v6, v2);
  v10 = v14[1];
  v11 = v14[2];
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (v11 >> 62 == 2)
  {
    v12 = *(v10 + 16);
  }

  return v10;
}

uint64_t specialized SessionKeyManager.generateTLSExporterKey(_:)@<X0>(Swift::Int a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v49 = a2;
  v48 = a1;
  v51 = a3;
  v3 = type metadata accessor for SHA384();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA384Digest();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v40 - v23;
  v25 = type metadata accessor for SymmetricKey();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v41 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(v50, v20, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }

    outlined init with take of P256.Signing.PublicKey?(v20, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
    (*(v26 + 16))(v24, &v12[*(v9 + 40)], v25);
    v30 = v12;
    v31 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd;
    v32 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR;
  }

  else
  {
    if (EnumCaseMultiPayload < 2)
    {
      outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
      v33 = *(v26 + 56);
      v33(v24, 1, 1, v25);
LABEL_9:
      outlined destroy of P256.Signing.PrivateKey?(v24, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      return (v33)(v51, 1, 1, v25);
    }

    outlined init with take of P256.Signing.PublicKey?(v20, v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    (*(v26 + 16))(v24, &v16[*(v13 + 56)], v25);
    v30 = v16;
    v31 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd;
    v32 = &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR;
  }

  outlined destroy of P256.Signing.PrivateKey?(v30, v31, v32);
  v33 = *(v26 + 56);
  v33(v24, 0, 1, v25);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    goto LABEL_9;
  }

  v35 = v41;
  (*(v26 + 32))(v41, v24, v25);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  v36 = v43;
  v37 = v47;
  dispatch thunk of HashFunction.init()();
  v38 = v42;
  dispatch thunk of HashFunction.finalize()();
  (*(v46 + 8))(v36, v37);
  v39 = v51;
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11tlsExporter6secret5label7contextAA12SymmetricKeyVqd___SS6DigestQzt10Foundation15ContiguousBytesRd__lFZAA6SHA384V_AJTt3g5(v35, v48, v49, v38, v51);
  (*(v44 + 8))(v38, v45);
  (*(v26 + 8))(v35, v25);
  return (v33)(v39, 0, 1, v25);
}

uint64_t specialized SessionKeyManager.generateHashForAuthenticator(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24[0] = type metadata accessor for SHA384Digest();
  v6 = *(v24[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v24[0]);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA384();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = xmmword_1B26C6130;
  v26 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  result = dispatch thunk of HashFunction.init()();
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v17 = 0;
    if (v16 == 2)
    {
      v17 = *(a1 + 24);
    }
  }

  else if (v16)
  {
    v17 = a1 >> 32;
  }

  else
  {
    v17 = BYTE6(a2);
  }

  if (v17 < a3)
  {
    __break(1u);
  }

  else
  {
    v18 = Data._Representation.subscript.getter();
    v20 = v19;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v18, v19);
    outlined consume of Data._Representation(v18, v20);
    v21 = dispatch thunk of HashFunction.finalize()();
    MEMORY[0x1EEE9AC00](v21);
    v24[-2] = &v25;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
    v22 = v24[0];
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v6 + 8))(v9, v22);
    (*(v11 + 8))(v14, v10);
    v23 = v25;
    outlined copy of Data._Representation(v25, *(&v25 + 1));
    outlined consume of Data._Representation(v23, *(&v23 + 1));
    return v23;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = specialized RandomAccessCollection<>.distance(from:to:)(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 >= v12)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v7 <= 1)
    {
LABEL_26:
      v14 = Data._Representation.subscript.getter();
      v16 = v15;
      result = outlined consume of Data._Representation(v5, a3);
      *a4 = v14;
      a4[1] = v16;
      return result;
    }

    if (v7 == 2)
    {
      v13 = *(v5 + 16);
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for HandshakeStateMachine(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = xmmword_1B26C5EF0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v21[3] = &type metadata for SwiftTLSDefaultClock;
  v21[4] = &protocol witness table for SwiftTLSDefaultClock;
  _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configuration5clockAC10Foundation4DataV_AC13ConfigurationVAA0A8TLSClock_ptAA8TLSErrorOYKcfC(a1, a2, a3, v21, v19, v14);
  if (v5)
  {
    v15 = v19[0];
    v16 = v19[1];
    v17 = v20;
    result = outlined consume of ByteBuffer?(0, 0xF000000000000000);
    *a4 = v15;
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
  }

  else
  {
    outlined consume of ByteBuffer?(0, 0xF000000000000000);
    return _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v14, a5, type metadata accessor for HandshakeStateMachine);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configuration5clockAC10Foundation4DataV_AC13ConfigurationVAA0A8TLSClock_ptAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v64 = &v56 - v18;
  v63 = type metadata accessor for SessionTicket();
  v19 = *(v63 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = xmmword_1B26C5EF0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  outlined copy of Data._Representation(a1, a2);
  _s15SwiftTLSLibrary13SessionTicketV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfC(a1, a2, v66, v22);
  if (v6)
  {
    v23 = a4;
    v24 = v66[0];
    v25 = v66[1];
    v26 = v67;
    __swift_destroy_boxed_opaque_existential_0(v23);
    outlined destroy of HandshakeStateMachine.Configuration(a3);
    outlined consume of Data._Representation(a1, a2);
    result = outlined consume of ByteBuffer?(0, 0xF000000000000000);
    *a5 = v24;
    *(a5 + 8) = v25;
    *(a5 + 16) = v26;
  }

  else
  {
    v60 = a1;
    v61 = a2;
    v62 = 0;
    v28 = type metadata accessor for HandshakeStateMachine(0);
    v29 = a6 + v28[7];
    v59 = a4;
    outlined init with copy of SwiftTLSClock(a4, v29);
    v65[0] = 0;
    MEMORY[0x1B274ED00](v65, 8);
    v30 = v65[0];
    v65[0] = 0;
    MEMORY[0x1B274ED00](v65, 8);
    v31 = v65[0];
    v65[0] = 0;
    MEMORY[0x1B274ED00](v65, 8);
    v32 = v65[0];
    v65[0] = 0;
    MEMORY[0x1B274ED00](v65, 8);
    v33 = v65[0];
    v34 = (a6 + v28[8]);
    *v34 = v30;
    v34[1] = v31;
    v34[2] = v32;
    v34[3] = v33;
    v35 = a6 + v28[9];
    v36 = *(a3 + 48);
    *(v35 + 32) = *(a3 + 32);
    *(v35 + 48) = v36;
    *(v35 + 64) = *(a3 + 64);
    v37 = *(a3 + 16);
    *v35 = *a3;
    *(v35 + 16) = v37;
    v38 = a6 + v28[6];
    v58 = v22;
    v39 = v64;
    outlined init with copy of SessionTicket(v22, v64, type metadata accessor for SessionTicket);
    v40 = *(v19 + 56);
    v41 = v63;
    v40(v39, 0, 1, v63);
    v42 = type metadata accessor for PAKEClientState(0);
    v43 = *(*(v42 - 8) + 56);
    v43(v68, 1, 1, v42);
    v44 = type metadata accessor for HandshakeState.IdleState(0);
    v57 = v44[5];
    v40(v38 + v57, 1, 1, v41);
    v45 = v44[8];
    v43(v38 + v45, 1, 1, v42);
    v46 = *(a3 + 48);
    *(v38 + 32) = *(a3 + 32);
    *(v38 + 48) = v46;
    *(v38 + 64) = *(a3 + 64);
    v47 = *(a3 + 16);
    *v38 = *a3;
    *(v38 + 16) = v47;
    outlined init with copy of HandshakeStateMachine.Configuration(a3, v65);
    outlined assign with take of PartialHandshakeResult?(v64, v38 + v57, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    v48 = v44[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    swift_storeEnumTagMultiPayload();
    *(v38 + v44[7]) = MEMORY[0x1E69E7CC0];
    outlined assign with take of PartialHandshakeResult?(v68, v38 + v45, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, logger);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v60;
    v53 = v61;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1B25F5000, v50, v51, "client state machine initialized with session ticket", v55, 2u);
      MEMORY[0x1B274ECF0](v55, -1, -1);
    }

    outlined consume of Data._Representation(v54, v53);
    __swift_destroy_boxed_opaque_existential_0(v59);
    return outlined destroy of SessionTicket(v58, type metadata accessor for SessionTicket);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = &v83 - v13;
  v14 = type metadata accessor for ImportedPSK(0);
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RawEPSK(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for GeneralEPSK(0);
  v87 = *(v22 - 8);
  v23 = *(v87 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v83 - v27;
  *a4 = xmmword_1B26C5EF0;
  *(a4 + 16) = 0;
  v88 = a4;
  *(a4 + 24) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v89 = a2;
  if (*(a2 + 64))
  {
    v85 = v4;
    v30 = *a1;
    v31 = a1[1];
    v32 = a1[2];
    v33 = *(type metadata accessor for EPSK(0) + 20);
    v34 = *(v18 + 20);
    v35 = type metadata accessor for SymmetricKey();
    (*(*(v35 - 8) + 16))(v21 + v34, a1 + v33, v35);
    *v21 = v30;
    v21[1] = v31;
    v21[2] = v32;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v21, v28, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    outlined copy of Data._Representation(v30, v31);
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v36);
    }

    v86 = a1;
    v36[2] = v38 + 1;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v28, v36 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v38, type metadata accessor for GeneralEPSK);
    v93 = v36;
  }

  else
  {
    v39 = _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(_s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfCTv_r);
    v42 = v39;
    if (v4)
    {
      v43 = v40;
      v44 = v41;
      outlined destroy of HandshakeStateMachine.Configuration(v89);
      outlined destroy of SessionTicket(a1, type metadata accessor for EPSK);
      result = outlined consume of ByteBuffer?(0, 0xF000000000000000);
      v46 = v86;
      *v86 = v42;
      v46[1] = v43;
      *(v46 + 16) = v44;
      return result;
    }

    v85 = 0;
    v86 = a1;
    v47 = *(v39 + 16);
    if (v47)
    {
      v92[0] = v29;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
      v48 = v92[0];
      v49 = *(v84 + 80);
      v83 = v42;
      v50 = v42 + ((v49 + 32) & ~v49);
      v51 = *(v84 + 72);
      v52 = v87;
      do
      {
        outlined init with copy of SessionTicket(v50, v17, type metadata accessor for ImportedPSK);
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v17, v26, type metadata accessor for ImportedPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        v92[0] = v48;
        v54 = *(v48 + 16);
        v53 = *(v48 + 24);
        if (v54 >= v53 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1);
          v52 = v87;
          v48 = v92[0];
        }

        *(v48 + 16) = v54 + 1;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v26, v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v54, type metadata accessor for GeneralEPSK);
        v50 += v51;
        --v47;
      }

      while (v47);
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
    }

    specialized Array.append<A>(contentsOf:)(v48);
  }

  v55 = type metadata accessor for HandshakeStateMachine(0);
  v56 = v88;
  v57 = v88 + v55[7];
  *(v57 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v57 + 32) = &protocol witness table for SwiftTLSDefaultClock;
  v92[0] = 0;
  MEMORY[0x1B274ED00](v92, 8);
  v58 = v92[0];
  v92[0] = 0;
  MEMORY[0x1B274ED00](v92, 8);
  v59 = v92[0];
  v92[0] = 0;
  MEMORY[0x1B274ED00](v92, 8);
  v60 = v92[0];
  v92[0] = 0;
  MEMORY[0x1B274ED00](v92, 8);
  v61 = v92[0];
  v62 = (v56 + v55[8]);
  *v62 = v58;
  v62[1] = v59;
  v62[2] = v60;
  v62[3] = v61;
  v63 = v56 + v55[9];
  v64 = v89;
  v65 = *(v89 + 48);
  *(v63 + 32) = *(v89 + 32);
  *(v63 + 48) = v65;
  *(v63 + 64) = *(v64 + 64);
  v66 = *(v64 + 16);
  *v63 = *v64;
  *(v63 + 16) = v66;
  v67 = v56 + v55[6];
  v68 = type metadata accessor for SessionTicket();
  v69 = *(*(v68 - 8) + 56);
  v69(v90, 1, 1, v68);
  v88 = v93;
  v70 = type metadata accessor for PAKEClientState(0);
  v71 = *(*(v70 - 8) + 56);
  v71(v91, 1, 1, v70);
  v72 = type metadata accessor for HandshakeState.IdleState(0);
  v87 = v72[5];
  v69(v67 + v87, 1, 1, v68);
  v73 = v72[8];
  v71(v67 + v73, 1, 1, v70);
  v74 = *(v64 + 48);
  *(v67 + 32) = *(v64 + 32);
  *(v67 + 48) = v74;
  *(v67 + 64) = *(v64 + 64);
  v75 = *(v64 + 16);
  *v67 = *v64;
  *(v67 + 16) = v75;
  outlined init with copy of HandshakeStateMachine.Configuration(v64, v92);
  outlined assign with take of PartialHandshakeResult?(v90, v67 + v87, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v76 = v72[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v67 + v72[7]) = v88;
  outlined assign with take of PartialHandshakeResult?(v91, v67 + v73, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  __swift_project_value_buffer(v77, logger);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = v86;
  if (v80)
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1B25F5000, v78, v79, "client state machine initialized with epsk", v82, 2u);
    MEMORY[0x1B274ECF0](v82, -1, -1);
  }

  return outlined destroy of SessionTicket(v81, type metadata accessor for EPSK);
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v52 - v12;
  v55 = type metadata accessor for PAKEClientState(0);
  v54 = *(v55 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a4 = xmmword_1B26C5EF0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v16 = type metadata accessor for HandshakeStateMachine(0);
  v17 = (a4 + v16[7]);
  v17[3] = &type metadata for SwiftTLSDefaultClock;
  v17[4] = &protocol witness table for SwiftTLSDefaultClock;
  *&v61[0] = 0;
  MEMORY[0x1B274ED00](v61, 8);
  v18 = *&v61[0];
  *&v61[0] = 0;
  MEMORY[0x1B274ED00](v61, 8);
  v19 = *&v61[0];
  *&v61[0] = 0;
  MEMORY[0x1B274ED00](v61, 8);
  v20 = *&v61[0];
  *&v61[0] = 0;
  MEMORY[0x1B274ED00](v61, 8);
  v21 = *&v61[0];
  v22 = (a4 + v16[8]);
  *v22 = v18;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  v23 = a4 + v16[9];
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a2 + 64);
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  outlined init with copy of HandshakeStateMachine.Configuration(a2, v61);
  outlined init with copy of PAKEClientConfiguration(a1, v61);
  v26 = v63;
  _s15SwiftTLSLibrary15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC(a1, v59, v15);
  if (v26)
  {
    v27 = v59[0];
    v28 = v59[1];
    v29 = v60;
    outlined destroy of HandshakeStateMachine.Configuration(a2);
    outlined destroy of PAKEClientConfiguration(a1);
    v30 = *(a4 + 16);
    outlined consume of ByteBuffer?(*a4, *(a4 + 8));
    __swift_destroy_boxed_opaque_existential_0(v17);
    v31 = *(v23 + 48);
    v61[2] = *(v23 + 32);
    v61[3] = v31;
    v62 = *(v23 + 64);
    v32 = *(v23 + 16);
    v61[0] = *v23;
    v61[1] = v32;
    result = outlined destroy of HandshakeStateMachine.Configuration(v61);
    v34 = v56;
    *v56 = v27;
    *(v34 + 1) = v28;
    *(v34 + 16) = v29;
  }

  else
  {
    v56 = a1;
    v63 = 0;
    v35 = a4 + v16[6];
    v36 = type metadata accessor for SessionTicket();
    v52 = *(*(v36 - 8) + 56);
    v52(v57, 1, 1, v36);
    v53 = v15;
    v37 = v58;
    outlined init with copy of SessionTicket(v15, v58, type metadata accessor for PAKEClientState);
    v38 = *(v54 + 56);
    v39 = v55;
    v38(v37, 0, 1, v55);
    v40 = type metadata accessor for HandshakeState.IdleState(0);
    v41 = v40[5];
    v52(v35 + v41, 1, 1, v36);
    v42 = v40[8];
    v38(v35 + v42, 1, 1, v39);
    v43 = *(a2 + 48);
    *(v35 + 32) = *(a2 + 32);
    *(v35 + 48) = v43;
    *(v35 + 64) = *(a2 + 64);
    v44 = *(a2 + 16);
    *v35 = *a2;
    *(v35 + 16) = v44;
    outlined assign with take of PartialHandshakeResult?(v57, v35 + v41, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    v45 = v40[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    swift_storeEnumTagMultiPayload();
    *(v35 + v40[7]) = MEMORY[0x1E69E7CC0];
    outlined assign with take of PartialHandshakeResult?(v58, v35 + v42, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, logger);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v56;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B25F5000, v47, v48, "client state machine initialized with pake", v51, 2u);
      MEMORY[0x1B274ECF0](v51, -1, -1);

      outlined destroy of PAKEClientConfiguration(v50);
    }

    else
    {
      outlined destroy of PAKEClientConfiguration(v56);
    }

    return outlined destroy of SessionTicket(v53, type metadata accessor for PAKEClientState);
  }

  return result;
}

uint64_t HandshakeStateMachine.generateTLSExporterKey(label:)@<X0>(Swift::Int a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v8 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HandshakeState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v3 + *(v15 + 24), v14, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v14, v10, type metadata accessor for HandshakeState.ReadyState);
    v16 = &v10[*(ready + 44)];
    specialized SessionKeyManager.generateTLSExporterKey(_:)(a1, a2, a3);
    v17 = type metadata accessor for HandshakeState.ReadyState;
    v18 = v10;
  }

  else
  {
    v19 = type metadata accessor for SymmetricKey();
    (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    v17 = type metadata accessor for HandshakeState;
    v18 = v14;
  }

  return outlined destroy of SessionTicket(v18, v17);
}

uint64_t HandshakeStateMachine.generateHashForAuthenticator(transcript:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v8 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HandshakeState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v3 + *(v15 + 24), v14, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v14, v10, type metadata accessor for HandshakeState.ReadyState);
    v16 = &v10[*(ready + 44)];
    v17 = specialized SessionKeyManager.generateHashForAuthenticator(_:)(a1, a2, a3);
    outlined destroy of SessionTicket(v10, type metadata accessor for HandshakeState.ReadyState);
    return v17;
  }

  else
  {
    outlined destroy of SessionTicket(v14, type metadata accessor for HandshakeState);
    return 0;
  }
}

uint64_t HandshakeStateMachine.generateHMACForAuthenticator(transcript:key:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25[-v11];
  v13 = type metadata accessor for HandshakeState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v4 + *(v17 + 24), v16, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = outlined destroy of SessionTicket(v16, type metadata accessor for HandshakeState);
  if (EnumCaseMultiPayload != 6)
  {
    return 0;
  }

  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = a1 >> 32;
  }

  else
  {
    v21 = BYTE6(a2);
  }

  if (v21 < a3)
  {
    __break(1u);
  }

  else
  {
    v22 = Data._Representation.subscript.getter();
    v24 = v23;
    MEMORY[0x1EEE9AC00](v22);
    *&v25[-16] = a4;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(partial apply for specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:), &v25[-32], v22, v24);
    outlined consume of Data._Representation(v22, v24);
    return _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(v12);
  }

  return result;
}

uint64_t HandshakeStateMachine.peerALPN.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v2 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v21 + 24), v20, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    outlined destroy of SessionTicket(v20, type metadata accessor for HandshakeState);
    return 0;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v8, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v28 = &v8[*(v5 + 32)];
        v24 = *v28;
        v29 = *(v28 + 1);

        v26 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v27 = v8;
      }

      else
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v4, type metadata accessor for HandshakeState.ReadyState);
        v31 = &v4[*(ready + 32)];
        v24 = *v31;
        v32 = *(v31 + 1);

        v26 = type metadata accessor for HandshakeState.ReadyState;
        v27 = v4;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v23 = &v16[*(v13 + 24)];
      v24 = *v23;
      v25 = *(v23 + 1);

      v26 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v27 = v16;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v12, type metadata accessor for HandshakeState.ServerCertificateState);
      v24 = *(v12 + 9);
      v30 = *(v12 + 10);

      v26 = type metadata accessor for HandshakeState.ServerCertificateState;
      v27 = v12;
    }

    outlined destroy of SessionTicket(v27, v26);
  }

  return v24;
}

uint64_t HandshakeStateMachine.pakeOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v46 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HandshakeState(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v48 + *(v31 + 24), v30, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v37 = v44;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v30, v44, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v34 = *(v37 + *(v45 + 52));
        v38 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
      }

      else
      {
        v37 = v46;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v30, v46, type metadata accessor for HandshakeState.ReadyState);
        v34 = *(v37 + *(ready + 60));
        v38 = type metadata accessor for HandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v30, v8, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        outlined init with copy of Any?(&v8[*(v41 + 48)], v17, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
        outlined destroy of SessionTicket(v8, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v33 = type metadata accessor for PAKEClientState(0);
        v34 = (*(*(v33 - 8) + 48))(v17, 1, v33) != 1;
        v35 = v17;
        goto LABEL_8;
      }

      v37 = v42;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v30, v42, type metadata accessor for HandshakeState.ServerCertificateState);
      v34 = *(v37 + *(v43 + 52));
      v38 = type metadata accessor for HandshakeState.ServerCertificateState;
    }

    outlined destroy of SessionTicket(v37, v38);
    return v34;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined destroy of SessionTicket(v30, type metadata accessor for HandshakeState);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v30, v12, type metadata accessor for HandshakeState.ServerHelloState);
    outlined init with copy of Any?(&v12[*(v9 + 48)], v20, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    outlined destroy of SessionTicket(v12, type metadata accessor for HandshakeState.ServerHelloState);
    v39 = type metadata accessor for PAKEClientState(0);
    v34 = (*(*(v39 - 8) + 48))(v20, 1, v39) != 1;
    outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    return v34;
  }

  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v30, v26, type metadata accessor for HandshakeState.ClientHelloState);
  outlined init with copy of Any?(&v26[*(v23 + 48)], v22, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  outlined destroy of SessionTicket(v26, type metadata accessor for HandshakeState.ClientHelloState);
  v36 = type metadata accessor for PAKEClientState(0);
  v34 = (*(*(v36 - 8) + 48))(v22, 1, v36) != 1;
  v35 = v22;
LABEL_8:
  outlined destroy of P256.Signing.PrivateKey?(v35, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  return v34;
}

uint64_t HandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v1 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready - 8);
  v66 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionTicket();
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v60 - v19;
  v21 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v60 - v30;
  v32 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for HandshakeState(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v69 + *(v40 + 24), v39, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v42 = v68;
    if (!EnumCaseMultiPayload)
    {
      v47 = type metadata accessor for HandshakeState;
      v48 = v39;
LABEL_13:
      outlined destroy of SessionTicket(v48, v47);
      return 0;
    }

    if (EnumCaseMultiPayload == 1)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v39, v35, type metadata accessor for HandshakeState.ClientHelloState);
      outlined init with copy of Any?(&v35[*(v32 + 40)], v31, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v43 = *(v42 + 48);
      v44 = v67;
      if (v43(v31, 1, v67) == 1)
      {
        outlined destroy of SessionTicket(v35, type metadata accessor for HandshakeState.ClientHelloState);
        outlined destroy of P256.Signing.PrivateKey?(v31, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
        return 0;
      }

      v52 = *&v31[*(v44 + 48)];
      outlined destroy of SessionTicket(v31, type metadata accessor for SessionTicket);
      v45 = NamedGroup.metadataDescription.getter(v52);
      v50 = type metadata accessor for HandshakeState.ClientHelloState;
      v51 = v35;
LABEL_32:
      outlined destroy of SessionTicket(v51, v50);
      return v45;
    }

    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v39, v27, type metadata accessor for HandshakeState.ServerHelloState);
    v49 = &v27[*(v24 + 32)];
    if (v49[2])
    {
      v45 = 0;
    }

    else
    {
      v45 = NamedGroup.metadataDescription.getter(*v49);
    }

    v46 = type metadata accessor for HandshakeState.ServerHelloState;
LABEL_31:
    v50 = v46;
    v51 = v27;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v27 = v64;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v39, v64, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
      v45 = NamedGroup.metadataDescription.getter(*(v27 + 34));
      v46 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
    }

    else
    {
      v27 = v66;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v39, v66, type metadata accessor for HandshakeState.ReadyState);
      if (v27[72])
      {
        v45 = 0;
      }

      else
      {
        v45 = NamedGroup.metadataDescription.getter(*(v27 + 35));
      }

      v46 = type metadata accessor for HandshakeState.ReadyState;
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 3)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v39, v9, type metadata accessor for HandshakeState.ServerCertificateState);
    v45 = NamedGroup.metadataDescription.getter(*(v9 + 34));
    v50 = type metadata accessor for HandshakeState.ServerCertificateState;
    v51 = v9;
    goto LABEL_32;
  }

  v27 = v65;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v39, v65, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined init with copy of Any?(&v27[*(v21 + 20)], v20, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  if ((*(v62 + 48))(v20, 1, v63) != 1)
  {
    v53 = v61;
    outlined init with copy of SessionTicket(v20, v61, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v54 = swift_getEnumCaseMultiPayload();
    if (v54)
    {
      if (v54 == 1)
      {
        outlined destroy of SessionTicket(v20, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
        v47 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        v48 = v27;
        goto LABEL_13;
      }

      v57 = v53;
      v58 = v60;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v57, v60, type metadata accessor for SessionTicket);
      v55 = *(v58 + *(v67 + 48));
      outlined destroy of SessionTicket(v58, type metadata accessor for SessionTicket);
    }

    else
    {
      v55 = *(v53 + 2);
      v56 = *(v53 + 16);
    }

    outlined destroy of SessionTicket(v20, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v45 = NamedGroup.metadataDescription.getter(v55);
    v46 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    goto LABEL_31;
  }

  outlined destroy of SessionTicket(v27, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  return 0;
}

uint64_t HandshakeStateMachine.pakeClientState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.IdleState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HandshakeState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v1 + *(v15 + 24), v14, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v14, v6, type metadata accessor for HandshakeState.ClientHelloState);
    outlined init with copy of Any?(&v6[*(v3 + 48)], a1, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v17 = type metadata accessor for HandshakeState.ClientHelloState;
    v18 = v6;
  }

  else if (EnumCaseMultiPayload)
  {
    v19 = type metadata accessor for PAKEClientState(0);
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    v17 = type metadata accessor for HandshakeState;
    v18 = v14;
  }

  else
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v14, v10, type metadata accessor for HandshakeState.IdleState);
    outlined init with copy of Any?(&v10[*(v7 + 32)], a1, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v17 = type metadata accessor for HandshakeState.IdleState;
    v18 = v10;
  }

  return outlined destroy of SessionTicket(v18, v17);
}

BOOL HandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v5 + 24), v4, type metadata accessor for HandshakeState);
  v6 = swift_getEnumCaseMultiPayload() > 5;
  outlined destroy of SessionTicket(v4, type metadata accessor for HandshakeState);
  return v6;
}

BOOL HandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v5 + 24), v4, type metadata accessor for HandshakeState);
  v6 = swift_getEnumCaseMultiPayload() != 0;
  outlined destroy of SessionTicket(v4, type metadata accessor for HandshakeState);
  return v6;
}

uint64_t HandshakeStateMachine.clientRandom.getter()
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = xmmword_1B26C6130;
  v12 = 0;
  v1 = (v0 + *(type metadata accessor for HandshakeStateMachine(0) + 32));
  v2 = v1[1];
  v8[0] = *v1;
  v8[1] = v2;
  v10[3] = MEMORY[0x1E69E6290];
  v10[4] = MEMORY[0x1E6969DF8];
  v10[0] = v8;
  v10[1] = &v9;
  v3 = __swift_project_boxed_opaque_existential_0(v10, MEMORY[0x1E69E6290]);
  v5 = *v3;
  v4 = v3[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v10);
  result = v11;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void HandshakeStateMachine.logUnexpectedMessage(message:)(uint64_t a1)
{
  v3 = type metadata accessor for HandshakeState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v1 + *(v7 + 24), v6, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v11 = 0x6548726576726573;
    if (EnumCaseMultiPayload == 1)
    {
      v11 = 0x6548746E65696C63;
    }

    if (EnumCaseMultiPayload)
    {
      v9 = v11;
    }

    else
    {
      v9 = 1701602409;
    }

    if (EnumCaseMultiPayload)
    {
      v10 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v10 = 0x80000001B26CD890;
      v9 = 0xD000000000000017;
    }

    else
    {
      v10 = 0xEC00000061746144;
      v9 = 0x726F467964616572;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = 0x80000001B26CD8D0;
    }

    else
    {
      v10 = 0x80000001B26CD8B0;
    }
  }

  outlined destroy of SessionTicket(v6, type metadata accessor for HandshakeState);
  v12 = 0xE800000000000000;
  v13 = *(a1 + 104);
  v14 = 0x64656873696E6966;
  if (v13 != 6)
  {
    v14 = 0xD000000000000010;
    v12 = 0x80000001B26CD8F0;
  }

  v15 = 0xEB00000000657461;
  v16 = 0x6369666974726563;
  if (v13 != 4)
  {
    v16 = 0xD000000000000011;
    v15 = 0x80000001B26CD910;
  }

  if (*(a1 + 104) <= 5u)
  {
    v14 = v16;
    v12 = v15;
  }

  v17 = 0x80000001B26CD950;
  v18 = 0xD000000000000013;
  if (v13 != 2)
  {
    v18 = 0xD000000000000012;
    v17 = 0x80000001B26CD930;
  }

  v19 = 0x6548726576726573;
  if (!*(a1 + 104))
  {
    v19 = 0x6548746E65696C63;
  }

  if (*(a1 + 104) <= 1u)
  {
    v18 = v19;
    v17 = 0xEB000000006F6C6CLL;
  }

  if (*(a1 + 104) <= 3u)
  {
    v20 = v18;
  }

  else
  {
    v20 = v14;
  }

  if (v13 <= 3)
  {
    v21 = v17;
  }

  else
  {
    v21 = v12;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v25 = 136315394;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v30);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v30);

    *(v25 + 14) = v28;
    _os_log_impl(&dword_1B25F5000, v23, v24, "unexpected message %s in state %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v26, -1, -1);
    MEMORY[0x1B274ECF0](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t Collection<>.confirmNegotiated(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = Sequence<>.contains(_:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  if (v6)
  {
    v12 = *(AssociatedTypeWitness - 8);
    (*(v12 + 16))(a3, a1, AssociatedTypeWitness);
    v8 = v12;
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v8 + 56);

  return v10(a3, v9, 1, AssociatedTypeWitness);
}

BOOL TLSHandshakeStateMachine.isServer.getter()
{
  v1 = type metadata accessor for TLSHandshakeStateMachine(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SessionTicket(v0, v4, type metadata accessor for TLSHandshakeStateMachine);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  outlined destroy of SessionTicket(v4, type metadata accessor for TLSHandshakeStateMachine);
  return v5;
}

uint64_t outlined init with copy of SwiftTLSClock(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt16)@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      v24 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1B26C6130;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__b, a2);
      v7 = __b;
      v8 = v24 | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      LOWORD(v24) = v4;
      BYTE2(v24) = BYTE2(v4);
      BYTE3(v24) = BYTE3(v4);
      BYTE4(v24) = BYTE4(v4);
      BYTE5(v24) = BYTE5(v4);
      BYTE6(v24) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v24 | ((WORD2(v24) | (BYTE6(v24) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = *a1;

  outlined consume of Data._Representation(v5, v4);
  __b = v5;
  v24 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1B26C6130;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = v24;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  v13 = __DataStorage._bytes.getter();
  if (v13)
  {
    v14 = v13;
    v15 = __DataStorage._offset.getter();
    v16 = v11 - v15;
    if (__OFSUB__(v11, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = __OFSUB__(v12, v11);
      v18 = v12 - v11;
      if (!v17)
      {
        v19 = MEMORY[0x1B274CD90]();
        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        memset((v14 + v16), a2, v20);
        *a1 = __b;
        a1[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = MEMORY[0x1B274CD90]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = MEMORY[0x1B274CD90]();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unint64_t type metadata accessor for SwiftTLSClock()
{
  result = lazy cache variable for type metadata for SwiftTLSClock;
  if (!lazy cache variable for type metadata for SwiftTLSClock)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SwiftTLSClock);
  }

  return result;
}

uint64_t type metadata completion function for TLSHandshakeStateMachine()
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for HandshakeStateMachine.ProcessStep(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for HandshakeStateMachine.ProcessStep(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *storeEnumTagSinglePayload for HandshakeStateMachine.ProcessStep(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
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

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV25calculateFinalClientHello06binderO006clientS019obfuscatedTicketAge8identityAA10ByteBufferV9CryptoKit09SymmetricD0V_AA0rS0Vzs6UInt32VAA9ExtensionO09PreSharedD0O11OfferedPSKsV11PSKIdentityVtFZAP6SHA384V_Tt3g5Tf4nndn_n(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v103 = a5;
  v107 = a2;
  v96 = a1;
  v9 = 0;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v10 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v80 - v11;
  v12 = type metadata accessor for SymmetricKey();
  v90 = *(v12 - 8);
  v91 = v12;
  v13 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA384();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SHA384Digest();
  v86 = *(v18 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  v105 = v18;
  v99 = v21;
  v22 = dispatch thunk of static Digest.byteCount.getter();
  *&v114[0] = specialized Data.init(count:)(v22);
  *(&v114[0] + 1) = v23;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v114, 0);
  v104 = *(&v114[0] + 1);
  v24 = *&v114[0];
  v25 = *(&v114[0] + 1) >> 62;
  if ((*(&v114[0] + 1) >> 62) > 1)
  {
    if (v25 == 2)
    {
      v9 = *(*&v114[0] + 16);
    }
  }

  else if (v25)
  {
    v9 = SLODWORD(v114[0]);
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMR);
  v26 = swift_allocObject();
  v106 = xmmword_1B26C6030;
  *(v26 + 16) = xmmword_1B26C6030;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;
  *(v26 + 48) = v103;
  *(v26 + 56) = a6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = v106;
  v28 = v104;
  *(v27 + 32) = v24;
  *(v27 + 40) = v28;
  *(v27 + 48) = v9;
  v113 = 0;
  v29 = v24;
  v30 = *(v107 + 96);
  outlined copy of Data._Representation(a3, a4);
  v93 = v29;
  outlined copy of Data._Representation(v29, v28);
  v102 = v26;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = a3;
  v89 = a4;
  v87 = a6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  v34 = &v30[88 * v33];
  *(v34 + 4) = v102;
  *(v34 + 5) = v27;
  v34[48] = v113;
  v34[112] = -96;
  v35 = v107;
  *(v107 + 96) = v30;
  v111 = xmmword_1B26C6130;
  v112 = 0;
  v36 = v35[5];
  v114[4] = v35[4];
  v114[5] = v36;
  v115 = v30;
  v37 = v35[1];
  v114[0] = *v35;
  v114[1] = v37;
  v38 = v35[3];
  v114[2] = v35[2];
  v114[3] = v38;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, logger);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = dispatch thunk of static Digest.byteCount.getter() + 3;
    _os_log_impl(&dword_1B25F5000, v40, v41, "bindersarray length should be %ld", v42, 0xCu);
    MEMORY[0x1B274ECF0](v42, -1, -1);
  }

  v43 = *(&v111 + 1) >> 62;
  if ((*(&v111 + 1) >> 62) > 1)
  {
    if (v43 != 2)
    {
      goto LABEL_22;
    }

    v44 = *(v111 + 24);
  }

  else
  {
    if (!v43)
    {
      goto LABEL_22;
    }

    v44 = v111 >> 32;
  }

  if (v44 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v83 = v27;
  v45 = Data._Representation.subscript.getter();
  v47 = v46;
  v48 = dispatch thunk of static Digest.byteCount.getter();
  specialized BidirectionalCollection.dropLast(_:)(v48 + 3, v45, v47, v109);
  v50 = *(&v109[0] + 1);
  v49 = *&v109[0];
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  v51 = v92;
  v52 = v95;
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v49, v50);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v49, v50);
  v81 = v50;
  v82 = v49;
  outlined consume of Data._Representation(v49, v50);
  v53 = v100;
  dispatch thunk of HashFunction.finalize()();
  (*(v94 + 8))(v51, v52);
  v54 = dispatch thunk of static Digest.byteCount.getter();
  v55 = v101;
  v56 = _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v54, v101);
  v57 = &v80;
  MEMORY[0x1EEE9AC00](v56);
  *(&v80 - 2) = v55;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  v58 = v97;
  v59 = v53;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v60 = _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(v58);
  v62 = v61;
  v64 = v63;
  outlined consume of Data._Representation(v93, v104);
  v65 = *(&v111 + 1) >> 62;
  if ((*(&v111 + 1) >> 62) > 1)
  {
    v66 = 0;
    if (v65 == 2)
    {
      v66 = *(v111 + 24);
    }
  }

  else if (v65)
  {
    v66 = v111 >> 32;
  }

  else
  {
    v66 = BYTE14(v111);
  }

  v67 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v67 == 2)
    {
      v68 = *(v60 + 24);
    }

    else
    {
      v68 = 0;
    }
  }

  else if (v67)
  {
    v68 = v60 >> 32;
  }

  else
  {
    v68 = BYTE6(v62);
  }

  v69 = __OFSUB__(v68, v64);
  v70 = v68 - v64;
  if (v69)
  {
    __break(1u);
  }

  else
  {
    v57 = v115;
    ByteBuffer.setImmutableBuffer(_:at:)(v60, v62, v64, v66 - v70);
    v58 = *(v57 + 2);
    v59 = swift_allocObject();
    *(v59 + 16) = v106;
    v72 = v88;
    v71 = v89;
    *(v59 + 32) = v88;
    *(v59 + 40) = v71;
    *(v59 + 48) = v103;
    *(v59 + 56) = v87;
    v50 = swift_allocObject();
    *(v50 + 16) = v106;
    *(v50 + 32) = v60;
    *(v50 + 40) = v62;
    *(v50 + 48) = v64;
    outlined copy of Data._Representation(v72, v71);
    outlined copy of Data._Representation(v60, v62);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_37;
    }
  }

  v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
LABEL_37:
  outlined consume of Data._Representation(v82, v81);

  v108 = 0;

  (*(v86 + 8))(v100, v105);
  result = (*(v90 + 8))(v101, v91);
  if (v58)
  {
    if (v58 <= *(v57 + 2))
    {
      v74 = &v57[88 * v58];
      v75 = *(v74 - 40);
      v109[0] = *(v74 - 56);
      v109[1] = v75;
      v76 = *(v74 - 24);
      v77 = *(v74 - 8);
      v78 = *(v74 + 8);
      v110 = v74[24];
      v109[3] = v77;
      v109[4] = v78;
      v109[2] = v76;
      *(v74 - 7) = v59;
      *(v74 - 6) = v50;
      *(v74 - 40) = v108;
      v74[24] = -96;
      outlined destroy of Extension(v109);
      *(v107 + 96) = v57;
      v79 = v111;
      outlined copy of Data._Representation(v111, *(&v111 + 1));
      outlined consume of Data._Representation(v79, *(&v79 + 1));
      outlined consume of Data._Representation(v60, v62);
      return v79;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t HandshakeState.IdleState.init(configuration:sessionToResume:epsks:pakeClientState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for HandshakeState.IdleState(0);
  v11 = v10[5];
  v12 = type metadata accessor for SessionTicket();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = v10[8];
  v14 = type metadata accessor for PAKEClientState(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v15;
  *(a5 + 64) = *(a1 + 64);
  v16 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v16;
  outlined assign with take of PartialHandshakeResult?(a2, a5 + v11, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v17 = v10[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(a5 + v10[7]) = a3;
  return outlined assign with take of PartialHandshakeResult?(a4, a5 + v13, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
}

uint64_t HandshakeState.logDescription.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v0, v4, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v9 = 0x6548746E65696C63;
    if (EnumCaseMultiPayload != 1)
    {
      v9 = 0x6548726576726573;
    }

    if (EnumCaseMultiPayload)
    {
      v8 = v9;
    }

    else
    {
      v8 = 1701602409;
    }
  }

  else
  {
    v6 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 5)
    {
      v6 = 0x726F467964616572;
    }

    v7 = 0xD000000000000019;
    if (EnumCaseMultiPayload != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload <= 4)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  outlined destroy of HandshakeState(v4, type metadata accessor for HandshakeState);
  return v8;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO18sendingClientHello_15sessionToResume5epsks17ephemeralKeyShare11currentTimeAA07PartialC6ResultVAA0fG0Vz_AA13SessionTicketVSgSayAA11GeneralEPSKVGAA025GeneratedEphemeralPrivateM0OSg10Foundation4DateVtAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *&v95 = a6;
  v92 = a7;
  v106 = a3;
  *&v94 = a5;
  v97 = a4;
  v103 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v99 = &v87 - v10;
  v11 = type metadata accessor for SymmetricKey();
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v104 = &v87 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v102 = &v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v93 = &v87 - v25;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v26 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v87 - v31;
  v96 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v33 = *(*(v96 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v96);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v98 = &v87 - v37;
  v38 = type metadata accessor for HandshakeState.IdleState(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for HandshakeState(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v107, v45, type metadata accessor for HandshakeState);
  v90 = v42;
  if (swift_getEnumCaseMultiPayload())
  {
    result = outlined destroy of HandshakeState(v45, type metadata accessor for HandshakeState);
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with take of HandshakeState.IdleState(v45, v41, type metadata accessor for HandshakeState.IdleState);
  v46 = v41[64];
  v47 = v38;
  outlined init with copy of Any?(&v41[*(v38 + 24)], v32, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(v32, v28, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  if (swift_getEnumCaseMultiPayload() < 4)
  {
    outlined destroy of P256.Signing.PrivateKey?(v28, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v107 = xmmword_1B26C6450;
    v109 = xmmword_1B26C6450;
    LOBYTE(v110) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeState(v41, type metadata accessor for HandshakeState.IdleState);
    result = outlined destroy of P256.Signing.PrivateKey?(v32, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v49 = v95;
    *v95 = v107;
    *(v49 + 16) = 2;
    return result;
  }

  v50 = v93;
  v51 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(v93, a1, v103, v106, v46, v94);
  v88 = v52;
  v89 = v51;
  v87 = v53;
  outlined destroy of P256.Signing.PrivateKey?(v32, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  outlined init with take of P256.Signing.PublicKey?(v50, v32, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  v54 = *(v41 + 3);
  v111 = *(v41 + 2);
  v112 = v54;
  v113 = v41[64];
  v55 = *(v41 + 1);
  v109 = *v41;
  v110 = v55;
  v56 = *(a1 + 80);
  v121 = *(a1 + 72);
  v57 = *(a1 + 40);
  v94 = *(a1 + 56);
  v95 = v57;
  v58 = *(a1 + 16);
  v114 = *a1;
  v115 = v58;
  v59 = *(a1 + 32);
  v60 = *(a1 + 48);
  v61 = *(a1 + 64);
  v62 = *(a1 + 80);
  v120 = *(a1 + 96);
  v118 = v61;
  v119 = v62;
  v116 = v59;
  v117 = v60;
  v93 = ClientHello.serverCertificateTypes.getter();
  outlined init with copy of Any?(v97, v102, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v63 = v96;
  outlined init with copy of Any?(v32, &v36[*(v96 + 36)], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(v103, v104, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  outlined init with copy of Any?(&v41[*(v47 + 32)], v105, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v64 = v63[8];
  v65 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  (*(*(v65 - 8) + 56))(&v36[v64], 1, 1, v65);
  v66 = v63[10];
  v67 = type metadata accessor for SessionTicket();
  (*(*(v67 - 8) + 56))(&v36[v66], 1, 1, v67);
  v68 = v63[12];
  v69 = type metadata accessor for PAKEClientState(0);
  (*(*(v69 - 8) + 56))(&v36[v68], 1, 1, v69);
  v70 = v112;
  *(v36 + 2) = v111;
  *(v36 + 3) = v70;
  v36[64] = v113;
  v71 = v110;
  *v36 = v109;
  *(v36 + 1) = v71;
  v72 = v95;
  *(v36 + 88) = v94;
  *(v36 + 72) = v72;
  *(v36 + 13) = v121;
  *(v36 + 14) = v56;
  *(v36 + 15) = v93;
  outlined init with copy of HandshakeStateMachine.Configuration(&v109, &v108);

  outlined assign with take of PartialHandshakeResult?(v102, &v36[v64], &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  outlined assign with take of PartialHandshakeResult?(v104, &v36[v66], &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  *&v36[v63[11]] = v106;

  outlined assign with take of PartialHandshakeResult?(v105, &v36[v68], &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v32, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v73 = v98;
  outlined init with take of HandshakeState.IdleState(v36, v98, type metadata accessor for HandshakeState.ClientHelloState);
  v74 = v73 + v63[9];
  v75 = v99;
  specialized ClientSessionKeyManager.clientEarlyTrafficSecret.getter(v99);
  v77 = v100;
  v76 = v101;
  result = (*(v100 + 48))(v75, 1, v101);
  if (result == 1)
  {
    goto LABEL_8;
  }

  v78 = v107;
  outlined destroy of HandshakeState(v107, type metadata accessor for HandshakeState);
  outlined destroy of HandshakeState(v41, type metadata accessor for HandshakeState.IdleState);
  v79 = *(v77 + 32);
  v80 = v91;
  v79(v91, v75, v76);
  outlined init with take of HandshakeState.IdleState(v73, v78, type metadata accessor for HandshakeState.ClientHelloState);
  swift_storeEnumTagMultiPayload();
  v81 = type metadata accessor for PartialHandshakeResult(0);
  v82 = v81[5];
  v83 = v92;
  v79(v92 + v82, v80, v76);
  v84 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v85 = *(*(v84 - 8) + 56);
  v85(v83 + v82, 0, 1, v84);
  result = v85(v83 + v81[6], 1, 1, v84);
  v86 = v88;
  *v83 = v89;
  v83[1] = v86;
  v83[2] = v87;
  *(v83 + v81[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t HandshakeState.ReadyState.generateHMACForAuthenticator(transcript:key:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v18[-v11];
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 == 2)
    {
      v14 = *(a1 + 24);
    }
  }

  else if (v13)
  {
    v14 = a1 >> 32;
  }

  else
  {
    v14 = BYTE6(a2);
  }

  if (v14 < a3)
  {
    __break(1u);
  }

  else
  {
    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    MEMORY[0x1EEE9AC00](v15);
    *&v18[-16] = a4;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(partial apply for specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:), &v18[-32], v15, v17);
    outlined consume of Data._Representation(v15, v17);
    return _s15SwiftTLSLibrary10ByteBufferV5bytesACx_tcSTRzs5UInt8V7ElementRtzlufC9CryptoKit24HashedAuthenticationCodeVyAI6SHA384VG_Tt0g5(v12);
  }

  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.negotiatedCipherSuite.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SessionTicket();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of HandshakeState(v1, v9, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v9;
    }

    else
    {
      outlined init with take of HandshakeState.IdleState(v9, v5, type metadata accessor for SessionTicket);
      v11 = *&v5[*(v2 + 44)];
      outlined destroy of HandshakeState(v5, type metadata accessor for SessionTicket);
    }
  }

  else
  {
    v11 = *v9;
    v12 = v9[2];
  }

  return v11;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.negotiatedGroup.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SessionTicket();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of HandshakeState(v1, v9, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 1);
    v13 = *(v9 + 2);

LABEL_6:
    v12 = 0;
    return v11 | (v12 << 16);
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of HandshakeState.IdleState(v9, v5, type metadata accessor for SessionTicket);
    v11 = *&v5[*(v2 + 48)];
    outlined destroy of HandshakeState(v5, type metadata accessor for SessionTicket);
    goto LABEL_6;
  }

  v11 = 0;
  v12 = 1;
  return v11 | (v12 << 16);
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO011ClientHelloD0V07sendingeF008originalD006clientF015sessionToResume5epsks11useRawEPSKs17ephemeralKeyShare11currentTimeAE5state_AA10ByteBufferV0iF5BytestAC04IdleD0V_AA0eF0VzAA13SessionTicketVSgSayAA11GeneralEPSKVGSbAA025GeneratedEphemeralPrivateR0OSg10Foundation4DateVtAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v68 = a8;
  v69 = a7;
  LODWORD(v67) = a6;
  v88 = a5;
  v70 = a4;
  *&v74 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v71 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v72 = &v59 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v59 - v30;
  v66 = type metadata accessor for HandshakeState.IdleState(0);
  outlined init with copy of Any?(v74 + *(v66 + 24), v31, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(v31, v27, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v33 = v70;
    v34 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(v23, a3, v70, v88, v67 & 1, v68);
    v67 = v35;
    v68 = v34;
    v65 = v36;
    outlined destroy of P256.Signing.PrivateKey?(v31, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    outlined init with take of P256.Signing.PublicKey?(v23, v31, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
    swift_storeEnumTagMultiPayload();
    v37 = v74;
    v38 = *(v74 + 48);
    v78 = *(v74 + 32);
    v79 = v38;
    v80 = *(v74 + 64);
    v39 = *(v74 + 16);
    v76 = *v74;
    v77 = v39;
    v40 = *(a3 + 72);
    v63 = *(a3 + 80);
    v64 = v40;
    v41 = *(a3 + 40);
    v61 = *(a3 + 56);
    v62 = v41;
    v42 = *(a3 + 16);
    v81 = *a3;
    v82 = v42;
    v43 = *(a3 + 32);
    v44 = *(a3 + 48);
    v45 = *(a3 + 64);
    v46 = *(a3 + 80);
    v87 = *(a3 + 96);
    v85 = v45;
    v86 = v46;
    v83 = v43;
    v84 = v44;
    v60 = ClientHello.serverCertificateTypes.getter();
    outlined init with copy of Any?(v69, v72, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v47 = type metadata accessor for HandshakeState.ClientHelloState(0);
    outlined init with copy of Any?(v31, a1 + v47[9], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v48 = v71;
    outlined init with copy of Any?(v33, v71, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    outlined init with copy of Any?(v37 + *(v66 + 32), v73, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v49 = v47[8];
    v50 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
    (*(*(v50 - 8) + 56))(a1 + v49, 1, 1, v50);
    v51 = v47[10];
    v52 = type metadata accessor for SessionTicket();
    (*(*(v52 - 8) + 56))(a1 + v51, 1, 1, v52);
    v53 = v47[12];
    v54 = type metadata accessor for PAKEClientState(0);
    (*(*(v54 - 8) + 56))(a1 + v53, 1, 1, v54);
    v55 = v79;
    *(a1 + 32) = v78;
    *(a1 + 48) = v55;
    *(a1 + 64) = v80;
    v56 = v77;
    *a1 = v76;
    *(a1 + 16) = v56;
    v57 = v62;
    *(a1 + 88) = v61;
    *(a1 + 72) = v57;
    v58 = v63;
    *(a1 + 104) = v64;
    *(a1 + 112) = v58;
    *(a1 + 120) = v60;
    outlined init with copy of HandshakeStateMachine.Configuration(&v76, &v75);

    outlined assign with take of PartialHandshakeResult?(v72, a1 + v49, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    outlined assign with take of PartialHandshakeResult?(v48, a1 + v51, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    *(a1 + v47[11]) = v88;

    outlined assign with take of PartialHandshakeResult?(v73, a1 + v53, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v31, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    return v68;
  }

  else
  {
    outlined destroy of P256.Signing.PrivateKey?(v27, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v74 = xmmword_1B26C6450;
    v76 = xmmword_1B26C6450;
    LOBYTE(v77) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = outlined destroy of P256.Signing.PrivateKey?(v31, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    *a9 = v74;
    *(a9 + 16) = 2;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC019EncryptedExtensionsD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v162 = a8;
  v161 = a7;
  v160 = a6;
  v165 = a5;
  v167 = a4;
  v166 = a3;
  v156 = a1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v168 = *(v169 - 8);
  v11 = *(v168 + 64);
  v12 = MEMORY[0x1EEE9AC00](v169);
  v159 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v153 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v158 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v153 - v19;
  v20 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v174 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v173 = &v153 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v164 = (&v153 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v178 = &v153 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v153 - v35;
  v172 = type metadata accessor for SessionTicket();
  v37 = *(*(v172 - 1) + 64);
  v38 = MEMORY[0x1EEE9AC00](v172);
  v163 = &v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v153 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v157 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v153 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v155 = &v153 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v153 - v52;
  v54 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v55 = *(a2 + v54[11]);
  v190 = v54;
  if ((v55 & 1) == 0 && (*(a2 + v54[10]) & 1) == 0)
  {
    outlined init with copy of Any?(a2 + v54[12], v53, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v56 = type metadata accessor for PAKEClientState(0);
    v57 = v47;
    v58 = a2;
    v59 = (*(*(v56 - 8) + 48))(v53, 1, v56);
    outlined destroy of P256.Signing.PrivateKey?(v53, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v54 = v190;
    v60 = v59 == 1;
    a2 = v58;
    v47 = v57;
    if (v60)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, logger);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1B25F5000, v62, v63, "received server finished message while not resuming session or using an external pre shared key", v64, 2u);
        MEMORY[0x1B274ECF0](v64, -1, -1);
      }

      v181 = xmmword_1B26C6430;
      v65 = 2;
      LOBYTE(v182) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v66 = 0;
      v67 = 4;
      goto LABEL_49;
    }
  }

  v68 = v54;
  v69 = type metadata accessor for PeerCertificateBundle(0);
  v70 = *(v69 - 8);
  v71 = *(v70 + 56);
  v179 = v47;
  v171 = v71;
  v170 = v70 + 56;
  v71(v47, 1, 1, v69);
  v72 = a2;
  v73 = v68[5];
  v74 = v72;
  outlined init with copy of Any?(v72 + v73, v36, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v75 = *(v21 + 48);
  v76 = v75(v36, 1, v20);
  v154 = v69;
  if (v76 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v36, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v77 = v179;
      outlined destroy of P256.Signing.PrivateKey?(v179, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
      outlined init with take of HandshakeState.IdleState(v36, v41, type metadata accessor for SessionTicket);
      v78 = *&v41[v172[11]];
      v79 = *&v41[v172[12]];
      outlined init with copy of HandshakeState(&v41[v172[14]], v77, type metadata accessor for PeerCertificateBundle);
      outlined destroy of HandshakeState(v41, type metadata accessor for SessionTicket);
      v80 = 1;
      v171(v77, 0, 1, v69);
      LODWORD(v178) = 0;
      LODWORD(v173) = 0;
      v81 = 0;
      v82 = v177;
      v83 = v74;
      v84 = v77;
LABEL_17:
      v88 = v176;
      goto LABEL_33;
    }

    outlined destroy of HandshakeState(v36, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  }

  v85 = v74 + v73;
  v83 = v74;
  outlined init with copy of Any?(v85, v34, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v86 = v75(v34, 1, v20);
  v87 = v174;
  if (v86 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v34, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
    LODWORD(v178) = 0;
    v79 = 0;
    v78 = 0;
    v80 = 1;
    LODWORD(v173) = 1;
    v81 = 1;
    v82 = v177;
    v84 = v179;
    goto LABEL_17;
  }

  v84 = v179;
  outlined destroy of P256.Signing.PrivateKey?(v179, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  v89 = v178;
  outlined init with take of HandshakeState.IdleState(v34, v178, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  v90 = v164;
  outlined init with copy of HandshakeState(v89, v164, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v82 = v177;
  v88 = v176;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v78 = *v90;
    }

    else
    {
      v93 = v163;
      outlined init with take of HandshakeState.IdleState(v90, v163, type metadata accessor for SessionTicket);
      v78 = *(v93 + v172[11]);
      outlined destroy of HandshakeState(v93, type metadata accessor for SessionTicket);
    }
  }

  else
  {
    v92 = *(v90 + 2);
    v78 = *v90;
  }

  outlined init with copy of HandshakeState(v178, v173, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  v94 = swift_getEnumCaseMultiPayload();
  if (!v94)
  {
    v79 = *(v173 + 2);
    v95 = *(v173 + 16);

LABEL_28:
    LODWORD(v173) = 0;
    goto LABEL_29;
  }

  if (v94 != 1)
  {
    v96 = v78;
    v97 = v83;
    v98 = v163;
    outlined init with take of HandshakeState.IdleState(v173, v163, type metadata accessor for SessionTicket);
    v99 = *(v98 + v172[12]);
    v100 = v98;
    v83 = v97;
    v78 = v96;
    v79 = v99;
    outlined destroy of HandshakeState(v100, type metadata accessor for SessionTicket);
    goto LABEL_28;
  }

  v79 = 0;
  LODWORD(v173) = 1;
LABEL_29:
  outlined init with take of HandshakeState.IdleState(v178, v87, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LODWORD(v178) = *(v87 + 2);
    v80 = *(v87 + 4);
  }

  else
  {
    outlined destroy of HandshakeState(v87, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    LODWORD(v178) = 0;
    v80 = 1;
  }

  v171(v84, 1, 1, v69);
  v81 = 0;
LABEL_33:
  outlined init with copy of Any?(v83 + v190[9], v82, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v101 = v175;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v188, v88);
  if (v101)
  {
    v67 = v188[0];
    v66 = v188[1];
    v65 = v189;
    outlined destroy of P256.Signing.PrivateKey?(v82, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    outlined destroy of P256.Signing.PrivateKey?(v84, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    goto LABEL_49;
  }

  v102 = v167 >> 62;
  if ((v167 >> 62) > 1)
  {
    v103 = v165;
    if (v102 == 2)
    {
      v104 = *(v166 + 24);
    }

    else
    {
      v104 = 0;
    }
  }

  else
  {
    v103 = v165;
    if (v102)
    {
      v104 = v166 >> 32;
    }

    else
    {
      v104 = BYTE6(v167);
    }
  }

  if (v104 < v103)
  {
    __break(1u);
    goto LABEL_61;
  }

  LODWORD(v175) = v80;
  LODWORD(v176) = v79;
  LODWORD(v177) = v78;
  *&v181 = Data._Representation.subscript.getter();
  *(&v181 + 1) = v105;
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  v106 = v88;
  v107 = v169;
  v108 = static MessageAuthenticationCode.== infix<A>(_:_:)();
  outlined consume of Data._Representation(v181, *(&v181 + 1));
  v109 = *(v168 + 8);
  v109(v106, v107);
  if ((v108 & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_46:
      v110 = type metadata accessor for Logger();
      __swift_project_value_buffer(v110, logger);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v179;
      if (v113)
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_1B25F5000, v111, v112, "invalid server finished payload", v115, 2u);
        MEMORY[0x1B274ECF0](v115, -1, -1);
      }

      v181 = xmmword_1B26C6400;
      v65 = 2;
      LOBYTE(v182) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v82, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      outlined destroy of P256.Signing.PrivateKey?(v114, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
      v66 = 0;
      v67 = 6;
      goto LABEL_49;
    }

LABEL_61:
    swift_once();
    goto LABEL_46;
  }

  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v160, v161, v162);
  v116 = v159;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v188, v159);
  v118 = v169;
  *(&v182 + 1) = v169;
  v174 = 0;
  *&v183 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v181);
  (*(v168 + 16))(boxed_opaque_existential_1, v116, v118);
  __swift_project_boxed_opaque_existential_0(&v181, *(&v182 + 1));
  v120 = v174;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v121 = v120;
  v109(v116, v118);
  v122 = v180[0];
  v123 = v180[1];
  __swift_destroy_boxed_opaque_existential_0(&v181);
  v124 = 0;
  v186 = xmmword_1B26C6130;
  v187 = 0;
  v125 = v123 >> 62;
  if ((v123 >> 62) > 1)
  {
    if (v125 == 2)
    {
      v124 = *(v122 + 16);

      goto LABEL_56;
    }
  }

  else if (v125)
  {
    v124 = v122;
LABEL_56:
  }

  specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v122, v123, v124);
  outlined consume of Data._Representation(v122, v123);
  v126 = v186;
  v127 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v186, *(&v186 + 1), v187);
  v66 = v129;
  v130 = v123;
  if (!v121)
  {
    v174 = 0;
    outlined consume of Data._Representation(v122, v123);
    v131 = *(v83 + 48);
    v183 = *(v83 + 32);
    v184 = v131;
    v185 = *(v83 + 64);
    v132 = *(v83 + 16);
    v181 = *v83;
    v182 = v132;
    outlined init with take of P256.Signing.PublicKey?(v179, v157, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    v133 = v190;
    v134 = v190[7];
    v135 = (v83 + v190[6]);
    v136 = v135[1];
    v169 = *v135;
    v138 = *(v83 + v134 + 8);
    v167 = *(v83 + v134);
    v137 = v167;
    v166 = v138;
    v165 = *(v83 + v134 + 16);
    LODWORD(v172) = *(v83 + v190[8]);
    outlined init with take of P256.Signing.PublicKey?(v82, v158, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    LODWORD(v179) = *(v83 + v133[10]);
    v139 = v133[12];
    LODWORD(v190) = *(v83 + v133[13]);
    v140 = v155;
    outlined init with copy of Any?(v83 + v139, v155, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v141 = type metadata accessor for PAKEClientState(0);
    LODWORD(v168) = (*(*(v141 - 8) + 48))(v140, 1, v141) != 1;
    outlined init with copy of HandshakeStateMachine.Configuration(&v181, v180);

    outlined copy of Data?(v137, v138);
    outlined destroy of P256.Signing.PrivateKey?(v140, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    ready = type metadata accessor for HandshakeState.ReadyState(0);
    v143 = ready[7];
    v144 = v156;
    v171(v156 + v143, 1, 1, v154);
    v145 = (v144 + ready[8]);
    v146 = (v144 + ready[9]);
    *v146 = xmmword_1B26C5EF0;
    v146[2] = 0;
    v147 = v144 + ready[12];
    v148 = v184;
    *(v144 + 32) = v183;
    *(v144 + 48) = v148;
    *(v144 + 64) = v185;
    v149 = v182;
    *v144 = v181;
    *(v144 + 16) = v149;
    *(v144 + 66) = v177;
    *(v144 + 68) = v81;
    *(v144 + 70) = v176;
    *(v144 + 72) = v173;
    outlined assign with take of PartialHandshakeResult?(v157, v144 + v143, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    *v145 = v169;
    v145[1] = v136;
    v150 = v146[2];
    outlined consume of ByteBuffer?(*v146, v146[1]);
    v151 = v166;
    *v146 = v167;
    v146[1] = v151;
    v146[2] = v165;
    *(v144 + ready[10]) = v172;
    outlined init with take of P256.Signing.PublicKey?(v158, v144 + ready[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    *v147 = v178;
    *(v147 + 2) = v175;
    *(v144 + ready[13]) = v179;
    *(v144 + ready[14]) = v190;
    *(v144 + ready[15]) = v168;
    v152 = *(&v186 + 1);
    v65 = v186;
    outlined copy of Data._Representation(v186, *(&v186 + 1));
    outlined consume of Data._Representation(v65, v152);
    return v65;
  }

  v67 = v127;
  v65 = v128;
  outlined consume of Data._Representation(v122, v130);
  outlined destroy of P256.Signing.PrivateKey?(v82, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined destroy of P256.Signing.PrivateKey?(v179, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  outlined consume of Data._Representation(v126, *(&v126 + 1));
LABEL_49:
  *a10 = v67;
  *(a10 + 8) = v66;
  *(a10 + 16) = v65;
  return v65;
}

uint64_t HandshakeState.IdleState.epsks.getter()
{
  v1 = *(v0 + *(type metadata accessor for HandshakeState.IdleState(0) + 28));
}

uint64_t HandshakeState.IdleState.epsks.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HandshakeState.IdleState(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

__n128 HandshakeState.ClientHelloState.expectedLegacySessionID.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 HandshakeState.ClientHelloState.expectedLegacySessionID.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 104) = *(a1 + 32);
  return result;
}

uint64_t HandshakeState.ClientHelloState.allowedCipherSuites.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t HandshakeState.ClientHelloState.serverCertificateTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t HandshakeState.ClientHelloState.epsks.getter()
{
  v1 = *(v0 + *(type metadata accessor for HandshakeState.ClientHelloState(0) + 44));
}

uint64_t HandshakeState.ClientHelloState.epsks.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HandshakeState.ClientHelloState(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.negotiatedCipherSuite.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.negotiatedGroup.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.epskNegotiated.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.sessionResumed.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.ServerHelloState.pskNegotiatedIndex.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.serverALPN.getter()
{
  v1 = (v0 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HandshakeState.EncryptedExtensionsState.serverALPN.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.serverQUICTransportParameters.getter()
{
  v1 = (v0 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 28));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data?(*v1, v1[1]);
  return v2;
}

uint64_t HandshakeState.EncryptedExtensionsState.serverQUICTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for HandshakeState.EncryptedExtensionsState(0) + 28));
  v8 = v7[2];
  result = outlined consume of ByteBuffer?(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.earlyDataAccepted.setter(char a1)
{
  result = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.epskNegotiated.setter(char a1)
{
  result = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.sessionResumed.setter(char a1)
{
  result = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.NewSession.serverName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.PAKESession.negotiatedPAKE.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeState.EncryptedExtensionsState.SessionData.negotiatedPAKE.getter()
{
  v1 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v0, v4, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(v4 + 1);
    v6 = v4[4];
  }

  else
  {
    outlined destroy of HandshakeState(v4, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 16);
}

uint64_t HandshakeState.EncryptedExtensionsState.isResumption.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  outlined init with copy of Any?(v0 + *(v5 + 20), v4, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v6 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    return 0;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return result;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  outlined destroy of HandshakeState(v4, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
  return v9;
}

uint64_t HandshakeState.ServerCertificateState.serverALPN.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t HandshakeState.ServerCertificateState.serverALPN.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t HandshakeState.ServerCertificateState.serverQUICTransportParameters.getter()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[13];
  outlined copy of Data?(v1, v2);
  return v1;
}

uint64_t HandshakeState.ServerCertificateState.serverQUICTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[13];
  result = outlined consume of ByteBuffer?(v3[11], v3[12]);
  v3[11] = a1;
  v3[12] = a2;
  v3[13] = a3;
  return result;
}

uint64_t HandshakeState.ServerCertificateVerifyState.earlyDataAccepted.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.ReadyState.negotiatedCipherSuite.setter(uint64_t result)
{
  *(v1 + 66) = result;
  *(v1 + 68) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeState.ReadyState.negotiatedGroup.setter(uint64_t result)
{
  *(v1 + 70) = result;
  *(v1 + 72) = BYTE2(result) & 1;
  return result;
}

uint64_t HandshakeState.ServerCertificateVerifyState.serverALPN.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t HandshakeState.ServerCertificateVerifyState.serverALPN.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t HandshakeState.ServerCertificateVerifyState.serverQUICTransportParameters.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  v3 = *v2;
  v4 = v2[2];
  outlined copy of Data?(*v2, v2[1]);
  return v3;
}

uint64_t HandshakeState.ServerCertificateVerifyState.serverQUICTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = (v4 + *(a4(0) + 36));
  v9 = v8[2];
  result = outlined consume of ByteBuffer?(*v8, v8[1]);
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t HandshakeState.ReadyState.earlyDataAccepted.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ReadyState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HandshakeState.ReadyState.negotiatedPAKE.setter(int a1)
{
  result = type metadata accessor for HandshakeState.ReadyState(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t HandshakeState.ReadyState.epskNegotiated.setter(char a1)
{
  result = type metadata accessor for HandshakeState.ReadyState(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t outlined assign with take of HandshakeState.ServerHelloState.SessionData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata completion function for HandshakeState.ServerHelloState()
{
  type metadata accessor for HandshakeState.ServerHelloState.SessionData(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for CipherSuite?, &type metadata for CipherSuite, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for UInt16?, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for HandshakeState.ServerHelloState.SessionData()
{
  return type metadata completion function for HandshakeState.ServerHelloState.SessionData();
}

{
  result = type metadata accessor for SessionTicket();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for HandshakeState.EncryptedExtensionsState()
{
  type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for HandshakeState.EncryptedExtensionsState.SessionData?, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for HandshakeState.EncryptedExtensionsState.SessionData.NewSession(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for HandshakeState.EncryptedExtensionsState.SessionData.NewSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata completion function for HandshakeState.ServerCertificateState()
{
  type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PeerCertificateBundle(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for HandshakeState.ServerCertificateVerifyState()
{
  type metadata accessor for PeerCertificateBundle(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for HandshakeState.ReadyState()
{
  type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for CipherSuite?, &type metadata for CipherSuite, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PeerCertificateBundle?, type metadata accessor for PeerCertificateBundle, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ClientSessionKeyManager<SHA384>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for PAKEScheme?, &type metadata for PAKEScheme, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ContentType.description.getter(unsigned __int8 a1)
{
  if (a1 <= 0x14u)
  {
    if (!a1)
    {
      return 0x64696C61766E692ELL;
    }

    if (a1 == 20)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x15u:
        return 0x7472656C612ELL;
      case 0x16u:
        return 0x616873646E61682ELL;
      case 0x17u:
        return 0xD000000000000010;
    }
  }

  _StringGuts.grow(_:)(25);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t lazy protocol witness table accessor for type ContentType and conformance ContentType()
{
  result = lazy protocol witness table cache variable for type ContentType and conformance ContentType;
  if (!lazy protocol witness table cache variable for type ContentType and conformance ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentType and conformance ContentType);
  }

  return result;
}

uint64_t CipherSuite.description.getter(__int16 a1)
{
  if (a1 == 4865)
  {
    return 0xD000000000000016;
  }

  if (a1 == 4866)
  {
    return 0xD000000000000016;
  }

  lazy protocol witness table accessor for type UInt16 and conformance UInt16();
  v2 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x1B274D610](v2);

  return 30768;
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CipherSuite and conformance CipherSuite()
{
  result = lazy protocol witness table cache variable for type CipherSuite and conformance CipherSuite;
  if (!lazy protocol witness table cache variable for type CipherSuite and conformance CipherSuite)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CipherSuite and conformance CipherSuite);
  }

  return result;
}

uint64_t ByteBuffer.writeProtocolVersion(_:)(__int16 a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7[3] = MEMORY[0x1E69E6290];
  v7[4] = MEMORY[0x1E6969DF8];
  v7[0] = &v6;
  v7[1] = v7;
  v1 = __swift_project_boxed_opaque_existential_0(v7, MEMORY[0x1E69E6290]);
  v3 = *v1;
  v2 = v1[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v4 = *MEMORY[0x1E69E9840];
  return 2;
}

uint64_t ByteBuffer.readProtocolVersion()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v1 = bswap32(v0) >> 16;
  if ((v0 & 0x10000) != 0)
  {
    v1 = 0;
  }

  return v0 & 0x10000 | v1;
}

uint64_t ProtocolVersion.description.getter(__int16 a1)
{
  if (a1 != 3)
  {
LABEL_10:
    _StringGuts.grow(_:)(37);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v2);

    MEMORY[0x1B274D610](0x3A726F6E696D202CLL, 0xE900000000000020);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v3);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD000000000000017;
  }

  if (HIBYTE(a1) <= 1u)
  {
    if (HIBYTE(a1))
    {
      if (HIBYTE(a1) == 1)
      {
        return 0x303176736C742ELL;
      }

      goto LABEL_10;
    }

    return 0x33766C73732ELL;
  }

  else
  {
    switch(HIBYTE(a1))
    {
      case 2u:
        return 0x313176736C742ELL;
      case 3u:
        return 0x323176736C742ELL;
      case 4u:
        return 0x333176736C742ELL;
      default:
        goto LABEL_10;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProtocolVersion and conformance ProtocolVersion()
{
  result = lazy protocol witness table cache variable for type ProtocolVersion and conformance ProtocolVersion;
  if (!lazy protocol witness table cache variable for type ProtocolVersion and conformance ProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtocolVersion and conformance ProtocolVersion);
  }

  return result;
}

uint64_t ByteBuffer.readableBytesView.getter(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(result + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = result >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  if (v4 >= a3)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.writeInteger<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v10 = v9 + 7;
  if (__OFADD__(v9, 7))
  {
    __break(1u);
  }

  if (v10 < 0)
  {
    v10 = v9 + 14;
  }

  v11 = v10 >> 3;
  v12 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  MEMORY[0x1EEE9AC00](v12);
  v17 = v3;
  v16 = 803;
  _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(v8, partial apply for closure #1 in ByteBuffer.writeInteger<A>(_:as:), &v18[-4], a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
  (*(v5 + 8))(v8, a3);
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t ByteBuffer.readInteger<A>(as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30[3] = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v30 - v12;
  v15 = *(*(*(v14 + 8) + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v16 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v17 = v16 + 7;
  if (__OFADD__(v16, 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v17 < 0)
  {
    v17 = v16 + 14;
  }

  v18 = v4[2];
  v19 = v18 + (v17 >> 3);
  if (__OFADD__(v18, v17 >> 3))
  {
LABEL_17:
    __break(1u);
  }

  v20 = *v4;
  v21 = v4[1];
  v22 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    v23 = BYTE6(v21);
    v24 = v20 >> 32;
    if (!v22)
    {
      v24 = v23;
    }

    if (v24 >= v19)
    {
      goto LABEL_9;
    }

LABEL_14:
    (*(v7 + 8))(v13, a2);
    result = (*(v7 + 56))(a3, 1, 1, a2);
    goto LABEL_15;
  }

  if (v22 == 2)
  {
    if (*(v20 + 24) < v19)
    {
      goto LABEL_14;
    }
  }

  else if (v19 > 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](v16);
  v29 = v19;
  v28 = 4039;
  _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(v13, partial apply for closure #1 in ByteBuffer.readInteger<A>(as:), &v30[-4], a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25);
  (*(v7 + 16))(v11, v13, a2);
  dispatch thunk of FixedWidthInteger.init(bigEndian:)();
  (*(v7 + 8))(v13, a2);
  result = (*(v7 + 56))(a3, 0, 1, a2);
  v4[2] = v19;
LABEL_15:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ByteBuffer.readableBytes.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = a1 >> 32;
  }

  else
  {
    v4 = BYTE6(a2);
  }

  result = v4 - a3;
  if (__OFSUB__(v4, a3))
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall ByteBuffer.readUInt24()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) != 0)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v1 = v0;
    v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    v3 = (v2 & 0x10000) == 0;
    if ((v2 & 0x10000) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2 | (v1 << 16);
    }

    v5 = !v3;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  outlined copy of Data._Representation(*a1, v9);
  _s15SwiftTLSLibrary22HandshakeMessageParserV05parsecD0AC11ParseResultVSgyAA8TLSErrorOYKFAgA10ByteBufferVzAIYKXEfU_(a1, a2, v35, &v37);
  if (v4)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    v12 = v35[0];
    v13 = v35[1];
    v14 = v36;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    *&v26 = v12;
    *(&v26 + 1) = v13;
    LOBYTE(v27) = v14;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
  }

  else
  {
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v26 = v37;
    v27 = v38;
    if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v26) == 1)
    {
      outlined consume of Data._Representation(*a1, a1[1]);
      v24[6] = v43;
      v24[7] = v44;
      v25 = v45;
      v24[2] = v39;
      v24[3] = v40;
      v24[4] = v41;
      v24[5] = v42;
      v24[0] = v37;
      v24[1] = v38;
      result = outlined destroy of P256.Signing.PrivateKey?(v24, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      v16 = v44;
      *(a4 + 96) = v43;
      *(a4 + 112) = v16;
      *(a4 + 128) = v45;
      v17 = v40;
      *(a4 + 32) = v39;
      *(a4 + 48) = v17;
      v18 = v42;
      *(a4 + 64) = v41;
      *(a4 + 80) = v18;
      v19 = v38;
      *a4 = v37;
      *(a4 + 16) = v19;
    }

    else
    {
      outlined consume of Data._Representation(v10, v9);
      v20 = v44;
      *(a4 + 96) = v43;
      *(a4 + 112) = v20;
      *(a4 + 128) = v45;
      v21 = v40;
      *(a4 + 32) = v39;
      *(a4 + 48) = v21;
      v22 = v42;
      *(a4 + 64) = v41;
      *(a4 + 80) = v22;
      v23 = v38;
      *a4 = v37;
      *(a4 + 16) = v23;
      return _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_(a4);
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lF@<X0>(void (*a1)(uint64_t *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v7 = v6;
  v46 = a1;
  v40 = a6;
  v41 = a2;
  v9 = type metadata accessor for Optional();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v42 = a3;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v37 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - v22;
  v24 = *v6;
  v25 = v6[1];
  v45 = v6[2];
  outlined copy of Data._Representation(v24, v25);
  v26 = v47;
  v46(v6, v21);
  if (v26)
  {
    outlined consume of Data._Representation(*v6, v6[1]);
    v27 = *(v14 + 32);
    v28 = v21;
    v29 = v42;
    v27(v23, v28, v42);
    v27(v18, v23, v29);
    *v6 = v24;
    v6[1] = v25;
    v6[2] = v45;
    (*(v14 + 16))(v44, v18, v29);
    swift_willThrowTypedImpl();
    return (*(v14 + 8))(v18, v29);
  }

  else
  {
    v32 = v38;
    v31 = v39;
    v33 = v40;
    v34 = v41;
    v47 = 0;
    v35 = *(v41 - 8);
    if ((*(v35 + 48))(v13, 1, v41) == 1)
    {
      outlined consume of Data._Representation(*v7, v7[1]);
      (*(v32 + 8))(v13, v31);
      *v7 = v24;
      v7[1] = v25;
      v36 = 1;
      v7[2] = v45;
    }

    else
    {
      outlined consume of Data._Representation(v24, v25);
      (*(v35 + 32))(v33, v13, v34);
      v36 = 0;
    }

    return (*(v35 + 56))(v33, v36, 1, v34);
  }
}

uint64_t ByteBuffer.init(data:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 == 2)
  {
    v2 = *(result + 16);
  }

  return result;
}

uint64_t ByteBuffer.writeVariableLengthVector<A>(lengthFieldType:_:)(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = v5[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    v16 = BYTE6(v14);
    v17 = v13 >> 32;
    if (!v15)
    {
      v17 = v16;
    }

    goto LABEL_7;
  }

  if (v15 == 2)
  {
    v17 = *(v13 + 24);
LABEL_7:
    v26 = v17;
    goto LABEL_9;
  }

  v26 = 0;
LABEL_9:
  v18 = *(*(*(a5 + 8) + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v20 = ByteBuffer.writeInteger<A>(_:as:)(v12, v19, a4);
  v21 = *(v9 + 8);
  v21(v12, a4);
  v22 = a2(v5);
  v28 = v22;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_(a4);
  ByteBuffer.setInteger<A>(_:at:as:)(v12, v26, v23, a4);
  v21(v12, a4);
  result = v20 + v22;
  if (__OFADD__(v20, v22))
  {
    __break(1u);
  }

  return result;
}

double _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lF@<D0>(uint64_t a1@<X4>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v7 = lazy protocol witness table accessor for type TLSError and conformance TLSError();
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lF(_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_TA, a1, &type metadata for TLSError, v7, &v10, a3);
  if (v3)
  {
    v9 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v9;
  }

  return result;
}

uint64_t ByteBuffer.writerIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      return *(a1 + 24);
    }

    else
    {
      return 0;
    }
  }

  else if (v2)
  {
    return a1 >> 32;
  }

  else
  {
    return BYTE6(a2);
  }
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(to:)(Swift::Int to)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(v2 + 16);
    }
  }

  else
  {
    v5 = v2;
    if (!v4)
    {
      v5 = 0;
    }
  }

  if (v5 > to)
  {
    __break(1u);
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v4)
      {
        v7 = v6;
      }
    }

    if (v7 >= to)
    {
      v1[2] = to;
      return;
    }
  }

  __break(1u);
}

Swift::Int __swiftcall ByteBuffer.writeUInt24(_:)(Swift::Int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 > 0xFFFFFF)
  {
    __break(1u);
  }

  v1 = a1;
  LOBYTE(v12) = BYTE2(a1);
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v13 = &v12;
  v14 = (&v12 + 1);
  v4 = __swift_project_boxed_opaque_existential_0(&v13, MEMORY[0x1E69E6290]);
  v6 = *v4;
  v5 = v4[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v12 = bswap32(v1) >> 16;
  v15 = v2;
  v16 = v3;
  v13 = &v12;
  v14 = &v13;
  v7 = __swift_project_boxed_opaque_existential_0(&v13, v2);
  v9 = *v7;
  v8 = v7[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v10 = *MEMORY[0x1E69E9840];
  return 3;
}

Swift::Int __swiftcall ByteBuffer.setUInt24(_:at:)(Swift::Int _, Swift::Int at)
{
  if (_ > 0xFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = _;
  _ = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(_), at);
  if (__OFADD__(at, _))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = _;
  v5 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v3, at + _);
  v6 = __OFADD__(v4, v5);
  _ = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
  }

  return _;
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  Data._Representation.append(contentsOf:)();
  return *(a1._rawValue + 2);
}

uint64_t ByteBuffer.writeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  Data.append<A>(contentsOf:)();
  return dispatch thunk of Collection.count.getter();
}

uint64_t ByteBuffer.init<A>(bytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized Data.init<A>(_:)(a1, a2, a3);
  v7 = v6;
  (*(*(a2 - 8) + 8))(a1, a2);
  if (v7 >> 62 == 2)
  {
    v8 = *(v5 + 16);
  }

  return v5;
}

uint64_t ByteBuffer.setImmutableBuffer(_:at:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }
  }

  else
  {
    v9 = BYTE6(v7);
    if (v8)
    {
      v9 = v6 >> 32;
    }
  }

  if (v9 < a4)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v8 > 1)
  {
    v10 = 0;
    if (v8 == 2)
    {
      v10 = *(v6 + 16);
    }
  }

  else if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > a4)
  {
    goto LABEL_60;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(result + 16);
      v12 = *(result + 24);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (v11)
    {
      v12 = result >> 32;
    }

    else
    {
      v12 = BYTE6(a2);
    }

    if (v11)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v12 < a3 || v12 < v13)
  {
    goto LABEL_61;
  }

  result = Data._Representation.subscript.getter();
  v15 = result;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v14);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v20 = *(result + 16);
  v19 = *(result + 24);
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v21)
  {
    __break(1u);
LABEL_34:
    LODWORD(v18) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v18 = v18;
  }

LABEL_37:
  v22 = *v4;
  v23 = v4[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    v25 = BYTE6(v23);
    v26 = v22 >> 32;
    if (!v24)
    {
      v26 = v25;
    }

    goto LABEL_43;
  }

  if (v24 == 2)
  {
    v26 = *(v22 + 24);
LABEL_43:
    v27 = v26 - a4;
    if (v27 < v18)
    {
      v18 = v27;
    }

    goto LABEL_48;
  }

  if (v18 >= -a4)
  {
    v18 = -a4;
  }

LABEL_48:
  if (v18 + a4 < a4)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  specialized Data._Representation.withUnsafeBytes<A>(_:)(result, v14);
  if (v17 <= 1)
  {
    if (!v17)
    {
      outlined consume of Data._Representation(v15, v16);
      return BYTE6(v16);
    }

LABEL_56:
    result = outlined consume of Data._Representation(v15, v16);
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      return HIDWORD(v15) - v15;
    }

    goto LABEL_64;
  }

  if (v17 != 2)
  {
    outlined consume of Data._Representation(v15, v16);
    return 0;
  }

  v29 = *(v15 + 16);
  v28 = *(v15 + 24);
  outlined consume of Data._Representation(v15, v16);
  result = v28 - v29;
  if (__OFSUB__(v28, v29))
  {
    __break(1u);
    goto LABEL_56;
  }

  return result;
}

uint64_t ByteBuffer.setInteger<A>(_:at:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v12 = v11 + 7;
  if (__OFADD__(v11, 7))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 < 0)
  {
    v12 = v11 + 14;
  }

  v13 = v12 >> 3;
  v14 = a2 + (v12 >> 3);
  if (__OFADD__(a2, v12 >> 3))
  {
    goto LABEL_16;
  }

  if (v4[2] > a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *v4;
  v16 = v4[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v15 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v16);
    v19 = v15 >> 32;
    if (!v17)
    {
      v19 = v18;
    }
  }

  if (v19 < v14)
  {
LABEL_18:
    __break(1u);
  }

  v20 = dispatch thunk of FixedWidthInteger.bigEndian.getter();
  MEMORY[0x1EEE9AC00](v20);
  v26[-4] = v13;
  v26[-3] = v4;
  v25 = v14;
  v24 = 803;
  _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(v10, partial apply for closure #1 in ByteBuffer.setInteger<A>(_:at:as:), &v26[-6], a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
  (*(v7 + 8))(v10, a4);
  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t static FixedWidthInteger.byteWidth.getter()
{
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v1 = result + 7;
  if (__OFADD__(result, 7))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = result + 14;
    }

    return v1 >> 3;
  }

  return result;
}

uint64_t closure #1 in ByteBuffer.writeInteger<A>(_:as:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = a2 - result;
  if (!result)
  {
    v5 = 0;
  }

  if (v5 == a3)
  {
    v9[7] = v3;
    v9[8] = v4;
    v9[3] = MEMORY[0x1E69E6290];
    v9[4] = MEMORY[0x1E6969DF8];
    v9[0] = result;
    v9[1] = a2;
    v6 = __swift_project_boxed_opaque_existential_0(v9, MEMORY[0x1E69E6290]);
    v8 = *v6;
    v7 = v6[1];
    Data._Representation.append(contentsOf:)();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t closure #1 in ByteBuffer.setInteger<A>(_:at:as:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - result;
  if (!result)
  {
    v6 = 0;
  }

  if (v6 != a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a6 < a5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9[3] = MEMORY[0x1E69E6290];
  v9[4] = MEMORY[0x1E6969DF8];
  v9[0] = result;
  v9[1] = a2;
  v7 = __swift_project_boxed_opaque_existential_0(v9, MEMORY[0x1E69E6290]);
  if (*v7)
  {
    v8 = v7[1] - *v7;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t closure #1 in ByteBuffer.readInteger<A>(as:)@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = *a1;
  v7 = *a1;
  v8 = a1[1];
  if (a1[2] > a2)
  {
    __break(1u);
  }

  else
  {
    v6 = a1[2];
    outlined copy of Data._Representation(result, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    v5 = DataProtocol.copyBytes<A>(to:from:)();
    result = outlined consume of Data._Representation(v7, v8);
    *a3 = v5;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  v3 = v1[2];
  v4 = v3 + length;
  if (__OFADD__(v3, length))
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v4)
      {
        goto LABEL_7;
      }
    }

    else if (v4 <= 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v3 = 0;
    goto LABEL_16;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v4)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v4 < v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = Data._Representation.subscript.getter();
  v3 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v9, v10);
  v1[2] = v4;
LABEL_16:
  result.value._rawValue = v3;
  result.is_nil = v11;
  return result;
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  if (forwardBy < 0)
  {
    __break(1u);
  }

  else
  {
    specialized Data.append<A>(contentsOf:)(forwardBy);
  }
}

uint64_t ByteBuffer.writeVariableLengthVectorUInt24(_:)(uint64_t (*a1)(uint64_t *))
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
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

  LOBYTE(v22) = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v25 = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  v23 = &v22;
  v24 = (&v22 + 1);
  v11 = __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v22 = 0;
  v25 = v9;
  v26 = v10;
  v23 = &v22;
  v24 = &v23;
  v14 = __swift_project_boxed_opaque_existential_0(&v23, v9);
  v16 = *v14;
  v15 = v14[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v17 = a1(v1);
  if (v17 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v18 = v17;
  v19 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v17), v8);
  if (__OFADD__(v8, v19))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v18, v8 + v19);
  v20 = *MEMORY[0x1E69E9840];
  return v18 + 3;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAKGTg504_s15a12TLSLibrary10cd6VSays5p5VGAA8L134OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f38OYKcfc22readCompressionMethodsL_ySays5E6VGAFzFTf3nnpf_nTf1nc_n()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) != 0)
  {
    return 0;
  }

  v1 = ByteBuffer.readSlice(length:)(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  v12 = v3;
  result = _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc22readCompressionMethodsL_ySays5UInt8VGAFzF(&v10);
  v5 = v10;
  v6 = v11;
  v7 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v10 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v10 >> 32;
  }

  else
  {
    v8 = BYTE6(v11);
  }

  if (__OFSUB__(v8, v12))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (v8 == v12)
    {
      outlined consume of Data._Representation(v10, v11);
      return v9;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      outlined consume of Data._Representation(v5, v6);
      return 1;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA11CipherSuiteVGTg504_s15a12TLSLibrary10cd8VSayAA11qr5VGAA8L128OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8g12OYKcfc16reade17SuitesL_ySayAA0J5F6VGAFzFTf3nnpf_nTf1nc_n()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v0 & 0x10000) != 0 || (v1 = ByteBuffer.readSlice(length:)(v0), v2 >> 60 == 15))
  {
    v4 = 0;
    goto LABEL_4;
  }

  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v1 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v1 >> 32;
  }

  else
  {
    v11 = BYTE6(v2);
  }

  v12 = __OFSUB__(v11, v3);
  v13 = v11 - v3;
  if (v12)
  {
    goto LABEL_40;
  }

  v20 = v1 >> 32;
  v21 = BYTE6(v2);
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v13 / 2) & ~((v13 + (v13 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v15 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v4 = v14;
  while (v10 > 1)
  {
    if (v10 == 2)
    {
      if (*(v7 + 24) < v15)
      {
        goto LABEL_30;
      }
    }

    else if (v15 >= 1)
    {
      v19 = 0;
      goto LABEL_34;
    }

LABEL_24:
    if (v15 < v9)
    {
      goto LABEL_39;
    }

    outlined copy of Data._Representation(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v7, v8);
    v18 = *(v4 + 16);
    v17 = *(v4 + 24);
    if (v18 >= v17 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
    }

    *(v4 + 16) = v18 + 1;
    *(v4 + 2 * v18 + 32) = bswap32(0) >> 16;
    v9 = v15;
    v12 = __OFADD__(v15, 2);
    v15 += 2;
    if (v12)
    {
      goto LABEL_38;
    }
  }

  v16 = v21;
  if (v10)
  {
    v16 = v20;
  }

  if (v16 >= v15)
  {
    goto LABEL_24;
  }

LABEL_30:
  v19 = v21;
  if (v10)
  {
    v19 = v20;
    if (v10 == 2)
    {
      v19 = *(v7 + 24);
    }
  }

LABEL_34:
  if (__OFSUB__(v19, v9))
  {
LABEL_41:
    __break(1u);
  }

  if (v19 == v9)
  {
    outlined consume of Data._Representation(v7, v8);
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v7, v8);
    v4 = 1;
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L125OIglozo_A2cEIeglrzo_TR04_s15a42TLSLibrary18CertificateRequestV5bytesAcA10cd7Vz_tAA8E30OYKcfc04readcD7ContextL_yA2FzFTf3nnpf_nTf1nnc_n@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((result & 0x100) != 0 || (result = ByteBuffer.readSlice(length:)(result), v5 >> 60 == 15))
  {
    *a2 = xmmword_1B26C5EF0;
    *(a2 + 16) = 0;
  }

  else
  {
    v16 = result;
    v17 = v5;
    v18 = v6;
    result = _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readcD7ContextL_yA2FzFTf4n_g(&v16);
    v9 = v8;
    v10 = v16;
    v11 = v17;
    v12 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v13 = *(v16 + 24);
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v12)
    {
      v13 = v16 >> 32;
    }

    else
    {
      v13 = BYTE6(v17);
    }

    if (__OFSUB__(v13, v18))
    {
      __break(1u);
    }

    else if (v13 == v18)
    {
      v14 = result;
      v15 = v7;
      outlined copy of Data._Representation(result, v7);
      result = outlined consume of Data._Representation(v10, v11);
      *a2 = v14;
      *(a2 + 8) = v15;
      *(a2 + 16) = v9;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      result = outlined consume of Data._Representation(v10, v11);
      *a1 = xmmword_1B26C66C0;
      *(a1 + 16) = 2;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAA9ExtensionO20PreSharedKeyKexModesV4ModeVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O20rstuv2V4w5VGAA8l73OIglozo_AcjLIeglrzo_TR04_s15a12TLSLibrary10cd7V24readfghi21Modes11messageK72AA9e30O0fghiJ0VAA09HandshakeL0V_tAA8l6OYKF0et9L_ySayAI4K6VGACzFTf3nnpf_nTf1nc_n()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) != 0 || (v1 = ByteBuffer.readSlice(length:)(v0), v2 >> 60 == 15))
  {
    v4 = 0;
    goto LABEL_4;
  }

  v7 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v1;
  v9 = v2;
  v10 = v2 >> 62;
  v16 = v1 >> 32;
  v4 = MEMORY[0x1E69E7CC0];
  v17 = BYTE6(v2);
  while (v10 > 1)
  {
    if (v10 == 2)
    {
      if (*(v8 + 24) < v7)
      {
        goto LABEL_24;
      }
    }

    else if (v7 >= 1)
    {
      v15 = 0;
      goto LABEL_28;
    }

LABEL_16:
    if (v7 < v3)
    {
      goto LABEL_33;
    }

    outlined copy of Data._Representation(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v8, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    }

    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
    if (v13 >= v12 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v4);
    }

    *(v4 + 16) = v13 + 1;
    *(v4 + v13 + 32) = 0;
    v3 = v7;
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_32;
    }
  }

  v11 = v17;
  if (v10)
  {
    v11 = v16;
  }

  if (v11 >= v7)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = v17;
  if (v10)
  {
    v15 = v16;
    if (v10 == 2)
    {
      v15 = *(v8 + 24);
    }
  }

LABEL_28:
  if (__OFSUB__(v15, v3))
  {
LABEL_34:
    __break(1u);
  }

  if (v15 == v3)
  {
    outlined consume of Data._Representation(v8, v9);
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    outlined consume of Data._Representation(v8, v9);
    v4 = 1;
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *, void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v69 = a6;
  v71 = a3;
  v72 = a2;
  v76 = a7;
  v77 = *(a5 - 8);
  v78 = a5;
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v73 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v11 + 8);
  v68 = *(*(v75 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v66[1] = v66 - v13;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v66 - v18;
  v20 = *(a4 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v70 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v66 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v66 - v28;
  v74 = a1;
  ByteBuffer.readInteger<A>(as:)(v27, a4, v19);
  if ((*(v20 + 48))(v19, 1, a4) == 1)
  {
    (*(v15 + 8))(v19, v14);
    return (*(v77 + 56))(v76, 1, 1, v78);
  }

  (*(v20 + 32))(v29, v19, a4);
  (*(v20 + 16))(v26, v29, a4);
  v30 = v20;
  v31 = v29;
  v32 = v75;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_16;
  }

  *&v79 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v34 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v33)
  {
    v31 = v29;
    if (v34 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v39 = v70;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v40 = *(*(v32 + 32) + 8);
      v41 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v30 + 8))(v39, a4);
      if (v41)
      {
        goto LABEL_44;
      }

      goto LABEL_15;
    }

LABEL_10:
    lazy protocol witness table accessor for type Int and conformance Int();
    v35 = v70;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v36 = *(*(v32 + 32) + 8);
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v30 + 8))(v35, a4);
    if (v37)
    {
      goto LABEL_44;
    }

    goto LABEL_16;
  }

  v31 = v29;
  if (v34 < 64)
  {
LABEL_15:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_16:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v79 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v42 & 1) == 0)
    {
      break;
    }

    if (v43 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v44 = v70;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v45 = *(*(v32 + 32) + 8);
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v30 + 8))(v44, a4);
    if (v46)
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

  if (v43 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v47 = dispatch thunk of BinaryInteger._lowWord.getter();
  v48 = *(v30 + 8);
  v48(v26, a4);
  v49 = ByteBuffer.readSlice(length:)(v47);
  if (v50 >> 60 != 15)
  {
    v83 = v49;
    v84 = v50;
    v85 = v51;
    v52 = v73;
    v53 = v86;
    result = v72(&v83, v81);
    if (v53)
    {
      v54 = v81[0];
      v55 = v81[1];
      v56 = v82;
      v48(v31, a4);
      result = outlined consume of Data._Representation(v83, v84);
      v57 = v69;
      *v69 = v54;
      v57[1] = v55;
      *(v57 + 16) = v56;
      return result;
    }

    v58 = v83;
    v59 = v84;
    v60 = v84 >> 62;
    if ((v84 >> 62) > 1)
    {
      if (v60 == 2)
      {
        v61 = *(v83 + 24);
      }

      else
      {
        v61 = 0;
      }
    }

    else if (v60)
    {
      v61 = v83 >> 32;
    }

    else
    {
      v61 = BYTE6(v84);
    }

    if (!__OFSUB__(v61, v85))
    {
      if (v61 == v85)
      {
        v48(v31, a4);
        outlined consume of Data._Representation(v58, v59);
        v63 = v76;
        v62 = v77;
        v64 = v78;
        (*(v77 + 32))(v76, v52, v78);
        return (*(v62 + 56))(v63, 0, 1, v64);
      }

      else
      {
        v65 = v69;
        *v69 = xmmword_1B26C66C0;
        *(v65 + 16) = 2;
        v79 = xmmword_1B26C66C0;
        v80 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        (*(v77 + 8))(v52, v78);
        v48(v31, a4);
        return outlined consume of Data._Representation(v58, v59);
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v48(v31, a4);
  return (*(v77 + 56))(v76, 1, 1, v78);
}

double _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlF@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = lazy protocol witness table accessor for type TLSError and conformance TLSError();
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lF(_s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_TA, a1, &type metadata for TLSError, v7, &v10, a3);
  if (v3)
  {
    v9 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v9;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *, void *)@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v13 & 0x100) != 0)
  {
    return (*(v9 + 56))(a5, 1, 1, a3);
  }

  v14 = v13;
  v15 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v15 & 0x10000) != 0)
  {
    return (*(v9 + 56))(a5, 1, 1, a3);
  }

  v16 = ByteBuffer.readSlice(length:)(v15 | (v14 << 16));
  if (v17 >> 60 == 15)
  {
    return (*(v9 + 56))(a5, 1, 1, a3);
  }

  v33 = v16;
  v34 = v17;
  v35 = v18;
  result = a2(&v33, v31);
  if (v5)
  {
    v20 = v31[0];
    v21 = v31[1];
    v22 = v32;
    result = outlined consume of Data._Representation(v33, v34);
    v23 = v36;
    *v36 = v20;
    v23[1] = v21;
    *(v23 + 16) = v22;
  }

  else
  {
    v24 = v33;
    v25 = v34;
    v26 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v27 = *(v33 + 24);
      }

      else
      {
        v27 = 0;
      }
    }

    else if (v26)
    {
      v27 = v33 >> 32;
    }

    else
    {
      v27 = BYTE6(v34);
    }

    if (__OFSUB__(v27, v35))
    {
      __break(1u);
    }

    else if (v27 == v35)
    {
      outlined consume of Data._Representation(v33, v34);
      (*(v9 + 32))(a5, v12, a3);
      return (*(v9 + 56))(a5, 0, 1, a3);
    }

    else
    {
      v28 = v36;
      *v36 = xmmword_1B26C66C0;
      *(v28 + 16) = 2;
      v29 = xmmword_1B26C66C0;
      v30 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      (*(v9 + 8))(v12, a3);
      return outlined consume of Data._Representation(v24, v25);
    }
  }

  return result;
}

uint64_t _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x1EEE9AC00])();
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

uint64_t closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(MEMORY[0x1E69E7508], partial apply for closure #1 in closure #3 in Data.init<A>(_:), v10, a1, a2, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v9);
}

uint64_t closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v10, a2, a3);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a4 + v11) = result;
  return result;
}

uint64_t specialized static ByteBuffer.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(result + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = result >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    result = Data._Representation.subscript.getter();
    v11 = result;
    v13 = v12;
    v14 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(a4 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = a4 >> 32;
    }

    else
    {
      v15 = BYTE6(a5);
    }

    if (v15 >= a6)
    {
      v16 = Data._Representation.subscript.getter();
      v18 = v17;
      v19 = specialized static Data.== infix(_:_:)(v11, v13, v16, v17);
      outlined consume of Data._Representation(v16, v18);
      outlined consume of Data._Representation(v11, v13);
      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t specialized Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v33 - v15;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v36, &v38);
    __swift_project_boxed_opaque_existential_0(&v38, v39);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v36[0] = v35;
    __swift_destroy_boxed_opaque_existential_0(&v38);
    goto LABEL_34;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  outlined destroy of P256.Signing.PrivateKey?(v36, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v38 + 1) >> 60 != 15)
  {
    v36[0] = v38;
    goto LABEL_34;
  }

  v34 = v38;
  v20 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v36[0] = specialized Data._Representation.init(count:)(v20);
  *(&v36[0] + 1) = v21;
  MEMORY[0x1EEE9AC00](*&v36[0]);
  *(&v33 - 4) = a2;
  *(&v33 - 3) = a3;
  *(&v33 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v36[0] + 1) >> 62;
  if ((*(&v36[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v36[0]), v36[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v36[0]) - LODWORD(v36[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v36[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v36[0] + 16);
    v24 = *(*&v36[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v36[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v36[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v36[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v38 = 0;
  *(&v38 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v35) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v38 + v29) = v35;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v35 = v38;
      *(&v35 + 6) = *(&v38 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v29) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v35) & 1) == 0);
  if (v29)
  {
    *&v35 = v38;
    *(&v35 + 6) = *(&v38 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of ByteBuffer?(v34, *(&v34 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  outlined consume of ByteBuffer?(v34, *(&v34 + 1));
LABEL_34:
  v30 = v36[0];
  outlined copy of Data._Representation(*&v36[0], *(&v36[0] + 1));
  outlined consume of Data._Representation(v30, *(&v30 + 1));
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

unint64_t lazy protocol witness table accessor for type ByteBuffer and conformance ByteBuffer()
{
  result = lazy protocol witness table cache variable for type ByteBuffer and conformance ByteBuffer;
  if (!lazy protocol witness table cache variable for type ByteBuffer and conformance ByteBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ByteBuffer and conformance ByteBuffer);
  }

  return result;
}

uint64_t static PAKEScheme.fromFeatureFlags()()
{
  v2[3] = &type metadata for SwiftTLSFeatureFlags;
  v2[4] = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v2);
  if (v0)
  {
    return 32150;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _s15SwiftTLSLibrary15PAKEServerStateVyAcA0C6RecordVAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = type metadata accessor for SPAKE2.CipherSuite();
  v76 = *(v77 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SPAKE2.Verifier();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = xmmword_1B26C5EF0;
  v12 = type metadata accessor for PAKEServerState(0);
  v13 = v12[5];
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(*(v14 - 8) + 56);
  v88 = v13;
  result = v15(a3 + v13, 1, 1, v14);
  v17 = (a3 + v12[6]);
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0xF000000000000000;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 9) = 0;
  *(a3 + v12[7]) = 0;
  v18 = (a3 + v12[8]);
  v19 = *(a1 + 5);
  v20 = *(a1 + 6);
  v21 = *(a1 + 3);
  v18[4] = *(a1 + 4);
  v18[5] = v19;
  v18[6] = v20;
  *(v18 + 106) = *(a1 + 53);
  v22 = *(a1 + 1);
  v23 = *(a1 + 2);
  *v18 = *a1;
  v18[1] = v22;
  v18[2] = v23;
  v18[3] = v21;
  v24 = *a1;
  if (v24 != 0xFFFF && v24 != 32150)
  {
    *&v80[0] = 0;
    *(&v80[0] + 1) = 0xE000000000000000;
    outlined init with copy of PAKEServerRecord(a1, &v81);
    _StringGuts.grow(_:)(26);

    *&v81 = 0xD000000000000018;
    *(&v81 + 1) = 0x80000001B26CE210;
    v33 = PAKEScheme.description.getter(v24);
    MEMORY[0x1B274D610](v33);

    v34 = *(&v81 + 1);
    v35 = v81;
    v36 = 1;
    LOBYTE(v82) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of PAKEServerRecord(a1);
LABEL_37:
    outlined consume of ByteBuffer?(*a3, *(a3 + 8));
    outlined destroy of P256.Signing.PrivateKey?(a3 + v88, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v56 = v17[3];
    v80[2] = v17[2];
    v57 = v17[4];
    v80[3] = v56;
    v80[4] = v57;
    v58 = *v17;
    v80[1] = v17[1];
    v80[0] = v58;
    outlined destroy of P256.Signing.PrivateKey?(v80, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMR);
    v59 = v18[5];
    v85 = v18[4];
    v86 = v59;
    *v87 = v18[6];
    *&v87[10] = *(v18 + 106);
    v60 = v18[1];
    v81 = *v18;
    v82 = v60;
    v61 = v18[3];
    v83 = v18[2];
    v84 = v61;
    result = outlined destroy of PAKEServerRecord(&v81);
    *a2 = v35;
    *(a2 + 8) = v34;
    *(a2 + 16) = v36;
    return result;
  }

  v71 = v9;
  v72 = v3;
  v26 = *(a1 + 7);
  v25 = *(a1 + 8);
  v27 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_16;
    }

    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (v30)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v31 != 97)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v27)
    {
      if (BYTE6(v25) != 97)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v26), v26))
    {
LABEL_43:
      __break(1u);
      return result;
    }

    if (HIDWORD(v26) - v26 != 97)
    {
LABEL_16:
      v34 = 0x80000001B26CE230;
      v35 = 0xD000000000000020;
      *&v81 = 0xD000000000000020;
      *(&v81 + 1) = 0x80000001B26CE230;
      v36 = 1;
      LOBYTE(v82) = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_37;
    }
  }

LABEL_10:
  v73 = *(a1 + 8);
  if (v27)
  {
    if (v27 == 2)
    {
      v32 = *(v26 + 16);
    }

    else
    {
      v32 = v26;
    }
  }

  else
  {
    v32 = 0;
  }

  v37 = v32 + 32;
  if (__OFADD__(v32, 32))
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v64 = a2;
  if (v27)
  {
    if (v27 == 2)
    {
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
    }

    else
    {
      v39 = v26;
      v38 = v26 >> 32;
    }
  }

  else
  {
    v39 = 0;
    v38 = BYTE6(v73);
  }

  if (v38 < v39 || v37 < v39)
  {
    goto LABEL_40;
  }

  outlined init with copy of PAKEServerRecord(a1, &v81);
  v40 = v37;
  v41 = BYTE6(v73);
  v42 = Data._Representation.subscript.getter();
  v74 = v43;
  if (!v27)
  {
    v45 = 0;
    v44 = v41;
LABEL_31:
    result = v40;
    if (v44 < v40)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v27 == 2)
  {
    v45 = *(v26 + 16);
    v44 = *(v26 + 24);
    goto LABEL_31;
  }

  result = v40;
  v45 = v26;
  v44 = v26 >> 32;
  if (v26 >> 32 < v40)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_34:
  if (v44 < v45)
  {
    goto LABEL_41;
  }

  v68 = a3;
  v63 = v12;
  v46 = v42;
  v47 = Data._Representation.subscript.getter();
  v69 = v47;
  v49 = v48;
  v70 = v48;
  v50 = *(a1 + 1);
  v65 = *(a1 + 2);
  v51 = *(a1 + 6);
  v67 = *(a1 + 5);
  v66 = v51;
  v53 = *(a1 + 3);
  v52 = *(a1 + 4);
  v73 = v46;
  (*(v76 + 104))(v79, *MEMORY[0x1E6999678], v77);
  outlined copy of Data._Representation(v73, v74);
  outlined copy of Data._Representation(v47, v49);
  outlined copy of Data._Representation(v50, v65);
  outlined copy of Data._Representation(v67, v66);
  outlined copy of Data._Representation(v53, v52);
  v54 = v78;
  v55 = v72;
  SPAKE2.Verifier.init(w0:L:context:verifierID:proverID:cipherSuite:)();
  if (v55)
  {

    outlined destroy of PAKEServerRecord(a1);
    v81 = xmmword_1B26C6420;
    v36 = 2;
    LOBYTE(v82) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v73, v74);
    outlined consume of Data._Representation(v69, v70);
    v34 = 0;
    v35 = 32;
    a2 = v64;
    a3 = v68;
    goto LABEL_37;
  }

  outlined destroy of PAKEServerRecord(a1);
  outlined consume of Data._Representation(v73, v74);
  outlined consume of Data._Representation(v69, v70);
  return (*(v75 + 32))(v68 + v63[9], v54, v71);
}

uint64_t _s15SwiftTLSLibrary15PAKEServerStateV26deriveKeysAndServerMessage11clientShare9CryptoKit12SymmetricKeyVAA9ExtensionO4PAKEO9PAKEShareV_tAA8TLSErrorOYKF@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = result;
  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a2 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = a2 >> 32;
  }

  else
  {
    v12 = BYTE6(a3);
  }

  if (v12 < a4)
  {
    __break(1u);
    return result;
  }

  v13 = Data._Representation.subscript.getter();
  v15 = v14;
  v16 = _s15SwiftTLSLibrary15PAKEServerStateV31deriveSharedKeyAndServerMessage33_D47F730883CC8E2AE40D0B8BEB52DCE811clientShare9CryptoKit09SymmetricG0V_10Foundation4DataVtAL_tAA8TLSErrorOYKF(a6, v13, v14, v45);
  if (v7)
  {
    v18 = v45[0];
    v19 = v45[1];
    v20 = v46;
    result = outlined consume of Data._Representation(v13, v15);
    *a5 = v18;
    *(a5 + 8) = v19;
    *(a5 + 16) = v20;
    return result;
  }

  v21 = v16;
  v22 = v17;
  v47 = 0;
  outlined consume of Data._Representation(v13, v15);
  v23 = type metadata accessor for PAKEServerState(0);
  v24 = v23[5];
  outlined destroy of P256.Signing.PrivateKey?(v6 + v24, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v25 = type metadata accessor for SymmetricKey();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v6 + v24, a6, v25);
  (*(v26 + 56))(v6 + v24, 0, 1, v25);
  v27 = 0;
  v28 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v27 = v21[2];
    }
  }

  else if (v28)
  {
    v27 = v21;
  }

  v29 = v6 + v23[6];
  v30 = *(v29 + 48);
  v44[2] = *(v29 + 32);
  v44[3] = v30;
  v44[4] = *(v29 + 64);
  v31 = *(v29 + 16);
  v44[0] = *v29;
  v44[1] = v31;
  result = outlined destroy of P256.Signing.PrivateKey?(v44, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEServerHelloVSgMR);
  *v29 = v9;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v27;
  *(v29 + 32) = xmmword_1B26C5EF0;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = xmmword_1B26C8CA0;
  if (v9 == -1 && v22 >> 60 != 15)
  {
    v32 = 0;
    v33 = v6 + v23[8];
    v34 = *(v33 + 24);
    v35 = *(v33 + 32);
    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v36 != 2)
      {
        goto LABEL_24;
      }

      v32 = *(v34 + 16);
    }

    else
    {
      if (!v36)
      {
        goto LABEL_24;
      }

      v32 = v34;
    }

    outlined copy of Data._Representation(v34, v35);
LABEL_24:
    v37 = *(v29 + 48);
    result = outlined consume of ByteBuffer?(*(v29 + 32), *(v29 + 40));
    *(v29 + 32) = v34;
    *(v29 + 40) = v35;
    *(v29 + 48) = v32;
    if (*(v29 + 16) >> 60 == 15)
    {
      return result;
    }

    v38 = 0;
    v39 = v6 + v23[8];
    v40 = *(v39 + 40);
    v41 = *(v39 + 48);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 == 2)
      {
        v38 = *(v40 + 16);
        goto LABEL_30;
      }
    }

    else if (v42)
    {
      v38 = v40;
LABEL_30:
      outlined copy of Data._Representation(v40, v41);
    }

    v43 = *(v29 + 72);
    result = outlined consume of ByteBuffer?(*(v29 + 56), *(v29 + 64));
    *(v29 + 56) = v40;
    *(v29 + 64) = v41;
    *(v29 + 72) = v38;
  }

  return result;
}

Swift::Bool __swiftcall PAKEServerRecord.restorePAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3[0] = *(v0 + 72);
  v3[1] = v1;
  v3[2] = *(v0 + 104);
  v4 = *(v0 + 120);
  return (*(*SwiftTLSPAKELimiter + 112))(v3) & 1;
}

double _s15SwiftTLSLibrary23PAKEClientConfigurationV20generateInitialStateAA0cG0VyAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  outlined init with copy of PAKEClientConfiguration(v2, v10);
  _s15SwiftTLSLibrary15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC(v2, &v8, a2);
  if (v3)
  {
    v7 = v9;
    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15PAKEClientStateV19generateClientHelloAA9ExtensionO4PAKEO0cG0VyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2;
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v7 = *(v2 + 88);
  v30[0] = *(v2 + 72);
  v30[1] = v7;
  v30[2] = *(v2 + 104);
  v31 = *(v2 + 120);
  if ((*(*SwiftTLSPAKELimiter + 88))(v30, 32))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "new client credential added to PAKE Limiter";
LABEL_12:
      _os_log_impl(&dword_1B25F5000, v9, v10, v12, v11, 2u);
      MEMORY[0x1B274ECF0](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "client credential already tracked by PAKE Limiter";
      goto LABEL_12;
    }
  }

  v14 = v5 + *(type metadata accessor for PAKEClientState(0) + 24);
  v15 = SPAKE2.Prover.getShare()();
  if (v3)
  {

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    *a1 = xmmword_1B26C6420;
    *(a1 + 16) = 2;
    return result;
  }

  v18 = v15;
  v19 = v16;
  v20 = 0;
  v21 = *(v5 + 24);
  v22 = *(v5 + 32);
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_21;
    }

    v20 = *(v21 + 16);
  }

  else
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v20 = v21;
  }

  outlined copy of Data._Representation(v21, v22);
LABEL_21:
  v32 = v20;
  v24 = 0;
  v25 = *(v5 + 40);
  v26 = *(v5 + 48);
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v24 = *(v25 + 16);
      goto LABEL_26;
    }
  }

  else if (v27)
  {
    v24 = v25;
LABEL_26:
    outlined copy of Data._Representation(*(v5 + 40), *(v5 + 48));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMR);
  result = swift_allocObject();
  v28 = 0;
  *(result + 16) = xmmword_1B26C6030;
  v29 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v28 = *(v18 + 16);
    }
  }

  else if (v29)
  {
    v28 = v18;
  }

  *(result + 32) = *v5;
  *(result + 40) = v18;
  *(result + 48) = v19;
  *(result + 56) = v28;
  *a2 = v21;
  a2[1] = v22;
  a2[2] = v32;
  a2[3] = v25;
  a2[4] = v26;
  a2[5] = v24;
  a2[6] = result;
  return result;
}

Swift::Bool __swiftcall PAKEClientConfiguration.hasPAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3[0] = *(v0 + 72);
  v3[1] = v1;
  v3[2] = *(v0 + 104);
  v4 = *(v0 + 120);
  return (*(*SwiftTLSPAKELimiter + 96))(v3) & 1;
}

uint64_t _s15SwiftTLSLibrary15PAKEClientStateV18processServerHelloyyAA9ExtensionO4PAKEO010PAKEServerG0VAA8TLSErrorOYKF(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = *v1;
  v9 = *a1;
  if (v9 != v8)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    outlined init with copy of Extension.PAKE.PAKEServerHello(a1, &v34);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    outlined destroy of Extension.PAKE.PAKEServerHello(a1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v34 = v19;
      *v18 = 136315394;
      v20 = PAKEScheme.description.getter(v9);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = PAKEScheme.description.getter(v8);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v34);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1B25F5000, v16, v17, "Server PAKE message scheme mismatch, got %s, expected %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274ECF0](v19, -1, -1);
      MEMORY[0x1B274ECF0](v18, -1, -1);
    }

    v34 = xmmword_1B26C6400;
    v35 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 6;
  }

  v10 = a1[1];
  v11 = a1[2];
  result = a1[3];
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v10 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v10 >> 32;
  }

  else
  {
    v14 = BYTE6(v11);
  }

  if (v14 >= result)
  {
    v27 = Data._Representation.subscript.getter();
    v29 = v28;
    _s15SwiftTLSLibrary15PAKEClientStateV15deriveSharedKey33_D47F730883CC8E2AE40D0B8BEB52DCE8LLy9CryptoKit09SymmetricG0V10Foundation4DataVAA8TLSErrorOYKF(v27, v28, &v33, v7);
    if (v2)
    {
      v26 = v33;
      outlined consume of Data._Representation(v27, v29);
    }

    else
    {
      v26 = 0;
      outlined consume of Data._Representation(v27, v29);
      v30 = type metadata accessor for SymmetricKey();
      (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
      v31 = type metadata accessor for PAKEClientState(0);
      outlined assign with take of PartialHandshakeResult?(v7, v1 + *(v31 + 20), &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    }

    return v26;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PAKEClientConfiguration.claimPAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v6[0] = *(v0 + 72);
  v6[1] = v1;
  v6[2] = *(v0 + 104);
  v7 = *(v0 + 120);
  if (((*(*SwiftTLSPAKELimiter + 104))(v6) & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B25F5000, oslog, v3, "client claiming PAKE attempt failed", v4, 2u);
      MEMORY[0x1B274ECF0](v4, -1, -1);
    }
  }
}

uint64_t PAKEClientConfiguration.context.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t PAKEClientConfiguration.context.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.clientIdentity.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data._Representation(v1, *(v0 + 32));
  return v1;
}

uint64_t PAKEClientConfiguration.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.serverIdentity.getter()
{
  v1 = *(v0 + 40);
  outlined copy of Data._Representation(v1, *(v0 + 48));
  return v1;
}

uint64_t PAKEClientConfiguration.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.clientPasswordVerifier.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data._Representation(v1, *(v0 + 64));
  return v1;
}

uint64_t PAKEClientConfiguration.clientPasswordVerifier.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.description.getter()
{
  _StringGuts.grow(_:)(88);
  MEMORY[0x1B274D610](0xD000000000000020, 0x80000001B26CE260);
  v1 = PAKEScheme.description.getter(*v0);
  MEMORY[0x1B274D610](v1);

  MEMORY[0x1B274D610](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = Data.description.getter();
  MEMORY[0x1B274D610](v4);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE290);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = Data.description.getter();
  MEMORY[0x1B274D610](v7);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE2B0);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = Data.description.getter();
  MEMORY[0x1B274D610](v10);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0;
}

uint64_t _s15SwiftTLSLibrary23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  if (a1 == 32150 || a1 == 0xFFFF)
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a4, a5);
    result = outlined copy of Data._Representation(a6, a7);
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 0;
  }

  else
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a4, a5);
    outlined copy of Data._Representation(a6, a7);
    _StringGuts.grow(_:)(26);

    v20 = PAKEScheme.description.getter(a1);
    MEMORY[0x1B274D610](v20);

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v22 = a1;
    v23 = v40;
    v24 = v41;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v32 = a10;
    v33 = a2;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = 0;
    result = outlined destroy of PAKEClientConfiguration(&v22);
    *a11 = 0xD000000000000018;
    *(a11 + 8) = 0x80000001B26CE210;
    *(a11 + 16) = 1;
  }

  return result;
}

void PAKEClientConfiguration.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Data.hash(into:)();
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  Data.hash(into:)();
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  Data.hash(into:)();
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v15 & 1);
}

Swift::Int PAKEClientConfiguration.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Data.hash(into:)();
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  Data.hash(into:)();
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  Data.hash(into:)();
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  Data.hash(into:)();
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v1 + 96);
  v14 = *(v1 + 104);
  v15 = *(v1 + 112);
  LOBYTE(v1) = *(v1 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKEClientConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v11 = *(v0 + 80);
  v12 = *(v0 + 72);
  v13 = *(v0 + 96);
  v14 = *(v0 + 88);
  v15 = *(v0 + 112);
  v16 = *(v0 + 104);
  v17 = *(v0 + 120);
  v9 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v9);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v17);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PAKEClientConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 80);
  v10 = *(v0 + 72);
  v11 = *(v0 + 96);
  v12 = *(v0 + 88);
  v13 = *(v0 + 112);
  v14 = *(v0 + 104);
  v15 = *(v0 + 120);
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v15);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEClientConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v11 = *(v0 + 80);
  v12 = *(v0 + 72);
  v13 = *(v0 + 96);
  v14 = *(v0 + 88);
  v15 = *(v0 + 112);
  v16 = *(v0 + 104);
  v17 = *(v0 + 120);
  v9 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v9);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v17);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PAKEClientConfiguration(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 9) = *(a1 + 105);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[9] = *(a2 + 105);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return specialized static PAKEClientConfiguration.__derived_struct_equals(_:_:)(v12, v14) & 1;
}

uint64_t PAKEServerRecord.description.getter()
{
  _StringGuts.grow(_:)(81);
  MEMORY[0x1B274D610](0xD000000000000019, 0x80000001B26CE2D0);
  v1 = PAKEScheme.description.getter(*v0);
  MEMORY[0x1B274D610](v1);

  MEMORY[0x1B274D610](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = Data.description.getter();
  MEMORY[0x1B274D610](v4);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE2B0);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = Data.description.getter();
  MEMORY[0x1B274D610](v7);

  MEMORY[0x1B274D610](0xD000000000000012, 0x80000001B26CE290);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = Data.description.getter();
  MEMORY[0x1B274D610](v10);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0;
}

uint64_t _s15SwiftTLSLibrary16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  if (a1 == 32150 || a1 == 0xFFFF)
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a6, a7);
    result = outlined copy of Data._Representation(a4, a5);
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 1;
    *(a9 + 121) = a11 & 1;
  }

  else
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data._Representation(a6, a7);
    outlined copy of Data._Representation(a4, a5);
    _StringGuts.grow(_:)(26);

    v21 = PAKEScheme.description.getter(a1);
    MEMORY[0x1B274D610](v21);

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v23 = a1;
    v24 = v42;
    v25 = v43;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v31 = a7;
    v32 = a8;
    v33 = a10;
    v34 = a2;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v40 = 1;
    v41 = a11 & 1;
    result = outlined destroy of PAKEServerRecord(&v23);
    *a12 = 0xD000000000000018;
    *(a12 + 8) = 0x80000001B26CE210;
    *(a12 + 16) = 1;
  }

  return result;
}

Swift::Bool __swiftcall PAKEServerRecord.claimPAKECredentialAttempt()()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3[0] = *(v0 + 72);
  v3[1] = v1;
  v3[2] = *(v0 + 104);
  v4 = *(v0 + 120);
  return (*(*SwiftTLSPAKELimiter + 104))(v3) & 1;
}

void PAKEServerRecord.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Data.hash(into:)();
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  Data.hash(into:)();
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  Data.hash(into:)();
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v15 & 1);
  Hasher._combine(_:)(*(v0 + 121) & 1);
}

Swift::Int PAKEServerRecord.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Data.hash(into:)();
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  Data.hash(into:)();
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  Data.hash(into:)();
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  Data.hash(into:)();
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v1 + 96);
  v14 = *(v1 + 104);
  v15 = *(v1 + 112);
  v16 = *(v1 + 120);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v16 & 1);
  Hasher._combine(_:)(*(v1 + 121) & 1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PAKEServerRecord()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 80);
  v10 = *(v0 + 72);
  v11 = *(v0 + 96);
  v12 = *(v0 + 88);
  v13 = *(v0 + 112);
  v14 = *(v0 + 104);
  v15 = *(v0 + 120);
  v16 = *(v0 + 121);
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEServerRecord()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v11 = *(v0 + 80);
  v12 = *(v0 + 72);
  v13 = *(v0 + 96);
  v14 = *(v0 + 88);
  v15 = *(v0 + 112);
  v16 = *(v0 + 104);
  v17 = *(v0 + 120);
  v18 = *(v0 + 121);
  v9 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v9);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PAKEServerRecord(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 10) = *(a1 + 106);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[10] = *(a2 + 106);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return specialized static PAKEServerRecord.__derived_struct_equals(_:_:)(v12, v14) & 1;
}

uint64_t PAKEServerRecords.RecordKey.init(pakeScheme:serverIdentity:clientIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static PAKEServerRecords.RecordKey.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];

  return specialized static Data.== infix(_:_:)(v4, v5, v6, v7);
}

uint64_t PAKEServerRecords.RecordKey.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return Data.hash(into:)();
}

Swift::Int PAKEServerRecords.RecordKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKEServerRecords.RecordKey()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PAKEServerRecords.RecordKey()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEServerRecords.RecordKey()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PAKEServerRecords.RecordKey(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if ((specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

double _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTm@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t, __int128 *)@<X4>, _OWORD *a5@<X8>)
{
  a4(v17, a1, a2, &v15);
  if (v5)
  {
    v8 = v16;
    result = *&v15;
    *a3 = v15;
    *(a3 + 16) = v8;
  }

  else
  {
    v10 = v17[7];
    a5[6] = v17[6];
    a5[7] = v10;
    v11 = v17[9];
    a5[8] = v17[8];
    a5[9] = v11;
    v12 = v17[3];
    a5[2] = v17[2];
    a5[3] = v12;
    v13 = v17[5];
    a5[4] = v17[4];
    a5[5] = v13;
    result = *v17;
    v14 = v17[1];
    *a5 = v17[0];
    a5[1] = v14;
  }

  return result;
}

double _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZ@<D0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZTf4nnnd_n(a1, a2, a3, a4, a5, &v15, v17);
  if (v7)
  {
    v10 = v16;
    result = *&v15;
    *a6 = v15;
    *(a6 + 16) = v10;
  }

  else
  {
    v12 = v21;
    a7[4] = v20;
    a7[5] = v12;
    a7[6] = v22[0];
    *(a7 + 106) = *(v22 + 10);
    v13 = v17[1];
    *a7 = v17[0];
    a7[1] = v13;
    result = *&v18;
    v14 = v19;
    a7[2] = v18;
    a7[3] = v14;
  }

  return result;
}

uint64_t static PAKEServerRecords.generateRandomBytes(length:)(uint64_t a1)
{
  v2 = type metadata accessor for SymmetricKeySize();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 0x1000000000000000) >> 61 == 7)
  {
    SymmetricKeySize.init(bitCount:)();
    SymmetricKey.init(size:)();
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v5 + 8))(v9, v4);
    return v10[2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PAKEClientState.prover.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = type metadata accessor for SPAKE2.Prover();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEClientState.prover.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = type metadata accessor for SPAKE2.Prover();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _s15SwiftTLSLibrary15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v7 = type metadata accessor for SPAKE2.CipherSuite();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SPAKE2.Prover();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for PAKEClientState(0);
  v15 = *(v65 + 20);
  v16 = type metadata accessor for SymmetricKey();
  result = (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  v18 = *(a1 + 5);
  v19 = *(a1 + 6);
  v20 = *(a1 + 3);
  a3[4] = *(a1 + 4);
  a3[5] = v18;
  a3[6] = v19;
  *(a3 + 105) = *(a1 + 105);
  v21 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a3 = *a1;
  a3[1] = v21;
  a3[2] = v22;
  a3[3] = v20;
  v23 = *a1;
  if (v23 != 0xFFFF && v23 != 32150)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    outlined init with copy of PAKEClientConfiguration(a1, &v68);
    _StringGuts.grow(_:)(26);

    *&v68 = 0xD000000000000018;
    *(&v68 + 1) = 0x80000001B26CE210;
    v33 = PAKEScheme.description.getter(v23);
    MEMORY[0x1B274D610](v33);

    v34 = *(&v68 + 1);
    v35 = v68;
    v36 = 1;
    LOBYTE(v69) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of PAKEClientConfiguration(a1);
LABEL_30:
    v49 = a3[5];
    v72 = a3[4];
    v73 = v49;
    v74[0] = a3[6];
    *(v74 + 9) = *(a3 + 105);
    v50 = a3[1];
    v68 = *a3;
    v69 = v50;
    v51 = a3[3];
    v70 = a3[2];
    v71 = v51;
    outlined destroy of PAKEClientConfiguration(&v68);
    result = outlined destroy of P256.Signing.PrivateKey?(a3 + v15, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    *a2 = v35;
    *(a2 + 8) = v34;
    *(a2 + 16) = v36;
    return result;
  }

  v63 = v12;
  v64 = v11;
  v24 = *(a1 + 7);
  v25 = *(a1 + 8);
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_16;
    }

    v28 = *(v24 + 16);
    v27 = *(v24 + 24);
    v29 = __OFSUB__(v27, v28);
    v30 = v27 - v28;
    if (v29)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v30 != 64)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v26)
    {
      if (BYTE6(v25) != 64)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (HIDWORD(v24) - v24 != 64)
    {
LABEL_16:
      v34 = 0x80000001B26CE2F0;
      v35 = 0xD000000000000020;
      *&v68 = 0xD000000000000020;
      *(&v68 + 1) = 0x80000001B26CE2F0;
      v36 = 1;
      LOBYTE(v69) = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_30;
    }
  }

LABEL_10:
  v60 = v3;
  if (v26)
  {
    if (v26 == 2)
    {
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
    }

    else
    {
      v32 = v24;
      v31 = v24 >> 32;
    }
  }

  else
  {
    v32 = 0;
    v31 = BYTE6(v25);
  }

  if (v31 < v32 || v32 > 32)
  {
    __break(1u);
    goto LABEL_33;
  }

  outlined init with copy of PAKEClientConfiguration(a1, &v68);
  result = Data._Representation.subscript.getter();
  v59 = v37;
  if (v26)
  {
    if (v26 == 2)
    {
      v39 = *(v24 + 16);
      v38 = *(v24 + 24);
    }

    else
    {
      v39 = v24;
      v38 = v24 >> 32;
    }
  }

  else
  {
    v39 = 0;
    v38 = BYTE6(v25);
  }

  v62 = result;
  v52 = v15;
  v53 = a2;
  if (v38 < 32 || v38 < v39)
  {
    goto LABEL_35;
  }

  v40 = Data._Representation.subscript.getter();
  v61 = v40;
  v42 = v41;
  v55 = *(a1 + 1);
  v43 = v55;
  v44 = *(a1 + 3);
  v56 = *(a1 + 2);
  v54 = *(a1 + 5);
  v45 = v54;
  v57 = *(a1 + 6);
  v58 = *(a1 + 4);
  (*(v66 + 104))(v10, *MEMORY[0x1E6999678], v67);
  v67 = v10;
  v46 = v59;
  outlined copy of Data._Representation(v62, v59);
  outlined copy of Data._Representation(v40, v42);
  outlined copy of Data._Representation(v43, v56);
  outlined copy of Data._Representation(v45, v57);
  outlined copy of Data._Representation(v44, v58);
  v47 = v77;
  v67 = v42;
  v48 = v60;
  SPAKE2.Prover.init(w0:w1:context:verifierID:proverID:cipherSuite:)();
  if (v48)
  {

    outlined destroy of PAKEClientConfiguration(a1);
    v68 = xmmword_1B26C6420;
    v36 = 2;
    LOBYTE(v69) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v62, v46);
    outlined consume of Data._Representation(v61, v67);
    v34 = 0;
    v35 = 32;
    a2 = v53;
    v15 = v52;
    goto LABEL_30;
  }

  outlined destroy of PAKEClientConfiguration(a1);
  outlined consume of Data._Representation(v62, v46);
  outlined consume of Data._Representation(v61, v67);
  return (*(v63 + 32))(a3 + *(v65 + 24), v47, v64);
}

void _s15SwiftTLSLibrary15PAKEClientStateV15deriveSharedKey33_D47F730883CC8E2AE40D0B8BEB52DCE8LLy9CryptoKit09SymmetricG0V10Foundation4DataVAA8TLSErrorOYKF(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v5 = v4;
  v9 = type metadata accessor for SPAKE2.Spake2Error();
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v21 = (&v69 - v20);
  v22 = (a2 >> 62);
  if ((a2 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v26 == 97)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v22)
    {
      if (BYTE6(a2) != 97)
      {
        goto LABEL_13;
      }

LABEL_8:
      v71 = a4;
      if (v22)
      {
        if (v22 == 2)
        {
          v27 = *(a1 + 16);
        }

        else
        {
          v27 = a1;
        }

LABEL_26:
        v33 = v27 + 65;
        if (__OFADD__(v27, 65))
        {
          __break(1u);
        }

        else
        {
          v34 = v18;
          if (v22)
          {
            if (v22 == 2)
            {
              v35 = *(a1 + 16);
              v36 = *(a1 + 24);
            }

            else
            {
              v35 = a1;
              v36 = a1 >> 32;
            }
          }

          else
          {
            v35 = 0;
            v36 = BYTE6(a2);
          }

          if (v36 >= v35 && v33 >= v35)
          {
            v69 = v19;
            v70 = v34;
            v72 = Data._Representation.subscript.getter();
            v73 = v37;
            if (!v22)
            {
              v39 = 0;
              v38 = BYTE6(a2);
LABEL_38:
              v22 = v5;
              if (v38 < v33)
              {
                goto LABEL_69;
              }

LABEL_41:
              if (v38 >= v39)
              {
                v5 = Data._Representation.subscript.getter();
                a1 = v40;
                v41 = *(type metadata accessor for PAKEClientState(0) + 24);
                v42 = v75;
                v43 = SPAKE2.Prover.processPeerShareAndGenerateVerificationTag(peerShare:)();
                v22 = v42;
                if (!v42)
                {
                  outlined consume of Data._Representation(v43, v44);
                  SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)();
                  v58 = v69;
                  v57 = v70;
                  (*(v69 + 16))(v17, v21, v70);
                  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
                  SymmetricKey.init<A>(data:)();
                  outlined consume of Data._Representation(v5, a1);
                  outlined consume of Data._Representation(v72, v73);
                  (*(v58 + 8))(v21, v57);
                  return;
                }

                v79 = v42;
                v45 = v42;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v46 = swift_dynamicCast();
                v47 = v74;
                if (v46)
                {
                  v48 = (*(v74 + 88))(v12, v9);
                  if (v48 == *MEMORY[0x1E6999680])
                  {

                    if (one-time initialization token for logger != -1)
                    {
                      swift_once();
                    }

                    v49 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v49, logger);
                    v50 = Logger.logObject.getter();
                    v51 = static os_log_type_t.error.getter();
                    if (!os_log_type_enabled(v50, v51))
                    {
                      goto LABEL_55;
                    }

                    v52 = swift_slowAlloc();
                    *v52 = 0;
                    v53 = "SPAKE2 integrity issue";
                    goto LABEL_54;
                  }

                  if (v48 == *MEMORY[0x1E6999688])
                  {

                    if (one-time initialization token for logger == -1)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_74;
                  }

                  (*(v47 + 8))(v12, v9);
                }

                a2 = a1;
                if (one-time initialization token for logger == -1)
                {
LABEL_63:
                  v59 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v59, logger);
                  v60 = v22;
                  v61 = Logger.logObject.getter();
                  v62 = static os_log_type_t.error.getter();

                  v63 = v5;
                  if (os_log_type_enabled(v61, v62))
                  {
                    v64 = swift_slowAlloc();
                    v65 = swift_slowAlloc();
                    *v64 = 138412290;
                    v66 = v22;
                    v67 = _swift_stdlib_bridgeErrorToNSError();
                    *(v64 + 4) = v67;
                    *v65 = v67;
                    _os_log_impl(&dword_1B25F5000, v61, v62, "failed to process server PAKE message: %@", v64, 0xCu);
                    outlined destroy of P256.Signing.PrivateKey?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    MEMORY[0x1B274ECF0](v65, -1, -1);
                    MEMORY[0x1B274ECF0](v64, -1, -1);
                  }

                  v77 = xmmword_1B26C6450;
                  v55 = 2;
                  v78 = 2;
                  lazy protocol witness table accessor for type TLSError and conformance TLSError();
                  swift_willThrowTypedImpl();
                  outlined consume of Data._Representation(v63, a2);
                  outlined consume of Data._Representation(v72, v73);

                  goto LABEL_66;
                }

LABEL_72:
                swift_once();
                goto LABEL_63;
              }

              goto LABEL_69;
            }

            if (v22 == 2)
            {
              v39 = *(a1 + 16);
              v38 = *(a1 + 24);
              goto LABEL_38;
            }

            v22 = v5;
            v39 = a1;
            v38 = a1 >> 32;
            if (a1 >> 32 >= v33)
            {
              goto LABEL_41;
            }

LABEL_69:
            __break(1u);
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_24:
      v27 = v22;
      goto LABEL_26;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (HIDWORD(a1) - a1 == 97)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);
  outlined copy of Data._Representation(a1, a2);
  v21 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v21, v29))
  {
    outlined consume of Data._Representation(a1, a2);
LABEL_60:

    v77 = xmmword_1B26C6400;
    v78 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v55 = 6;
    goto LABEL_66;
  }

  v18 = swift_slowAlloc();
  *v18 = 134218240;
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      v30 = 0;
      goto LABEL_59;
    }

    v32 = *(a1 + 16);
    v31 = *(a1 + 24);
    v25 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (!v25)
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v22)
  {
    v30 = BYTE6(a2);
LABEL_59:
    *(v18 + 4) = v30;
    v56 = v18;
    outlined consume of Data._Representation(a1, a2);
    *(v56 + 12) = 2048;
    *(v56 + 14) = 97;
    _os_log_impl(&dword_1B25F5000, v21, v29, "Invalid server PAKE message size, got %ld, expected %ld", v56, 0x16u);
    MEMORY[0x1B274ECF0](v56, -1, -1);
    goto LABEL_60;
  }

  LODWORD(v30) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v30 = v30;
    goto LABEL_59;
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_52:
  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, logger);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "SPAKE2 invalid input length issue";
LABEL_54:
    _os_log_impl(&dword_1B25F5000, v50, v51, v53, v52, 2u);
    MEMORY[0x1B274ECF0](v52, -1, -1);
  }

LABEL_55:

  v77 = xmmword_1B26C9520;
  v78 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(v5, a1);
  outlined consume of Data._Representation(v72, v73);

  v55 = 31;
LABEL_66:
  v68 = v76;
  *v76 = v55;
  v68[1] = 0;
  *(v68 + 16) = 2;
}

uint64_t PAKEServerState.clientShare.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t PAKEServerState.clientShare.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of ByteBuffer?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PAKEServerState.useDummyDerivation.setter(char a1)
{
  result = type metadata accessor for PAKEServerState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PAKEServerState.record.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PAKEServerState(0) + 32);

  return outlined init with copy of PAKEServerRecord(v3, a1);
}

uint64_t PAKEServerState.record.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PAKEServerState(0) + 32);

  return outlined assign with take of PAKEServerRecord(a1, v3);
}

uint64_t PAKEServerState.verifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = type metadata accessor for SPAKE2.Verifier();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEServerState.verifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = type metadata accessor for SPAKE2.Verifier();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id _s15SwiftTLSLibrary15PAKEServerStateV31deriveSharedKeyAndServerMessage33_D47F730883CC8E2AE40D0B8BEB52DCE8LL11clientShare9CryptoKit09SymmetricG0V_10Foundation4DataVtAL_tAA8TLSErrorOYKF(uint64_t a1, id a2, uint64_t a3, uint64_t *a4)
{
  v61 = a4;
  v57 = a1;
  v60 = type metadata accessor for SPAKE2.Spake2Error();
  v58 = *(v60 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v15 = *(type metadata accessor for PAKEServerState(0) + 36);
  v16 = v68;
  v17 = SPAKE2.Verifier.processPeerShareAndGenerateVerificationTag(peerShare:)();
  if (v16)
  {
    v66 = v16;
    v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v31 = v59;
    v30 = v60;
    if (swift_dynamicCast())
    {
      v32 = (*(v58 + 88))(v31, v30);
      if (v32 == *MEMORY[0x1E6999680])
      {

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, logger);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_15;
        }

        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "SPAKE2 integrity issue";
LABEL_14:
        _os_log_impl(&dword_1B25F5000, v34, v35, v37, v36, 2u);
        MEMORY[0x1B274ECF0](v36, -1, -1);
LABEL_15:

        v62 = xmmword_1B26C9520;
        v63 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();

        v39 = 31;
LABEL_22:
        v48 = v61;
        *v61 = v39;
        v48[1] = 0;
        *(v48 + 16) = 2;
        return a2;
      }

      if (v32 == *MEMORY[0x1E6999688])
      {

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, logger);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_15;
        }

        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "encountered an invalid input length in SPAKE2+ while deriving shared key in PAKE server";
        goto LABEL_14;
      }

      (*(v58 + 8))(v31, v30);
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, logger);
    v41 = v16;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = v16;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&dword_1B25F5000, v42, v43, "error deriving shared key in PAKE server: %@", v44, 0xCu);
      outlined destroy of P256.Signing.PrivateKey?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v45, -1, -1);
      MEMORY[0x1B274ECF0](v44, -1, -1);
    }

    v62 = xmmword_1B26C6450;
    v39 = 2;
    v63 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    goto LABEL_22;
  }

  v19 = v17;
  v68 = v18;
  v54 = v12;
  v55 = v8;
  v56 = v14;
  v53 = v7;
  v66 = SPAKE2.Verifier.getShare()();
  v67 = v20;
  v64 = MEMORY[0x1E6969080];
  v65 = MEMORY[0x1E6969078];
  v21 = v19;
  v22 = v68;
  *&v62 = v19;
  *(&v62 + 1) = v68;
  v23 = v66;
  v24 = v20;
  v25 = __swift_project_boxed_opaque_existential_0(&v62, MEMORY[0x1E6969080]);
  v26 = *v25;
  v27 = v25[1];
  outlined copy of Data._Representation(v23, v24);
  outlined copy of Data._Representation(v21, v22);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v26, v27);
  outlined consume of Data._Representation(v23, v24);
  __swift_destroy_boxed_opaque_existential_0(&v62);
  a2 = v66;
  v28 = v56;
  SPAKE2.Verifier.unsafeGenerateKeyWithoutKeyConfirmation()();
  v50 = v55;
  v51 = v53;
  (*(v55 + 16))(v54, v28, v53);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  SymmetricKey.init<A>(data:)();
  outlined consume of Data._Representation(v21, v22);
  (*(v50 + 8))(v28, v51);
  return a2;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SwiftTLSLibrary10PAKESchemeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMR);
  v41 = a2;
  v45 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (*(v5 + 16))
  {
    v38 = v2;
    v7 = 0;
    v39 = (v5 + 64);
    v40 = v5;
    v8 = 1 << *(v5 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = v45 + 64;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_17:
      v21 = v17 | (v7 << 6);
      v22 = *(v5 + 48) + 56 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      v44 = *(v22 + 48);
      v42 = *(*(v5 + 56) + 4 * v21);
      if ((v41 & 1) == 0)
      {
        outlined copy of Data._Representation(v23, v24);
        outlined copy of Data._Representation(v26, v25);
        outlined copy of Data._Representation(v27, v28);
      }

      v29 = *(v45 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      Data.hash(into:)();
      Data.hash(into:)();
      Hasher._combine(_:)(v44);
      result = Hasher._finalize()();
      v30 = -1 << *(v45 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v15 = v25;
        v14 = v26;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v15 = v25;
      v14 = v26;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v45 + 48) + 56 * v13;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      *(v16 + 32) = v27;
      *(v16 + 40) = v28;
      *(v16 + 48) = v44;
      *(*(v45 + 56) + 4 * v13) = v42;
      ++*(v45 + 16);
      v5 = v40;
      v10 = v43;
    }

    v18 = v7;
    result = v39;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v7 >= v11)
      {
        break;
      }

      v20 = v39[v7];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v39, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v39 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v45;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMR);
  v48 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v46 = (v5 + 64);
    v47 = v5;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v45 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v18 = (v12 - 1) & v12;
LABEL_17:
      v22 = v17 | (v9 << 6);
      v60 = v18;
      v23 = *(v5 + 48) + 40 * v22;
      v24 = *v23;
      v26 = *(v23 + 8);
      v25 = *(v23 + 16);
      v28 = *(v23 + 24);
      v27 = *(v23 + 32);
      v29 = *(v5 + 56) + (v22 << 7);
      if (v48)
      {
        v50 = *v29;
        v49 = *(v29 + 8);
        v53 = *(v29 + 56);
        v51 = *(v29 + 24);
        v52 = *(v29 + 40);
        v59 = *(v29 + 88);
        v57 = *(v29 + 72);
        v55 = *(v29 + 112);
        v56 = *(v29 + 104);
        v54 = *(v29 + 120);
        v58 = *(v29 + 121);
      }

      else
      {
        v31 = *(v29 + 32);
        v30 = *(v29 + 48);
        v32 = *v29;
        *&v62[16] = *(v29 + 16);
        *&v62[32] = v31;
        *v62 = v32;
        v34 = *(v29 + 80);
        v33 = *(v29 + 96);
        v35 = *(v29 + 64);
        *&v62[106] = *(v29 + 106);
        *&v62[80] = v34;
        *&v62[96] = v33;
        *&v62[48] = v30;
        *&v62[64] = v35;
        v58 = v62[121];
        v59 = *&v62[88];
        v57 = *&v62[72];
        v55 = *&v62[112];
        v56 = *(&v33 + 1);
        v54 = v62[120];
        v52 = *&v62[40];
        v53 = *&v62[56];
        v51 = *&v62[24];
        v49 = *&v62[8];
        v50 = *v62;
        outlined copy of Data._Representation(v26, v25);
        outlined copy of Data._Representation(v28, v27);
        outlined init with copy of PAKEServerRecord(v62, v61);
      }

      v36 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      Data.hash(into:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v13 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v13 + 8 * v39);
          if (v43 != -1)
          {
            v14 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v38) & ~*(v13 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v8 + 48) + 40 * v14;
      *v15 = v24;
      *(v15 + 8) = v26;
      *(v15 + 16) = v25;
      *(v15 + 24) = v28;
      *(v15 + 32) = v27;
      v16 = *(v8 + 56) + (v14 << 7);
      *v16 = v50;
      *(v16 + 24) = v51;
      *(v16 + 8) = v49;
      *(v16 + 56) = v53;
      *(v16 + 40) = v52;
      *(v16 + 88) = v59;
      *(v16 + 72) = v57;
      *(v16 + 104) = v56;
      *(v16 + 112) = v55;
      *(v16 + 120) = v54;
      *(v16 + 121) = v58;
      ++*(v8 + 16);
      v5 = v47;
      v12 = v60;
    }

    v19 = v9;
    result = v46;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v45)
      {
        break;
      }

      v21 = v46[v9];
      ++v19;
      if (v21)
      {
        v17 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGMR);
  v26 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(v1 + 48) + 56 * v16;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        LOBYTE(v17) = *(v17 + 48);
        v24 = *(*(v1 + 56) + 4 * v16);
        v25 = *(v3 + 48) + 56 * v16;
        *v25 = v18;
        *(v25 + 8) = v19;
        *(v25 + 16) = v20;
        *(v25 + 24) = v21;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v17;
        *(*(v3 + 56) + 4 * v16) = v24;
        outlined copy of Data._Representation(v18, v19);
        outlined copy of Data._Representation(v20, v21);
        result = outlined copy of Data._Representation(v22, v23);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v3;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMR);
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
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of PAKEServerRecord(&v40, &v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 40 * v16;
      v18 = *(v2 + 56);
      v19 = *(v2 + 48) + 40 * v16;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v16 <<= 7;
      v26 = *(v18 + v16 + 80);
      v25 = *(v18 + v16 + 96);
      v27 = *(v18 + v16 + 64);
      *(v46 + 10) = *(v18 + v16 + 106);
      v45 = v26;
      v46[0] = v25;
      v44 = v27;
      v29 = *(v18 + v16);
      v28 = *(v18 + v16 + 16);
      v30 = *(v18 + v16 + 48);
      v42 = *(v18 + v16 + 32);
      v43 = v30;
      v40 = v29;
      v41 = v28;
      v31 = *(v4 + 48) + v17;
      *v31 = v20;
      *(v31 + 8) = v21;
      *(v31 + 16) = v22;
      *(v31 + 24) = v23;
      *(v31 + 32) = v24;
      v32 = (*(v4 + 56) + v16);
      v33 = v40;
      v34 = v41;
      v35 = v43;
      v32[2] = v42;
      v32[3] = v35;
      *v32 = v33;
      v32[1] = v34;
      v36 = v44;
      v37 = v45;
      v38 = v46[0];
      *(v32 + 106) = *(v46 + 10);
      v32[5] = v37;
      v32[6] = v38;
      v32[4] = v36;
      outlined copy of Data._Representation(v21, v22);
      outlined copy of Data._Representation(v23, v24);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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