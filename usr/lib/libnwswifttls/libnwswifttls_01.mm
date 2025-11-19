uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v128 = a6;
  LODWORD(v135) = a5;
  v140 = a4;
  v149 = a3;
  v138 = a2;
  v124 = type metadata accessor for RawEPSK(0);
  v7 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v130 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ImportedPSK(0);
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for SessionTicket();
  v154 = *(v141 - 8);
  v11 = *(v154 + 8);
  MEMORY[0x1EEE9AC00](v141);
  v127 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for SHA384();
  v148 = *(v152 - 8);
  v13 = *(v148 + 64);
  v14 = MEMORY[0x1EEE9AC00](v152);
  v142 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v122 - v16;
  v17 = type metadata accessor for SHA384Digest();
  v153 = *(v17 - 8);
  v18 = *(v153 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v151 = &v122 - v22;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v136 = *(v137 - 8);
  v23 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v146 = &v122 - v24;
  v25 = type metadata accessor for PSK(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for GeneralEPSK(0);
  v129 = *(v29 - 8);
  v30 = *(v129 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v125 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v122 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v39 = &v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v122 - v40;
  v42 = type metadata accessor for SymmetricKey();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v150 = &v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v143 = &v122 - v47;
  v48 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  v145 = v17;
  v144 = v48;
  result = dispatch thunk of static Digest.byteCount.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v134 = a1;
  v133 = v21;
  if (result)
  {
    v50 = result;
    v51 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v51 + 16) = v50;
    bzero((v51 + 32), v50);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v52 = *(v140 + 16);
  v53 = *(v154 + 6);
  v54 = v141;
  v154 = (v154 + 48);
  v139 = v53;
  v55 = v53(v149, 1, v141);
  v132 = v42;
  v131 = v43;
  v126 = v52;
  if (v52)
  {
    if (v55 == 1)
    {
      outlined init with copy of SessionTicket(v140 + ((*(v129 + 80) + 32) & ~*(v129 + 80)), v34, type metadata accessor for GeneralEPSK);
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v34, v28, type metadata accessor for PSK);
      v56 = (v43 + 16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v28;
        v58 = v130;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v57, v130, type metadata accessor for RawEPSK);
        v59 = &v58[*(v124 + 20)];
        (*v56)();
        v60 = type metadata accessor for RawEPSK;
      }

      else
      {
        v63 = v28;
        v58 = v123;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v63, v123, type metadata accessor for ImportedPSK);
        v64 = &v58[*(v122 + 20)];
        (*v56)();
        v60 = type metadata accessor for ImportedPSK;
      }

      outlined destroy of SessionTicket(v58, v60);
      if (v135)
      {
        v61 = 0x646E696220747865;
      }

      else
      {
        v61 = 0x646E696220706D69;
      }

      v62 = v141;
LABEL_18:
      *&v157 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v65 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v66 = v152;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();
      v67 = v147;
      dispatch thunk of HashFunction.init()();
      v68 = v151;
      v135 = v65;
      dispatch thunk of HashFunction.finalize()();
      v130 = *(v148 + 8);
      (v130)(v67, v66);
      v69 = v145;
      v70 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(v61, 0xEA00000000007265, v70, v150);
      v71 = v153 + 8;
      v72 = *(v153 + 8);
      v72(v68, v69);
      outlined init with copy of Any?(v149, v39, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v73 = v139(v39, 1, v62);
      v153 = v71;
      if (v73 == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v39, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);

        if (!v126)
        {
          v155 = xmmword_1B26C6130;
          v156 = 0;
          v119 = v138[5];
          v161 = v138[4];
          v162 = v119;
          v163 = *(v138 + 12);
          v120 = v138[1];
          v157 = *v138;
          v158 = v120;
          v121 = v138[3];
          v159 = v138[2];
          v160 = v121;
          specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
          v83 = 0;
LABEL_26:
          result = dispatch thunk of HashFunction.init()();
          v97 = *(&v155 + 1) >> 62;
          if ((*(&v155 + 1) >> 62) > 1)
          {
            if (v97 == 2)
            {
              v98 = *(v155 + 24);
            }

            else
            {
              v98 = 0;
            }
          }

          else if (v97)
          {
            v98 = v155 >> 32;
          }

          else
          {
            v98 = BYTE14(v155);
          }

          if (v98 >= v83)
          {
            v99 = Data._Representation.subscript.getter();
            v101 = v100;
            specialized Data._Representation.withUnsafeBytes<A>(_:)(v99, v100);
            outlined consume of Data._Representation(v99, v101);
            v154 = v72;
            v102 = v152;
            dispatch thunk of HashFunction.finalize()();
            v103 = v145;
            v104 = dispatch thunk of static Digest.byteCount.getter();
            v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
            v106 = *(v105 + 44);
            v107 = v105;
            v149 = v105;
            v108 = v134;
            v109 = v146;
            _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6661727420652063, 0xEB00000000636966, v104, v134 + v106);
            v110 = dispatch thunk of static Digest.byteCount.getter();
            _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x616D207078652065, 0xEC00000072657473, v110, v108 + *(v107 + 48));
            v111 = v147;
            dispatch thunk of HashFunction.init()();
            v112 = v133;
            dispatch thunk of HashFunction.finalize()();
            (v130)(v111, v102);
            v113 = dispatch thunk of static Digest.byteCount.getter();
            v114 = v149;
            _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v113, v108 + *(v149 + 36));
            v115 = v154;
            v154(v112, v103);
            v115(v151, v103);
            (*(v136 + 8))(v109, v137);
            v116 = v131;
            v117 = v132;
            (*(v131 + 8))(v143, v132);
            (*(v148 + 32))(v108, v142, v102);
            (*(v116 + 32))(v108 + *(v114 + 40), v150, v117);
            v118 = v155;
            outlined copy of Data._Representation(v155, *(&v155 + 1));
            outlined consume of Data._Representation(v118, *(&v118 + 1));
            return v118;
          }

          goto LABEL_37;
        }

        v74 = v125;
        outlined init with copy of SessionTicket(v140 + ((*(v129 + 80) + 32) & ~*(v129 + 80)), v125, type metadata accessor for GeneralEPSK);
        v75 = GeneralEPSK.identity.getter();
        v77 = v76;
        v79 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV25calculateFinalClientHello06binderO006clientS019obfuscatedTicketAge8identityAA10ByteBufferV9CryptoKit09SymmetricD0V_AA0rS0Vzs6UInt32VAA9ExtensionO09PreSharedD0O11OfferedPSKsV11PSKIdentityVtFZAP6SHA384V_Tt3g5Tf4nndn_n(v150, v138, v75, v76, v78, 0);
        v81 = v80;
        v83 = v82;
        outlined consume of Data._Representation(v75, v77);
        v84 = type metadata accessor for GeneralEPSK;
        v85 = v74;
      }

      else
      {

        v86 = v127;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v39, v127, type metadata accessor for SessionTicket);
        result = Date.timeIntervalSince(_:)();
        v88 = v87 * 1000.0;
        if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v88 <= -1.0)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v88 >= 4294967300.0)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v89 = v88;
        v90 = *(v86 + *(v141 + 24));
        v91 = (v86 + *(v141 + 32));
        v92 = *v91;
        v93 = v91[1];
        v94 = v91[2];
        outlined copy of Data._Representation(*v91, v93);
        v79 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV25calculateFinalClientHello06binderO006clientS019obfuscatedTicketAge8identityAA10ByteBufferV9CryptoKit09SymmetricD0V_AA0rS0Vzs6UInt32VAA9ExtensionO09PreSharedD0O11OfferedPSKsV11PSKIdentityVtFZAP6SHA384V_Tt3g5Tf4nndn_n(v150, v138, v92, v93, v94, v90 + v89);
        v81 = v95;
        v83 = v96;
        outlined consume of Data._Representation(v92, v93);
        v84 = type metadata accessor for SessionTicket;
        v85 = v86;
      }

      outlined destroy of SessionTicket(v85, v84);
      *&v155 = v79;
      *(&v155 + 1) = v81;
      v156 = v83;
      goto LABEL_26;
    }
  }

  else if (v55 == 1)
  {
    v61 = 0x646E696220736572;
    *&v157 = v51;

    v62 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    SymmetricKey.init<A>(data:)();
    goto LABEL_18;
  }

  outlined init with copy of Any?(v149, v41, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  result = v139(v41, 1, v54);
  if (result != 1)
  {
    v61 = 0x646E696220736572;
    (*(v43 + 16))(v143, &v41[*(v54 + 36)], v42);
    outlined destroy of SessionTicket(v41, type metadata accessor for SessionTicket);
    v62 = v54;
    goto LABEL_18;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5@<X0>(Swift::Int a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X4>, unint64_t a4@<X8>)
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

  a4 = *(v4 + 2);
  v14 = *(v4 + 3);
  v6 = a4 + 1;

  if (a4 >= v14 >> 1)
  {
LABEL_21:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v6, 1, v4);
  }

  *(v4 + 2) = v6;
  v4[a4 + 32] = v5;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v16 = specialized Array.append<A>(contentsOf:)(a1, a2);
  MEMORY[0x1EEE9AC00](v16);
  type metadata accessor for SHA384Digest();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  type metadata accessor for SHA384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

int64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)()
{
  v26 = *MEMORY[0x1E69E9840];
  LOBYTE(v21) = 1;
  v1 = MEMORY[0x1E69E6290];
  v2 = MEMORY[0x1E6969DF8];
  v24 = MEMORY[0x1E69E6290];
  v25 = MEMORY[0x1E6969DF8];
  v22 = &v21;
  v23 = (&v21 + 1);
  v3 = __swift_project_boxed_opaque_existential_0(&v22, MEMORY[0x1E69E6290]);
  v5 = *v3;
  v4 = v3[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v6 = *v0;
  v7 = v0[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = v6 >> 32;
  }

  else
  {
    v9 = BYTE6(v7);
  }

  LOBYTE(v21) = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = (&v21 + 1);
  v10 = __swift_project_boxed_opaque_existential_0(&v22, v1);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v21 = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = &v22;
  v13 = __swift_project_boxed_opaque_existential_0(&v22, v1);
  v15 = *v13;
  v14 = v13[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v16 = ClientHello.write(into:)(v0);
  if (v16 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v17 = v16;
  v18 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v16), v9);
  if (__OFADD__(v9, v18))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v17, v9 + v18);
  v19 = *MEMORY[0x1E69E9840];
  return v17 + 4;
}

{
  v26 = *MEMORY[0x1E69E9840];
  LOBYTE(v21) = 2;
  v1 = MEMORY[0x1E69E6290];
  v2 = MEMORY[0x1E6969DF8];
  v24 = MEMORY[0x1E69E6290];
  v25 = MEMORY[0x1E6969DF8];
  v22 = &v21;
  v23 = (&v21 + 1);
  v3 = __swift_project_boxed_opaque_existential_0(&v22, MEMORY[0x1E69E6290]);
  v5 = *v3;
  v4 = v3[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v6 = *v0;
  v7 = v0[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = v6 >> 32;
  }

  else
  {
    v9 = BYTE6(v7);
  }

  LOBYTE(v21) = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = (&v21 + 1);
  v10 = __swift_project_boxed_opaque_existential_0(&v22, v1);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v21 = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = &v22;
  v13 = __swift_project_boxed_opaque_existential_0(&v22, v1);
  v15 = *v13;
  v14 = v13[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v16 = ServerHello.write(into:)(v0);
  if (v16 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v17 = v16;
  v18 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v16), v9);
  if (__OFADD__(v9, v18))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v17, v9 + v18);
  v19 = *MEMORY[0x1E69E9840];
  return v17 + 4;
}

unint64_t ClientHello.write(into:)(uint64_t *a1)
{
  v2 = v1;
  v71 = *MEMORY[0x1E69E9840];
  LOWORD(v65) = *v2;
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  *(&v69 + 1) = MEMORY[0x1E69E6290];
  v70 = MEMORY[0x1E6969DF8];
  *&v68 = &v65;
  *(&v68 + 1) = &v65 + 2;
  v6 = __swift_project_boxed_opaque_existential_0(&v68, MEMORY[0x1E69E6290]);
  v8 = *v6;
  v7 = v6[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v68);
  v9 = *(v2 + 24);
  v65 = *(v2 + 8);
  v66 = v9;
  *(&v69 + 1) = v4;
  v70 = v5;
  *&v68 = &v65;
  *(&v68 + 1) = &v67;
  v10 = __swift_project_boxed_opaque_existential_0(&v68, v4);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v68);
  v13 = *(v2 + 56);
  v68 = *(v2 + 40);
  v69 = v13;
  v70 = *(v2 + 72);
  v14 = ByteBuffer.writeLegacySessionID(_:)(&v68);
  v15 = v14 + 34;
  if (__OFADD__(v14, 34))
  {
    goto LABEL_42;
  }

  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v16 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v16 >> 32;
  }

  else
  {
    v19 = BYTE6(v17);
  }

  v64 = 0;
  *(&v66 + 1) = v4;
  v67 = v5;
  *&v65 = &v64;
  *(&v65 + 1) = &v65;
  v20 = __swift_project_boxed_opaque_existential_0(&v65, v4);
  v22 = *v20;
  v21 = v20[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v65);
  v23 = *(v2 + 80);
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  v62 = v19;
  v25 = 0;
  v26 = v23 + 32;
  do
  {
    v64 = bswap32(*(v26 + v25)) >> 16;
    *(&v66 + 1) = v4;
    v67 = v5;
    *&v65 = &v64;
    *(&v65 + 1) = &v65;
    v27 = __swift_project_boxed_opaque_existential_0(&v65, v4);
    v29 = *v27;
    v28 = v27[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v65);
    if (v25 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v25 += 2;
    --v24;
  }

  while (v24);
  v19 = v62;
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v25 >> 16)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v25, v19);
  v30 = v15 + v25 + 2;
  if (__OFADD__(v15, v25 + 2))
  {
    goto LABEL_44;
  }

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

  LOBYTE(v64) = 0;
  *(&v66 + 1) = v4;
  v67 = v5;
  *&v65 = &v64;
  *(&v65 + 1) = &v64 + 1;
  v35 = __swift_project_boxed_opaque_existential_0(&v65, v4);
  v37 = *v35;
  v36 = v35[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v65);
  v38 = *(v2 + 88);
  v39 = *(v38 + 16);
  if (v39)
  {
    v63 = v34;
    v40 = v30;
    v41 = 0;
    v42 = v38 + 32;
    do
    {
      v43 = *(v42 + v41++);
      LOBYTE(v64) = v43;
      *(&v66 + 1) = v4;
      v67 = v5;
      *&v65 = &v64;
      *(&v65 + 1) = &v64 + 1;
      v44 = __swift_project_boxed_opaque_existential_0(&v65, v4);
      v46 = *v44;
      v45 = v44[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v65);
    }

    while (v39 != v41);
    v30 = v40;
    v34 = v63;
    if (v39 > 0xFF)
    {
      goto LABEL_45;
    }
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v39, v34);
  v47 = __OFADD__(v30, v39 + 1);
  v48 = v30 + v39 + 1;
  if (v47)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v49 = *a1;
  v50 = a1[1];
  v51 = v50 >> 62;
  if ((v50 >> 62) > 1)
  {
    if (v51 == 2)
    {
      v54 = *(v49 + 24);
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v52 = BYTE6(v50);
    v53 = v49 >> 32;
    if (v51)
    {
      v54 = v53;
    }

    else
    {
      v54 = v52;
    }
  }

  v64 = 0;
  *(&v66 + 1) = v4;
  v67 = v5;
  *&v65 = &v64;
  *(&v65 + 1) = &v65;
  v55 = __swift_project_boxed_opaque_existential_0(&v65, v4);
  v57 = *v55;
  v56 = v55[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v65);
  v58 = specialized Sequence.reduce<A>(into:_:)(0, *(v2 + 96));
  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v59 = v58;
  if (v58 >> 16)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v58, v54);
  result = v48 + v59 + 2;
  if (__OFADD__(v48, v59 + 2))
  {
    goto LABEL_49;
  }

  v61 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ByteBuffer.writeLegacySessionID(_:)(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
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

  LOBYTE(v22[0]) = 0;
  v25 = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  v24[0] = v22;
  v24[1] = v22 + 1;
  v9 = __swift_project_boxed_opaque_existential_0(v24, MEMORY[0x1E69E6290]);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v24);
  v12 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v12;
  v13 = *(a1 + 32);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v13 >= 0x20)
  {
    v14 = 32;
  }

  else
  {
    v14 = *(a1 + 32);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v25 = v15;
  v26 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  v16 = swift_allocObject();
  v24[0] = v16;
  v16[2] = 0;
  v16[3] = v14;
  v16[4] = v22;
  v16[5] = v23;
  v17 = __swift_project_boxed_opaque_existential_0(v24, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = v18[1];
  v23[0] = *v18;
  v23[1] = v19;
  Slice<>.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v24);
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v14, v8);
  v20 = *MEMORY[0x1E69E9840];
  return v14 + 1;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 88;
    v6 = *(v3 + 32);
    v7 = *(v3 + 64);
    v13[3] = *(v3 + 48);
    v13[4] = v7;
    v14 = *(v3 + 80);
    v8 = *(v3 + 16);
    v13[0] = *v3;
    v13[1] = v8;
    v13[2] = v6;
    outlined init with copy of Extension(v13, v12);
    v9 = ByteBuffer.writeExtension(_:)(v13);
    outlined destroy of Extension(v13);
    v3 = v5;
    v10 = __OFADD__(a1, v9);
    a1 += v9;
    if (v10)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v3 - 2);
    v9 = *(v3 - 12);
    outlined copy of Data._Representation(v8, v7);
    v10 = ByteBuffer.writeKeyShareEntry(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v8, v7);
    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 8;
    v6 = *v3;
    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *(v3 - 3);
    outlined copy of Data._Representation(v9, v8);
    v10 = ByteBuffer.writePSKIdentity(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v9, v8);
    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 48);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 3;
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v3 - 2);
    outlined copy of Data._Representation(v8, v7);
    v9 = ByteBuffer.writePSKBinder(_:)(v8, v7, v6);
    outlined consume of Data._Representation(v8, v7);
    v3 = v5;
    v10 = __OFADD__(a1, v9);
    a1 += v9;
    if (v10)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v3 - 2);
    v9 = *(v3 - 12);
    outlined copy of Data._Representation(v8, v7);
    v10 = ByteBuffer.writePAKEShareRFC(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v8, v7);
    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v7 = *(v3 - 1);
    v6 = *v3;
    v9 = *(v3 - 3);
    v8 = *(v3 - 2);
    outlined copy of Data._Representation(v9, v8);

    v10 = ByteBuffer.writeCertificateEntry(_:)(v9, v8, v7, v6);
    outlined consume of Data._Representation(v9, v8);

    v3 = v5;
    v11 = __OFADD__(a1, v10);
    a1 += v10;
    if (v11)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

unint64_t ByteBuffer.writeSupportedGroups(_:)(uint64_t a1)
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

  v22 = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v25 = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  v23 = &v22;
  v24 = &v23;
  v11 = __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v14 = *(a1 + 16);
  if (!v14)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
  v16 = a1 + 32;
  do
  {
    v22 = bswap32(*(v16 + v15)) >> 16;
    v25 = v9;
    v26 = v10;
    v23 = &v22;
    v24 = &v23;
    v17 = __swift_project_boxed_opaque_existential_0(&v23, v9);
    v19 = *v17;
    v18 = v17[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v23);
    if (v15 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v15 += 2;
    --v14;
  }

  while (v14);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (v15 >> 16)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v15, v8);
  v20 = *MEMORY[0x1E69E9840];
  return v15 + 2;
}

uint64_t ByteBuffer.writeSupportedVersions(_:)(uint64_t a1, char a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v27 = a1;
    v30 = MEMORY[0x1E69E6290];
    v31 = MEMORY[0x1E6969DF8];
    v28 = &v27;
    v29 = &v28;
    v4 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
    v6 = *v4;
    v5 = v4[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v28);
    result = 2;
    goto LABEL_19;
  }

  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v13 = *(v8 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v9);
    v12 = v8 >> 32;
    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }
  }

  LOBYTE(v27) = 0;
  v14 = MEMORY[0x1E69E6290];
  v15 = MEMORY[0x1E6969DF8];
  v30 = MEMORY[0x1E69E6290];
  v31 = MEMORY[0x1E6969DF8];
  v28 = &v27;
  v29 = (&v27 + 1);
  v16 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
  v18 = *v16;
  v17 = v16[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v20 = 0;
  v21 = a1 + 33;
  do
  {
    v27 = *(v21 - 1);
    v30 = v14;
    v31 = v15;
    v28 = &v27;
    v29 = &v28;
    v22 = __swift_project_boxed_opaque_existential_0(&v28, v14);
    v24 = *v22;
    v23 = v22[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v28);
    if (v20 == 0x8000000000000002)
    {
      __break(1u);
LABEL_21:
      __break(1u);
    }

    v21 += 2;
    v20 -= 2;
    --v19;
  }

  while (v19);
  v25 = -v20;
  if (v20 > 0)
  {
    goto LABEL_21;
  }

  if (v25 > 0xFF)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v25, v13);
  result = v25 + 1;
LABEL_19:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v364 = a1;
  v3 = v2;
  v331 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v327 = &v317 - v6;
  v329 = type metadata accessor for SymmetricKey();
  v7 = *(v329 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v329);
  v326 = &v317 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v321 = &v317 - v12;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = *(*(v334 - 8) + 64);
  MEMORY[0x1EEE9AC00](v334);
  v333 = &v317 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v348 = &v317 - v17;
  v323 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v18 = *(*(v323 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v323);
  v322 = &v317 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v324 = &v317 - v21;
  v325 = type metadata accessor for PartialHandshakeResult(0);
  v22 = *(*(v325 - 8) + 64);
  MEMORY[0x1EEE9AC00](v325);
  v24 = &v317 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for SessionTicket();
  v355 = *(v362 - 8);
  v25 = *(v355 + 64);
  v26 = MEMORY[0x1EEE9AC00](v362);
  v318 = &v317 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v332 = &v317 - v28;
  v29 = type metadata accessor for Date();
  v342 = *(v29 - 8);
  v343 = v29;
  v30 = *(v342 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v317 = &v317 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v356 = &v317 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v320 = &v317 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v337 = &v317 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v336 = &v317 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v349 = &v317 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v346 = &v317 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v319 = &v317 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v353 = &v317 - v49;
  v50 = type metadata accessor for PAKEClientState(0);
  v357 = *(v50 - 8);
  v358 = v50;
  v51 = *(v357 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v345 = &v317 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v340 = &v317 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v341 = &v317 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v339 = &v317 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v351 = &v317 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x1EEE9AC00](v63 - 8);
  v352 = &v317 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v350 = &v317 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v354 = &v317 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v369 = &v317 - v71;
  v361 = type metadata accessor for HandshakeState.IdleState(0);
  v72 = *(*(v361 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v361);
  v347 = &v317 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v368 = &v317 - v75;
  v76 = type metadata accessor for HandshakeState(0);
  v77 = *(*(v76 - 8) + 64);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v338 = &v317 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v367 = (&v317 - v81);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v317 - v82;
  v373._rawValue = type metadata accessor for HandshakeStateMachine(0);
  v371 = *(v373._rawValue + 6);
  outlined init with copy of SessionTicket(v3 + v371, v83, type metadata accessor for HandshakeState);
  v372 = v76;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v90 = 1701602409;
    v91 = 0x6548746E65696C63;
    if (EnumCaseMultiPayload != 1)
    {
      v91 = 0x6548726576726573;
    }

    if (EnumCaseMultiPayload)
    {
      v90 = v91;
    }

    *&v363 = v90;
    if (EnumCaseMultiPayload)
    {
      v89 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v89 = 0xE400000000000000;
    }
  }

  else
  {
    v85 = 0x80000001B26CD890;
    v86 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 5)
    {
      v86 = 0x726F467964616572;
      v85 = 0xEC00000061746144;
    }

    v87 = 0x80000001B26CD8D0;
    v88 = 0xD000000000000019;
    if (EnumCaseMultiPayload != 3)
    {
      v88 = 0xD000000000000011;
      v87 = 0x80000001B26CD8B0;
    }

    if (EnumCaseMultiPayload > 4)
    {
      v88 = v86;
    }

    *&v363 = v88;
    if (EnumCaseMultiPayload <= 4)
    {
      v89 = v87;
    }

    else
    {
      v89 = v85;
    }
  }

  *&v370 = v54;
  outlined destroy of SessionTicket(v83, type metadata accessor for HandshakeState);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  v93 = __swift_project_value_buffer(v92, logger);

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();

  v96 = os_log_type_enabled(v94, v95);
  v330 = v24;
  v328 = v7;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v388[0] = v98;
    *v97 = 136315138;
    *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v363, v89, v388);
    _os_log_impl(&dword_1B25F5000, v94, v95, "startHandshake in state %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x1B274ECF0](v98, -1, -1);
    MEMORY[0x1B274ECF0](v97, -1, -1);
  }

  v99 = *(v373._rawValue + 9);
  v404 = v3;
  v100 = v3 + v99;
  v101 = *(v100 + 60);
  v335 = v100;
  v102 = *(v100 + 62);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.info.getter();
  v105 = os_log_type_enabled(v103, v104);
  LODWORD(v360) = v102;
  v365 = v93;
  v366 = v53;
  LODWORD(v344) = v101;
  if ((v102 & 1) != 0 || v101 != 4588)
  {
    if (!v105)
    {
      goto LABEL_32;
    }

    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v388[0] = v113;
    *v112 = 136315138;
    if (v360)
    {
      v114 = 0xE400000000000000;
      v115 = 1701736302;
    }

    else
    {
      v115 = NamedGroup.description.getter(v101);
      v114 = v116;
    }

    v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v114, v388);

    *(v112 + 4) = v117;
    _os_log_impl(&dword_1B25F5000, v103, v104, "starting handshake with group %s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x1B274ECF0](v113, -1, -1);
    v111 = v112;
  }

  else
  {
    if (!v105)
    {
      goto LABEL_32;
    }

    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v388[0] = v107;
    *v106 = 136315138;
    v108 = NamedGroup.description.getter(0x11ECu);
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v388);

    *(v106 + 4) = v110;
    _os_log_impl(&dword_1B25F5000, v103, v104, "starting handshake with group %s (PQ-TLS)", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x1B274ECF0](v107, -1, -1);
    v111 = v106;
  }

  MEMORY[0x1B274ECF0](v111, -1, -1);
LABEL_32:

  v118 = v367;
  outlined init with copy of SessionTicket(v404 + v371, v367, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of SessionTicket(v118, type metadata accessor for HandshakeState);

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v388[0] = v122;
      *v121 = 136315138;
      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v363, v89, v388);

      *(v121 + 4) = v123;
      _os_log_impl(&dword_1B25F5000, v119, v120, "invalid state for startHandshake: %s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x1B274ECF0](v122, -1, -1);
      MEMORY[0x1B274ECF0](v121, -1, -1);
    }

    else
    {
    }

    v388[0] = xmmword_1B26C6450;
    v131 = 2;
    LOBYTE(v388[1]) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    goto LABEL_41;
  }

  v124 = v368;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v118, v368, type metadata accessor for HandshakeState.IdleState);
  v126 = v369;
  v125 = v370;
  v127 = v370 + 56;
  v128 = v366;
  v367 = *(v370 + 56);
  (v367)(v369, 1, 1, v366);
  if ((v360 & 1) == 0)
  {
    v129 = v344;
    if (v344 == 29)
    {
      v130 = v354;
      Curve25519.KeyAgreement.PrivateKey.init()();
    }

    else
    {
      v130 = v354;
      if (v344 == 24)
      {
        P384.KeyAgreement.PrivateKey.init()();
      }

      else
      {
        if (v344 != 4588)
        {
          v136 = Logger.logObject.getter();
          v137 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            v139 = v129;
            v140 = v138;
            *v138 = 33554688;
            *(v138 + 4) = v139;
            _os_log_impl(&dword_1B25F5000, v136, v137, "unknown fixedGroup: %hu", v138, 6u);
            MEMORY[0x1B274ECF0](v140, -1, -1);
          }

          v388[0] = xmmword_1B26C6450;
          v131 = 2;
          LOBYTE(v388[1]) = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined destroy of P256.Signing.PrivateKey?(v126, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          result = outlined destroy of SessionTicket(v124, type metadata accessor for HandshakeState.IdleState);
          goto LABEL_41;
        }

        X25519MLKEM768EphemeralKey.init()(v354);
      }
    }

    outlined destroy of P256.Signing.PrivateKey?(v126, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v128 = v366;
    swift_storeEnumTagMultiPayload();
    (v367)(v130, 0, 1, v128);
    outlined init with take of P256.Signing.PublicKey?(v130, v126, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v125 = v370;
  }

  v344 = v127;
  v141 = v350;
  outlined init with copy of Any?(v126, v350, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v142 = *(v125 + 48);
  *&v370 = v125 + 48;
  if (v142(v141, 1, v128) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v141, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v143 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v144 = v141;
    v145 = v351;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v144, v351, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMR);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_1B26C6030;
    v147 = v339;
    outlined init with copy of SessionTicket(v145, v339, type metadata accessor for GeneratedEphemeralPrivateKey);
    v148 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
    outlined destroy of SessionTicket(v147, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v146 + 32) = v148;
    v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v150 = *(v143 + 2);
    v149 = *(v143 + 3);
    if (v150 >= v149 >> 1)
    {
      v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v143);
    }

    outlined destroy of SessionTicket(v351, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v143 + 2) = v150 + 1;
    v151 = &v143[88 * v150];
    *(v151 + 4) = v146;
    v151[112] = 16;
    v124 = v368;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v143 + 2) + 1, 1, v143);
  }

  v153 = *(v143 + 2);
  v152 = *(v143 + 3);
  if (v153 >= v152 >> 1)
  {
    v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v143);
  }

  v391 = 0;
  *(v143 + 2) = v153 + 1;
  v154 = &v143[88 * v153];
  *(v154 + 4) = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv_r;
  v154[40] = v391;
  v154[112] = 32;
  v392 = v143;
  v155 = v352;
  outlined init with copy of Any?(v369, v352, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (v142(v155, 1, v366) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v155, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v156 = v404;
  }

  else
  {
    v157 = v341;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v155, v341, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMR);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_1B26C6030;
    v159 = v340;
    outlined init with copy of SessionTicket(v157, v340, type metadata accessor for GeneratedEphemeralPrivateKey);
    v160 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
    outlined destroy of SessionTicket(v159, type metadata accessor for GeneratedEphemeralPrivateKey);
    v161 = GeneratedEphemeralPrivateKey.publicKeyData.getter();
    v163 = 0;
    v164 = v162 >> 62;
    if ((v162 >> 62) > 1)
    {
      if (v164 == 2)
      {
        v163 = *(v161 + 16);
      }
    }

    else if (v164)
    {
      v163 = v161;
    }

    *(v158 + 32) = v160;
    *(v158 + 40) = v161;
    *(v158 + 48) = v162;
    *(v158 + 56) = v163;
    v166 = *(v143 + 2);
    v165 = *(v143 + 3);
    v156 = v404;
    if (v166 >= v165 >> 1)
    {
      v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v143);
    }

    outlined destroy of SessionTicket(v157, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v143 + 2) = v166 + 1;
    v167 = &v143[88 * v166];
    *(v167 + 4) = v158;
    *(v167 + 5) = 0;
    *(v167 + 6) = 0;
    *(v167 + 7) = 0;
    v167[112] = 64;
    v392 = v143;
  }

  specialized Array.append<A>(contentsOf:)(&_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv4_r);
  v168 = *(v124 + 8);
  if (v168)
  {
    v169 = *v124;
    v170 = *(v124 + 8);

    v171 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v169, v168);
    v172 = v171;
    v174 = v173;
    v175 = 0;
    v176 = v173 >> 62;
    if ((v173 >> 62) > 1)
    {
      if (v176 == 2)
      {
        v175 = *(v171 + 16);
      }
    }

    else if (v176)
    {
      v175 = v171;
    }

    v177 = v392;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v177 + 2) + 1, 1, v177);
    }

    v179 = *(v177 + 2);
    v178 = *(v177 + 3);
    if (v179 >= v178 >> 1)
    {
      v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v178 > 1), v179 + 1, 1, v177);
    }

    *(v177 + 2) = v179 + 1;
    v180 = &v177[88 * v179];
    *(v180 + 4) = v172;
    *(v180 + 5) = v174;
    *(v180 + 6) = v175;
    v180[112] = 0;
    v392 = v177;
    v156 = v404;
  }

  v181 = *(v124 + 32);
  v182 = *(v124 + 32);
  if (v182 >> 60 != 15)
  {
    v370 = *(v124 + 32);
    v183 = *(v124 + 24);
    v184 = v392;
    outlined copy of Data._Representation(v183, v182);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v184 + 2) + 1, 1, v184);
    }

    v186 = *(v184 + 2);
    v185 = *(v184 + 3);
    v187 = v370;
    if (v186 >= v185 >> 1)
    {
      v316 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1, v184);
      v187 = v370;
      v184 = v316;
    }

    *(v184 + 2) = v186 + 1;
    v188 = &v184[88 * v186];
    *(v188 + 4) = v183;
    *(v188 + 40) = v187;
    v188[112] = 0x80;
    v392 = v184;
  }

  v189 = *(v124 + 48);
  if (v189)
  {
    v190 = v392;
    v191 = *(v124 + 48);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v190 + 2) + 1, 1, v190);
    }

    v193 = *(v190 + 2);
    v192 = *(v190 + 3);
    if (v193 >= v192 >> 1)
    {
      v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1, v190);
    }

    LOBYTE(v388[0]) = 0;
    *(v190 + 2) = v193 + 1;
    v194 = &v190[88 * v193];
    *(v194 + 4) = v189;
    *(v194 + 5) = 0;
    v194[48] = v388[0];
    v194[112] = 48;
    v392 = v190;
  }

  if ((*(v124 + 58) & 1) == 0)
  {
    v195 = *(v124 + 56);
    v196 = v392;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 2) + 1, 1, v196);
    }

    v198 = *(v196 + 2);
    v197 = *(v196 + 3);
    if (v198 >= v197 >> 1)
    {
      v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v197 > 1), v198 + 1, 1, v196);
    }

    LOBYTE(v388[0]) = 0;
    *(v196 + 2) = v198 + 1;
    v199 = &v196[88 * v198];
    *(v199 + 16) = v195;
    v199[34] = v388[0];
    v199[112] = -80;
    v392 = v196;
  }

  v200 = v361;
  v201 = v353;
  outlined init with copy of Any?(v124 + *(v361 + 32), v353, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  if ((*(v357 + 48))(v201, 1, v358) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v201, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v202 = v392;
  }

  else
  {
    v203 = v345;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v201, v345, type metadata accessor for PAKEClientState);
    v204 = v359;
    _s15SwiftTLSLibrary15PAKEClientStateV19generateClientHelloAA9ExtensionO4PAKEO0cG0VyAA8TLSErrorOYKF(v374, v393);
    v205 = v369;
    if (v204)
    {
      v131 = v374[0];
      v133 = v374[1];
      v134 = v375;
      outlined destroy of SessionTicket(v203, type metadata accessor for PAKEClientState);
      outlined destroy of P256.Signing.PrivateKey?(v205, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);

      result = outlined destroy of SessionTicket(v124, type metadata accessor for HandshakeState.IdleState);
      goto LABEL_42;
    }

    v359 = 0;
    v363 = v393[1];
    v370 = v393[0];
    v206 = v394;
    v207 = v395;
    v208 = v396;
    v202 = v392;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v202 + 2) + 1, 1, v202);
    }

    v210 = *(v202 + 2);
    v209 = *(v202 + 3);
    if (v210 >= v209 >> 1)
    {
      v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v209 > 1), v210 + 1, 1, v202);
    }

    LOBYTE(v388[0]) = 0;
    outlined destroy of SessionTicket(v345, type metadata accessor for PAKEClientState);
    *(v202 + 2) = v210 + 1;
    v211 = &v202[88 * v210];
    v212 = v363;
    *(v211 + 2) = v370;
    *(v211 + 3) = v212;
    *(v211 + 8) = v206;
    *(v211 + 9) = v207;
    *(v211 + 10) = v208;
    v211[112] = -64;
    v392 = v202;
    v156 = v404;
    v200 = v361;
  }

  v213 = (v156 + *(v373._rawValue + 8));
  v214 = v213[1];
  *(v388 + 8) = *v213;
  LOWORD(v388[0]) = 771;
  *(&v388[1] + 8) = v214;
  *(&v388[2] + 8) = 0u;
  *(&v388[3] + 8) = 0u;
  *(&v388[4] + 1) = 0;
  *&v389 = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv2_r;
  *(&v389 + 1) = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv3_r;
  v360 = v202;
  v390 = v202;
  v215 = *(v200 + 20);
  v216 = v368;
  v217 = v346;
  outlined init with copy of Any?(v368 + v215, v346, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v218 = *(v355 + 48);
  *&v370 = v355 + 48;
  *&v363 = v218;
  v219 = v218(v217, 1, v362);
  outlined destroy of P256.Signing.PrivateKey?(v217, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (v219 != 1 && *(*(v216 + *(v200 + 28)) + 16))
  {
    v385 = v388[4];
    v386 = v389;
    v387 = v390;
    v381 = v388[0];
    v382 = v388[1];
    v383 = v388[2];
    v384 = v388[3];
    outlined destroy of ClientHello(&v381);
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      *v222 = 0;
      _os_log_impl(&dword_1B25F5000, v220, v221, "both session resumption and imported PSKs are in use, only one is allowed", v222, 2u);
      MEMORY[0x1B274ECF0](v222, -1, -1);
    }

    v376 = xmmword_1B26C6450;
    v131 = 2;
    LOBYTE(v377) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v369, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    result = outlined destroy of SessionTicket(v368, type metadata accessor for HandshakeState.IdleState);
    goto LABEL_41;
  }

  v223 = (v404 + *(v373._rawValue + 7));
  v224 = v223[3];
  v225 = v223[4];
  __swift_project_boxed_opaque_existential_0(v223, v224);
  (*(v225 + 8))(v224, v225);
  v226 = v216 + v215;
  v227 = v349;
  outlined init with copy of Any?(v226, v349, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v228 = v336;
  outlined init with copy of Any?(v227, v336, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v229 = v362;
  v230 = v216;
  if ((v363)(v228, 1, v362) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v228, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  }

  else
  {
    v231 = v332;
    v232 = _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v228, v332, type metadata accessor for SessionTicket);
    if (qword_1F29DB6E8 && *(v231 + v229[11]) == word_1F29DB6F8)
    {
      v373._rawValue = *(v216 + 16);
      v233 = *(v360 + 2);
      if (v233)
      {
        v234 = v360 + 32;
        for (i = v233 - 1; ; --i)
        {
          v236 = *(v234 + 1);
          v381 = *v234;
          v382 = v236;
          v237 = *(v234 + 2);
          v238 = *(v234 + 3);
          v239 = *(v234 + 4);
          LOBYTE(v386) = v234[80];
          v384 = v238;
          v385 = v239;
          v383 = v237;
          if ((v386 & 0xF0) == 0x30 && (v382 & 1) == 0)
          {
            v240 = (v231 + v229[13]);
            v241 = v240[1];
            if (v241)
            {
              v242 = v381;
              *&v376 = *v240;
              *(&v376 + 1) = v241;
              MEMORY[0x1EEE9AC00](v232);
              *(&v317 - 2) = &v376;
              outlined copy of Extension.ApplicationLayerProtocolNegotiation();
              v243 = v359;
              LOBYTE(v242) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v317 - 4), v242);
              v359 = v243;
              v232 = outlined destroy of Extension(&v381);
              if ((v242 & 1) == 0)
              {
                v230 = v368;
                v227 = v349;
                goto LABEL_132;
              }

              v229 = v362;
            }
          }

          if (!i)
          {
            v230 = v368;
            v227 = v349;
            break;
          }

          v234 += 88;
        }
      }

      v244 = v229;
      v245 = v231 + v229[14];
      if (!PeerCertificateBundle.wouldBeTrusted(forKeys:)(v373))
      {
        goto LABEL_132;
      }

      v246 = *(v231 + v244[5]);
      v247 = v317;
      Date.addingTimeInterval(_:)();
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        (*(v342 + 8))(v247, v343);
        goto LABEL_132;
      }

      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v248 = v343;
      v249 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v342 + 8))(v247, v248);
      if (v249)
      {
        goto LABEL_132;
      }

      outlined destroy of SessionTicket(v231, type metadata accessor for SessionTicket);
      v229 = v362;
    }

    else
    {
LABEL_132:
      v250 = Logger.logObject.getter();
      v251 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v250, v251))
      {
        v252 = swift_slowAlloc();
        *v252 = 0;
        _os_log_impl(&dword_1B25F5000, v250, v251, "unable to resume session, incompatible with current handshake", v252, 2u);
        MEMORY[0x1B274ECF0](v252, -1, -1);
      }

      outlined destroy of SessionTicket(v231, type metadata accessor for SessionTicket);
      outlined destroy of P256.Signing.PrivateKey?(v227, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v229 = v362;
      (*(v355 + 56))(v227, 1, 1, v362);
    }
  }

  v253 = v361;
  v254 = v337;
  if (*(v335 + 63) == 1)
  {
    outlined init with copy of Any?(v227, v337, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    if ((v363)(v254, 1, v229) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v254, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      goto LABEL_147;
    }

    v255 = v230;
    v256 = v318;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v254, v318, type metadata accessor for SessionTicket);
    if (!*(v256 + v229[10]))
    {
      outlined destroy of SessionTicket(v256, type metadata accessor for SessionTicket);
      v230 = v255;
LABEL_147:
      if (*(*(v230 + v253[7]) + 16))
      {
        v264 = Logger.logObject.getter();
        v265 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v264, v265))
        {
          v266 = swift_slowAlloc();
          *v266 = 0;
          _os_log_impl(&dword_1B25F5000, v264, v265, "client requesting early data with external psks", v266, 2u);
          MEMORY[0x1B274ECF0](v266, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v360 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v360 + 2) + 1, 1, v360);
        }

        v268 = *(v360 + 2);
        v267 = *(v360 + 3);
        if (v268 >= v267 >> 1)
        {
          v360 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v267 > 1), v268 + 1, 1, v360);
        }

        LOBYTE(v381) = 1;
        v269 = v360;
        v253 = v361;
        *(v360 + 2) = v268 + 1;
        v270 = &v269[88 * v268];
        *(v270 + 8) = 0;
        v270[36] = v381;
        v270[112] = 80;
        v390 = v269;
      }

      goto LABEL_155;
    }

    v257 = Logger.logObject.getter();
    v258 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v257, v258))
    {
      v259 = swift_slowAlloc();
      *v259 = 0;
      _os_log_impl(&dword_1B25F5000, v257, v258, "client requesting early data with session resumption", v259, 2u);
      MEMORY[0x1B274ECF0](v259, -1, -1);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v360 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v360 + 2) + 1, 1, v360);
    }

    v261 = *(v360 + 2);
    v260 = *(v360 + 3);
    if (v261 >= v260 >> 1)
    {
      v360 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v260 > 1), v261 + 1, 1, v360);
    }

    LOBYTE(v381) = 1;
    outlined destroy of SessionTicket(v256, type metadata accessor for SessionTicket);
    v262 = v360;
    v253 = v361;
    *(v360 + 2) = v261 + 1;
    v263 = &v262[88 * v261];
    *(v263 + 8) = 0;
    v263[36] = v381;
    v263[112] = 80;
    v390 = v262;
    v230 = v255;
  }

LABEL_155:
  v373._rawValue = *(v230 + v253[7]);
  v271 = v338;
  outlined init with copy of SessionTicket(v404 + v371, v338, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    result = outlined destroy of SessionTicket(v271, type metadata accessor for HandshakeState);
    __break(1u);
LABEL_165:
    __break(1u);
    return result;
  }

  v272 = v347;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v271, v347, type metadata accessor for HandshakeState.IdleState);
  v273 = *(v272 + 64);
  v274 = v348;
  outlined init with copy of Any?(v272 + v253[6], v348, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v275 = v333;
  outlined init with copy of Any?(v274, v333, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  if (swift_getEnumCaseMultiPayload() < 4)
  {
    outlined destroy of P256.Signing.PrivateKey?(v275, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v381 = xmmword_1B26C6450;
    v131 = 2;
    LOBYTE(v382) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of SessionTicket(v272, type metadata accessor for HandshakeState.IdleState);
    outlined destroy of P256.Signing.PrivateKey?(v227, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    (*(v342 + 8))(v356, v343);
    outlined destroy of P256.Signing.PrivateKey?(v369, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v274, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v385 = v388[4];
    v386 = v389;
    v387 = v390;
    v381 = v388[0];
    v382 = v388[1];
    v383 = v388[2];
    v384 = v388[3];
    outlined destroy of ClientHello(&v381);
    result = outlined destroy of SessionTicket(v368, type metadata accessor for HandshakeState.IdleState);
LABEL_41:
    v133 = 0;
    v134 = 2;
LABEL_42:
    v135 = v364;
    *v364 = v131;
    v135[1] = v133;
    *(v135 + 16) = v134;
    return result;
  }

  v276 = v321;
  v364 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(v321, v388, v227, v373._rawValue, v273, v356);
  *&v363 = v277;
  v361 = v278;
  outlined destroy of P256.Signing.PrivateKey?(v274, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  outlined init with take of P256.Signing.PublicKey?(v276, v274, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  v279 = *(v272 + 48);
  v378 = *(v272 + 32);
  v379 = v279;
  v380 = *(v272 + 64);
  v280 = *(v272 + 16);
  v376 = *v272;
  v377 = v280;
  v401 = v388[4];
  v402 = v389;
  v403 = v390;
  v397 = v388[0];
  v398 = v388[1];
  v399 = v388[2];
  v400 = v388[3];
  *&v370 = ClientHello.serverCertificateTypes.getter();
  outlined init with copy of Any?(v369, v354, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v281 = v322;
  v282 = v323;
  outlined init with copy of Any?(v274, &v322[*(v323 + 36)], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v283 = v272;
  v284 = v320;
  outlined init with copy of Any?(v227, v320, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v285 = v319;
  outlined init with copy of Any?(v283 + v253[8], v319, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v286 = v282[8];
  (v367)(v281 + v286, 1, 1, v366);
  v287 = v282[10];
  (*(v355 + 56))(v281 + v287, 1, 1, v362);
  v288 = v282[12];
  (*(v357 + 56))(v281 + v288, 1, 1, v358);
  v289 = v379;
  *(v281 + 32) = v378;
  *(v281 + 48) = v289;
  *(v281 + 64) = v380;
  v290 = v377;
  *v281 = v376;
  *(v281 + 16) = v290;
  *(v281 + 72) = 0u;
  *(v281 + 88) = 0u;
  *(v281 + 104) = 0;
  *(v281 + 112) = &_s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKFTv2_r;
  *(v281 + 120) = v370;
  outlined init with copy of HandshakeStateMachine.Configuration(&v376, &v381);

  outlined assign with take of PartialHandshakeResult?(v354, v281 + v286, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  outlined assign with take of PartialHandshakeResult?(v284, v281 + v287, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  *(v281 + v282[11]) = v373;

  outlined assign with take of PartialHandshakeResult?(v285, v281 + v288, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v348, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v291 = v324;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v281, v324, type metadata accessor for HandshakeState.ClientHelloState);
  v292 = v291 + v282[9];
  v293 = v327;
  specialized ClientSessionKeyManager.clientEarlyTrafficSecret.getter(v327);
  v295 = v328;
  v294 = v329;
  result = (*(v328 + 48))(v293, 1, v329);
  if (result == 1)
  {
    goto LABEL_165;
  }

  outlined destroy of SessionTicket(v347, type metadata accessor for HandshakeState.IdleState);
  v296 = v404;
  v297 = v371;
  outlined destroy of SessionTicket(v404 + v371, type metadata accessor for HandshakeState);
  v298 = *(v295 + 32);
  v299 = v326;
  v298(v326, v293, v294);
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v291, v296 + v297, type metadata accessor for HandshakeState.ClientHelloState);
  swift_storeEnumTagMultiPayload();
  v300 = v325;
  v301 = *(v325 + 20);
  v302 = v330;
  v298(&v330[v301], v299, v294);
  v303 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v304 = *(*(v303 - 8) + 56);
  v304(&v302[v301], 0, 1, v303);
  v304(&v302[*(v300 + 24)], 1, 1, v303);
  v305 = v363;
  *v302 = v364;
  *(v302 + 1) = v305;
  *(v302 + 2) = v361;
  *&v302[*(v300 + 28)] = xmmword_1B26C5EF0;
  v385 = v388[4];
  v386 = v389;
  v387 = v390;
  v383 = v388[2];
  v384 = v388[3];
  v381 = v388[0];
  v382 = v388[1];
  outlined destroy of ClientHello(&v381);
  v306 = Logger.logObject.getter();
  v307 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v306, v307))
  {
    v308 = swift_slowAlloc();
    *v308 = 0;
    _os_log_impl(&dword_1B25F5000, v306, v307, "client beginning TLS handshake", v308, 2u);
    MEMORY[0x1B274ECF0](v308, -1, -1);
  }

  v309 = Logger.logObject.getter();
  v310 = static os_log_type_t.info.getter();
  v311 = os_log_type_enabled(v309, v310);
  v312 = v368;
  v313 = v369;
  v314 = v349;
  if (v311)
  {
    v315 = swift_slowAlloc();
    *v315 = 0;
    _os_log_impl(&dword_1B25F5000, v309, v310, "client sent client hello", v315, 2u);
    MEMORY[0x1B274ECF0](v315, -1, -1);
  }

  outlined destroy of P256.Signing.PrivateKey?(v314, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  (*(v342 + 8))(v356, v343);
  outlined destroy of P256.Signing.PrivateKey?(v313, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v302, v331, type metadata accessor for PartialHandshakeResult);
  return outlined destroy of SessionTicket(v312, type metadata accessor for HandshakeState.IdleState);
}

uint64_t NamedGroup.description.getter(unsigned __int16 a1)
{
  if (a1 > 0x1Cu)
  {
    if (a1 != 29)
    {
      if (a1 == 4588)
      {
        return 0x4D3931353532782ELL;
      }

      goto LABEL_8;
    }

    return 0x3931353532782ELL;
  }

  else
  {
    if (a1 != 23)
    {
      if (a1 == 24)
      {
        return 0x343833706365732ELL;
      }

LABEL_8:
      _StringGuts.grow(_:)(24);

      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B274D610](v2);

      MEMORY[0x1B274D610](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x363532706365732ELL;
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t GeneratedEphemeralPrivateKey.publicKeyData.getter()
{
  v0 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for P384EphemeralKey(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Curve25519EphemeralKey(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v35, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v24, v11, type metadata accessor for P384EphemeralKey);
      v26 = P384.KeyAgreement.PrivateKey.publicKey.getter();
      v27 = MEMORY[0x1B274D4B0](v26);
      (*(v33 + 8))(v7, v34);
      v28 = type metadata accessor for P384EphemeralKey;
      v29 = v11;
    }

    else
    {
      outlined init with take of X25519MLKEM768EphemeralKey(v24, v3, type metadata accessor for X25519MLKEM768EphemeralKey);
      v30 = &v3[*(v0 + 24)];
      v27 = *v30;
      outlined copy of Data._Representation(*v30, *(v30 + 1));
      v28 = type metadata accessor for X25519MLKEM768EphemeralKey;
      v29 = v3;
    }
  }

  else
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v24, v20, type metadata accessor for Curve25519EphemeralKey);
    Curve25519.KeyAgreement.PrivateKey.publicKey.getter();
    v27 = Curve25519.KeyAgreement.PublicKey.rawRepresentation.getter();
    (*(v13 + 8))(v16, v12);
    v28 = type metadata accessor for Curve25519EphemeralKey;
    v29 = v20;
  }

  outlined destroy of GeneratedEphemeralPrivateKey(v29, v28);
  return v27;
}

uint64_t outlined init with copy of GeneratedEphemeralPrivateKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(char a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2[2] > a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_17;
  }

  v13 = a1;
  if (v3 < a2)
  {
    goto LABEL_18;
  }

  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = &v13;
  v14[1] = v14;
  v9 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  if (*v9)
  {
    v10 = v9[1] - *v9;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  __swift_destroy_boxed_opaque_existential_0(v14);
  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

unint64_t ByteBuffer.writeExtension(_:)(unsigned __int16 *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = 0;
  switch(*(a1 + 80) >> 4)
  {
    case 1:
      v3 = 10;
      break;
    case 2:
      v3 = 43;
      break;
    case 3:
      v3 = 16;
      break;
    case 4:
      v3 = 51;
      break;
    case 5:
      v3 = 42;
      break;
    case 6:
      v3 = 13;
      break;
    case 7:
      v3 = 20;
      break;
    case 8:
      v3 = 57;
      break;
    case 9:
      v3 = 45;
      break;
    case 0xA:
      v3 = 41;
      break;
    case 0xB:
      v3 = 58;
      break;
    case 0xC:
      v3 = 35387;
      break;
    case 0xD:
      v3 = *a1;
      break;
    default:
      break;
  }

  v22 = bswap32(v3) >> 16;
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  v25 = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  v23 = &v22;
  v24 = &v23;
  v6 = __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
  v8 = *v6;
  v7 = v6[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v9 = *v1;
  v10 = v1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = BYTE6(v10);
    v13 = v9 >> 32;
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  v22 = 0;
  v25 = v4;
  v26 = v5;
  v23 = &v22;
  v24 = &v23;
  v15 = __swift_project_boxed_opaque_existential_0(&v23, v4);
  v17 = *v15;
  v16 = v15[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v18 = closure #1 in ByteBuffer.writeExtension(_:)(v1, a1);
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v19 = v18;
  if (v18 >> 16)
  {
    goto LABEL_26;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v18, v14);
  v20 = *MEMORY[0x1E69E9840];
  return v19 + 4;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(unsigned int a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2[2] > a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_17;
  }

  v13 = bswap32(a1) >> 16;
  if (v3 < a2)
  {
    goto LABEL_18;
  }

  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = &v13;
  v14[1] = v14;
  v9 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  if (*v9)
  {
    v10 = v9[1] - *v9;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  __swift_destroy_boxed_opaque_existential_0(v14);
  v11 = *MEMORY[0x1E69E9840];
  return 2;
}

uint64_t closure #1 in ByteBuffer.writeExtension(_:)(uint64_t *a1, uint64_t a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9) | ((*(a2 + 13) | (*(a2 + 15) << 16)) << 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 80);
  switch(v11 >> 4)
  {
    case 1u:
    case 6u:
      result = ByteBuffer.writeSupportedGroups(_:)(v3);
      goto LABEL_92;
    case 2u:
      result = ByteBuffer.writeSupportedVersions(_:)(v3, v4 & 1);
      goto LABEL_92;
    case 3u:
      result = ByteBuffer.writeALPN(_:)(v3, v4 | (v5 << 8), v6 & 1, *(a2 + 48), *(a2 + 64));
      goto LABEL_92;
    case 4u:
      v20 = (v7 >> 52) & 3;
      if (v20)
      {
        if (v20 == 1)
        {
          result = ByteBuffer.writeKeyShareEntry(_:)(v3, v4 | (v5 << 8), (v7 << 8) & 0xCFFFFFFFFFFFFFFFLL | v6, v8);
        }

        else
        {
LABEL_26:
          LOWORD(v79[0]) = bswap32(v3) >> 16;
          v19 = MEMORY[0x1E69E6290];
          v86 = MEMORY[0x1E69E6290];
          v87 = MEMORY[0x1E6969DF8];
          v80 = v79;
          v81 = v79 + 2;
LABEL_27:
          v30 = __swift_project_boxed_opaque_existential_0(&v80, v19);
          v32 = *v30;
          v31 = v30[1];
          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_0(&v80);
          result = 2;
        }

        goto LABEL_92;
      }

      v40 = *a1;
      v41 = a1[1];
      v42 = v41 >> 62;
      v43 = *a2;
      if ((v41 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v44 = *(v40 + 24);
        }

        else
        {
          v44 = 0;
        }
      }

      else if (v42)
      {
        v44 = v40 >> 32;
      }

      else
      {
        v44 = BYTE6(v41);
      }

      LOWORD(v79[0]) = 0;
      v86 = MEMORY[0x1E69E6290];
      v87 = MEMORY[0x1E6969DF8];
      v80 = v79;
      v81 = v79 + 2;
      v64 = __swift_project_boxed_opaque_existential_0(&v80, MEMORY[0x1E69E6290]);
      v66 = *v64;
      v65 = v64[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v80);
      v67 = specialized Sequence.reduce<A>(into:_:)(0, v43);
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_95;
      }

      v68 = v67;
      if (!(v67 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v67, v44);
        result = v68 + 2;
        goto LABEL_92;
      }

      goto LABEL_96;
    case 5u:
      if ((v3 & 0x100000000) != 0)
      {
        result = 0;
      }

      else
      {
        LODWORD(v79[0]) = bswap32(v3);
        v86 = MEMORY[0x1E69E6290];
        v87 = MEMORY[0x1E6969DF8];
        v80 = v79;
        v81 = v79 + 4;
        v23 = __swift_project_boxed_opaque_existential_0(&v80, MEMORY[0x1E69E6290]);
        v25 = *v23;
        v24 = v23[1];
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v80);
        result = 4;
      }

      goto LABEL_92;
    case 7u:
      result = ByteBuffer.writeServerCertificateType(_:)(v3, v4 & 1);
      goto LABEL_92;
    case 8u:
      v33 = v6 | (v7 << 8);
      v34 = (v5 >> 54) & 3;
      if (((v5 >> 54) & 3) > 1)
      {
        if (v34 == 2)
        {
          v36 = *(v3 + 16);
          v35 = *(v3 + 24);
        }

        else
        {
LABEL_63:
          v35 = 0;
          v36 = 0;
        }
      }

      else
      {
        if (v34)
        {
          v35 = v3 >> 32;
        }

        else
        {
          v35 = (((v5 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        if (v34)
        {
          v36 = v3;
        }

        else
        {
          v36 = 0;
        }
      }

      if (v35 < v33 || v35 < v36)
      {
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
      }

      v49 = Data._Representation.subscript.getter();
      v58 = v57;
      Data.append(_:)();
      v52 = v58;
      v59 = v58 >> 62;
      if ((v58 >> 62) <= 1)
      {
        if (!v59)
        {
LABEL_70:
          v60 = v49;
          v61 = BYTE6(v52);
          outlined consume of Data._Representation(v60, v52);
          result = v61;
          goto LABEL_92;
        }

        outlined consume of Data._Representation(v49, v58);
        LODWORD(v53) = HIDWORD(v49) - v49;
        if (!__OFSUB__(HIDWORD(v49), v49))
        {
LABEL_77:
          result = v53;
          goto LABEL_92;
        }

        goto LABEL_99;
      }

      if (v59 == 2)
      {
        v63 = *(v49 + 16);
        v62 = *(v49 + 24);
        outlined consume of Data._Representation(v49, v52);
        result = v62 - v63;
        if (!__OFSUB__(v62, v63))
        {
          goto LABEL_92;
        }

        __break(1u);
      }

LABEL_75:
      outlined consume of Data._Representation(v49, v52);
      result = 0;
LABEL_92:
      v73 = *MEMORY[0x1E69E9840];
      return result;
    case 9u:
      result = ByteBuffer.writePreSharedKeyKexModes(_:)(v3);
      goto LABEL_92;
    case 0xAu:
      if (v6)
      {
        goto LABEL_26;
      }

      result = ByteBuffer.writeOfferedPSKs(_:)(v3, v4 | (v5 << 8));
      goto LABEL_92;
    case 0xBu:
      if ((v3 & 0x10000) == 0)
      {
        LOBYTE(v79[0]) = *a2;
        v13 = MEMORY[0x1E69E6290];
        v14 = MEMORY[0x1E6969DF8];
        v86 = MEMORY[0x1E69E6290];
        v87 = MEMORY[0x1E6969DF8];
        v80 = v79;
        v81 = v79 + 1;
        v15 = BYTE1(v3);
        v16 = __swift_project_boxed_opaque_existential_0(&v80, MEMORY[0x1E69E6290]);
        v18 = *v16;
        v17 = v16[1];
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v80);
        LOBYTE(v79[0]) = v15;
        v86 = v13;
        v87 = v14;
        v80 = v79;
        v81 = v79 + 1;
        v19 = v13;
        goto LABEL_27;
      }

      LOBYTE(v79[0]) = *a2;
      v86 = MEMORY[0x1E69E6290];
      v87 = MEMORY[0x1E6969DF8];
      v80 = v79;
      v81 = v79 + 1;
      v37 = __swift_project_boxed_opaque_existential_0(&v80, MEMORY[0x1E69E6290]);
      v39 = *v37;
      v38 = v37[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v80);
      result = 1;
      goto LABEL_92;
    case 0xCu:
      v74 = *(a2 + 64);
      v76 = *(a2 + 48);
      v77 = a1;
      v21 = *a2;
      v86 = &type metadata for SwiftTLSFeatureFlags;
      v87 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
      v22 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v80);
      if (v22)
      {
        if (v11)
        {
          result = ByteBuffer.writePAKEShareRFC(_:)(v21, v4 | (v5 << 8), v6 | (v7 << 8), v8);
        }

        else
        {
          v80 = v21;
          LOBYTE(v81) = v4;
          *(&v81 + 1) = v5;
          HIBYTE(v81) = BYTE6(v5);
          *(&v81 + 5) = WORD2(v5);
          v82 = v6;
          v83 = v7;
          v85 = BYTE6(v7);
          v84 = WORD2(v7);
          v86 = v8;
          v87 = v9;
          v88 = v10;
          *&v89 = v76;
          result = ByteBuffer.writePAKEClientHelloRFC(_:)(&v80);
        }

        goto LABEL_92;
      }

      if (v11)
      {
        v80 = v21;
        LOBYTE(v81) = v4;
        *(&v81 + 1) = v5;
        HIBYTE(v81) = BYTE6(v5);
        *(&v81 + 5) = WORD2(v5);
        v82 = v6;
        v83 = v7;
        v85 = BYTE6(v7);
        v84 = WORD2(v7);
        v86 = v8;
        v87 = v9;
        v88 = v10;
        v89 = v76;
        v90 = v74;
        result = ByteBuffer.writePAKEServerHelloNonRFC(_:)(&v80);
        goto LABEL_92;
      }

      v80 = v21;
      LOBYTE(v81) = v4;
      *(&v81 + 1) = v5;
      HIBYTE(v81) = BYTE6(v5);
      *(&v81 + 5) = WORD2(v5);
      v82 = v6;
      v83 = v7;
      v85 = BYTE6(v7);
      v84 = WORD2(v7);
      v86 = v8;
      v87 = v9;
      v88 = v10;
      v45 = *v77;
      v46 = v77[1];
      v47 = v46 >> 62;
      *&v89 = v76;
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

      v78 = 0;
      v79[3] = MEMORY[0x1E69E6290];
      v79[4] = MEMORY[0x1E6969DF8];
      v79[0] = &v78;
      v79[1] = v79;
      v69 = __swift_project_boxed_opaque_existential_0(v79, MEMORY[0x1E69E6290]);
      v71 = *v69;
      v70 = v69[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(v79);
      outlined init with copy of Extension.PAKE.PAKEClientHello(&v80, v79);
      v72 = specialized Sequence.reduce<A>(into:_:)(0, v76, v77, &v80);
      outlined destroy of Extension(a2);
      if ((v72 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (!(v72 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v72, v48);
        result = v72 + 2;
        goto LABEL_92;
      }

      goto LABEL_98;
    case 0xDu:
      *(a2 + 13);
      *(a2 + 15);
      v26 = *(a2 + 8) | (*(a2 + 9) << 8);
      v27 = (v7 >> 54) & 3;
      if (((v7 >> 54) & 3) > 1)
      {
        if (v27 == 2)
        {
          v29 = *((*(a2 + 8) | (v5 << 8)) + 0x10);
          v28 = *((*(a2 + 8) | (v5 << 8)) + 0x18);
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }
      }

      else
      {
        if (v27)
        {
          v28 = (v5 >> 24);
        }

        else
        {
          v28 = (((v7 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        if (v27)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0;
        }
      }

      if (v28 < v8 || v28 < v29)
      {
        goto LABEL_94;
      }

      v49 = Data._Representation.subscript.getter();
      v51 = v50;
      Data.append(_:)();
      v52 = v51;
      v53 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        goto LABEL_59;
      }

      if (!v53)
      {
        goto LABEL_70;
      }

      outlined consume of Data._Representation(v49, v51);
      LODWORD(v53) = HIDWORD(v49) - v49;
      if (!__OFSUB__(HIDWORD(v49), v49))
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_59:
      if (v53 != 2)
      {
        goto LABEL_75;
      }

      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      outlined consume of Data._Representation(v49, v52);
      result = v54 - v55;
      if (!__OFSUB__(v54, v55))
      {
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_63;
    default:
      result = ByteBuffer.writeServerName(_:)(v3, v4 | (v5 << 8), v6 | (v7 << 8));
      goto LABEL_92;
  }
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO24receivedNewSessionTicket03newgH011currentTimeAA07PartialC6ResultVAA0fgH0V_10Foundation4DateVtAA8TLSErrorOYKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v42 = a4;
  v10 = type metadata accessor for SessionTicket();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v15 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready - 8);
  v17 = &v40[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HandshakeState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HandshakeState(v7, v21, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() < 6)
  {
    result = outlined destroy of HandshakeState(v21, type metadata accessor for HandshakeState);
    __break(1u);
  }

  else
  {
    outlined init with take of HandshakeState.IdleState(v21, v17, type metadata accessor for HandshakeState.ReadyState);
    _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V20prepareSessionTicket7message11currentTimeAA0gH0VAA03NewgH0V_10Foundation4DateVtAA8TLSErrorOYKF(a1, a2, v40, v13);
    if (v5)
    {
      v22 = v40[0];
      v23 = v40[1];
      v24 = v41;
      result = outlined destroy of HandshakeState(v17, type metadata accessor for HandshakeState.ReadyState);
      *a3 = v22;
      *(a3 + 8) = v23;
      *(a3 + 16) = v24;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, logger);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B25F5000, v27, v28, "generated new session ticket", v29, 2u);
        MEMORY[0x1B274ECF0](v29, -1, -1);
      }

      v30 = type metadata accessor for PartialHandshakeResult(0);
      v31 = v30[5];
      v32 = type metadata accessor for EncryptionLevel(0);
      v33 = *(*(v32 - 8) + 56);
      v34 = v42;
      v33(v42 + v31, 1, 1, v32);
      v33(v34 + v30[6], 1, 1, v32);
      v35 = SessionTicket.serialize()();
      v37 = v36;
      outlined destroy of HandshakeState(v13, type metadata accessor for SessionTicket);
      result = outlined destroy of HandshakeState(v17, type metadata accessor for HandshakeState.ReadyState);
      *v34 = xmmword_1B26C5EF0;
      *(v34 + 16) = 0;
      v38 = (v34 + v30[7]);
      *v38 = v35;
      v38[1] = v37;
    }
  }

  return result;
}

uint64_t outlined init with copy of HandshakeState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKFAF6SHA384V_Tg5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v43 = a2;
  *&v44 = a4;
  v42 = a1;
  v6 = v5;
  v47 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  outlined init with copy of Any?(v6, &v41 - v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    goto LABEL_7;
  }

  v20 = v47;
  v21 = v11;
  v23 = v42;
  v22 = v43;
  if (EnumCaseMultiPayload != 3)
  {
LABEL_7:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    outlined init with copy of Any?(v6, v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 <= 1)
    {
      if (v32)
      {
        v35 = 0x6B616873646E6168;
      }

      else
      {
        v35 = 0x636553796C726165;
      }

      if (v32)
      {
        v34 = 0xEF74657263655365;
      }

      else
      {
        v34 = 0xEB00000000746572;
      }

      v33 = v44;
    }

    else
    {
      v33 = v44;
      if (v32 == 2)
      {
        v34 = 0xEC00000074657263;
        v35 = 0x655372657473616DLL;
      }

      else
      {
        if (v32 != 3)
        {
          v34 = 0xE400000000000000;
          v35 = 1701602409;
          goto LABEL_22;
        }

        v34 = 0xEA00000000007374;
        v35 = 0x65726365536C6C61;
      }
    }

    outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_22:
    Logger.logInvalidStateTransition(stateName:event:)(v35, v34, 0xD000000000000018, 0x80000001B26CE110);

    v44 = xmmword_1B26C6450;
    v45 = xmmword_1B26C6450;
    v46 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    *v33 = v44;
    *(v33 + 16) = 2;
    return result;
  }

  v24 = v18;
  v25 = v21;
  result = outlined init with take of P256.Signing.PublicKey?(v24, v21, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  v27 = BYTE6(v22);
  v28 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    v29 = a5;
    if (v28 == 2)
    {
      v30 = *(v23 + 24);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v29 = a5;
    if (v28)
    {
      v30 = v23 >> 32;
    }

    else
    {
      v30 = v27;
    }
  }

  if (v30 < v20)
  {
    __break(1u);
  }

  else
  {
    v36 = *(v8 + 44);
    v37 = Data._Representation.subscript.getter();
    v39 = v38;
    type metadata accessor for SHA384Digest();
    _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
    v40 = dispatch thunk of static Digest.byteCount.getter();
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkL4DataVTt4g5(v25 + v36, 0x6974706D75736572, 0xEA00000000006E6FLL, v37, v39, v40, v29);
    outlined consume of Data._Representation(v37, v39);
    return outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AkL4DataVTt4g5@<X0>(unint64_t a1@<X0>, Swift::Int a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = a6 >> 16;
    if (!(a6 >> 16))
    {
      v7 = v16;
      a7 = *(v16 + 2);
      v17 = *(v16 + 3);
      v18 = v17 >> 1;
      v8 = a7 + 1;
      if (v17 >> 1 > a7)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v8, 1, v7);
  v17 = *(v7 + 3);
  v18 = v17 >> 1;
LABEL_4:
  *(v7 + 2) = v8;
  v7[a7 + 32] = BYTE1(a6);
  v19 = a7 + 2;
  if (v18 < (a7 + 2))
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), a7 + 2, 1, v7);
  }

  *(v7 + 2) = v19;
  v7[v8 + 32] = a6;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v20 = String.UTF8View._foreignCount()();
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v20 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v20 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(a7) = v20 + 6;
  if ((a7 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + 2);
  a1 = *(v7 + 3);
  v8 = v19 + 1;

  if (v19 >= a1 >> 1)
  {
LABEL_21:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a1 > 1), v8, 1, v7);
  }

  *(v7 + 2) = v8;
  v7[v19 + 32] = a7;
  v22 = v7;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  specialized Array.append<A>(contentsOf:)(a2, a3);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a4, a5, &v22);
  type metadata accessor for SHA384();
  type metadata accessor for SymmetricKey();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x1B274CD90]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = (v12 + v8);
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return closure #1 in static HKDF.expandLabel<A, B>(secret:label:context:length:)(v8, v14, a4);
}

uint64_t specialized Set._Variant.insert(_:)(_WORD *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 2 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 2 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 2 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 2 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t outlined destroy of HandshakeState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SessionTicket.serialize()()
{
  v1 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v47 = xmmword_1B26C6130;
  v48 = 0;
  Date.timeIntervalSinceReferenceDate.getter();
  v40 = bswap64(v2);
  v3 = MEMORY[0x1E69E6290];
  v4 = MEMORY[0x1E6969DF8];
  v45 = MEMORY[0x1E69E6290];
  v46 = MEMORY[0x1E6969DF8];
  v43 = &v40;
  v44 = &v41;
  v5 = __swift_project_boxed_opaque_existential_0(&v43, MEMORY[0x1E69E6290]);
  v7 = *v5;
  v6 = v5[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v8 = type metadata accessor for SessionTicket();
  LODWORD(v40) = bswap32(*(v0 + v8[5]));
  v45 = v3;
  v46 = v4;
  v43 = &v40;
  v44 = &v40 + 4;
  v9 = __swift_project_boxed_opaque_existential_0(&v43, v3);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  LODWORD(v40) = bswap32(*(v0 + v8[6]));
  v45 = v3;
  v46 = v4;
  v43 = &v40;
  v44 = &v40 + 4;
  v12 = __swift_project_boxed_opaque_existential_0(&v43, v3);
  v14 = *v12;
  v13 = v12[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  ByteBuffer.writeLengthPrefixedImmutableBuffer(_:)(*(v1 + v8[7]), *(v1 + v8[7] + 8), *(v1 + v8[7] + 16));
  ByteBuffer.writeLengthPrefixedImmutableBuffer(_:)(*(v1 + v8[8]), *(v1 + v8[8] + 8), *(v1 + v8[8] + 16));
  v15 = v8[9];
  v42 = &v47;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  LODWORD(v40) = bswap32(*(v0 + v8[10]));
  v45 = v3;
  v46 = v4;
  v43 = &v40;
  v44 = &v40 + 4;
  v16 = __swift_project_boxed_opaque_existential_0(&v43, v3);
  v18 = *v16;
  v17 = v16[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  LOWORD(v40) = bswap32(*(v0 + v8[11])) >> 16;
  v45 = v3;
  v46 = v4;
  v43 = &v40;
  v44 = &v40 + 2;
  v19 = __swift_project_boxed_opaque_existential_0(&v43, v3);
  v21 = *v19;
  v20 = v19[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  LOWORD(v40) = bswap32(*(v0 + v8[12])) >> 16;
  v45 = v3;
  v46 = v4;
  v43 = &v40;
  v44 = &v40 + 2;
  v22 = __swift_project_boxed_opaque_existential_0(&v43, v3);
  v24 = *v22;
  v23 = v22[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v25 = (v0 + v8[13]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
    LOBYTE(v40) = -1;
    v45 = v3;
    v46 = v4;
    v43 = &v40;
    v44 = &v40 + 1;
    v28 = __swift_project_boxed_opaque_existential_0(&v43, v3);
    v29 = *v28;
    v30 = v28[1];

    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v43);
    v31._countAndFlagsBits = v27;
    v31._object = v26;
    ByteBuffer.writeApplicationLayerProtocol(_:)(v31);
  }

  else
  {
    LOBYTE(v40) = 0;
    v45 = v3;
    v46 = v4;
    v43 = &v40;
    v44 = &v40 + 1;
    v32 = __swift_project_boxed_opaque_existential_0(&v43, v3);
    v34 = *v32;
    v33 = v32[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v43);
  }

  ByteBuffer.writePeerCertificateBundle(_:)(v0 + v8[14]);
  v35 = *(&v47 + 1) >> 62;
  if ((*(&v47 + 1) >> 62) > 1)
  {
    if (v35 == 2)
    {
      v36 = *(v47 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v35)
  {
    v36 = v47 >> 32;
  }

  else
  {
    v36 = BYTE14(v47);
  }

  if (v36 < v48)
  {
    __break(1u);
  }

  v37 = Data._Representation.subscript.getter();
  outlined consume of Data._Representation(v47, *(&v47 + 1));
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

uint64_t specialized ByteBuffer.writeLengthPrefixedBytes<A>(_:)(uint64_t a1, unint64_t **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v15 = bswap64(v2);
  v5 = MEMORY[0x1E69E6290];
  v6 = MEMORY[0x1E6969DF8];
  v18 = MEMORY[0x1E69E6290];
  v19 = MEMORY[0x1E6969DF8];
  v16 = &v15;
  v17 = &v16;
  v7 = __swift_project_boxed_opaque_existential_0(&v16, MEMORY[0x1E69E6290]);
  v9 = *v7;
  v8 = v7[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v16);
  v18 = v5;
  v19 = v6;
  v16 = a1;
  v17 = a2;
  v10 = __swift_project_boxed_opaque_existential_0(&v16, v5);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  result = __swift_destroy_boxed_opaque_existential_0(&v16);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Int __swiftcall ByteBuffer.writeApplicationLayerProtocol(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v11[5] = *MEMORY[0x1E69E9840];
  if ((a1._object & 0x1000000000000000) != 0)
  {
    if (String.UTF8View._foreignCount()() > 255)
    {
LABEL_4:
      result = 0;
      goto LABEL_16;
    }

    v4 = String.UTF8View._foreignCount()();
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a1._object & 0x2000000000000000) == 0 && (a1._countAndFlagsBits & 0xFFFFFFFFFF00) != 0)
    {
      goto LABEL_4;
    }

    if ((a1._object & 0x2000000000000000) != 0)
    {
      goto LABEL_9;
    }

    v4 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= 0xFF)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_9:
  v4 = HIBYTE(object) & 0xF;
LABEL_10:
  v10 = v4;
  v11[3] = MEMORY[0x1E69E6290];
  v11[4] = MEMORY[0x1E6969DF8];
  v11[0] = &v10;
  v11[1] = v11;
  v5 = __swift_project_boxed_opaque_existential_0(v11, MEMORY[0x1E69E6290]);
  v6 = *v5;
  v7 = v5[1];

  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v11);
  specialized Data.append<A>(contentsOf:)(countAndFlagsBits, object);
  if ((object & 0x1000000000000000) != 0)
  {
    v8 = String.UTF8View._foreignCount()();
  }

  else
  {

    if ((object & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(object) & 0xF;
    }

    else
    {
      v8 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }
  }

  result = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_20:
    __break(1u);
  }

LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    Data._Representation.append(contentsOf:)();
  }

  return v2 >> 60;
}

uint64_t specialized ByteBuffer.writeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v11[3] = MEMORY[0x1E6969080];
  v11[4] = MEMORY[0x1E6969078];
  v11[0] = a1;
  v11[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v11, MEMORY[0x1E6969080]);
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v5, v6);
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      return BYTE6(a2);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v8 == 2)
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    result = v9 - v10;
    if (__OFSUB__(v9, v10))
    {
      __break(1u);
LABEL_8:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
      }

      else
      {
        return HIDWORD(a1) - a1;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeMessageParser.ParseResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 129))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 128);
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

NSData_optional __swiftcall STLSClientHandshaker.getPeerQUICTransportParameters()()
{
  v1 = type metadata accessor for HandshakeStateMachine(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  if ((*(v2 + 48))(v0 + v6, 1, v1) || (outlined init with copy of HandshakeStateMachine(v0 + v6, v5, type metadata accessor for HandshakeStateMachine), v8 = HandshakeStateMachine.peerQUICTransportParameters.getter(), v10 = v9, v12 = v11, v13 = outlined destroy of ExportedAuthenticator(v5, type metadata accessor for HandshakeStateMachine), v10 >> 60 == 15))
  {
    v13 = 0;
  }

  else
  {
    v14 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v7 = *(v8 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v14)
    {
      v7 = v8 >> 32;
    }

    else
    {
      v7 = BYTE6(v10);
    }

    if (v7 < v12)
    {
      __break(1u);
    }

    else
    {
      v15 = Data._Representation.subscript.getter();
      v17 = v16;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v15, v17);
      outlined consume of ByteBuffer?(v8, v10);
      v13 = isa;
    }
  }

  result.is_nil = v7;
  result.value.super.isa = v13;
  return result;
}

uint64_t HandshakeStateMachine.peerQUICTransportParameters.getter()
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
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
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
        v28 = &v8[*(v5 + 36)];
        v24 = *v28;
        v29 = v28[2];
        outlined copy of Data?(*v28, v28[1]);
        v26 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v27 = v8;
      }

      else
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v4, type metadata accessor for HandshakeState.ReadyState);
        v31 = &v4[*(ready + 36)];
        v24 = *v31;
        v32 = v31[2];
        outlined copy of Data?(*v31, v31[1]);
        v26 = type metadata accessor for HandshakeState.ReadyState;
        v27 = v4;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v23 = &v16[*(v13 + 28)];
      v24 = *v23;
      v25 = v23[2];
      outlined copy of Data?(*v23, v23[1]);
      v26 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v27 = v16;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v12, type metadata accessor for HandshakeState.ServerCertificateState);
      v24 = v12[11];
      v30 = v12[13];
      outlined copy of Data?(v24, v12[12]);
      v26 = type metadata accessor for HandshakeState.ServerCertificateState;
      v27 = v12;
    }

    outlined destroy of SessionTicket(v27, v26);
  }

  return v24;
}

void nwswifttls_update_quic_transport_parameters(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && *(a1 + 80))
  {
    v5 = v3;
    nw_protocol_metadata_access_handle();
  }
}

BOOL __nwswifttls_update_quic_transport_parameters_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 152))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = [v3 _createDispatchData];
      v4 = *(a2 + 152);
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 152) = v3;
  }

  return a2 != 0;
}

uint64_t nwswifttls_update_encryption_secrets(void *a1)
{
  v1 = a1;
  v13 = 0;
  v2 = [v1[37] getNegotiatedCiphersuite];
  v3 = [v1[37] getNegotiatedPAKE];
  if (nwswifttls_get_read_encryption_level(v1, &v13 + 1) && *(v1 + 80) != HIDWORD(v13))
  {
    v5 = [v1[37] getEncryptionSecretWithWrite:0];
    v7 = nwswifttls_dispatch_data_from_nsdata(v5, v6);

    nwswifttls_update_encryption_secret(v1, HIDWORD(v13), v2, v3, 0, v7);
    v8 = HIDWORD(v13);
    *(v1 + 80) = HIDWORD(v13);
    if (v8 == 3)
    {
      nwswifttls_complete_handshake(v1, 1);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (nwswifttls_get_write_encryption_level(v1, &v13) && *(v1 + 81) != v13)
  {
    v4 = 1;
    v9 = [v1[37] getEncryptionSecretWithWrite:1];
    v11 = nwswifttls_dispatch_data_from_nsdata(v9, v10);

    nwswifttls_update_encryption_secret(v1, v13, v2, v3, 1, v11);
    *(v1 + 81) = v13;
  }

  return v4;
}

uint64_t @objc STLSClientHandshaker.getNegotiatedCiphersuite()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(a1 + v9, v8, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v10 - 8) + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = a1;
    v13 = a3();

    outlined destroy of ExportedAuthenticator(v8, type metadata accessor for HandshakeStateMachine);
    if ((v13 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

uint64_t HandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v1 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready - 8);
  v97 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v94 = *(v96 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v89 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v85 - v13;
  v91 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v14 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v16 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImportedPSK(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v85 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for PSK(0);
  v21 = *(*(v88 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v88);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v85 - v25;
  v27 = type metadata accessor for GeneralEPSK(0);
  v86 = *(v27 - 8);
  v28 = *(v86 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v85 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v85 - v36;
  v99 = type metadata accessor for SessionTicket();
  v90 = *(v99 - 8);
  v38 = *(v90 + 64);
  v39 = MEMORY[0x1EEE9AC00](v99);
  v87 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v85 - v41;
  v43 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for HandshakeState(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v85 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v102 + *(v51 + 24), v50, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v55 = v101;
    if (!EnumCaseMultiPayload)
    {
      v62 = type metadata accessor for HandshakeState;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v67 = v100;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v50, v100, type metadata accessor for HandshakeState.ServerHelloState);
      v68 = v67 + *(v55 + 28);
      v64 = *v68;
      v66 = *(v68 + 2);
      v69 = type metadata accessor for HandshakeState.ServerHelloState;
      goto LABEL_24;
    }

    v56 = v50;
    v50 = v46;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v56, v46, type metadata accessor for HandshakeState.ClientHelloState);
    outlined init with copy of Any?(&v46[*(v43 + 40)], v37, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    v57 = v99;
    if ((*(v90 + 48))(v37, 1, v99) != 1)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v37, v42, type metadata accessor for SessionTicket);
      v64 = *&v42[*(v57 + 44)];
      outlined destroy of SessionTicket(v42, type metadata accessor for SessionTicket);
      v70 = type metadata accessor for HandshakeState.ClientHelloState;
      v71 = v50;
      goto LABEL_22;
    }

    outlined destroy of P256.Signing.PrivateKey?(v37, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    v58 = *&v50[*(v43 + 44)];
    if (!*(v58 + 16) || (v50[64] & 1) != 0)
    {
LABEL_13:
      v62 = type metadata accessor for HandshakeState.ClientHelloState;
LABEL_17:
      outlined destroy of SessionTicket(v50, v62);
      goto LABEL_18;
    }

    v59 = *(v50 + 14);
    if (*(v59 + 16))
    {
      LODWORD(v102) = *(v59 + 32);
      v60 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      outlined init with copy of SessionTicket(v58 + v60, v33, type metadata accessor for GeneralEPSK);
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v33, v26, type metadata accessor for PSK);
      v61 = swift_getEnumCaseMultiPayload();
      outlined destroy of SessionTicket(v26, type metadata accessor for PSK);
      if (v61 == 1)
      {
        goto LABEL_13;
      }

      if (v102 != 4866)
      {
        v103 = xmmword_1B26C76D0;
        v104 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        if (one-time initialization token for logger == -1)
        {
LABEL_39:
          v80 = type metadata accessor for Logger();
          __swift_project_value_buffer(v80, logger);
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&dword_1B25F5000, v81, v82, "first ciphersuite offered does not match KDF of first offered PSK", v83, 2u);
            MEMORY[0x1B274ECF0](v83, -1, -1);
          }

          v62 = type metadata accessor for HandshakeState.ClientHelloState;
          goto LABEL_17;
        }

LABEL_46:
        swift_once();
        goto LABEL_39;
      }

      if (*(v58 + 16))
      {
        outlined init with copy of SessionTicket(v58 + v60, v31, type metadata accessor for GeneralEPSK);
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v31, v24, type metadata accessor for PSK);
        v78 = swift_getEnumCaseMultiPayload();
        v79 = v85;
        if (v78 == 1)
        {
          outlined destroy of SessionTicket(v24, type metadata accessor for PSK);
        }

        else
        {
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v24, v85, type metadata accessor for ImportedPSK);
          v84 = *(v79 + 50);
          outlined destroy of SessionTicket(v79, type metadata accessor for ImportedPSK);
          if (v84 == 2)
          {
            outlined destroy of SessionTicket(v50, type metadata accessor for HandshakeState.ClientHelloState);
            v66 = 0;
            v64 = 4866;
            return v64 | (v66 << 16);
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v53 = v92;
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v50, v92, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v54 = v98;
      outlined init with copy of Any?(v53 + *(v91 + 20), v98, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
      outlined destroy of SessionTicket(v53, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      if ((*(v94 + 48))(v54, 1, v96) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v54, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
LABEL_18:
        v64 = 0;
        v66 = 1;
        return v64 | (v66 << 16);
      }

      v73 = v89;
      outlined init with copy of SessionTicket(v54, v89, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74)
      {
        if (v74 == 1)
        {
          v64 = *v73;
        }

        else
        {
          v76 = v73;
          v77 = v87;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v76, v87, type metadata accessor for SessionTicket);
          v64 = *(v77 + *(v99 + 44));
          outlined destroy of SessionTicket(v77, type metadata accessor for SessionTicket);
        }
      }

      else
      {
        v64 = *v73;
        v75 = *(v73 + 16);
      }

      v70 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData;
      v71 = v54;
LABEL_22:
      outlined destroy of SessionTicket(v71, v70);
      v66 = 0;
      return v64 | (v66 << 16);
    }

    v63 = v93;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v50, v93, type metadata accessor for HandshakeState.ServerCertificateState);
    v64 = *(v63 + 66);
    v65 = type metadata accessor for HandshakeState.ServerCertificateState;
LABEL_21:
    v70 = v65;
    v71 = v63;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v63 = v95;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v50, v95, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v64 = *(v63 + 66);
    v65 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
    goto LABEL_21;
  }

  v67 = v97;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v50, v97, type metadata accessor for HandshakeState.ReadyState);
  v64 = *(v67 + 66);
  v66 = *(v67 + 68);
  v69 = type metadata accessor for HandshakeState.ReadyState;
LABEL_24:
  outlined destroy of SessionTicket(v67, v69);
  if (v66)
  {
    v64 = 0;
  }

  return v64 | (v66 << 16);
}

uint64_t HandshakeStateMachine.negotiatedPAKE.getter()
{
  v33[0] = type metadata accessor for HandshakeState.ReadyState(0);
  v1 = *(*(v33[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v33[0]);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v33 - v13);
  v15 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HandshakeState(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v23 + 24), v22, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v18, type metadata accessor for HandshakeState.ServerHelloState);
      outlined init with copy of Any?(&v18[*(v15 + 48)], v14, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
      outlined destroy of SessionTicket(v18, type metadata accessor for HandshakeState.ServerHelloState);
      v27 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v27 - 8) + 48))(v14, 1, v27) == 1)
      {
        v26 = v14;
        goto LABEL_9;
      }

      v28 = *v14;
      v32 = v14;
LABEL_19:
      outlined destroy of SessionTicket(v32, type metadata accessor for PAKEClientState);
      v29 = 0;
      return v28 | (v29 << 16);
    }

LABEL_11:
    outlined destroy of SessionTicket(v22, type metadata accessor for HandshakeState);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v7, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      outlined init with copy of Any?(&v7[*(v4 + 48)], v12, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
      outlined destroy of SessionTicket(v7, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v25 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v25 - 8) + 48))(v12, 1, v25) == 1)
      {
        v26 = v12;
LABEL_9:
        outlined destroy of P256.Signing.PrivateKey?(v26, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
LABEL_12:
        v28 = 0;
        v29 = 1;
        return v28 | (v29 << 16);
      }

      v28 = *v12;
      v32 = v12;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_11;
  }

  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v22, v3, type metadata accessor for HandshakeState.ReadyState);
  v31 = &v3[*(v33[0] + 48)];
  v28 = *v31;
  v29 = v31[2];
  outlined destroy of SessionTicket(v3, type metadata accessor for HandshakeState.ReadyState);
  if (v29)
  {
    v28 = 0;
  }

  return v28 | (v29 << 16);
}

void nwswifttls_update_session_state(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && v1[10] && v1[26] && v1[27])
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __nwswifttls_update_session_state_block_invoke;
    v13 = &unk_1E7B2E420;
    v14 = v1;
    nw_protocol_metadata_access_handle();
    v3 = _Block_copy(v14[26]);
    v4 = v14[10];
    v5 = v14[27];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nwswifttls_update_session_state_block_invoke_2;
    block[3] = &unk_1E7B2E448;
    v8 = v4;
    v9 = v3;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

BOOL __nwswifttls_update_session_state_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && !*(a2 + 16))
  {
    *(a2 + 16) = *(a1 + 32);
    *(a2 + 24) = nwswifttls_copy_serialized_session;
  }

  return a2 != 0;
}

uint64_t HandshakeStateMachine.earlyDataAccepted.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v2 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v21 + 24), v20, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    outlined destroy of SessionTicket(v20, type metadata accessor for HandshakeState);
    return 2;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v8, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v23 = v8[*(v5 + 40)];
        v24 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v25 = v8;
      }

      else
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v4, type metadata accessor for HandshakeState.ReadyState);
        v23 = v4[*(ready + 40)];
        v24 = type metadata accessor for HandshakeState.ReadyState;
        v25 = v4;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v16, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v23 = v16[*(v13 + 32)];
      v24 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v25 = v16;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v20, v12, type metadata accessor for HandshakeState.ServerCertificateState);
      v23 = v12[112];
      v24 = type metadata accessor for HandshakeState.ServerCertificateState;
      v25 = v12;
    }

    outlined destroy of SessionTicket(v25, v24);
  }

  return v23;
}

uint64_t nwswifttls_update_early_data_accepted(uint64_t result)
{
  if (result)
  {
    result = *(result + 80);
    if (result)
    {
      return nw_protocol_metadata_access_handle();
    }
  }

  return result;
}

BOOL __nwswifttls_update_early_data_accepted_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 336) = *(a2 + 336) & 0xFFF7 | (8 * (*(a1 + 32) & 1));
  }

  return a2 != 0;
}

uint64_t ByteBuffer.writeKeyShareEntry(_:)(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = bswap32(a1) >> 16;
  v7 = MEMORY[0x1E69E6290];
  v8 = MEMORY[0x1E6969DF8];
  v34 = MEMORY[0x1E69E6290];
  v35 = MEMORY[0x1E6969DF8];
  v32 = &v31;
  v33 = &v32;
  v9 = __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x1E69E6290]);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v32);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a2 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = BYTE6(a3);
    if (v12)
    {
      v13 = a2 >> 32;
    }
  }

  v14 = __OFSUB__(v13, a4);
  v15 = v13 - a4;
  if (v14)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v15 >> 16)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = bswap32(v15) >> 16;
  v34 = v7;
  v35 = v8;
  v32 = &v31;
  v33 = &v32;
  v16 = __swift_project_boxed_opaque_existential_0(&v32, v7);
  v18 = *v16;
  v17 = v16[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v32);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v19 = *(a2 + 16);
      v20 = *(a2 + 24);
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }
  }

  else if (v12)
  {
    v19 = a2;
    v20 = a2 >> 32;
  }

  else
  {
    v19 = 0;
    v20 = BYTE6(a3);
  }

  if (v20 < a4 || v20 < v19)
  {
    goto LABEL_35;
  }

  v21 = Data._Representation.subscript.getter();
  v23 = v22;
  Data.append(_:)();
  v24 = v23;
  v25 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v25)
    {
      outlined consume of Data._Representation(v21, v23);
      v26 = BYTE6(v23);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v25 != 2)
  {
    outlined consume of Data._Representation(v21, v23);
    v26 = 0;
    goto LABEL_30;
  }

  v28 = *(v21 + 16);
  v27 = *(v21 + 24);
  outlined consume of Data._Representation(v21, v24);
  v26 = v27 - v28;
  if (__OFSUB__(v27, v28))
  {
    __break(1u);
LABEL_27:
    outlined consume of Data._Representation(v21, v24);
    LODWORD(v26) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_37;
    }

    v26 = v26;
  }

LABEL_30:
  result = v26 + 4;
  if (__OFADD__(v26, 4))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ByteBuffer.writeServerCertificateType(_:)(uint64_t a1, char a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v27 = a1;
    v30 = MEMORY[0x1E69E6290];
    v31 = MEMORY[0x1E6969DF8];
    v28 = &v27;
    v29 = &v28;
    v4 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
    v6 = *v4;
    v5 = v4[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v28);
    result = 1;
  }

  else
  {
    v8 = *v2;
    v9 = v2[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v13 = *(v8 + 24);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v11 = BYTE6(v9);
      v12 = v8 >> 32;
      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    v27 = 0;
    v14 = MEMORY[0x1E69E6290];
    v15 = MEMORY[0x1E6969DF8];
    v30 = MEMORY[0x1E69E6290];
    v31 = MEMORY[0x1E6969DF8];
    v28 = &v27;
    v29 = &v28;
    v16 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
    v18 = *v16;
    v17 = v16[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v28);
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = a1 + 32;
      do
      {
        v22 = *(v21 + v20++);
        v27 = v22;
        v30 = v14;
        v31 = v15;
        v28 = &v27;
        v29 = &v28;
        v23 = __swift_project_boxed_opaque_existential_0(&v28, v14);
        v25 = *v23;
        v24 = v23[1];
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v28);
      }

      while (v19 != v20);
      if (v19 > 0xFF)
      {
        __break(1u);
      }
    }

    _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v19, v13);
    result = v19 + 1;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ByteBuffer.writePreSharedKeyKexModes(_:)(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
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

  v23 = 0;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v26 = MEMORY[0x1E69E6290];
  v27 = MEMORY[0x1E6969DF8];
  v24 = &v23;
  v25 = &v24;
  v11 = __swift_project_boxed_opaque_existential_0(&v24, MEMORY[0x1E69E6290]);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 32;
    do
    {
      v17 = *(v16 + v15++);
      v23 = v17;
      v26 = v9;
      v27 = v10;
      v24 = &v23;
      v25 = &v24;
      v18 = __swift_project_boxed_opaque_existential_0(&v24, v9);
      v20 = *v18;
      v19 = v18[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v24);
    }

    while (v14 != v15);
    if (v14 > 0xFF)
    {
      __break(1u);
    }
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v14, v8);
  v21 = *MEMORY[0x1E69E9840];
  return v14 + 1;
}

uint64_t sub_1B260E4E4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t ByteBuffer.writeServerName(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    v8 = *v3;
    v9 = v3[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v11 = *(v8 + 24);
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v10)
    {
      v11 = v8 >> 32;
    }

    else
    {
      v11 = BYTE6(v9);
    }

    v39 = 0;
    v12 = MEMORY[0x1E69E6290];
    v13 = MEMORY[0x1E6969DF8];
    v42 = MEMORY[0x1E69E6290];
    v43 = MEMORY[0x1E6969DF8];
    v40 = &v39;
    v41 = &v40;
    v14 = __swift_project_boxed_opaque_existential_0(&v40, MEMORY[0x1E69E6290]);
    v16 = *v14;
    v15 = v14[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v40);
    LOBYTE(v39) = 0;
    v42 = v12;
    v43 = v13;
    v40 = &v39;
    v41 = (&v39 + 1);
    v17 = __swift_project_boxed_opaque_existential_0(&v40, v12);
    v19 = *v17;
    v18 = v17[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v40);
    v20 = *v3;
    v21 = v3[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v23 = *(v20 + 24);
      }

      else
      {
        v23 = 0;
      }
    }

    else if (v22)
    {
      v23 = v20 >> 32;
    }

    else
    {
      v23 = BYTE6(v21);
    }

    v39 = 0;
    v42 = v12;
    v43 = v13;
    v40 = &v39;
    v41 = &v40;
    v24 = __swift_project_boxed_opaque_existential_0(&v40, v12);
    v26 = *v24;
    v25 = v24[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v40);
    v27 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + 16);
        v29 = *(a1 + 24);
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }
    }

    else if (v27)
    {
      v28 = a1;
      v29 = a1 >> 32;
    }

    else
    {
      v28 = 0;
      v29 = BYTE6(a2);
    }

    if (v29 < a3 || v29 < v28)
    {
      __break(1u);
      goto LABEL_43;
    }

    v30 = Data._Representation.subscript.getter();
    v32 = v31;
    Data.append(_:)();
    v33 = v32;
    v34 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v34 != 2)
      {
        outlined consume of Data._Representation(v30, v32);
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(0, v23);
        v30 = 0;
        v37 = 3;
        goto LABEL_40;
      }

      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      outlined consume of Data._Representation(v30, v33);
      v30 = v35 - v36;
      if (!__OFSUB__(v35, v36))
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    else if (!v34)
    {
      outlined consume of Data._Representation(v30, v32);
      v30 = BYTE6(v32);
      _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(BYTE6(v32), v23);
LABEL_38:
      v37 = v30 + 3;
LABEL_40:
      _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v37, v11);
      result = v30 + 5;
      goto LABEL_41;
    }

    outlined consume of Data._Representation(v30, v33);
    if (__OFSUB__(HIDWORD(v30), v30))
    {
      goto LABEL_46;
    }

    v30 = HIDWORD(v30) - v30;
LABEL_35:
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (!(v30 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v30, v23);
        if (v30 <= 0xFFFC)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = 0;
LABEL_41:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B260EDD8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void *ClientHello.serverCertificateTypes.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return &outlined read-only object #0 of ClientHello.serverCertificateTypes.getter;
  }

  for (i = (v1 + 112); (*i & 0xF0) != 0x70; i += 88)
  {
LABEL_3:
    if (!--v2)
    {
      return &outlined read-only object #0 of ClientHello.serverCertificateTypes.getter;
    }
  }

  if (*(i - 18))
  {
    outlined copy of Extension.ServerCertificateType(*(i - 10), 1);
    goto LABEL_3;
  }

  v5 = *(i - 10);
  (outlined copy of Extension.ServerCertificateType)();
  return v5;
}

uint64_t specialized ClientSessionKeyManager.clientEarlyTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  outlined init with copy of Any?(v2, &v18 - v10, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of P256.Signing.PublicKey?(v11, v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      v13 = *(v4 + 44);
      v14 = type metadata accessor for SymmetricKey();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, &v7[v13], v14);
      outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }
  }

  else
  {
    outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  }

  v17 = type metadata accessor for SymmetricKey();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t nwswifttls_add_message(void *a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = v7;
  v9 = 0;
  if (v7)
  {
    if (a3)
    {
      if (a2 <= 3)
      {
        v9 = *(v7 + a2 + 11);
        if (v9)
        {
          v10 = *(v9 + 24);
          if (v10 && *(v10 + 88) && (v13[0] = 0, v13[1] = 0, nw_frame_array_init(), !HIDWORD(a4)) && (*(*(v9 + 24) + 88))(v9, v8 + 8, a4, a4, 1, v13) == 1)
          {
            v11 = nw_frame_array_first();
            if (v11)
            {
              nw_frame_unclaimed_bytes();
              v9 = a4 == 0;
              if (!a4)
              {
                nw_frame_claim();
                nw_frame_collapse();
                nw_frame_unclaim();
                nw_frame_array_remove();
                nw_frame_array_append();
              }
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t nwswifttls_send_messages(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3)
  {
    if (a2 <= 3)
    {
      v5 = *&v3[8 * a2 + 88];
      if (v5)
      {
        v6 = *(v5 + 24);
        if (v6 && *(v6 + 96))
        {
          v7 = &v3[16 * a2];
          if ((nw_frame_array_is_empty() & 1) == 0)
          {
            (*(*(v5 + 24) + 96))(v5, v7 + 120);
          }

          v5 = 1;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

Swift::Int32 __swiftcall STLSClientHandshaker.getErrorCode()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError);
  if (v1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    if (v6 == 2)
    {
      if (v4 <= 6)
      {
        if (__PAIR128__((v4 >= 3) + v5 - 1, v4 - 3) < 2)
        {

          LODWORD(v1) = -9856;
          return v1;
        }

        if (v4 ^ 6 | v5)
        {
          goto LABEL_11;
        }

LABEL_12:

        LODWORD(v1) = -9858;
        return v1;
      }

      if (!(v4 ^ 7 | v5))
      {

        LODWORD(v1) = -9830;
        return v1;
      }

      if (!(v4 ^ 0xC | v5))
      {

        LODWORD(v1) = -9808;
        return v1;
      }
    }

LABEL_11:
    outlined consume of TLSError(v4, v5, v6);
    goto LABEL_12;
  }

  return v1;
}

NSData_optional __swiftcall STLSClientHandshaker.getEncryptionSecret(write:)(Swift::Bool write)
{
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v27 - v10;
  v12 = type metadata accessor for EncryptionLevel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  if (write)
  {
    v20 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  }

  else
  {
    v20 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  }

  v21 = v1 + v20;
  swift_beginAccess();
  outlined init with copy of Any?(v21, v11, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v23 = 0;
  }

  else
  {
    outlined init with take of HandshakeStateMachine(v11, v19, type metadata accessor for EncryptionLevel);
    outlined init with copy of HandshakeStateMachine(v19, v17, type metadata accessor for EncryptionLevel);
    (*(v4 + 32))(v7, v17, v3);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v4 + 8))(v7, v3);
    v24 = v27[1];
    v25 = v27[2];
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v24, v25);
    outlined destroy of ExportedAuthenticator(v19, type metadata accessor for EncryptionLevel);
    v23 = isa;
  }

  result.value.super.isa = v23;
  result.is_nil = v22;
  return result;
}

uint64_t closure #1 in STLSServerHandshaker.getEncryptionSecret(write:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *nwswifttls_dispatch_data_from_nsdata(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 _createDispatchData];
  }

  return a1;
}

void nwswifttls_update_encryption_secret(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v8 = a1;
  v9 = a6;
  v10 = v9;
  if (v8 && v9)
  {
    v14 = 0;
    if ((v8[38] & 1) == 0 && *(v8 + 282) == 1 && nwswifttls_get_encryption_key_label(v8, a5, &v14))
    {
      v11 = v14;
      v12 = [v8[37] getClientRandom];
      ssl_log_secret(v11, v12, v10);
    }

    if (v8[10] && v8[23])
    {
      v13 = v8;
      nw_protocol_metadata_access_handle();
      (*(v13[23] + 2))();
    }
  }
}

uint64_t @objc STLSClientHandshaker.getNegotiatedEPSK()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(a1 + v9, v8, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v10 - 8) + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = a1;
    v13 = a3();

    outlined destroy of ExportedAuthenticator(v8, type metadata accessor for HandshakeStateMachine);
    return v13 & 1;
  }

  return result;
}

BOOL __nwswifttls_update_encryption_secret_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 34) = *(a1 + 40);
    v4 = [*(*(a1 + 32) + 296) getNegotiatedGroup];
    v5 = [v4 UTF8String];

    if (v5)
    {
      v6 = *(a2 + 176);
      if (v6)
      {
        free(v6);
        *(a2 + 176) = 0;
      }

      *(a2 + 176) = strdup(v5);
    }

    *(a2 + 320) = *(a1 + 42);
    if ([*(*(a1 + 32) + 296) getPAKEOffered])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFB | v7;
    if ([*(*(a1 + 32) + 296) getNegotiatedEPSK])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFD | v8;
    *(a2 + 376) = *(a2 + 376) & 0xFE | [*(*(a1 + 32) + 296) getEPSKOffered];
  }

  return a2 != 0;
}

uint64_t HandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v2 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v0 + *(v17 + 24), v16, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v12, type metadata accessor for HandshakeState.ServerHelloState);
      v19 = v12[*(v9 + 36)];
      v20 = type metadata accessor for HandshakeState.ServerHelloState;
      v21 = v12;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v4, type metadata accessor for HandshakeState.ReadyState);
      v19 = v4[*(ready + 52)];
      v20 = type metadata accessor for HandshakeState.ReadyState;
      v21 = v4;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v16, v8, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v19 = v8[*(v5 + 40)];
    v20 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    v21 = v8;
LABEL_10:
    outlined destroy of SessionTicket(v21, v20);
    return v19;
  }

  outlined destroy of SessionTicket(v16, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t HandshakeStateMachine.epskOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v34 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v2 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HandshakeState(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HandshakeStateMachine(0);
  outlined init with copy of SessionTicket(v36 + *(v24 + 24), v23, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v4, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v26 = v4[*(v33 + 48)];
        v27 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v28 = v4;
      }

      else
      {
        v29 = v34;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v34, type metadata accessor for HandshakeState.ReadyState);
        v26 = *(v29 + *(ready + 56));
        v27 = type metadata accessor for HandshakeState.ReadyState;
        v28 = v29;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v26 = v11[*(v8 + 52)];
      v27 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v28 = v11;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v7, type metadata accessor for HandshakeState.ServerCertificateState);
      v26 = v7[*(v32 + 48)];
      v27 = type metadata accessor for HandshakeState.ServerCertificateState;
      v28 = v7;
    }

LABEL_14:
    outlined destroy of SessionTicket(v28, v27);
    return v26;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v19, type metadata accessor for HandshakeState.ClientHelloState);
      v26 = *(*&v19[*(v16 + 44)] + 16) != 0;
      v27 = type metadata accessor for HandshakeState.ClientHelloState;
      v28 = v19;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v23, v15, type metadata accessor for HandshakeState.ServerHelloState);
      v26 = v15[*(v12 + 52)];
      v27 = type metadata accessor for HandshakeState.ServerHelloState;
      v28 = v15;
    }

    goto LABEL_14;
  }

  outlined destroy of SessionTicket(v23, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t nwswifttls_copy_info(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (v4 && (v5 = *(a1 + 32)) != 0 && (v6 = *(v5 + 24)) != 0 && (v7 = *(v6 + 224)) != 0)
  {
    if (a2 == 255)
    {
      v8 = v7();
      if (!v8)
      {
        v8 = MEMORY[0x1B274DE70]();
      }

      v9 = v4[10];
      nw_array_append();
    }

    else
    {
      v8 = v7();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void nwswifttls_deallocate_options(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    free(*(a2 + 8));
    free(*(a2 + 16));
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;

    v4 = *(a2 + 232);
    *(a2 + 232) = 0;

    v5 = *(a2 + 48);
    *(a2 + 48) = 0;

    v6 = *(a2 + 56);
    *(a2 + 56) = 0;

    v7 = *(a2 + 88);
    *(a2 + 88) = 0;

    v8 = *(a2 + 96);
    *(a2 + 96) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 120);
    *(a2 + 120) = 0;

    v12 = *(a2 + 128);
    *(a2 + 128) = 0;

    v13 = *(a2 + 176);
    *(a2 + 176) = 0;

    v14 = *(a2 + 184);
    *(a2 + 184) = 0;

    v15 = *(a2 + 72);
    *(a2 + 72) = 0;

    v16 = *(a2 + 192);
    *(a2 + 192) = 0;

    v17 = *(a2 + 136);
    *(a2 + 136) = 0;

    v18 = *(a2 + 144);
    *(a2 + 144) = 0;

    v19 = *(a2 + 152);
    *(a2 + 152) = 0;

    v20 = *(a2 + 160);
    *(a2 + 160) = 0;

    v21 = *(a2 + 168);
    *(a2 + 168) = 0;

    v22 = *(a2 + 176);
    *(a2 + 176) = 0;

    v23 = *(a2 + 184);
    *(a2 + 184) = 0;

    v24 = *(a2 + 336);
    *(a2 + 336) = 0;

    v25 = *(a2 + 264);
    *(a2 + 264) = 0;

    v26 = *(a2 + 256);
    *(a2 + 256) = 0;

    v27 = *(a2 + 80);
    *(a2 + 80) = 0;

    free(*(a2 + 344));
    *(a2 + 360) = 0;
    v28 = *(a2 + 280);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 280) = 0;
    }

    v29 = *(a2 + 384);
    if (v29)
    {
      CFRelease(v29);
    }

    *(a2 + 384) = 0;
    v30 = *(a2 + 392);
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = *(a2 + 400);
    *(a2 + 392) = 0;
    *(a2 + 400) = 0;
  }

  cc_clear();

  free(a2);
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV21handleReadServerHello33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for EncryptionLevel(0);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v50 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v50 - v16;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v55 = __swift_project_value_buffer(v17, logger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v10;
    v21 = a1;
    v22 = a2;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B25F5000, v18, v19, "client expecting server hello", v23, 2u);
    v24 = v23;
    a2 = v22;
    a1 = v21;
    v10 = v20;
    v4 = v2;
    MEMORY[0x1B274ECF0](v24, -1, -1);
  }

  if (v81[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  result = _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v81, v81, v67, &v69);
  if (v4)
  {
    v30 = v67[0];
    v31 = v67[1];
    v32 = v68;
LABEL_11:
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    return result;
  }

  v50 = a2;
  v63[6] = v75;
  v63[7] = v76;
  v63[2] = v71;
  v63[3] = v72;
  v63[4] = v73;
  v63[5] = v74;
  v63[0] = v69;
  v63[1] = v70;
  v66[5] = v75;
  v66[6] = v76;
  v66[1] = v71;
  v66[2] = v72;
  v66[3] = v73;
  v66[4] = v74;
  v64 = v77;
  LOBYTE(v66[7]) = v77;
  v65 = v69;
  v66[0] = v70;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v65) == 1)
  {
    a2 = v50;
LABEL_6:
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B25F5000, v25, v26, "incomplete message, waiting for more data", v27, 2u);
      MEMORY[0x1B274ECF0](v27, -1, -1);
    }

    v28 = type metadata accessor for PartialHandshakeResult(0);
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }

  v78[4] = *(&v66[4] + 8);
  v79[0] = *(&v66[5] + 8);
  *(v79 + 9) = *(&v66[6] + 1);
  v78[0] = *(v66 + 8);
  v78[1] = *(&v66[1] + 8);
  v78[2] = *(&v66[2] + 8);
  v78[3] = *(&v66[3] + 8);
  if (LOBYTE(v66[7]) != 1)
  {
    HandshakeStateMachine.logUnexpectedMessage(message:)(v78);
    v57 = xmmword_1B26C6430;
    v32 = 2;
    LOBYTE(v58) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = outlined destroy of P256.Signing.PrivateKey?(v63, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v31 = 0;
    v30 = 4;
    goto LABEL_11;
  }

  v80[2] = *(&v66[2] + 8);
  v80[3] = *(&v66[3] + 8);
  v80[4] = *(&v66[4] + 8);
  v80[5] = *(&v66[5] + 8);
  v80[0] = *(v66 + 8);
  v80[1] = *(&v66[1] + 8);
  v61 = *(&v66[4] + 8);
  v62[0] = *(&v66[5] + 8);
  *(v62 + 9) = *(&v66[6] + 1);
  v57 = *(v66 + 8);
  v58 = *(&v66[1] + 8);
  v59 = *(&v66[2] + 8);
  v60 = *(&v66[3] + 8);
  outlined init with copy of ServerHello(&v57, &v56);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1B25F5000, v33, v34, "client got server hello", v35, 2u);
    MEMORY[0x1B274ECF0](v35, -1, -1);
  }

  v36 = type metadata accessor for HandshakeStateMachine(0);
  v37 = v81;
  v38 = (v81 + *(v36 + 28));
  v39 = v38[3];
  v40 = v38[4];
  v41 = __swift_project_boxed_opaque_existential_0(v38, v39);
  v42 = v37 + *(v36 + 24);
  _s15SwiftTLSLibrary14HandshakeStateO19receivedServerHello_5bytes5clockAA15EncryptionLevelO10newReadKey_AH0l5WriteN0tAA0fG0V_AA10ByteBufferVxtAA8TLSErrorOYKAA0A8TLSClockRzlF(v13, v10, v80, v65, *(&v65 + 1), *&v66[0], v41, v39, v40, v67);
  outlined destroy of P256.Signing.PrivateKey?(v63, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of HandshakeMessage(v66 + 8);
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v13, v54, type metadata accessor for EncryptionLevel);
  v43 = v51;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v10, v51, type metadata accessor for EncryptionLevel);
  v44 = type metadata accessor for PartialHandshakeResult(0);
  v45 = v44[5];
  v46 = v50;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v43, v50 + v45, type metadata accessor for EncryptionLevel);
  v47 = v53;
  v48 = *(v52 + 56);
  v48(v46 + v45, 0, 1, v53);
  v49 = v44[6];
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v54, v46 + v49, type metadata accessor for EncryptionLevel);
  v48(v46 + v49, 0, 1, v47);
  *v46 = xmmword_1B26C5EF0;
  *(v46 + 16) = 0;
  *(v46 + v44[7]) = xmmword_1B26C5EF0;
  return (*(*(v44 - 1) + 56))(v46, 0, 1, v44);
}

uint64_t _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v8 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v9 = v8;
  ByteBuffer.readRandom()(v66);
  if (v67)
  {
    goto LABEL_6;
  }

  v10 = v66[0];
  v68 = v66[1];
  v54 = v66[3];
  v55 = v66[2];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  outlined copy of Data._Representation(*a1, v11);
  v14 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v14 & 0x100) != 0 || (v15 = ByteBuffer.readSlice(length:)(v14), v16 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_6:
    v61 = 0uLL;
    v18 = 2;
    LOBYTE(v62) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v20 = 0;
    v21 = 0;
LABEL_7:
    *a2 = v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = v18;
    return result;
  }

  *&v64 = v15;
  *(&v64 + 1) = v16;
  v65 = v17;
  _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(&v64, &v58, &v61);
  if (v3)
  {
    v20 = v58;
    v21 = v59;
    v18 = v60;
    v23 = *(&v64 + 1);
    v22 = v64;
LABEL_29:
    outlined consume of Data._Representation(v22, v23);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_30:
    *&v61 = v20;
    *(&v61 + 1) = v21;
    LOBYTE(v62) = v18;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    goto LABEL_7;
  }

  LOBYTE(v24) = v64;
  v25 = *(&v64 + 1) >> 62;
  if ((*(&v64 + 1) >> 62) > 1)
  {
    if (v25 == 2)
    {
      v26 = *(v64 + 24);
    }

    else
    {
      v26 = 0;
    }
  }

  else if (v25)
  {
    v26 = v64 >> 32;
  }

  else
  {
    v26 = BYTE14(v64);
  }

  if (__OFSUB__(v26, v65))
  {
    __break(1u);
LABEL_46:
    v46 = v24;
    swift_once();
    LOBYTE(v24) = v46;
    goto LABEL_23;
  }

  if (v26 != v65)
  {
    v56 = xmmword_1B26C66C0;
    v18 = 2;
    v57 = 2;
    v37 = *(&v64 + 1);
    v36 = v64;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v23 = v37;
    v22 = v36;
    v21 = 0;
    v20 = 1;
    goto LABEL_29;
  }

  v53 = 0;
  outlined consume of Data._Representation(v64, *(&v64 + 1));
  outlined consume of Data._Representation(v12, v11);
  v51 = v62;
  v52 = v61;
  v12 = v63;
  v27 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v27 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v5 = v27;
  v24 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v24 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for helloRetryRequest != -1)
  {
    goto LABEL_46;
  }

LABEL_23:
  v28 = 0;
  v49 = v24;
  v48 = v12;
  if (v10 == static Random.helloRetryRequest && __PAIR128__(v55, v68) == xmmword_1ED4D5F88)
  {
    v28 = v54 == qword_1ED4D5F98;
  }

  v50 = v28;
  v29 = *a1;
  v30 = a1[1];
  v31 = a1[2];
  outlined copy of Data._Representation(*a1, v30);
  v32 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v32 & 0x10000) != 0 || (v47 = v29, v33 = ByteBuffer.readSlice(length:)(v32), v34 >> 60 == 15))
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v29;
    a1[1] = v30;
    a1[2] = v31;
    goto LABEL_6;
  }

  *&v61 = v33;
  *(&v61 + 1) = v34;
  *&v62 = v35;
  _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfcSayAA9ExtensionOGAFzAHYKXEfU_(&v61, v50, &v58, &v56);
  if (v53)
  {
    v20 = v58;
    v21 = v59;
    v18 = v60;
    v39 = *(&v61 + 1);
    v38 = v61;
LABEL_44:
    outlined consume of Data._Representation(v38, v39);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v47;
    a1[1] = v30;
    a1[2] = v31;
    goto LABEL_30;
  }

  result = v61;
  v40 = *(&v61 + 1) >> 62;
  if ((*(&v61 + 1) >> 62) > 1)
  {
    if (v40 == 2)
    {
      v41 = *(v61 + 24);
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v40)
  {
    v41 = v61 >> 32;
  }

  else
  {
    v41 = BYTE14(v61);
  }

  if (__OFSUB__(v41, v62))
  {
    __break(1u);
  }

  else
  {
    if (v41 != v62)
    {
      v64 = xmmword_1B26C66C0;
      v18 = 2;
      LOBYTE(v65) = 2;
      v45 = *(&v61 + 1);
      v44 = v61;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      v39 = v45;
      v38 = v44;
      v21 = 0;
      v20 = 1;
      goto LABEL_44;
    }

    outlined consume of Data._Representation(v61, *(&v61 + 1));
    result = outlined consume of Data._Representation(v29, v30);
    *a3 = HIBYTE(v9);
    *(a3 + 1) = v9;
    v42 = v68;
    *(a3 + 8) = v10;
    *(a3 + 16) = v42;
    v43 = v56;
    *(a3 + 24) = v55;
    *(a3 + 32) = v54;
    *(a3 + 56) = v51;
    *(a3 + 40) = v52;
    *(a3 + 72) = v48;
    *(a3 + 80) = v5;
    *(a3 + 82) = v49;
    *(a3 + 88) = v43;
  }

  return result;
}

uint64_t ByteBuffer.readRandom()@<X0>(uint64_t a1@<X8>)
{
  result = v1[2];
  v3 = result + 32;
  if (__OFADD__(result, 32))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v3)
      {
        goto LABEL_7;
      }
    }

    else if (v3 <= 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_22:
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    return result;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v3 >= result)
  {
    v9 = Data._Representation.subscript.getter();
    v10 = v9;
    v12 = v11;
    v1[2] = v3;
    v13 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v13 != 2)
      {
LABEL_21:
        v20 = Data._Representation.subscript.getter();
        v22 = v21;
        v14 = _s15SwiftTLSLibrary6RandomVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5Tf4g_n(v20, v21);
        v15 = v23;
        v16 = v24;
        v17 = v25;
        outlined consume of Data._Representation(v20, v22);
        result = outlined consume of Data._Representation(v10, v12);
        v18 = 0;
        goto LABEL_22;
      }

      v9 = *(v9 + 16);
      v19 = *(v10 + 24);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_21;
      }

      v9 = v9;
      v19 = v10 >> 32;
    }

    if (v19 < v9)
    {
      __break(1u);
    }

    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v19 = a1;
  v20 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  *&v17[-32] = &v19;
  *&v17[-24] = a3;
  *&v17[-16] = a4;
  *&v17[-8] = a3;
  result = specialized Data.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in UnsafeMutableRawBufferPointer.copyBytes<A>(from:), &v17[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_9;
    }

    v14 = *(v19 + 16);
  }

  else if (!v13)
  {
    goto LABEL_9;
  }

  outlined copy of Data._Representation(v19, v20);
LABEL_9:
  Data.Iterator.init(_:at:)();
  type metadata accessor for Data.Iterator();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
  result = dispatch thunk of IteratorProtocol.next()();
  v15 = 0;
  if (v18)
  {
LABEL_13:
    *&v12[*(v8 + 36)] = v15;
    return outlined destroy of EnumeratedSequence<Data>.Iterator(v12);
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      *(a3 + v16) = v17[6];
      result = dispatch thunk of IteratorProtocol.next()();
      ++v16;
      if (v18 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary6RandomVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5Tf4g_n(uint64_t result, unint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 == 32)
  {
    memset(v8, 0, sizeof(v8));
    specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(result, a2, v8, v9);
    result = *&v8[0];
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v11 = a3;
      *&v11[8] = a4;
      v11[10] = BYTE2(a4);
      v11[11] = BYTE3(a4);
      v11[12] = BYTE4(a4);
      v11[13] = BYTE5(a4);
      result = (a1)(&v12, v11, BYTE6(a4));
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFytSg_Tg5015_s10Foundation4b17V32withContiguousC50IfAvailableyxSgxSRys5UInt8VGKXEKlFAESWKXEfU_yt_TG5SRys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_nTf4nng_n(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v11, 0, sizeof(v11));
  result = (a1)(&v12, v11, 0);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  LOBYTE(result) = 0;
LABEL_13:
  result &= 1u;
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFytSg_Tg5015_s10Foundation4b17V32withContiguousC50IfAvailableyxSgxSRys5UInt8VGKXEKlFAESWKXEfU_yt_TG5SRys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1ncn_nTf4nng_n(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x1B274CD90]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v8, v14, a4) & 1;
}

void *partial apply for specialized closure #1 in UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

void _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    if (v8)
    {
      v9 = v5 >> 32;
    }
  }

  v10 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v10 <= 32)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v16 = *(v5 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = BYTE6(v6);
      v16 = v5 >> 32;
      if (!v8)
      {
        v16 = v15;
      }
    }

    if (__OFSUB__(v16, v7))
    {
      __break(1u);
    }

    else
    {
      v17 = ByteBuffer.readSlice(length:)(v16 - v7);
      if (v18 >> 60 == 15)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v20 = v17;
      v21 = v18;
      v22 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v22 == 2)
        {
          v23 = *(v17 + 24);
        }

        else
        {
          v23 = 0;
        }
      }

      else if (v22)
      {
        v23 = v17 >> 32;
      }

      else
      {
        v23 = BYTE6(v18);
      }

      if (v23 >= v19)
      {
        v24 = Data._Representation.subscript.getter();
        v26 = v25;
        outlined consume of ByteBuffer?(v20, v21);
        _s15SwiftTLSLibrary15LegacySessionIDVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5(v24, v26, v28);
        v27 = v28[1];
        *a3 = v28[0];
        *(a3 + 16) = v27;
        *(a3 + 32) = v29;
        return;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_33:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_1B25F5000, v12, v13, "reading legacy session id: too many bytes %ld, but expected <= 32", v14, 0xCu);
    MEMORY[0x1B274ECF0](v14, -1, -1);
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  *a2 = xmmword_1B26C66C0;
  *(a2 + 16) = 2;
}

double _s15SwiftTLSLibrary15LegacySessionIDVyACxcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt0g5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v17 = 0u;
      v18 = 0u;
      specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(a1, a2, &v17, v19);
      outlined consume of Data._Representation(a1, a2);
      v11 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v7 = v7;
LABEL_10:
  if (v7 > 32)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = 0u;
  v18 = 0u;
  specialized UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(a1, a2, &v17, v19);
  if (v6 == 2)
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    outlined consume of Data._Representation(a1, a2);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v6 != 1)
  {
LABEL_19:
    outlined consume of Data._Representation(a1, a2);
    v11 = BYTE6(a2);
    goto LABEL_20;
  }

  outlined consume of Data._Representation(a1, a2);
  LODWORD(v11) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_23;
  }

  v11 = v11;
LABEL_20:
  result = *&v17;
  v15 = v18;
  *a3 = v17;
  *(a3 + 16) = v15;
  *(a3 + 32) = v11;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfcSayAA9ExtensionOGAFzAHYKXEfU_@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v76 = *MEMORY[0x1E69E9840];
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x1E69E7CC0]);
  v8 = a1[1];
  v52 = *a1;
  LOWORD(v73) = 0;
  v9 = a1[2];
  v10 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
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
  }

  v11 = result;
  v12 = v8 >> 62;
  v53 = BYTE6(v8);
  v54 = v8 >> 62;
  while (1)
  {
    if (v12 <= 1)
    {
      v13 = v53;
      if (v12)
      {
        v13 = v52 >> 32;
      }

LABEL_8:
      if (v13 < v10)
      {
        goto LABEL_55;
      }

      goto LABEL_11;
    }

    if (v12 == 2)
    {
      v13 = *(v52 + 24);
      goto LABEL_8;
    }

    if (v10 >= 1)
    {
LABEL_55:
      *a4 = v11;
      goto LABEL_60;
    }

LABEL_11:
    v14 = *a1;
    v15 = a1[1];
    *&v67 = *a1;
    *(&v67 + 1) = v15;
    if (v10 < v9)
    {
      goto LABEL_62;
    }

    v56 = v11;
    v57 = v5;
    *&v59 = v9;
    *(&v59 + 1) = v10;
    v58 = v10;
    outlined copy of Data._Representation(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v67, *(&v67 + 1));
    v16 = v73;
    a1[2] = v58;
    v18 = *a1;
    v17 = a1[1];
    LOWORD(v73) = 0;
    v19 = v58 + 2;
    if (__OFADD__(v58, 2))
    {
      goto LABEL_63;
    }

    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      v21 = v18 >> 32;
    }

    else
    {
      v21 = BYTE6(v17);
    }

LABEL_19:
    if (v21 < v19)
    {
      goto LABEL_56;
    }

LABEL_22:
    *&v67 = v18;
    *(&v67 + 1) = v17;
    if (v19 < v58)
    {
      goto LABEL_64;
    }

    *&v59 = v58;
    *(&v59 + 1) = v58 + 2;
    outlined copy of Data._Representation(v18, v17);
    outlined copy of Data._Representation(v18, v17);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v67, *(&v67 + 1));
    v22 = bswap32(v73) >> 16;
    a1[2] = v19;
    v23 = v19 + v22;
    if (__OFADD__(v19, v22))
    {
      goto LABEL_65;
    }

    v24 = *a1;
    v25 = a1[1];
    v26 = v25 >> 62;
    if ((v25 >> 62) <= 1)
    {
      if (v26)
      {
        v27 = v24 >> 32;
      }

      else
      {
        v27 = BYTE6(v25);
      }

LABEL_30:
      if (v27 < v23)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    }

    if (v26 == 2)
    {
      v27 = *(v24 + 24);
      goto LABEL_30;
    }

    if (v23 > 0)
    {
      goto LABEL_57;
    }

LABEL_33:
    if (v23 < v19)
    {
      goto LABEL_66;
    }

    v28 = Data._Representation.subscript.getter();
    v30 = 0;
    a1[2] = v23;
    v31 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      v32 = v57;
      if (v31 == 2)
      {
        v30 = *(v28 + 16);
      }
    }

    else
    {
      v32 = v57;
      if (v31)
      {
        v30 = v28;
      }
    }

    v73 = v28;
    v74 = v29;
    v75 = v30;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v73, bswap32(v16) >> 16, 2, a2 & 1, v65, &v67);
    if (v32)
    {
      v48 = v65[0];
      v47 = v65[1];
      v42 = v66;
      v46 = v73;
      v45 = v74;
      goto LABEL_59;
    }

    v5 = 0;
    v33 = v74 >> 62;
    if ((v74 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v34 = *(v73 + 24);
      }

      else
      {
        v34 = 0;
      }
    }

    else if (v33)
    {
      v34 = v73 >> 32;
    }

    else
    {
      v34 = BYTE6(v74);
    }

    if (__OFSUB__(v34, v75))
    {
      goto LABEL_67;
    }

    if (v34 != v75)
    {
      v42 = 2;
      v43 = v73;
      v44 = v74;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v61 = v69;
      v62 = v70;
      v63 = v71;
      v64 = v72;
      v59 = v67;
      v60 = v68;
      outlined destroy of Extension(&v59);
      v45 = v44;
      v46 = v43;
      v47 = 0;
      v48 = 1;
LABEL_59:
      outlined consume of Data._Representation(v46, v45);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v18;
      a1[1] = v17;
      a1[2] = v58;
      *&v67 = v48;
      *(&v67 + 1) = v47;
      LOBYTE(v68) = v42;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      *a3 = v48;
      *(a3 + 8) = v47;
      *(a3 + 16) = v42;
      goto LABEL_60;
    }

    outlined consume of Data._Representation(v73, v74);
    result = outlined consume of Data._Representation(v18, v17);
    v64 = v72;
    v62 = v70;
    v63 = v71;
    v60 = v68;
    v61 = v69;
    v59 = v67;
    v11 = v56;
    v36 = *(v56 + 16);
    v35 = *(v56 + 24);
    if (v36 >= v35 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v56);
      v11 = result;
    }

    LODWORD(v12) = v54;
    *(v11 + 16) = v36 + 1;
    v37 = v11 + 88 * v36;
    v38 = v60;
    *(v37 + 32) = v59;
    *(v37 + 48) = v38;
    v39 = v61;
    v40 = v62;
    v41 = v63;
    *(v37 + 112) = v64;
    *(v37 + 80) = v40;
    *(v37 + 96) = v41;
    *(v37 + 64) = v39;
    LOWORD(v73) = 0;
    v9 = a1[2];
    v10 = v9 + 2;
    if (__OFADD__(v9, 2))
    {
      goto LABEL_61;
    }
  }

  if (v20 == 2)
  {
    v21 = *(v18 + 24);
    goto LABEL_19;
  }

  if (v19 < 1)
  {
    goto LABEL_22;
  }

LABEL_56:
  outlined copy of Data._Representation(v18, v17);
  v24 = *a1;
  v25 = a1[1];
LABEL_57:
  result = outlined consume of Data._Representation(v24, v25);
  *a1 = v18;
  a1[1] = v17;
  a1[2] = v58;
  *a4 = v56;
LABEL_60:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKF(unsigned __int8 a1, char a2)
{
  v6 = v2;
  if (a1 == 1)
  {
    v11 = *v2;
    v10 = v2[1];
    v12 = v2[2];
    outlined copy of Data._Representation(*v2, v10);
    v13 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v13 & 0x10000) != 0 || (v14 = ByteBuffer.readSlice(length:)(v13), v15 >> 60 == 15))
    {
      outlined consume of Data._Representation(*v2, v2[1]);
      *v2 = v11;
      v2[1] = v10;
      v2[2] = v12;
      goto LABEL_14;
    }

    *&v43 = v14;
    *(&v43 + 1) = v15;
    v44 = v16;
    _s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKFSayAJ0fG5EntryVGACzXEfU_(&v43, &v45);
    if (v3)
    {
      v9 = v40;
      v23 = v41;
      v24 = v42;
      v26 = *(&v43 + 1);
      v25 = v43;
    }

    else
    {
      v20 = *(&v43 + 1);
      v27 = v43;
      v28 = *(&v43 + 1) >> 62;
      if ((*(&v43 + 1) >> 62) > 1)
      {
        if (v28 == 2)
        {
          v29 = *(v43 + 24);
        }

        else
        {
          v29 = 0;
        }
      }

      else if (v28)
      {
        v29 = v43 >> 32;
      }

      else
      {
        v29 = BYTE14(v43);
      }

      if (__OFSUB__(v29, v44))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v29 == v44)
      {
        outlined consume of Data._Representation(v43, *(&v43 + 1));
        outlined consume of Data._Representation(v11, v10);
        return v45;
      }

      v24 = 2;
      v33 = *(&v43 + 1);
      v32 = v43;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      v26 = v33;
      v25 = v32;
      v23 = 0;
      v9 = 1;
    }

    outlined consume of Data._Representation(v25, v26);
    outlined consume of Data._Representation(*v6, v6[1]);
    *v6 = v11;
    v6[1] = v10;
    v6[2] = v12;
    *&v43 = v9;
    *(&v43 + 1) = v23;
    LOBYTE(v44) = v24;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v9;
  }

  if (a1 != 2)
  {
    v9 = a1 | 0x330000;
    v43 = v9;
    LOBYTE(v44) = 0;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v9;
  }

  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if (a2)
  {
    if ((v8 & 0x10000) == 0)
    {
      return v8;
    }

LABEL_14:
    v43 = 0uLL;
    LOBYTE(v44) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  if ((v8 & 0x10000) != 0)
  {
    goto LABEL_14;
  }

  v17 = v8;
  v11 = *v2;
  v10 = v2[1];
  v5 = v2[2];
  outlined copy of Data._Representation(*v2, v10);
  v18 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v18 & 0x10000) != 0 || (v19 = ByteBuffer.readSlice(length:)(v18), v20 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v11;
    v2[1] = v10;
    v2[2] = v5;
    goto LABEL_14;
  }

  *&v43 = v19;
  *(&v43 + 1) = v20;
  v44 = v21;
  v30 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v19 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v19 >> 32;
  }

  else
  {
    v31 = BYTE6(v20);
  }

  v27 = v31 - v21;
  if (__OFSUB__(v31, v21))
  {
    goto LABEL_50;
  }

  v27 = ByteBuffer.readSlice(length:)(v27);
  v39 = v27;
  if (v20 >> 60 == 15)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v4 = v20;
  v20 = *(&v43 + 1);
  v27 = v43;
  v34 = *(&v43 + 1) >> 62;
  if ((*(&v43 + 1) >> 62) > 1)
  {
    if (v34 == 2)
    {
      v35 = *(v43 + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else if (v34)
  {
    v35 = v43 >> 32;
  }

  else
  {
    v35 = BYTE14(v43);
  }

  if (__OFSUB__(v35, v44))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v35 == v44)
  {
    outlined consume of Data._Representation(v43, *(&v43 + 1));
    outlined consume of Data._Representation(v11, v10);
    return v17;
  }

LABEL_53:
  v36 = v27;
  v38 = v20;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v39, v4);
  outlined consume of Data._Representation(v36, v38);
  outlined consume of Data._Representation(*v6, v6[1]);
  *v6 = v11;
  v6[1] = v10;
  v6[2] = v5;
  v43 = xmmword_1B26C66C0;
  LOBYTE(v44) = 2;
  swift_willThrowTypedImpl();
  swift_allocError();
  *v37 = xmmword_1B26C66C0;
  *(v37 + 16) = 2;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 != 1)
  {
    if (a1 != 2)
    {
      v4 = a1 | 0x2B0000;
      v25 = v4;
      v26 = 0;
      LOBYTE(v27) = 0;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v4;
    }

    v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v3 & 0x10000) == 0)
    {
      return bswap32(v3) >> 16;
    }

LABEL_8:
    v25 = 0;
    v26 = 0;
    LOBYTE(v27) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  outlined copy of Data._Representation(*v1, v5);
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v8 & 0x100) != 0 || (v9 = ByteBuffer.readSlice(length:)(v8), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    goto LABEL_8;
  }

  v25 = v9;
  v26 = v10;
  v27 = v11;
  _s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFSayAA15ProtocolVersionVGACzXEfU_(&v25, &v24);
  if (v2)
  {
    v4 = v21;
    v13 = v22;
    v14 = v23;
    v15 = v25;
    v16 = v26;
    goto LABEL_24;
  }

  result = v25;
  v17 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v25 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v25 >> 32;
  }

  else
  {
    v18 = BYTE6(v26);
  }

  if (!__OFSUB__(v18, v27))
  {
    if (v18 == v27)
    {
      outlined consume of Data._Representation(v25, v26);
      outlined consume of Data._Representation(v6, v5);
      return v24;
    }

    v14 = 2;
    v19 = v25;
    v20 = v26;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v16 = v20;
    v15 = v19;
    v13 = 0;
    v4 = 1;
LABEL_24:
    outlined consume of Data._Representation(v15, v16);
    outlined consume of Data._Representation(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    v25 = v4;
    v26 = v13;
    LOBYTE(v27) = v14;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO19receivedServerHello_5bytes5clockAA15EncryptionLevelO10newReadKey_AH0l5WriteN0tAA0fG0V_AA10ByteBufferVxtAA8TLSErrorOYKAA0A8TLSClockRzlF(char *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v69 = a7;
  v70 = a4;
  v71 = a5;
  v72 = a6;
  v68 = a3;
  v61 = a2;
  v60 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v57 - v16;
  v67 = type metadata accessor for SymmetricKey();
  v64 = *(v67 - 8);
  v17 = *(v64 + 64);
  v18 = MEMORY[0x1EEE9AC00](v67);
  v58 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v57 - v21;
  v22 = *(a8 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v26 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = (&v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v57 - v34;
  v36 = type metadata accessor for HandshakeState(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v10;
  outlined init with copy of HandshakeState(v10, v39, type metadata accessor for HandshakeState);
  v57 = v36;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of HandshakeState(v39, type metadata accessor for HandshakeState);
    __break(1u);
LABEL_9:
    v65 = v36;
LABEL_11:
    result = outlined destroy of P256.Signing.PrivateKey?(v65, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    __break(1u);
    return result;
  }

  outlined init with take of HandshakeState.IdleState(v39, v35, type metadata accessor for HandshakeState.ClientHelloState);
  outlined init with copy of HandshakeState(v35, v33, type metadata accessor for HandshakeState.ClientHelloState);
  (*(v22 + 16))(v25, v69, a8);
  v40 = v68;
  outlined init with copy of ServerHello(v68, v75);
  v41 = v70;
  v42 = v71;
  outlined copy of Data._Representation(v70, v71);
  v43 = v76;
  _s15SwiftTLSLibrary14HandshakeStateO011ServerHelloD0V08originalD006serverF00hF5Bytes5clockAeC06ClientfD0V_AA0eF0VAA10ByteBufferVxtAA8TLSErrorOYKcAA0A8TLSClockRzlufC(v33, v40, v41, v42, v72, v25, a8, v28, v73);
  if (v43)
  {
    v44 = v73[0];
    v45 = v73[1];
    v46 = v74;
    result = outlined destroy of HandshakeState(v35, type metadata accessor for HandshakeState.ClientHelloState);
    *a10 = v44;
    *(a10 + 8) = v45;
    *(a10 + 16) = v46;
    return result;
  }

  v76 = 0;
  v48 = *(v62 + 24);
  v36 = v63;
  specialized ClientSessionKeyManager.clientHandshakeTrafficSecret.getter(v63);
  v49 = v64;
  v50 = *(v64 + 48);
  v51 = v67;
  if (v50(v36, 1, v67) == 1)
  {
    goto LABEL_9;
  }

  v52 = *(v49 + 32);
  v52(v66, v36, v51);
  v53 = v65;
  specialized ClientSessionKeyManager.serverHandshakeTrafficSecret.getter(v65);
  v54 = v67;
  if (v50(v53, 1, v67) == 1)
  {
    (*(v64 + 8))(v66, v54);
    goto LABEL_11;
  }

  v55 = v59;
  outlined destroy of HandshakeState(v59, type metadata accessor for HandshakeState);
  outlined destroy of HandshakeState(v35, type metadata accessor for HandshakeState.ClientHelloState);
  v56 = v58;
  v52(v58, v53, v54);
  outlined init with take of HandshakeState.IdleState(v28, v55, type metadata accessor for HandshakeState.ServerHelloState);
  swift_storeEnumTagMultiPayload();
  v52(v60, v56, v54);
  type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v52(v61, v66, v54);
  return swift_storeEnumTagMultiPayload();
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO011ServerHelloD0V08originalD006serverF00hF5Bytes5clockAeC06ClientfD0V_AA0eF0VAA10ByteBufferVxtAA8TLSErrorOYKcAA0A8TLSClockRzlufC@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v378 = a6;
  v379 = a7;
  v349 = a5;
  v381 = a4;
  v380 = a3;
  v419 = a2;
  v344 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v357 = &v318 - v12;
  v13 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v355 = *(v13 - 8);
  v356 = v13;
  v14 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v353 = &v318 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v354 = &v318 - v18;
  v19 = type metadata accessor for SessionTicket();
  v370 = *(v19 - 8);
  v20 = *(v370 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v340 = &v318 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v341 = &v318 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v367 = &v318 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v346 = &v318 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v352 = &v318 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v360 = &v318 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v368 = &v318 - v34;
  v35 = type metadata accessor for PAKEClientState(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v363 = (&v318 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v383 = &v318 - v40;
  v41 = type metadata accessor for SymmetricKey();
  v364 = *(v41 - 8);
  v365 = v41;
  v42 = *(v364 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v348 = &v318 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v318 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v347 = &v318 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v361 = &v318 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v351 = &v318 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v374 = &v318 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v377 = &v318 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v58 - 8);
  v345 = &v318 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v350 = &v318 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v343 = &v318 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v376 = &v318 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v372 = &v318 - v68;
  v69 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v70 = *(*(v69 - 1) + 64);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v73 = &v318 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = &v73[v71[8]];
  *v74 = 0;
  v342 = v74;
  v74[2] = 1;
  v373 = v71[9];
  v73[v373] = 0;
  v362 = v71[10];
  v73[v362] = 0;
  v75 = &v73[v71[11]];
  *v75 = 0;
  v375 = v75;
  v75[2] = 1;
  v76 = v71[12];
  v371 = v36;
  v77 = *(v36 + 56);
  v384 = v73;
  v382 = v76;
  v358 = v77;
  v359 = v36 + 56;
  v77(&v73[v76], 1, 1, v35);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  v79 = __swift_project_value_buffer(v78, logger);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *&v369 = v35;
    v83 = v19;
    v84 = v69;
    v85 = v79;
    v86 = v47;
    v87 = a1;
    v88 = v82;
    *v82 = 0;
    _os_log_impl(&dword_1B25F5000, v80, v81, "validating server hello", v82, 2u);
    v89 = v88;
    a1 = v87;
    v47 = v86;
    v79 = v85;
    v69 = v84;
    v19 = v83;
    v35 = v369;
    MEMORY[0x1B274ECF0](v89, -1, -1);
  }

  v90 = v419;
  v91 = *(v419 + 24);
  v92 = *(v419 + 8);
  if (one-time initialization token for helloRetryRequest != -1)
  {
    v369 = *(v419 + 8);
    v338 = v91;
    swift_once();
    v91 = v338;
    v92 = v369;
    v90 = v419;
  }

  v93 = v383;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v92, static Random.helloRetryRequest), vceqq_s64(v91, *(&xmmword_1ED4D5F88 + 8))))) & 1) != 0 || v90[2].i64[1] != a1[4].i64[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v90[3], a1[5]), vceqq_s64(v90[4], a1[6])))) & 1) == 0 || v90->i8[0] != 3 || v90->i8[1] != 3 || v90[5].i8[2] || (v102 = ServerHello.supportedVersion.getter() & 0x1FFFF, v90 = v419, v102 != 1027))
  {
    outlined destroy of ServerHello(v90);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1B25F5000, v94, v95, "server hello invalid for QUIC", v96, 2u);
      MEMORY[0x1B274ECF0](v96, -1, -1);
    }

    v394 = xmmword_1B26C6410;
    v97 = 2;
    v395[0] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v380, v381);
    (*(*(v379 - 8) + 8))(v378);
LABEL_13:
    outlined destroy of HandshakeState(a1, type metadata accessor for HandshakeState.ClientHelloState);
    v98 = 0;
    v99 = 5;
LABEL_14:
    v100 = v382;
    goto LABEL_15;
  }

  v103 = *(v419 + 40);
  if (!specialized Sequence<>.contains(_:)(*(v419 + 40), a1[7].i64[0]))
  {
    v154 = v103;
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();
    outlined destroy of ServerHello(v419);
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *&v394 = v158;
      *v157 = 136315138;
      v159 = CipherSuite.description.getter(v154);
      v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, &v394);

      *(v157 + 4) = v161;
      _os_log_impl(&dword_1B25F5000, v155, v156, "server hello chose a cipher suite we didn't offer (%s)", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v158);
      MEMORY[0x1B274ECF0](v158, -1, -1);
      MEMORY[0x1B274ECF0](v157, -1, -1);
    }

    v100 = v382;
    v162 = v381;
    v163 = v380;
    v394 = xmmword_1B26C6400;
    v97 = 2;
    v395[0] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v163, v162);
    (*(*(v379 - 8) + 8))(v378);
    v164 = a1;
    goto LABEL_77;
  }

  v324 = v47;
  v104 = v384;
  v105 = &v384[v69[7]];
  v327 = v103;
  *v105 = v103;
  v105[2] = 0;
  v399 = 0;
  v398 = 0;
  v400 = xmmword_1B26C8CA0;
  v106 = v370;
  v325 = *(v370 + 56);
  v326 = v370 + 56;
  v325(v372, 1, 1, v19);
  v107 = type metadata accessor for GeneralEPSK(0);
  v332 = *(v107 - 8);
  v333 = v107;
  v330 = *(v332 + 56);
  v331 = v332 + 56;
  v330(v377, 1, 1);
  v397 = MEMORY[0x1E69E7CD0];
  v108 = *(v419 + 11);
  v336 = *(v108 + 16);
  v339 = a1;
  if (!v336)
  {
    v376 = v19;
    outlined destroy of ServerHello(v419);
    v165 = 0;
    goto LABEL_92;
  }

  v109 = 0;
  v329 = 0;
  v323 = 0;
  v334 = (v106 + 48);
  v335 = v108;
  v328 = v108 + 32;
  v321 = 0xCFFFFFFFFFFFFF00;
  v322 = (v371 + 48);
  do
  {
    v110 = v328 + 88 * v109;
    v111 = v109 + 1;
    while (1)
    {
      *&v369 = v111;
      v112 = *(v110 + 16);
      v394 = *v110;
      *v395 = v112;
      v113 = *(v110 + 32);
      v114 = *(v110 + 48);
      v115 = *(v110 + 64);
      v338.i64[0] = v110;
      v396 = *(v110 + 80);
      *&v395[32] = v114;
      *&v395[48] = v115;
      *&v395[16] = v113;
      v116 = 42;
      switch(v396 >> 4)
      {
        case 1:

          v116 = 10;
          break;
        case 2:
          sub_1B260EDD8(v394, BYTE8(v394) & 1);
          v116 = 43;
          break;
        case 3:
          outlined copy of Extension.ApplicationLayerProtocolNegotiation();
          v116 = 16;
          break;
        case 4:
          outlined copy of Extension.KeyShare(v394, *(&v394 + 1), *v395);
          v116 = 51;
          break;
        case 5:
          break;
        case 6:

          v116 = 13;
          break;
        case 7:
          sub_1B260EDD8(v394, BYTE8(v394) & 1);
          v116 = 20;
          break;
        case 8:
          outlined copy of Data._Representation(v394, *(&v394 + 1));
          v116 = 57;
          break;
        case 9:

          v116 = 45;
          break;
        case 0xA:
          outlined copy of Extension.PreSharedKey(v394, *(&v394 + 1), v395[0] & 1);
          v116 = 41;
          break;
        case 0xB:
          v116 = 58;
          break;
        case 0xC:
          v390 = *&v395[16];
          v391 = *&v395[32];
          v392 = *&v395[48];
          v388 = v394;
          v389 = *v395;
          v393 = v396 & 0xF;
          outlined init with copy of Extension.PAKE(&v388, &v385);
          v116 = 35387;
          break;
        case 0xD:
          v117 = v394;
          outlined copy of Data._Representation(*(&v394 + 1), *v395);
          v116 = v117;
          break;
        default:
          outlined copy of Data?(v394, *(&v394 + 1));
          v116 = 0;
          break;
      }

      if ((specialized Set._Variant.insert(_:)(&v388, v116) & 1) == 0)
      {

        outlined destroy of ServerHello(v419);
        outlined init with copy of Extension(&v394, &v388);
        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.error.getter();
        outlined destroy of Extension(&v394);
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          *&v388 = v169;
          *v168 = 136315138;
          v170 = 0;
          switch(v396 >> 4)
          {
            case 1:
              v170 = 10;
              break;
            case 2:
              v170 = 43;
              break;
            case 3:
              v170 = 16;
              break;
            case 4:
              v170 = 51;
              break;
            case 5:
              v170 = 42;
              break;
            case 6:
              v170 = 13;
              break;
            case 7:
              v170 = 20;
              break;
            case 8:
              v170 = 57;
              break;
            case 9:
              v170 = 45;
              break;
            case 0xA:
              v170 = 41;
              break;
            case 0xB:
              v170 = 58;
              break;
            case 0xC:
              v170 = -30149;
              break;
            case 0xD:
              v170 = v394;
              break;
            default:
              break;
          }

          v279 = ExtensionType.description.getter(v170);
          v281 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v279, v280, &v388);

          *(v168 + 4) = v281;
          _os_log_impl(&dword_1B25F5000, v166, v167, "server offered duplicate extension of type %s on server hello", v168, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v169);
          MEMORY[0x1B274ECF0](v169, -1, -1);
          MEMORY[0x1B274ECF0](v168, -1, -1);
        }

        else
        {
        }

        v282 = v381;
        v283 = v380;
        v388 = xmmword_1B26C6410;
        v97 = 2;
        LOBYTE(v389) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v283, v282);
        outlined destroy of Extension(&v394);
        (*(*(v379 - 8) + 8))(v378);
        outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
        outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
        goto LABEL_13;
      }

      v118 = v394;
      v119 = v396 >> 4;
      if (v119 != 10)
      {
        v130 = *(&v394 + 1);
        v131 = *&v395[1] | ((*&v395[5] | (v395[7] << 16)) << 32);
        if (v119 == 12)
        {
          if (v396)
          {
            v408 = v394;
            v409 = v395[0];
            v410 = *&v395[1];
            v412 = (*&v395[1] | ((*&v395[5] | (v395[7] << 16)) << 32)) >> 48;
            v411 = *&v395[5];
            v413 = *&v395[8];
            v414 = *&v395[24];
            v415 = *&v395[40];
            v416 = *&v395[56];
            v133 = Logger.logObject.getter();
            v134 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v133, v134))
            {
              v135 = swift_slowAlloc();
              *v135 = 0;
              _os_log_impl(&dword_1B25F5000, v133, v134, "Received PAKEServerHello", v135, 2u);
              MEMORY[0x1B274ECF0](v135, -1, -1);
            }

            v136 = type metadata accessor for HandshakeState.ClientHelloState(0);
            v137 = v360;
            outlined init with copy of Any?(v339->i64 + *(v136 + 48), v360, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
            v138 = (*v322)(v137, 1, v35);
            v139 = v363;
            if (v138 == 1)
            {

              outlined destroy of ServerHello(v419);
              outlined destroy of P256.Signing.PrivateKey?(v137, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
              v171 = Logger.logObject.getter();
              v172 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v171, v172))
              {
                goto LABEL_87;
              }

              v173 = swift_slowAlloc();
              *v173 = 0;
              v174 = "server hello sent a pake extension when we did not offer a pake";
              goto LABEL_86;
            }

            outlined init with take of HandshakeState.IdleState(v137, v363, type metadata accessor for PAKEClientState);
            if (*v139 != v118)
            {

              outlined destroy of ServerHello(v419);
              v300 = Logger.logObject.getter();
              v301 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v300, v301))
              {
                v302 = swift_slowAlloc();
                *v302 = 0;
                _os_log_impl(&dword_1B25F5000, v300, v301, "server hello sent a pake scheme that we did not offer", v302, 2u);
                MEMORY[0x1B274ECF0](v302, -1, -1);
              }

              v388 = xmmword_1B26C6400;
              v97 = 2;
              LOBYTE(v389) = 2;
              lazy protocol witness table accessor for type TLSError and conformance TLSError();
              swift_willThrowTypedImpl();
              outlined consume of Data._Representation(v380, v381);
              outlined destroy of Extension(&v394);
              (*(*(v379 - 8) + 8))(v378);
              outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
              outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
              outlined destroy of HandshakeState(v363, type metadata accessor for PAKEClientState);
              goto LABEL_89;
            }

            v140 = *(v139 + 44);
            v417[0] = *(v139 + 36);
            v417[1] = v140;
            v417[2] = *(v139 + 52);
            v418 = *(v139 + 120);
            if (one-time initialization token for SwiftTLSPAKELimiter != -1)
            {
              swift_once();
            }

            if (((*(*SwiftTLSPAKELimiter + 96))(v417) & 1) == 0)
            {

              outlined destroy of ServerHello(v419);
              v303 = Logger.logObject.getter();
              v304 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v303, v304))
              {
                v305 = swift_slowAlloc();
                *v305 = 0;
                _os_log_impl(&dword_1B25F5000, v303, v304, "selected PAKE credential has no attempts remaining", v305, 2u);
                MEMORY[0x1B274ECF0](v305, -1, -1);
              }

              v388 = xmmword_1B26CAC80;
              v97 = 2;
              LOBYTE(v389) = 2;
              lazy protocol witness table accessor for type TLSError and conformance TLSError();
              swift_willThrowTypedImpl();
              outlined consume of Data._Representation(v380, v381);
              outlined destroy of Extension(&v394);
              (*(*(v379 - 8) + 8))(v378);
              outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
              outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
              outlined destroy of HandshakeState(v363, type metadata accessor for PAKEClientState);
              outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
              outlined destroy of HandshakeState(v339, type metadata accessor for HandshakeState.ClientHelloState);
              v98 = 0;
              v99 = 35;
              goto LABEL_14;
            }

            v141 = v366;
            v142 = _s15SwiftTLSLibrary15PAKEClientStateV18processServerHelloyyAA9ExtensionO4PAKEO010PAKEServerG0VAA8TLSErrorOYKF(&v408);
            v366 = v141;
            if (v141)
            {
              v99 = v142;
              v98 = v143;
              v306 = v144;

              outlined destroy of ServerHello(v419);
              outlined copy of TLSError(v99, v98, v306);
              v307 = v306;
              v308 = Logger.logObject.getter();
              v309 = static os_log_type_t.error.getter();
              v97 = v307;
              outlined consume of TLSError(v99, v98, v307);
              if (os_log_type_enabled(v308, v309))
              {
                v310 = swift_slowAlloc();
                v311 = swift_slowAlloc();
                *v310 = 138412290;
                lazy protocol witness table accessor for type TLSError and conformance TLSError();
                swift_allocError();
                *v312 = v99;
                *(v312 + 8) = v98;
                *(v312 + 16) = v97;
                outlined copy of TLSError(v99, v98, v97);
                v313 = _swift_stdlib_bridgeErrorToNSError();
                *(v310 + 4) = v313;
                *v311 = v313;
                _os_log_impl(&dword_1B25F5000, v308, v309, "failed to process Server Hello pake share %@", v310, 0xCu);
                outlined destroy of P256.Signing.PrivateKey?(v311, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1B274ECF0](v311, -1, -1);
                MEMORY[0x1B274ECF0](v310, -1, -1);
              }

              v314 = v363;
              v315 = v363[5];
              v405 = v363[4];
              v406 = v315;
              v407[0] = v363[6];
              *(v407 + 9) = *(v363 + 105);
              v316 = v363[1];
              v401 = *v363;
              v402 = v316;
              v317 = v363[3];
              v403 = v363[2];
              v404 = v317;
              PAKEClientConfiguration.claimPAKECredentialAttempt()();
              *&v388 = v99;
              *(&v388 + 1) = v98;
              LOBYTE(v389) = v97;
              lazy protocol witness table accessor for type TLSError and conformance TLSError();
              swift_willThrowTypedImpl();
              outlined consume of Data._Representation(v380, v381);
              outlined destroy of Extension(&v394);
              (*(*(v379 - 8) + 8))(v378);
              outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
              outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
              outlined destroy of HandshakeState(v314, type metadata accessor for PAKEClientState);
LABEL_155:
              outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
              outlined destroy of HandshakeState(v339, type metadata accessor for HandshakeState.ClientHelloState);
              goto LABEL_14;
            }

            outlined destroy of Extension(&v394);
            v104 = v384;
            v145 = v382;
            outlined destroy of P256.Signing.PrivateKey?(&v384[v382], &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
            outlined init with take of HandshakeState.IdleState(v363, v104 + v145, type metadata accessor for PAKEClientState);
            v358(v104 + v145, 0, 1, v35);
            v93 = v383;
            goto LABEL_65;
          }
        }

        else if (v119 == 4 && (v131 & 0x30000000000000) == 0x10000000000000)
        {
          v132 = v321 & (v131 << 8) | v395[0];
          v338 = *&v395[8];
          outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
          v398 = v118;
          v399 = v130;
          *&v400 = v132;
          v93 = v383;
          v104 = v384;
          *(&v400 + 1) = v338.i64[0];
          goto LABEL_65;
        }

LABEL_64:
        outlined destroy of Extension(&v394);
LABEL_65:
        v146 = v335;
        v109 = v369;
        a1 = v339;
        if (v336 != v369)
        {
          goto LABEL_66;
        }

        v376 = v19;
        outlined destroy of ServerHello(v419);
        v165 = v329 | v323;
LABEL_92:
        v100 = v382;
LABEL_93:
        v177 = v368;

        outlined init with copy of Any?(v104 + v100, v177, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
        v178 = *(v371 + 48);
        *&v369 = v35;
        v371 += 48;
        v419 = v178;
        if ((v178)(v177, 1, v35) == 1)
        {
          outlined destroy of P256.Signing.PrivateKey?(v177, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
          v179 = v400;
          if (v400 >> 60 == 15 || (v339[3].i8[14] & 1) != 0 || (v192 = v398, v193 = v339[3].u16[6], v193 != v398))
          {
            v180 = Logger.logObject.getter();
            v181 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              *&v388 = v183;
              *v182 = 136315138;
              swift_beginAccess();
              v184 = v400;
              if (v400 >> 60 == 15)
              {
                v185 = 0xE300000000000000;
                v186 = 7104878;
              }

              else
              {
                v210 = v398;
                v211 = v399;
                v212 = *(&v400 + 1);
                v419 = *(&v400 + 1);
                outlined copy of Data._Representation(v399, v400);
                v383 = Extension.KeyShare.KeyShareEntry.description.getter(v210, v211, v184, v212);
                v185 = v213;
                outlined consume of Extension.KeyShare.KeyShareEntry?(v210, v211, v184);
                v186 = v383;
              }

              v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v185, &v388);

              *(v182 + 4) = v214;
              _os_log_impl(&dword_1B25F5000, v180, v181, "unsupported server key share, expected secp384 or x25519 or x25519-MLKEM768 got %s", v182, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v183);
              MEMORY[0x1B274ECF0](v183, -1, -1);
              MEMORY[0x1B274ECF0](v182, -1, -1);

              v202 = v339;
              v100 = v382;
            }

            else
            {

              v202 = v339;
            }

            v388 = xmmword_1B26C6400;
            v97 = 2;
            LOBYTE(v389) = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v380, v381);
            (*(*(v379 - 8) + 8))(v378);
            outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
            outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
            v164 = v202;
            goto LABEL_77;
          }

          v194 = v399;
          v383 = *(&v400 + 1);
          v195 = type metadata accessor for HandshakeState.ClientHelloState(0);
          v196 = v357;
          outlined init with copy of Any?(v339->i64 + *(v195 + 32), v357, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          if ((*(v355 + 48))(v196, 1, v356) == 1)
          {
            outlined copy of Data._Representation(v194, v179);
            outlined destroy of P256.Signing.PrivateKey?(v196, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
            v197 = Logger.logObject.getter();
            v198 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              *v199 = 0;
              _os_log_impl(&dword_1B25F5000, v197, v198, "missing key share", v199, 2u);
              v200 = v199;
              v100 = v382;
              MEMORY[0x1B274ECF0](v200, -1, -1);
            }

            v394 = xmmword_1B26C6400;
            v97 = 2;
            v395[0] = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v380, v381);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v192, v194, v179);
            (*(*(v379 - 8) + 8))(v378);
            goto LABEL_112;
          }

          LODWORD(v375) = v193;
          outlined init with take of HandshakeState.IdleState(v196, v353, type metadata accessor for GeneratedEphemeralPrivateKey);
          outlined copy of Data._Representation(v194, v179);
          v222 = Logger.logObject.getter();
          v223 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v222, v223))
          {
            v224 = swift_slowAlloc();
            *v224 = 0;
            _os_log_impl(&dword_1B25F5000, v222, v223, "valid TLS1.3 server hello, constructing shared secret.", v224, 2u);
            MEMORY[0x1B274ECF0](v224, -1, -1);
          }

          v225 = v179 >> 62;
          v226 = v194;
          v319 = v69;
          if ((v179 >> 62) > 1)
          {
            if (v225 != 2)
            {
              v227 = 0;
              goto LABEL_151;
            }

            v257 = v194;
            v227 = *(v194 + 24);
          }

          else
          {
            if (!v225)
            {
              v227 = BYTE6(v179);
LABEL_151:
              v267 = v347;
              v266 = v383;
LABEL_152:
              if (v227 >= v266)
              {
                v268 = Data._Representation.subscript.getter();
                v270 = v269;
                outlined consume of Extension.KeyShare.KeyShareEntry?(v192, v226, v179);
                v271 = v270;
                v272 = v270;
                v273 = v353;
                v274 = v366;
                _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF(v268, v272, v386, v267);
                if (!v274)
                {
                  v366 = 0;
                  outlined consume of Data._Representation(v268, v271);
                  outlined consume of Extension.KeyShare.KeyShareEntry?(v192, v226, v179);
                  outlined destroy of HandshakeState(v273, type metadata accessor for GeneratedEphemeralPrivateKey);
                  (*(v364 + 32))(v361, v267, v365);
                  v275 = v342;
                  v93 = v343;
                  *v342 = v375;
                  v275[2] = 0;
                  outlined init with copy of Any?(v372, v93, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
                  if ((*(v370 + 48))(v93, 1, v376) != 1)
                  {
                    goto LABEL_159;
                  }

                  outlined destroy of P256.Signing.PrivateKey?(v93, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
                  v69 = v319;
                  v276 = &v384[v319[5]];
                  v277 = v339[7].i64[1];
                  *v276 = v327;
                  *(v276 + 1) = v375;
                  *(v276 + 1) = v277;
                  type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
                  swift_storeEnumTagMultiPayload();

                  goto LABEL_124;
                }

                v99 = v386[0];
                v419 = v192;
                v98 = v386[1];
                v97 = v387;
                outlined consume of Data._Representation(v268, v271);
                outlined consume of Data._Representation(v380, v381);
                outlined consume of Extension.KeyShare.KeyShareEntry?(v419, v226, v179);
                (*(*(v379 - 8) + 8))(v378);
                outlined destroy of HandshakeState(v273, type metadata accessor for GeneratedEphemeralPrivateKey);
                outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
                outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
                goto LABEL_155;
              }

LABEL_194:
              __break(1u);
              JUMPOUT(0x1B2616334);
            }

            v257 = v194;
            v227 = v194 >> 32;
          }

          v266 = v383;
          outlined copy of Extension.KeyShare.KeyShareEntry?(v192, v257, v179);
          v267 = v347;
          goto LABEL_152;
        }

        outlined init with take of HandshakeState.IdleState(v177, v93, type metadata accessor for PAKEClientState);
        v187 = v381;
        if (v400 >> 60 == 15)
        {
          if ((v165 & 1) == 0)
          {
            v203 = v354;
            outlined init with copy of Any?(v93 + *(v369 + 20), v354, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
            v204 = v93;
            v206 = v364;
            v205 = v365;
            if ((*(v364 + 48))(v203, 1, v365) != 1)
            {
              outlined destroy of HandshakeState(v204, type metadata accessor for PAKEClientState);
              (*(v206 + 32))(v361, v203, v205);
              *(v104 + v69[5]) = v327;
              type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
              goto LABEL_123;
            }

            outlined destroy of P256.Signing.PrivateKey?(v203, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
            v207 = Logger.logObject.getter();
            v208 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v207, v208))
            {
              v209 = swift_slowAlloc();
              *v209 = 0;
              _os_log_impl(&dword_1B25F5000, v207, v208, "missing derivedSharedKey", v209, 2u);
              MEMORY[0x1B274ECF0](v209, -1, -1);
            }

            v99 = 0xD00000000000001ELL;

            v98 = 0x80000001B26CE150;
            *&v394 = 0xD00000000000001ELL;
            *(&v394 + 1) = 0x80000001B26CE150;
            v97 = 1;
            v395[0] = 1;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v380, v381);
            (*(*(v379 - 8) + 8))(v378);
            outlined destroy of HandshakeState(v383, type metadata accessor for PAKEClientState);
            outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
            outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
            outlined destroy of HandshakeState(v339, type metadata accessor for HandshakeState.ClientHelloState);
LABEL_15:
            result = outlined destroy of P256.Signing.PrivateKey?(&v384[v100], &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
            *a9 = v99;
            *(a9 + 8) = v98;
            *(a9 + 16) = v97;
            return result;
          }

          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v188, v189))
          {
            goto LABEL_111;
          }

          v190 = swift_slowAlloc();
          *v190 = 0;
          v191 = "server sent PAKE and PSK extensions, which is not allowed";
        }

        else
        {
          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v188, v189))
          {
LABEL_111:

            v394 = xmmword_1B26C6400;
            v97 = 2;
            v395[0] = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v380, v187);
            (*(*(v379 - 8) + 8))(v378);
            outlined destroy of HandshakeState(v93, type metadata accessor for PAKEClientState);
LABEL_112:
            outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
            outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
            outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
            v164 = v339;
LABEL_77:
            outlined destroy of HandshakeState(v164, type metadata accessor for HandshakeState.ClientHelloState);
            v98 = 0;
            v99 = 6;
            goto LABEL_15;
          }

          v190 = swift_slowAlloc();
          *v190 = 0;
          v191 = "server sent PAKE and key share extensions, which is not allowed";
        }

        _os_log_impl(&dword_1B25F5000, v188, v189, v191, v190, 2u);
        v201 = v190;
        v93 = v383;
        MEMORY[0x1B274ECF0](v201, -1, -1);
        goto LABEL_111;
      }

      if ((v395[0] & 1) == 0)
      {
        goto LABEL_64;
      }

      v337 = v394;
      v120 = type metadata accessor for HandshakeState.ClientHelloState(0);
      a1 = v339;
      v121 = v376;
      outlined init with copy of Any?(v339->i64 + *(v120 + 40), v376, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      if ((*v334)(v121, 1, v19) != 1)
      {
        break;
      }

      outlined destroy of P256.Signing.PrivateKey?(v121, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v122 = *(a1->i64 + *(v120 + 44));
      if (!*(v122 + 16))
      {

        outlined destroy of ServerHello(v419);
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          v174 = "server hello sent a pre_shared_key extension when we didn't offer psks";
LABEL_86:
          _os_log_impl(&dword_1B25F5000, v171, v172, v174, v173, 2u);
          MEMORY[0x1B274ECF0](v173, -1, -1);
        }

LABEL_87:

        v388 = xmmword_1B26C6400;
        v97 = 2;
        LOBYTE(v389) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v380, v381);
        outlined destroy of Extension(&v394);
        (*(*(v379 - 8) + 8))(v378);
LABEL_88:
        outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
LABEL_89:
        outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
        v175 = type metadata accessor for HandshakeState.ClientHelloState;
        v176 = v339;
LABEL_90:
        outlined destroy of HandshakeState(v176, v175);
        v98 = 0;
        v99 = 6;
        goto LABEL_14;
      }

      if (v337)
      {

        outlined destroy of ServerHello(v419);
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          v174 = "server hello is trying to use a psk at an index we didn't offer";
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_1B25F5000, v123, v124, "external psk accepted by server", v125, 2u);
        MEMORY[0x1B274ECF0](v125, -1, -1);
      }

      if (!*(v122 + 16))
      {
        __break(1u);
        goto LABEL_194;
      }

      v126 = v374;
      outlined init with copy of HandshakeState(v122 + ((*(v332 + 80) + 32) & ~*(v332 + 80)), v374, type metadata accessor for GeneralEPSK);
      outlined destroy of Extension(&v394);
      v127 = v377;
      outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      (v330)(v126, 0, 1, v333);
      outlined init with take of P256.Signing.PublicKey?(v126, v127, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      v104 = v384;
      v384[v373] = 1;
      v128 = v375;
      *v375 = 0;
      v128[2] = 0;
      v93 = v383;
      if (v336 == v369)
      {
        v376 = v19;
        outlined destroy of ServerHello(v419);
        v165 = 1;
        goto LABEL_92;
      }

      v129 = *(v335 + 16);
      v110 = v338.i64[0] + 88;
      v111 = v369 + 1;
      v329 = 1;
      a1 = v339;
      if (v369 >= v129)
      {
        goto LABEL_158;
      }
    }

    v147 = v367;
    outlined init with take of HandshakeState.IdleState(v121, v367, type metadata accessor for SessionTicket);
    if (v337)
    {

      outlined destroy of ServerHello(v419);
      v284 = Logger.logObject.getter();
      v285 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v284, v285))
      {
        v286 = swift_slowAlloc();
        *v286 = 0;
        _os_log_impl(&dword_1B25F5000, v284, v285, "server hello is trying to resume a session we didnt offer", v286, 2u);
        MEMORY[0x1B274ECF0](v286, -1, -1);
      }

      goto LABEL_192;
    }

    if (v327 != *(v147 + *(v19 + 44)))
    {
      v287 = v19;

      outlined destroy of ServerHello(v419);
      outlined init with copy of HandshakeState(v367, v341, type metadata accessor for SessionTicket);
      v288 = Logger.logObject.getter();
      v289 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v288, v289))
      {
        v290 = swift_slowAlloc();
        v291 = swift_slowAlloc();
        *&v388 = v291;
        *v290 = 136315394;
        v292 = CipherSuite.description.getter(v327);
        v294 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v292, v293, &v388);

        *(v290 + 4) = v294;
        *(v290 + 12) = 2080;
        v295 = v341;
        v296 = CipherSuite.description.getter(*(v341 + *(v287 + 44)));
        v298 = v297;
        outlined destroy of HandshakeState(v295, type metadata accessor for SessionTicket);
        v299 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v296, v298, &v388);

        *(v290 + 14) = v299;
        _os_log_impl(&dword_1B25F5000, v288, v289, "server negotiated cipher suite %s, expected %s", v290, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v291, -1, -1);
        MEMORY[0x1B274ECF0](v290, -1, -1);
      }

      else
      {

        outlined destroy of HandshakeState(v341, type metadata accessor for SessionTicket);
      }

LABEL_192:
      v388 = xmmword_1B26C6400;
      v97 = 2;
      LOBYTE(v389) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v380, v381);
      outlined destroy of Extension(&v394);
      (*(*(v379 - 8) + 8))(v378);
      outlined destroy of HandshakeState(v367, type metadata accessor for SessionTicket);
      goto LABEL_88;
    }

    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_1B25F5000, v148, v149, "resuming session", v150, 2u);
      v151 = v150;
      a1 = v339;
      MEMORY[0x1B274ECF0](v151, -1, -1);
    }

    outlined destroy of Extension(&v394);
    v152 = v372;
    outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    outlined init with take of HandshakeState.IdleState(v367, v152, type metadata accessor for SessionTicket);
    v325(v152, 0, 1, v19);
    v104 = v384;
    v323 = 1;
    v384[v362] = 1;
    v153 = v375;
    *v375 = 0;
    v153[2] = 0;
    v109 = v369;
    if (v336 == v369)
    {
      v376 = v19;
      outlined destroy of ServerHello(v419);
      v165 = 1;
      v100 = v382;
      v93 = v383;
      goto LABEL_93;
    }

    v93 = v383;
    v146 = v335;
LABEL_66:
    ;
  }

  while (v109 < *(v146 + 16));
LABEL_158:
  __break(1u);
LABEL_159:
  v278 = v340;
  outlined init with take of HandshakeState.IdleState(v93, v340, type metadata accessor for SessionTicket);
  v69 = v319;
  outlined init with take of HandshakeState.IdleState(v278, &v384[v319[5]], type metadata accessor for SessionTicket);
  type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
LABEL_123:
  swift_storeEnumTagMultiPayload();
LABEL_124:
  v215 = v350;
  outlined init with copy of Any?(v372, v350, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v216 = *(v370 + 48);
  v217 = v376;
  v218 = v216(v215, 1, v376);
  outlined destroy of P256.Signing.PrivateKey?(v215, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v320 = v79;
  if (v218 == 1)
  {
    v219 = type metadata accessor for HandshakeState.ClientHelloState(0);
    v220 = v339;
    v221 = v345;
    outlined init with copy of Any?(v339->i64 + *(v219 + 40), v345, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    LODWORD(v376) = v216(v221, 1, v217) != 1;
    outlined destroy of P256.Signing.PrivateKey?(v221, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  }

  else
  {
    LODWORD(v376) = 0;
    v220 = v339;
  }

  v228 = v369;
  v383 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v229 = *(v220 + *(v383 + 44));
  v384[v69[13]] = *(v229 + 16) != 0;
  v230 = v351;
  outlined init with copy of Any?(v377, v351, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v231 = (*(v332 + 48))(v230, 1, v333);
  outlined destroy of P256.Signing.PrivateKey?(v230, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  LODWORD(v375) = v231 == 1 && *(v229 + 16) != 0;
  v232 = v228;
  v233 = v352;
  outlined init with copy of Any?(&v384[v382], v352, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v234 = v419;
  v235 = (v419)(v233, 1, v228);
  outlined destroy of P256.Signing.PrivateKey?(v233, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v236 = v383;
  if (v235 == 1)
  {
    v237 = v346;
    outlined init with copy of Any?(v339->i64 + *(v383 + 48), v346, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    v238 = v234(v237, 1, v232);
    outlined destroy of P256.Signing.PrivateKey?(v237, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    if (v238 != 1)
    {
      v263 = Logger.logObject.getter();
      v264 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v263, v264))
      {
        v265 = swift_slowAlloc();
        *v265 = 0;
        _os_log_impl(&dword_1B25F5000, v263, v264, "pake expected in ServerHello but not present", v265, 2u);
        MEMORY[0x1B274ECF0](v265, -1, -1);
      }

      v394 = xmmword_1B26C6400;
      v97 = 2;
      v395[0] = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v380, v381);
      (*(*(v379 - 8) + 8))(v378);
      (*(v364 + 8))(v361, v365);
      outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
      outlined destroy of HandshakeState(v339, type metadata accessor for HandshakeState.ClientHelloState);
      v175 = type metadata accessor for HandshakeState.ServerHelloState.SessionData;
      v176 = &v384[v69[5]];
      goto LABEL_90;
    }
  }

  v239 = v339;
  v395[48] = v339[4].i8[0];
  v240 = v339[3];
  *&v395[16] = v339[2];
  v241 = *&v395[16];
  *&v395[32] = v240;
  v242 = v339[1];
  v394 = *v339;
  v243 = v394;
  *v395 = v242;
  v244 = v384;
  v384[64] = v395[48];
  *(v244 + 32) = v241;
  *(v244 + 48) = v240;
  *v244 = v243;
  *(v244 + 16) = v242;
  outlined init with copy of Any?(v239 + *(v236 + 36), v244 + v69[6], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  (*(v364 + 16))(v348, v361, v365);
  outlined init with copy of HandshakeStateMachine.Configuration(&v394, &v388);
  _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458]);
  v245 = v324;
  SymmetricKey.init<A>(data:)();
  v246 = v380;
  v247 = v381;
  v248 = v366;
  v249 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKFAG6SHA384V_Tg5(v245, v380, v381, v349, (v376 | v375) & 1);
  LODWORD(v419) = v251;
  v383 = v248;
  if (v248)
  {
    v99 = v249;
    v98 = v250;
    outlined consume of Data._Representation(v246, v247);
    (*(*(v379 - 8) + 8))(v378);
    v252 = *(v364 + 8);
    v253 = v245;
    v254 = v365;
    v252(v253, v365);
    v252(v361, v254);
    outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
    outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
    outlined destroy of HandshakeState(v339, type metadata accessor for HandshakeState.ClientHelloState);
    v255 = *(v244 + 48);
    v390 = *(v244 + 32);
    v391 = v255;
    LOBYTE(v392) = *(v244 + 64);
    v256 = *(v244 + 16);
    v388 = *v244;
    v389 = v256;
    outlined destroy of HandshakeStateMachine.Configuration(&v388);
    outlined destroy of HandshakeState(v244 + v69[5], type metadata accessor for HandshakeState.ServerHelloState.SessionData);
    outlined destroy of P256.Signing.PrivateKey?(v244 + v69[6], &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v100 = v382;
    v97 = v419;
    goto LABEL_15;
  }

  v258 = *(v364 + 8);
  v258(v245, v365);
  v259 = Logger.logObject.getter();
  v260 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v259, v260))
  {
    v261 = swift_slowAlloc();
    *v261 = 0;
    _os_log_impl(&dword_1B25F5000, v259, v260, "server hello valid", v261, 2u);
    MEMORY[0x1B274ECF0](v261, -1, -1);
  }

  outlined consume of Data._Representation(v380, v381);

  (*(*(v379 - 8) + 8))(v378);
  v258(v361, v365);
  outlined destroy of P256.Signing.PrivateKey?(v377, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v372, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  outlined consume of Extension.KeyShare.KeyShareEntry?(v398, v399, v400);
  v262 = v384;
  outlined init with copy of HandshakeState(v384, v344, type metadata accessor for HandshakeState.ServerHelloState);
  outlined destroy of HandshakeState(v339, type metadata accessor for HandshakeState.ClientHelloState);
  return outlined destroy of HandshakeState(v262, type metadata accessor for HandshakeState.ServerHelloState);
}