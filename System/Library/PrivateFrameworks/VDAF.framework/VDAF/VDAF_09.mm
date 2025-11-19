uint64_t specialized BitMasks.__allocating_init<A>(from:parameter:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    return swift_willThrow();
  }

  if (a2 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = a2;
    *(v17 + 24) = 2;
    return swift_willThrow();
  }

  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(2 * a2, 7))
  {
    v8 = result;
    v9 = (2 * a2 + 7) >> 3;
    v11 = *(*(a5 + 8) + 8);
    v12 = dispatch thunk of Collection.count.getter();
    if (v12 == v9)
    {
      MEMORY[0x28223BE20](v12, v13);
      v25 = a4;
      v26 = a5;
      v27 = v8;
      v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for closure #1 in BitMasks.init<A>(from:parameter:), v24, 0, a2);
      MEMORY[0x28223BE20](v14, v15);
      v25 = a4;
      v26 = a5;
      v27 = a2;
      v28 = v8;
      v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for closure #2 in BitMasks.init<A>(from:parameter:), v24, 0, a2);
      result = swift_allocObject();
      *(result + 16) = v14;
      *(result + 24) = v16;
      return result;
    }

    _StringGuts.grow(_:)(24);
    v18 = _typeName(_:qualified:)();
    v20 = v19;

    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v21);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v29 = dispatch thunk of Collection.count.getter();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v22);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v23 = v18;
    v23[1] = v20;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in BitMasks.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return closure #1 in BitMasks.init<A>(from:parameter:)(a1, v2[3], a2);
}

uint64_t static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  result = (*(a5 + 8))(a4, a5);
  if (v10 == result)
  {
    v12 = *(a5 + 48);

    v13 = v12(a1, a2, a3, a4, a5);
    (*(a5 + 24))(a4, a5);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64_t ExtendableOutputFunction.nextVector(count:)(int64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x277D84F90];
    if (result)
    {
      v12 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v4 = v12;
      v7 = *(a3 + 32);
      do
      {
        v8 = v7(a2, a3);
        v13 = v4;
        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        if (v10 >= v9 >> 1)
        {
          v11 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v8 = v11;
          v4 = v13;
        }

        *(v4 + 16) = v10 + 1;
        *(v4 + v10 + 32) = v8;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  return result;
}

uint64_t static ExtendableOutputFunction.deriveSeed(seed:domainSeparationTag:binder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, a2, a3, a4, a5);
  v8 = (*(a5 + 8))(a4, a5);
  v9 = specialized Seed.init<A>(length:using:)(v8, v7, a4, a5);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t PINE<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v11 = v9;
  memcpy(__dst, v11, 0x148uLL);
  outlined copy of Data._Representation(a1, a2);
  v20 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a6, a7, __dst[0], 0, v35);
  if (v10)
  {
  }

  else
  {
    v22 = v35[0];
    v23 = v35[1];
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(__dst, v29, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
    _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSRySfGTt2B5(__dst, a3, &v30);
    _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v30, v31, v32, v33, v34);
    v38[0] = v34[0];
    v38[1] = v34[1];
    v38[2] = v34[2];
    _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt6B5(v37, v36, v20, a3, v21, v22, v23, v38);

    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
    v25 = v36[0];
    v26 = v36[1];
    v27 = v36[2];
    v21 = specialized VDAFEncodable.encodedBytes.getter(v37[0], v37[1], v37[2]);

    v28 = specialized PINEPrepareShare.encodedLength.getter(v25, v26, v27);
    v29[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0, MEMORY[0x277D84F90]);

    specialized Collection<>.encode<A>(into:)(v29, v25);
    specialized Array.append<A>(contentsOf:)(v26);
    specialized Array.append<A>(contentsOf:)(v27);
  }

  return v21;
}

{
  v11 = v9;
  memcpy(__dst, v11, 0x148uLL);
  outlined copy of Data._Representation(a1, a2);
  v20 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a6, a7, __dst[0], 0, v35);
  if (v10)
  {
  }

  else
  {
    v22 = v35[0];
    v23 = v35[1];
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(__dst, v29, &_s4VDAF4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGMR);
    _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSRySfGTt2B5(__dst, a3, &v30);
    _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v30, v31, v32, v33, v34);
    v38[0] = v34[0];
    v38[1] = v34[1];
    v38[2] = v34[2];
    _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt6B5(v37, v36, v20, a3, v21, v22, v23, v38);

    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
    v25 = v36[0];
    v26 = v36[1];
    v27 = v36[2];
    v21 = specialized VDAFEncodable.encodedBytes.getter(v37[0], v37[1], v37[2]);

    v28 = specialized PINEPrepareShare.encodedLength.getter(v25, v26, v27);
    v29[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0, MEMORY[0x277D84F90]);

    specialized Collection<>.encode<A>(into:)(v29, v25);
    specialized Array.append<A>(contentsOf:)(v26);
    specialized Array.append<A>(contentsOf:)(v27);
  }

  return v21;
}

char *PINE<>.outputShare(from:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, char **a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

void Lock.withLock<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  a1();
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t Lock.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t Lock.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

BOOL static Prio3PrepareMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4 && v2 != v3)
  {
    v5 = (v2 + 32);
    v6 = (v3 + 32);
    result = 1;
    while (*v5 == *v6)
    {
      ++v5;
      ++v6;
      if (!--v4)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prio3PrepareMessage(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (specialized static Seed.== infix(_:_:)(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t Prio3PrepareMessage.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(*(a3 + 8) + 8);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v9 = 0;
  }

  else
  {
    v9 = specialized Seed.init<A>(from:parameter:)(a1, a2, a3);
  }

  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t Prio3PrepareMessage.encodedLength.getter()
{
  if (*v0)
  {
    return *(*v0 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t Prio3PrepareMessage.encode<A>(into:)()
{
  if (*v0)
  {
    return Seed.encode<A>(into:)();
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance Prio3PrepareMessage()
{
  if (*v0)
  {
    return *(*v0 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Prio3PrepareMessage(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Prio3PrepareMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t Prio3PrepareState.measurementShare.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
}

BOOL static Prio3PrepareState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a1 + 24);
  v12 = *(a2 + 32);
  v13 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((static Share.== infix(_:_:)(v2, v3, v5, v6, AssociatedTypeWitness, AssociatedConformanceWitness) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v7)
    {
      v10 = specialized static Seed.== infix(_:_:)(v4, v7);
      result = 0;
      if ((v10 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  result = 0;
  if (v7)
  {
    return result;
  }

LABEL_8:
  if (v15 == v14)
  {
    return v13 == v12;
  }

  return result;
}

uint64_t Prio3PrepareState.init(measurementShare:jointRandSeed:aggregatorID:verifierLength:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Prio3PrepareState<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  return static Prio3PrepareState.== infix(_:_:)(a1, a2);
}

uint64_t Prio3PrepareStateDecodableParameter.measurement.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Prio3PrepareStateDecodableParameter.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = ShareDecodableParameter.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v10 = __OFADD__(v9, v4);
  result = v9 + v4;
  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t Prio3PrepareStateDecodableParameter.init(prio3:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for Prio3();
  swift_getWitnessTable();
  v14 = VDAFProtocol.isLeaderAggregatorID(_:)(a2);
  if (v15)
  {
    return (*(*(v13 - 8) + 8))(a1, v13);
  }

  v17 = v14;
  if (v14)
  {
    v18 = *(v13 + 56);
    v19 = (*(a5 + 48))(a3, a5);
  }

  else
  {
    v19 = (*(a6 + 8))(a4, a6);
  }

  v23 = v19;
  if (Prio3.isJointRandRequired.getter(v13))
  {
    v20 = (*(a6 + 8))(a4, a6);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v13 + 56);
  v22 = (*(a5 + 64))(a3, a5);
  result = (*(*(v13 - 8) + 8))(a1, v13);
  *a7 = v23;
  *(a7 + 8) = !v17;
  *(a7 + 16) = v20;
  *(a7 + 24) = a2;
  *(a7 + 32) = v22;
  return result;
}

uint64_t Prio3PrepareState.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedConformanceWitness = a4;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v10 + 8);
  if (v102 == 255)
  {
    v18 = v9;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    swift_willThrow();
    return (*(v7 + 8))(v18, a5);
  }

  v100 = v7;
  v93 = v5;
  v91 = v15;
  v21 = *v10;
  v22 = v11;
  v23 = v12;
  v25 = *(v10 + 16);
  v24 = *(v10 + 24);
  v26 = *(v10 + 32);
  v27 = *(*(v14 + 8) + 8);
  v97 = v9;
  v95 = v13;
  v96 = v27;
  v28 = dispatch thunk of Collection.count.getter();
  v98 = v21;
  v99 = a5;
  v29 = v28;
  LODWORD(v92) = v102 & 1;
  LOBYTE(v109) = v102 & 1;
  v94 = v25;
  v110 = v25;
  v111 = v24;
  v30 = v23;
  v31 = v22;
  v32 = v95;
  v112 = v26;
  v104 = v31;
  v105 = AssociatedConformanceWitness;
  v106 = v30;
  v107 = v95;
  v108 = v21;
  v33 = type metadata accessor for Prio3PrepareStateDecodableParameter();
  if (v29 != Prio3PrepareStateDecodableParameter.encodedLength.getter(v33))
  {
    v108 = 0;
    v109 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v108 = v31;
    v109 = AssociatedConformanceWitness;
    v110 = v30;
    v111 = v32;
    type metadata accessor for Prio3PrepareState();
    v62 = _typeName(_:qualified:)();
    v64 = v63;

    v104 = v62;
    v105 = v64;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v108 = v98;
    LOBYTE(v109) = v92;
    v110 = v94;
    v111 = v24;
    v112 = v26;
    v103 = Prio3PrepareStateDecodableParameter.encodedLength.getter(v33);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v65);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v66 = v97;
    v67 = v99;
    v108 = dispatch thunk of Collection.count.getter();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v68);

    v69 = v104;
    v70 = v105;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v71 = v69;
    v71[1] = v70;
    swift_willThrow();
    return (*(v100 + 8))(v66, v67);
  }

  v90 = v26;
  v92 = v24;
  (*(v100 + 16))(v17, v97, v99);
  v34 = *(v96 + 8);
  v35 = ArraySlice.init<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = ShareDecodableParameter.encodedLength.getter(v98, v102 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v44 = specialized Collection.prefix(_:)(v43, v35, v37, v39, v41);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = specialized Collection.dropFirst(_:)(v43, v35, v37, v39, v41);
  v53 = v52;
  v95 = v54;
  v56 = v55;
  v108 = v44;
  v109 = v46;
  v110 = v48;
  v111 = v50;
  swift_unknownObjectRetain();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v58 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v59 = v93;
  v60 = Share.init<A>(from:parameter:)(&v108, v98, v102 & 1, v96, v57, AssociatedConformanceWitness, v58);
  if (v59)
  {
    (*(v100 + 8))(v97, v99);
    return swift_unknownObjectRelease();
  }

  v72 = v56;
  v73 = v51;
  v74 = v94;
  v75 = v95;
  v76 = v99;
  v102 = v60;
  v113 = v61 & 1;
  if (v94 < 1)
  {
    (*(v100 + 8))(v97, v99);
    result = swift_unknownObjectRelease();
    v82 = 0;
    goto LABEL_12;
  }

  v46 = specialized Collection.prefix(_:)(v94, v73, v53, v95, v72);
  v98 = v77;
  AssociatedConformanceWitness = v78;
  v44 = v79;
  v80 = specialized Collection.dropFirst(_:)(v74, v73, v53, v75, v72);
  if (v44)
  {
    v96 = v80;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v84 = swift_dynamicCastClass();
    if (!v84)
    {
      swift_unknownObjectRelease();
      v84 = MEMORY[0x277D84F90];
    }

    v85 = *(v84 + 16);

    v86 = v100;
    if (__OFSUB__(v44 >> 1, AssociatedConformanceWitness))
    {
      goto LABEL_25;
    }

    if (v85 != (v44 >> 1) - AssociatedConformanceWitness)
    {
      goto LABEL_26;
    }

    v82 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v83 = v92;
    if (!v82)
    {
      swift_unknownObjectRelease();
      v82 = MEMORY[0x277D84F90];
    }

    (*(v86 + 8))(v97, v76);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    goto LABEL_20;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v46, v98, AssociatedConformanceWitness, v44);
    v82 = v81;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = (*(v100 + 8))(v97, v76);
LABEL_12:
    v83 = v92;
LABEL_20:
    v87 = v90;
    v88 = v91;
    if ((v83 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v83 <= 0xFF)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease_n();
  }

  v89 = v113;
  *v91 = v102;
  *(v88 + 8) = v89;
  v88[2] = v82;
  *(v88 + 24) = v83;
  v88[4] = v87;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Prio3PrepareState<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = v5;
  v7 = a5[4];
  v8 = a5[5];
  return Prio3PrepareState.init<A>(from:parameter:)(a1, v10, a5[2], a5[3], a3);
}

uint64_t Prio3PrepareState.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = Share.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v4)
  {
    v10 = *(v4 + 16);
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Prio3PrepareState.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = Share.encode<A>(into:)(a1, v8, v9, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
  if (v10)
  {

    return Seed.encode<A>(into:)();
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3PrepareState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t getEnumTagSinglePayload for Prio3PrepareState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for Prio3PrepareState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3PrepareStateDecodableParameter()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Prio3PrepareStateDecodableParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Prio3PrepareStateDecodableParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t AES.CTR.Nonce.withUnsafeMutableBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_s6UInt32VADtMd, &_ss6UInt64V_s6UInt32VADtMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3, partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawBufferPointer) -> (@out A, @error @owned Error), v8, v5, v6, a3, MEMORY[0x277D84950], &v9);
}

Swift::Void __swiftcall AES.CTR.Nonce.incrementCounter()()
{
  v1 = bswap32(*(v0 + 12));
  *(v0 + 12) = bswap32(v1 + 1);
  if (v1 == -1)
  {
    v2 = bswap32(*(v0 + 8));
    *(v0 + 8) = bswap32(v2 + 1);
    if (v2 == -1)
    {
      *v0 = bswap64(bswap64(*v0) + 1);
    }
  }
}

uint64_t static AES.CTR.encrypt<A>(_:using:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v11 = specialized Data.init<A>(_:)(a1, a5, *(*(*(*(a6 + 8) + 8) + 8) + 8));
  v12 = v9;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(a7);
  result = v11;
  if (v7)
  {
    return outlined consume of Data._Representation(v11, v12);
  }

  return result;
}

uint64_t AES.CTR.Nonce.init()()
{
  v2 = 0;
  MEMORY[0x2743B35C0](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x2743B35C0](&v2, 8);
  v2 = 0;
  MEMORY[0x2743B35C0](&v2, 8);
  return v0;
}

uint64_t AES.CTR.Nonce.init<A>(nonceBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (dispatch thunk of Collection.count.getter() == 12 || dispatch thunk of Collection.count.getter() == 16)
  {
    UnsafeMutableRawBufferPointer.copyBytes<A>(from:)();
    a3 = 0;
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  v7 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

Swift::Int AESCTRError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AESCTRError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AESCTRError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](v1);
  return Hasher._finalize()();
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x277D85DE8];
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
      *v2 = xmmword_270C44D60;
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
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  outlined consume of Data._Representation(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_270C44D60;
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
        v18 = MEMORY[0x2743B2250]();
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
  v11 = MEMORY[0x2743B2250]();
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

uint64_t specialized static AES.CTR.encryptInPlace(_:using:updating:)(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  result = SymmetricKey.bitCount.getter();
  if (qword_2880A5378 != result && unk_2880A5380 != result && qword_2880A5388 != result)
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v34 = 1;
    result = swift_willThrow();
    goto LABEL_43;
  }

  if (a1)
  {
    v11 = a2 - a1;
    if (v11 >= 1)
    {
      v37 = a4;
      lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer();
      v12 = 0;
      v13 = 0;
      v14 = *(a4 + 12);
      v15 = a1 + 1;
      v36 = a1;
      v16 = v11;
      while (1)
      {
        v40 = v16 - 16;
        if (v16 >= 16)
        {
          v17 = 16;
        }

        else
        {
          v17 = v16;
        }

        v18 = *(a4 + 8);
        v38 = *a4;
        v42 = *a4;
        if (v11 - 16 * v12 >= 16)
        {
          v19 = 16;
        }

        else
        {
          v19 = v11 - 16 * v12;
        }

        v20 = v13 + 16;
        v21 = __OFADD__(v13, 16);
        v39 = v21;
        v43 = v18;
        v44 = v14;
        v41 = v14;
        v45[0] = &v42;
        v45[1] = v45;
        result = static AES.permute<A>(_:key:)();
        if (v4)
        {
          goto LABEL_43;
        }

        if ((v11 - v13) < 0)
        {
          __break(1u);
        }

        if (v11 != v13)
        {
          break;
        }

LABEL_30:
        v24 = bswap32(v41);
        v14 = bswap32(v24 + 1);
        a4 = v37;
        *(v37 + 12) = v14;
        if (v24 == -1)
        {
          v25 = bswap32(v18);
          *(v37 + 8) = bswap32(v25 + 1);
          if (v25 == -1)
          {
            *v37 = bswap64(bswap64(v38) + 1);
          }
        }

        ++v12;
        ++v15;
        ++a1;
        v13 += 16;
        v16 = v40;
        if (((v20 < v11) & ~v39) == 0)
        {
          goto LABEL_43;
        }
      }

      v22 = v45[0];
      if (v19 < 8 || &v36[v13 / 0x10] < v45[0] + v19 && v36[v13 / 0x10].u64 + v19 > v45[0])
      {
        v23 = 0;
        do
        {
LABEL_29:
          a1->i8[v23] ^= *(v22 + v23);
          ++v23;
        }

        while (v17 != v23);
        goto LABEL_30;
      }

      if (v19 >= 0x20)
      {
        v26 = v17 & 0xFFFFFFFFFFFFFFE0;
        v23 = v19 & 0xFFFFFFFFFFFFFFE0;
        v27 = (v45[0] + 16);
        v28 = v15;
        do
        {
          v29 = veorq_s8(*v28, *v27);
          v28[-1] = veorq_s8(v28[-1], v27[-1]);
          *v28 = v29;
          v27 += 2;
          v28 += 2;
          v26 -= 32;
        }

        while (v26);
        if (v19 == v23)
        {
          goto LABEL_30;
        }

        if ((v19 & 0x18) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = 0;
      }

      v30 = (v22 + v23);
      v31 = &a1->i8[v23];
      v32 = v23 - (v17 & 0xFFFFFFFFFFFFFFF8);
      v23 = v19 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v33 = *v30++;
        *v31 = veor_s8(*v31, v33);
        ++v31;
        v32 += 8;
      }

      while (v32);
      if (v19 == v23)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

LABEL_43:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawBufferPointer) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t specialized static AES.CTR.encryptInPlace(_:using:nonce:)(int8x16_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v56[2] = *MEMORY[0x277D85DE8];
  result = SymmetricKey.bitCount.getter();
  if (qword_2880A5978 != result && unk_2880A5980 != result && qword_2880A5988 != result)
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v46 = 1;
    result = swift_willThrow();
    goto LABEL_51;
  }

  if (a1 && a2 - a1 >= 1)
  {
    v13 = HIDWORD(a5);
    lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer();
    v14 = a2 - a1;
    v15 = a5;
    v48 = a1;
    v16 = 0;
    v17 = 0;
    v18 = a1 + 1;
    v19 = a1;
    v20 = v14;
    v21 = a4;
    do
    {
      v51 = v20 - 16;
      v52 = v16;
      if (v20 >= 16)
      {
        v29 = 16;
      }

      else
      {
        v29 = v20;
      }

      v30 = v21;
      v53 = v21;
      if (v14 - 16 * v16 >= 16)
      {
        v31 = 16;
      }

      else
      {
        v31 = v14 - 16 * v16;
      }

      v32 = v15;
      v54 = v15;
      v55 = v13;
      v33 = v13;
      v50 = v17 + 16;
      v34 = __OFADD__(v17, 16);
      v49 = v34;
      v56[0] = &v53;
      v56[1] = v56;
      v35 = v14;
      result = static AES.permute<A>(_:key:)();
      if (v5)
      {
        break;
      }

      if ((v35 - v17) < 0)
      {
        __break(1u);
      }

      v14 = v35;
      v21 = v30;
      if (v35 != v17)
      {
        v36 = v56[0];
        if (v31 < 8 || &v48[v17 / 0x10] < v56[0] + v31 && v48[v17 / 0x10].u64 + v31 > v56[0])
        {
          v37 = 0;
          do
          {
LABEL_39:
            v19->i8[v37] ^= *(v36 + v37);
            ++v37;
          }

          while (v29 != v37);
          goto LABEL_12;
        }

        if (v31 >= 0x20)
        {
          v38 = v29 & 0xFFFFFFFFFFFFFFE0;
          v37 = v31 & 0xFFFFFFFFFFFFFFE0;
          v39 = (v56[0] + 16);
          v40 = v18;
          do
          {
            v41 = veorq_s8(*v40, *v39);
            v40[-1] = veorq_s8(v40[-1], v39[-1]);
            *v40 = v41;
            v39 += 2;
            v40 += 2;
            v38 -= 32;
          }

          while (v38);
          if (v31 == v37)
          {
            goto LABEL_12;
          }

          if ((v31 & 0x18) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v37 = 0;
        }

        v42 = (v36 + v37);
        v43 = &v19->i8[v37];
        v44 = v37 - (v29 & 0xFFFFFFFFFFFFFFF8);
        v37 = v31 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45 = *v42++;
          *v43 = veor_s8(*v43, v45);
          ++v43;
          v44 += 8;
        }

        while (v44);
        if (v31 != v37)
        {
          goto LABEL_39;
        }
      }

LABEL_12:
      v22 = bswap32(v33);
      v23 = __CFADD__(v22, 1);
      v24 = v22 + 1;
      v25 = v23;
      LODWORD(v13) = bswap32(v24);
      v26 = bswap32(v32);
      v23 = __CFADD__(v26, 1);
      v27 = bswap32(v26 + 1);
      v28 = bswap64(bswap64(v30) + 1);
      if (!v23)
      {
        v28 = v30;
      }

      if (v25)
      {
        v15 = v27;
      }

      else
      {
        v15 = v32;
      }

      if (v25)
      {
        v21 = v28;
      }

      v17 += 16;
      v16 = v52 + 1;
      ++v18;
      ++v19;
      v20 = v51;
    }

    while (((v50 < v14) & ~v49) != 0);
  }

LABEL_51:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError()
{
  result = lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError;
  if (!lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError;
  if (!lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AESCTRError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AESCTRError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer);
  }

  return result;
}

_OWORD *specialized FieldElement.integerValue.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v36 = xmmword_270C44F50;
  _UInt128.multipliedFullWidth(by:)(&v33, &v39, &v36);
  v4 = v33;
  v5 = v39;
  v6 = -v39;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v39 = static MontgomeryFiniteField128.p;
  v37 = v6;
  v38 = 0;
  _UInt128.multipliedFullWidth(by:)(&v33, &v34, &v37);
  v7 = __CFADD__(v34, v5);
  v8 = v35 + *(&v5 + 1);
  if (__CFADD__(v35, *(&v5 + 1)))
  {
    v9 = 1;
LABEL_11:
    v8 += v7 & 1;
    goto LABEL_13;
  }

  if ((v8 == -1) | v7 & 1)
  {
    v9 = (v8 == -1) & v7;
    v7 |= v8 != -1;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:
  v10 = v4 + v33;
  v11 = __CFADD__(v4, v33);
  v12 = *(&v4 + 1) + *(&v33 + 1);
  if (__CFADD__(*(&v4 + 1), *(&v33 + 1)))
  {
    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v12 == -1)
    {
      v12 = v11 - 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v11)
    {
LABEL_23:
      ++v12;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v13 = 1;
      goto LABEL_25;
    }
  }

  if (v9)
  {
    goto LABEL_20;
  }

LABEL_24:
  v13 = 0;
LABEL_25:
  v14 = v10 + v13;
  if (__CFADD__(v10, v13))
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v12;
  }

  v16 = static MontgomeryFiniteField128.p;
  v36 = static MontgomeryFiniteField128.p;
  v32[0] = -v8;
  v32[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v39, &v37, v32);
  v18 = *(&v39 + 1);
  v19 = __CFADD__(v37, v8);
  v20 = v38 + v14;
  if (__CFADD__(v38, v14))
  {
    v20 += v19;
    v21 = v15 + v39;
    v22 = __CFADD__(v15, v39);
    if (*(&v39 + 1) == -1)
    {
      v18 = v22 - 1;
    }

    else
    {
      v18 = *(&v39 + 1) + v22;
    }

    v23 = 1;
    goto LABEL_61;
  }

  if (v20 != -1 && !v19)
  {
    v21 = v15 + v39;
    v26 = __CFADD__(v15, v39);
    if (*(&v39 + 1) == -1)
    {
      v18 = v26 - 1;
    }

    else
    {
      v18 = *(&v39 + 1) + v26;
    }

    goto LABEL_60;
  }

  v24 = v20 == -1 && v19;
  v20 += (v20 != -1) | v19;
  v21 = v15 + v39;
  v25 = __CFADD__(v15, v39);
  if (*(&v39 + 1) == -1)
  {
    v18 = v25 - 1;
    if (v24)
    {
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!v25)
  {
    if (v24)
    {
      goto LABEL_59;
    }

LABEL_60:
    v23 = 0;
    goto LABEL_61;
  }

  v18 = *(&v39 + 1) + 1;
  if (!v24)
  {
    goto LABEL_60;
  }

LABEL_59:
  v23 = 1;
LABEL_61:
  v27 = __CFADD__(v21, v23);
  v28 = v21 + v23;
  v29 = v27;
  if (v18 != v29 << 63 >> 63)
  {
    goto LABEL_68;
  }

  v30 = v20 < v16;
  if (v28 != *(&v16 + 1))
  {
    v30 = v28 < *(&v16 + 1);
  }

  if (!v30)
  {
LABEL_68:
    v27 = v20 >= v16;
    v20 -= v16;
    v31 = !v27;
    v28 = v28 - *(&v16 + 1) - v31;
  }

  *a3 = v20;
  a3[1] = v28;
  return result;
}

unint64_t specialized FieldElement.integerValue.getter(uint64_t a1)
{
  v2 = -a1;
  result = (0xFFFFFFFEFFFFFFFFLL * a1 * 0xFFFFFFFF00000001) >> 64;
  if (__CFADD__(v2, a1))
  {
    if (result > 0xFFFFFFFEFFFFFFFFLL)
    {
      result += 0x100000000;
    }

    else
    {
      ++result;
    }
  }

  return result;
}

{
  v1 = (0xCFFE47FFFEAFFFFFLL * a1 * 0xFFFEB00001uLL) >> 64;
  if (__CFADD__(-a1, a1))
  {
    ++v1;
  }

  if (v1 >= 0xFFFEB00001)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t _s4VDAF12FieldElementPAAE18elementsToIntegersySay06FiniteB0_11IntegerTypeQZGSayxGFZAA7Field64V_Tt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = (0xFFFFFFFEFFFFFFFFLL * v5 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v5, v5))
      {
        if (v6 > 0xFFFFFFFEFFFFFFFFLL)
        {
          v6 += 0x100000000;
        }

        else
        {
          ++v6;
        }
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t _s4VDAF35Prio3PrepareStateDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result <= a2)
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(result + 16);
    }

    v9 = a2 != 0;
    v14 = *(result + 48);
    v15 = *(result + 64);
    v16 = *(result + 80);
    v17 = *(result + 96);
    v12 = *(result + 16);
    v13 = *(result + 32);
    v10 = 32 * (*(result + 32) > 0);
    result = specialized FullyLinearProof.verifierLength.getter();
    *a3 = v4;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = a2;
    *(a3 + 32) = result;
  }

  return result;
}

uint64_t _s4VDAF17Prio3PrepareStateV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 8);
  if (v7 == 255)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    return swift_willThrow();
  }

  v9 = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a3;
  if ((v7 & 1) == 0)
  {
    if ((v9 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = 8 * v9;
  }

  v14 = __OFADD__(v13, v10);
  v15 = v13 + v10;
  if (v14)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v12 != v15)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    v11 = &v54;
    _StringGuts.grow(_:)(24);

    v54 = 0xD000000000000061;
    v55 = 0x8000000270C527E0;
    if ((v7 & 1) == 0)
    {
      if ((v9 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v9 *= 8;
    }

    if (!__OFADD__(v9, v10))
    {
      v56 = v9 + v10;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v32);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v56 = v12;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v33);

      v34 = v54;
      v35 = v55;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v36 = v34;
      v36[1] = v35;
      return swift_willThrow();
    }

    goto LABEL_41;
  }

  v52 = *(a3 + 16);
  v53 = v4;
  v50 = *(a3 + 24);
  v51 = a4;
  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v17 = v9;
  if ((v7 & 1) == 0)
  {
    if ((v9 - 0x1000000000000000) >> 61 == 7)
    {
      v17 = 8 * v9;
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_14:
  v47 = v11;
  v18 = (2 * v16[2]) | 1;
  v5 = v16;
  v6 = specialized Collection.prefix(_:)(v17, v16, v16 + 4, 0, v18);
  v20 = v19;
  v22 = v21;
  v11 = v23;
  v24 = specialized Collection.dropFirst(_:)(v17, v5, v5 + 32, 0, v18);
  v48 = v26;
  v49 = v25;
  v28 = v27;

  v29 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v6, v20, v22, v11, v9, v7 & 1);
  if (v4)
  {
    return swift_unknownObjectRelease();
  }

  v53 = v30;
  v46 = v29;
  v7 = v52;
  if (v52 <= 0)
  {
    result = swift_unknownObjectRelease();
    v41 = 0;
    v42 = v50;
    goto LABEL_36;
  }

  v11 = specialized Collection.prefix(_:)(v52, v24, v49, v48, v28);
  v45 = v37;
  v5 = v38;
  v6 = v39;
  v7 = specialized Collection.dropFirst(_:)(v52, v24, v49, v48, v28);
  if (v6)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x277D84F90];
    }

    v44 = *(v43 + 16);

    if (__OFSUB__(v6 >> 1, v5))
    {
      goto LABEL_46;
    }

    if (v44 != (v6 >> 1) - v5)
    {
      goto LABEL_47;
    }

    v41 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v41)
    {
      v42 = v50;
      goto LABEL_35;
    }

    v41 = MEMORY[0x277D84F90];
    v7 = v11;
    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v11, v45, v5, v6);
    v41 = v40;
LABEL_34:
    v42 = v50;
    swift_unknownObjectRelease();
    v11 = v7;
LABEL_35:
    result = swift_unknownObjectRelease();
LABEL_36:
    if ((v42 & 0x8000000000000000) != 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v42 <= 0xFF)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_unknownObjectRelease_n();
  }

  *v51 = v46;
  *(v51 + 8) = v53 & 1;
  *(v51 + 16) = v41;
  *(v51 + 24) = v42;
  *(v51 + 32) = v47;
  return result;
}

void Prio3<>.init(numOfAggregators:numOfProofs:bitWidth:measurementLength:chunkLength:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (a5 < 1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(a3, a4);
  if (v6)
  {
    return;
  }

  v14 = v13 + a5;
  if (__OFADD__(v13, a5))
  {
    goto LABEL_10;
  }

  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a5 + 0x4000000000000000 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v21[0] = v13;
  v21[1] = a4;
  v21[2] = 1;
  v21[3] = a5;
  v21[4] = v16 / a5;
  v21[5] = a3;
  v21[6] = 2 * a5;
  v22 = vdupq_n_s64(2uLL);
  v23 = 2;
  v24 = v16 / a5;
  v25 = a5;
  _s4VDAF5Prio3V3flp16numOfAggregators0dE6ProofsACyxq_Gx_S2itKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt3B5(v21, a1, a2, v20);
  v17 = v20[5];
  a6[4] = v20[4];
  a6[5] = v17;
  a6[6] = v20[6];
  v18 = v20[1];
  *a6 = v20[0];
  a6[1] = v18;
  v19 = v20[3];
  a6[2] = v20[2];
  a6[3] = v19;
}

__n128 _s4VDAF5Prio3V3flp16numOfAggregators0dE6ProofsACyxq_Gx_S2itKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt3B5@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 - 2) >= 0xFE)
  {
    _StringGuts.grow(_:)(46);

    v10 = 0xD000000000000032;
    v11 = 0x8000000270C52C10;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](0, 0xE000000000000000);

    MEMORY[0x2743B25F0](0x20746F67202CLL, 0xE600000000000000);
    goto LABEL_5;
  }

  if ((a3 - 256) < 0xFFFFFFFFFFFFFF02)
  {
    _StringGuts.grow(_:)(48);

    v10 = 0xD00000000000003CLL;
    v11 = 0x8000000270C52C50;
LABEL_5:
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v4);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v5 = v10;
    *(v5 + 8) = v11;
    *(v5 + 16) = 1;
    swift_willThrow();
    return result;
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  v7 = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = v7;
  v8 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v8;
  result = *a1;
  v9 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v9;
  return result;
}

__n128 Prio3<>.init(numOfAggregators:numOfProofs:bitWidth:measurementLength:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  _s4VDAF13SumVectorTypeV8bitWidth17measurementLengthACyxq_GSi_SitKcfCAA7Field64V_SWTt2g5(a3, a4, v13);
  if (!v5)
  {
    v14[2] = v13[2];
    v14[3] = v13[3];
    v14[4] = v13[4];
    v14[5] = v13[5];
    v14[0] = v13[0];
    v14[1] = v13[1];
    _s4VDAF5Prio3V3flp16numOfAggregators0dE6ProofsACyxq_Gx_S2itKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt3B5(v14, a1, a2, v12);
    v10 = v12[5];
    *(a5 + 64) = v12[4];
    *(a5 + 80) = v10;
    *(a5 + 96) = v12[6];
    v11 = v12[1];
    *a5 = v12[0];
    *(a5 + 16) = v11;
    result = v12[3];
    *(a5 + 32) = v12[2];
    *(a5 + 48) = result;
  }

  return result;
}

uint64_t _s4VDAF13SumVectorTypeV8bitWidth17measurementLengthACyxq_GSi_SitKcfCAA7Field64V_SWTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(a1, a2);
  if (!v3)
  {
    v8 = sqrtf(result);
    if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v8 > -9.2234e18)
    {
      if (v8 < 9.2234e18)
      {
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        result = _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(a1, a2);
        v10 = result + v9;
        if (!__OFADD__(result, v9))
        {
          v11 = __OFSUB__(v10, 1);
          v12 = v10 - 1;
          if (!v11)
          {
            if (v9 + 0x4000000000000000 >= 0)
            {
              v13 = v12 / v9;
              *a3 = result;
              *(a3 + 8) = a2;
              *(a3 + 16) = 1;
              *(a3 + 24) = v9;
              *(a3 + 32) = v13;
              *(a3 + 40) = a1;
              *(a3 + 48) = 2 * v9;
              *(a3 + 56) = vdupq_n_s64(2uLL);
              *(a3 + 72) = 2;
              *(a3 + 80) = v13;
              *(a3 + 88) = v9;
              return result;
            }

LABEL_18:
            __break(1u);
            return result;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

unint64_t Prio3<>.shardAndEncode(_:nonce:seedBytes:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6)
{
  v14 = v6[5];
  v41 = v6[4];
  v42 = v14;
  v43 = v6[6];
  v15 = v6[1];
  v37 = *v6;
  v38 = v15;
  v16 = v6[3];
  v39 = v6[2];
  v40 = v16;
  outlined copy of Data._Representation(a3, a4);
  v17 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v18 = specialized Prio3.shard<A>(_:nonce:seedBytes:)(v34, a1, a2, v17, a5, a6);

  if (!v7)
  {
    a6 = specialized VDAFEncodable.encodedData.getter(v34[0]);

    v19 = *(v18 + 16);
    if (v19)
    {
      v33 = a6;
      v44 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = 32;
      v21 = v44;
      do
      {
        v22 = v18;
        v23 = *(v18 + v20);
        v24 = *(v18 + v20 + 16);
        v36 = *(v18 + v20 + 32);
        v35[0] = v23;
        v35[1] = v24;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v35, v34, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v26 = v25;
        v28 = v27;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v35, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
        v44 = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v21 = v44;
        }

        *(v21 + 16) = v30 + 1;
        v31 = v21 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v20 += 40;
        --v19;
        v18 = v22;
      }

      while (v19);

      return v33;
    }

    else
    {
    }
  }

  return a6;
}

uint64_t specialized Prio3.shard<A>(_:nonce:seedBytes:)(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6)
{
  v8 = v7;
  v188 = a1;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v190 = *(v209 - 1);
  v14 = *(v190 + 64);
  MEMORY[0x28223BE20](v209, v15);
  v208 = &v178 - v16;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v189 = *(v207 - 8);
  v17 = *(v189 + 64);
  MEMORY[0x28223BE20](v207, v18);
  v206 = &v178 - v19;
  v20 = *(a4 + 16);
  if (v20 != 16)
  {
    v213 = 0;
    v214 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v213 = 0xD000000000000030;
    v214 = 0x8000000270C52B10;
    v210[0] = 16;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v210[0] = v20;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    v25 = v213;
    v26 = v214;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v27 = v25;
    *(v27 + 8) = v26;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  v21 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v29 = *(a5 + 2);
      v28 = *(a5 + 3);
      v30 = __OFSUB__(v28, v29);
      v22 = v28 - v29;
      if (v30)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_13:
    v31 = *(v6 + 64);
    v217 = *(v6 + 48);
    v218 = v31;
    v32 = *(v6 + 96);
    v219 = *(v6 + 80);
    v220 = v32;
    v33 = *(v6 + 32);
    v215 = *(v6 + 16);
    v216 = v33;
    v34 = *v6;
    v35 = *v6 - 1;
    if (__OFSUB__(*v6, 1))
    {
      goto LABEL_171;
    }

    if (*v6 + 0x3FFFFFFFFFFFFFFFLL < 0)
    {
LABEL_172:
      __break(1u);
    }

    else
    {
      v221 = a2;
      a2 = v216;
      v36 = (2 * v35) | 1;
      if (v216 <= 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = v34;
      }

      v30 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (!v30)
      {
        if ((v38 - 0x400000000000000) >> 59 == 31)
        {
          v204 = a3;
          a3 = 32 * v38;
          if (v22 == 32 * v38)
          {
            v185 = a4;
            v205 = v35;
            v178 = v34;
            v203 = v6;
            v39 = specialized Prio3.splitSeedBytes<A>(_:)(a5, a6);
            v183 = v40;
            v180 = v41;
            v42 = *(v39 + 16);
            a5 = MEMORY[0x277D84F90];
            v184 = v39;
            if (v42)
            {
              v43 = v39;
              v201 = v7;
              v179 = a2;
              v213 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
              a5 = v213;
              v44 = (v43 + 32);
              a6 = v42;
              do
              {
                v45 = *v44;
                v213 = a5;
                v47 = *(a5 + 2);
                v46 = *(a5 + 3);

                if (v47 >= v46 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
                  a5 = v213;
                }

                *(a5 + 2) = v47 + 1;
                *&a5[8 * v47 + 32] = v45;
                v44 += 3;
                --a6;
              }

              while (a6);
              v213 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
              v50 = v213;
              v51 = (v184 + 5);
              do
              {
                v52 = *v51;
                v213 = v50;
                a4 = *(v50 + 16);
                v53 = *(v50 + 24);

                if (a4 >= v53 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), a4 + 1, 1);
                  v50 = v213;
                }

                *(v50 + 16) = a4 + 1;
                *(v50 + 8 * a4 + 32) = v52;
                v51 += 3;
                --v42;
              }

              while (v42);
              v202 = v50;
              a2 = v179;
              v8 = v201;
              goto LABEL_39;
            }

LABEL_38:
            v202 = a5;
LABEL_39:
            v6 = &v215;
            v56 = specialized SumVectorType.encode(measurement:)(v221, v204);
            v221 = v8;
            if (v8)
            {
            }

            a3 = *(v203 + 8);
            v58 = v184;
            v201 = a3;
            v187 = v56;
            if (a2 > 0)
            {
              v179 = a2;
              if (!v183)
              {
                goto LABEL_198;
              }

              a3 = v184[2];

              a6 = 0;
              v186 = MEMORY[0x277D84F90];
              a2 = 48;
              while (1)
              {
                v22 = 24 * a6 + 48;
                do
                {
                  if (a3 == a6)
                  {
                    v6 = MEMORY[0x277D84F90];
                    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v178 & ~(v178 >> 63), 0, MEMORY[0x277D84F90]);
                    a3 = *(a6 + 16);
                    v22 = *(a6 + 24);
                    a4 = a3 + 1;
                    if (a3 >= v22 >> 1)
                    {
                      goto LABEL_184;
                    }

                    goto LABEL_59;
                  }

                  if (a6 >= v58[2])
                  {
                    goto LABEL_161;
                  }

                  v6 = *(v58 + v22);
                  v22 += 24;
                  ++a6;
                }

                while (!v6);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v186 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v186 + 2) + 1, 1, v186);
                }

                v60 = *(v186 + 2);
                v59 = *(v186 + 3);
                a4 = v60 + 1;
                v58 = v184;
                if (v60 >= v59 >> 1)
                {
                  v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v186);
                  v58 = v184;
                  v186 = v62;
                }

                v61 = v186;
                *(v186 + 2) = a4;
                *&v61[8 * v60 + 32] = v6;
              }
            }

            v67 = v205;
            if ((v205 & 0x8000000000000000) != 0)
            {
              goto LABEL_188;
            }

            a2 = v56;

            if (!v67)
            {

              a4 = 0;
              a5 = v221;
              goto LABEL_100;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = specialized _ArrayBuffer._consumeAndCreateNew()(v187);
            }

            v22 = 0;
            *&v199 = a5 + 32;
            v197 = (v190 + 16);
            v195 = (v189 + 8);
            *&v196 = v190 + 8;
            a3 = a2 + 32;
            v198 = xmmword_270C44540;
            v123 = v205;
            v200 = a2;
            while (v22 != v123)
            {
              if (v22 == 255)
              {
                goto LABEL_176;
              }

              if (v22 >= *(a5 + 2))
              {
                goto LABEL_177;
              }

              v6 = v22 + 1;
              v124 = *(v199 + 8 * v22);

              a6 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
              inited = swift_initStackObject();
              *(inited + 16) = v198;
              *(inited + 32) = v6;
              v22 = *(v124 + 16);
              if (v22 != 32)
              {
                goto LABEL_178;
              }

              a4 = inited;
              v203 = v6;

              v204 = a6;
              v126 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v124, a6, a4);
              if (*(v126 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
              {
                goto LABEL_194;
              }

              v127 = v126;
              v128 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
              swift_beginAccess();
              v129 = v127 + v128;
              v130 = v208;
              v131 = v209;
              (*v197)(v208, v129, v209);
              a6 = v206;
              HMAC.finalize()();
              (*v196)(v130, v131);
              v132 = v207;
              v67 = v221;
              HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
              v221 = v67;
              (*v195)(a6, v132);

              swift_setDeallocating();
              a2 = v200;
              v6 = *(v200 + 2);
              if (v6)
              {
                a4 = 0;
                a6 = 0xFFFFFFFF00000001;
                do
                {
                  _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v127, v210);
                  v22 = *(a2 + 16);
                  if (a4 >= v22)
                  {
                    goto LABEL_157;
                  }

                  v133 = *(a3 + 8 * a4);
                  v134 = v133 - v210[0];
                  if (v133 < v210[0])
                  {
                    v22 = 0xFFFFFFFF00000001 - v210[0];
                    if (v210[0] > 0xFFFFFFFF00000001)
                    {
                      goto LABEL_160;
                    }

                    v135 = __CFADD__(v133, v22);
                    v134 = v133 + v22;
                    if (v135)
                    {
                      __break(1u);

                      swift_bridgeObjectRelease_n();

                      goto LABEL_141;
                    }
                  }

                  *(a3 + 8 * a4++) = v134;
                }

                while (v6 != a4);
              }

              v22 = v203;
              v123 = v205;
              if (v203 == v205)
              {

                a4 = 0;
                a5 = v221;
                a3 = v201;
                goto LABEL_100;
              }
            }

            goto LABEL_175;
          }

          v213 = 0;
          v214 = 0xE000000000000000;
          _StringGuts.grow(_:)(39);

          v213 = 0xD00000000000002BLL;
          v214 = 0x8000000270C52B50;
          v210[0] = a3;
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          a4 = v49;
          v6 = &v213;
          MEMORY[0x2743B25F0](v48);

          MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
          if (v21 > 1)
          {
            v22 = 0;
            if (v21 == 2)
            {
              v55 = *(a5 + 2);
              v54 = *(a5 + 3);
              v30 = __OFSUB__(v54, v55);
              v22 = v54 - v55;
              if (v30)
              {
                __break(1u);
                goto LABEL_38;
              }
            }
          }

          else if (v21)
          {
            v22 = (HIDWORD(a5) - a5);
            if (__OFSUB__(HIDWORD(a5), a5))
            {
              goto LABEL_183;
            }

            v22 = v22;
          }

          else
          {
            v22 = BYTE6(a6);
          }

          v210[0] = v22;
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v63);

          v64 = v213;
          v65 = v214;
          lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
          swift_allocError();
          *v66 = v64;
          *(v66 + 8) = v65;
          *(v66 + 16) = 0;
          return swift_willThrow();
        }

LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }
    }

    __break(1u);
    goto LABEL_174;
  }

  if (!v21)
  {
    v22 = BYTE6(a6);
    goto LABEL_13;
  }

LABEL_10:
  v22 = (HIDWORD(a5) - a5);
  if (!__OFSUB__(HIDWORD(a5), a5))
  {
    v22 = v22;
    goto LABEL_13;
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
  do
  {
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), a4, 1, a6);
LABEL_59:
    v67 = v205;
    v68 = v187;
    *(a6 + 16) = a4;
    *(a6 + 8 * a3 + 32) = v6;
    v212[0] = v68;
    if ((v67 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v67)
    {
      a4 = 0;
      v197 = (v190 + 8);
      *&v198 = v190 + 16;
      *&v196 = v189 + 8;
      v181 = v186 + 32;
      v182 = a5 + 32;
      v22 = &unk_270C44000;
      v199 = xmmword_270C44540;
      while (1)
      {
        if (a4 == 255)
        {
          goto LABEL_163;
        }

        v22 = *(a5 + 2);
        if (a4 >= v22)
        {
          goto LABEL_164;
        }

        v200 = a6;
        v6 = a4 + 1;
        a6 = *&v182[8 * a4];

        a3 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(0);
        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v69 = swift_initStackObject();
        *(v69 + 16) = v199;
        v203 = a4 + 1;
        *(v69 + 32) = a4 + 1;
        v22 = *(a6 + 16);
        if (v22 != 32)
        {
          goto LABEL_165;
        }

        v70 = v69;
        v195 = a2;
        v204 = a4;

        v71 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a6, a3, v70);
        if (*(v71 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          break;
        }

        v72 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a4 = v71;
        swift_beginAccess();
        v73 = a4 + v72;
        v74 = v208;
        v75 = v209;
        v194 = *v198;
        (v194)(v208, v73, v209);
        v76 = v206;
        HMAC.finalize()();
        v193 = *v197;
        (v193)(v74, v75);
        a2 = v207;
        v77 = v221;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v221 = v77;
        v6 = *v196;
        (*v196)(v76, a2);

        swift_setDeallocating();
        v78 = *(v212[0] + 16);
        v192 = a4;
        v79 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v78, a4);
        v22 = *(v186 + 2);
        if (v204 >= v22)
        {
          goto LABEL_166;
        }

        v80 = v79;
        v191 = v6;
        v81 = (2 * *(v79 + 16)) | 1;
        v82 = *&v181[8 * v204];
        swift_bridgeObjectRetain_n();

        v83 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(6u);
        v84 = swift_initStackObject();
        *(v84 + 16) = v199;
        *(v84 + 32) = v203;
        v210[0] = v84;

        specialized Array.append<A>(contentsOf:)(v85);
        v195 = v82;
        v86 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v82, v83, v210[0]);
        v204 = v80;
        specialized VDAFEncodable.encodedBytes.getter((v80 + 32), 0, v81);
        v87 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v87();

        v88 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v86 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_191;
        }

        v89 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v90 = v86 + v89;
        v91 = v208;
        v92 = v209;
        (v194)(v208, v90, v209);
        v93 = v206;
        HMAC.finalize()();
        (v193)(v91, v92);
        v94 = v207;
        v95 = v221;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v191(v93, v94);
        a2 = *(v86 + v88);
        if (!a2)
        {
          goto LABEL_192;
        }

        v96 = *(v86 + v88);

        v97 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v97 + 16) = 32;
        *(v97 + 48) = 0u;
        *(v97 + 32) = 0u;
        v98 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v99 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v97 + 32), v97 + 64, a2 + v98, a2 + v99);
        if (v95)
        {
          goto LABEL_197;
        }

        swift_endAccess();

        a6 = v200;
        v101 = *(v200 + 2);
        v100 = *(v200 + 3);
        a3 = v101 + 1;
        if (v101 >= v100 >> 1)
        {
          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v200);
        }

        *(a6 + 16) = a3;
        *(a6 + 8 * v101 + 32) = v97;
        v6 = v212;
        specialized Array<A>.elementwiseSubtract(_:)(v204);
        v221 = 0;

        a4 = v203;
        v22 = v205;
        if (v205 == v203)
        {
          goto LABEL_73;
        }
      }

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
      while (1)
      {
LABEL_197:
        swift_endAccess();
        swift_unexpectedError();
        __break(1u);
LABEL_198:
        v213 = 0;
        v214 = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
        MEMORY[0x2743B25F0](0xD000000000000038, 0x8000000270C52B80);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_73:
    v200 = a6;

    v102 = v212[0];
    v103 = (2 * *(v212[0] + 16)) | 1;
    v104 = v183;

    v105 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(6u);
    v210[0] = &outlined read-only object #0 of specialized Prio3.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v106);
    v107 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v104, v105, v210[0]);
    specialized VDAFEncodable.encodedBytes.getter((v102 + 32), 0, v103);
    v108 = off_2880A7738[0];
    type metadata accessor for XofHmacSha256Aes128(0);
    v108();

    v109 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*(v107 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_195;
    }

    v110 = v102;
    v111 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v112 = v190;
    v113 = v107 + v111;
    v114 = v208;
    v115 = v209;
    (*(v190 + 16))(v208, v113, v209);
    v116 = v206;
    HMAC.finalize()();
    (*(v112 + 8))(v114, v115);
    v117 = v207;
    v67 = v221;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a3 = v67;
    (*(v189 + 8))(v116, v117);
    v6 = *(v107 + v109);
    if (!v6)
    {
      goto LABEL_196;
    }

    v118 = *(v107 + v109);

    a4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a4 + 16) = 32;
    *(a4 + 48) = 0u;
    *(a4 + 32) = 0u;
    a6 = a4 + 32;
    v119 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    a2 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a4 + 32), a4 + 64, v6 + v119, v6 + a2);
    if (v67)
    {
      goto LABEL_197;
    }

    swift_endAccess();

    a5 = v200;
    if (!*(v200 + 2))
    {
      goto LABEL_187;
    }

    a2 = v110;
    v120 = *(v200 + 4);
    *(v200 + 4) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
    a4 = swift_allocObject();
    v121 = v179;
    *(a4 + 32) = 0;
    *(a4 + 40) = v121;
    v122 = v201;
    *(a4 + 48) = v201;
    *(a4 + 16) = a5;
    *(a4 + 24) = 0;
    a5 = 0;
    a3 = v122;
LABEL_100:
    v6 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(3u);
    *&v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v136 = swift_initStackObject();
    v22 = &unk_270C44000;
    *(v136 + 16) = xmmword_270C44540;
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_180;
    }

    *&v198 = a4;
    if (a3 > 0xFF)
    {
      goto LABEL_181;
    }

    v221 = a5;
    *(v136 + 32) = a3;
    a4 = v136;
    a6 = v180;
    v192 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v180, v6, v136);

    swift_setDeallocating();
    v6 = &v215;
    v137 = specialized FullyLinearProof.proofLength.getter();
    v22 = a3 * v137;
  }

  while ((a3 * v137) >> 64 != (a3 * v137) >> 63);
  v138 = MEMORY[0x277D84F90];
  v212[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0, MEMORY[0x277D84F90]);
  v6 = v202;
  v200 = a2;
  a6 = v198;
  if (a3)
  {
    v139 = 0;
    while (1)
    {
      if (a6)
      {
        a4 = *(a6 + 40);
        v140 = specialized VerificationJointRandomness.xof.getter();
        a5 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(a4, v140);
      }

      else
      {
        a5 = v138;
      }

      v6 = &v215;
      v141 = specialized FullyLinearProof.proveRandLength.getter();
      if (v141 < 0)
      {
        goto LABEL_162;
      }

      v142 = v141;
      if (v141)
      {
        v210[0] = v138;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141, 0);
        a4 = v210[0];
        v143 = v192;
        do
        {
          _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v143, &v211);
          v144 = v211;
          v210[0] = a4;
          v146 = *(a4 + 16);
          v145 = *(a4 + 24);
          if (v146 >= v145 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1);
            v143 = v192;
            a4 = v210[0];
          }

          *(a4 + 16) = v146 + 1;
          *(a4 + 8 * v146 + 32) = v144;
          --v142;
        }

        while (v142);
        a2 = v200;
        a6 = v198;
        v138 = MEMORY[0x277D84F90];
      }

      else
      {
        a4 = v138;
      }

      v67 = v221;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v212, v187, a4, a5);
      a3 = v201;
      v221 = v67;
      if (v67)
      {
        break;
      }

      ++v139;

      v6 = v202;
      if (v139 == a3)
      {
        goto LABEL_118;
      }
    }

LABEL_141:
  }

LABEL_118:

  if ((v205 & 0x8000000000000000) != 0)
  {
    goto LABEL_186;
  }

  a5 = v221;
  if (!v205)
  {

    goto LABEL_144;
  }

  a6 = v212[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew()(a6);
  }

  v22 = 0;
  v197 = (v6 + 32);
  v194 = (v190 + 8);
  v195 = (v190 + 16);
  v193 = (v189 + 8);
  a2 = a6 + 32;
  v196 = xmmword_270C44550;
  v147 = v205;
  while (2)
  {
    if (v22 == v147)
    {
      goto LABEL_167;
    }

    if (v22 == 255)
    {
      goto LABEL_168;
    }

    if (v22 >= *(v6 + 16))
    {
      goto LABEL_169;
    }

    v6 = v22 + 1;
    v148 = v197[v22];

    v149 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(1u);
    v150 = swift_initStackObject();
    *(v150 + 16) = v196;
    *(v150 + 32) = a3;
    *(v150 + 33) = v6;
    v22 = *(v148 + 16);
    if (v22 != 32)
    {
      goto LABEL_170;
    }

    a4 = v150;
    v203 = v6;
    v221 = a5;

    v204 = v149;
    v151 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v148, v149, a4);
    if (*(v151 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_193;
    }

    v152 = v151;
    v153 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v154 = v152 + v153;
    v155 = v208;
    v156 = v209;
    (*v195)(v208, v154, v209);
    v157 = v206;
    HMAC.finalize()();
    (*v194)(v155, v156);
    v158 = v207;
    v159 = v221;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    v221 = v159;
    (*v193)(v157, v158);

    swift_setDeallocating();
    v6 = *(a6 + 16);
    if (v6)
    {
      a4 = 0;
      a5 = v221;
      a3 = v201;
      while (1)
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v152, &v211);
        v22 = *(a6 + 16);
        if (a4 >= v22)
        {
          break;
        }

        v160 = *(a2 + 8 * a4);
        v22 = v160 - v211;
        if (v160 < v211)
        {
          v22 = 0xFFFFFFFF00000001 - v211;
          if (v211 > 0xFFFFFFFF00000001)
          {
            goto LABEL_158;
          }

          v135 = __CFADD__(v160, v22);
          v22 += v160;
          if (v135)
          {
            goto LABEL_159;
          }
        }

        *(a2 + 8 * a4++) = v22;
        if (v6 == a4)
        {

          goto LABEL_124;
        }
      }

      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    a5 = v221;
    a3 = v201;
LABEL_124:
    v6 = v202;
    v22 = v203;
    v147 = v205;
    if (v203 != v205)
    {
      continue;
    }

    break;
  }

  v212[0] = a6;
  a2 = v200;
  a6 = v198;
LABEL_144:
  v161 = v178;
  if (a6)
  {
    v162 = *(a6 + 16);
  }

  else
  {
    v163 = 0;
  }

  *v188 = v163;
  a6 = v212[0];
  v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v161 & ~(v161 >> 63), 0, MEMORY[0x277D84F90]);
  v6 = v164[2];
  v67 = v164[3];
  a3 = v164;
  a4 = v6 + 1;

  if (v6 >= v67 >> 1)
  {
LABEL_189:
    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), a4, 1, a3);
  }

  v165 = v183;
  v221 = a5;
  v166 = a3;
  *(a3 + 16) = a4;
  v167 = a3 + 40 * v6;
  *(v167 + 32) = a2;
  *(v167 + 40) = 0;
  v207 = a6;
  *(v167 + 48) = a6;
  *(v167 + 56) = 0;
  *(v167 + 64) = v165;
  v168 = v184[2];
  if (v168)
  {
    v169 = 40 * v6 + 104;
    v170 = v6 + 2;
    v171 = (v184 + 6);
    do
    {
      v173 = *(v171 - 2);
      v172 = *(v171 - 1);
      v174 = *v171;
      v209 = v166;
      v175 = v166[3];

      v208 = v174;

      if (v170 - 1 >= v175 >> 1)
      {
        v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v175 > 1), v170, 1, v209);
      }

      else
      {
        v166 = v209;
      }

      v171 += 3;
      v166[2] = v170;
      v176 = (v166 + v169);
      *(v176 - 4) = v173;
      *(v176 - 24) = 1;
      *(v176 - 2) = v172;
      *(v176 - 8) = 1;
      v169 += 40;
      ++v170;
      *v176 = v208;
      --v168;
    }

    while (v168);
  }

  v177 = v166;

  return v177;
}

unint64_t Prio3<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v14 = v6[5];
  v84 = v6[4];
  v85 = v14;
  v86 = v6[6];
  v15 = v6[1];
  v80 = *v6;
  v81 = v15;
  v16 = v6[3];
  v82 = v6[2];
  v83 = v16;
  outlined copy of Data._Representation(a3, a4);
  v17 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v18 = specialized Prio3.shard<A>(_:nonce:seedBytes:)(v87, a1, a2, v17, a5, a6);

  if (!v7)
  {
    a6 = specialized VDAFEncodable.encodedBytes.getter(v87[0]);

    v19 = *(v18 + 16);
    if (!v19)
    {

      goto LABEL_83;
    }

    v72 = a6;
    v87[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v20 = 0;
    v73 = v19;
    v74 = v18 + 32;
    v21 = v87[0];
    while (1)
    {
      v75 = v21;
      v22 = v74 + 40 * v20;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      v26 = *(v22 + 32);
      v77 = *v22;
      v27 = *(*v22 + 16);
      if ((v23 & 1) == 0 && v27)
      {
        if (v27 >> 60)
        {
          goto LABEL_93;
        }

        v27 *= 8;
      }

      v28 = *(v24 + 16);
      if ((v25 & 1) == 0 && v28)
      {
        if (v28 >> 60)
        {
          goto LABEL_94;
        }

        v28 *= 8;
      }

      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
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
      }

      if (v26)
      {
        v31 = *(v26 + 16);
        v29 = __OFADD__(v30, v31);
        v30 += v31;
        if (v29)
        {
          goto LABEL_85;
        }
      }

      v76 = v25;
      v32 = v30 & ~(v30 >> 63);

      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0, MEMORY[0x277D84F90]);
      v79 = v33;
      v34 = *(v77 + 16);
      if ((v23 & 1) == 0)
      {
        if (v34)
        {
          v41 = (v77 + 32);
          do
          {
            v43 = *v41++;
            v42 = (0xFFFFFFFEFFFFFFFFLL * v43 * 0xFFFFFFFF00000001) >> 64;
            if (__CFADD__(-v43, v43))
            {
              if (v42 > 0xFFFFFFFEFFFFFFFFLL)
              {
                v42 += 0x100000000;
              }

              else
              {
                ++v42;
              }
            }

            v78 = v42;
            specialized Array.append<A>(contentsOf:)(0, 8uLL, &v78, &v79);
            --v34;
          }

          while (v34);
        }

        goto LABEL_39;
      }

      v35 = v33;
      v36 = *(v33 + 2);
      v37 = v36 + v34;
      if (__OFADD__(v36, v34))
      {
        goto LABEL_88;
      }

      v38 = *(v33 + 3) >> 1;

      if (v38 < v37)
      {
        if (v36 <= v37)
        {
          v44 = v36 + v34;
        }

        else
        {
          v44 = v36;
        }

        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v44, 1, v35);
        v36 = *(v35 + 2);
        v38 = *(v35 + 3) >> 1;
        if (!*(v77 + 16))
        {
LABEL_37:

          if (v34)
          {
            goto LABEL_90;
          }

          goto LABEL_38;
        }
      }

      else if (!v34)
      {
        goto LABEL_37;
      }

      if ((v38 - v36) < v34)
      {
        goto LABEL_95;
      }

      memcpy(&v35[v36 + 32], (v77 + 32), v34);

      if (v34)
      {
        v39 = *(v35 + 2);
        v29 = __OFADD__(v39, v34);
        v40 = v39 + v34;
        if (v29)
        {
          goto LABEL_98;
        }

        *(v35 + 2) = v40;
      }

LABEL_38:
      v79 = v35;
LABEL_39:
      v45 = *(v24 + 16);
      if (v76)
      {
        v46 = v79;
        v47 = *(v79 + 2);
        v48 = v47 + v45;
        if (__OFADD__(v47, v45))
        {
          goto LABEL_89;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v50 = *(v46 + 3) >> 1, v50 < v48))
        {
          if (v47 <= v48)
          {
            v51 = v47 + v45;
          }

          else
          {
            v51 = v47;
          }

          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v46);
          v50 = *(v46 + 3) >> 1;
        }

        if (*(v24 + 16))
        {
          v52 = *(v46 + 2);
          if (v50 - v52 < v45)
          {
            goto LABEL_96;
          }

          memcpy(&v46[v52 + 32], (v24 + 32), v45);

          if (v45)
          {
            v53 = *(v46 + 2);
            v29 = __OFADD__(v53, v45);
            v54 = v53 + v45;
            if (v29)
            {
              goto LABEL_99;
            }

            *(v46 + 2) = v54;
          }
        }

        else
        {

          if (v45)
          {
            goto LABEL_91;
          }
        }

        v79 = v46;
      }

      else if (v45)
      {
        v55 = (v24 + 32);
        do
        {
          v57 = *v55++;
          v56 = (0xFFFFFFFEFFFFFFFFLL * v57 * 0xFFFFFFFF00000001) >> 64;
          if (__CFADD__(-v57, v57))
          {
            if (v56 > 0xFFFFFFFEFFFFFFFFLL)
            {
              v56 += 0x100000000;
            }

            else
            {
              ++v56;
            }
          }

          v78 = v56;
          specialized Array.append<A>(contentsOf:)(0, 8uLL, &v78, &v79);
          --v45;
        }

        while (v45);
      }

      if (v26)
      {
        v58 = *(v26 + 16);
        v59 = v79;
        v60 = *(v79 + 2);
        v61 = v60 + v58;
        if (__OFADD__(v60, v58))
        {
          goto LABEL_86;
        }

        v62 = swift_isUniquelyReferenced_nonNull_native();
        if (!v62 || (v63 = *(v59 + 3) >> 1, v63 < v61))
        {
          if (v60 <= v61)
          {
            v64 = v60 + v58;
          }

          else
          {
            v64 = v60;
          }

          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62, v64, 1, v59);
          v63 = *(v59 + 3) >> 1;
        }

        if (*(v26 + 16))
        {
          v65 = *(v59 + 2);
          if (v63 - v65 < v58)
          {
            goto LABEL_92;
          }

          memcpy(&v59[v65 + 32], (v26 + 32), v58);

          if (v58)
          {
            v66 = *(v59 + 2);
            v29 = __OFADD__(v66, v58);
            v67 = v66 + v58;
            if (v29)
            {
              goto LABEL_97;
            }

            *(v59 + 2) = v67;
          }
        }

        else
        {

          if (v58)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {

        v59 = v79;
      }

      v21 = v75;
      v87[0] = v75;
      v69 = *(v75 + 16);
      v68 = *(v75 + 24);
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
        v21 = v87[0];
      }

      ++v20;
      *(v21 + 16) = v69 + 1;
      *(v21 + 8 * v69 + 32) = v59;
      if (v20 == v73)
      {

        a6 = v72;
        break;
      }
    }
  }

LABEL_83:
  v70 = *MEMORY[0x277D85DE8];
  return a6;
}

uint64_t Prio3<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v18 = v9[5];
  v50 = v9[4];
  v51 = v18;
  v52 = v9[6];
  v19 = v9[1];
  v47[0] = *v9;
  v47[1] = v19;
  v20 = v9[3];
  v48 = v9[2];
  v49 = v20;
  outlined copy of Data._Representation(a1, a2);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v22 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2g5(a6, a7, v48 > 0, *&v47[0], &v54);
  if (v10)
  {
    v23 = v10;

    return v23;
  }

  v24 = v54;
  _s4VDAF33Prio3InputShareDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5(v47, a3, &v33);
  v53[0] = v33;
  v53[1] = v34;
  v53[2] = v35;
  v53[3] = v36;
  v53[4] = v37;
  _s4VDAF15Prio3InputShareV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v53, v38);
  v45[0] = v38[0];
  v45[1] = v38[1];
  v46 = v39;
  _s4VDAF5Prio3V11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA0B12PrepareStateVyxq_G_AA0bnK0Vy1FQzGtSays5UInt8VG_SiAuA0b6PublicK0Vyxq_GAA0b5InputK0Vyxq_GAA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt6B5(v41, &v40, v21, a3, v22, v24, v45);

  outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v45, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
  v43[0] = v41[0];
  v43[1] = v41[1];
  v44 = v42;
  v26 = v40;
  specialized VDAFEncodable.encodedBytes.getter();
  v23 = v27;
  result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v43, &_s4VDAF17Prio3PrepareStateVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, "*]");
  v28 = *(v26.i64[0] + 16);
  if (!v28)
  {
    v29 = 0;
    if (!v26.i64[1])
    {
      goto LABEL_11;
    }

LABEL_10:
    v29 = *(v26.i64[1] + 16);
    goto LABEL_11;
  }

  if (v28 >> 60)
  {
    goto LABEL_14;
  }

  v28 *= 8;
  if (v26.i64[1])
  {
    goto LABEL_10;
  }

  v29 = 0;
LABEL_11:
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (!v30)
  {
    *&v41[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0, MEMORY[0x277D84F90]);
    specialized Prio3PrepareShare.encode<A>(into:)(v41, v26.i64[0], v26.i64[1]);

    return v23;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t _s4VDAF5Prio3V11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA0B12PrepareStateVyxq_G_AA0bnK0Vy1FQzGtSays5UInt8VG_SiAuA0b6PublicK0Vyxq_GAA0b5InputK0Vyxq_GAA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt6B5(void *a1, int8x16_t *a2, int64_t a3, unint64_t a4, unint64_t a5, char *a6, uint64_t *a7)
{
  v9 = v8;
  v10 = v7;
  v129 = a6;
  v145 = a4;
  v128 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v126 = *(v15 - 8);
  v127 = v15;
  v16 = *(v126 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v125 = &v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v25 = &v111 - v24;
  v26 = *(a3 + 16);
  if (v26 != 32)
  {
    v131 = 0;
    v132 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v131 = 0xD000000000000035;
    v132 = 0x8000000270C528D0;
    v37 = 32;
LABEL_10:
    v130 = v37;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v38);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v130 = v26;
LABEL_11:
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    v40 = v131;
    v41 = v132;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = 1;
    return swift_willThrow();
  }

  v26 = *(a5 + 16);
  if (v26 != 16)
  {
    v131 = 0;
    v132 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v131 = 0xD000000000000031;
    v132 = 0x8000000270C52910;
    v37 = 16;
    goto LABEL_10;
  }

  v27 = *v10;
  if ((*v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v26 = v145;
  if (v27 <= v145)
  {
    v131 = v145;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v45;
    *(v46 + 16) = 0;
    return swift_willThrow();
  }

  v120 = v23;
  v121 = v22;
  v122 = a3;
  v123 = a5;
  v119 = v27;
  v28 = *(v10 + 64);
  v138 = *(v10 + 48);
  v139 = v28;
  v29 = *(v10 + 96);
  v140 = *(v10 + 80);
  v141 = v29;
  v30 = *(v10 + 32);
  v136 = *(v10 + 16);
  v137 = v30;
  if (v145 > 0xFF)
  {
    goto LABEL_58;
  }

  v31 = v136;
  v32 = *a7;
  v33 = *(a7 + 8);

  v35 = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_ASTt2g5(v34, v33, v26, v31);
  if (v9)
  {
  }

  v117 = v33;
  v113 = a2;
  v114 = v32;
  v118 = v35;
  a3 = *(v10 + 8);
  v47 = a7[2];
  v26 = *(a7 + 24);
  a2 = &v136;
  v48 = specialized FullyLinearProof.proofLength.getter();
  v124 = a3;
  if ((v48 * a3) >> 64 != (v48 * a3) >> 63)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v49 = (v48 * a3);
  a3 *= v48;
  if (v26)
  {
    v26 = v145;
    a2 = specialized closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(v47, v10, v145);
    v47 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(a3, a2);

    a3 = *(v47 + 16);
    goto LABEL_19;
  }

  v50 = *(v47 + 16);
  if (v50 != v49)
  {

    v131 = 0;
    v132 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
    MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C51E20);
    v130 = a3;
    v99 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v99);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v130 = v50;
    goto LABEL_11;
  }

  v26 = v145;
LABEL_19:
  v51 = a7[4];
  v135 = v51;
  if (v137 <= 0)
  {
    if (!(v51 | v129))
    {
      v115 = a3;
      v72 = 0;
      LOBYTE(a3) = v117;
      v10 = v124;
      goto LABEL_29;
    }

    v131 = 0;
    v132 = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD000000000000065, 0x8000000270C52950);
    v101 = v131;
    v102 = v132;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v103 = v101;
    *(v103 + 8) = v102;
    goto LABEL_48;
  }

  if (!v51)
  {

    lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
    swift_allocError();
    *v100 = 0xD000000000000037;
    *(v100 + 8) = 0x8000000270C529C0;
    *(v100 + 16) = 0;
LABEL_49:
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  if (!v129)
  {

    lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
    swift_allocError();
    *v103 = 0xD000000000000038;
    *(v103 + 8) = 0x8000000270C52A00;
LABEL_48:
    *(v103 + 16) = 1;
    goto LABEL_49;
  }

  v112 = v137;
  v116 = (2 * *(v118 + 16)) | 1;
  outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v135, &v131, &_s4VDAF4SeedVSgMd, &_s4VDAF4SeedVSgMR);

  v52 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(6u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  *(inited + 32) = v26;
  v131 = inited;

  specialized Array.append<A>(contentsOf:)(v54);
  v55 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v51, v52, v131);
  specialized VDAFEncodable.encodedBytes.getter((v118 + 32), 0, v116);
  v56 = off_2880A7738[0];
  type metadata accessor for XofHmacSha256Aes128(0);
  v56();
  v57 = v55;

  v58 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v55 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v115 = a3;
  v116 = v47;
  v59 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v61 = v126;
  v60 = v127;
  v62 = v57 + v59;
  v63 = v125;
  (*(v126 + 16))(v125, v62, v127);
  HMAC.finalize()();
  (*(v61 + 8))(v63, v60);
  v64 = v121;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v120 + 8))(v25, v64);
  v65 = *(v57 + v58);
  if (!v65)
  {
LABEL_67:
    __break(1u);
    swift_endAccess();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v66 = *(v57 + v58);

  a2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  a2[1].i64[0] = 32;
  a2[3] = 0u;
  a2[2] = 0u;
  v67 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v68 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(a2 + 2, a2[4].i64, v65 + v67, v65 + v68);
  v26 = v145;
  swift_endAccess();

  v25 = v129;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  LOBYTE(a3) = v117;
  v10 = v124;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v47 = v116;
    if (*(v25 + 2) <= v26)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v70 = &v25[8 * v26];
    v71 = *(v70 + 4);
    *(v70 + 4) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
    v72 = swift_allocObject();
    v73 = v112;
    v72[4] = 0;
    v72[5] = v73;
    v72[6] = v10;
    v72[2] = v25;
    v72[3] = 0;
LABEL_29:
    v25 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(4u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v74 = swift_initStackObject();
    *(v74 + 1) = xmmword_270C44540;
    if (v10 < 0)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v10 > 0xFF)
    {
      goto LABEL_61;
    }

    v74[32] = v10;
    v130 = v74;

    specialized Array.append<A>(contentsOf:)(v75);
    v116 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v122, v25, v130);

    a2 = &v136;
    v76 = specialized FullyLinearProof.verifierLength.getter();
    if ((v10 * v76) >> 64 == (v10 * v76) >> 63)
    {
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
  }

  v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v10 * v76) & ~((v10 * v76) >> 63), 0, MEMORY[0x277D84F90]);
  if (!v10)
  {
LABEL_45:

    if (v72)
    {

      v104 = specialized VerificationJointRandomness.seed.getter();
    }

    else
    {
      v104 = 0;
    }

    v105 = specialized FullyLinearProof.verifierLength.getter();
    v106 = v128;
    *v128 = v114;
    *(v106 + 8) = a3;
    v106[2] = v104;
    *(v106 + 24) = v26;
    v106[4] = v105;
    v107 = v130;
    if (!v72)
    {

      result = swift_unknownObjectRelease();
      v109 = 0;
      goto LABEL_56;
    }

    v108 = v72[2];
    if (*(v108 + 16) > v26)
    {
      v109 = *(v108 + 8 * v26 + 32);

      result = swift_unknownObjectRelease();
LABEL_56:
      v110 = v113;
      *v113 = v107;
      v110[1] = v109;
      return result;
    }

    goto LABEL_65;
  }

  v129 = 0;
  v126 = v47 + 32;
  v127 = (2 * v115) | 1;
  v142 = v139;
  v143 = v140;
  v144 = v141;
  v115 = v72;
  while (1)
  {
    v124 = v10;
    if (v72)
    {
      v77 = v72[5];

      v78 = specialized VerificationJointRandomness.xof.getter();
      v123 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v77, v78);

      v79 = MEMORY[0x277D84F90];
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
      v123 = MEMORY[0x277D84F90];
    }

    v80 = v129;
    v81 = v127;
    v82 = specialized FullyLinearProof.proofLength.getter();
    v83 = v47;
    v84 = v47;
    v85 = v126;
    v86 = specialized Collection.prefix(_:)(v82, v83, v126, v80, v81);
    v121 = v88;
    v122 = v87;
    v120 = v89;
    v125 = specialized Collection.dropFirst(_:)(v82, v84, v85, v80, v81);
    v126 = v90;
    v129 = v91;
    v127 = v92;
    v93 = specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter(v93);
    v134 = v79;
    swift_unknownObjectRetain();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v94 = v134;
    _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v116, &v133);
    v95 = v133;
    v97 = *(v94 + 16);
    v96 = *(v94 + 24);
    if (v97 >= v96 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
      v94 = v134;
    }

    v98 = v123;
    *(v94 + 16) = v97 + 1;
    *(v94 + 8 * v97 + 32) = v95;
    specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(&v130, v118, v86, v122, v121, v120, v94, v98, v119);
    if (v9)
    {
      break;
    }

    swift_unknownObjectRelease();

    v47 = v125;
    v10 = v124 - 1;
    v26 = v145;
    LOBYTE(a3) = v117;
    v72 = v115;
    if (v124 == 1)
    {
      goto LABEL_45;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t Prio3<>.encodedPrepareMessageFrom(_:)(uint64_t a1)
{
  v4 = v2[4];
  v5 = v2[6];
  v21 = v2[5];
  v22 = v5;
  v6 = v2[1];
  v16 = *v2;
  v17 = v6;
  v7 = v2[2];
  v19 = v2[3];
  v20 = v4;
  v18 = v7;
  _s4VDAF5Prio3V18prepareMessageFrom_9parameterAA0b7PrepareD0VSayAA0bG5ShareVy1FQzGG_AA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt1B5(a1, v13);
  if (!v3)
  {
    v8 = v13[0];
    if (v13[0])
    {
      v14 = specialized Data._Representation.init(capacity:)(*(v13[0] + 16));
      v15 = v9;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v13[3] = v10;
      v13[4] = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v13[0] = v8;
      v11 = *(*__swift_project_boxed_opaque_existential_1(v13, v10) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v13);

      return v14;
    }

    else
    {
      v1 = specialized Data._Representation.init(capacity:)(0);
    }
  }

  return v1;
}

void _s4VDAF5Prio3V18prepareMessageFrom_9parameterAA0b7PrepareD0VSayAA0bG5ShareVy1FQzGG_AA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v54 = *(v2 + 48);
  v55 = *(v2 + 64);
  v56 = *(v2 + 80);
  v57 = *(v2 + 96);
  v52 = *(v2 + 16);
  v53 = *(v2 + 32);
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = *(v2 + 8);
  v10 = v8 * v9;
  if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
  {
    goto LABEL_67;
  }

  if (v10 < 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
    v49 = a2;
    v50 = v5;
    if (v10)
    {
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v11 + 16) = v10;
      bzero((v11 + 32), 8 * v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v51 = v9;
    v58 = v11;
    v12 = *(a1 + 16);
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = (a1 + 40);
    v14 = *(a1 + 16);
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;

      specialized Array<A>.elementwiseAdd(_:)(v17);
      if (v3)
      {

        return;
      }

      v13 += 2;

      --v14;
    }

    while (v14);
    v11 = v58;
LABEL_11:
    v18 = 0;
    v19 = *(v11 + 16);
    v20 = a1 + 40;
    v21 = MEMORY[0x277D84F90];
LABEL_12:
    v22 = (v20 + 16 * v18);
    while (v12 != v18)
    {
      if (v18 >= v12)
      {
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
        goto LABEL_68;
      }

      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_58;
      }

      v25 = *v22;
      v22 += 2;
      v24 = v25;
      ++v18;
      if (v25)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        *&v21[8 * v27 + 32] = v24;
        v18 = v23;
        goto LABEL_12;
      }
    }

    v28 = v51;
    if (v51 < 0)
    {
      goto LABEL_69;
    }

    v29 = v21;
    if (v51)
    {
      v30 = 0;
      while (1)
      {
        v31 = specialized FullyLinearProof.verifierLength.getter();
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v31)
        {
          v32 = v19 - v30 >= v31;
        }

        else
        {
          v32 = 1;
        }

        v33 = !v32;
        v34 = v19;
        if (v32)
        {
          v34 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_65;
          }
        }

        if (v34 < v30)
        {
          goto LABEL_60;
        }

        if (v19 < v30)
        {
          goto LABEL_61;
        }

        if (v19 < v34)
        {
          goto LABEL_62;
        }

        v35 = v19;
        if ((v33 & 1) == 0)
        {
          v35 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_66;
          }

          if (v19 < v35)
          {
            goto LABEL_64;
          }
        }

        if (v35 < v30)
        {
          goto LABEL_63;
        }

        v36 = (2 * v34) | 1;
        v37 = swift_unknownObjectRetain();
        v38 = specialized FullyLinearProof.decide<A>(verifier:)(v37, v11 + 32, v30, v36);
        if (v4)
        {
          break;
        }

        if ((v38 & 1) == 0)
        {

          lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
          swift_allocError();
          *v48 = 0;
          *(v48 + 8) = 0;
          *(v48 + 16) = 4;
          swift_willThrow();
          goto LABEL_53;
        }

        swift_unknownObjectRelease();
        v30 = v35;
        if (!--v28)
        {
          goto LABEL_45;
        }
      }

LABEL_53:
      swift_unknownObjectRelease_n();
      return;
    }

LABEL_45:
    v39 = *(v29 + 2);
    if (v53 > 0)
    {
      if (v39 == *v50)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
        inited = swift_initStackObject();
        inited[4] = 0;
        inited[5] = v53;
        inited[6] = v51;
        inited[2] = v29;
        inited[3] = 0;
        v41 = specialized VerificationJointRandomness.seed.getter();
        swift_unknownObjectRelease();
        swift_setDeallocating();
        v42 = inited[2];

        v43 = inited[3];

        v44 = inited[4];

        *v49 = v41;
        return;
      }

      v45 = 0x8000000270C52890;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      v47 = 0xD000000000000038;
      goto LABEL_55;
    }

    if (v39)
    {
      v45 = 0x8000000270C52850;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      v47 = 0xD00000000000003BLL;
LABEL_55:
      *v46 = v47;
      *(v46 + 8) = v45;
      *(v46 + 16) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    *v49 = 0;
  }
}

uint64_t Prio3<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(unint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v11 = v5[5];
  v28[4] = v5[4];
  v28[5] = v11;
  v28[6] = v5[6];
  v12 = v5[1];
  v28[0] = *v5;
  v28[1] = v12;
  v13 = v5[3];
  v28[2] = v5[2];
  v28[3] = v13;
  result = _s4VDAF35Prio3PrepareStateDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5(v28, a1, &v20);
  if (!v6)
  {
    v29[0] = v20;
    v29[1] = BYTE8(v20);
    v30 = v21;
    v31 = *v22;
    _s4VDAF17Prio3PrepareStateV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, v29, &v23);
    v15 = 0;
    v26[0] = v23;
    v26[1] = v24;
    v27 = *&v25[0];
    if (a4 && a5 != a4)
    {
      v15 = specialized _copyCollectionToContiguousArray<A>(_:)(a4, a5);
    }

    specialized Prio3.prepareNext(state:message:)(v26, v15, &v23);

    result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v26, &_s4VDAF17Prio3PrepareStateVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, "*]");
    *&v22[9] = *(v25 + 9);
    v20 = v23;
    v21 = v24;
    *v22 = v25[0];
    if (BYTE8(v25[1]))
    {
      v16 = v20;
      v17 = *(v20 + 16);
      if (v17 >> 60)
      {
        __break(1u);
      }

      else
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v17, 0, MEMORY[0x277D84F90]);
        specialized AggregateShare.encode<A>(into:)(&v19, v16);
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v20, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMR);
        return v19;
      }
    }

    else
    {
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v20, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMR);
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v18 = 0xD000000000000018;
      *(v18 + 8) = 0x8000000270C519B0;
      *(v18 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t specialized Prio3.prepareNext(state:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    if (a2 && (specialized static Seed.== infix(_:_:)(*(a1 + 16), a2) & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    _StringGuts.grow(_:)(68);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C527B0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedVSgMd, &_s4VDAF4SeedVSgMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);

    v9 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v9);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 1;
    return swift_willThrow();
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(v3 + 48);
  v14 = *(v3 + 64);
  v15 = *(v3 + 80);
  v16 = *(v3 + 96);
  v12 = *(v3 + 32);
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_ASTt2g5(*a1, *(a1 + 8), *(a1 + 24), *(v3 + 16));
  if (!v4)
  {
    v11 = specialized SumVectorType.truncate(measurement:)(result);

    *a3 = v11;
    *(a3 + 56) = 1;
  }

  return result;
}

_BYTE *Prio3<>.outputShare(from:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t *Prio3<>.encodedAggregateShare(_:)(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 60)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v2, 0, MEMORY[0x277D84F90]);
    specialized AggregateShare.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

void Prio3<>.unshardAndEncodeIntoBytes(_:numOfMeasurements:)(uint64_t a1)
{
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[6];
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  _s4VDAF5Prio3V7unshard_17numOfMeasurements9parameter15AggregateResultQzqd___SiAA11VoidCodableVtKSkRd__AA0H5ShareVy1FQzG7ElementRtd__lFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSayALyAUGGTt2B5Tf4ndn_n(a1);
  if (!v2)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v12 = MEMORY[0x277D84F90];
      v5 = v3;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v6 = v5;
      v7 = 32;
      v8 = v12;
      while (1)
      {
        v9 = *(v6 + v7);
        if (HIDWORD(v9))
        {
          break;
        }

        v11 = *(v12 + 16);
        v10 = *(v12 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v6 = v5;
        }

        *(v12 + 16) = v11 + 1;
        *(v12 + 4 * v11 + 32) = v9;
        v7 += 8;
        if (!--v4)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
LABEL_10:
      specialized VDAFEncodable.encodedBytes.getter(v8);
    }
  }
}

uint64_t _s4VDAF33Prio3InputShareDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result <= a2)
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  if (!a2)
  {
    v9 = a3;
    v14 = *(result + 48);
    v15 = *(result + 64);
    v16 = *(result + 80);
    v17 = *(result + 96);
    v13 = *(result + 32);
    v4 = *(result + 16);
    v10 = result;
    result = specialized FullyLinearProof.proofLength.getter();
    v11 = *(v10 + 8);
    v3 = result * v11;
    if ((result * v11) >> 64 == (result * v11) >> 63)
    {
      result = v10;
      a3 = v9;
      a2 = 0;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v3 = 32;
  v4 = 32;
LABEL_8:
  v12 = *(result + 32);
  *a3 = v4;
  *(a3 + 8) = a2 != 0;
  *(a3 + 16) = v3;
  *(a3 + 24) = a2 != 0;
  *(a3 + 32) = 32 * (v12 > 0);
  return result;
}

uint64_t _s4VDAF15Prio3InputShareV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 8);
  if (v6 == 255)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    return swift_willThrow();
  }

  v8 = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 32);
  v11 = *(a3 + 24);
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a3;
  if ((v6 & 1) == 0)
  {
    if ((v8 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v13 = 8 * v8;
  }

  v14 = *(a3 + 16);
  if ((v11 & 1) == 0)
  {
    if ((v9 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v14 = 8 * v9;
  }

  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_48;
  }

  v15 = __OFADD__(v16, v10);
  v17 = v16 + v10;
  if (v15)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v12 != v17)
  {
    _StringGuts.grow(_:)(24);

    if ((v6 & 1) == 0)
    {
      if ((v8 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v8 *= 8;
    }

    if ((v11 & 1) == 0)
    {
      if ((v9 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v9 *= 8;
    }

    if (!__OFADD__(v8, v9))
    {
      if (!__OFADD__(v8 + v9, v10))
      {
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v36);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v37);

        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v38 = 0xD00000000000005FLL;
        v38[1] = 0x8000000270C52A40;
        return swift_willThrow();
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v68 = *(a3 + 16);
  v70 = v4;
  v65 = a4;
  v18 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v19 = v8;
  if (v6)
  {
    goto LABEL_18;
  }

  if ((v8 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_53;
  }

  v19 = 8 * v8;
LABEL_18:
  LODWORD(v69) = v11;
  v64 = v10;
  v20 = (2 * v18[2]) | 1;
  v21 = v18;
  v22 = specialized Collection.prefix(_:)(v19, v18, v18 + 4, 0, v20);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v9 = specialized Collection.dropFirst(_:)(v19, v21, v21 + 4, 0, v20);
  v66 = v30;
  v67 = v29;
  v32 = v31;

  v33 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v22, v24, v26, v28, v8, v6 & 1);
  if (v4)
  {
    return swift_unknownObjectRelease();
  }

  v6 = v68;
  v5 = v68;
  if ((v69 & 1) == 0)
  {
    if ((v68 - 0x1000000000000000) >> 61 == 7)
    {
      v5 = 8 * v68;
      goto LABEL_33;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_33:
  v61 = v34;
  v62 = v33;
  v71 = specialized Collection.prefix(_:)(v5, v9, v67, v66, v32);
  v63 = v39;
  v41 = v40;
  v43 = v42;
  v44 = specialized Collection.dropFirst(_:)(v5, v9, v67, v66, v32);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  swift_unknownObjectRetain();
  v51 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v71, v63, v41, v43, v68, v69 & 1);
  v70 = v52;
  v69 = v51;
  if (v64 > 0)
  {
    v6 = specialized Collection.prefix(_:)(v64, v44, v46, v48, v50);
    v54 = v53;
    v68 = v55;
    v9 = v56;
    specialized Collection.dropFirst(_:)(v64, v44, v46, v48, v50);
    if ((v9 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_36:
      specialized _copyCollectionToContiguousArray<A>(_:)(v6, v54, v68, v9);
      v58 = v57;
      goto LABEL_44;
    }

    v5 = v54;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v59 = swift_dynamicCastClass();
    if (!v59)
    {
      swift_unknownObjectRelease();
      v59 = MEMORY[0x277D84F90];
    }

    v60 = *(v59 + 16);

    if (!__OFSUB__(v9 >> 1, v68))
    {
      if (v60 == (v9 >> 1) - v68)
      {
        v58 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v58)
        {
LABEL_45:
          result = swift_unknownObjectRelease();
          goto LABEL_46;
        }

        v58 = MEMORY[0x277D84F90];
LABEL_44:
        swift_unknownObjectRelease();
        goto LABEL_45;
      }

      goto LABEL_58;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    swift_unknownObjectRelease_n();
    v54 = v5;
    goto LABEL_36;
  }

  result = swift_unknownObjectRelease();
  v58 = 0;
LABEL_46:
  *v65 = v62;
  *(v65 + 8) = v61 & 1;
  *(v65 + 16) = v69;
  *(v65 + 24) = v70 & 1;
  *(v65 + 32) = v58;
  return result;
}

uint64_t _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(uint64_t result, uint64_t a2)
{
  if (result >= 1 && a2 >= 1)
  {
    v2 = result * a2;
    if ((result * a2) >> 64 == (result * a2) >> 63)
    {
      if (result <= 0x3F)
      {
        return v2;
      }

      v7 = 0;
      v8 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000021, 0x8000000270C52C90);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v4);

      MEMORY[0x2743B25F0](0x74694278616D202CLL, 0xEE003D6874646957);
    }

    else
    {
      _StringGuts.grow(_:)(43);

      v7 = 0xD000000000000013;
      v8 = 0x8000000270C52CC0;
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C52CE0);
    }

    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t specialized SumVectorType.encode(measurement:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = a1;
  v6 = v2[1];
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    _StringGuts.grow(_:)(41);

    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v32 = v6;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](32, 0xE100000000000000);
    v9 = 0xD000000000000020;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v10 = 0xD000000000000020;
    *(v10 + 8) = 0x8000000270C52BC0;
    *(v10 + 16) = 2;
    swift_willThrow();
    return v9;
  }

  if (a2 - a1 != v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v11 = v2[5];
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *v2 & ~(*v2 >> 63), 0, MEMORY[0x277D84F90]);
  v12 = 1 << v11;
  if (v11 >= 0x40)
  {
    v12 = 0;
  }

  if (v11 <= 0x40)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v5 || a2 == v5)
  {
    return v9;
  }

  while (1)
  {
    v15 = *v5;
    if (v13 < v15)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v30 = 0xD000000000000016;
      v31 = 0x8000000270C52BF0;
      LOBYTE(v32) = v15;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v25);

      MEMORY[0x2743B25F0](0x646957746962202CLL, 0xEB000000003D6874);
      v32 = v11;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v26);

      v27 = v30;
      v28 = v31;
      lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
      swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v28;
      *(v29 + 16) = 1;
      swift_willThrow();

      return v9;
    }

    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0, MEMORY[0x277D84F90]);
    result = _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field64V_Tt2g5(v15, &v30, v11);
    if (v3)
    {

      return v9;
    }

    v16 = v30;
    v17 = *(v30 + 2);
    v18 = *(v9 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    if (v19 > *(v9 + 3) >> 1)
    {
      if (v18 <= v19)
      {
        v24 = v18 + v17;
      }

      else
      {
        v24 = *(v9 + 2);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v24, 1, v9);
      v9 = result;
      v18 = *(result + 16);
      if (*(v16 + 2))
      {
LABEL_22:
        if (((*(v9 + 3) >> 1) - v18) < v17)
        {
          goto LABEL_35;
        }

        memcpy(&v9[8 * v18 + 32], v16 + 32, 8 * v17);

        if (v17)
        {
          v21 = *(v9 + 2);
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_36;
          }

          *(v9 + 2) = v23;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v20 = *(v30 + 2);
      if (v17)
      {
        goto LABEL_22;
      }
    }

    if (v17)
    {
      goto LABEL_34;
    }

LABEL_16:
    if (++v5 == a2)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized SumVectorType.truncate(measurement:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  if (v3 != *v1)
  {
    _StringGuts.grow(_:)(35);

    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v20[3] = v4;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    v7 = 0xD00000000000001BLL;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v10 = 0xD00000000000001BLL;
    *(v10 + 8) = 0x8000000270C51C80;
    *(v10 + 16) = 2;
    swift_willThrow();
    return v7;
  }

  v6 = v1[5];
  if (v6 == 1)
  {

    return a1;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[1] & ~(v1[1] >> 63), 0, MEMORY[0x277D84F90]);
  if (v6)
  {
    v7 = result;
    if (v6 < 1 || !v3)
    {
      return v7;
    }

    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v12 + v6;
      v15 = __OFADD__(v12, v6) ? ((v12 + v6) >> 63) ^ 0x8000000000000000 : v12 + v6;
      if (__OFADD__(v12, v6))
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_25;
      }

      if (!v13)
      {
        goto LABEL_26;
      }

      if (v12 < 0)
      {
        goto LABEL_27;
      }

      if (v3 < v14)
      {
        goto LABEL_28;
      }

      v16 = (2 * v14) | 1;

      result = _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(a1 + 32, v12, v16, v20);
      if (v2)
      {

        return v7;
      }

      v17 = v20[0];
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v19 + 1;
      *(v7 + 8 * v19 + 32) = v17;
      v13 = v3 >= v15;
      v12 = v15;
      if (v15 >= v3)
      {
        return v7;
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
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2g5@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char a3@<W2>, int64_t a4@<X3>, size_t *a5@<X8>)
{
  if (a3 != 2 && (a3 & 1) != 0)
  {
    if ((a4 - 0x400000000000000) >> 59 != 31)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    v5 = 32 * a4;
    if (result)
    {
      v7 = &a2[-result];
      if (v5 == &a2[-result])
      {
LABEL_12:
        result = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
        v13 = (2 * *(result + 16)) | 1;
        v15[0] = result;
        v15[1] = result + 32;
        v15[2] = 0;
        v15[3] = v13;
        if ((a4 & 0x8000000000000000) == 0)
        {
          v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg50118_s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E8VSiXEfU_s10ArraySliceVys5UInt8VGSiTf1cn_n(0, a4, v15, 32);
          result = swift_unknownObjectRelease();
          *a5 = v14;
          return result;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      v7 = 0;
    }

    _StringGuts.grow(_:)(29);

    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v15[4] = v7;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v11 = 0xD000000000000060;
    v11[1] = 0x8000000270C52AA0;
    return swift_willThrow();
  }

  *a5 = 0;
  return result;
}

uint64_t specialized Prio3.splitSeedBytes<A>(_:)(uint64_t result, unint64_t a2)
{
  v8 = *(v2 + 5);
  v40[4] = *(v2 + 4);
  v40[5] = v8;
  v40[6] = *(v2 + 6);
  v9 = *(v2 + 1);
  v40[0] = *v2;
  v40[1] = v9;
  v10 = *(v2 + 3);
  v11 = a2 >> 62;
  v40[2] = *(v2 + 2);
  v40[3] = v10;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2 || (v14 = *(result + 16), v13 = *(result + 24), v15 = __OFSUB__(v13, v14), v12 = v13 - v14, !v15))
    {
LABEL_10:
      v16 = *v2;
      v17 = *v2 - 1;
      if (__OFSUB__(*v2, 1))
      {
        __break(1u);
      }

      else if (*v2 + 0x3FFFFFFFFFFFFFFFLL >= 0)
      {
        v4 = v2[4];
        v18 = (2 * v17) | 1;
        if (v4 <= 0)
        {
          v16 = 0;
        }

        v15 = __OFADD__(v18, v16);
        v19 = v18 + v16;
        if (!v15)
        {
          if ((v19 - 0x400000000000000) >> 59 == 31)
          {
            if (v12 == 32 * v19)
            {
              v20 = result;
              v3 = a2;
              outlined copy of Data._Representation(result, a2);
              v21 = specialized Collection._copyToContiguousArray()(v20, v3);
              v23 = (2 * *(v21 + 16)) | 1;
              v36 = v21;
              v37 = v21 + 32;
              v38 = 0;
              v39 = v23;
              if ((v17 & 0x8000000000000000) == 0)
              {
                MEMORY[0x28223BE20](v21, v22);
                v35[2] = &v36;
                v35[3] = 32;
                v35[4] = v40;
                v3 = 0;
                v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AISg14jointRandBlindts5NeverOTg5(partial apply for specialized closure #1 in Prio3.splitSeedBytes<A>(_:), v35, 0, v17);
                if (v4 < 1)
                {
LABEL_41:
                  v4 = v38;
                  LOBYTE(v5) = v39;
                  v30 = v39 >> 1;
                  v31 = (v39 >> 1) - v38;
                  if (!__OFSUB__(v39 >> 1, v38))
                  {
                    v3 = v36;
                    v6 = v37;
                    v7 = v39 >> 1;
                    if (v31 >= 0x20)
                    {
                      v7 = v38 + 32;
                      if (__OFADD__(v38, 32))
                      {
                        goto LABEL_83;
                      }
                    }

                    if (v7 >= v38)
                    {
                      if (v30 >= v38)
                      {
                        if (v30 >= v7)
                        {
                          if ((v7 & 0x8000000000000000) == 0)
                          {
                            if (v31 < 0x20)
                            {
                              goto LABEL_52;
                            }

                            if (__OFADD__(v38, 32))
                            {
LABEL_84:
                              __break(1u);
                              goto LABEL_85;
                            }

                            if (v30 >= v38 + 32)
                            {
                              v30 = v38 + 32;
LABEL_52:
                              if (v30 >= v38)
                              {
                                if ((v39 & 1) == 0)
                                {
                                  swift_unknownObjectRetain();
LABEL_55:
                                  specialized _copyCollectionToContiguousArray<A>(_:)(v3, v6, v4, v5 & 1 | (2 * v7));
                                  goto LABEL_61;
                                }

                                type metadata accessor for __ContiguousArrayStorageBase();
                                swift_unknownObjectRetain_n();
                                v32 = swift_dynamicCastClass();
                                if (!v32)
                                {
                                  swift_unknownObjectRelease();
                                  v32 = MEMORY[0x277D84F90];
                                }

                                v33 = *(v32 + 16);

                                if (!__OFSUB__(v7, v4))
                                {
                                  if (v33 == v7 - v4)
                                  {
                                    v34 = swift_dynamicCastClass();
                                    swift_unknownObjectRelease_n();
                                    if (v34)
                                    {
LABEL_62:
                                      swift_unknownObjectRelease();
                                      return v17;
                                    }

LABEL_61:
                                    swift_unknownObjectRelease();
                                    goto LABEL_62;
                                  }

                                  goto LABEL_86;
                                }

LABEL_85:
                                __break(1u);
LABEL_86:
                                swift_unknownObjectRelease_n();
                                goto LABEL_55;
                              }

                              goto LABEL_75;
                            }

LABEL_74:
                            __break(1u);
LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

LABEL_73:
                          __break(1u);
                          goto LABEL_74;
                        }

LABEL_72:
                        __break(1u);
                        goto LABEL_73;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

                v24 = v38;
                v4 = v39;
                v25 = v39 >> 1;
                v26 = (v39 >> 1) - v38;
                if (__OFSUB__(v39 >> 1, v38))
                {
LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

                v3 = v36;
                v5 = v37;
                v27 = v39 >> 1;
                if (v26 >= 0x20 && (v27 = v38 + 32, __OFADD__(v38, 32)))
                {
                  __break(1u);
                }

                else
                {
                  if (v27 < v38)
                  {
LABEL_77:
                    __break(1u);
                    goto LABEL_78;
                  }

                  if (v25 < v38)
                  {
LABEL_78:
                    __break(1u);
                    goto LABEL_79;
                  }

                  if (v25 < v27)
                  {
LABEL_79:
                    __break(1u);
                    goto LABEL_80;
                  }

                  if (v27 < 0)
                  {
LABEL_80:
                    __break(1u);
                    goto LABEL_81;
                  }

                  if (v26 < 0x20)
                  {
LABEL_30:
                    if (v25 < v38)
                    {
LABEL_82:
                      __break(1u);
LABEL_83:
                      __break(1u);
                      goto LABEL_84;
                    }

                    v38 = v25;
                    if ((v39 & 1) == 0)
                    {
                      swift_unknownObjectRetain();
LABEL_33:
                      specialized _copyCollectionToContiguousArray<A>(_:)(v3, v5, v24, v4 & 1 | (2 * v27));
LABEL_40:
                      swift_unknownObjectRelease();
                      goto LABEL_41;
                    }

                    v6 = type metadata accessor for __ContiguousArrayStorageBase();
                    swift_unknownObjectRetain_n();
                    v28 = swift_dynamicCastClass();
                    if (!v28)
                    {
                      swift_unknownObjectRelease();
                      v28 = MEMORY[0x277D84F90];
                    }

                    v7 = *(v28 + 16);

                    if (!__OFSUB__(v27, v24))
                    {
                      if (v7 == v27 - v24)
                      {
                        v29 = swift_dynamicCastClass();
                        swift_unknownObjectRelease_n();
                        if (v29)
                        {
                          goto LABEL_41;
                        }

                        goto LABEL_40;
                      }

                      goto LABEL_90;
                    }

LABEL_89:
                    __break(1u);
LABEL_90:
                    swift_unknownObjectRelease_n();
                    goto LABEL_33;
                  }

                  if (!__OFADD__(v38, 32))
                  {
                    if (v25 < v38 + 32)
                    {
LABEL_81:
                      __break(1u);
                      goto LABEL_82;
                    }

                    v25 = v38 + 32;
                    goto LABEL_30;
                  }
                }

                __break(1u);
                goto LABEL_89;
              }

LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v12) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v12 = v12;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(1u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44550;
  v8 = *(a2 + 8);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v8 > 0xFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 32) = v8;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= 0xFF)
  {
    *(result + 33) = a3;
    v9 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(a1, v6, result);

    swift_setDeallocating();
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

void specialized Prio3PrepareShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = *v5++;
      v6 = (0xFFFFFFFEFFFFFFFFLL * v7 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v7, v7))
      {
        if (v6 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          ++v6;
        }

        else
        {
          v6 += 0x100000000;
        }
      }

      v10 = v6;
      specialized Array.append<A>(contentsOf:)(0, 8uLL, &v10, &v11);
      --v4;
    }

    while (v4);
  }

  if (a3)
  {

    specialized Array.append<A>(contentsOf:)(v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t specialized SumVectorType.decode(data:numOfMeasurements:)(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 8))
  {
    return _s4VDAF12FieldElementPAAE18elementsToIntegersySay06FiniteB0_11IntegerTypeQZGSayxGFZAA7Field64V_Tt0g5(a1);
  }

  _StringGuts.grow(_:)(30);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v3);

  MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v4);

  lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  swift_allocError();
  *v5 = 0xD000000000000016;
  *(v5 + 8) = 0x8000000270C519D0;
  *(v5 + 16) = 2;
  return swift_willThrow();
}

void _s4VDAF5Prio3V7unshard_17numOfMeasurements9parameter15AggregateResultQzqd___SiAA11VoidCodableVtKSkRd__AA0H5ShareVy1FQzG7ElementRtd__lFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSayALyAUGGTt2B5Tf4ndn_n(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v1[3];
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[6];
  v11 = v1[1];
  v12 = v1[2];
  if ((*(&v11 + 1) & 0x8000000000000000) == 0)
  {
    if (*(&v11 + 1))
    {
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = *(&v11 + 1);
      bzero((v5 + 32), 8 * *(&v11 + 1));
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v6 = 0;
    v7 = a1 + 32;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = *(v7 + 8 * v6);

      specialized Array<A>.elementwiseAdd(_:)(v10);
      if (v2)
      {

        return;
      }

      ++v6;
      if (v8 == v3)
      {
        specialized SumVectorType.decode(data:numOfMeasurements:)(v5);

        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t partial apply for specialized closure #1 in Prio3.splitSeedBytes<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v6[5];
  v13[4] = v6[4];
  v13[5] = v7;
  v13[6] = v6[6];
  v8 = v6[1];
  v13[0] = *v6;
  v13[1] = v8;
  v9 = v6[3];
  v13[2] = v6[2];
  v13[3] = v9;
  result = specialized closure #1 in Prio3.splitSeedBytes<A>(_:)(v4, v5, v13);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v11;
    a1[2] = v12;
  }

  return result;
}

uint64_t specialized closure #1 in Prio3.splitSeedBytes<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = specialized Collection.prefix(_:)(a2, *a1, v5, v8, v7);
  v55 = v10;
  v12 = v11;
  v14 = v13;
  *a1 = specialized Collection.dropFirst(_:)(a2, v6, v5, v8, v7);
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  if (v14)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      swift_unknownObjectRelease();
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);

    if (__OFSUB__(v14 >> 1, v12))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v21 != (v14 >> 1) - v12)
    {
      goto LABEL_34;
    }

    v19 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v19)
    {
      goto LABEL_11;
    }

    v19 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v9, v55, v12, v14);
    v19 = v18;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v55 = v19;
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    v9 = a1[3];
    v12 = specialized Collection.prefix(_:)(a2, *a1, v23, v24, v9);
    v53 = v25;
    v14 = v26;
    v28 = v27;
    *a1 = specialized Collection.dropFirst(_:)(a2, v22, v23, v24, v9);
    a1[1] = v29;
    a1[2] = v30;
    a1[3] = v31;
    if ((v28 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_13:
      v32 = a3;
      specialized _copyCollectionToContiguousArray<A>(_:)(v12, v53, v14, v28);
      goto LABEL_19;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      swift_unknownObjectRelease();
      v33 = MEMORY[0x277D84F90];
    }

    v34 = *(v33 + 16);

    if (!__OFSUB__(v28 >> 1, v14))
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_unknownObjectRelease_n();
  }

  if (v34 != (v28 >> 1) - v14)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_13;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v32 = a3;
  if (v35)
  {
    goto LABEL_20;
  }

LABEL_19:
  swift_unknownObjectRelease();
LABEL_20:
  if (*(v32 + 32) < 1)
  {
    return v55;
  }

  v36 = *a1;
  v37 = a1[1];
  v38 = a1[2];
  v39 = a1[3];
  v40 = specialized Collection.prefix(_:)(a2, *a1, v37, v38, v39);
  v54 = v41;
  v43 = v42;
  v45 = v44;
  *a1 = specialized Collection.dropFirst(_:)(a2, v36, v37, v38, v39);
  a1[1] = v46;
  a1[2] = v47;
  a1[3] = v48;
  if ((v45 & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v49 + 16);

  if (__OFSUB__(v45 >> 1, v43))
  {
    __break(1u);
  }

  else if (v50 == (v45 >> 1) - v43)
  {
    v51 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v51)
    {
      goto LABEL_30;
    }

    return v55;
  }

  swift_unknownObjectRelease_n();
LABEL_23:
  specialized _copyCollectionToContiguousArray<A>(_:)(v40, v54, v43, v45);
LABEL_30:
  swift_unknownObjectRelease();
  return v55;
}

uint64_t ParallelSum.init(inner:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  result = (*(a4 + 24))(a3, a4);
  if ((a2 * result) >> 64 == (a2 * result) >> 63)
  {
    *a5 = a2 * result;
    *(a5 + 1) = (*(a4 + 32))(a3, a4);
    v11 = type metadata accessor for ParallelSum();
    result = (*(*(a3 - 8) + 32))(&a5[*(v11 + 40)], a1, a3);
    *&a5[*(v11 + 44)] = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ParallelSum.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v115 = *(AssociatedTypeWitness - 8);
  v12 = *(v115 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v104 = &v82 - v14;
  v123 = a4;
  v15 = *(*(a4 + 8) + 8);
  v16 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v114 = *(TupleTypeMetadata2 - 8);
  v17 = *(v114 + 8);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2, v18);
  v102 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v101 = &v82 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v100 = type metadata accessor for Range();
  v89 = *(v100 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](v100, v24);
  v99 = &v82 - v25;
  v98 = swift_getAssociatedTypeWitness();
  v86 = *(v98 - 8);
  v26 = *(v86 + 64);
  MEMORY[0x28223BE20](v98, v27);
  v97 = &v82 - v28;
  v84 = type metadata accessor for Optional();
  v92 = *(v84 - 8);
  v29 = *(v92 + 8);
  v31 = MEMORY[0x28223BE20](v84, v30);
  v110 = &v82 - v32;
  v112 = v16;
  v91 = *(v16 - 8);
  v33 = *(v91 + 8);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v119 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v109 = &v82 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v121 = &v82 - v41;
  v42 = *(swift_getAssociatedConformanceWitness() + 8);
  v105 = AssociatedTypeWitness;
  v106 = a5;
  v96 = v42;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v43 = a3;
  v122 = v15;
  v44 = dispatch thunk of Collection.count.getter();
  v45 = *(v120 + 40);
  v107 = *(v10 + 24);
  v108 = v10 + 24;
  result = v107(v9, v10);
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v47 = v44 >= 0;
  v95 = v44;
  if (result > 0)
  {
    v47 = v44 < 1;
  }

  v117 = v9;
  v118 = v45;
  v120 = v10;
  v48 = v112;
  if (!v47)
  {
    v49 = a1;
    v50 = 0;
    v51 = (v91 + 8);
    v94 = (v91 + 48);
    v113 = (v91 + 32);
    v83 = (v92 + 8);
    v92 = v91 + 16;
    v91 = v114 + 16;
    v90 = (v114 + 32);
    v89 += 8;
    v88 = v120 + 64;
    v87 = (v115 + 8);
    v86 += 8;
    v93 = result;
    v116 = v51;
    v85 = v43;
    while (1)
    {
      v52 = v50 + result;
      if (__OFADD__(v50, result))
      {
        v52 = ((v50 + result) >> 63) ^ 0x8000000000000000;
      }

      v115 = v52;
      v53 = v109;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v54 = *v51;
      (*v51)(v53, v48);
      v107(v117, v120);
      dispatch thunk of Collection.endIndex.getter();
      v55 = v110;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:limitedBy:)();
      v114 = v54;
      (v54)(v53, v48);
      v56 = *v94;
      v57 = v49;
      if ((*v94)(v55, 1, v48) == 1)
      {
        v58 = v119;
        dispatch thunk of Collection.endIndex.getter();
        if (v56(v55, 1, v48) != 1)
        {
          (*v83)(v55, v84);
        }
      }

      else
      {
        v58 = v119;
        (*v113)(v119, v55, v48);
      }

      v59 = v121;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v60 = *v92;
      v61 = v101;
      (*v92)(v101, v59, v48);
      v62 = TupleTypeMetadata2;
      v60(&v61[*(TupleTypeMetadata2 + 48)], v58, v48);
      v63 = v102;
      (*v91)(v102, v61, v62);
      v64 = *(v62 + 48);
      v65 = v57;
      v66 = *v113;
      v67 = v99;
      (*v113)(v99, v63, v48);
      v68 = v114;
      (v114)(&v63[v64], v48);
      (*v90)(v63, v61, v62);
      v69 = *(v62 + 48);
      v70 = v100;
      v66(&v67[*(v100 + 36)], &v63[v69], v48);
      v68(v63, v48);
      v71 = v97;
      dispatch thunk of Collection.subscript.getter();
      (*v89)(v67, v70);
      v72 = v120;
      v73 = *(v120 + 64);
      v74 = v98;
      v75 = swift_getAssociatedConformanceWitness();
      v49 = v65;
      v76 = v104;
      v73(v71, v74, v75, v117, v72);
      v77 = v105;
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v78 = v76;
      v79 = v121;
      v51 = v116;
      v48 = v112;
      (*v87)(v78, v77);
      v80 = v119;
      (*v86)(v71, v74);
      v68(v80, v48);
      v68(v79, v48);
      v50 = v115;
      v81 = v95 >= v115;
      result = v93;
      if (v93 > 0)
      {
        v81 = v115 >= v95;
      }

      if (v81)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t ParallelSum.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v84 = a5;
  v120 = a4;
  v10 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v114 = *(TupleTypeMetadata2 - 8);
  v12 = *(v114 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2, v13);
  v105 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v104 = &v83 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = type metadata accessor for Range();
  v113 = *(v103 - 8);
  v18 = *(v113 + 8);
  MEMORY[0x28223BE20](v103, v19);
  v102 = &v83 - v20;
  v101 = swift_getAssociatedTypeWitness();
  v87 = *(v101 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x28223BE20](v101, v22);
  v100 = &v83 - v23;
  v86 = type metadata accessor for Optional();
  v92 = *(v86 - 8);
  v24 = *(v92 + 64);
  v26 = MEMORY[0x28223BE20](v86, v25);
  v110 = &v83 - v27;
  v123 = AssociatedTypeWitness;
  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v26, v30);
  v119 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v109 = &v83 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v121 = &v83 - v37;
  v39 = *(a2 + 16);
  v38 = *(a2 + 24);
  v40 = swift_getAssociatedTypeWitness();
  v41 = swift_getAssociatedConformanceWitness();
  v99 = v40;
  v98 = v41;
  Polynomial.init()(v40, v41, &v125);
  v42 = a1;
  v43 = a3;
  v44 = v38;
  v45 = v10;
  v46 = dispatch thunk of Collection.count.getter();
  v47 = *(v44 + 24);
  v118 = *(a2 + 40);
  v107 = v47;
  v108 = v44 + 24;
  result = (v47)(v39, v44);
  if (result)
  {
    v49 = v46 >= 0;
    v97 = v46;
    if (result > 0)
    {
      v49 = v46 < 1;
    }

    v117 = v6;
    if (v49)
    {
LABEL_16:
      *v84 = v125;
      return result;
    }

    v50 = v43;
    v51 = v44;
    v52 = v42;
    v53 = v45;
    v54 = v39;
    v55 = 0;
    v56 = (v28 + 8);
    v96 = (v28 + 48);
    v112 = (v28 + 32);
    v85 = (v92 + 8);
    v92 = v28 + 16;
    v91 = (v114 + 16);
    v90 = (v114 + 32);
    v89 = (v113 + 8);
    v88 = v44 + 72;
    v87 += 8;
    v95 = v44;
    v94 = v39;
    v93 = result;
    v122 = v53;
    v115 = v52;
    v116 = v50;
    while (1)
    {
      v57 = v55 + result;
      if (__OFADD__(v55, result))
      {
        v57 = ((v55 + result) >> 63) ^ 0x8000000000000000;
      }

      v114 = v57;
      v58 = v109;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v59 = *v56;
      v60 = v123;
      (*v56)(v58, v123);
      v107(v54, v51);
      dispatch thunk of Collection.endIndex.getter();
      v61 = v110;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:limitedBy:)();
      v113 = v59;
      v59(v58, v60);
      v62 = *v96;
      if ((*v96)(v61, 1, v60) == 1)
      {
        v63 = v119;
        dispatch thunk of Collection.endIndex.getter();
        if (v62(v61, 1, v123) != 1)
        {
          (*v85)(v61, v86);
        }
      }

      else
      {
        v63 = v119;
        (*v112)(v119, v61, v123);
      }

      v64 = v121;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v65 = *v92;
      v66 = v56;
      v67 = v104;
      v68 = v123;
      (*v92)(v104, v64, v123);
      v69 = TupleTypeMetadata2;
      v65(&v67[*(TupleTypeMetadata2 + 48)], v63, v68);
      v70 = v105;
      (*v91)(v105, v67, v69);
      v71 = *(v69 + 48);
      v72 = *v112;
      v73 = v102;
      (*v112)(v102, v70, v68);
      v74 = v113;
      v113(&v70[v71], v68);
      (*v90)(v70, v67, v69);
      v75 = v103;
      v72(&v73[*(v103 + 36)], &v70[*(v69 + 48)], v68);
      v74(v70, v68);
      v76 = v100;
      dispatch thunk of Collection.subscript.getter();
      (*v89)(v73, v75);
      v51 = v95;
      v77 = *(v95 + 72);
      v78 = v101;
      v79 = swift_getAssociatedConformanceWitness();
      v54 = v94;
      v77(&v124, v76, v78, v79, v94, v51);
      static Polynomial.+= infix(_:_:)(&v125, &v124, v99, v98);

      v80 = v123;
      v81 = v119;
      (*v87)(v76, v78);
      v74(v81, v80);
      v56 = v66;
      v74(v121, v80);
      v55 = v114;
      v82 = v97 >= v114;
      result = v93;
      if (v93 > 0)
      {
        v82 = v114 >= v97;
      }

      if (v82)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ParallelSum.chunkEvaluateSum(_:for:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a2;
  v10 = v9;
  v67 = a6;
  v68 = a7;
  v70 = a5;
  v56 = a3;
  v57 = a4;
  v14 = *(a8 + 16);
  v15 = *(a8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness, v19);
  v62 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v55 - v23;
  v61 = *v70;
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = a9;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v60 = v25;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v26 = specialized Array.init(repeating:count:)(v24, *v10, AssociatedTypeWitness);
  v27 = v24;
  v28 = v56;
  v65 = *(v17 + 8);
  v66 = v17 + 8;
  v65(v27, AssociatedTypeWitness);
  v29 = v57;
  v75 = v26;
  v30 = ArraySlice.startIndex.getter();
  v70 = a1;
  result = ArraySlice.endIndex.getter();
  v63 = a8;
  v64 = v10;
  v32 = *(v10 + *(a8 + 44));
  if (v32)
  {
    v33 = result >= v30;
    if (v32 > 0)
    {
      v33 = v30 >= result;
    }

    if (v33)
    {
    }

    v58 = v32;
    v59 = result;
    while (1)
    {
      v34 = __OFADD__(v30, v32) ? ((v30 + v32) >> 63) ^ 0x8000000000000000 : v30 + v32;
      if (__OFADD__(v30, v32))
      {
        break;
      }

      result = ArraySlice.endIndex.getter();
      if (result >= v30 + v32)
      {
        v35 = v30 + v32;
      }

      else
      {
        v35 = result;
      }

      if (v35 < v30)
      {
        goto LABEL_25;
      }

      specialized ArraySlice.subscript.getter(v30, v35);
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = swift_unknownObjectRetain();
      v43 = v37;
      v44 = v72;
      v67(v42, v43, v39, v41, &v75);
      if (v44)
      {
        swift_unknownObjectRelease();

        return (v65)(v69, AssociatedTypeWitness);
      }

      v45 = v28;
      v46 = v29;
      swift_unknownObjectRelease();
      v73 = v61;
      v74 = v75;
      v47 = type metadata accessor for Array();
      v72 = 0;
      v48 = v47;

      v49 = v63;
      WitnessTable = swift_getWitnessTable();
      v51 = swift_getWitnessTable();
      v52 = v62;
      v53 = v72;
      Gadget.evaluate<A>(at:for:)(&v74, &v73, v49, v48, WitnessTable, v51, v62);
      if (v53)
      {
        swift_bridgeObjectRelease_n();
        return (v65)(v69, AssociatedTypeWitness);
      }

      v72 = 0;

      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v65(v52, AssociatedTypeWitness);
      v32 = v58;
      result = v59;
      v54 = v59 >= v34;
      if (v58 > 0)
      {
        v54 = v34 >= v59;
      }

      v30 = v34;
      v29 = v46;
      v28 = v45;
      if (v54)
      {
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized ArraySlice.subscript.getter(Swift::Int a1, Swift::Int a2)
{
  ArraySlice._checkIndex(_:)(a1);
  ArraySlice._checkIndex(_:)(a2);
  if (a2 < 0)
  {
    __break(1u);
  }
}

uint64_t associated type witness table accessor for Gadget.F : FieldElement in ParallelSum<A>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t type metadata completion function for ParallelSum(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParallelSum(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for ParallelSum(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, ((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

uint64_t static JointRandomness.jointRandSeed(parts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  result = (*(v8 + 8))(AssociatedTypeWitness, v8);
  if (result < 0)
  {
    goto LABEL_31;
  }

  v29 = v8;
  if (result)
  {
    v10 = result;
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v11 + 16) = v10;
    bzero((v11 + 32), v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = swift_checkMetadataState();
  (*(a3 + 56))(&v30, a2, a3);
  v28 = (*(AssociatedConformanceWitness + 240))(&v30, v12, AssociatedConformanceWitness);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_26:
    v27 = static ExtendableOutputFunction.deriveSeed(seed:domainSeparationTag:binder:)(v11, v28, v15, AssociatedTypeWitness, v29);

    return v27;
  }

  v14 = (a1 + 32);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = *v14;
    v17 = *(*v14 + 16);
    v18 = *(v15 + 16);
    v19 = v18 + v17;
    v20 = __OFADD__(v18, v17);
    v21 = *v14;

    if (v20)
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v15 + 24) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v22, 1, v15);
      v15 = result;
      if (*(v16 + 16))
      {
LABEL_21:
        v23 = *(v15 + 16);
        if ((*(v15 + 24) >> 1) - v23 < v17)
        {
          goto LABEL_29;
        }

        memcpy((v15 + v23 + 32), (v16 + 32), v17);

        if (v17)
        {
          v24 = *(v15 + 16);
          v25 = __OFADD__(v24, v17);
          v26 = v24 + v17;
          if (v25)
          {
            goto LABEL_30;
          }

          *(v15 + 16) = v26;
        }

        goto LABEL_8;
      }
    }

    if (v17)
    {
      goto LABEL_28;
    }

LABEL_8:
    ++v14;
    if (!--v13)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t static JointRandomness.jointRandPartXOF(blind:aggregatorID:nonce:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_checkMetadataState();
  v12 = *(a5 + 48);

  v12(&v19, a4, a5);
  v13 = (*(AssociatedConformanceWitness + 240))(&v19, v11, AssociatedConformanceWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_270C44540;
  *(v14 + 32) = a2;
  v18 = v14;

  specialized Array.append<A>(contentsOf:)(v15);
  v16 = swift_getAssociatedConformanceWitness();
  return (*(v16 + 48))(a1, v13, v18, AssociatedTypeWitness, v16);
}

uint64_t static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = static JointRandomness.jointRandPartXOF(blind:aggregatorID:nonce:)(a5, a6, a7, a8, a9);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ArraySlice();
  v19 = *(swift_getAssociatedConformanceWitness() + 40);
  WitnessTable = swift_getWitnessTable();
  v12 = VDAFEncodable.encodedBytes.getter(v10, WitnessTable);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 16);
  v15 = swift_checkMetadataState();
  v14(v12, v15, AssociatedConformanceWitness);

  (*(AssociatedConformanceWitness + 24))(v15, AssociatedConformanceWitness);
  v16 = (*(AssociatedConformanceWitness + 8))(v15, AssociatedConformanceWitness);
  v17 = specialized Seed.init<A>(length:using:)(v16, v9, v15, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v17;
}

uint64_t static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = *(a6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedTypeWitness;
  if (v14 != (*(AssociatedConformanceWitness + 216))(AssociatedTypeWitness))
  {
    goto LABEL_21;
  }

  v42 = a2;
  v14 = MEMORY[0x277D84F90];
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5 & ~(a5 >> 63), 0, MEMORY[0x277D84F90]);
  v16 = result;
  a2 = *(result + 16);
  v17 = *(result + 24);
  AssociatedTypeWitness = (a2 + 1);
  if (a2 >= v17 >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v19 = a7;
    *(v16 + 16) = AssociatedTypeWitness;
    *(v16 + 8 * a2 + 32) = v14;
    v55 = a1;
    if (__OFSUB__(a5, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a5 - 1 < 0)
    {
      goto LABEL_24;
    }

    v53 = v16;

    if (a5 == 1)
    {
      break;
    }

    a2 = 0;
    v17 = a3 + 32;
    v52 = a8;
    v43 = a5 - 1;
    while (a2 != 255)
    {
      v17 = *(a4 + 16);
      if (a2 >= v17)
      {
        goto LABEL_19;
      }

      v49 = v9;
      v20 = *(a4 + 32 + 8 * a2);

      v50 = a2 + 1;
      a1 = v45;
      a7 = static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(v21, a2 + 1, v45, AssociatedConformanceWitness);

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v51 = MEMORY[0x2743B2830](v55, AssociatedTypeWitness);
      v14 = a8;
      swift_getAssociatedTypeWitness();
      a5 = swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v22 = static FieldElement.randomVector<A>(count:using:)(v51, a7, AssociatedTypeWitness);
      v9 = type metadata accessor for Array();

      swift_getWitnessTable();
      v23 = ArraySlice.init<A>(_:)();
      a8 = v52;
      v17 = *(a3 + 16);
      if (a2 >= v17)
      {
        goto LABEL_20;
      }

      v26 = v23;
      v27 = v24;
      v28 = v25;
      v29 = v16;
      v30 = *(a3 + 32 + 8 * a2);

      v31 = v29;
      a1 = v50;
      v32 = static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(v26, v27, v28, v31, v30, v50, a6, v19, v52);

      swift_unknownObjectRelease();
      v33 = v53;
      v35 = *(v53 + 2);
      v34 = *(v53 + 3);
      v14 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v53);
      }

      *(v33 + 2) = v14;
      v53 = v33;
      *&v33[8 * v35 + 32] = v32;
      AssociatedTypeWitness = &v55;
      Array<A>.elementwiseSubtract(_:)(v22, v9, a5);
      v9 = v49;
      if (v49)
      {

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();

      a2 = v50;
      a8 = v52;
      if (v43 == v50)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), AssociatedTypeWitness, 1, v16);
    v16 = result;
  }

LABEL_16:
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_bridgeObjectRetain_n();
  swift_getWitnessTable();
  v36 = ArraySlice.init<A>(_:)();
  v40 = static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(v36, v37, v38, v39, v42, 0, a6, v19, a8);
  result = swift_unknownObjectRelease();
  if (*(v53 + 2))
  {
    v41 = *(v53 + 4);
    *(v53 + 4) = v40;

    return v53;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a7;
    if (a7 <= 0xFF)
    {
      v11 = a1;

      v12 = static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(a2, a3, a4, a5, a6, v10, a8, a9, a10);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
LABEL_4:
  if (*(v11 + 16) <= v10)
  {
    __break(1u);
  }

  else
  {
    v20 = v11 + 8 * v10;
    v21 = *(v20 + 32);
    *(v20 + 32) = v12;

    return v11;
  }

  return result;
}

Swift::Double __swiftcall normalizationConstantUsingSimpleSummation(for:bound:)(Swift::Double a1, Swift::Int bound)
{
  if (bound < 1)
  {
    return 1.0;
  }

  v2 = a1 + a1;
  v3 = 0.0;
  if (bound == 1)
  {
    v6 = 1;
  }

  else
  {
    v5 = bound & 0x7FFFFFFFFFFFFFFELL;
    v6 = bound & 1;
    v8 = bound;
    v9 = bound & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v10 = exp(-(v8 * v8) / v2);
      v3 = v3 + v10 + exp(-((v8 - 1) * (v8 - 1)) / v2);
      v8 -= 2;
      v9 -= 2;
    }

    while (v9);
    if (v5 == bound)
    {
      return v3 + v3 + 1.0;
    }
  }

  v3 = v3 + exp(-(v6 * v6) / v2);
  return v3 + v3 + 1.0;
}

Swift::Double __swiftcall normalizationConstantUsingPoissonSummation(for:bound:)(Swift::Double a1, Swift::Int bound)
{
  if (bound >= 1)
  {
    v3 = a1 * -9.8696044 + a1 * -9.8696044;
    v4 = 0.0;
    if (bound == 1)
    {
      v7 = 1;
    }

    else
    {
      v6 = bound & 0x7FFFFFFFFFFFFFFELL;
      v7 = bound & 1;
      v9 = bound;
      v10 = bound & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v11 = exp(v3 * v9 * v9);
        v4 = v4 + v11 + exp(v3 * (v9 - 1) * (v9 - 1));
        v9 -= 2;
        v10 -= 2;
      }

      while (v10);
      if (v6 == bound)
      {
        goto LABEL_9;
      }
    }

    v4 = v4 + exp(v3 * v7 * v7);
LABEL_9:
    v5 = v4 + v4 + 1.0;
    return sqrt(a1 * 6.28318531) * v5;
  }

  v5 = 1.0;
  return sqrt(a1 * 6.28318531) * v5;
}

long double varianceUsingPoissonSummation(for:bound:)(uint64_t a1, double a2)
{
  if (a1 >= 1)
  {
    v4 = a2 * -9.8696044 + a2 * -9.8696044;
    v5 = 0.0;
    v6 = a1;
    do
    {
      v7 = v6 * v6;
      if (9.10721981e306 / v7 >= a2)
      {
        v5 = v5 + v7 * exp(v4 * v7);
      }

      --v6;
    }

    while (v6 + 1 > 1);
    v8 = a2 * 4.0;
    v9 = 1.0 / (a2 * 4.0 * 3.14159265 * 3.14159265);
    v10 = v9 * -9.8696044 + v9 * -9.8696044;
    v11 = 0.0;
    if (a1 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a1 & 1;
      v15 = a1;
      v16 = a1 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v17 = exp(v10 * v15 * v15);
        v11 = v11 + v17 + exp(v10 * (v15 - 1) * (v15 - 1));
        v15 -= 2;
        v16 -= 2;
      }

      while (v16);
      if ((a1 & 0x7FFFFFFFFFFFFFFELL) == a1)
      {
        goto LABEL_13;
      }
    }

    v11 = v11 + exp(v10 * v12 * v12);
LABEL_13:
    v13 = v11 + v11 + 1.0;
    v14 = v5 + v5;
    return (1.0 - v8 * (v14 / (v13 * sqrt(v9 * 6.28318531))) * 3.14159265 * 3.14159265) * a2;
  }

  v8 = a2 * 4.0;
  v13 = 1.0;
  v9 = 1.0 / (a2 * 4.0 * 3.14159265 * 3.14159265);
  v14 = 0.0;
  return (1.0 - v8 * (v14 / (v13 * sqrt(v9 * 6.28318531))) * 3.14159265 * 3.14159265) * a2;
}

uint64_t _sSLsE2leoiySbx_xtFZ4VDAF8FractionV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 | a3;
  if (!(a4 | a3))
  {
    return v4 ^ 1u;
  }

  v4 = a2 | a1;
  if (!(a2 | a1))
  {
    return v4 ^ 1u;
  }

  if (a3)
  {
    if (a1)
    {
      if ((a4 * a1) >> 64 == (a4 * a1) >> 63 && (a2 * a3) >> 64 == (a2 * a3) >> 63)
      {
        return a4 * a1 >= a2 * a3;
      }

      else
      {
        return a4 / a3 >= a2 / a1;
      }
    }

    else
    {
      return a2 <= 0;
    }
  }

  else
  {
    v6 = a4 >> 63;
    v8 = a4 < 0 && a2 > 0;
    if (!a1)
    {
      LODWORD(v6) = v8;
    }

    return v6 ^ 1;
  }
}

uint64_t sampleBernoulliExp1(_:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_75:
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = a1;
    if (one-time initialization token for one == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = static Fraction.one;
  result = _sSLsE2leoiySbx_xtFZ4VDAF8FractionV_Tt1g5(v3, v2, static Fraction.one, *(&static Fraction.one + 1));
  if (result)
  {
    v7 = 1;
    while (1)
    {
      if (!v3)
      {
        goto LABEL_85;
      }

      if (!v2)
      {
LABEL_26:
        v12 = 1;
        v4 = 0;
        if (v5 != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      v8 = v3 * v7;
      if ((v3 * v7) >> 64 == (v3 * v7) >> 63)
      {
        v4 = v2;
        if (!v8)
        {
          goto LABEL_47;
        }

        result = specialized static Fraction.binaryGCD(_:_:)(v2, v3 * v7);
        if (!result)
        {
          goto LABEL_68;
        }

        if (v8 == 0x8000000000000000 && result == -1)
        {
          goto LABEL_72;
        }

        v4 = v2 / result;
        v12 = v8 / result;
        if (v12 < 0)
        {
          v13 = __OFSUB__(0, v12);
          v12 = -v12;
          if (v13)
          {
            goto LABEL_73;
          }

          v13 = __OFSUB__(0, v4);
          v4 = -v4;
          if (v13)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        v9 = v2 / v3 * (1.0 / v7);
        v10 = (*&v9 >> 52) & 0x7FFLL;
        v11 = *&v9 & 0xFFFFFFFFFFFFFLL;
        if (v10 == 2047)
        {
          if (v11)
          {
            v4 = 0;
            v12 = 0;
            if (v5 != 0)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

LABEL_23:
          if (v9 < 0.0)
          {
            goto LABEL_86;
          }

          v12 = 0;
          v4 = 1;
          if (v5 != 0)
          {
            goto LABEL_37;
          }

          goto LABEL_53;
        }

        if (!(v10 | v11))
        {
          goto LABEL_26;
        }

        v14 = fabs(v9);
        if (v14 > 9.22337204e18)
        {
          goto LABEL_23;
        }

        result = specialized static Fraction.sternBrocotSearch(_:precision:maxIterations:)(0x100000000, v14, 0.000001);
        v12 = result;
        v4 = v15;
        if (v9 < 0.0)
        {
          v4 = -v15;
          if (__OFSUB__(0, v15))
          {
            goto LABEL_78;
          }
        }

        if (result < 0)
        {
          v12 = -result;
          if (__OFSUB__(0, result))
          {
            goto LABEL_79;
          }

          v13 = __OFSUB__(0, v4);
          v4 = -v4;
          if (v13)
          {
            goto LABEL_80;
          }
        }
      }

      if (!v4)
      {
        v4 = 0;
        if (v5 != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      if (!v12)
      {
LABEL_47:
        if (v4 < 0)
        {
          goto LABEL_86;
        }

        v12 = 0;
        if (v5 != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      if (v4 < 0)
      {
        goto LABEL_67;
      }

      if (v5 != 0)
      {
LABEL_37:
        if (!(v4 | v12))
        {
          goto LABEL_85;
        }

        if (v5)
        {
          if (!v12)
          {
            goto LABEL_81;
          }

          if ((*(&v5 + 1) * v12) >> 64 == (*(&v5 + 1) * v12) >> 63 && (v4 * v5) >> 64 == (v4 * v5) >> 63)
          {
            if (*(&v5 + 1) * v12 < v4 * v5)
            {
              goto LABEL_70;
            }
          }

          else if (*(&v5 + 1) / v5 < v4 / v12)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (!v12)
          {
            goto LABEL_83;
          }

          if ((*(&v5 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_53:
      if (v12 < 0)
      {
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
        goto LABEL_75;
      }

      if (!v12)
      {
        goto LABEL_85;
      }

      v18 = 0;
      result = MEMORY[0x2743B35C0](&v18, 8);
      v16 = (v18 * v12) >> 64;
      if (v12 > v18 * v12)
      {
        v17 = -v12 % v12;
        if (v17 > v18 * v12)
        {
          do
          {
            v18 = 0;
            result = MEMORY[0x2743B35C0](&v18, 8);
          }

          while (v17 > v18 * v12);
          v16 = (v18 * v12) >> 64;
        }
      }

      if (v16 >= v4)
      {
        goto LABEL_63;
      }

      v13 = __OFADD__(v7++, 1);
      if (v13)
      {
        __break(1u);
LABEL_63:
        if (v7 >= 0)
        {
          return v7 & 1;
        }

        else
        {
          return -(v7 & 1);
        }
      }
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  if (!v4)
  {
    goto LABEL_85;
  }

  __break(1u);
LABEL_83:
  if ((*(&v5 + 1) & 0x8000000000000000) == 0 || !v4)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sampleBernoulliExp(_:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    v8 = result;
    for (i = a2; ; v2 = i)
    {
      if (one-time initialization token for one != -1)
      {
        swift_once();
      }

      v5 = *(&static Fraction.one + 1);
      v4 = static Fraction.one;
      if (!_sSLsE1goiySbx_xtFZ4VDAF8FractionV_Tt1g5(v3, v2, static Fraction.one, *(&static Fraction.one + 1)))
      {
        break;
      }

      result = sampleBernoulliExp1(_:)(v4, v5);
      if (!result)
      {
        return result;
      }

      v6 = -v5;
      if (__OFSUB__(0, v5))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v4 < 0)
      {
        v7 = __OFSUB__(0, v4);
        v4 = -v4;
        if (v7)
        {
          goto LABEL_19;
        }

        v7 = __OFSUB__(0, v6);
        v6 = v5;
        if (v7)
        {
          goto LABEL_20;
        }
      }

      specialized static Fraction.+= infix(_:_:)(&v8, v4, v6);
      v3 = v8;
    }

    return sampleBernoulliExp1(_:)(v3, v2);
  }

  return result;
}

BOOL _sSLsE1goiySbx_xtFZ4VDAF8FractionV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a4 | a3) || !(a2 | a1))
  {
    return 0;
  }

  if (a3)
  {
    if (a1)
    {
      if ((a4 * a1) >> 64 == (a4 * a1) >> 63 && (a2 * a3) >> 64 == (a2 * a3) >> 63)
      {
        return a4 * a1 < a2 * a3;
      }

      else
      {
        return a4 / a3 < a2 / a1;
      }
    }

    else
    {
      return a2 > 0;
    }
  }

  else
  {
    v6 = a4 < 0 && a2 > 0;
    if (a1)
    {
      return a4 >> 63;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sampleGeometricExpFast(_:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0x7FFFFFFFFFFFFFFFuLL / result;
  while (1)
  {
    if (a2)
    {
      if (!v3)
      {
        goto LABEL_42;
      }

      if (a2 < 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v3 == 1)
      {
        return 0;
      }

      if (!v3)
      {
        goto LABEL_43;
      }
    }

    if (v3 < 0)
    {
      break;
    }

    do
    {
      v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(v3);
      v6 = specialized Fraction.init(numerator:denominator:)(v5, v3);
    }

    while (sampleBernoulliExp(_:)(v6, v7) != 1);
    if (one-time initialization token for one == -1)
    {
      v8 = *(&static Fraction.one + 1);
      if ((*(&static Fraction.one + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      swift_once();
      v8 = *(&static Fraction.one + 1);
      if ((*(&static Fraction.one + 1) & 0x8000000000000000) != 0)
      {
LABEL_29:
        __break(1u);
        return 0;
      }
    }

    v9 = static Fraction.one;
    result = sampleBernoulliExp(_:)(static Fraction.one, v8);
    if (result)
    {
      v10 = 0;
      do
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        result = sampleBernoulliExp(_:)(v9, v8);
        ++v10;
      }

      while (result);
      if (v4 < v11)
      {
        continue;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 * v3;
    if ((v11 * v3) >> 64 != (v11 * v3) >> 63)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v5))
    {
      goto LABEL_37;
    }

    if ((0x7FFFFFFFFFFFFFFFLL - v5) >= v12)
    {
      v13 = __OFADD__(v12, v5);
      v14 = v12 + v5;
      if (v13)
      {
        goto LABEL_38;
      }

      if (!a2)
      {
        goto LABEL_39;
      }

      if (a2 == -1 && v14 == 0x8000000000000000)
      {
        goto LABEL_40;
      }

      result = v14 / a2;
      if (v14 / a2 <= 0x7FFFFFFF)
      {
        if (result >= 0xFFFFFFFF80000000)
        {
          return result;
        }

        goto LABEL_41;
      }
    }
  }

LABEL_34:
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
LABEL_42:
  if ((a2 & 0x8000000000000000) == 0)
  {
LABEL_43:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sampleDLaplace(scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    if (v2 >= 3)
    {
      goto LABEL_59;
    }

    __break(1u);
LABEL_57:
    if (v2 > 2 || (a2 & 0x8000000000000000) == 0)
    {
LABEL_59:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v3 = specialized Fraction.init(numerator:denominator:)(1, result);
  v5 = v4;
  do
  {
    result = specialized static Fraction.binaryGCD(_:_:)(1, 2);
    if (!result)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v2 = result + 1;
    if ((result + 1) >= 3)
    {
      a2 = 0;
    }

    else
    {
      a2 = result;
    }

    v8 = 2 / result;
    if (2 / result >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = -a2;
    }

    if (2 / result >= 0)
    {
      v10 = 2 / result;
    }

    else
    {
      v10 = -2 / result;
    }

    if (v9)
    {
      if (v8)
      {
        if (v9 < 0)
        {
          goto LABEL_48;
        }
      }

      else if (a2 < 0)
      {
        goto LABEL_49;
      }
    }

    if (one-time initialization token for one != -1)
    {
      result = swift_once();
    }

    a2 = *(&static Fraction.one + 1);
    if (!(v9 | v10) || static Fraction.one == 0)
    {
      if (!v8)
      {
        goto LABEL_59;
      }
    }

    else if (static Fraction.one)
    {
      if (!v8)
      {
        goto LABEL_55;
      }

      if ((*(&static Fraction.one + 1) * v10) >> 64 == (*(&static Fraction.one + 1) * v10) >> 63)
      {
        a2 = static Fraction.one * v9;
        if ((*(&static Fraction.one + 1) * v10) < static Fraction.one * v9)
        {
          goto LABEL_51;
        }
      }

      else if (*(&static Fraction.one + 1) / static Fraction.one < v9 / v10)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_57;
      }

      if ((*(&static Fraction.one + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }
    }

    v12 = 0;
    MEMORY[0x2743B35C0](&v12, 8);
    v2 = (v12 * v10) >> 64;
    if (v10 > v12 * v10)
    {
      v11 = -v10 % v10;
      if (v11 > v12 * v10)
      {
        do
        {
          v12 = 0;
          MEMORY[0x2743B35C0](&v12, 8);
        }

        while (v11 > v12 * v10);
        v2 = (v12 * v10) >> 64;
      }
    }

    v6 = sampleGeometricExpFast(_:)(v3, v5);
  }

  while (v2 < v9 && v6 == 0);
  if (v2 < v9)
  {
    a2 = 0xFFFFFFFFLL;
  }

  else
  {
    a2 = 1;
  }

  result = v6 * a2;
  if (result != result)
  {
    goto LABEL_54;
  }

  return result;
}

uint64_t DiscreteGaussian.sigmaSquaredInFraction.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t DiscreteGaussian.sigmaSquaredDivideScale.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DiscreteGaussian.init(sigma:)(VDAF::DiscreteGaussian *__return_ptr retstr, Swift::Double sigma)
{
  v15 = 1;
  v4 = (sigma < 0.0 || ((*&sigma & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&sigma - 1) > 0xFFFFFFFFFFFFELL;
  if (v4 || 1.79769313e308 / sigma <= sigma)
  {
    goto LABEL_17;
  }

  v5 = sigma * 40.0;
  if (COERCE__INT64(fabs(sigma * 40.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (1.79769313e308 / v5 <= v5)
  {
LABEL_17:
    lazy protocol witness table accessor for type DiscreteGaussianError and conformance DiscreteGaussianError();
    swift_allocError();
    *v13 = sigma;
    swift_willThrow();
    return;
  }

  v7 = specialized Fraction.init(_:)(sigma * sigma);
  if (sigma <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (sigma < 9.22337204e18)
  {
    if (!__OFADD__(sigma, 1))
    {
      v9 = v7;
      v10 = v8;
      v14.denominator = v7;
      v14.numerator = v8;
      specialized static Fraction./= infix(_:_:)(&v14, sigma + 1);
      v11 = v14;
      v12 = v15;
      retstr->bound = v5;
      retstr->dLapLaceScale = sigma + 1;
      retstr->sigma = sigma;
      retstr->sigmaSquared = sigma * sigma;
      retstr->sigmaSquaredInFraction.denominator = v9;
      retstr->sigmaSquaredInFraction.numerator = v10;
      retstr->sigmaSquaredDivideScale = v11;
      retstr->$__lazy_storage_$_variance.value = 0.0;
      retstr->$__lazy_storage_$_variance.is_nil = v12;
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type DiscreteGaussianError and conformance DiscreteGaussianError()
{
  result = lazy protocol witness table cache variable for type DiscreteGaussianError and conformance DiscreteGaussianError;
  if (!lazy protocol witness table cache variable for type DiscreteGaussianError and conformance DiscreteGaussianError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DiscreteGaussianError and conformance DiscreteGaussianError);
  }

  return result;
}

double DiscreteGaussian.variance.getter()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  closure #1 in DiscreteGaussian.variance.getter(v0);
  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

void closure #1 in DiscreteGaussian.variance.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *a1;
  if (v1 >= 1.0)
  {
    v18 = *a1;

    varianceUsingPoissonSummation(for:bound:)(v18, v1);
  }

  else if (v2 >= 1)
  {
    v3 = v1 + v1;
    v4 = 0.0;
    v5 = *a1;
    v27 = v1 + v1;
    if (v2 < 4)
    {
      goto LABEL_7;
    }

    v5 = *a1 & 3;
    v6 = vaddq_s64(vdupq_n_s64(v2), xmmword_270C47750);
    v25 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
    v26 = vdupq_lane_s64(*&v3, 0);
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
    v7 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v34 = v6;
      v8 = vcvtq_f64_u64(v6);
      v9 = vcvtq_f64_u64(vaddq_s64(v6, v25));
      v31 = vmulq_f64(v8, v8);
      v32 = vmulq_f64(v9, v9);
      __x = vdivq_f64(vnegq_f64(v31), v26);
      v33 = vdivq_f64(vnegq_f64(v32), v26);
      v29 = exp(__x.f64[1]);
      v10.f64[0] = exp(__x.f64[0]);
      v10.f64[1] = v29;
      v30 = v10;
      __x.f64[0] = exp(v33.f64[1]);
      v11.f64[0] = exp(v33.f64[0]);
      v11.f64[1] = __x.f64[0];
      v12 = vmulq_f64(v31, v30);
      v13 = vmulq_f64(v32, v11);
      v4 = v4 + v12.f64[0] + v12.f64[1] + v13.f64[0] + v13.f64[1];
      v6 = vaddq_s64(v34, v24);
      v7 -= 4;
    }

    while (v7);
    v3 = v27;
    if (v2 != (v2 & 0x7FFFFFFFFFFFFFFCLL))
    {
LABEL_7:
      exp(-(v5 * v5) / v3);
      v14 = v5 - 2;
      if (v5 >= 2)
      {
        v15 = v5 - 1;
        exp(-(v15 * v15) / v27);
        if (v15 >= 2)
        {
          exp(-(v14 * v14) / v27);
        }
      }

      v3 = v27;
    }

    v16 = 0.0;
    if (v2 == 1)
    {
      v17 = 1;
LABEL_20:
      exp(-(v17 * v17) / v3);
      return;
    }

    v17 = v2 & 1;
    v19 = v2;
    v20 = v2 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v21 = -((v19 - 1) * (v19 - 1)) / v3;
      v22 = exp(-(v19 * v19) / v3);
      v23 = exp(v21);
      v3 = v27;
      v16 = v16 + v22 + v23;
      v19 -= 2;
      v20 -= 2;
    }

    while (v20);
    if (v2 != (v2 & 0x7FFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

void *(*DiscreteGaussian.variance.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = DiscreteGaussian.variance.getter();
  return DiscreteGaussian.variance.modify;
}

void *DiscreteGaussian.variance.modify(void *result)
{
  v1 = result[1];
  *(v1 + 64) = *result;
  *(v1 + 72) = 0;
  return result;
}

Swift::Int32 __swiftcall DiscreteGaussian.sample()()
{
  v2 = v1[7];
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

  v4 = v1[1];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = __OFSUB__(0, v7);
  v20 = v8;
  v9 = __OFSUB__(0, v3);
  v19 = v9;
  while (1)
  {
    result = sampleDLaplace(scale:)(v4, v9);
    v15 = result;
    if (result >= 0)
    {
      v16 = result;
    }

    else
    {
      v16 = -result;
    }

    v21 = 1;
    v22 = v16;
    v17 = v3;
    v18 = v7;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    if (v20)
    {
      break;
    }

    v17 = -v3;
    v18 = -v7;
    if (v19)
    {
      __break(1u);
      return v15;
    }

LABEL_9:
    specialized static Fraction.+= infix(_:_:)(&v21, v18, v17);
    v10 = specialized static Fraction.* infix(_:_:)(v21, v22, v21, v22);
    v12 = v11;
    v21 = v5;
    v22 = v6;
    specialized static Fraction.*= infix(_:_:)(&v21, 2);
    v13 = v21;
    v14 = v22;
    v21 = v10;
    v22 = v12;
    specialized static Fraction./= infix(_:_:)(&v21, v13, v14);
    if (sampleBernoulliExp(_:)(v21, v22) == 1)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DiscreteGaussian(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DiscreteGaussian(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t Polynomial.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = getContiguousArrayStorageType<A>(for:)(a1, a1);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(*(a1 - 8) + 72);
  v10 = *(*(a1 - 8) + 80);
  swift_allocObject();
  v11 = static Array._adoptStorage(_:count:)();
  v12 = *(a2 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  _finalizeUninitializedArray<A>(_:)();
  result = Polynomial.init(coefficients:)(v11, &v14);
  *a3 = v14;
  return result;
}

uint64_t convolveDirectly<A, B, C, D>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v135 = a6;
  v159 = a3;
  v149 = a2;
  v141 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v152 = a12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109[1] = AssociatedTypeWitness;
  v129 = swift_getAssociatedTypeWitness();
  v155 = *(v129 - 8);
  v17 = *(v155 + 64);
  v19 = MEMORY[0x28223BE20](v129, v18);
  v128 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v127 = v109 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v126 = v109 - v25;
  v130 = a9;
  v148 = *(*(a9 + 8) + 8);
  v150 = a5;
  v125 = swift_getAssociatedTypeWitness();
  v154 = *(v125 - 8);
  v26 = *(v154 + 8);
  v28 = MEMORY[0x28223BE20](v125, v27);
  v124 = v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v123 = v109 - v31;
  v131 = a8;
  v32 = *(*(a8 + 8) + 8);
  v122 = swift_getAssociatedTypeWitness();
  v153 = *(v122 - 8);
  v33 = *(v153 + 64);
  v35 = MEMORY[0x28223BE20](v122, v34);
  v121 = v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v120 = v109 - v39;
  v140 = *(a7 - 8);
  v40 = *(v140 + 64);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v119 = v109 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v118 = v109 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v157 = v109 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v52 = v109 - v51;
  v151 = a10;
  v53 = *(a10 + 8);
  v54 = swift_getAssociatedTypeWitness();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v58 = MEMORY[0x28223BE20](v54, v57);
  v60 = v109 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v61);
  v134 = a4;
  v133 = v32;
  v63 = v109 - v62;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    result = dispatch thunk of Collection.isEmpty.getter();
    if ((result & 1) == 0)
    {
      v158 = v63;
      v65 = dispatch thunk of Collection.count.getter();
      result = dispatch thunk of Collection.count.getter();
      v66 = v65 + result;
      if (__OFADD__(v65, result))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v67 = v66 - 1;
      if (__OFSUB__(v66, 1))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      result = dispatch thunk of Collection.count.getter();
      if (result < v67)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v67 < 0)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v139 = v55;
      v146 = a11;
      v147 = v54;
      v145 = v52;
      v160 = a7;
      if (v67)
      {
        v68 = 0;
        v156 = (v139 + 8);
        do
        {
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          (*v156)(v60, v147);
          v69 = *(v152 + 8);
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          dispatch thunk of MutableCollection.subscript.setter();
          ++v68;
        }

        while (v67 != v68);
      }

      v116 = v60;
      v117 = v53;
      result = dispatch thunk of Collection.count.getter();
      if (result < 0)
      {
        goto LABEL_27;
      }

      v70 = v147;
      v71 = v116;
      if (result)
      {
        v72 = 0;
        v144 = (v152 + 88);
        v143 = (AssociatedConformanceWitness + 56);
        v142 = (v152 + 96);
        v156 = (v139 + 8);
        v115 = (v153 + 8);
        v114 = (v140 + 16);
        v113 = (v154 + 8);
        v112 = (v155 + 8);
        v111 = (v140 + 8);
        v110 = result;
        while (1)
        {
          result = dispatch thunk of Collection.count.getter();
          if (result < 0)
          {
            break;
          }

          v73 = result;
          v153 = v72;
          if (result)
          {
            v139 = swift_checkMetadataState();
            v74 = 0;
            v138 = *v144;
            v137 = *v143;
            v136 = *v142;
            v140 = v73;
            while (1)
            {
              result = dispatch thunk of Collection.startIndex.getter();
              if (__OFADD__(v153, v74))
              {
                break;
              }

              v155 = v74 + 1;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v154 = *v156;
              v154(v71, v70);
              v75 = v121;
              dispatch thunk of Collection.startIndex.getter();
              v76 = v120;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v77 = *v115;
              v78 = v75;
              v79 = v122;
              (*v115)(v78, v122);
              v80 = dispatch thunk of Collection.subscript.read();
              v81 = *v114;
              (*v114)(v157);
              v80(v161, 0);
              v77(v76, v79);
              v82 = v124;
              dispatch thunk of Collection.startIndex.getter();
              v83 = v123;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v84 = *v113;
              v85 = v82;
              v86 = v125;
              (*v113)(v85, v125);
              v87 = dispatch thunk of Collection.subscript.read();
              v88 = v118;
              v81(v118);
              v87(v161, 0);
              v89 = v83;
              v90 = v145;
              v91 = v86;
              v70 = v147;
              v84(v89, v91);
              v92 = v119;
              v93 = v157;
              (v81)(v119, v157, v160);
              v94 = v92;
              v95 = v152;
              FieldElement.init(other:)(v94, v160, v152);
              v96 = v127;
              v97 = v138;
              v138(v160, v95);
              v98 = v128;
              v97(v160, v95);
              v99 = v126;
              v137(v96, v98);
              v100 = *v112;
              v101 = v98;
              v102 = v129;
              (*v112)(v101, v129);
              v100(v96, v102);
              v136(v99, v160, v95);
              v103 = *v111;
              (*v111)(v88, v160);
              v103(v93, v160);
              v104 = v160;
              v105 = dispatch thunk of MutableCollection.subscript.modify();
              v106 = *(v95 + 8);
              dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
              v71 = v116;
              v103(v90, v104);
              v107 = v140;
              v108 = v158;
              v105(v161, 0);
              result = (v154)(v108, v70);
              v74 = v155;
              if (v107 == v155)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
            break;
          }

LABEL_13:
          v72 = v153 + 1;
          if (v153 + 1 == v110)
          {
            return result;
          }
        }

        __break(1u);
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t convolveUsingDFT<A, B, C, D>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), void (**a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v103 = a5;
  v94 = a3;
  v102 = a2;
  v17 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v98 = AssociatedTypeWitness;
  v20 = a6;
  v109 = swift_getAssociatedTypeWitness();
  v95 = *(v109 - 8);
  v21 = *(v95 + 64);
  v23 = MEMORY[0x28223BE20](v109, v22);
  v108 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v92 = &v88 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v91 = &v88 - v30;
  v93 = a7;
  v110 = *(a7 - 8);
  v31 = *(v110 + 64);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v90 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v88 - v36;
  v111 = a10;
  v114 = *(a10 + 8);
  v112 = swift_getAssociatedTypeWitness();
  v105 = *(v112 - 8);
  v38 = *(v105 + 8);
  v40 = MEMORY[0x28223BE20](v112, v39);
  v42 = &v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v43);
  v97 = (&v88 - v44);
  v99 = a8;
  v100 = a1;
  v45 = *(*(a8 + 8) + 8);
  v101 = a4;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    return result;
  }

  v47 = a9;
  v48 = *(*(a9 + 8) + 8);
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    return result;
  }

  v49 = dispatch thunk of Collection.count.getter();
  result = dispatch thunk of Collection.count.getter();
  v50 = v49 + result;
  if (__OFADD__(v49, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = v50 - 1;
  if (__OFSUB__(v50, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v51 = specialized FixedWidthInteger.nextPowerOfTwo.getter(result);
  result = dispatch thunk of Collection.count.getter();
  if (result < v51)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v51 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v106 = AssociatedConformanceWitness;
  v89 = v20;
  v107 = a11;
  v115 = a12;
  if (v51)
  {
    v96 = a9;
    v52 = 0;
    v104 = (v105 + 8);
    v105 = v37;
    do
    {
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      (*v104)(v42, v112);
      v53 = v115[1];
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      dispatch thunk of MutableCollection.subscript.setter();
      ++v52;
    }

    while (v51 != v52);
    v17 = v115;
    v47 = v96;
    v37 = v105;
  }

  else
  {
    v54 = a12[1];
  }

  v55 = v93;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v56 = specialized Array.init(repeating:count:)(v37, v51, v55);
  v57 = (v110 + 8);
  v58 = *(v110 + 8);
  (v58)(v37, v55);
  v118 = v56;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v59 = specialized Array.init(repeating:count:)(v37, v51, v55);
  v104 = v58;
  v105 = v57;
  (v58)(v37, v55);
  v117 = v59;
  v60 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  discreteFourierTransform<A, B, C>(input:size:output:)(v100, v51, &v118, v101, v60, v55, v99, WitnessTable, v62, v17);
  v88 = v62;
  v114 = v60;
  discreteFourierTransform<A, B, C>(input:size:output:)(v102, v51, &v117, v103, v60, v55, v47, WitnessTable, v62, v17);
  v63 = v51;
  v64 = v92;
  v65 = v91;
  v66 = v90;
  if (v63)
  {
    v67 = swift_checkMetadataState();
    v68 = 0;
    v69 = v115[12];
    v102 = v115 + 12;
    v103 = v67;
    v99 = v115[11];
    v100 = v115 + 11;
    v101 = v69;
    v97 = *(v106 + 56);
    v98 = v106 + 56;
    v96 = v117;
    v95 += 8;
    v113 = v63;
    v70 = v99;
    do
    {
      v112 = v68 + 1;
      Array.subscript.getter();
      Array._makeMutableAndUnique()();
      v71 = v118;
      Array._checkSubscript_mutating(_:)(v68);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v73 = v71 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v73 = v71;
      }

      v74 = v73 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v68;
      v75 = v115;
      v70(v55, v115);
      v76 = v65;
      v77 = v64;
      v78 = v108;
      v70(v55, v75);
      v97(v77, v78);
      v79 = *v95;
      v80 = v78;
      v81 = v109;
      (*v95)(v80, v109);
      v82 = v77;
      v83 = v81;
      v64 = v77;
      v65 = v76;
      v79(v82, v83);
      (v101)(v76, v55, v75);
      (v104)(v66, v55);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v114, v84, v85, v86, v87);
      v68 = v112;
      v63 = v113;
    }

    while (v113 != v112);
  }

  v116 = v118;
  inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(&v116, v63, v94, v114, v89, v55, v88, v111, v107, v115);
}