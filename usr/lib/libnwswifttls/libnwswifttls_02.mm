uint64_t ServerHello.supportedVersion.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 112);
    while ((*v3 & 0xF0) != 0x20 || (*(v3 - 18) & 1) == 0)
    {
      v3 += 88;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    v4 = *(v3 - 10);
    outlined copy of Extension.ServerCertificateType(*(v3 - 10), 1);
    v5 = 0;
  }

  else
  {
LABEL_7:
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 16);
}

BOOL specialized Sequence<>.contains(_:)(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1B2616468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t outlined copy of Extension.KeyShare(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    return outlined copy of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  if (!v3)
  {
  }

  return result;
}

uint64_t outlined consume of Extension.KeyShare.KeyShareEntry?(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

uint64_t outlined copy of Extension.KeyShare.KeyShareEntry?(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a2, a3);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v5 = v4;
  v9 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for P384EphemeralKey(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Curve25519EphemeralKey(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v5, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v24, v16, type metadata accessor for P384EphemeralKey);
      v26 = v41;
      _s15SwiftTLSLibrary16P384EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(a1, a2, &v39, a4);
      if (v26)
      {
        v28 = *(&v39 + 1);
        v27 = v39;
        v29 = v40;
        v30 = type metadata accessor for P384EphemeralKey;
        v31 = v16;
LABEL_9:
        result = outlined destroy of GeneratedEphemeralPrivateKey(v31, v30);
        v35 = v38;
        *v38 = v27;
        v35[1] = v28;
        *(v35 + 16) = v29;
        return result;
      }

      v36 = type metadata accessor for P384EphemeralKey;
      v37 = v16;
    }

    else
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v24, v12, type metadata accessor for X25519MLKEM768EphemeralKey);
      v33 = v41;
      _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF(a1, a2, &v39, a4);
      if (v33)
      {
        v28 = *(&v39 + 1);
        v27 = v39;
        v29 = v40;
        v30 = type metadata accessor for X25519MLKEM768EphemeralKey;
        v31 = v12;
        goto LABEL_9;
      }

      v36 = type metadata accessor for X25519MLKEM768EphemeralKey;
      v37 = v12;
    }
  }

  else
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v24, v20, type metadata accessor for Curve25519EphemeralKey);
    v32 = v41;
    _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(a1, a2, &v39, a4);
    if (v32)
    {
      v28 = *(&v39 + 1);
      v27 = v39;
      v29 = v40;
      v30 = type metadata accessor for Curve25519EphemeralKey;
      v31 = v20;
      goto LABEL_9;
    }

    v36 = type metadata accessor for Curve25519EphemeralKey;
    v37 = v20;
  }

  return outlined destroy of GeneratedEphemeralPrivateKey(v37, v36);
}

uint64_t _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKFTm@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(__int128 *, void, void)@<X4>, void (*a6)(char *)@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a3;
  v32 = a5;
  v26[1] = a7;
  v11 = type metadata accessor for SharedSecret();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v26 - v16;
  v18 = a4(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v26 - v21;
  *&v30 = a1;
  *(&v30 + 1) = a2;
  outlined copy of Data._Representation(a1, a2);
  v32(&v30, MEMORY[0x1E6969080], MEMORY[0x1E6969078]);
  if (v7)
  {

    v30 = xmmword_1B26C6420;
    v31 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v25 = v29;
    *v29 = xmmword_1B26C6420;
    *(v25 + 16) = 2;
  }

  else
  {
    v24 = v27;
    v32 = v18;
    v28(v22);
    (*(v24 + 16))(v15, v17, v11);
    lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret();
    SymmetricKey.init<A>(data:)();
    (*(v24 + 8))(v17, v11);
    return (*(v19 + 8))(v22, v32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret()
{
  result = lazy protocol witness table cache variable for type SharedSecret and conformance SharedSecret;
  if (!lazy protocol witness table cache variable for type SharedSecret and conformance SharedSecret)
  {
    type metadata accessor for SharedSecret();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedSecret and conformance SharedSecret);
  }

  return result;
}

uint64_t sub_1B2616C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKFAG6SHA384V_Tg5(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v43 = a4;
  v42 = a5;
  v40 = a2;
  v41 = a3;
  v46 = a1;
  v39 = type metadata accessor for SymmetricKey();
  v45 = *(v39 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v37 - v23;
  v50 = v5;
  outlined init with copy of Any?(v5, &v37 - v23, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v47 = v15;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    outlined destroy of P256.Signing.PrivateKey?(v24, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_5;
  }

  v38 = v22;
  v27 = v44;
  v26 = v45;
  v28 = v46;
  if (EnumCaseMultiPayload)
  {
LABEL_5:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, logger);
    outlined init with copy of Any?(v50, v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v33 = swift_getEnumCaseMultiPayload();
    if (v33 <= 1)
    {
      if (v33)
      {
        v34 = 0xEF74657263655365;
        v35 = 0x6B616873646E6168;
      }

      else
      {
        v34 = 0xEB00000000746572;
        v35 = 0x636553796C726165;
      }
    }

    else if (v33 == 2)
    {
      v34 = 0xEC00000074657263;
      v35 = 0x655372657473616DLL;
    }

    else
    {
      if (v33 != 3)
      {
        v34 = 0xE400000000000000;
        v35 = 1701602409;
LABEL_17:
        Logger.logInvalidStateTransition(stateName:event:)(v35, v34, 0x7672655374736F70, 0xEF6F6C6C65487265);

        v48 = xmmword_1B26C6450;
        v49 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        return 2;
      }

      v34 = 0xEA00000000007374;
      v35 = 0x65726365536C6C61;
    }

    outlined destroy of P256.Signing.PrivateKey?(v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_17;
  }

  outlined init with take of P256.Signing.PublicKey?(v24, v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  outlined init with copy of Any?(v14, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  (*(v26 + 16))(v27, v28, v39);
  v29 = v40;
  v30 = v41;
  outlined copy of Data._Representation(v40, v41);
  v31 = v38;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretV05earlyO005ecdheO016serverHelloBytes9pskFailedAHyx__GAF05EarlyO0Vyx__G_9CryptoKit09SymmetricD0VAA10ByteBufferVSbtcfCAQ6SHA384V_Tt4g5(v12, v27, v29, v30, v43, v42 & 1, v38);
  outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  outlined assign with take of PartialHandshakeResult?(v31, v50, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretV05earlyO005ecdheO016serverHelloBytes9pskFailedAHyx__GAF05EarlyO0Vyx__G_9CryptoKit09SymmetricD0VAA10ByteBufferVSbtcfCAQ6SHA384V_Tt4g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X8>)
{
  LODWORD(v84) = a6;
  v83 = a5;
  v98 = a3;
  v96 = a2;
  v94 = a7;
  v9 = type metadata accessor for SHA384();
  v99 = *(v9 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA384Digest();
  v92 = *(v12 - 8);
  v13 = *(v92 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v89 = *(v17 - 8);
  v18 = *(v89 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v79 - v22;
  v24 = type metadata accessor for SymmetricKey();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v81 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v80 = &v79 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v79 - v31;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR) + 36);
  v86 = v25;
  v87 = v24;
  v34 = v25;
  v35 = v94;
  v36 = *(v34 + 16);
  v95 = a1;
  v37 = v36(v32, a1 + v33, v24);
  v93 = a4;
  v91 = v17;
  v88 = v21;
  v85 = v32;
  if ((v84 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, logger);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v9;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1B25F5000, v39, v40, "authenticating with a psk failed (resumption or external psk)", v42, 2u);
      v43 = v42;
      v9 = v41;
      MEMORY[0x1B274ECF0](v43, -1, -1);
    }

    v44 = _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
    result = dispatch thunk of static Digest.byteCount.getter();
    if (result < 0)
    {
      break;
    }

    v79 = v44;
    v84 = v12;
    v46 = v99;
    v47 = v9;
    if (result)
    {
      v48 = result;
      v49 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v49 + 16) = v48;
      bzero((v49 + 32), v48);
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    v100 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v50 = v80;
    SymmetricKey.init<A>(data:)();
    v100 = v49;
    _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    static HKDF.extract<A>(inputKeyMaterial:salt:)();

    v51 = v90;
    dispatch thunk of HashFunction.init()();
    v52 = v97;
    dispatch thunk of HashFunction.finalize()();
    (*(v46 + 8))(v51, v47);
    v53 = v84;
    v54 = dispatch thunk of static Digest.byteCount.getter();
    v55 = v81;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v54, v81);
    (*(v92 + 8))(v52, v53);
    (*(v89 + 8))(v23, v91);
    v57 = v86;
    v56 = v87;
    v58 = *(v86 + 8);
    v58(v50, v87);
    v59 = v85;
    v58(v85, v56);
    v37 = (*(v57 + 32))(v59, v55, v56);
    a4 = v93;
    v35 = v94;
    v12 = v53;
    v9 = v47;
LABEL_10:
    MEMORY[0x1EEE9AC00](v37);
    *(&v79 - 2) = v96;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v23 = v35;
    (*(v99 + 16))(v35, v95, v9);
    v60 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v61 = v83;
      if (v60 == 2)
      {
        v62 = *(v98 + 24);
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v61 = v83;
      if (v60)
      {
        v62 = v98 >> 32;
      }

      else
      {
        v62 = BYTE6(a4);
      }
    }

    if (v62 >= v61)
    {
      v63 = Data._Representation.subscript.getter();
      v65 = v64;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v63, v64);
      outlined consume of Data._Representation(v63, v65);
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
      dispatch thunk of HashFunction.finalize()();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v67 = v66[10];
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
      v68 = v88;
      v69 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6172742073682063, 0xEC00000063696666, v69, &v35[v67]);
      v70 = v66[11];
      v71 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6172742073682073, 0xEC00000063696666, v71, &v35[v70]);
      v72 = v90;
      dispatch thunk of HashFunction.init()();
      v73 = v82;
      dispatch thunk of HashFunction.finalize()();
      (*(v99 + 8))(v72, v9);
      v74 = v66[9];
      v75 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v75, &v23[v74]);
      outlined consume of Data._Representation(v98, v93);
      outlined destroy of P256.Signing.PrivateKey?(v95, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      v76 = *(v92 + 8);
      v76(v73, v12);
      v76(v97, v12);
      (*(v89 + 8))(v68, v91);
      v77 = *(v86 + 8);
      v78 = v87;
      v77(v85, v87);
      return (v77)(v96, v78);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static HKDF.extract(inputKeyMaterial:salt:)()
{
  type metadata accessor for SHA384();
  _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  return static HKDF.extract<A>(inputKeyMaterial:salt:)();
}

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t specialized ClientSessionKeyManager.clientHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  outlined init with copy of Any?(v2, &v25 - v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_7:
      v17 = type metadata accessor for SymmetricKey();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    outlined init with take of P256.Signing.PublicKey?(v15, v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    v22 = *(v8 + 40);
    v23 = type metadata accessor for SymmetricKey();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a1, &v11[v22], v23);
    outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    outlined init with take of P256.Signing.PublicKey?(v15, v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v19 = *(v4 + 40);
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v7[v19], v20);
    outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

uint64_t specialized ClientSessionKeyManager.serverHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  outlined init with copy of Any?(v2, &v25 - v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_7:
      v17 = type metadata accessor for SymmetricKey();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    outlined init with take of P256.Signing.PublicKey?(v15, v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    v22 = *(v8 + 44);
    v23 = type metadata accessor for SymmetricKey();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a1, &v11[v22], v23);
    outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    outlined init with take of P256.Signing.PublicKey?(v15, v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v19 = *(v4 + 44);
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v7[v19], v20);
    outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV35handleReadServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B25F5000, v4, v5, "client expecting ee", v6, 2u);
    MEMORY[0x1B274ECF0](v6, -1, -1);
  }

  if (v0[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v0, v0, &v22, &v23);
  if (v1)
  {
    return v22;
  }

  v18[6] = v29;
  v18[7] = v30;
  v18[2] = v25;
  v18[3] = v26;
  v18[4] = v27;
  v18[5] = v28;
  v18[0] = v23;
  v18[1] = v24;
  *&v21[80] = v29;
  *&v21[96] = v30;
  *&v21[16] = v25;
  *&v21[32] = v26;
  *&v21[48] = v27;
  *&v21[64] = v28;
  v19 = v31;
  v21[112] = v31;
  v20 = v23;
  *v21 = v24;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v20) == 1)
  {
LABEL_6:
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B25F5000, v7, v8, "incomplete message, waiting for more data", v9, 2u);
      MEMORY[0x1B274ECF0](v9, -1, -1);
    }

    return 1;
  }

  else
  {
    v32[4] = *&v21[72];
    v33[0] = *&v21[88];
    *(v33 + 9) = *&v21[97];
    v32[0] = *&v21[8];
    v32[1] = *&v21[24];
    v32[2] = *&v21[40];
    v32[3] = *&v21[56];
    if (v21[112] == 2)
    {
      v11 = *&v21[8];

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1B25F5000, v12, v13, "client got ee", v14, 2u);
        MEMORY[0x1B274ECF0](v14, -1, -1);
      }

      v15 = v20;
      v16 = *v21;
      v17 = v2 + *(type metadata accessor for HandshakeStateMachine(0) + 24);
      _s15SwiftTLSLibrary14HandshakeStateO33receivedServerEncryptedExtensions_14extensionBytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(v11, v15, *(&v15 + 1), v16);
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of HandshakeMessage(&v21[8]);
      return 0;
    }

    else
    {
      HandshakeStateMachine.logUnexpectedMessage(message:)(v32);
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 4;
    }
  }
}

uint64_t _s15SwiftTLSLibrary19EncryptedExtensionsV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readD0L_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v46 = *a1;
  LOWORD(v65) = 0;
  v3 = a1[2];
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
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
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = MEMORY[0x1E69E7CC0];
  v47 = BYTE6(v2);
  v48 = v2 >> 62;
  while (1)
  {
    if (v7 <= 1)
    {
      v9 = v47;
      if (v7)
      {
        v9 = v46 >> 32;
      }

LABEL_8:
      if (v9 < v4)
      {
        goto LABEL_62;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v9 = *(v46 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
      goto LABEL_62;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    *&v59 = *a1;
    *(&v59 + 1) = v11;
    if (v4 < v3)
    {
      goto LABEL_64;
    }

    v49 = v5;
    *&v51 = v3;
    *(&v51 + 1) = v4;
    v50 = v4;
    outlined copy of Data._Representation(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    v12 = v65;
    a1[2] = v50;
    v14 = *a1;
    v13 = a1[1];
    LOWORD(v65) = 0;
    v15 = v50 + 2;
    if (__OFADD__(v50, 2))
    {
      goto LABEL_65;
    }

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      break;
    }

    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v13);
    }

LABEL_19:
    if (v17 < v15)
    {
      goto LABEL_58;
    }

LABEL_22:
    *&v59 = v14;
    *(&v59 + 1) = v13;
    if (v15 < v50)
    {
      goto LABEL_66;
    }

    *&v51 = v50;
    *(&v51 + 1) = v50 + 2;
    outlined copy of Data._Representation(v14, v13);
    outlined copy of Data._Representation(v14, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    v18 = bswap32(v65) >> 16;
    a1[2] = v15;
    v19 = v15 + v18;
    if (__OFADD__(v15, v18))
    {
      goto LABEL_67;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v22)
      {
        v23 = v20 >> 32;
      }

      else
      {
        v23 = BYTE6(v21);
      }

LABEL_30:
      if (v23 < v19)
      {
        goto LABEL_59;
      }

      goto LABEL_33;
    }

    if (v22 == 2)
    {
      v23 = *(v20 + 24);
      goto LABEL_30;
    }

    if (v19 > 0)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v19 < v15)
    {
      goto LABEL_68;
    }

    v24 = Data._Representation.subscript.getter();
    v26 = 0;
    a1[2] = v19;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = v49;
      if (v27 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      v28 = v49;
      if (v27)
      {
        v26 = v24;
      }
    }

    v65 = v24;
    v66 = v25;
    v67 = v26;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v65, bswap32(v12) >> 16, 8, 0, v57, &v59);
    if (v28)
    {
      v8 = v57[0];
      v43 = v57[1];
      v38 = v58;
      v42 = v65;
      v41 = v66;
      goto LABEL_61;
    }

    v5 = 0;
    v29 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v65 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v65 >> 32;
    }

    else
    {
      v30 = BYTE6(v66);
    }

    if (__OFSUB__(v30, v67))
    {
      goto LABEL_69;
    }

    if (v30 != v67)
    {
      v38 = 2;
      v39 = v65;
      v40 = v66;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v51 = v59;
      v52 = v60;
      outlined destroy of Extension(&v51);
      v41 = v40;
      v42 = v39;
      v43 = 0;
      v8 = 1;
LABEL_61:
      outlined consume of Data._Representation(v42, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v14;
      a1[1] = v13;
      a1[2] = v50;
      *&v59 = v8;
      *(&v59 + 1) = v43;
      LOBYTE(v60) = v38;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      goto LABEL_62;
    }

    outlined consume of Data._Representation(v65, v66);
    outlined consume of Data._Representation(v14, v13);
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v51 = v59;
    v52 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    }

    LODWORD(v7) = v48;
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 16) = v32 + 1;
    v33 = v8 + 88 * v32;
    v34 = v52;
    *(v33 + 32) = v51;
    *(v33 + 48) = v34;
    v35 = v53;
    v36 = v54;
    v37 = v55;
    *(v33 + 112) = v56;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
    LOWORD(v65) = 0;
    v3 = a1[2];
    v4 = v3 + 2;
    if (__OFADD__(v3, 2))
    {
      goto LABEL_63;
    }
  }

  if (v16 == 2)
  {
    v17 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v15 < 1)
  {
    goto LABEL_22;
  }

LABEL_58:
  outlined copy of Data._Representation(v14, v13);
  v20 = *a1;
  v21 = a1[1];
LABEL_59:
  outlined consume of Data._Representation(v20, v21);
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v50;
LABEL_62:
  v44 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(uint64_t result)
{
  if (result == 8)
  {
    v11 = *v1;
    v12 = v1[1];
    v13 = v1[2];
    v14 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v14 == 2)
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
      v15 = BYTE6(v12);
      v16 = v11 >> 32;
      if (!v14)
      {
        v16 = v15;
      }
    }

    if (!__OFSUB__(v16, v13))
    {
      if (v16 == v13)
      {
        return 0;
      }

      v28 = xmmword_1B26C6410;
      LOBYTE(v29) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 5;
    }

    __break(1u);
  }

  else
  {
    if (result != 1)
    {
      v10 = result;
      v28 = result;
      LOBYTE(v29) = 0;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v10;
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
      v28 = 0uLL;
      LOBYTE(v29) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 0;
    }

    *&v28 = v7;
    *(&v28 + 1) = v8;
    v29 = v9;
    _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFA2CzAMYKXEfU_(&v28, v25, v27);
    if (v2)
    {
      v10 = v25[0];
      v17 = v25[1];
      v18 = v26;
      v20 = *(&v28 + 1);
      v19 = v28;
      goto LABEL_31;
    }

    result = v28;
    v21 = *(&v28 + 1) >> 62;
    if ((*(&v28 + 1) >> 62) > 1)
    {
      if (v21 == 2)
      {
        v22 = *(v28 + 24);
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v21)
    {
      v22 = v28 >> 32;
    }

    else
    {
      v22 = BYTE14(v28);
    }

    if (!__OFSUB__(v22, v29))
    {
      if (v22 == v29)
      {
        outlined consume of Data._Representation(v28, *(&v28 + 1));
        outlined consume of Data._Representation(v4, v3);
        return v27[0];
      }

      v18 = 2;
      v24 = *(&v28 + 1);
      v23 = v28;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v27[0], v27[1]);
      v20 = v24;
      v19 = v23;
      v17 = 0;
      v10 = 1;
LABEL_31:
      outlined consume of Data._Representation(v19, v20);
      outlined consume of Data._Representation(*v1, v1[1]);
      *v1 = v4;
      v1[1] = v3;
      v1[2] = v5;
      *&v28 = v10;
      *(&v28 + 1) = v17;
      LOBYTE(v29) = v18;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV8readALPN11messageTypeAA9ExtensionO35ApplicationLayerProtocolNegotiationOAA09HandshakeH0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a1 != 8 && a1 != 1)
  {
    countAndFlagsBits = a1 | 0x100000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_9;
  }

  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  outlined copy of Data._Representation(*v1, v5);
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v8 & 0x10000) != 0 || (v9 = ByteBuffer.readSlice(length:)(v8), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    countAndFlagsBits = 0;
    goto LABEL_9;
  }

  v57 = v9;
  v58 = v10;
  v59 = v11;
  v15 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v9 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v9 >> 32;
  }

  else
  {
    v16 = BYTE6(v10);
  }

  if (__OFSUB__(v16, v11))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  result = ByteBuffer.readSlice(length:)(v16 - v11);
  v56 = result;
  if (v17 >> 60 != 15)
  {
    v19 = v17;
    v20 = v18;
    v21 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v22 = *(v57 + 24);
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v21)
    {
      v22 = v57 >> 32;
    }

    else
    {
      v22 = BYTE6(v58);
    }

    if (!__OFSUB__(v22, v59))
    {
      if (v22 != v59)
      {
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of ByteBuffer?(v56, v19);
        outlined consume of Data._Representation(v57, v58);
        outlined consume of Data._Representation(*v4, v4[1]);
        *v4 = v6;
        v4[1] = v5;
        v4[2] = v7;
        swift_willThrowTypedImpl();
        countAndFlagsBits = 1;
        goto LABEL_9;
      }

      outlined consume of Data._Representation(v57, v58);
      outlined consume of Data._Representation(v6, v5);
      v60 = v19;
      if (a1 != 1)
      {
        v23 = ByteBuffer.readApplicationLayerProtocol()();
        if (!v23.value._object)
        {
          goto LABEL_98;
        }

        countAndFlagsBits = v23.value._countAndFlagsBits;
        v24 = v19 >> 62;
        if ((v19 >> 62) > 1)
        {
          if (v24 == 2)
          {
            v25 = *(v56 + 24);
          }

          else
          {
            v25 = 0;
          }
        }

        else if (v24)
        {
          v25 = v56 >> 32;
        }

        else
        {
          v25 = BYTE6(v19);
        }

        if (!__OFSUB__(v25, v20))
        {
          if (v25 - v20 <= 0)
          {
            outlined consume of Data._Representation(v56, v19);
LABEL_9:
            v13 = *MEMORY[0x1E69E9840];
            return countAndFlagsBits;
          }

LABEL_98:
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v51 = v56;
          v52 = v19;
LABEL_99:
          outlined consume of Data._Representation(v51, v52);
          countAndFlagsBits = 18;
          goto LABEL_9;
        }

LABEL_111:
        __break(1u);
      }

      v26 = v19 >> 62;
      countAndFlagsBits = MEMORY[0x1E69E7CC0];
      v54 = BYTE6(v19);
      v55 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        goto LABEL_37;
      }

LABEL_35:
      v27 = v54;
      if (v26)
      {
        v27 = v56 >> 32;
      }

      while (1)
      {
        v28 = __OFSUB__(v27, v20);
        v29 = v27 - v20;
        if (v28)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (v29 < 1)
        {
          outlined consume of Data._Representation(v56, v60);
          goto LABEL_9;
        }

        v30 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_102;
        }

        v31 = v60 >> 62;
        if ((v60 >> 62) <= 1)
        {
          break;
        }

        if (v31 == 2)
        {
          v32 = *(v56 + 24);
          goto LABEL_49;
        }

        if (v30 >= 1)
        {
          goto LABEL_89;
        }

LABEL_52:
        if (v30 < v20)
        {
          goto LABEL_103;
        }

        outlined copy of Data._Representation(v56, v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
        lazy protocol witness table accessor for type Data and conformance Data();
        lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
        DataProtocol.copyBytes<A>(to:from:)();
        outlined consume of Data._Representation(v56, v60);
        ++v20;
        if (v31 <= 1)
        {
          if (v31)
          {
            v33 = v56 >> 32;
          }

          else
          {
            v33 = BYTE6(v60);
          }

LABEL_59:
          if (v33 < v30)
          {
            goto LABEL_89;
          }

          goto LABEL_62;
        }

        if (v31 == 2)
        {
          v33 = *(v56 + 24);
          goto LABEL_59;
        }

        if (v30 >= 1)
        {
LABEL_89:

          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v51 = v56;
          v52 = v60;
          goto LABEL_99;
        }

LABEL_62:
        v34 = Data._Representation.subscript.getter();
        v35 = v34;
        v37 = v36;
        v38 = v36 >> 62;
        if ((v36 >> 62) > 1)
        {
          if (v38 != 2)
          {
            goto LABEL_69;
          }

          v34 = *(v34 + 16);
          v39 = *(v35 + 24);
        }

        else
        {
          if (!v38)
          {
            goto LABEL_69;
          }

          v34 = v34;
          v39 = v35 >> 32;
        }

        if (v39 < v34)
        {
          goto LABEL_104;
        }

LABEL_69:
        v40 = Data._Representation.subscript.getter();
        v26 = v40;
        v42 = v41;
        v43 = v41 >> 62;
        if ((v41 >> 62) > 1)
        {
          if (v43 == 2)
          {
            v44 = *(v40 + 16);
            v53 = *(v40 + 24);
            if (__DataStorage._bytes.getter() && __OFSUB__(v44, __DataStorage._offset.getter()))
            {
              goto LABEL_109;
            }

            if (__OFSUB__(v53, v44))
            {
              goto LABEL_108;
            }

LABEL_82:
            MEMORY[0x1B274CD90]();
          }
        }

        else if (v43)
        {
          if (v40 >> 32 < v40)
          {
            goto LABEL_107;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v26, __DataStorage._offset.getter()))
          {
            goto LABEL_110;
          }

          goto LABEL_82;
        }

        v45 = static String._fromUTF8Repairing(_:)();
        v47 = v46;
        outlined consume of Data._Representation(v35, v37);
        outlined consume of Data._Representation(v26, v42);
        LODWORD(v26) = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(countAndFlagsBits + 16) + 1, 1, countAndFlagsBits);
        }

        v49 = *(countAndFlagsBits + 16);
        v48 = *(countAndFlagsBits + 24);
        if (v49 >= v48 >> 1)
        {
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, countAndFlagsBits);
        }

        *(countAndFlagsBits + 16) = v49 + 1;
        v50 = countAndFlagsBits + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        if (v55 <= 1)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v26 == 2)
        {
          v27 = *(v56 + 24);
        }

        else
        {
          v27 = 0;
        }
      }

      if (v31)
      {
        v32 = v56 >> 32;
      }

      else
      {
        v32 = BYTE6(v60);
      }

LABEL_49:
      if (v32 < v30)
      {
        goto LABEL_89;
      }

      goto LABEL_52;
    }

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
    goto LABEL_111;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readApplicationLayerProtocol()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v0 & 0x100) == 0)
  {
    v1 = ByteBuffer.readSlice(length:)(v0);
    if (v2 >> 60 != 15)
    {
      v5 = v1;
      v6 = v2;
      v7 = v2 >> 62;
      if ((v2 >> 62) > 1)
      {
        if (v7 == 2)
        {
          v4 = *(v1 + 24);
        }

        else
        {
          v4 = 0;
        }
      }

      else if (v7)
      {
        v4 = v1 >> 32;
      }

      else
      {
        v4 = BYTE6(v2);
      }

      if (v4 < v3)
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = Data._Representation.subscript.getter();
      v10 = v9;
      v11 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(v8, v9);
      if (v12)
      {
        v13 = v11;
        v14 = v5;
        v15 = v12;
      }

      else
      {
        v21 = v8;
        v22 = v10;
        outlined copy of Data._Representation(v8, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
        if (swift_dynamicCast())
        {
          outlined init with take of ContiguousBytes(v19, v23);
          __swift_project_boxed_opaque_existential_0(v23, v24);
          if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
          {
            outlined consume of Data._Representation(v8, v10);
            __swift_project_boxed_opaque_existential_0(v23, v24);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            outlined consume of ByteBuffer?(v5, v6);
            v16 = v19[0];
            __swift_destroy_boxed_opaque_existential_0(v23);
            v4 = *(&v16 + 1);
            v1 = v16;
            goto LABEL_22;
          }

          __swift_destroy_boxed_opaque_existential_0(v23);
        }

        else
        {
          v20 = 0;
          memset(v19, 0, sizeof(v19));
          outlined destroy of _HasContiguousBytes?(v19);
        }

        v13 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(v8, v10);
        v15 = v17;
        v14 = v5;
      }

      outlined consume of ByteBuffer?(v14, v6);
      outlined consume of Data._Representation(v8, v10);
      v4 = v15;
      v1 = v13;
      goto LABEL_22;
    }
  }

  v1 = 0;
  v4 = 0;
LABEL_22:
  result.value._object = v4;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  MEMORY[0x1B274CD90]();
LABEL_16:
  result = static String._fromUTF8Repairing(_:)();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV27readQUICTransportParameters11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 != 8 && a1 != 1)
  {
    v7 = a1 | 0x390000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v7;
  }

  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v3 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    if (v5)
    {
      v6 = v3 >> 32;
    }
  }

  v9 = __OFSUB__(v6, result);
  v10 = v6 - result;
  if (v9)
  {
    __break(1u);
    goto LABEL_30;
  }

  v11 = result + v10;
  if (__OFADD__(result, v10))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v11)
      {
        goto LABEL_20;
      }
    }

    else if (v11 <= 0)
    {
      goto LABEL_20;
    }

LABEL_27:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  if (v5)
  {
    v12 = v3 >> 32;
  }

  else
  {
    v12 = BYTE6(v4);
  }

  if (v12 < v11)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v11 < result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  result = Data._Representation.subscript.getter();
  v1[2] = v11;
  if (v13 >> 62 == 2)
  {
    v14 = *(result + 16);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV25readServerCertificateType07messageH0AA9ExtensionO0fgH0OAA09HandshakeH0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 != 1)
  {
    if (a1 != 8)
    {
      v3 = a1 | 0x140000;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      goto LABEL_10;
    }

    v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v2 & 0x100) == 0)
    {
      v3 = v2;
      goto LABEL_10;
    }

LABEL_8:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v3 = 0;
    goto LABEL_10;
  }

  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  outlined copy of Data._Representation(*v1, v4);
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v7 & 0x100) != 0 || (v8 = ByteBuffer.readSlice(length:)(v7), v9 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    goto LABEL_8;
  }

  v13 = v8;
  v14 = v10;
  v15 = v9 >> 62;
  v16 = BYTE6(v9);
  v17 = v8 >> 32;
  v31 = BYTE6(v9);
  if ((v9 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v8 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v8 >> 32;
  }

  v32 = v9;
  v28 = v6;
  v29 = v5;
  v30 = v4;
  v18 = __OFSUB__(v16, v10);
  v19 = v16 - v10;
  if (v18)
  {
    goto LABEL_45;
  }

  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v21 = v14 + 1;
  v22 = v32;
  if (__OFADD__(v14, 1))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v3 = v20;
  while (v15 > 1)
  {
    if (v15 == 2)
    {
      v23 = *(v13 + 24);
      goto LABEL_26;
    }

    if (v21 >= 1)
    {
      v26 = 0;
      goto LABEL_39;
    }

LABEL_29:
    v33 = v22;
    if (v21 < v14)
    {
      goto LABEL_44;
    }

    outlined copy of Data._Representation(v13, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v13, v33);
    v25 = *(v3 + 16);
    v24 = *(v3 + 24);
    if (v25 >= v24 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v3);
    }

    *(v3 + 16) = v25 + 1;
    *(v3 + v25 + 32) = 0;
    v14 = v21;
    v18 = __OFADD__(v21++, 1);
    v22 = v32;
    if (v18)
    {
      goto LABEL_43;
    }
  }

  v23 = v31;
  if (v15)
  {
    v23 = v17;
  }

LABEL_26:
  if (v23 >= v21)
  {
    goto LABEL_29;
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

LABEL_39:
  if (__OFSUB__(v26, v14))
  {
LABEL_46:
    __break(1u);
  }

  if (v26 == v14)
  {
    outlined consume of Data._Representation(v13, v22);
    outlined consume of Data._Representation(v29, v4);
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
    v3 = 1;
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO33receivedServerEncryptedExtensions_14extensionBytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v24 = a4;
  v8 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-1] - v13;
  v15 = type metadata accessor for HandshakeState(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v25[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25[-1] - v20;
  outlined init with copy of HandshakeState(v4, &v25[-1] - v20, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of HandshakeState.IdleState(v21, v14, type metadata accessor for HandshakeState.ServerHelloState);
    outlined init with copy of HandshakeState(v14, v12, type metadata accessor for HandshakeState.ServerHelloState);

    outlined copy of Data._Representation(a2, a3);
    v22 = v25[4];
    _s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V08originalD009encryptedF014extensionBytesAeC011ServerHelloD0V_AA0eF0VAA10ByteBufferVtAA8TLSErrorOYKcfC(v12, a1, a2, a3, v24, v25, v19);
    if (v22)
    {
      v4 = v25[0];
      outlined destroy of HandshakeState(v14, type metadata accessor for HandshakeState.ServerHelloState);
    }

    else
    {
      outlined destroy of HandshakeState(v4, type metadata accessor for HandshakeState);
      outlined destroy of HandshakeState(v14, type metadata accessor for HandshakeState.ServerHelloState);
      swift_storeEnumTagMultiPayload();
      outlined init with take of HandshakeState.IdleState(v19, v4, type metadata accessor for HandshakeState);
    }

    return v4;
  }

  else
  {
    result = outlined destroy of HandshakeState(v21, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V08originalD009encryptedF014extensionBytesAeC011ServerHelloD0V_AA0eF0VAA10ByteBufferVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v154 = a5;
  v163 = a3;
  v176 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v148 = (&v145 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v149 = (&v145 - v16);
  v157 = type metadata accessor for SessionTicket();
  v17 = *(*(v157 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v157);
  v156 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v145 - v20;
  v171 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  v21 = *(*(v171 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v171);
  v169 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v164 = (&v145 - v24);
  v25 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v26 = a7 + v25[5];
  v27 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v166 = v26;
  v153 = v27;
  v152 = v29;
  v151 = v28 + 56;
  (v29)(v26, 1, 1);
  v30 = (a7 + v25[6]);
  *v30 = 0;
  v30[1] = 0;
  v159 = v30;
  v31 = (a7 + v25[7]);
  *v31 = xmmword_1B26C5EF0;
  v175 = v31;
  v31[2] = 0;
  v168 = v25[8];
  *(a7 + v168) = 0;
  v160 = v25;
  v32 = v25[12];
  v33 = type metadata accessor for PAKEClientState(0);
  v146 = *(v33 - 8);
  v34 = *(v146 + 56);
  v167 = v32;
  v147 = v33;
  v34(a7 + v32, 1, 1);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v172 = __swift_project_value_buffer(v35, logger);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1B25F5000, v36, v37, "validating encrypted extensions", v38, 2u);
    MEMORY[0x1B274ECF0](v38, -1, -1);
  }

  v189 = MEMORY[0x1E69E7CD0];
  v39 = v176;
  v40 = *(v176 + 16);
  v173 = a1;
  v165 = a4;
  if (!v40)
  {
LABEL_50:

    v161 = 0;
    v174 = 0;
    v162 = 1;
LABEL_55:

    v70 = type metadata accessor for HandshakeState.ServerHelloState(0);
    outlined init with copy of HandshakeState(a1 + v70[5], v164, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v72 = *v164;
        v73 = v148;
        outlined init with copy of Any?(a1 + v70[12], v148, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
        v74 = (*(v146 + 48))(v73, 1, v147);
        if (v74 == 1)
        {
          outlined destroy of P256.Signing.PrivateKey?(v73, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
          v75 = 0;
        }

        else
        {
          v75 = *v73;
          outlined destroy of HandshakeState(v73, type metadata accessor for PAKEClientState);
        }

        v105 = v149;
        *v149 = v72;
        *(v105 + 2) = v75;
        *(v105 + 4) = v74 == 1;
        v106 = v153;
        swift_storeEnumTagMultiPayload();
        v152(v105, 0, 1, v106);
        outlined assign with take of PartialHandshakeResult?(v105, v166, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
LABEL_78:
        a1 = v173;
        goto LABEL_79;
      }

      outlined init with take of HandshakeState.IdleState(v164, v156, type metadata accessor for SessionTicket);
      if (v162)
      {
        v85 = v166;
        outlined destroy of P256.Signing.PrivateKey?(v166, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
        outlined init with take of HandshakeState.IdleState(v156, v85, type metadata accessor for SessionTicket);
        v86 = v153;
        swift_storeEnumTagMultiPayload();
        v152(v85, 0, 1, v86);
LABEL_79:
        outlined assign with copy of PAKEClientState?(a1 + v70[12], a7 + v167);
        LOBYTE(v187) = *(a1 + 64);
        v107 = v187;
        v108 = *(a1 + 48);
        v185 = *(a1 + 32);
        v186 = v108;
        v109 = *(a1 + 16);
        v183 = *a1;
        v110 = v183;
        v184 = v109;
        *(a7 + 32) = v185;
        *(a7 + 48) = v108;
        *(a7 + 64) = v107;
        *a7 = v110;
        *(a7 + 16) = v109;
        v111 = v160;
        outlined init with copy of Any?(a1 + v70[6], a7 + v160[9], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
        *(a7 + v111[10]) = *(a1 + v70[9]);
        *(a7 + v111[11]) = *(a1 + v70[10]);
        *(a7 + v111[13]) = *(a1 + v70[13]);
        outlined init with copy of HandshakeStateMachine.Configuration(&v183, &v178);
        v112 = v163;
        v113 = v165;
        v114 = v155;
        v115 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v163, v165, v154);
        if (v114)
        {
          v118 = a1;
          v119 = v115;
          v120 = v116;
          v92 = v117;
          outlined destroy of HandshakeState(v118, type metadata accessor for HandshakeState.ServerHelloState);
          outlined consume of Data._Representation(v112, v113);
          v121 = *(a7 + 48);
          v180 = *(a7 + 32);
          v181 = v121;
          v182 = *(a7 + 64);
          v122 = *a7;
          v179 = *(a7 + 16);
          v178 = v122;
          outlined destroy of HandshakeStateMachine.Configuration(&v178);
          v123 = 1;
          goto LABEL_112;
        }

        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_1B25F5000, v124, v125, "encrypted extensions valid", v126, 2u);
          v127 = v126;
          v113 = v165;
          MEMORY[0x1B274ECF0](v127, -1, -1);
        }

        outlined consume of Data._Representation(v163, v113);

        return outlined destroy of HandshakeState(v173, type metadata accessor for HandshakeState.ServerHelloState);
      }

      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_1B25F5000, v129, v130, "server provided server_certificate_type extension while resuming", v131, 2u);
        v132 = v131;
        a1 = v173;
        MEMORY[0x1B274ECF0](v132, -1, -1);
      }

      v183 = xmmword_1B26C6400;
      v92 = 2;
      LOBYTE(v184) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v163, a4);
      outlined destroy of HandshakeState(v156, type metadata accessor for SessionTicket);
      v104 = a1;
    }

    else
    {
      v76 = *v164;
      v77 = v164[1];
      v78 = *(v164 + 1);
      if (v162)
      {
        v79 = 0;
      }

      else
      {
        v79 = v161;
      }

      v80 = *(v78 + 16);
      v81 = (v78 + 32);
      while (v80)
      {
        v82 = *v81++;
        --v80;
        if (v82 == v79)
        {
          v83 = v166;
          outlined destroy of P256.Signing.PrivateKey?(v166, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);

          *v83 = v76;
          *(v83 + 2) = v77;
          *(v83 + 4) = v79;
          *(v83 + 8) = 0;
          *(v83 + 16) = 0;
          v84 = v153;
          swift_storeEnumTagMultiPayload();
          v152(v83, 0, 1, v84);
          goto LABEL_78;
        }
      }

      v93 = *(v164 + 1);

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v183 = v97;
        *v96 = 136315138;
        v98 = CertificateType.description.getter(v79);
        v100 = a7;
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v183);

        *(v96 + 4) = v101;
        a7 = v100;
        _os_log_impl(&dword_1B25F5000, v94, v95, "server chose non-offered certificate type %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x1B274ECF0](v97, -1, -1);
        MEMORY[0x1B274ECF0](v96, -1, -1);
      }

      v102 = v165;
      v103 = v163;
      v183 = xmmword_1B26C6400;
      v92 = 2;
      LOBYTE(v184) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v103, v102);
      v104 = v173;
    }

    outlined destroy of HandshakeState(v104, type metadata accessor for HandshakeState.ServerHelloState);
    v120 = 0;
    v123 = 0;
    v119 = 6;
    goto LABEL_112;
  }

  v170 = a7;
  v150 = a6;
  v174 = 0;
  a4 = 0;
  v161 = 0;
  v177 = v40 - 1;
  a6 = 32;
  v162 = 1;
  while (1)
  {
    v41 = *(v39 + a6 + 48);
    v185 = *(v39 + a6 + 32);
    v186 = v41;
    v187 = *(v39 + a6 + 64);
    v188 = *(v39 + a6 + 80);
    v42 = *(v39 + a6 + 16);
    v183 = *(v39 + a6);
    v184 = v42;
    a7 = a4 + 1;
    v43 = 42;
    switch(v188 >> 4)
    {
      case 1:

        v43 = 10;
        break;
      case 2:
        sub_1B260EDD8(v183, BYTE8(v183) & 1);
        v43 = 43;
        break;
      case 3:
        outlined copy of Extension.ApplicationLayerProtocolNegotiation();
        v43 = 16;
        break;
      case 4:
        outlined copy of Extension.KeyShare(v183, *(&v183 + 1), v184);
        v43 = 51;
        break;
      case 5:
        break;
      case 6:

        v43 = 13;
        break;
      case 7:
        sub_1B260EDD8(v183, BYTE8(v183) & 1);
        v43 = 20;
        break;
      case 8:
        outlined copy of Data._Representation(v183, *(&v183 + 1));
        v43 = 57;
        break;
      case 9:

        v43 = 45;
        break;
      case 0xA:
        outlined copy of Extension.PreSharedKey(v183, *(&v183 + 1), v184 & 1);
        v43 = 41;
        break;
      case 0xB:
        v43 = 58;
        break;
      case 0xC:
        outlined copy of Extension.PAKE(v183, *(&v183 + 1), v184, *(&v184 + 1), v185, *(&v185 + 1), v186, *(&v186 + 1), v187, *(&v187 + 1), v188 & 1);
        v43 = 35387;
        break;
      case 0xD:
        v44 = v183;
        outlined copy of Data._Representation(*(&v183 + 1), v184);
        v43 = v44;
        break;
      default:
        outlined copy of Data?(v183, *(&v183 + 1));
        v43 = 0;
        break;
    }

    if ((specialized Set._Variant.insert(_:)(&v178, v43) & 1) == 0)
    {
      break;
    }

    v45 = v183;
    v46 = BYTE8(v183);
    v47 = *(&v183 + 9) | ((*(&v183 + 13) | (HIBYTE(v183) << 16)) << 32);
    v48 = v184;
    v49 = v188 >> 4;
    if (v49 > 6)
    {
      if (v49 == 7)
      {
        if (BYTE8(v183))
        {
          outlined destroy of Extension(&v183);
          v162 = 0;
          v161 = v45;
          goto LABEL_47;
        }

LABEL_41:
        outlined destroy of Extension(&v183);
        goto LABEL_47;
      }

      if (v49 != 8)
      {
        goto LABEL_41;
      }

      if (*(a1 + 32) >> 60 == 15)
      {
        outlined copy of Data._Representation(v183, *(&v183 + 1));

        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&dword_1B25F5000, v133, v134, "server unexpectedly offered transport parameters", v135, 2u);
          v136 = v135;
          a1 = v173;
          MEMORY[0x1B274ECF0](v136, -1, -1);
        }

        v178 = xmmword_1B26C6400;
        v92 = 2;
        LOBYTE(v179) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of Extension(&v183);
        goto LABEL_91;
      }

      v56 = *(&v184 + 1) | ((*(&v184 + 5) | (BYTE7(v184) << 16)) << 32);
      v57 = v175;
      v58 = v175[2];
      outlined consume of ByteBuffer?(*v175, v175[1]);
      *v57 = v45;
      *(v57 + 8) = v46;
      *(v57 + 15) = BYTE6(v47);
      *(v57 + 13) = WORD2(v47);
      *(v57 + 9) = v47;
      *(v57 + 16) = v48;
      *(v57 + 23) = BYTE6(v56);
      *(v57 + 21) = WORD2(v56);
      *(v57 + 17) = v56;
      v39 = v176;
      a1 = v173;
    }

    else if (v49 == 3)
    {
      if ((v184 & 1) == 0)
      {
        goto LABEL_41;
      }

      if (!*(a1 + 48))
      {

        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          v90 = "server unexpectedly offered alpn";
LABEL_71:
          _os_log_impl(&dword_1B25F5000, v87, v88, v90, v89, 2u);
          v91 = v89;
          a1 = v173;
          MEMORY[0x1B274ECF0](v91, -1, -1);
        }

LABEL_72:

        v178 = xmmword_1B26C6400;
        v92 = 2;
        LOBYTE(v179) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
LABEL_91:
        outlined consume of Data._Representation(v163, v165);
        outlined destroy of Extension(&v183);
        v137 = a1;
LABEL_92:
        outlined destroy of HandshakeState(v137, type metadata accessor for HandshakeState.ServerHelloState);
        v120 = 0;
        v123 = 0;
        v119 = 6;
        a6 = v150;
        a7 = v170;
        goto LABEL_112;
      }

      v59 = BYTE8(v183) | (v47 << 8);

      v60 = v159;
      *v159 = v45;
      v60[1] = v59;
      v174 = v59;
    }

    else
    {
      if (v49 != 5)
      {
        goto LABEL_41;
      }

      v50 = type metadata accessor for HandshakeState.ServerHelloState(0);
      if (*(a1 + v50[9]) & 1) == 0 && *(a1 + v50[10]) != 1 || (v51 = a1 + v50[11], (*(v51 + 2)) || *v51)
      {

        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          v90 = "server unexpectedly offered early data";
          goto LABEL_71;
        }

        goto LABEL_72;
      }

      v52 = v169;
      outlined init with copy of HandshakeState(a1 + v50[5], v169, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v53 = v158;
        outlined init with take of HandshakeState.IdleState(v52, v158, type metadata accessor for SessionTicket);
        if (!*(v53 + *(v157 + 40)))
        {

          v138 = Logger.logObject.getter();
          v139 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            *v140 = 0;
            _os_log_impl(&dword_1B25F5000, v138, v139, "server unexpectedly offered early data for session with max early data size 0", v140, 2u);
            MEMORY[0x1B274ECF0](v140, -1, -1);
          }

          v178 = xmmword_1B26C6400;
          v92 = 2;
          LOBYTE(v179) = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v163, v165);
          outlined destroy of Extension(&v183);
          outlined destroy of HandshakeState(v53, type metadata accessor for SessionTicket);
          v137 = v173;
          goto LABEL_92;
        }

        v54 = type metadata accessor for SessionTicket;
        v55 = v53;
      }

      else
      {
        v54 = type metadata accessor for HandshakeState.ServerHelloState.SessionData;
        v55 = v52;
      }

      outlined destroy of HandshakeState(v55, v54);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1B25F5000, v61, v62, "server accepted early data", v63, 2u);
        MEMORY[0x1B274ECF0](v63, -1, -1);

        outlined destroy of Extension(&v183);
      }

      else
      {
      }

      *(v170 + v168) = 1;
    }

LABEL_47:
    if (v177 == a4)
    {

      a6 = v150;
      a7 = v170;
      a4 = v165;
      goto LABEL_55;
    }

    a6 += 88;
    ++a4;
    if (a7 >= *(v39 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }
  }

  outlined init with copy of Extension(&v183, &v178);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  outlined destroy of Extension(&v183);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v178 = v67;
    *v66 = 136315138;
    a6 = v150;
    v68 = v165;
    v69 = 0;
    switch(v188 >> 4)
    {
      case 1:
        v69 = 10;
        break;
      case 2:
        v69 = 43;
        break;
      case 3:
        v69 = 16;
        break;
      case 4:
        v69 = 51;
        break;
      case 5:
        v69 = 42;
        break;
      case 6:
        v69 = 13;
        break;
      case 7:
        v69 = 20;
        break;
      case 8:
        v69 = 57;
        break;
      case 9:
        v69 = 45;
        break;
      case 0xA:
        v69 = 41;
        break;
      case 0xB:
        v69 = 58;
        break;
      case 0xC:
        v69 = -30149;
        break;
      case 0xD:
        v69 = v183;
        break;
      default:
        break;
    }

    v141 = ExtensionType.description.getter(v69);
    v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v178);

    *(v66 + 4) = v143;
    _os_log_impl(&dword_1B25F5000, v64, v65, "server offered duplicate extension of type %s on encrypted extensions", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x1B274ECF0](v67, -1, -1);
    MEMORY[0x1B274ECF0](v66, -1, -1);

    a7 = v170;
    a1 = v173;
  }

  else
  {

    a6 = v150;
    a7 = v170;
    v68 = v165;
  }

  v178 = xmmword_1B26C6410;
  v92 = 2;
  LOBYTE(v179) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(v163, v68);
  outlined destroy of Extension(&v183);
  outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerHelloState);
  v120 = 0;
  v123 = 0;
  v119 = 5;
LABEL_112:
  outlined destroy of P256.Signing.PrivateKey?(v166, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);

  v144 = v175[2];
  outlined consume of ByteBuffer?(*v175, v175[1]);
  if (v123)
  {
    outlined destroy of P256.Signing.PrivateKey?(a7 + v160[9], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  }

  result = outlined destroy of P256.Signing.PrivateKey?(a7 + v167, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  *a6 = v119;
  *(a6 + 8) = v120;
  *(a6 + 16) = v92;
  return result;
}

uint64_t outlined assign with copy of PAKEClientState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v33 = v3;
  outlined init with copy of Any?(v3, &v30 - v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, logger);
      outlined init with copy of Any?(v33, v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      v20 = swift_getEnumCaseMultiPayload();
      if (v20 <= 1)
      {
        if (v20)
        {
          v22 = 0x6B616873646E6168;
        }

        else
        {
          v22 = 0x636553796C726165;
        }

        if (v20)
        {
          v21 = 0xEF74657263655365;
        }

        else
        {
          v21 = 0xEB00000000746572;
        }
      }

      else if (v20 == 2)
      {
        v21 = 0xEC00000074657263;
        v22 = 0x655372657473616DLL;
      }

      else
      {
        if (v20 != 3)
        {
          v21 = 0xE400000000000000;
          v22 = 1701602409;
          goto LABEL_23;
        }

        v21 = 0xEA00000000007374;
        v22 = 0x65726365536C6C61;
      }

      outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_23:
      Logger.logInvalidStateTransition(stateName:event:)(v22, v21, 0xD000000000000012, 0x80000001B26CDE50);

      v31 = xmmword_1B26C6450;
      v32 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 2;
    }

LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_6;
  }

  v18 = v30;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  outlined init with take of P256.Signing.PublicKey?(v16, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = v18;
    if (v23 == 2)
    {
      v25 = *(a1 + 24);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    result = v18;
    if (v23)
    {
      v25 = a1 >> 32;
    }

    else
    {
      v25 = BYTE6(a2);
    }
  }

  if (v25 >= result)
  {
    v26 = Data._Representation.subscript.getter();
    v28 = v27;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v26, v27);
    outlined consume of Data._Representation(v26, v28);
    v29 = v33;
    outlined destroy of P256.Signing.PrivateKey?(v33, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    outlined init with take of P256.Signing.PublicKey?(v9, v29, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    swift_storeEnumTagMultiPayload();
    return 2;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV27handleReadServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B25F5000, v4, v5, "client expecting certificate message", v6, 2u);
    MEMORY[0x1B274ECF0](v6, -1, -1);
  }

  if (v0[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v0, v0, &v24, &v25);
  if (v1)
  {
    return v24;
  }

  v20[6] = v31;
  v20[7] = v32;
  v20[2] = v27;
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[0] = v25;
  v20[1] = v26;
  *&v23[80] = v31;
  *&v23[96] = v32;
  *&v23[16] = v27;
  *&v23[32] = v28;
  *&v23[48] = v29;
  *&v23[64] = v30;
  v21 = v33;
  v23[112] = v33;
  v22 = v25;
  *v23 = v26;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v22) == 1)
  {
LABEL_6:
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B25F5000, v7, v8, "incomplete message, waiting for more data", v9, 2u);
      MEMORY[0x1B274ECF0](v9, -1, -1);
    }

    return 1;
  }

  else
  {
    v34[4] = *&v23[72];
    v35[0] = *&v23[88];
    *(v35 + 9) = *&v23[97];
    v34[0] = *&v23[8];
    v34[1] = *&v23[24];
    v34[2] = *&v23[40];
    v34[3] = *&v23[56];
    if (v23[112] == 4)
    {
      v11 = *&v23[8];
      v12 = *&v23[16];
      v13 = *&v23[32];
      v36 = *&v23[24];
      outlined copy of Data._Representation(*&v23[8], *&v23[16]);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1B25F5000, v14, v15, "client got certificate message", v16, 2u);
        MEMORY[0x1B274ECF0](v16, -1, -1);
      }

      v17 = v22;
      v18 = *v23;
      v19 = v2 + *(type metadata accessor for HandshakeStateMachine(0) + 24);
      _s15SwiftTLSLibrary14HandshakeStateO25receivedServerCertificate_16certificateBytesyAA0G7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF(v11, v12, v36, v13, v17, *(&v17 + 1), v18);
      outlined destroy of HandshakeMessage(&v23[8]);
      outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 0;
    }

    else
    {
      HandshakeStateMachine.logUnexpectedMessage(message:)(v34);
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 4;
    }
  }
}

uint64_t _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  outlined copy of Data._Representation(*a1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v6 & 0x100) != 0 || (v7 = ByteBuffer.readSlice(length:)(v6), v8 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
LABEL_4:
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v19 = v7;
  v20 = v8;
  v21 = v9;
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v7 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v7 >> 32;
  }

  else
  {
    v12 = BYTE6(v8);
  }

  result = v12 - v9;
  if (__OFSUB__(v12, v9))
  {
    __break(1u);
    goto LABEL_30;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v13 >> 60 == 15)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v14 = v13;
  v15 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v19 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v19 >> 32;
  }

  else
  {
    v16 = BYTE6(v20);
  }

  if (__OFSUB__(v16, v21))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = result;
  if (v16 == v21)
  {
    outlined consume of Data._Representation(v19, v20);
    outlined consume of Data._Representation(v4, v3);
    v4 = *a1;
    v3 = a1[1];
    v5 = a1[2];
    outlined copy of Data._Representation(*a1, v3);
    v17 = _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_SayAA18CertificateMessageV0K5EntryVG_Tg504_s15a12TLSLibrary10cd8VSayAA18kl4V0E5m5VGAA8J126OIglozo_AchJIeglrzo_TR04_s15a12TLSLibrary18ef12V5bytesAcA10cd7Vz_tAA8h32OYKcfc04readC7EntriesL_ySayAC0C5G10VGAFzAHYKFTf3nnpf_nTf1nc_n();
    if (v1)
    {
      v18 = v17;
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v4;
      a1[1] = v3;
      a1[2] = v5;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v22, v14);
      return v18;
    }

    else
    {
      if (!v17)
      {
        outlined consume of Data._Representation(*a1, a1[1]);
        outlined consume of ByteBuffer?(v22, v14);
        goto LABEL_4;
      }

      outlined consume of Data._Representation(v4, v3);
      return v22;
    }
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v22, v14);
    outlined consume of Data._Representation(v19, v20);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    swift_willThrowTypedImpl();
    return 1;
  }
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV30readVariableLengthVectorUInt24yxSgxACzAA8TLSErrorOYKXEAGYKlFAeCzAGYKXEfU_SayAA18CertificateMessageV0K5EntryVG_Tg504_s15a12TLSLibrary10cd8VSayAA18kl4V0E5m5VGAA8J126OIglozo_AchJIeglrzo_TR04_s15a12TLSLibrary18ef12V5bytesAcA10cd7Vz_tAA8h32OYKcfc04readC7EntriesL_ySayAC0C5G10VGAFzAHYKFTf3nnpf_nTf1nc_n()
{
  v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v1 & 0x100) != 0)
  {
    return 0;
  }

  v2 = v1;
  v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = ByteBuffer.readSlice(length:)(v3 | (v2 << 16));
  if (v5 >> 60 == 15)
  {
    return 0;
  }

  v17 = v4;
  v18 = v5;
  v19 = v6;
  v8 = _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readC7EntriesL_ySayAC0C5EntryVGAFzAHYKF(&v17);
  if (v0)
  {
    v9 = v8;
    v10 = v17;
    v11 = v18;
LABEL_18:
    outlined consume of Data._Representation(v10, v11);
    return v9;
  }

  v12 = v8;
  result = v17;
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

  if (!__OFSUB__(v14, v19))
  {
    if (v14 == v19)
    {
      outlined consume of Data._Representation(v17, v18);
      return v12;
    }

    v15 = v17;
    v16 = v18;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v11 = v16;
    v10 = v15;
    v9 = 1;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readC7EntriesL_ySayAC0C5EntryVGAFzAHYKF(uint64_t *a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v62 = *a1;
  v3 = a1[2];
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = *a1;
  v9 = MEMORY[0x1E69E7CC0];
  v63 = BYTE6(v2);
  v64 = v2 >> 62;
  while (1)
  {
    v68 = v3;
    if (v7 <= 1)
    {
      v10 = v63;
      if (v7)
      {
        v10 = v62 >> 32;
      }

LABEL_8:
      if (v10 < v4)
      {
        goto LABEL_105;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v10 = *(v62 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
LABEL_105:
      outlined copy of Data._Representation(v8, v2);
      v12 = *a1;
      v13 = a1[1];
      goto LABEL_106;
    }

LABEL_11:
    *&v69 = v8;
    *(&v69 + 1) = v2;
    if (v4 < v3)
    {
      goto LABEL_115;
    }

    v67 = v9;
    outlined copy of Data._Representation(v8, v2);
    outlined copy of Data._Representation(v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v69, *(&v69 + 1));
    a1[2] = v4;
    v11 = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_116;
    }

    v12 = *a1;
    v13 = a1[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (v14)
      {
        v15 = v12 >> 32;
      }

      else
      {
        v15 = BYTE6(v13);
      }

LABEL_19:
      if (v15 < v11)
      {
        goto LABEL_104;
      }

      goto LABEL_22;
    }

    if (v14 == 2)
    {
      v15 = *(v12 + 24);
      goto LABEL_19;
    }

    if (v11 >= 1)
    {
      goto LABEL_104;
    }

LABEL_22:
    *&v69 = *a1;
    *(&v69 + 1) = v13;
    if (v11 < v4)
    {
      goto LABEL_117;
    }

    outlined copy of Data._Representation(v12, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v69, *(&v69 + 1));
    a1[2] = v11;
    v16 = bswap32(0) >> 16;
    v17 = v11 + v16;
    if (__OFADD__(v11, v16))
    {
      goto LABEL_118;
    }

    v12 = *a1;
    v13 = a1[1];
    v18 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v18 == 2)
      {
        v19 = *(v12 + 24);
        goto LABEL_30;
      }

      if (v17 <= 0)
      {
        goto LABEL_33;
      }

LABEL_104:
      v9 = v67;
LABEL_106:
      outlined consume of Data._Representation(v12, v13);
LABEL_110:
      *a1 = v8;
      a1[1] = v2;
      v53 = v9;
      a1[2] = v68;
      goto LABEL_113;
    }

    v19 = v18 ? v12 >> 32 : BYTE6(v13);
LABEL_30:
    if (v19 < v17)
    {
      goto LABEL_104;
    }

LABEL_33:
    if (v17 < v11)
    {
      goto LABEL_119;
    }

    v20 = Data._Representation.subscript.getter();
    a1[2] = v17;
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v23 = *(v20 + 16);
        *&v69 = v20;
        *(&v69 + 1) = v21;
        v70 = v23;
LABEL_45:
        v24 = *(v20 + 24);
        goto LABEL_46;
      }
    }

    else if (v22)
    {
      v23 = v20;
      *&v69 = v20;
      *(&v69 + 1) = v21;
      v70 = v20;
LABEL_42:
      v24 = v20 >> 32;
      goto LABEL_46;
    }

    v23 = 0;
    *&v69 = v20;
    *(&v69 + 1) = v21;
    v70 = 0;
    if (v22 <= 1)
    {
      if (!v22)
      {
        v23 = 0;
        v24 = BYTE6(v21);
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    v24 = 0;
    if (v22 != 3)
    {
      v23 = 0;
      goto LABEL_45;
    }

LABEL_46:
    if (__OFSUB__(v24, v23))
    {
      goto LABEL_120;
    }

    v25 = ByteBuffer.readSlice(length:)(v24 - v23);
    if (v26 >> 60 == 15)
    {
      goto LABEL_127;
    }

    v28 = v26;
    v29 = *(&v69 + 1) >> 62;
    if ((*(&v69 + 1) >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v69 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v69 >> 32;
    }

    else
    {
      v30 = BYTE14(v69);
    }

    if (__OFSUB__(v30, v70))
    {
      goto LABEL_121;
    }

    v65 = v25;
    v66 = v27;
    if (v30 != v70)
    {
      v52 = *(&v69 + 1);
      v51 = v69;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v65, v28);
      outlined consume of Data._Representation(v51, v52);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v8;
      a1[1] = v2;
      a1[2] = v68;
      v69 = xmmword_1B26C66C0;
      LOBYTE(v70) = 2;
      swift_willThrowTypedImpl();

      v53 = 1;
      goto LABEL_113;
    }

    outlined consume of Data._Representation(v69, *(&v69 + 1));
    outlined consume of Data._Representation(v8, v2);
    v8 = *a1;
    v2 = a1[1];
    v31 = a1[2];
    v32 = v31 + 2;
    if (__OFADD__(v31, 2))
    {
      goto LABEL_122;
    }

    v33 = v2 >> 62;
    v68 = a1[2];
    if ((v2 >> 62) <= 1)
    {
      if (v33)
      {
        v34 = v8 >> 32;
      }

      else
      {
        v34 = BYTE6(v2);
      }

LABEL_65:
      if (v34 < v32)
      {
        goto LABEL_107;
      }

      goto LABEL_68;
    }

    if (v33 == 2)
    {
      v34 = *(v8 + 24);
      goto LABEL_65;
    }

    if (v32 >= 1)
    {
LABEL_107:
      outlined copy of Data._Representation(v8, v2);
      outlined consume of ByteBuffer?(v65, v28);
LABEL_109:
      outlined consume of Data._Representation(*a1, a1[1]);
      v9 = v67;
      goto LABEL_110;
    }

LABEL_68:
    *&v69 = *a1;
    *(&v69 + 1) = v2;
    if (v32 < v31)
    {
      goto LABEL_123;
    }

    outlined copy of Data._Representation(v8, v2);
    outlined copy of Data._Representation(v8, v2);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v69, *(&v69 + 1));
    v35 = bswap32(0) >> 16;
    a1[2] = v32;
    v36 = v32 + v35;
    if (__OFADD__(v32, v35))
    {
      goto LABEL_124;
    }

    v37 = *a1;
    v38 = a1[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 == 2)
      {
        if (*(v37 + 24) < v36)
        {
          goto LABEL_108;
        }

        goto LABEL_80;
      }

      if (v36 <= 0)
      {
        goto LABEL_80;
      }

LABEL_108:
      outlined consume of ByteBuffer?(v65, v28);
      goto LABEL_109;
    }

    if (v39)
    {
      if (v37 >> 32 < v36)
      {
        goto LABEL_108;
      }
    }

    else if (BYTE6(v38) < v36)
    {
      goto LABEL_108;
    }

LABEL_80:
    if (v36 < v32)
    {
      goto LABEL_125;
    }

    v40 = Data._Representation.subscript.getter();
    v42 = 0;
    a1[2] = v36;
    v43 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      v9 = v67;
      if (v43 == 2)
      {
        v42 = *(v40 + 16);
      }
    }

    else
    {
      v9 = v67;
      if (v43)
      {
        v42 = v40;
      }
    }

    *&v69 = v40;
    *(&v69 + 1) = v41;
    v70 = v42;
    v53 = _s15SwiftTLSLibrary10ByteBufferV20readCertificateEntryAA0F7MessageV0fG0VSgyAA8TLSErrorOYKF0E10ExtensionsL_ySayAA9ExtensionOGACzAKYKF(&v69);
    if (v5)
    {
      v59 = v44;
      v54 = v45;
      v57 = *(&v69 + 1);
      v58 = v69;
      goto LABEL_112;
    }

    v5 = 0;
    v46 = *(&v69 + 1) >> 62;
    if ((*(&v69 + 1) >> 62) > 1)
    {
      if (v46 == 2)
      {
        v47 = *(v69 + 24);
      }

      else
      {
        v47 = 0;
      }
    }

    else if (v46)
    {
      v47 = v69 >> 32;
    }

    else
    {
      v47 = BYTE14(v69);
    }

    if (__OFSUB__(v47, v70))
    {
      goto LABEL_126;
    }

    if (v47 != v70)
    {
      break;
    }

    outlined consume of Data._Representation(v69, *(&v69 + 1));
    outlined consume of Data._Representation(v8, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v49 = *(v9 + 2);
    v48 = *(v9 + 3);
    if (v49 >= v48 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v9);
    }

    *(v9 + 2) = v49 + 1;
    v50 = &v9[32 * v49];
    *(v50 + 4) = v65;
    *(v50 + 5) = v28;
    *(v50 + 6) = v66;
    *(v50 + 7) = v53;
    v8 = *a1;
    v2 = a1[1];
    v3 = a1[2];
    v4 = v3 + 1;
    LODWORD(v7) = v64;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_114;
    }
  }

  v54 = 2;
  v56 = *(&v69 + 1);
  v55 = v69;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();

  v57 = v56;
  v58 = v55;
  v59 = 0;
  v53 = 1;
LABEL_112:
  outlined consume of Data._Representation(v58, v57);
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v8;
  a1[1] = v2;
  a1[2] = v68;
  *&v69 = v53;
  *(&v69 + 1) = v59;
  LOBYTE(v70) = v54;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v65, v28);

LABEL_113:
  v60 = *MEMORY[0x1E69E9840];
  return v53;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV20readCertificateEntryAA0F7MessageV0fG0VSgyAA8TLSErrorOYKF0E10ExtensionsL_ySayAA9ExtensionOGACzAKYKF(uint64_t *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v46 = *a1;
  LOWORD(v65) = 0;
  v3 = a1[2];
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
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
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = MEMORY[0x1E69E7CC0];
  v47 = BYTE6(v2);
  v48 = v2 >> 62;
  while (1)
  {
    if (v7 <= 1)
    {
      v9 = v47;
      if (v7)
      {
        v9 = v46 >> 32;
      }

LABEL_8:
      if (v9 < v4)
      {
        goto LABEL_62;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v9 = *(v46 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
      goto LABEL_62;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    *&v59 = *a1;
    *(&v59 + 1) = v11;
    if (v4 < v3)
    {
      goto LABEL_64;
    }

    v49 = v5;
    *&v51 = v3;
    *(&v51 + 1) = v4;
    v50 = v4;
    outlined copy of Data._Representation(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    v12 = v65;
    a1[2] = v50;
    v14 = *a1;
    v13 = a1[1];
    LOWORD(v65) = 0;
    v15 = v50 + 2;
    if (__OFADD__(v50, 2))
    {
      goto LABEL_65;
    }

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      break;
    }

    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v13);
    }

LABEL_19:
    if (v17 < v15)
    {
      goto LABEL_58;
    }

LABEL_22:
    *&v59 = v14;
    *(&v59 + 1) = v13;
    if (v15 < v50)
    {
      goto LABEL_66;
    }

    *&v51 = v50;
    *(&v51 + 1) = v50 + 2;
    outlined copy of Data._Representation(v14, v13);
    outlined copy of Data._Representation(v14, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    v18 = bswap32(v65) >> 16;
    a1[2] = v15;
    v19 = v15 + v18;
    if (__OFADD__(v15, v18))
    {
      goto LABEL_67;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v22)
      {
        v23 = v20 >> 32;
      }

      else
      {
        v23 = BYTE6(v21);
      }

LABEL_30:
      if (v23 < v19)
      {
        goto LABEL_59;
      }

      goto LABEL_33;
    }

    if (v22 == 2)
    {
      v23 = *(v20 + 24);
      goto LABEL_30;
    }

    if (v19 > 0)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v19 < v15)
    {
      goto LABEL_68;
    }

    v24 = Data._Representation.subscript.getter();
    v26 = 0;
    a1[2] = v19;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = v49;
      if (v27 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      v28 = v49;
      if (v27)
      {
        v26 = v24;
      }
    }

    v65 = v24;
    v66 = v25;
    v67 = v26;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v65, bswap32(v12) >> 16, 11, 0, v57, &v59);
    if (v28)
    {
      v8 = v57[0];
      v43 = v57[1];
      v38 = v58;
      v42 = v65;
      v41 = v66;
      goto LABEL_61;
    }

    v5 = 0;
    v29 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v65 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v65 >> 32;
    }

    else
    {
      v30 = BYTE6(v66);
    }

    if (__OFSUB__(v30, v67))
    {
      goto LABEL_69;
    }

    if (v30 != v67)
    {
      v38 = 2;
      v39 = v65;
      v40 = v66;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v51 = v59;
      v52 = v60;
      outlined destroy of Extension(&v51);
      v41 = v40;
      v42 = v39;
      v43 = 0;
      v8 = 1;
LABEL_61:
      outlined consume of Data._Representation(v42, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v14;
      a1[1] = v13;
      a1[2] = v50;
      *&v59 = v8;
      *(&v59 + 1) = v43;
      LOBYTE(v60) = v38;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      goto LABEL_62;
    }

    outlined consume of Data._Representation(v65, v66);
    outlined consume of Data._Representation(v14, v13);
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v51 = v59;
    v52 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    }

    LODWORD(v7) = v48;
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 16) = v32 + 1;
    v33 = v8 + 88 * v32;
    v34 = v52;
    *(v33 + 32) = v51;
    *(v33 + 48) = v34;
    v35 = v53;
    v36 = v54;
    v37 = v55;
    *(v33 + 112) = v56;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
    LOWORD(v65) = 0;
    v3 = a1[2];
    v4 = v3 + 2;
    if (__OFADD__(v3, 2))
    {
      goto LABEL_63;
    }
  }

  if (v16 == 2)
  {
    v17 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v15 < 1)
  {
    goto LABEL_22;
  }

LABEL_58:
  outlined copy of Data._Representation(v14, v13);
  v20 = *a1;
  v21 = a1[1];
LABEL_59:
  outlined consume of Data._Representation(v20, v21);
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v50;
LABEL_62:
  v44 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO25receivedServerCertificate_16certificateBytesyAA0G7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v32 = a3;
  v33 = a5;
  v11 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = type metadata accessor for HandshakeState(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v31 - v23;
  v31 = v7;
  outlined init with copy of HandshakeState(v7, &v31 - v23, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of HandshakeState.IdleState(v24, v17, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined init with copy of HandshakeState(v17, v15, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined copy of Data._Representation(a1, a2);

    v26 = v33;
    v25 = v34;
    outlined copy of Data._Representation(v33, v34);
    v27 = v36[4];
    _s15SwiftTLSLibrary14HandshakeStateO017ServerCertificateD0V08originalD006serverF016certificateBytesAeC019EncryptedExtensionsD0V_AA0F7MessageVAA10ByteBufferVtAA8TLSErrorOYKcfC(v15, a1, a2, v32, a4, v26, v25, v35, v22, v36);
    if (v27)
    {
      v28 = v36[0];
      outlined destroy of HandshakeState(v17, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    }

    else
    {
      v29 = v31;
      v28 = 0;
      outlined destroy of HandshakeState(v31, type metadata accessor for HandshakeState);
      outlined destroy of HandshakeState(v17, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      outlined init with take of HandshakeState.IdleState(v22, v29, type metadata accessor for HandshakeState);
    }

    return v28;
  }

  else
  {
    result = outlined destroy of HandshakeState(v24, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

void _s15SwiftTLSLibrary14HandshakeStateO017ServerCertificateD0V08originalD006serverF016certificateBytesAeC019EncryptedExtensionsD0V_AA0F7MessageVAA10ByteBufferVtAA8TLSErrorOYKcfC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v105 = a8;
  v121 = a7;
  v111 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v97 - v18;
  v20 = type metadata accessor for PeerCertificateBundle(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v106 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v109 = &v97 - v25;
  *(a9 + 88) = xmmword_1B26C5EF0;
  *(a9 + 104) = 0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v110 = __swift_project_value_buffer(v26, logger);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = a5;
    v108 = a4;
    v31 = a9;
    v32 = v19;
    v33 = a2;
    v34 = a3;
    v35 = v30;
    v36 = a1;
    v37 = v29;
    *v29 = 0;
    _os_log_impl(&dword_1B25F5000, v27, v28, "validating certificate", v29, 2u);
    v38 = v37;
    a1 = v36;
    v39 = v35;
    a3 = v34;
    a2 = v33;
    v19 = v32;
    a9 = v31;
    a4 = v108;
    a5 = v39;
    MEMORY[0x1B274ECF0](v38, -1, -1);
  }

  v40 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v41 = *(a2 + 24);
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v40)
  {
    v41 = a2 >> 32;
  }

  else
  {
    v41 = BYTE6(a3);
  }

  if (__OFSUB__(v41, a4))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v41 != a4)
  {
    v44 = a4;
    outlined copy of Data._Representation(a2, a3);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v45, v46))
    {
      outlined consume of Data._Representation(a2, a3);

LABEL_35:
      v116 = xmmword_1B26C6410;
      v55 = 2;
      LOBYTE(v117) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v111, v121);
      outlined consume of Data._Representation(a2, a3);

      outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v56 = 0;
      v57 = 0;
      v58 = 5;
LABEL_36:
      v80 = *(a9 + 104);
      outlined consume of ByteBuffer?(*(a9 + 88), *(a9 + 96));
      if (v57)
      {
        v81 = type metadata accessor for HandshakeState.ServerCertificateState(0);
        outlined destroy of HandshakeState(a9 + *(v81 + 40), type metadata accessor for PeerCertificateBundle);
        outlined destroy of P256.Signing.PrivateKey?(a9 + *(v81 + 44), &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      }

      *a10 = v58;
      *(a10 + 8) = v56;
      *(a10 + 16) = v55;
      return;
    }

    v48 = swift_slowAlloc();
    *v48 = 134217984;
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v49 = *(a2 + 24);
      }

      else
      {
        v49 = 0;
      }
    }

    else if (v40)
    {
      v49 = a2 >> 32;
    }

    else
    {
      v49 = BYTE6(a3);
    }

    v75 = __OFSUB__(v49, v44);
    v76 = v49 - v44;
    if (!v75)
    {
      *(v48 + 4) = v76;
      v77 = a2;
      v78 = v48;
      outlined consume of Data._Representation(v77, a3);

      _os_log_impl(&dword_1B25F5000, v45, v46, "received unexpected context: %ld", v78, 0xCu);
      v79 = v78;
      a2 = v77;
      MEMORY[0x1B274ECF0](v79, -1, -1);

      goto LABEL_35;
    }

LABEL_47:
    __break(1u);
    return;
  }

  v104 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v42 = v109;
  outlined init with copy of Any?(a1 + *(v104 + 20), v109, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v43 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v42, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
LABEL_23:
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = a2;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1B25F5000, v50, v51, "received server certificate message while resuming session", v53, 2u);
      v54 = v53;
      a2 = v52;
      MEMORY[0x1B274ECF0](v54, -1, -1);
    }

    v116 = xmmword_1B26C6430;
    v55 = 2;
    LOBYTE(v117) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v111, v121);
    outlined consume of Data._Representation(a2, a3);

    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v56 = 0;
    v57 = 0;
    v58 = 4;
    goto LABEL_36;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of HandshakeState(v42, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    goto LABEL_23;
  }

  v59 = *v42;
  v103 = *(v42 + 16);
  v61 = *(a1 + 48);
  v118 = *(a1 + 32);
  v60 = v118;
  v119 = v61;
  v120 = *(a1 + 64);
  v62 = *(a1 + 16);
  v116 = *a1;
  v63 = v116;
  v117 = v62;
  *(a9 + 64) = v120;
  *(a9 + 32) = v60;
  *(a9 + 48) = v61;
  *a9 = v63;
  *(a9 + 16) = v62;
  v102 = *(v42 + 4);
  *(a9 + 66) = v59;
  v64 = v104;
  v65 = (a1 + *(v104 + 24));
  v66 = v65[1];
  *(a9 + 72) = *v65;
  *(a9 + 80) = v66;
  v67 = (a1 + v64[7]);
  v98 = *v67;
  v109 = a1;
  v108 = a4;
  v69 = v67[1];
  v68 = v67[2];
  v70 = *(a9 + 96);
  v101 = *(a9 + 88);
  v100 = v70;
  v99 = *(a9 + 104);
  outlined init with copy of HandshakeStateMachine.Configuration(&v116, v114);
  v97 = v66;

  v71 = v98;
  outlined copy of Data?(v98, v69);
  outlined consume of ByteBuffer?(v101, v100);
  *(a9 + 88) = v71;
  *(a9 + 96) = v69;
  *(a9 + 104) = v68;
  *(a9 + 112) = *(v109 + v64[8]);
  outlined copy of Data._Representation(a2, a3);

  v72 = v106;
  v73 = v107;
  _s15SwiftTLSLibrary21PeerCertificateBundleV08expectedD4Type04peerD7MessageAcA0dG0V_AA0dI0VtAA8TLSErrorOYKcfC(v102, a2, a3, a5, v112, v106);
  v57 = v73 == 0;
  v74 = a2;
  if (v73)
  {
    v58 = v112[0];
    v56 = v112[1];
    v55 = v113;
    outlined consume of Data._Representation(v111, v121);
    outlined consume of Data._Representation(v74, a3);

    outlined destroy of HandshakeState(v109, type metadata accessor for HandshakeState.EncryptedExtensionsState);
LABEL_41:
    v91 = *(a9 + 48);
    v114[2] = *(a9 + 32);
    v114[3] = v91;
    v115 = *(a9 + 64);
    v92 = *(a9 + 16);
    v114[0] = *a9;
    v114[1] = v92;
    outlined destroy of HandshakeStateMachine.Configuration(v114);

    goto LABEL_36;
  }

  v107 = a2;
  v108 = a5;
  v103 = 0;

  v82 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  outlined init with take of HandshakeState.IdleState(v72, a9 + v82[10], type metadata accessor for PeerCertificateBundle);
  v83 = v109;
  outlined init with copy of Any?(v109 + v64[9], a9 + v82[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  *(a9 + v82[12]) = *(v83 + v64[13]);
  outlined init with copy of Any?(v83 + v64[12], v19, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v84 = type metadata accessor for PAKEClientState(0);
  v85 = (*(*(v84 - 8) + 48))(v19, 1, v84) != 1;
  outlined destroy of P256.Signing.PrivateKey?(v19, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  *(a9 + v82[13]) = v85;
  v86 = v111;
  v87 = v103;
  v88 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v111, v121, v105);
  if (v87)
  {
    v58 = v88;
    v56 = v89;
    v55 = v90;
    outlined destroy of HandshakeState(v83, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined consume of Data._Representation(v86, v121);
    outlined consume of Data._Representation(v107, a3);

    goto LABEL_41;
  }

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_1B25F5000, v93, v94, "certificate valid", v95, 2u);
    MEMORY[0x1B274ECF0](v95, -1, -1);
    outlined consume of Data._Representation(v86, v121);

    outlined consume of Data._Representation(v107, a3);
  }

  else
  {
    outlined consume of Data._Representation(v86, v121);
    outlined consume of Data._Representation(v107, a3);
  }

  v96 = v109;

  outlined destroy of HandshakeState(v96, type metadata accessor for HandshakeState.EncryptedExtensionsState);
}

uint64_t _s15SwiftTLSLibrary21PeerCertificateBundleV08expectedD4Type04peerD7MessageAcA0dG0V_AA0dI0VtAA8TLSErrorOYKcfC@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = v6;
  v14 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, logger);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = a2;
      v37 = a3;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B25F5000, v34, v35, "invalid attempt to negotiate x.509 auth", v38, 2u);
      v39 = v38;
      a3 = v37;
      a2 = v36;
      MEMORY[0x1B274ECF0](v39, -1, -1);
    }

    v80 = xmmword_1B26C6400;
    v81 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a2, a3);

    v41 = 6;
    goto LABEL_35;
  }

  if (a1 != 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v79 = a5;
      *&v80 = v46;
      v47 = a2;
      v48 = a3;
      v49 = v46;
      *v45 = 136315138;
      v50 = CertificateType.description.getter(a1);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v80);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_1B25F5000, v43, v44, "unsupported certificate type from peer: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v53 = v49;
      a3 = v48;
      a2 = v47;
      a5 = v79;
      MEMORY[0x1B274ECF0](v53, -1, -1);
      MEMORY[0x1B274ECF0](v45, -1, -1);
    }

    v80 = xmmword_1B26C6430;
    v81 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a2, a3);

    v41 = 4;
    goto LABEL_35;
  }

  if (a4[2] != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, logger);
    outlined copy of Data._Representation(a2, a3);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = a3;
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = a4[2];
      outlined consume of Data._Representation(a2, v57);

      _os_log_impl(&dword_1B25F5000, v55, v56, "invalid number of public key entries: %ld", v58, 0xCu);
      v59 = v58;
      a3 = v57;
      MEMORY[0x1B274ECF0](v59, -1, -1);
    }

    else
    {
      outlined consume of Data._Representation(a2, a3);
    }

    v80 = xmmword_1B26C6410;
    v81 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_34;
  }

  v76 = a6;
  v18 = a4[5];
  v20 = a4[6];
  v19 = a4[7];
  v21 = *(v19 + 16);
  v78 = a4[4];
  v82 = v18;
  outlined copy of Data._Representation(v78, v18);
  v22 = one-time initialization token for logger;
  v77 = v19;

  if (v21)
  {
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v24 = v78;
    v25 = v82;
    outlined copy of Data._Representation(v78, v82);
    v26 = v77;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = a2;
      v30 = a3;
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = *(v26 + 16);
      outlined consume of Data._Representation(v24, v82);

      _os_log_impl(&dword_1B25F5000, v27, v28, "invalid number of extensions: %ld", v31, 0xCu);
      v32 = v31;
      a3 = v30;
      a2 = v29;
      v25 = v82;
      MEMORY[0x1B274ECF0](v32, -1, -1);
    }

    else
    {
      outlined consume of Data._Representation(v24, v25);
    }

    v80 = xmmword_1B26C6410;
    v81 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v24, v25);

LABEL_34:
    outlined consume of Data._Representation(a2, a3);

    v41 = 5;
LABEL_35:
    *a5 = v41;
    *(a5 + 8) = 0;
    *(a5 + 16) = 2;
    return result;
  }

  v75 = v20;
  if (v22 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, logger);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v79 = a5;
    v64 = a2;
    v65 = a3;
    v66 = v63;
    *v63 = 0;
    _os_log_impl(&dword_1B25F5000, v61, v62, "constructing public key from peer bytes", v63, 2u);
    v67 = v66;
    a3 = v65;
    a2 = v64;
    a5 = v79;
    MEMORY[0x1B274ECF0](v67, -1, -1);
  }

  v68 = v82;
  v69 = v82 >> 62;
  if ((v82 >> 62) > 1)
  {
    result = v75;
    if (v69 == 2)
    {
      v70 = *(v78 + 24);
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    result = v75;
    if (v69)
    {
      v70 = v78 >> 32;
    }

    else
    {
      v70 = BYTE6(v82);
    }
  }

  if (v70 < result)
  {
    __break(1u);
  }

  else
  {
    v71 = v78;
    *&v80 = Data._Representation.subscript.getter();
    *(&v80 + 1) = v72;
    lazy protocol witness table accessor for type Data and conformance Data();
    P256.Signing.PublicKey.init<A>(derRepresentation:)();
    if (v8)
    {

      v80 = xmmword_1B26C6420;
      v81 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v71, v68);

      outlined consume of Data._Representation(a2, a3);

      v41 = 32;
      goto LABEL_35;
    }

    outlined consume of Data._Representation(v71, v68);

    outlined consume of Data._Representation(a2, a3);

    v73 = type metadata accessor for P256.Signing.PublicKey();
    (*(*(v73 - 8) + 56))(v17, 0, 1, v73);
    return outlined init with take of PeerCertificateBundle.Bundle(v17, v76);
  }

  return result;
}

uint64_t outlined init with take of PeerCertificateBundle.Bundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV33handleReadServerCertificateVerify33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B25F5000, v4, v5, "client expecting certificate verify", v6, 2u);
    MEMORY[0x1B274ECF0](v6, -1, -1);
  }

  if (v0[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v0, v0, &v23, &v24);
  if (v1)
  {
    return v23;
  }

  v19[6] = v30;
  v19[7] = v31;
  v19[2] = v26;
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[0] = v24;
  v19[1] = v25;
  *&v22[80] = v30;
  *&v22[96] = v31;
  *&v22[16] = v26;
  *&v22[32] = v27;
  *&v22[48] = v28;
  *&v22[64] = v29;
  v20 = v32;
  v22[112] = v32;
  v21 = v24;
  *v22 = v25;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v21) == 1)
  {
LABEL_6:
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B25F5000, v7, v8, "incomplete message, waiting for more data", v9, 2u);
      MEMORY[0x1B274ECF0](v9, -1, -1);
    }

    return 1;
  }

  else
  {
    v33[4] = *&v22[72];
    v34[0] = *&v22[88];
    *(v34 + 9) = *&v22[97];
    v33[0] = *&v22[8];
    v33[1] = *&v22[24];
    v33[2] = *&v22[40];
    v33[3] = *&v22[56];
    if (v22[112] == 5)
    {
      v35 = *&v22[8];
      v11 = *&v22[16];
      v12 = *&v22[32];
      outlined copy of Data._Representation(*&v22[16], *&v22[24]);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1B25F5000, v13, v14, "client got certificate verify", v15, 2u);
        MEMORY[0x1B274ECF0](v15, -1, -1);
      }

      v16 = v21;
      v17 = *v22;
      v18 = v2 + *(type metadata accessor for HandshakeStateMachine(0) + 24);
      _s15SwiftTLSLibrary14HandshakeStateO31receivedServerCertificateVerify011certificateH00iH5BytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(v35, v11, *(&v11 + 1), v12, v16, *(&v16 + 1), v17);
      outlined destroy of HandshakeMessage(&v22[8]);
      outlined destroy of P256.Signing.PrivateKey?(v19, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 0;
    }

    else
    {
      HandshakeStateMachine.logUnexpectedMessage(message:)(v33);
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of P256.Signing.PrivateKey?(v19, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      return 4;
    }
  }
}

uint64_t _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v2 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  outlined copy of Data._Representation(*a1, v4);
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v7 & 0x10000) != 0 || (v8 = ByteBuffer.readSlice(length:)(v7), v9 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v5;
    a1[1] = v4;
    a1[2] = v6;
LABEL_5:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v8 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v8 >> 32;
  }

  else
  {
    v13 = BYTE6(v9);
  }

  result = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
    __break(1u);
    goto LABEL_27;
  }

  result = ByteBuffer.readSlice(length:)(result);
  v21 = result;
  if (v14 >> 60 == 15)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v15 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v18 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v18 >> 32;
  }

  else
  {
    v16 = BYTE6(v19);
  }

  if (__OFSUB__(v16, v20))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = v14;
  if (v16 == v20)
  {
    outlined consume of Data._Representation(v18, v19);
    outlined consume of Data._Representation(v5, v4);
    return v3;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v21, v17);
    outlined consume of Data._Representation(v18, v19);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v5;
    a1[1] = v4;
    a1[2] = v6;
    swift_willThrowTypedImpl();
    return 1;
  }
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO31receivedServerCertificateVerify011certificateH00iH5BytesyAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a6;
  v35 = a7;
  v33 = a4;
  v32 = a1;
  v12 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = type metadata accessor for HandshakeState(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v31 - v24;
  v31 = v8;
  outlined init with copy of HandshakeState(v8, &v31 - v24, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of HandshakeState.IdleState(v25, v18, type metadata accessor for HandshakeState.ServerCertificateState);
    outlined init with copy of HandshakeState(v18, v16, type metadata accessor for HandshakeState.ServerCertificateState);
    outlined copy of Data._Representation(a2, a3);
    v26 = v34;
    outlined copy of Data._Representation(a5, v34);
    v27 = v36[4];
    _s15SwiftTLSLibrary14HandshakeStateO023ServerCertificateVerifyD0V08originalD0011certificateG00iG5BytesAeC0efD0V_AA0fG0VAA10ByteBufferVtAA8TLSErrorOYKcfC(v16, v32, a2, a3, v33, a5, v26, v35, v23, v36);
    if (v27)
    {
      v28 = v36[0];
      outlined destroy of HandshakeState(v18, type metadata accessor for HandshakeState.ServerCertificateState);
    }

    else
    {
      v29 = v31;
      v28 = 0;
      outlined destroy of HandshakeState(v31, type metadata accessor for HandshakeState);
      outlined destroy of HandshakeState(v18, type metadata accessor for HandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      outlined init with take of HandshakeState.IdleState(v23, v29, type metadata accessor for HandshakeState);
    }

    return v28;
  }

  else
  {
    result = outlined destroy of HandshakeState(v25, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO023ServerCertificateVerifyD0V08originalD0011certificateG00iG5BytesAeC0efD0V_AA0fG0VAA10ByteBufferVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v49 = a9;
  v16 = (a9 + v48[9]);
  *v16 = xmmword_1B26C5EF0;
  v60 = v16;
  v16[2] = 0;
  v17 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v19 = v17[10];
  v18 = v17[11];
  v20 = _s15SwiftTLSLibrary21PeerCertificateBundleV012verifyServerD15VerifySignature7message9validKeys12keySchedulerSbAA0dH0V_Say9CryptoKit4P256O7SigningO9PublicKeyVGAA013ClientSessionT7ManagerVyAJ6SHA384VGtAA8TLSErrorOYKF(a2, a3, a4, a5, *(a1 + 16));
  v23 = v20;
  if (v50)
  {
    v24 = v21;
    v25 = v22;
    outlined consume of Data._Representation(a6, a7);
    outlined consume of Data._Representation(a3, a4);
    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerCertificateState);
  }

  else
  {
    v45 = v18;
    v46 = a3;
    v51 = a4;
    if (v20)
    {
      v26 = (v49 + v48[8]);
      v27 = *(a1 + 48);
      v57 = *(a1 + 32);
      v58 = v27;
      v59 = *(a1 + 64);
      v28 = v59;
      v29 = *(a1 + 16);
      v55 = *a1;
      v30 = v55;
      v56 = v29;
      *(v49 + 32) = v57;
      *(v49 + 48) = v27;
      *(v49 + 64) = v28;
      *v49 = v30;
      *(v49 + 16) = v29;
      *(v49 + 66) = *(a1 + 66);
      *(v49 + 68) = *(a1 + 68);
      outlined init with copy of HandshakeState(a1 + v19, v49 + v48[7], type metadata accessor for PeerCertificateBundle);
      v31 = *(a1 + 80);
      *v26 = *(a1 + 72);
      v26[1] = v31;
      v33 = *(a1 + 88);
      v32 = *(a1 + 96);
      v34 = *(a1 + 104);
      v35 = v60;
      v43 = v60[1];
      v44 = *v60;
      v42 = v60[2];
      outlined init with copy of HandshakeStateMachine.Configuration(&v55, &v54);

      outlined copy of Data?(v33, v32);
      outlined consume of ByteBuffer?(v44, v43);
      *v35 = v33;
      v35[1] = v32;
      v35[2] = v34;
      *(v49 + v48[10]) = *(a1 + 112);
      outlined init with copy of Any?(a1 + v45, v49 + v48[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      *(v49 + v48[12]) = *(a1 + v17[12]);
      *(v49 + v48[13]) = *(a1 + v17[13]);
      _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(a6, a7, a8);
      outlined consume of Data._Representation(a6, a7);
      outlined consume of Data._Representation(v46, v51);
      return outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerCertificateState);
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, logger);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B25F5000, v37, v38, "verification failed", v39, 2u);
      MEMORY[0x1B274ECF0](v39, -1, -1);
    }

    v55 = xmmword_1B26CAC90;
    v25 = 2;
    LOBYTE(v56) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a6, a7);
    outlined consume of Data._Representation(a3, a4);
    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ServerCertificateState);
    v24 = 0;
    v23 = 12;
  }

  v40 = v60[2];
  result = outlined consume of ByteBuffer?(*v60, v60[1]);
  *a10 = v23;
  *(a10 + 8) = v24;
  *(a10 + 16) = v25;
  return result;
}

uint64_t _s15SwiftTLSLibrary21PeerCertificateBundleV012verifyServerD15VerifySignature7message9validKeys12keySchedulerSbAA0dH0V_Say9CryptoKit4P256O7SigningO9PublicKeyVGAA013ClientSessionT7ManagerVyAJ6SHA384VGtAA8TLSErrorOYKF(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v57._rawValue = a5;
  v60 = a4;
  v9 = type metadata accessor for P256.Signing.ECDSASignature();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v61 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for P256.Signing.PublicKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PeerCertificateBundle.Bundle(v5, v20);
  result = (*(v13 + 48))(v20, 1, v12);
  if (result != 1)
  {
    v22 = *(v13 + 32);
    v65 = v16;
    v22(v16, v20, v12);
    if (a1 != 1027)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, logger);
      outlined copy of Data._Representation(a2, a3);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      outlined consume of Data._Representation(a2, a3);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v63 = v37;
        *v36 = 136315138;
        v38 = SignatureScheme.description.getter(a1);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v63);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_1B25F5000, v34, v35, "unsupported algorithm from peer: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B274ECF0](v37, -1, -1);
        MEMORY[0x1B274ECF0](v36, -1, -1);
      }

      v41 = v65;
      v63 = xmmword_1B26C6400;
      v64 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      (*(v13 + 8))(v41, v12);
      return 6;
    }

    v56[0] = v5;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v56[1] = __swift_project_value_buffer(v23, logger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B25F5000, v24, v25, "validating signature from peer server", v26, 2u);
      MEMORY[0x1B274ECF0](v26, -1, -1);
    }

    v27 = v62;
    v28 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5();
    v30 = v29;
    v32 = v31;
    if (v27)
    {
      (*(v13 + 8))(v65, v12);
      return v28;
    }

    v42 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      result = v60;
      if (v42 == 2)
      {
        v43 = *(a2 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      result = v60;
      if (v42)
      {
        v43 = a2 >> 32;
      }

      else
      {
        v43 = BYTE6(a3);
      }
    }

    if (v43 < result)
    {
      __break(1u);
    }

    else
    {
      *&v63 = Data._Representation.subscript.getter();
      *(&v63 + 1) = v44;
      lazy protocol witness table accessor for type Data and conformance Data();
      result = P256.Signing.ECDSASignature.init<A>(derRepresentation:)();
      v45 = v30 >> 62;
      v46 = v65;
      if ((v30 >> 62) > 1)
      {
        if (v45 == 2)
        {
          v47 = *(v28 + 24);
        }

        else
        {
          v47 = 0;
        }
      }

      else if (v45)
      {
        v47 = v28 >> 32;
      }

      else
      {
        v47 = BYTE6(v30);
      }

      if (v47 >= v32)
      {
        *&v63 = Data._Representation.subscript.getter();
        *(&v63 + 1) = v48;
        v49 = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
        outlined consume of Data._Representation(v63, *(&v63 + 1));
        v50 = Logger.logObject.getter();
        if (v49)
        {
          v51 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_1B25F5000, v50, v51, "validation succeeded", v52, 2u);
            MEMORY[0x1B274ECF0](v52, -1, -1);
          }

          v53 = PeerCertificateBundle.wouldBeTrusted(forKeys:)(v57);
          outlined consume of Data._Representation(v28, v30);
          (*(v58 + 8))(v61, v59);
          (*(v13 + 8))(v46, v12);
          return v53;
        }

        else
        {
          v54 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v50, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_1B25F5000, v50, v54, "signature validation failed", v55, 2u);
            MEMORY[0x1B274ECF0](v55, -1, -1);
          }

          outlined consume of Data._Representation(v28, v30);
          (*(v58 + 8))(v61, v59);
          (*(v13 + 8))(v46, v12);
          return 0;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  outlined init with copy of SessionKeyManager<SHA384>.State(v0, &v19 - v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      outlined init with copy of SessionKeyManager<SHA384>.State(v0, v9);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 1)
      {
        if (v14)
        {
          v16 = 0x6B616873646E6168;
        }

        else
        {
          v16 = 0x636553796C726165;
        }

        if (v14)
        {
          v15 = 0xEF74657263655365;
        }

        else
        {
          v15 = 0xEB00000000746572;
        }
      }

      else if (v14 == 2)
      {
        v15 = 0xEC00000074657263;
        v16 = 0x655372657473616DLL;
      }

      else
      {
        if (v14 != 3)
        {
          v15 = 0xE400000000000000;
          v16 = 1701602409;
          goto LABEL_21;
        }

        v15 = 0xEA00000000007374;
        v16 = 0x65726365536C6C61;
      }

      outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_21:
      Logger.logInvalidStateTransition(stateName:event:)(v16, v15, 0xD00000000000001DLL, 0x80000001B26CD7E0);

      v19 = xmmword_1B26C6450;
      v17 = 2;
      v20 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v17;
    }

LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  outlined init with take of P256.Signing.PublicKey?(v11, v4, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v17 = specialized SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter();
  outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  return v17;
}

uint64_t specialized SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for SHA384Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = xmmword_1B26C6130;
  v16 = 0;
  specialized Data.append<A>(contentsOf:)(64);
  specialized Data.append<A>(contentsOf:)(0xD000000000000021, 0x80000001B26CD800);
  if (("dataToSignInCertificateVerify" & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }

  v13 = 0;
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = &v13;
  v14[1] = v14;
  v5 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  v7 = *v5;
  v6 = v5[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v14);
  type metadata accessor for SHA384();
  lazy protocol witness table accessor for type SHA384 and conformance SHA384(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  v8 = dispatch thunk of HashFunction.finalize()();
  MEMORY[0x1EEE9AC00](v8);
  *&v12[-16] = &v15;
  lazy protocol witness table accessor for type SHA384 and conformance SHA384(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v1 + 8))(v4, v0);
  v9 = v15;
  outlined copy of Data._Representation(v15, *(&v15 + 1));
  outlined consume of Data._Representation(v9, *(&v9 + 1));
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t specialized Data.append<A>(contentsOf:)(uint64_t a1)
{
  v28[5] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RepeatedVys5UInt8VGMd, "V}");
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (!swift_dynamicCast())
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    outlined destroy of ContiguousBytes?(v26);
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      v8 = 0;
      v9 = 0;
      if (v7 != 2)
      {
        goto LABEL_12;
      }

      v10 = v5 + 16;
      v5 = *(v5 + 16);
      v8 = *(v10 + 8);
      v9 = v8 - v5;
      if (!__OFSUB__(v8, v5))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v8 = BYTE6(v6);
      v9 = BYTE6(v6);
      goto LABEL_12;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_52;
    }

    v9 = HIDWORD(v5) - v5;
    v8 = v5 >> 32;
LABEL_12:
    if (!__OFADD__(v8, a1))
    {
      if (v8 + a1 < v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v8 < 0)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v11 = Data._Representation.resetBytes(in:)();
      MEMORY[0x1EEE9AC00](v11);
      result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.append<A>(contentsOf:));
      if (v14 != a1)
      {
        v18 = 0;
        v19 = *v1;
        v20 = v1[1];
        v21 = v20 >> 62;
        if ((v20 >> 62) > 1)
        {
          if (v21 == 2)
          {
            v18 = *(v19 + 16);
          }
        }

        else if (v21)
        {
          v18 = v19;
        }

        v22 = __OFADD__(v18, v9);
        v23 = v18 + v9;
        if (!v22)
        {
          if (!__OFADD__(v23, v14))
          {
            if (v21 > 1)
            {
              if (v21 == 2)
              {
                v24 = *(v19 + 24);
              }

              else
              {
                v24 = 0;
              }
            }

            else if (v21)
            {
              v24 = v19 >> 32;
            }

            else
            {
              v24 = BYTE6(v20);
            }

            if (v24 >= v23 + v14)
            {
              result = Data._Representation.replaceSubrange(_:with:count:)();
              goto LABEL_42;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      memset(v28, 0, 15);
      if (v13 == result)
      {
        goto LABEL_42;
      }

      if ((v13 & 0x8000000000000000) == 0 && v13 < result)
      {
        v15 = v12;
        LOBYTE(v16) = 0;
        for (i = v13 - result + 1; i != 1; ++i)
        {
          *(v28 + v16) = v15;
          v16 = v16 + 1;
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v16 == 14)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = Data._Representation.append(contentsOf:)();
            if (!i)
            {
              goto LABEL_42;
            }

            LOBYTE(v16) = 0;
          }

          else if (!i)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = Data._Representation.append(contentsOf:)();
            goto LABEL_42;
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  outlined init with take of ContiguousBytes(v26, v28);
  v3 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  MEMORY[0x1EEE9AC00](v3);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  result = __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_42:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v20[0] = v6;
      LOWORD(v20[1]) = v5;
      BYTE2(v20[1]) = BYTE2(v5);
      BYTE3(v20[1]) = BYTE3(v5);
      BYTE4(v20[1]) = BYTE4(v5);
      BYTE5(v20[1]) = BYTE5(v5);
      BYTE6(v20[1]) = BYTE6(v5);
      result = a1(&v21, v20, v20 + BYTE6(v5));
      if (!v2)
      {
        result = v21;
      }

      v9 = LODWORD(v20[1]) | ((WORD2(v20[1]) | (BYTE6(v20[1]) << 16)) << 32);
      *v3 = v20[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1B26C6130;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B26C6130;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v21[2], v21[3], a1);
    v10 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v21;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v21;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v20, 0, 15);
  result = a1(&v21, v20, v20);
  if (!v2)
  {
    result = v21;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1B26C6130;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B26C6130;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1B26C6130;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B26C6130;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1B274CD90]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1B274CD90]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1B274CD90]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t partial apply for specialized closure #3 in Data.append<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized closure #3 in Data.append<A>(contentsOf:)(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t specialized closure #3 in Data.append<A>(contentsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type SHA384 and conformance SHA384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in SessionKeyManager.generateHashForAuthenticator(_:)(uint64_t a1, uint64_t a2)
{
  v6[3] = MEMORY[0x1E69E6290];
  v6[4] = MEMORY[0x1E6969DF8];
  v6[0] = a1;
  v6[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0(v6, MEMORY[0x1E69E6290]);
  v4 = *v2;
  v3 = v2[1];
  Data._Representation.append(contentsOf:)();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

Swift::Bool __swiftcall PeerCertificateBundle.wouldBeTrusted(forKeys:)(Swift::OpaquePointer forKeys)
{
  v2 = v1;
  v73[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - v10;
  v12 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PeerCertificateBundle.Bundle(v2, v15);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    goto LABEL_69;
  }

  (*(v5 + 32))(v11, v15, v4);
  v16 = *(forKeys._rawValue + 2);
  if (!v16)
  {
    v58 = 0;
    (*(v5 + 8))(v11, v4);
    goto LABEL_60;
  }

  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v17 = v19;
  v20 = forKeys._rawValue + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v21 = *(v18 + 56);
  v69 = 0;
  v70 = v21;
  v71 = v18;
  v22 = (v18 - 8);
  v66 = v11;
  v67 = v4;
  v65 = v19;
  for (i = v19(v9, v20, v4); ; i = v17(v9, v20, v4))
  {
    v25 = MEMORY[0x1B274D470](i);
    v27 = v26;
    v28 = MEMORY[0x1B274D470]();
    v30 = v27 >> 62;
    v31 = v29 >> 62;
    if (v27 >> 62 == 3)
    {
      v32 = 0;
      if (!v25 && v27 == 0xC000000000000000 && v29 >> 62 == 3)
      {
        v32 = 0;
        if (!v28 && v29 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v59 = 0;
          v60 = 0xC000000000000000;
          goto LABEL_58;
        }
      }

LABEL_25:
      if (v31 > 1)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        v32 = BYTE6(v27);
        if (v31 > 1)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      LODWORD(v32) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_64;
      }

      v32 = v32;
      goto LABEL_25;
    }

    if (v30 == 2)
    {
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v35)
      {
        goto LABEL_63;
      }

      goto LABEL_25;
    }

    v32 = 0;
    if (v31 > 1)
    {
LABEL_31:
      if (v31 != 2)
      {
        if (!v32)
        {
          break;
        }

LABEL_5:
        outlined consume of Data._Representation(v28, v29);
        outlined consume of Data._Representation(v25, v27);
        v24 = *v22;
        (*v22)(v9, v4);
        goto LABEL_6;
      }

      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      v35 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v35)
      {
        goto LABEL_62;
      }

      goto LABEL_33;
    }

LABEL_26:
    if (!v31)
    {
      v36 = BYTE6(v29);
      goto LABEL_33;
    }

    LODWORD(v36) = HIDWORD(v28) - v28;
    if (__OFSUB__(HIDWORD(v28), v28))
    {
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
    }

    v36 = v36;
LABEL_33:
    if (v32 != v36)
    {
      goto LABEL_5;
    }

    if (v32 < 1)
    {
      break;
    }

    if (v30 > 1)
    {
      v43 = v28;
      v68 = v29;
      if (v30 != 2)
      {
        memset(v73, 0, 14);
        v40 = v68;
        v57 = v69;
        closure #1 in static Data.== infix(_:_:)(v73, v28, v68, &v72);
        v69 = v57;
        v42 = v43;
        goto LABEL_51;
      }

      v44 = *(v25 + 16);
      v64 = *(v25 + 24);
      v45 = __DataStorage._bytes.getter();
      if (v45)
      {
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(v44, v46))
        {
          goto LABEL_67;
        }

        v45 += v44 - v46;
      }

      if (__OFSUB__(v64, v44))
      {
        goto LABEL_66;
      }

      MEMORY[0x1B274CD90]();
      v47 = v45;
      v49 = v68;
      v48 = v69;
      closure #1 in static Data.== infix(_:_:)(v47, v43, v68, v73);
      v69 = v48;
      v50 = v43;
    }

    else
    {
      if (!v30)
      {
        v73[0] = v25;
        LOWORD(v73[1]) = v27;
        BYTE2(v73[1]) = BYTE2(v27);
        BYTE3(v73[1]) = BYTE3(v27);
        BYTE4(v73[1]) = BYTE4(v27);
        BYTE5(v73[1]) = BYTE5(v27);
        v39 = v28;
        v40 = v29;
        v41 = v69;
        closure #1 in static Data.== infix(_:_:)(v73, v28, v29, &v72);
        v69 = v41;
        v42 = v39;
LABEL_51:
        outlined consume of Data._Representation(v42, v40);
        outlined consume of Data._Representation(v25, v27);
        v56 = v72;
        goto LABEL_52;
      }

      if (v25 >> 32 < v25)
      {
        goto LABEL_65;
      }

      v64 = v28;
      v68 = v29;
      v51 = __DataStorage._bytes.getter();
      if (v51)
      {
        v52 = __DataStorage._offset.getter();
        if (__OFSUB__(v25, v52))
        {
          goto LABEL_68;
        }

        v51 += v25 - v52;
      }

      MEMORY[0x1B274CD90]();
      v53 = v51;
      v54 = v64;
      v49 = v68;
      v55 = v69;
      closure #1 in static Data.== infix(_:_:)(v53, v64, v68, v73);
      v69 = v55;
      v50 = v54;
    }

    outlined consume of Data._Representation(v50, v49);
    outlined consume of Data._Representation(v25, v27);
    v56 = v73[0];
LABEL_52:
    v24 = *v22;
    v4 = v67;
    (*v22)(v9, v67);
    v17 = v65;
    if (v56)
    {
      v58 = 1;
      v11 = v66;
      goto LABEL_59;
    }

    v11 = v66;
LABEL_6:
    v20 += v70;
    if (!--v16)
    {
      v58 = 0;
      goto LABEL_59;
    }
  }

  outlined consume of Data._Representation(v28, v29);
  v59 = v25;
  v60 = v27;
LABEL_58:
  outlined consume of Data._Representation(v59, v60);
  v24 = *v22;
  (*v22)(v9, v4);
  v58 = 1;
LABEL_59:
  v24(v11, v4);
LABEL_60:
  v61 = *MEMORY[0x1E69E9840];
  return v58;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1B274CD90]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1B274CD90]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v43 = a2;
  v7 = type metadata accessor for PartialHandshakeResult(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v63 = __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = v6;
    v16 = v8;
    v17 = v7;
    v18 = a1;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_1B25F5000, v13, v14, "client expecting finished", v15, 2u);
    v20 = v19;
    a1 = v18;
    v7 = v17;
    v8 = v16;
    v5 = v3;
    v6 = v42;
    MEMORY[0x1B274ECF0](v20, -1, -1);
  }

  if (v6[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  result = _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v6, v6, v50, &v52);
  if (v5)
  {
    v26 = v50[0];
    v25 = v50[1];
    v27 = v51;
LABEL_11:
    *a1 = v26;
    *(a1 + 8) = v25;
    *(a1 + 16) = v27;
    return result;
  }

  v46[6] = v58;
  v46[7] = v59;
  v46[2] = v54;
  v46[3] = v55;
  v46[4] = v56;
  v46[5] = v57;
  v46[0] = v52;
  v46[1] = v53;
  v49[5] = v58;
  v49[6] = v59;
  v49[1] = v54;
  v49[2] = v55;
  v49[3] = v56;
  v49[4] = v57;
  v47 = v60;
  LOBYTE(v49[7]) = v60;
  v48 = v52;
  v49[0] = v53;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v48) == 1)
  {
LABEL_6:
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B25F5000, v21, v22, "incomplete message, waiting for more data", v23, 2u);
      MEMORY[0x1B274ECF0](v23, -1, -1);
    }

    return (*(v8 + 56))(v43, 1, 1, v7);
  }

  v61[4] = *(&v49[4] + 8);
  v62[0] = *(&v49[5] + 8);
  *(v62 + 9) = *(&v49[6] + 1);
  v61[0] = *(v49 + 8);
  v61[1] = *(&v49[1] + 8);
  v61[2] = *(&v49[2] + 8);
  v61[3] = *(&v49[3] + 8);
  if (LOBYTE(v49[7]) != 6)
  {
    HandshakeStateMachine.logUnexpectedMessage(message:)(v61);
    v44 = xmmword_1B26C6430;
    v27 = 2;
    v45 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = outlined destroy of P256.Signing.PrivateKey?(v46, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v25 = 0;
    v26 = 4;
    goto LABEL_11;
  }

  v38 = a1;
  v40 = *(&v49[1] + 1);
  v41 = *&v49[1];
  v42 = *(&v49[0] + 1);
  outlined copy of Data._Representation(*(&v49[0] + 1), *&v49[1]);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1B25F5000, v28, v29, "client got server finished ", v30, 2u);
    MEMORY[0x1B274ECF0](v30, -1, -1);
  }

  v31 = v48;
  v39 = *&v49[0];
  v32 = v6 + *(type metadata accessor for HandshakeStateMachine(0) + 24);
  _s15SwiftTLSLibrary14HandshakeStateO23receievedServerFinished06serverG00hG5Bytes10serializerAA07PartialC6ResultVAA0G7MessageV_AA10ByteBufferVAA20TLSMessageSerializerVztAA8TLSErrorOYKF(v42, v41, v40, v31, *(&v31 + 1), v39, v50, v11);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B25F5000, v33, v34, "client sending client finished", v36, 2u);
    MEMORY[0x1B274ECF0](v36, -1, -1);
  }

  outlined destroy of HandshakeMessage(v49 + 8);

  outlined destroy of P256.Signing.PrivateKey?(v46, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  v37 = v43;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v11, v43, type metadata accessor for PartialHandshakeResult);
  return (*(v8 + 56))(v37, 0, 1, v7);
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO23receievedServerFinished06serverG00hG5Bytes10serializerAA07PartialC6ResultVAA0G7MessageV_AA10ByteBufferVAA20TLSMessageSerializerVztAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void (*a6)(char *, uint64_t, uint64_t)@<X5>, void *a7@<X7>, char *a8@<X8>)
{
  v165 = a7;
  v171 = a5;
  v172 = a6;
  v169 = a3;
  v170 = a4;
  v167 = a1;
  v168 = a2;
  v161 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v150 = &v145 - v11;
  v164 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v12 = *(*(v164 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v164);
  v151 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v145 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v146 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v148 = &v145 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v153 = &v145 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v152 = &v145 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v154 = &v145 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v145 - v29;
  v166 = type metadata accessor for SymmetricKey();
  v163 = *(v166 - 8);
  v31 = *(v163 + 8);
  v32 = MEMORY[0x1EEE9AC00](v166);
  v147 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v149 = &v145 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v156 = &v145 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v157 = &v145 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v158 = &v145 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v145 - v42;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v44 = *(*(ready - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](ready);
  v155 = &v145 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v145 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v145 - v50;
  v52 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v55 = &v145 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for HandshakeState(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v145 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v8;
  outlined init with copy of HandshakeState(v8, v59, type metadata accessor for HandshakeState);
  v159 = v56;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    v61 = type metadata accessor for HandshakeState;
    if (EnumCaseMultiPayload != 5)
    {
LABEL_32:
      outlined destroy of HandshakeState(v59, v61);
      __break(1u);
      goto LABEL_33;
    }

    outlined init with take of HandshakeState.IdleState(v59, v55, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v62 = v176;
    v63 = _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC0g17CertificateVerifyD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(v51, v55, v167, v168, v169, v170, v171, v172, v144, &v173);
    if (v62)
    {
      v66 = v173;
      v67 = v174;
      v68 = v175;
      v69 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
      v70 = v55;
LABEL_19:
      result = outlined destroy of HandshakeState(v70, v69);
      v124 = v165;
      *v165 = v66;
      v124[1] = v67;
      *(v124 + 16) = v68;
      return result;
    }

    v77 = v43;
    v171 = v64;
    v172 = v65;
    v170 = v63;
    v176 = 0;
    v78 = *(ready + 44);
    specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter(v30);
    v59 = v163;
    v79 = (v163 + 48);
    v80 = *(v163 + 6);
    v81 = v166;
    if (v80(v30, 1, v166) == 1)
    {
      v154 = v30;
    }

    else
    {
      v82 = *(v59 + 4);
      v59 += 32;
      v169 = v82;
      (v82)(v77, v30, v81);
      v83 = v154;
      specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter(v154);
      v84 = v166;
      if (v80(v83, 1, v166) != 1)
      {
        v85 = v160;
        outlined destroy of HandshakeState(v160, type metadata accessor for HandshakeState);
        outlined destroy of HandshakeState(v55, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v86 = v169;
        (v169)(v158, v83, v84);
        outlined init with take of HandshakeState.IdleState(v51, v85, type metadata accessor for HandshakeState.ReadyState);
        swift_storeEnumTagMultiPayload();
        v87 = type metadata accessor for PartialHandshakeResult(0);
        v88 = v87[5];
        v89 = v161;
        (v86)(&v161[v88], v77, v84);
        v90 = v84;
        v91 = type metadata accessor for EncryptionLevel(0);
        swift_storeEnumTagMultiPayload();
        v92 = *(*(v91 - 8) + 56);
        v92(&v89[v88], 0, 1, v91);
        v93 = v87[6];
        (v86)(&v89[v93], v158, v90);
        swift_storeEnumTagMultiPayload();
        result = (v92)(&v89[v93], 0, 1, v91);
        v95 = v171;
        *v89 = v170;
        *(v89 + 1) = v95;
        *(v89 + 2) = v172;
        *&v89[v87[7]] = xmmword_1B26C5EF0;
        return result;
      }

      (*(v163 + 1))(v77, v84);
    }

    outlined destroy of P256.Signing.PrivateKey?(v154, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    __break(1u);
    goto LABEL_28;
  }

  outlined init with copy of HandshakeState(v59, v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  v71 = v164;
  if ((v16[*(v164 + 40)] & 1) != 0 || v16[*(v164 + 44)] == 1)
  {
    v72 = v176;
    v73 = _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC019EncryptedExtensionsD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(v49, v16, v167, v168, v169, v170, v171, v172, v144, &v173);
    if (v72)
    {
      v66 = v173;
      v67 = v174;
      v68 = v175;
      v76 = v16;
LABEL_18:
      outlined destroy of HandshakeState(v76, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v70 = v59;
      v69 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      goto LABEL_19;
    }

    v171 = v74;
    v172 = v75;
    v170 = v73;
    v176 = 0;
    v96 = *(ready + 44);
    v55 = v152;
    specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter(v152);
    v51 = v163;
    v79 = (v163 + 48);
    v97 = *(v163 + 6);
    v98 = v166;
    if (v97(v55, 1, v166) == 1)
    {
LABEL_28:
      v153 = v55;
LABEL_30:
      outlined destroy of P256.Signing.PrivateKey?(v153, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      __break(1u);
      goto LABEL_31;
    }

    v99 = *(v51 + 4);
    v51 += 32;
    v100 = v55;
    v101 = v99;
    (v99)(v157, v100, v98);
    v102 = v153;
    specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter(v153);
    v103 = v166;
    if (v97(v102, 1, v166) == 1)
    {
      (*(v163 + 1))(v157, v103);
      goto LABEL_30;
    }

    v104 = v160;
    outlined destroy of HandshakeState(v160, type metadata accessor for HandshakeState);
    v169 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    outlined destroy of HandshakeState(v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    (v101)(v156, v102, v103);
    v105 = v101;
    v168 = v101;
    outlined init with take of HandshakeState.IdleState(v49, v104, type metadata accessor for HandshakeState.ReadyState);
    swift_storeEnumTagMultiPayload();
    v106 = v103;
    v107 = type metadata accessor for PartialHandshakeResult(0);
    v108 = v107[5];
    v109 = v161;
    (v105)(&v161[v108], v157, v106);
    v110 = type metadata accessor for EncryptionLevel(0);
    swift_storeEnumTagMultiPayload();
    v111 = *(*(v110 - 8) + 56);
    v111(&v109[v108], 0, 1, v110);
    v112 = v107[6];
    (v168)(&v109[v112], v156, v106);
    swift_storeEnumTagMultiPayload();
    v111(&v109[v112], 0, 1, v110);
    v113 = v171;
    *v109 = v170;
    *(v109 + 1) = v113;
    *(v109 + 2) = v172;
    *&v109[v107[7]] = xmmword_1B26C5EF0;
    v114 = v59;
    v115 = v169;
  }

  else
  {
    outlined destroy of HandshakeState(v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v51 = v151;
    outlined init with copy of HandshakeState(v59, v151, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v116 = &v51[*(v71 + 48)];
    v79 = v150;
    outlined init with copy of Any?(v116, v150, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v117 = type metadata accessor for PAKEClientState(0);
    if ((*(*(v117 - 8) + 48))(v79, 1, v117) == 1)
    {
LABEL_31:
      v61 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of HandshakeState(v51, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      outlined destroy of P256.Signing.PrivateKey?(v79, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
      goto LABEL_32;
    }

    outlined destroy of P256.Signing.PrivateKey?(v79, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v118 = v176;
    v119 = _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC019EncryptedExtensionsD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(v155, v51, v167, v168, v169, v170, v171, v172, v144, &v173);
    v122 = v149;
    v123 = v148;
    if (v118)
    {
      v66 = v173;
      v67 = v174;
      v68 = v175;
      v76 = v51;
      goto LABEL_18;
    }

    v170 = v120;
    v171 = v121;
    v169 = v119;
    v176 = 0;
    v125 = *(ready + 44);
    specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter(v148);
    v126 = v163;
    v127 = *(v163 + 6);
    v128 = v166;
    v129 = v127(v123, 1, v166);
    v130 = v123;
    if (v129 == 1)
    {
LABEL_33:
      v146 = v130;
LABEL_35:
      result = outlined destroy of P256.Signing.PrivateKey?(v146, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      __break(1u);
      return result;
    }

    v172 = *(v126 + 4);
    v172(v122, v123, v128);
    v131 = v146;
    specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter(v146);
    v132 = v166;
    if (v127(v131, 1, v166) == 1)
    {
      (*(v126 + 1))(v122, v132);
      goto LABEL_35;
    }

    v133 = v160;
    outlined destroy of HandshakeState(v160, type metadata accessor for HandshakeState);
    v168 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    outlined destroy of HandshakeState(v51, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v134 = v131;
    v135 = v172;
    v172(v147, v134, v132);
    outlined init with take of HandshakeState.IdleState(v155, v133, type metadata accessor for HandshakeState.ReadyState);
    swift_storeEnumTagMultiPayload();
    v136 = v132;
    v137 = type metadata accessor for PartialHandshakeResult(0);
    v138 = v137[5];
    v139 = v161;
    v135(&v161[v138], v122, v136);
    v140 = type metadata accessor for EncryptionLevel(0);
    swift_storeEnumTagMultiPayload();
    v141 = *(*(v140 - 8) + 56);
    v141(v139 + v138, 0, 1, v140);
    v142 = v137[6];
    v172(v139 + v142, v147, v136);
    swift_storeEnumTagMultiPayload();
    v141(v139 + v142, 0, 1, v140);
    v143 = v170;
    *v139 = v169;
    v139[1] = v143;
    v139[2] = v171;
    *(v139 + v137[7]) = xmmword_1B26C5EF0;
    v114 = v59;
    v115 = v168;
  }

  return outlined destroy of HandshakeState(v114, v115);
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V23receivingServerFinished08originalD006serverH00jH5Bytes10serializerAE_AA10ByteBufferVtAC0g17CertificateVerifyD0V_AA0H7MessageVAlA20TLSMessageSerializerVztAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v88 = a8;
  v85 = a7;
  v84 = a6;
  v87 = a5;
  v89 = a4;
  v86 = a3;
  v83 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v90 = *(v15 - 8);
  v16 = *(v90 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v78 - v24;
  v26 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  outlined init with copy of Any?(a2 + *(v26 + 44), v25, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v27 = v101;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v99, v21);
  if (!v27)
  {
    v31 = v88;
    v81 = v26;
    v101 = a2;
    v82 = v14;
    v32 = v89 >> 62;
    if ((v89 >> 62) > 1)
    {
      v33 = v25;
      v34 = v15;
      v35 = v90;
      if (v32 == 2)
      {
        v36 = *(v86 + 24);
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v33 = v25;
      v34 = v15;
      v35 = v90;
      if (v32)
      {
        v36 = v86 >> 32;
      }

      else
      {
        v36 = BYTE6(v89);
      }
    }

    if (v36 < v87)
    {
      __break(1u);
    }

    else
    {
      *&v92 = Data._Representation.subscript.getter();
      *(&v92 + 1) = v37;
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      v38 = static MessageAuthenticationCode.== infix<A>(_:_:)();
      outlined consume of Data._Representation(v92, *(&v92 + 1));
      v39 = *(v35 + 8);
      v39(v21, v34);
      if (v38)
      {
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v84, v85, v31);
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v99, v19);
        *(&v93 + 1) = v34;
        *&v94 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
        (*(v90 + 16))(boxed_opaque_existential_1, v19, v34);
        __swift_project_boxed_opaque_existential_0(&v92, *(&v93 + 1));
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        v39(v19, v34);
        v46 = v91[0];
        v47 = v91[1];
        __swift_destroy_boxed_opaque_existential_0(&v92);
        v48 = 0;
        v97 = xmmword_1B26C6130;
        v98 = 0;
        v49 = v47 >> 62;
        if ((v47 >> 62) > 1)
        {
          if (v49 == 2)
          {
            v48 = *(v46 + 16);

            goto LABEL_24;
          }
        }

        else if (v49)
        {
          v48 = v46;
LABEL_24:
        }

        specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v46, v47, v48);
        outlined consume of Data._Representation(v46, v47);
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v97, *(&v97 + 1), v98);
        v90 = 0;
        outlined consume of Data._Representation(v46, v47);
        v50 = v101;
        v51 = *(v101 + 48);
        v94 = *(v101 + 32);
        v95 = v51;
        v96 = *(v101 + 64);
        v52 = *(v101 + 16);
        v92 = *v101;
        v93 = v52;
        LODWORD(v88) = *(v101 + 66);
        LODWORD(v89) = *(v101 + 68);
        v53 = v81;
        v54 = v82;
        outlined init with copy of HandshakeState(v101 + v81[7], v82, type metadata accessor for PeerCertificateBundle);
        v55 = type metadata accessor for PeerCertificateBundle(0);
        v56 = *(*(v55 - 8) + 56);
        v56(v54, 0, 1, v55);
        v57 = v53[9];
        v58 = (v50 + v53[8]);
        v59 = v58[1];
        v86 = *v58;
        v60 = v50 + v57;
        v62 = *(v50 + v57);
        v61 = *(v50 + v57 + 8);
        v84 = v62;
        v80 = v61;
        v79 = *(v60 + 16);
        LODWORD(v87) = *(v50 + v53[10]);
        ready = type metadata accessor for HandshakeState.ReadyState(0);
        v64 = v83;
        outlined init with take of P256.Signing.PublicKey?(v33, v83 + ready[11], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
        v65 = v53[13];
        LODWORD(v85) = *(v50 + v53[12]);
        LODWORD(v101) = *(v50 + v65);
        v66 = ready[7];
        v56(v64 + v66, 1, 1, v55);
        v67 = (v64 + ready[8]);
        v68 = (v64 + ready[9]);
        *v68 = xmmword_1B26C5EF0;
        v68[2] = 0;
        v81 = (v64 + ready[12]);
        v69 = v95;
        *(v64 + 32) = v94;
        *(v64 + 48) = v69;
        *(v64 + 64) = v96;
        v70 = v93;
        *v64 = v92;
        *(v64 + 16) = v70;
        *(v64 + 66) = v88;
        *(v64 + 68) = 0;
        *(v64 + 70) = v89;
        *(v64 + 72) = 0;
        outlined init with copy of HandshakeStateMachine.Configuration(&v92, v91);
        v71 = v59;

        v72 = v84;
        v73 = v80;
        v74 = v79;
        outlined copy of Data?(v84, v80);
        outlined assign with take of PartialHandshakeResult?(v82, v64 + v66, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
        *v67 = v86;
        v67[1] = v71;
        v75 = v68[2];
        outlined consume of ByteBuffer?(*v68, v68[1]);
        *v68 = v72;
        v68[1] = v73;
        v68[2] = v74;
        *(v64 + ready[10]) = v87;
        v76 = v81;
        *v81 = 0;
        *(v76 + 2) = 1;
        *(v64 + ready[13]) = 0;
        *(v64 + ready[14]) = v85;
        *(v64 + ready[15]) = v101;
        v77 = *(&v97 + 1);
        v30 = v97;
        outlined copy of Data._Representation(v97, *(&v97 + 1));
        outlined consume of Data._Representation(v30, v77);
        return v30;
      }

      if (one-time initialization token for logger == -1)
      {
LABEL_14:
        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, logger);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1B25F5000, v41, v42, "invalid server finished payload", v43, 2u);
          MEMORY[0x1B274ECF0](v43, -1, -1);
        }

        v92 = xmmword_1B26C6400;
        v30 = 2;
        LOBYTE(v93) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of P256.Signing.PrivateKey?(v33, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
        v28 = 0;
        v29 = 6;
        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  v29 = v99[0];
  v28 = v99[1];
  v30 = v100;
  outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
LABEL_17:
  *a10 = v29;
  *(a10 + 8) = v28;
  *(a10 + 16) = v30;
  return v30;
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  *&v44 = a1;
  v3 = v2;
  v4 = type metadata accessor for SHA384Digest();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricKey();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v47 = v3;
  outlined init with copy of Any?(v3, &v37 - v20, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v23 = v10;
    v24 = v42;
    if (EnumCaseMultiPayload)
    {
      outlined init with take of P256.Signing.PublicKey?(v21, v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v30 = *(v11 + 44);
      v31 = MEMORY[0x1E6966408];
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
      v32 = v24;
      v33 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v33, v23);
      type metadata accessor for SHA384();
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
      v34 = v38;
      v35 = dispatch thunk of HashFunction.finalize()();
      MEMORY[0x1EEE9AC00](v35);
      *(&v37 - 2) = v23;
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v41 + 8))(v34, v32);
      outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      (*(v39 + 8))(v23, v40);
      return result;
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  outlined init with copy of Any?(v47, v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 <= 1)
  {
    v27 = v44;
    if (v26)
    {
      v28 = 0xEF74657263655365;
      v29 = 0x6B616873646E6168;
    }

    else
    {
      v28 = 0xEB00000000746572;
      v29 = 0x636553796C726165;
    }

    goto LABEL_18;
  }

  v27 = v44;
  if (v26 == 2)
  {
    v28 = 0xEC00000074657263;
    v29 = 0x655372657473616DLL;
    goto LABEL_18;
  }

  if (v26 == 3)
  {
    v28 = 0xEA00000000007374;
    v29 = 0x65726365536C6C61;
LABEL_18:
    outlined destroy of P256.Signing.PrivateKey?(v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_19;
  }

  v28 = 0xE400000000000000;
  v29 = 1701602409;
LABEL_19:
  Logger.logInvalidStateTransition(stateName:event:)(v29, v28, 0xD000000000000015, 0x80000001B26CDE30);

  v44 = xmmword_1B26C6450;
  v45 = xmmword_1B26C6450;
  v46 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  result = *&v44;
  *v27 = v44;
  *(v27 + 16) = 2;
  return result;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5@<X0>(Swift::Int a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = a4 >> 16;
    if (!(a4 >> 16))
    {
      v5 = v13;
      v6 = *(v13 + 2);
      v14 = *(v13 + 3);
      v15 = v14 >> 1;
      v7 = v6 + 1;
      if (v14 >> 1 > v6)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v7, 1, v5);
  v14 = *(v5 + 3);
  v15 = v14 >> 1;
LABEL_4:
  *(v5 + 2) = v7;
  v5[v6 + 32] = BYTE1(a4);
  v16 = v6 + 2;
  if (v15 < (v6 + 2))
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v6 + 2, 1, v5);
  }

  *(v5 + 2) = v16;
  v5[v7 + 32] = a4;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v17 = String.UTF8View._foreignCount()();
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v17 = HIBYTE(a2) & 0xF;
LABEL_12:
  LOBYTE(v6) = v17 + 6;
  if (((v17 + 6) & 0x100) == 0)
  {
    v16 = *(v5 + 2);
    a5 = *(v5 + 3);
    v7 = v16 + 1;

    if (v16 < a5 >> 1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v7, 1, v5);
LABEL_14:
  *(v5 + 2) = v7;
  v5[v16 + 32] = v6;
  v23 = v5;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v18 = &v23;
  specialized Array.append<A>(contentsOf:)(a1, a2);
  v19 = *(a3 + 16);
  if (v19 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v18 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }
  }

  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
LABEL_16:
  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v18[v21 + 32] = v19;
  v23 = v18;
  specialized Array.append<A>(contentsOf:)(a3 + 32, (a3 + 32 + v19));
  type metadata accessor for SHA384();
  type metadata accessor for SymmetricKey();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

uint64_t specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:)()
{
  return sub_1B2624068();
}

{
  type metadata accessor for SHA384();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  return static HMAC.authenticationCode<A>(for:using:)();
}

uint64_t partial apply for specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:)()
{
  v1 = *(v0 + 16);
  return specialized closure #1 in static HMAC.authenticationCode<A>(bytes:using:)();
}

{
  return _s9CryptoKit4HMACV15SwiftTLSLibraryE18authenticationCode5bytes5usingAA020HashedAuthenticationG0VyxGqd___AA12SymmetricKeyVt10Foundation15ContiguousBytesRd__lFZAJSWXEfU_AA6SHA384V_AA0Q6DigestVTg5TA_0();
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v30 = a3;
  v34 = a2;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v29 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  outlined init with copy of Any?(v3, &v29 - v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, logger);
      outlined init with copy of Any?(v3, v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 1)
      {
        if (v25)
        {
          v26 = 0xEF74657263655365;
          v27 = 0x6B616873646E6168;
        }

        else
        {
          v26 = 0xEB00000000746572;
          v27 = 0x636553796C726165;
        }
      }

      else if (v25 == 2)
      {
        v26 = 0xEC00000074657263;
        v27 = 0x655372657473616DLL;
      }

      else
      {
        if (v25 != 3)
        {
          v26 = 0xE400000000000000;
          v27 = 1701602409;
LABEL_19:
          Logger.logInvalidStateTransition(stateName:event:)(v27, v26, 0xD000000000000012, 0x80000001B26CE130);

          v32 = xmmword_1B26C6450;
          v33 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          return 2;
        }

        v26 = 0xEA00000000007374;
        v27 = 0x65726365536C6C61;
      }

      outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      goto LABEL_19;
    }

LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_6;
  }

  v22 = v31;
  v23 = v34;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  outlined init with take of P256.Signing.PublicKey?(v20, v10, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  outlined init with copy of Any?(v10, v8, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  outlined copy of Data._Representation(v22, v23);
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretV09handshakeO019serverFinishedBytesAHyx__GAF09HandshakeO0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5(v8, v22, v23, v30, v18);
  outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  outlined assign with take of PartialHandshakeResult?(v18, v3, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretV09handshakeO019serverFinishedBytesAHyx__GAF09HandshakeO0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v58 = a1;
  v59 = a2;
  v7 = type metadata accessor for SHA384Digest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v57 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  result = dispatch thunk of static Digest.byteCount.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v51[1] = v18;
    v52 = v7;
    v51[0] = v15;
    v53 = v11;
    v54 = v8;
    v56 = v14;
    v20 = a3;
    if (result)
    {
      v21 = result;
      v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v22 + 16) = v21;
      bzero((v22 + 32), v21);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v60 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v23 = v57;
    SymmetricKey.init<A>(data:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    v25 = *(v24 + 36);
    MEMORY[0x1EEE9AC00](v24);
    v51[-2] = v23;
    v26 = v58;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v28 = v27[9];
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
    SymmetricKey.init<A>(data:)();
    v29 = type metadata accessor for SHA384();
    (*(*(v29 - 8) + 16))(a5, v26, v29);
    v30 = v20;
    v31 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      v32 = 0;
      result = v55;
      if (v31 == 2)
      {
        v32 = *(v59 + 24);
      }
    }

    else
    {
      result = v55;
      if (v31)
      {
        v32 = v59 >> 32;
      }

      else
      {
        v32 = BYTE6(v20);
      }
    }

    if (v32 >= result)
    {
      v33 = Data._Representation.subscript.getter();
      v35 = v34;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v33, v34);
      outlined consume of Data._Representation(v33, v35);
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
      v36 = v53;
      dispatch thunk of HashFunction.finalize()();
      v37 = v24;
      v38 = *(v24 + 40);
      v39 = v51[0];
      v40 = *(v51[0] + 16);
      v41 = a5 + v27[10];
      v55 = v30;
      v42 = v58;
      v43 = v56;
      v40(v41, v58 + v38, v56);
      v40(a5 + v27[11], v42 + *(v37 + 44), v43);
      v44 = v27[12];
      v45 = v52;
      v46 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x6172742070612063, 0xEC00000063696666, v46, a5 + v44);
      v47 = v27[13];
      v48 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x6172742070612073, 0xEC00000063696666, v48, a5 + v47);
      v49 = v27[14];
      v50 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x7473616D20707865, 0xEA00000000007265, v50, a5 + v49);
      outlined consume of Data._Representation(v59, v55);
      outlined destroy of P256.Signing.PrivateKey?(v42, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      (*(v54 + 8))(v36, v45);
      return (*(v39 + 8))(v57, v56);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5@<X0>(Swift::Int a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X4>, unint64_t a4@<X8>)
{
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a3 >> 16;
    if (!(a3 >> 16))
    {
      v4 = v11;
      v5 = *(v11 + 2);
      v12 = *(v11 + 3);
      v13 = v12 >> 1;
      v6 = v5 + 1;
      if (v12 >> 1 > v5)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v6, 1, v4);
  v12 = *(v4 + 3);
  v13 = v12 >> 1;
LABEL_4:
  *(v4 + 2) = v6;
  v4[v5 + 32] = BYTE1(a3);
  v14 = v5 + 2;
  if (v13 < (v5 + 2))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v5 + 2, 1, v4);
  }

  *(v4 + 2) = v14;
  v4[v6 + 32] = a3;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = String.UTF8View._foreignCount()();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v15 = HIBYTE(a2) & 0xF;
LABEL_12:
  LODWORD(v5) = v15 + 6;
  if ((v5 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = *(v4 + 2);
  a4 = *(v4 + 3);
  v6 = v14 + 1;

  if (v14 >= a4 >> 1)
  {
LABEL_21:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a4 > 1), v6, 1, v4);
  }

  *(v4 + 2) = v6;
  v4[v14 + 32] = v5;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v16 = specialized Array.append<A>(contentsOf:)(a1, a2);
  MEMORY[0x1EEE9AC00](v16);
  type metadata accessor for SHA384Digest();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  type metadata accessor for SHA384();
  type metadata accessor for SymmetricKey();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v38 = a1;
  v36 = a2;
  v41 = type metadata accessor for SHA384Digest();
  v37 = *(v41 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SymmetricKey();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  outlined init with copy of Any?(v2, &v33 - v18, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    outlined init with take of P256.Signing.PublicKey?(v19, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v21 = *(v9 + 40);
    v22 = MEMORY[0x1E6966408];
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
    v23 = v41;
    v24 = dispatch thunk of static Digest.byteCount.getter();
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v24, v8);
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
    v25 = v33;
    v26 = dispatch thunk of HashFunction.finalize()();
    MEMORY[0x1EEE9AC00](v26);
    *(&v33 - 2) = v8;
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v37 + 8))(v25, v23);
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    (*(v34 + 8))(v8, v35);
    return result;
  }

  outlined destroy of P256.Signing.PrivateKey?(v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);
  outlined init with copy of Any?(v2, v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 1)
  {
    v30 = v38;
    if (v29)
    {
      v31 = 0xEF74657263655365;
      v32 = 0x6B616873646E6168;
    }

    else
    {
      v31 = 0xEB00000000746572;
      v32 = 0x636553796C726165;
    }

    goto LABEL_17;
  }

  v30 = v38;
  if (v29 == 2)
  {
    v31 = 0xEC00000074657263;
    v32 = 0x655372657473616DLL;
    goto LABEL_17;
  }

  if (v29 == 3)
  {
    v31 = 0xEA00000000007374;
    v32 = 0x65726365536C6C61;
LABEL_17:
    outlined destroy of P256.Signing.PrivateKey?(v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_18;
  }

  v31 = 0xE400000000000000;
  v32 = 1701602409;
LABEL_18:
  Logger.logInvalidStateTransition(stateName:event:)(v32, v31, 0xD000000000000015, 0x80000001B26CDE10);

  v38 = xmmword_1B26C6450;
  v39 = xmmword_1B26C6450;
  v40 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  result = *&v38;
  *v30 = v38;
  *(v30 + 16) = 2;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  LOBYTE(v35) = 20;
  v7 = MEMORY[0x1E69E6290];
  v8 = MEMORY[0x1E6969DF8];
  v38 = MEMORY[0x1E69E6290];
  v39 = MEMORY[0x1E6969DF8];
  v36 = &v35;
  v37 = (&v35 + 1);
  v9 = __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v12 = *v3;
  v13 = v3[1];
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

  LOBYTE(v35) = 0;
  v38 = v7;
  v39 = v8;
  v36 = &v35;
  v37 = (&v35 + 1);
  v16 = __swift_project_boxed_opaque_existential_0(&v36, v7);
  v18 = *v16;
  v17 = v16[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v35 = 0;
  v38 = v7;
  v39 = v8;
  v36 = &v35;
  v37 = &v36;
  v19 = __swift_project_boxed_opaque_existential_0(&v36, v7);
  v21 = *v19;
  v20 = v19[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = a1;
    v24 = a1 >> 32;
  }

  else
  {
    v23 = 0;
    v24 = BYTE6(a2);
  }

  if (v24 < a3 || v24 < v23)
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = Data._Representation.subscript.getter();
  v27 = v26;
  Data.append(_:)();
  v28 = v27;
  v29 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v29)
    {
      outlined consume of Data._Representation(v25, v27);
      v25 = BYTE6(v27);
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (v29 != 2)
  {
    goto LABEL_28;
  }

  v31 = *(v25 + 16);
  v30 = *(v25 + 24);
  outlined consume of Data._Representation(v25, v28);
  v25 = v30 - v31;
  if (__OFSUB__(v30, v31))
  {
    __break(1u);
LABEL_24:
    outlined consume of Data._Representation(v25, v28);
    if (__OFSUB__(HIDWORD(v25), v25))
    {
      goto LABEL_33;
    }

    v25 = HIDWORD(v25) - v25;
  }

  if (v25 <= 0xFFFFFF)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_28:
  outlined consume of Data._Representation(v25, v28);
  v25 = 0;
LABEL_29:
  v32 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v25), v15);
  if (__OFADD__(v15, v32))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v25, v15 + v32);
  v33 = *MEMORY[0x1E69E9840];
  return v25 + 4;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v29 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  outlined init with copy of Any?(v3, &v29 - v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload < 2)
  {
LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    outlined init with copy of Any?(v3, v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 <= 1)
    {
      if (v25)
      {
        v26 = 0xEF74657263655365;
        v27 = 0x6B616873646E6168;
      }

      else
      {
        v26 = 0xEB00000000746572;
        v27 = 0x636553796C726165;
      }
    }

    else if (v25 == 2)
    {
      v26 = 0xEC00000074657263;
      v27 = 0x655372657473616DLL;
    }

    else
    {
      if (v25 != 3)
      {
        v26 = 0xE400000000000000;
        v27 = 1701602409;
LABEL_18:
        Logger.logInvalidStateTransition(stateName:event:)(v27, v26, 0xD000000000000013, 0x80000001B26CDDF0);

        v33 = xmmword_1B26C6450;
        v34 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        return 2;
      }

      v26 = 0xEA00000000007374;
      v27 = 0x65726365536C6C61;
    }

    outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_18;
  }

  outlined init with take of P256.Signing.PublicKey?(v20, v10, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  outlined init with copy of Any?(v10, v8, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v23 = v30;
  v22 = v31;
  outlined copy of Data._Representation(v30, v31);
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsV12masterSecret19clientFinishedBytesAHyx__GAF06MasterQ0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5(v8, v23, v22, v32, v18);
  outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  outlined assign with take of PartialHandshakeResult?(v18, v3, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsV12masterSecret19clientFinishedBytesAHyx__GAF06MasterQ0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a3;
  v45 = a4;
  v46 = a2;
  v7 = type metadata accessor for SHA384Digest();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA384();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v15 = v14[12];
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(*(v16 - 8) + 16);
  v17(a5, a1 + v15, v16);
  v18 = v14[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v17(a5 + v19[9], a1 + v18, v16);
  v20 = v14[14];
  v21 = v19[10];
  v41 = a5;
  v17(a5 + v21, a1 + v20, v16);
  v22 = v44;
  v23 = *(v47 + 16);
  v39 = a1;
  v23(v13, a1, v10);
  v24 = v22;
  v25 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    v26 = 0;
    result = v45;
    if (v25 == 2)
    {
      v26 = *(v46 + 24);
    }
  }

  else if (v25)
  {
    result = v45;
    v26 = v46 >> 32;
  }

  else
  {
    v26 = BYTE6(v22);
    result = v45;
  }

  if (v26 < result)
  {
    __break(1u);
  }

  else
  {
    v28 = v40;
    v29 = v46;
    v30 = Data._Representation.subscript.getter();
    v32 = v31;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v30, v31);
    outlined consume of Data._Representation(v30, v32);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
    dispatch thunk of HashFunction.finalize()();
    v33 = v14[9];
    v34 = v19[11];
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
    v35 = v43;
    v36 = dispatch thunk of static Digest.byteCount.getter();
    v37 = v41 + v34;
    v38 = v39;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkA0Q6DigestVTt4g5(0x7473616D20736572, 0xEA00000000007265, v36, v37);
    outlined consume of Data._Representation(v29, v24);
    outlined destroy of P256.Signing.PrivateKey?(v38, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    (*(v42 + 8))(v28, v35);
    return (*(v47 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1B2625FF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for P256.Signing.PublicKey();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t specialized ClientSessionKeyManager.clientApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  outlined init with copy of Any?(v2, &v24 - v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with take of P256.Signing.PublicKey?(v15, v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      v17 = type metadata accessor for SymmetricKey();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v7, v17);
      outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      return (*(v18 + 56))(a1, 0, 1, v17);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    v20 = type metadata accessor for SymmetricKey();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  outlined init with take of P256.Signing.PublicKey?(v15, v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v21 = *(v8 + 48);
  v22 = type metadata accessor for SymmetricKey();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a1, &v11[v21], v22);
  outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  return (*(v23 + 56))(a1, 0, 1, v22);
}

uint64_t specialized ClientSessionKeyManager.serverApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  outlined init with copy of Any?(v2, &v25 - v14, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with take of P256.Signing.PublicKey?(v15, v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      v17 = *(v4 + 36);
      v18 = type metadata accessor for SymmetricKey();
      v19 = *(v18 - 8);
      (*(v19 + 16))(a1, &v7[v17], v18);
      outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      return (*(v19 + 56))(a1, 0, 1, v18);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    v21 = type metadata accessor for SymmetricKey();
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }

  outlined init with take of P256.Signing.PublicKey?(v15, v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v22 = *(v8 + 52);
  v23 = type metadata accessor for SymmetricKey();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a1, &v11[v22], v23);
  outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  return (*(v24 + 56))(a1, 0, 1, v23);
}

uint64_t nwswifttls_complete_handshake(void *a1, int a2)
{
  v3 = a1;
  if (v3)
  {
    v8 = v3;
    if (a2)
    {
      v3[287] = 1;
      nwswifttls_allow_exported_authenticators(v3);
      v4 = *(v8 + 7);
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 40);
          if (v6)
          {
            v6();
          }
        }
      }
    }

    else
    {
      nwswifttls_send_error(v3, 4294957438);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void nwswifttls_allow_exported_authenticators(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && v1[10])
  {
    v3 = v1;
    nw_protocol_metadata_access_handle();
  }
}

BOOL __nwswifttls_allow_exported_authenticators_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 360))
  {
    v2 = *(a1 + 32);
    *(a2 + 352) = nwswifttls_copy_copy_authenticator_trust;
    *(a2 + 360) = v2;
  }

  return a2 != 0;
}

uint64_t nwswifttls_copy_serialized_session(uint64_t a1)
{
  if (!a1 || (*(a1 + 304) & 1) != 0)
  {
    return 0;
  }

  v2 = [*(a1 + 296) getSessionState];
  v3 = v2;
  if (v2)
  {
    v1 = [v2 _createDispatchData];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

NSData_optional __swiftcall STLSClientHandshaker.getSessionState()()
{
  v1 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    swift_beginAccess();
    v4 = v3[4];
    v5 = v3[5];
    outlined copy of Data._Representation(v4, v5);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v4, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  isa = v6.super.isa;
  result.value.super.isa = isa;
  result.is_nil = v2;
  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void __nwswifttls_identifier_block_invoke()
{
  qword_1ED4D6138 = 0;
  g_nwswifttls_identifier = 0u;
  unk_1ED4D6128 = 0u;
  g_nwswifttls_callbacks = 0u;
  *algn_1ED4D6150 = 0u;
  xmmword_1ED4D6160 = 0u;
  unk_1ED4D6170 = 0u;
  xmmword_1ED4D6180 = 0u;
  *&qword_1ED4D6190 = 0u;
  xmmword_1ED4D61A0 = 0u;
  unk_1ED4D61B0 = 0u;
  xmmword_1ED4D61C0 = 0u;
  unk_1ED4D61D0 = 0u;
  xmmword_1ED4D61E0 = 0u;
  *&qword_1ED4D61F0 = 0u;
  xmmword_1ED4D6200 = 0u;
  unk_1ED4D6210 = 0u;
  xmmword_1ED4D6220 = 0u;
  unk_1ED4D6230 = 0u;
  xmmword_1ED4D6240 = 0u;
  __strlcpy_chk();
  qword_1ED4D6138 = 0x100000004;
  nw_protocol_set_default_one_to_one_callbacks();
  *&g_nwswifttls_callbacks = nwswifttls_add_input_handler;
  *(&g_nwswifttls_callbacks + 1) = nwswifttls_remove_input_handler;
  *&xmmword_1ED4D6180 = nwswifttls_input_available;
  qword_1ED4D6190 = nwswifttls_get_input_frames;
  *&xmmword_1ED4D6160 = nwswifttls_disconnect;
  *(&xmmword_1ED4D6160 + 1) = nwswifttls_connected;
  *&xmmword_1ED4D6220 = nwswifttls_copy_info;
  qword_1ED4D61F0 = nwswifttls_supports_external_data;
  nw_protocol_register();

  nwswifttls_log_open();
}

void nwswifttls_log_open()
{
  if (nwswifttls_log_open_onceToken != -1)
  {
    nwswifttls_log_open_cold_1();
  }
}

void __nwswifttls_log_open_block_invoke()
{
  v0 = os_log_create("com.apple.security.swifttls", "nwswifttls");
  v1 = g_nwswifttls_log;
  g_nwswifttls_log = v0;

  if (nwswifttls_logging_register_debug_log_updates_onceToken != -1)
  {
    __nwswifttls_log_open_block_invoke_cold_1();
  }
}

uint64_t __nwswifttls_logging_register_debug_log_updates_block_invoke()
{
  result = network_config_register_swift_tls_log_debug_updates();
  datapath_logging_enabled = result;
  return result;
}

uint64_t __nwswifttlsrecord_copy_definition_block_invoke()
{
  if (nwswifttlsrecord_identifier_onceToken != -1)
  {
    __nwswifttlsrecord_copy_definition_block_invoke_cold_1();
  }

  v0 = nw_protocol_definition_create_with_identifier();
  v1 = nwswifttlsrecord_copy_definition_definition;
  nwswifttlsrecord_copy_definition_definition = v0;

  nw_protocol_definition_set_options_allocator();
  nw_protocol_definition_set_options_equality_check();
  nw_protocol_definition_set_options_comparator();
  v2 = nwswifttlsrecord_copy_definition_definition;

  return MEMORY[0x1EEDD42F0](v2, nwswifttlsrecord_allocate_metadata, nwswifttlsrecord_deallocate_metadata);
}

void __nwswifttlsrecord_identifier_block_invoke()
{
  qword_1ED4D60E8 = 0;
  g_nwswifttlsrecord_identifier = 0u;
  unk_1ED4D60D8 = 0u;
  __strlcpy_chk();
  qword_1ED4D60E8 = 0x100000004;
  g_nwswifttlsrecord_callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_set_default_one_to_one_callbacks();
  nw_protocol_callbacks_set_add_input_handler();
  nw_protocol_callbacks_set_replace_input_handler();
  nw_protocol_callbacks_set_remove_input_handler();
  nw_protocol_callbacks_set_connected();
  nw_protocol_callbacks_set_disconnect();
  nw_protocol_callbacks_set_input_available();
  nw_protocol_callbacks_set_output_available();
  nw_protocol_callbacks_set_get_input_frames();
  nw_protocol_callbacks_set_get_output_frames();
  nw_protocol_callbacks_set_input_finished();
  nw_protocol_callbacks_set_output_finished();
  nw_protocol_callbacks_set_finalize_output_frames();
  nw_protocol_callbacks_set_copy_info();
  nw_protocol_callbacks_set_error();
  nw_protocol_callbacks_set_reset();
  nw_protocol_callbacks_set_supports_external_data();
  nw_protocol_register_extended();

  nwswifttls_log_open();
}

uint64_t type metadata accessor for STLSClientHandshaker()
{
  result = type metadata singleton initialization cache for STLSClientHandshaker;
  if (!type metadata singleton initialization cache for STLSClientHandshaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for HandshakeStateMachine?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for STLSClientHandshaker()
{
  type metadata accessor for HandshakeStateMachine?(319, &lazy cache variable for type metadata for HandshakeStateMachine?, type metadata accessor for HandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for HandshakeStateMachine?(319, &lazy cache variable for type metadata for PartialHandshakeResult?, type metadata accessor for PartialHandshakeResult);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for HandshakeStateMachine?(319, &lazy cache variable for type metadata for EncryptionLevel?, type metadata accessor for EncryptionLevel);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t type metadata completion function for HandshakeStateMachine()
{
  result = type metadata accessor for HandshakeState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SwiftTLSClock();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for HandshakeState()
{
  result = type metadata accessor for HandshakeState.IdleState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HandshakeState.ClientHelloState(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for HandshakeState.ServerHelloState(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for HandshakeState.EncryptedExtensionsState(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for HandshakeState.ServerCertificateState(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for HandshakeState.ServerCertificateVerifyState(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for HandshakeState.ReadyState(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void type metadata accessor for SessionTicket?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for HandshakeState.IdleState()
{
  type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for SessionTicket?, type metadata accessor for SessionTicket, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for [GeneralEPSK], type metadata accessor for GeneralEPSK, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for SessionTicket()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymmetricKey();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PeerCertificateBundle(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata completion function for PeerCertificateBundle()
{
  result = type metadata accessor for PeerCertificateBundle.Bundle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PeerCertificateBundle.Bundle()
{
  v0 = type metadata accessor for P256.Signing.PublicKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void type metadata accessor for ClientSessionKeyManager<SHA384>()
{
  if (!lazy cache variable for type metadata for ClientSessionKeyManager<SHA384>)
  {
    type metadata accessor for SHA384();
    _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
    v0 = type metadata accessor for ClientSessionKeyManager();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClientSessionKeyManager<SHA384>);
    }
  }
}

uint64_t type metadata completion function for ClientSessionKeyManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for SessionKeyManager.State.EarlySecret();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for SessionKeyManager.State.MasterSecret();
      if (v6 <= 0x3F)
      {
        result = type metadata accessor for SessionKeyManager.State.AllSecrets();
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.EarlySecret(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for SymmetricKey();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.HandshakeSecret(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for SymmetricKey();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.MasterSecret(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for SymmetricKey();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SessionKeyManager.State.AllSecrets()
{
  result = type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for GeneralEPSK()
{
  result = type metadata accessor for PSK(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PSK()
{
  result = type metadata accessor for ImportedPSK(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawEPSK(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ImportedPSK()
{
  return type metadata completion function for ImportedPSK();
}

{
  result = type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PAKEClientState()
{
  type metadata accessor for SymmetricKey?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SPAKE2.Prover();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SymmetricKey?()
{
  if (!lazy cache variable for type metadata for SymmetricKey?)
  {
    type metadata accessor for SymmetricKey();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SymmetricKey?);
    }
  }
}

void type metadata completion function for HandshakeState.ClientHelloState()
{
  type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for [CipherSuite], &type metadata for CipherSuite, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [CipherSuite](319, &lazy cache variable for type metadata for [CertificateType], &type metadata for CertificateType, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for GeneratedEphemeralPrivateKey?, type metadata accessor for GeneratedEphemeralPrivateKey, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ClientSessionKeyManager<SHA384>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for SessionTicket?, type metadata accessor for SessionTicket, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for [GeneralEPSK], type metadata accessor for GeneralEPSK, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for SessionTicket?(319, &lazy cache variable for type metadata for PAKEClientState?, type metadata accessor for PAKEClientState, MEMORY[0x1E69E6720]);
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