uint64_t _s15SwiftTLSLibrary10ByteBufferV20readCertificateEntryAA0F7MessageV0fG0VSgyAA8TLSErrorOYKF()
{
  v2 = v0;
  v4 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  outlined copy of Data._Representation(*v0, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v6 & 0x100) != 0 || (v7 = v6, v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5(), (v8 & 0x10000) != 0) || (v9 = ByteBuffer.readSlice(length:)(v8 | (v7 << 16)), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v0, v0[1]);
LABEL_5:
    result = 0;
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v5;
    return result;
  }

  v22 = v9;
  v23 = v10;
  v24 = v11;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v9 >> 32;
  }

  else
  {
    v14 = BYTE6(v10);
  }

  result = v14 - v11;
  if (__OFSUB__(v14, v11))
  {
    __break(1u);
    goto LABEL_31;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v15 >> 60 == 15)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v16 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v22 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v22 >> 32;
  }

  else
  {
    v17 = BYTE6(v23);
  }

  if (__OFSUB__(v17, v24))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = result;
  v19 = v15;
  if (v17 == v24)
  {
    outlined consume of Data._Representation(v22, v23);
    outlined consume of Data._Representation(v4, v3);
    v4 = *v2;
    v3 = v2[1];
    v5 = v2[2];
    outlined copy of Data._Representation(*v2, v3);
    v20 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l121OIglozo_AcfHIeglrzo_TR04_s15a12TLSLibrary10cd47V20readCertificateEntryAA0F7MessageV0fG0VSgyAA8f27OYKF0E10ExtensionsL_ySayU22E10OGACzAKYKFTf3nnpf_nTf1nc_n(v2);
    if (v1)
    {
      v21 = v20;
      outlined consume of Data._Representation(*v2, v2[1]);
      *v2 = v4;
      v2[1] = v3;
      v2[2] = v5;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of ByteBuffer?(v18, v19);
      return v21;
    }

    else
    {
      if (!v20)
      {
        outlined consume of Data._Representation(*v2, v2[1]);
        outlined consume of ByteBuffer?(v18, v19);
        goto LABEL_5;
      }

      outlined consume of Data._Representation(v4, v3);
      return v18;
    }
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v18, v19);
    outlined consume of Data._Representation(v22, v23);
    outlined consume of Data._Representation(*v2, v2[1]);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v5;
    swift_willThrowTypedImpl();
    return 1;
  }
}

uint64_t _s15SwiftTLSLibrary18CertificateMessageVAA09HandshakeD8ProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateMessage and conformance CertificateMessage()
{
  result = lazy protocol witness table cache variable for type CertificateMessage and conformance CertificateMessage;
  if (!lazy protocol witness table cache variable for type CertificateMessage and conformance CertificateMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateMessage and conformance CertificateMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry()
{
  result = lazy protocol witness table cache variable for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry;
  if (!lazy protocol witness table cache variable for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateMessage.CertificateEntry and conformance CertificateMessage.CertificateEntry);
  }

  return result;
}

double _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1, &v11, v13);
  if (v3)
  {
    v6 = v12;
    result = *&v11;
    *a2 = v11;
    *(a2 + 16) = v6;
  }

  else
  {
    v8 = v13[3];
    a3[2] = v13[2];
    a3[3] = v8;
    v9 = v13[5];
    a3[4] = v13[4];
    a3[5] = v9;
    result = *v13;
    v10 = v13[1];
    *a3 = v13[0];
    a3[1] = v10;
  }

  return result;
}

__n128 ServerHello.init(legacyVersion:random:legacySessionIDEcho:cipherSuite:legacyCompressionMethod:extensions:)@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  result = *a6;
  v11 = *(a6 + 16);
  *(a9 + 40) = *a6;
  v12 = *(a6 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v11;
  *(a9 + 72) = v12;
  *(a9 + 80) = a7;
  *(a9 + 82) = a8;
  *(a9 + 88) = a10;
  return result;
}

BOOL ServerHello.isHelloRetryRequest.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  if (one-time initialization token for helloRetryRequest != -1)
  {
    swift_once();
  }

  return v1 == static Random.helloRetryRequest && v2 == xmmword_1ED4D5F88 && v4 == *(&xmmword_1ED4D5F88 + 1) && v3 == qword_1ED4D5F98;
}

uint64_t ServerHello.random.getter()
{
  result = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  return result;
}

uint64_t ServerHello.random.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[1] = result;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  return result;
}

__n128 ServerHello.legacySessionIDEcho.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ServerHello.legacySessionIDEcho.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

uint64_t ServerHello.extensions.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t ServerHello.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  MEMORY[0x1B274DB60](*(v1 + 8));
  MEMORY[0x1B274DB60](v4);
  MEMORY[0x1B274DB60](v5);
  MEMORY[0x1B274DB60](v6);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  MEMORY[0x1B274DB20](*(v1 + 72));
  MEMORY[0x1B274DB60](v7);
  MEMORY[0x1B274DB60](v8);
  MEMORY[0x1B274DB60](v9);
  MEMORY[0x1B274DB60](v10);
  Hasher._combine(_:)(*(v1 + 80));
  Hasher._combine(_:)(*(v1 + 82));
  v11 = *(v1 + 88);
  v12 = *(v11 + 16);
  result = MEMORY[0x1B274DB20](v12);
  if (v12)
  {
    v14 = v11 + 32;
    do
    {
      v15 = *(v14 + 16);
      v20[0] = *v14;
      v20[1] = v15;
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v18 = *(v14 + 64);
      v21 = *(v14 + 80);
      v20[3] = v17;
      v20[4] = v18;
      v20[2] = v16;
      outlined init with copy of Extension(v20, v19);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v20);
      v14 += 88;
      --v12;
    }

    while (v12);
  }

  return result;
}

Swift::Int ServerHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  ServerHello.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ServerHello()
{
  Hasher.init(_seed:)();
  ServerHello.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ServerHello(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return specialized static ServerHello.__derived_struct_equals(_:_:)(v9, v10) & 1;
}

unint64_t ServerHello.write(into:)(uint64_t *a1)
{
  v2 = v1;
  v43 = *MEMORY[0x1E69E9840];
  LOWORD(v37) = *v2;
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  *(&v41 + 1) = MEMORY[0x1E69E6290];
  v42 = MEMORY[0x1E6969DF8];
  *&v40 = &v37;
  *(&v40 + 1) = &v37 + 2;
  v6 = __swift_project_boxed_opaque_existential_0(&v40, MEMORY[0x1E69E6290]);
  v8 = *v6;
  v7 = v6[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v40);
  v9 = *(v2 + 24);
  v37 = *(v2 + 8);
  v38 = v9;
  *(&v41 + 1) = v4;
  v42 = v5;
  *&v40 = &v37;
  *(&v40 + 1) = &v39;
  v10 = __swift_project_boxed_opaque_existential_0(&v40, v4);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v40);
  v13 = *(v2 + 56);
  v40 = *(v2 + 40);
  v41 = v13;
  v42 = *(v2 + 72);
  v14 = ByteBuffer.writeLegacySessionID(_:)(&v40);
  v15 = v14 + 34;
  if (__OFADD__(v14, 34))
  {
    __break(1u);
    goto LABEL_16;
  }

  v36 = bswap32(*(v2 + 80)) >> 16;
  *(&v38 + 1) = v4;
  v39 = v5;
  *&v37 = &v36;
  *(&v37 + 1) = &v37;
  v16 = __swift_project_boxed_opaque_existential_0(&v37, v4);
  v18 = *v16;
  v17 = v16[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v19 = __OFADD__(v15, 2);
  v20 = v15 + 2;
  if (v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v36) = *(v2 + 82);
  *(&v38 + 1) = v4;
  v39 = v5;
  *&v37 = &v36;
  *(&v37 + 1) = &v36 + 1;
  v21 = __swift_project_boxed_opaque_existential_0(&v37, v4);
  v23 = *v21;
  v22 = v21[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v19 = __OFADD__(v20, 1);
  v24 = v20 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = *a1;
  v26 = a1[1];
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v28 = *(v25 + 24);
    }

    else
    {
      v28 = 0;
    }
  }

  else if (v27)
  {
    v28 = v25 >> 32;
  }

  else
  {
    v28 = BYTE6(v26);
  }

  v36 = 0;
  *(&v38 + 1) = v4;
  v39 = v5;
  *&v37 = &v36;
  *(&v37 + 1) = &v37;
  v29 = __swift_project_boxed_opaque_existential_0(&v37, v4);
  v31 = *v29;
  v30 = v29[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  v32 = specialized Sequence.reduce<A>(into:_:)(0, *(v2 + 88));
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v33 = v32;
  if (v32 >> 16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v32, v28);
  result = v24 + v33 + 2;
  if (__OFADD__(v24, v33 + 2))
  {
    goto LABEL_20;
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static ServerHello.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) != 0 && *(a1 + 9) == *(a2 + 9) && *(a1 + 40) == *(a2 + 40) && a1[82] == a2[82])
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(*(a1 + 11), *(a2 + 11));
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type ServerHello and conformance ServerHello()
{
  result = lazy protocol witness table cache variable for type ServerHello and conformance ServerHello;
  if (!lazy protocol witness table cache variable for type ServerHello and conformance ServerHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServerHello and conformance ServerHello);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerHello(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerHello(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EncryptedExtensions.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B274DB20](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 32);
      v8 = *(v6 + 64);
      v11[3] = *(v6 + 48);
      v11[4] = v8;
      v12 = *(v6 + 80);
      v9 = *(v6 + 16);
      v11[0] = *v6;
      v11[1] = v9;
      v11[2] = v7;
      outlined init with copy of Extension(v11, v10);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v11);
      v6 += 88;
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Int EncryptedExtensions.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1B274DB20](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 48);
      v9[2] = *(v3 + 32);
      v9[3] = v4;
      v9[4] = *(v3 + 64);
      v10 = *(v3 + 80);
      v5 = *(v3 + 16);
      v9[0] = *v3;
      v9[1] = v5;
      outlined init with copy of Extension(v9, &v7);
      Extension.hash(into:)(v8);
      outlined destroy of Extension(v9);
      v3 += 88;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncryptedExtensions()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EncryptedExtensions.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t EncryptedExtensions.write(into:)(uint64_t *a1, uint64_t a2)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
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
  v12 = specialized Sequence.reduce<A>(into:_:)(0, a2);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v13 = v12;
  if (v12 >> 16)
  {
    goto LABEL_11;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v12, v8);
  v14 = *MEMORY[0x1E69E9840];
  return v13 + 2;
}

uint64_t _s15SwiftTLSLibrary19EncryptedExtensionsVAA24HandshakeMessageProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15SwiftTLSLibrary19EncryptedExtensionsV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary19EncryptedExtensionsV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  outlined copy of Data._Representation(*a1, v3);
  v6 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a43TLSLibrary19EncryptedExtensionsV5bytesAcA10cd7Vz_tAA8f23OYKcfc04readD0L_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1);
  v7 = v6;
  if (v1 || !v6)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  else
  {
    outlined consume of Data._Representation(v4, v3);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type EncryptedExtensions and conformance EncryptedExtensions()
{
  result = lazy protocol witness table cache variable for type EncryptedExtensions and conformance EncryptedExtensions;
  if (!lazy protocol witness table cache variable for type EncryptedExtensions and conformance EncryptedExtensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncryptedExtensions and conformance EncryptedExtensions);
  }

  return result;
}

__n128 _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1, &v10, v12);
  if (v3)
  {
    v7 = v11;
    result.n128_u64[0] = v10;
    *a2 = v10;
    *(a2 + 16) = v7;
  }

  else
  {
    v8 = v12[5];
    *(a3 + 64) = v12[4];
    *(a3 + 80) = v8;
    *(a3 + 96) = v13;
    v9 = v12[1];
    *a3 = v12[0];
    *(a3 + 16) = v9;
    result = v12[3];
    *(a3 + 32) = v12[2];
    *(a3 + 48) = result;
  }

  return result;
}

__n128 ClientHello.init(legacyVersion:random:legacySessionID:cipherSuites:legacyCompressionMethods:extensions:)@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  result = *a6;
  v11 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v11;
  *(a9 + 72) = *(a6 + 32);
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

uint64_t ClientHello.extensions.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t ClientHello.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  MEMORY[0x1B274DB60](*(v1 + 8));
  MEMORY[0x1B274DB60](v4);
  MEMORY[0x1B274DB60](v5);
  MEMORY[0x1B274DB60](v6);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  MEMORY[0x1B274DB20](*(v1 + 72));
  MEMORY[0x1B274DB60](v7);
  MEMORY[0x1B274DB60](v8);
  MEMORY[0x1B274DB60](v9);
  MEMORY[0x1B274DB60](v10);
  v11 = *(v1 + 80);
  v12 = *(v11 + 16);
  MEMORY[0x1B274DB20](v12);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  v15 = *(v1 + 88);
  v16 = *(v15 + 16);
  MEMORY[0x1B274DB20](v16);
  if (v16)
  {
    v17 = (v15 + 32);
    do
    {
      v18 = *v17++;
      Hasher._combine(_:)(v18);
      --v16;
    }

    while (v16);
  }

  v19 = *(v1 + 96);
  v20 = *(v19 + 16);
  result = MEMORY[0x1B274DB20](v20);
  if (v20)
  {
    v22 = v19 + 32;
    do
    {
      v23 = *(v22 + 16);
      v28[0] = *v22;
      v28[1] = v23;
      v24 = *(v22 + 32);
      v25 = *(v22 + 48);
      v26 = *(v22 + 64);
      v29 = *(v22 + 80);
      v28[3] = v25;
      v28[4] = v26;
      v28[2] = v24;
      outlined init with copy of Extension(v28, v27);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v28);
      v22 += 88;
      --v20;
    }

    while (v20);
  }

  return result;
}

Swift::Int ClientHello.hashValue.getter()
{
  Hasher.init(_seed:)();
  ClientHello.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClientHello()
{
  Hasher.init(_seed:)();
  ClientHello.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ClientHello(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static ClientHello.__derived_struct_equals(_:_:)(v11, v13) & 1;
}

uint64_t _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc22readCompressionMethodsL_ySays5UInt8VGAFzF(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    if (*(v2 + 24) >= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5)
    {
      v10 = v2 >> 32;
    }

    else
    {
      v10 = BYTE6(v3);
    }

    if (v10 >= v9)
    {
LABEL_20:
      if (v9 >= result)
      {
        v11 = Data._Representation.subscript.getter();
        result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v11, v12);
        a1[2] = v9;
        return result;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_19:
  if (v9 <= 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *_s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc14readExtensionsL_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
{
  v2 = v1;
  v71 = *MEMORY[0x1E69E9840];
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x1E69E7CC0]);
  v5 = a1[1];
  v48 = *a1;
  LOWORD(v68) = 0;
  v6 = a1[2];
  v7 = v6 + 2;
  if (__OFADD__(v6, 2))
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

  v8 = v4;
  v9 = v5 >> 62;
  v49 = BYTE6(v5);
  v50 = v5 >> 62;
  while (1)
  {
    if (v9 <= 1)
    {
      v10 = v49;
      if (v9)
      {
        v10 = v48 >> 32;
      }

LABEL_8:
      if (v10 < v7)
      {
        goto LABEL_60;
      }

      goto LABEL_11;
    }

    if (v9 == 2)
    {
      v10 = *(v48 + 24);
      goto LABEL_8;
    }

    if (v7 >= 1)
    {
      goto LABEL_60;
    }

LABEL_11:
    v11 = *a1;
    v12 = a1[1];
    *&v62 = *a1;
    *(&v62 + 1) = v12;
    if (v7 < v6)
    {
      goto LABEL_62;
    }

    v51 = v8;
    v52 = v2;
    *&v54 = v6;
    *(&v54 + 1) = v7;
    v53 = v7;
    outlined copy of Data._Representation(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v62, *(&v62 + 1));
    v13 = v68;
    a1[2] = v53;
    v15 = *a1;
    v14 = a1[1];
    LOWORD(v68) = 0;
    v16 = v53 + 2;
    if (__OFADD__(v53, 2))
    {
      goto LABEL_63;
    }

    v17 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      v18 = v15 >> 32;
    }

    else
    {
      v18 = BYTE6(v14);
    }

LABEL_19:
    if (v18 < v16)
    {
      goto LABEL_56;
    }

LABEL_22:
    *&v62 = v15;
    *(&v62 + 1) = v14;
    if (v16 < v53)
    {
      goto LABEL_64;
    }

    *&v54 = v53;
    *(&v54 + 1) = v53 + 2;
    outlined copy of Data._Representation(v15, v14);
    outlined copy of Data._Representation(v15, v14);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v62, *(&v62 + 1));
    v19 = bswap32(v68) >> 16;
    a1[2] = v16;
    v20 = v16 + v19;
    if (__OFADD__(v16, v19))
    {
      goto LABEL_65;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (v23)
      {
        v24 = v21 >> 32;
      }

      else
      {
        v24 = BYTE6(v22);
      }

LABEL_30:
      if (v24 < v20)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 24);
      goto LABEL_30;
    }

    if (v20 > 0)
    {
      goto LABEL_57;
    }

LABEL_33:
    if (v20 < v16)
    {
      goto LABEL_66;
    }

    v25 = Data._Representation.subscript.getter();
    v27 = 0;
    a1[2] = v20;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v29 = v52;
      if (v28 == 2)
      {
        v27 = *(v25 + 16);
      }
    }

    else
    {
      v29 = v52;
      if (v28)
      {
        v27 = v25;
      }
    }

    v68 = v25;
    v69 = v26;
    v70 = v27;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v68, bswap32(v13) >> 16, 1, 0, v60, &v62);
    if (v29)
    {
      v45 = v60[0];
      v44 = v60[1];
      v39 = v61;
      v43 = v68;
      v42 = v69;
      goto LABEL_59;
    }

    v2 = 0;
    v30 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v31 = *(v68 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v31 = v68 >> 32;
    }

    else
    {
      v31 = BYTE6(v69);
    }

    if (__OFSUB__(v31, v70))
    {
      goto LABEL_67;
    }

    if (v31 != v70)
    {
      v39 = 2;
      v40 = v68;
      v41 = v69;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v56 = v64;
      v57 = v65;
      v58 = v66;
      v59 = v67;
      v54 = v62;
      v55 = v63;
      outlined destroy of Extension(&v54);
      v42 = v41;
      v43 = v40;
      v44 = 0;
      v45 = 1;
LABEL_59:
      outlined consume of Data._Representation(v43, v42);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v15;
      a1[1] = v14;
      a1[2] = v53;
      *&v62 = v45;
      *(&v62 + 1) = v44;
      LOBYTE(v63) = v39;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      v8 = v45;
      goto LABEL_60;
    }

    outlined consume of Data._Representation(v68, v69);
    outlined consume of Data._Representation(v15, v14);
    v59 = v67;
    v57 = v65;
    v58 = v66;
    v55 = v63;
    v56 = v64;
    v54 = v62;
    v8 = v51;
    v33 = *(v51 + 2);
    v32 = *(v51 + 3);
    if (v33 >= v32 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v51);
    }

    LODWORD(v9) = v50;
    *(v8 + 2) = v33 + 1;
    v34 = &v8[88 * v33];
    v35 = v55;
    *(v34 + 2) = v54;
    *(v34 + 3) = v35;
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v34[112] = v59;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    *(v34 + 4) = v36;
    LOWORD(v68) = 0;
    v6 = a1[2];
    v7 = v6 + 2;
    if (__OFADD__(v6, 2))
    {
      goto LABEL_61;
    }
  }

  if (v17 == 2)
  {
    v18 = *(v15 + 24);
    goto LABEL_19;
  }

  if (v16 < 1)
  {
    goto LABEL_22;
  }

LABEL_56:
  outlined copy of Data._Representation(v15, v14);
  v21 = *a1;
  v22 = a1[1];
LABEL_57:
  outlined consume of Data._Representation(v21, v22);
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v53;
  v8 = v51;
LABEL_60:
  v46 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t specialized static ClientHello.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) == 0 || *(a1 + 9) != *(a2 + 9) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary11CipherSuiteV_Tt1g5(*(a1 + 10), *(a2 + 10)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(*(a1 + 11), *(a2 + 11)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  v5 = *(a2 + 12);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v4, v5);
}

uint64_t _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v7 & 0x10000) != 0)
  {
    goto LABEL_7;
  }

  v8 = v7;
  ByteBuffer.readRandom()(v50);
  if (v51)
  {
    goto LABEL_7;
  }

  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  outlined copy of Data._Representation(*a1, v9);
  v12 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v12 & 0x100) != 0)
  {
    goto LABEL_5;
  }

  v13 = ByteBuffer.readSlice(length:)(v12);
  if (v14 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v47 = v13;
  v48 = v14;
  v49 = v15;
  _s15SwiftTLSLibrary10ByteBufferV19readLegacySessionIDAA0fgH0VSgyAA8TLSErrorOYKFAfCzAIYKXEfU_(&v47, v42, &v44);
  if (v3)
  {
    v20 = v11;
    v18 = v42[0];
    v19 = v42[1];
    v16 = v43;
    v21 = v47;
    v22 = v48;
LABEL_22:
    outlined consume of Data._Representation(v21, v22);
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v20;
    *&v44 = v18;
    *(&v44 + 1) = v19;
    LOBYTE(v45) = v16;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    goto LABEL_8;
  }

  result = v47;
  v23 = v48 >> 62;
  if ((v48 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v24 = *(v47 + 24);
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v23)
  {
    v24 = v47 >> 32;
  }

  else
  {
    v24 = BYTE6(v48);
  }

  if (__OFSUB__(v24, v49))
  {
    __break(1u);
  }

  else
  {
    if (v24 != v49)
    {
      v20 = v11;
      v16 = 2;
      v27 = v47;
      v28 = v48;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v22 = v28;
      v21 = v27;
      v19 = 0;
      v18 = 1;
      goto LABEL_22;
    }

    outlined consume of Data._Representation(v47, v48);
    outlined consume of Data._Representation(v10, v9);
    v39 = v45;
    v40 = v44;
    v38 = v46;
    v10 = *a1;
    v9 = a1[1];
    v52 = a1[2];
    outlined copy of Data._Representation(v10, v9);
    v25 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA11CipherSuiteVGTg504_s15a12TLSLibrary10cd8VSayAA11qr5VGAA8L128OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8g12OYKcfc16reade17SuitesL_ySayAA0J5F6VGAFzFTf3nnpf_nTf1nc_n();
    v26 = v25;
    v11 = v52;
    if (!v25)
    {
LABEL_5:
      outlined consume of Data._Representation(*a1, a1[1]);
LABEL_6:
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
LABEL_7:
      v44 = 0uLL;
      v16 = 2;
      LOBYTE(v45) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      result = swift_willThrowTypedImpl();
      v18 = 0;
      v19 = 0;
LABEL_8:
      *a2 = v18;
      *(a2 + 8) = v19;
      *(a2 + 16) = v16;
      return result;
    }

    outlined consume of Data._Representation(v10, v9);
    v10 = *a1;
    v29 = a1[1];
    v52 = a1[2];
    v36 = v29;
    outlined copy of Data._Representation(v10, v29);
    v30 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAKGTg504_s15a12TLSLibrary10cd6VSays5p5VGAA8L134OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f38OYKcfc22readCompressionMethodsL_ySays5E6VGAFzFTf3nnpf_nTf1nc_n();
    v11 = v52;
    v9 = v36;
    v35 = v30;
    if (!v30)
    {
      outlined consume of Data._Representation(*a1, a1[1]);

      goto LABEL_6;
    }

    outlined consume of Data._Representation(v10, v36);
    v10 = *a1;
    v31 = a1[1];
    v52 = a1[2];
    v37 = v31;
    outlined copy of Data._Representation(v10, v31);
    v32 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1);
    v33 = v52;
    v34 = v32;
    if (!v32)
    {
      outlined consume of Data._Representation(*a1, a1[1]);

      v9 = v37;
      v11 = v33;
      goto LABEL_6;
    }

    result = outlined consume of Data._Representation(v10, v37);
    *&v41[6] = v50[0];
    *&v41[22] = v50[1];
    *(a3 + 2) = *v41;
    *a3 = bswap32(v8) >> 16;
    *(a3 + 18) = *&v41[16];
    *(a3 + 32) = *&v41[30];
    *(a3 + 56) = v39;
    *(a3 + 40) = v40;
    *(a3 + 72) = v38;
    *(a3 + 80) = v26;
    *(a3 + 88) = v35;
    *(a3 + 96) = v34;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClientHello and conformance ClientHello()
{
  result = lazy protocol witness table cache variable for type ClientHello and conformance ClientHello;
  if (!lazy protocol witness table cache variable for type ClientHello and conformance ClientHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHello and conformance ClientHello);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientHello(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientHello(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t GeneratedEphemeralPrivateKey.namedGroup.getter()
{
  v1 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v0, v4);
  v5 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
  outlined destroy of GeneratedEphemeralPrivateKey(v4, type metadata accessor for GeneratedEphemeralPrivateKey);
  return v5;
}

uint64_t generateEphemeralKeyForNamedGroup(_:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 4588:
      X25519MLKEM768EphemeralKey.init()(a2);
      v3 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 29:
      Curve25519.KeyAgreement.PrivateKey.init()();
      v3 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 24:
      P384.KeyAgreement.PrivateKey.init()();
      v3 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      v4 = *(*(v3 - 8) + 56);
      v5 = a2;
      v6 = 0;
      v7 = v3;
      goto LABEL_9;
  }

  v8 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v4 = *(*(v8 - 8) + 56);
  v7 = v8;
  v5 = a2;
  v6 = 1;
LABEL_9:

  return v4(v5, v6, 1, v7);
}

uint64_t _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v44 = a4;
  v5 = v4;
  v49 = a3;
  v46 = a2;
  v43 = a1;
  v6 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for P384EphemeralKey(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SymmetricKey();
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v21 = type metadata accessor for Curve25519EphemeralKey(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v5, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v28, v24, type metadata accessor for Curve25519EphemeralKey);
    v37 = v45;
    v5 = v46;
    v31 = v49;
    _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(v46, v49, &v47, v20);
    if (v37)
    {
      v33 = *(&v47 + 1);
      v32 = v47;
      v34 = v48;
      v35 = type metadata accessor for Curve25519EphemeralKey;
      v36 = v24;
      goto LABEL_9;
    }

    outlined destroy of GeneratedEphemeralPrivateKey(v24, type metadata accessor for Curve25519EphemeralKey);
    (*(v42 + 32))(v43, v20, v14);
LABEL_12:
    outlined copy of Data._Representation(v5, v31);
    return v5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of X25519MLKEM768EphemeralKey(v28, v9, type metadata accessor for X25519MLKEM768EphemeralKey);
    v38 = v45;
    v39 = _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(v43, v46, v49, &v47);
    if (!v38)
    {
      v5 = v39;
      outlined destroy of GeneratedEphemeralPrivateKey(v9, type metadata accessor for X25519MLKEM768EphemeralKey);
      return v5;
    }

    v33 = *(&v47 + 1);
    v32 = v47;
    v34 = v48;
    v35 = type metadata accessor for X25519MLKEM768EphemeralKey;
    v36 = v9;
    goto LABEL_9;
  }

  outlined init with take of X25519MLKEM768EphemeralKey(v28, v13, type metadata accessor for P384EphemeralKey);
  v30 = v45;
  v5 = v46;
  v31 = v49;
  _s15SwiftTLSLibrary16P384EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricE0V10Foundation0H0V_tAA8TLSErrorOYKF(v46, v49, &v47, v18);
  if (!v30)
  {
    outlined destroy of GeneratedEphemeralPrivateKey(v13, type metadata accessor for P384EphemeralKey);
    (*(v42 + 32))(v43, v18, v14);
    goto LABEL_12;
  }

  v33 = *(&v47 + 1);
  v32 = v47;
  v34 = v48;
  v35 = type metadata accessor for P384EphemeralKey;
  v36 = v13;
LABEL_9:
  outlined destroy of GeneratedEphemeralPrivateKey(v36, v35);
  v40 = v44;
  *v44 = v32;
  v40[1] = v33;
  *(v40 + 16) = v34;
  return v5;
}

double X25519MLKEM768EphemeralKey.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MLKEM768.PublicKey();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLKEM768.PrivateKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  *(a1 + v15[7]) = 32;
  *(a1 + v15[8]) = 1184;
  *(a1 + v15[9]) = 1088;
  Curve25519.KeyAgreement.PrivateKey.init()();
  static MLKEM768.PrivateKey.generate()();
  (*(v11 + 32))(a1 + v15[5], v14, v10);
  MLKEM768.PrivateKey.publicKey.getter();
  v16 = MLKEM768.PublicKey.rawRepresentation.getter();
  v18 = v17;
  (*(v6 + 8))(v9, v26);
  Curve25519.KeyAgreement.PrivateKey.publicKey.getter();
  v19 = Curve25519.KeyAgreement.PublicKey.rawRepresentation.getter();
  v21 = v20;
  (*(v27 + 8))(v5, v28);
  *&v30[0] = v16;
  *&v30[1] = v18;
  v29[3] = MEMORY[0x1E6969080];
  v29[4] = MEMORY[0x1E6969078];
  v29[0] = v19;
  v29[1] = v21;
  v22 = __swift_project_boxed_opaque_existential_0(v29, MEMORY[0x1E6969080]);
  v23 = *v22;
  v24 = v22[1];
  outlined copy of Data._Representation(v16, v18);
  outlined copy of Data._Representation(v19, v21);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v23, v24);
  outlined consume of Data._Representation(v19, v21);
  outlined consume of Data._Representation(v16, v18);
  __swift_destroy_boxed_opaque_existential_0(v29);
  result = v30[0];
  *(a1 + v15[6]) = *v30;
  return result;
}

uint64_t Curve25519EphemeralKey.publicKeyData.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t _s15SwiftTLSLibrary22Curve25519EphemeralKeyV5encap06publicE4Data10Foundation0H0V_9CryptoKit09SymmetricE0VtAH_tAA8TLSErrorOYKFTm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, __int128 *))
{
  v19 = a1;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(a2, a3, &v17);
  if (v5)
  {
    v15 = v18;
    *a4 = v17;
    *(a4 + 16) = v15;
  }

  else
  {
    (*(v11 + 32))(v19, v14, v10);
    outlined copy of Data._Representation(a2, a3);
  }

  return a2;
}

uint64_t _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v70 = a1;
  v72 = type metadata accessor for SymmetricKey();
  v71 = *(v72 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for KEM.EncapsulationResult();
  v68 = *(v69 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v76 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLKEM768.PublicKey();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SymmetricKey();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SharedSecret();
  v81 = *(v79 - 8);
  v20 = *(v81 + 64);
  v21 = MEMORY[0x1EEE9AC00](v79);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v61 - v24;
  v25 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v27);
  v94 = &v61 - v32;
  v33 = a3 >> 62;
  v75 = v14;
  if ((a3 >> 62) > 1)
  {
    v34 = 0;
    if (v33 != 2)
    {
      goto LABEL_10;
    }

    v36 = *(a2 + 16);
    v35 = *(a2 + 24);
    v34 = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v33)
  {
    v34 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v34 = HIDWORD(a2) - a2;
LABEL_10:
  v74 = v13;
  v83 = v31;
  v84 = result;
  result = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v37 = *(v4 + *(result + 28));
  v38 = *(v4 + *(result + 32));
  v39 = __OFADD__(v37, v38);
  v40 = v37 + v38;
  if (v39)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v34 < v40)
  {
    v86 = xmmword_1B26C7200;
    v87 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v41 = 9;
LABEL_16:
    *a4 = v41;
    *(a4 + 8) = 0;
    *(a4 + 16) = 2;
    return v4;
  }

  v67 = a4;
  v66 = v29;
  outlined copy of Data._Representation(a2, a3);
  specialized Collection.prefix(_:)(v38, a2, a3, &v86);
  v42 = v86;
  outlined copy of Data._Representation(a2, a3);
  specialized Collection.dropFirst(_:)(v38, a2, a3, &v86);
  v4 = *(&v86 + 1);
  v43 = v86;
  outlined copy of Data._Representation(v86, *(&v86 + 1));
  Curve25519.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
  if (v5)
  {

    v86 = xmmword_1B26C6420;
    v87 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v42, *(&v42 + 1));
    outlined consume of Data._Representation(v43, v4);
    v41 = 32;
    a4 = v67;
    goto LABEL_16;
  }

  v63 = v43;
  v64 = v4;
  v65 = v42;
  v44 = v85;
  Curve25519.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  (*(v81 + 16))(v23, v44, v79);
  lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret();
  SymmetricKey.init<A>(data:)();
  v86 = v65;
  outlined copy of Data._Representation(v65, *(&v65 + 1));
  lazy protocol witness table accessor for type Data and conformance Data();
  MLKEM768.PublicKey.init<A>(rawRepresentation:)();
  MLKEM768.PublicKey.encapsulate()();
  v45 = KEM.EncapsulationResult.sharedSecret.getter();
  v92 = xmmword_1B26C6130;
  v93 = 0;
  MEMORY[0x1EEE9AC00](v45);
  *(&v61 - 2) = &v92;
  v46 = SymmetricKey.withUnsafeBytes<A>(_:)();
  MEMORY[0x1EEE9AC00](v46);
  *(&v61 - 2) = &v92;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v67 = 0;
  result = v93;
  v47 = *(&v92 + 1) >> 62;
  if ((*(&v92 + 1) >> 62) > 1)
  {
    v50 = 0;
    v48 = MEMORY[0x1E6969078];
    v49 = v66;
    if (v47 == 2)
    {
      v50 = *(v92 + 24);
    }
  }

  else
  {
    v48 = MEMORY[0x1E6969078];
    v49 = v66;
    if (v47)
    {
      v50 = v92 >> 32;
    }

    else
    {
      v50 = BYTE14(v92);
    }
  }

  if (v50 >= v93)
  {
    v66 = Data._Representation.subscript.getter();
    v62 = v51;
    v52 = KEM.EncapsulationResult.encapsulated.getter();
    v54 = v53;
    Curve25519.KeyAgreement.PrivateKey.publicKey.getter();
    v55 = Curve25519.KeyAgreement.PublicKey.rawRepresentation.getter();
    v57 = v56;
    v83 = *(v83 + 8);
    (v83)(v49, v84);
    v90 = v52;
    v91 = v54;
    v88 = MEMORY[0x1E6969080];
    v89 = v48;
    *&v86 = v55;
    *(&v86 + 1) = v57;
    v58 = __swift_project_boxed_opaque_existential_0(&v86, MEMORY[0x1E6969080]);
    v60 = *v58;
    v59 = v58[1];
    outlined copy of Data._Representation(v52, v54);
    outlined copy of Data._Representation(v55, v57);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v60, v59);
    outlined consume of Data._Representation(v55, v57);
    outlined consume of Data._Representation(v52, v54);
    __swift_destroy_boxed_opaque_existential_0(&v86);
    v4 = v90;
    *&v86 = v66;
    *(&v86 + 1) = v62;
    SymmetricKey.init<A>(data:)();
    outlined consume of Data._Representation(v65, *(&v65 + 1));
    outlined consume of Data._Representation(v63, v64);
    (*(v71 + 8))(v73, v72);
    (*(v68 + 8))(v76, v69);
    (*(v77 + 8))(v82, v78);
    (*(v81 + 8))(v85, v79);
    outlined consume of Data._Representation(v92, *(&v92 + 1));
    (*(v75 + 8))(v80, v74);
    (v83)(v94, v84);
    return v4;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary26X25519MLKEM768EphemeralKeyV5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v8 = type metadata accessor for SymmetricKey();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SharedSecret();
  v15 = *(v70 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v70);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v60 - v20;
  v21 = type metadata accessor for Curve25519.KeyAgreement.PublicKey();
  v22 = *(*(v21 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v21);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2 >> 62;
  v69 = v15;
  if ((a2 >> 62) > 1)
  {
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_10;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v28 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = HIDWORD(a1) - a1;
LABEL_10:
  v67 = v12;
  v68 = v11;
  v73 = v24;
  v74 = result;
  result = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v31 = *(v4 + *(result + 28));
  v32 = *(v4 + *(result + 36));
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v28 < v34)
  {
    v78 = xmmword_1B26C7200;
    LOBYTE(v79) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v35 = 9;
LABEL_18:
    *a3 = v35;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    return result;
  }

  v36 = result;
  v63 = a3;
  outlined copy of Data._Representation(a1, a2);
  specialized Collection.prefix(_:)(v32, a1, a2, &v78);
  v37 = v78;
  outlined copy of Data._Representation(a1, a2);
  specialized Collection.dropFirst(_:)(v32, a1, a2, &v78);
  v38 = v78;
  outlined copy of Data._Representation(v78, *(&v78 + 1));
  v39 = v26;
  v40 = v80;
  Curve25519.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
  if (v40)
  {

    v78 = xmmword_1B26C6420;
    LOBYTE(v79) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v37, *(&v37 + 1));
    result = outlined consume of Data._Representation(v38, *(&v38 + 1));
LABEL_17:
    v35 = 32;
    a3 = v63;
    goto LABEL_18;
  }

  v62 = v37 >> 64;
  v80 = v37;
  v41 = v75;
  Curve25519.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v42 = v69;
  v43 = *(v69 + 16);
  v44 = v41;
  v45 = v70;
  v61 = 0;
  v43(v19, v44, v70);
  lazy protocol witness table accessor for type SharedSecret and conformance SharedSecret();
  v46 = v45;
  SymmetricKey.init<A>(data:)();
  v47 = *(v36 + 20);
  v48 = v80;
  v49 = v62;
  *&v78 = v80;
  *(&v78 + 1) = v62;
  lazy protocol witness table accessor for type Data and conformance Data();
  v50 = v61;
  v51 = MLKEM768.PrivateKey.decapsulate<A>(_:)();
  if (v50)
  {

    v78 = xmmword_1B26C6420;
    LOBYTE(v79) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v48, v49);
    outlined consume of Data._Representation(v38, *(&v38 + 1));
    (*(v67 + 8))(v72, v68);
    (*(v42 + 8))(v75, v46);
    result = (*(v73 + 8))(v39, v74);
    goto LABEL_17;
  }

  v78 = xmmword_1B26C6130;
  v79 = 0;
  MEMORY[0x1EEE9AC00](v51);
  *(&v60 - 2) = &v78;
  v52 = SymmetricKey.withUnsafeBytes<A>(_:)();
  MEMORY[0x1EEE9AC00](v52);
  *(&v60 - 2) = &v78;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  result = v79;
  v53 = *(&v78 + 1) >> 62;
  if ((*(&v78 + 1) >> 62) > 1)
  {
    v55 = 0;
    v54 = v42;
    v56 = v80;
    if (v53 == 2)
    {
      v55 = *(v78 + 24);
    }
  }

  else
  {
    v54 = v42;
    if (v53)
    {
      v55 = v78 >> 32;
    }

    else
    {
      v55 = BYTE14(v78);
    }

    v56 = v80;
  }

  if (v55 >= v79)
  {
    v57 = Data._Representation.subscript.getter();
    v59 = v58;
    v76 = v57;
    v77 = v58;
    outlined copy of Data._Representation(v57, v58);
    SymmetricKey.init<A>(data:)();
    outlined consume of Data._Representation(v56, v62);
    outlined consume of Data._Representation(v57, v59);
    outlined consume of Data._Representation(v38, *(&v38 + 1));
    (*(v65 + 8))(v71, v66);
    (*(v67 + 8))(v72, v68);
    (*(v54 + 8))(v75, v46);
    outlined consume of Data._Representation(v78, *(&v78 + 1));
    return (*(v73 + 8))(v39, v74);
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t protocol witness for EphemeralPrivateKey.namedGroup.getter in conformance GeneratedEphemeralPrivateKey(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GeneratedEphemeralPrivateKey(v3, v5);
  v6 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
  outlined destroy of GeneratedEphemeralPrivateKey(v5, type metadata accessor for GeneratedEphemeralPrivateKey);
  return v6;
}

double _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOAA0deF0A2aDP5decap14ciphertextData9CryptoKit09SymmetricF0V10Foundation0I0V_tAA8TLSErrorOYKFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, __int128 *))
{
  a6(a1, a2, &v10);
  if (v6)
  {
    v9 = v11;
    result = *&v10;
    *a3 = v10;
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t protocol witness for EphemeralPrivateKey.publicKeyData.getter in conformance Curve25519EphemeralKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t _s15SwiftTLSLibrary22Curve25519EphemeralKeyVAA0d7PrivateE0A2aDP5encap06publicE4Data10Foundation0I0V_9CryptoKit09SymmetricE0VtAJ_tAA8TLSErrorOYKFTWTm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, __int128 *))
{
  v21 = a1;
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a7(a2, a3, &v19);
  if (v7)
  {
    v17 = v20;
    *a4 = v19;
    *(a4 + 16) = v17;
  }

  else
  {
    (*(v13 + 32))(v21, v16, v12);
    outlined copy of Data._Representation(a2, a3);
  }

  return a2;
}

uint64_t Curve25519EphemeralKey.privateKey.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t Curve25519EphemeralKey.privateKey.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t X25519MLKEM768EphemeralKey.privateKeyB.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 20);
  v4 = type metadata accessor for MLKEM768.PrivateKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t X25519MLKEM768EphemeralKey.privateKeyB.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 20);
  v4 = type metadata accessor for MLKEM768.PrivateKey();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t X25519MLKEM768EphemeralKey.publicKeyData.getter()
{
  v1 = v0 + *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t X25519MLKEM768EphemeralKey.publicKeyData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for X25519MLKEM768EphemeralKey(0) + 24);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t specialized Collection.dropFirst(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
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
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    result = outlined consume of Data._Representation(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t protocol witness for EphemeralPrivateKey.publicKeyData.getter in conformance X25519MLKEM768EphemeralKey(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

double _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOAA0deF0A2aDP5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAJ_tAA8TLSErrorOYKFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, __int128 *))
{
  a7(a1, a2, a3, &v11);
  if (v7)
  {
    v10 = v12;
    result = *&v11;
    *a4 = v11;
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for X25519MLKEM768EphemeralKey()
{
  result = type metadata accessor for Curve25519.KeyAgreement.PrivateKey();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLKEM768.PrivateKey();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HandshakeType.description.getter(unsigned __int8 a1)
{
  if (a1 <= 0xAu)
  {
    if (a1 <= 3u)
    {
      if (a1 == 1)
      {
        return 0x48746E65696C632ELL;
      }

      if (a1 == 2)
      {
        return 0x487265767265732ELL;
      }
    }

    else
    {
      switch(a1)
      {
        case 4u:
          return 0xD000000000000011;
        case 5u:
          return 0x6145664F646E652ELL;
        case 8u:
          return 0xD000000000000014;
      }
    }
  }

  else if (a1 > 0x13u)
  {
    switch(a1)
    {
      case 0x14u:
        return 0x656873696E69662ELL;
      case 0x18u:
        return 0x6164705579656B2ELL;
      case 0xFEu:
        return 0x6567617373656D2ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xBu:
        return 0x696669747265632ELL;
      case 0xDu:
        return 0xD000000000000013;
      case 0xFu:
        return 0xD000000000000012;
    }
  }

  _StringGuts.grow(_:)(27);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t lazy protocol witness table accessor for type HandshakeType and conformance HandshakeType()
{
  result = lazy protocol witness table cache variable for type HandshakeType and conformance HandshakeType;
  if (!lazy protocol witness table cache variable for type HandshakeType and conformance HandshakeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandshakeType and conformance HandshakeType);
  }

  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 20);

  return outlined init with copy of P256.Signing.PrivateKey?(v3, a1);
}

uint64_t type metadata accessor for ServerHandshakeStateMachine.Configuration()
{
  result = type metadata singleton initialization cache for ServerHandshakeStateMachine.Configuration;
  if (!type metadata singleton initialization cache for ServerHandshakeStateMachine.Configuration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of P256.Signing.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 20);

  return outlined assign with take of P256.Signing.PrivateKey?(a1, v3);
}

uint64_t outlined assign with take of P256.Signing.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ServerHandshakeStateMachine.Configuration.quicTransportParameters.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 24));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data?(*v1, v1[1]);
  return v2;
}

uint64_t ServerHandshakeStateMachine.Configuration.quicTransportParameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 24));
  v8 = v7[2];
  result = outlined consume of ByteBuffer?(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 28));
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.enableEarlyData.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.transportIsQUIC.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.useRawEPSKs.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.init(serverName:signingKey:quicTransportParameters:alpn:enableEarlyData:transportIsQUIC:useRawEPSKs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char a10, char a11)
{
  v16 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v17 = v16[5];
  v18 = type metadata accessor for P256.Signing.PrivateKey();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = &a9[v16[6]];
  *v19 = xmmword_1B26C5EF0;
  v19[2] = 0;
  v20 = v16[7];
  *a9 = a1;
  *(a9 + 1) = a2;
  outlined assign with take of P256.Signing.PrivateKey?(a3, &a9[v17]);
  v21 = v19[2];
  result = outlined consume of ByteBuffer?(*v19, v19[1]);
  *v19 = a4;
  v19[1] = a5;
  v19[2] = a6;
  *&a9[v20] = a7;
  a9[v16[8]] = a8;
  a9[v16[9]] = a10;
  a9[v16[10]] = a11;
  return result;
}

void type metadata completion function for ServerHandshakeStateMachine.Configuration()
{
  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for P256.Signing.PrivateKey?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String]?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for P256.Signing.PrivateKey?()
{
  if (!lazy cache variable for type metadata for P256.Signing.PrivateKey?)
  {
    type metadata accessor for P256.Signing.PrivateKey();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for P256.Signing.PrivateKey?);
    }
  }
}

void type metadata accessor for [String]?()
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]?);
    }
  }
}

uint64_t PartialHandshakeResult.init(handshakeBytesToSend:newWriteEncryptionLevel:newReadEncryptionLevel:sessionTicket:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  v13 = type metadata accessor for PartialHandshakeResult(0);
  outlined init with take of EncryptionLevel?(a4, a8 + v13[5]);
  result = outlined init with take of EncryptionLevel?(a5, a8 + v13[6]);
  v15 = (a8 + v13[7]);
  *v15 = a6;
  v15[1] = a7;
  return result;
}

uint64_t outlined init with take of EncryptionLevel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.handshakeBytesToSend.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  outlined copy of Data?(v1, v2);
  return v1;
}

uint64_t PartialHandshakeResult.handshakeBytesToSend.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  result = outlined consume of ByteBuffer?(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return outlined init with copy of EncryptionLevel?(v3, a1);
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return outlined assign with take of EncryptionLevel?(a1, v3);
}

uint64_t outlined assign with take of EncryptionLevel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return outlined init with copy of EncryptionLevel?(v3, a1);
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return outlined assign with take of EncryptionLevel?(a1, v3);
}

uint64_t PartialHandshakeResult.sessionTicket.getter()
{
  v1 = v0 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t PartialHandshakeResult.sessionTicket.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  result = outlined consume of ByteBuffer?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

__n128 PartialHandshakeResult.init()@<Q0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1B26C5EF0;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for PartialHandshakeResult(0);
  v3 = v2[5];
  v4 = type metadata accessor for EncryptionLevel(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[6], 1, 1, v4);
  result = xmmword_1B26C5EF0;
  *(a1 + v2[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t EncryptionLevel.description.getter()
{
  v1 = type metadata accessor for EncryptionLevel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of EncryptionLevel(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for SymmetricKey();
  (*(*(v6 - 8) + 8))(v4, v6);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return 0x6B616873646E6168;
    }

    v8 = 0x63696C707061;
  }

  else
  {
    v8 = 0x44796C726165;
  }

  return v8 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
}

uint64_t outlined init with copy of EncryptionLevel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for PartialHandshakeResult()
{
  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EncryptionLevel?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for EncryptionLevel()
{
  type metadata accessor for (secret: SymmetricKey)();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (secret: SymmetricKey)()
{
  if (!lazy cache variable for type metadata for (secret: SymmetricKey))
  {
    v0 = type metadata accessor for SymmetricKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (secret: SymmetricKey));
    }
  }
}

uint64_t NamedGroup.metadataDescription.getter(unsigned __int16 a1)
{
  if (a1 > 0x1Cu)
  {
    if (a1 != 29)
    {
      if (a1 == 4588)
      {
        return 0x4C4D393135353258;
      }

      goto LABEL_8;
    }

    return 0x393135353258;
  }

  else
  {
    if (a1 != 23)
    {
      if (a1 == 24)
      {
        return 0x3438332D50;
      }

LABEL_8:
      _StringGuts.grow(_:)(24);

      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B274D610](v2);

      MEMORY[0x1B274D610](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x3635322D50;
  }
}

unint64_t lazy protocol witness table accessor for type NamedGroup and conformance NamedGroup()
{
  result = lazy protocol witness table cache variable for type NamedGroup and conformance NamedGroup;
  if (!lazy protocol witness table cache variable for type NamedGroup and conformance NamedGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedGroup and conformance NamedGroup);
  }

  return result;
}

void nwswifttlsrecord_disconnect_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_disconnect called", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_write_bytes_cold_1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136447234;
  *(buf + 4) = "nwswifttlsrecord_write_bytes";
  *(buf + 6) = 1024;
  *(buf + 14) = 564;
  *(buf + 9) = 2082;
  *(buf + 20) = a1 + 269;
  *(buf + 14) = 2048;
  *(buf + 30) = a1;
  *(buf + 19) = 2080;
  *(buf + 5) = a2;
  _os_log_error_impl(&dword_1B25F5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] nw_protocol_get_output_frames(%s) is not valid", buf, 0x30u);
}

void nwswifttlsrecord_write_bytes_cold_2(uint64_t a1, _BYTE *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22();
    _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x26u);
  }

  *a2 = 0;
  v3 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_write_bytes_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_write_bytes_cold_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_22();
    _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x26u);
  }

  *a3 = 0;
  v4 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_add_input_handler_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_add_input_handler invoked", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_add_input_handler_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_parameters_copy_protocol_options_legacy return nil", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_add_input_handler_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] parameters are nil", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_replace_input_handler_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_replace_input_handler invoked", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_remove_input_handler_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_remove_input_handler invoked", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_remove_input_handler_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_20(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] input_frame_array has frames during remove_input_handler", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_remove_input_handler_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_20(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] output_frame_array has frames during remove_input_handler", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_remove_input_handler_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_20(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] read_frame_array has frames during remove_input_handler", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_connected_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x26u);
  v4 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_connected_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_connected_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x26u);
  v4 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_input_available_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] triggering input available", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_input_available_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_output_available_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] received output available", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_output_available_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_output_available_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_input_frames_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x32u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_input_frames_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] Failed to allocate frame", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_input_frames_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] Failed to allocate buffer", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_output_frames_cold_1(uint64_t a1, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22();
    _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x26u);
  }

  *a2 = 0;
  v3 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_output_frames_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x32u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_output_frames_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] output buffer is NULL", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_output_frames_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_frame_create failed", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_get_output_frames_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_frame_create_external failed", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_input_finished_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_14())
  {
    v2 = *(v0 + 252);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Cu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_input_finished_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] default_input_handler is NULL", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_write_bytes_block_invoke_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 88);
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_22();
    _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x2Cu);
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Cu);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_bytes_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_bytes_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Cu);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_bytes_cold_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_protocol_get_name();
  *v6 = 136447234;
  OUTLINED_FUNCTION_15();
  *&v6[7] = 311;
  v6[9] = 2082;
  OUTLINED_FUNCTION_7();
  v7 = a1;
  v8 = 2080;
  v9 = v4;
  _os_log_error_impl(&dword_1B25F5000, v3, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] nw_protocol_get_input_frames(%s) is not valid", v6, 0x30u);

  v5 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_bytes_cold_4(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 24);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Cu);
  v8 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_bytes_cold_5(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_14())
  {
    v4 = *(*a2 + 24);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Cu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_bytes_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_1B25F5000, v0, v1, "%{public}s(%d) %{public}s[%p] no input frames available", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nwswifttlsrecord_read_bytes_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_nwswifttls_log && OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_read_bytes_block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 112);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x3Au);
  v6 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_read_bytes_block_invoke_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 120);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x36u);
  v6 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_get_input_frames_block_invoke_cold_1(uint64_t *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = g_nwswifttls_log;
  if (g_nwswifttls_log)
  {
    if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a1;
      v9 = "nwswifttlsrecord_get_input_frames_block_invoke";
      OUTLINED_FUNCTION_21();
      v10 = 1024;
      v11 = 1050;
      v12 = 2082;
      OUTLINED_FUNCTION_10();
      _os_log_debug_impl(&dword_1B25F5000, v4, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Resuming reading frames", v8, 0x26u);
    }

    a2 = *a1;
  }

  *a3 = a2;
  v6 = *MEMORY[0x1E69E9840];
}

void __nwswifttls_configure_with_sec_protocol_options_block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x1E69E9840]);
  if (v3)
  {
    v4 = (v3 + 269);
  }

  else
  {
    v4 = "";
  }

  v6 = 136447234;
  v7 = "nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke";
  v8 = 1024;
  v9 = 699;
  v10 = 2082;
  v11 = v4;
  v12 = 2048;
  v13 = v3;
  v14 = 1024;
  v15 = v1;
  _os_log_error_impl(&dword_1B25F5000, v2, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Unrecognized identity type: %d", &v6, 0x2Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1B25F5000, v1, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_configure_with_sec_protocol_options called with NULL content", v3, 0x26u);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t Data._Representation.subscript.getter()
{
  return MEMORY[0x1EEDC4510]();
}

{
  return MEMORY[0x1EEDC4518]();
}

uint64_t SymmetricKey.withUnsafeBytes<A>(_:)()
{
  return MEMORY[0x1EEE01848]();
}

{
  return MEMORY[0x1EEDBFCD8]();
}

uint64_t SymmetricKey.init<A>(data:)()
{
  return MEMORY[0x1EEE01850]();
}

{
  return MEMORY[0x1EEDBFCE8]();
}

uint64_t type metadata accessor for SymmetricKey()
{
  return MEMORY[0x1EEE01858]();
}

{
  return MEMORY[0x1EEDBFD00]();
}