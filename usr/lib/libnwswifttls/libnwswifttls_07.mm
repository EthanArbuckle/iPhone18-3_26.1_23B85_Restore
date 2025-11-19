BOOL specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v26 = v2;
  v27 = v3;
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a1 + 3), *(a2 + 1), *(a2 + 2), *(a2 + 3)) & 1) == 0)
  {
    return 0;
  }

  v24 = *(a1 + 2);
  v6 = *(a1 + 6);
  v25 = v6;
  v22 = *(a2 + 2);
  v7 = *(a2 + 6);
  v23 = v7;
  v8 = v24;
  v9 = v22;
  if (*(&v24 + 1) >> 60 == 15)
  {
    if (*(&v22 + 1) >> 60 == 15)
    {
      outlined init with copy of ByteBuffer?(&v24, &v20);
      outlined init with copy of ByteBuffer?(&v22, &v20);
      outlined consume of ByteBuffer?(v8, *(&v8 + 1));
      goto LABEL_10;
    }

LABEL_8:
    outlined init with copy of ByteBuffer?(&v24, &v20);
    outlined init with copy of ByteBuffer?(&v22, &v20);
    outlined consume of ByteBuffer?(v8, *(&v8 + 1));
    outlined consume of ByteBuffer?(v9, *(&v9 + 1));
    return 0;
  }

  if (*(&v22 + 1) >> 60 == 15)
  {
    goto LABEL_8;
  }

  outlined init with copy of ByteBuffer?(&v24, &v20);
  outlined init with copy of ByteBuffer?(&v22, &v20);
  v11 = specialized static ByteBuffer.== infix(_:_:)(v8, *(&v8 + 1), v6, v9, *(&v9 + 1), v7);
  outlined consume of ByteBuffer?(v9, *(&v9 + 1));
  outlined consume of ByteBuffer?(v8, *(&v8 + 1));
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v20 = *(a1 + 28);
  v12 = *(a1 + 9);
  v21 = v12;
  v18 = *(a2 + 28);
  v13 = *(a2 + 9);
  v19 = v13;
  v14 = v20;
  v15 = v18;
  if (*(&v20 + 1) >> 60 != 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      goto LABEL_14;
    }

    outlined init with copy of ByteBuffer?(&v20, v17);
    outlined init with copy of ByteBuffer?(&v18, v17);
    v16 = specialized static ByteBuffer.== infix(_:_:)(v14, *(&v14 + 1), v12, v15, *(&v15 + 1), v13);
    outlined consume of ByteBuffer?(v15, *(&v15 + 1));
    outlined consume of ByteBuffer?(v14, *(&v14 + 1));
    return (v16 & 1) != 0;
  }

  if (*(&v18 + 1) >> 60 != 15)
  {
LABEL_14:
    outlined init with copy of ByteBuffer?(&v20, v17);
    outlined init with copy of ByteBuffer?(&v18, v17);
    outlined consume of ByteBuffer?(v14, *(&v14 + 1));
    outlined consume of ByteBuffer?(v15, *(&v15 + 1));
    return 0;
  }

  outlined init with copy of ByteBuffer?(&v20, v17);
  outlined init with copy of ByteBuffer?(&v18, v17);
  outlined consume of ByteBuffer?(v14, *(&v14 + 1));
  return 1;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v13 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    for (i = (a2 + 48); ; i += 2)
    {
      v9 = *(i - 1);
      LOWORD(v10) = *(i - 8);
      v11 = v9;
      v12 = *i;
      outlined copy of Data._Representation(v9, v12);
      closure #1 in closure #1 in ByteBuffer.writePAKEClientHelloNonRFC(_:)(&v13, &v10, a3, a4);
      result = outlined consume of Data._Representation(v11, v12);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t outlined destroy of ByteBuffer?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare;
  if (!lazy protocol witness table cache variable for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE.PAKEShare and conformance Extension.PAKE.PAKEShare);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello;
  if (!lazy protocol witness table cache variable for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE.PAKEClientHello and conformance Extension.PAKE.PAKEClientHello);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello;
  if (!lazy protocol witness table cache variable for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE.PAKEServerHello and conformance Extension.PAKE.PAKEServerHello);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PAKE and conformance Extension.PAKE()
{
  result = lazy protocol witness table cache variable for type Extension.PAKE and conformance Extension.PAKE;
  if (!lazy protocol witness table cache variable for type Extension.PAKE and conformance Extension.PAKE)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PAKE and conformance Extension.PAKE);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.PAKE(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for Extension.PAKE(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.PAKE.PAKEClientHello(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Extension.PAKE.PAKEClientHello(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.PAKE.PAKEServerHello(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Extension.PAKE.PAKEServerHello(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t ServerHandshakeState.IdleState.init(configuration:epsks:externalPSKSelectionCallback:pakeRecords:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v14 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v15 = v14[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(a7 + v14[6]) = a2;
  v16 = (a7 + v14[7]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + v14[8]);
  *v17 = a5;
  v17[1] = a6;
  LOBYTE(a6) = *(a1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 36));
  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(a7 + v14[9]) = a6;
  return result;
}

uint64_t ServerHandshakeState.description.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v0, v4, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1701602409;
  v7 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v7 = 0x726F467964616572;
  }

  v8 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v8 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v7 = v8;
  }

  v9 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v9 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v6 = v9;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v4, type metadata accessor for ServerHandshakeState);
  return v10;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19receivedClientHello_5bytesAA07PartialD6ResultVSgAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a3;
  v55 = a4;
  v52 = a1;
  v53 = a2;
  v50 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v47 - v10;
  v49 = type metadata accessor for SymmetricKey();
  v51 = *(v49 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v6, v24, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v24, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  outlined init with take of ServerHandshakeState.IdleState(v24, v20, type metadata accessor for ServerHandshakeState.IdleState);
  v25 = &v20[*(v17 + 28)];
  v26 = *v25;
  v27 = v25[1];
  v28 = v20[*(v17 + 36)];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(*v25, v27);
  v29 = v58;
  _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZ(v20, v52, v53, v54, v55, v26, v27, v28, v16, v56);
  if (v29)
  {
    v30 = v56[0];
    v31 = v56[1];
    v32 = v57;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v20, type metadata accessor for ServerHandshakeState.IdleState);
    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v26);
    *a5 = v30;
    *(a5 + 8) = v31;
    *(a5 + 16) = v32;
    return result;
  }

  v58 = 0;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v6, type metadata accessor for ServerHandshakeState);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v26);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v16, v6, type metadata accessor for ServerHandshakeState.ClientHelloState);
  swift_storeEnumTagMultiPayload();
  if (v16[*(v13 + 80)] == 1)
  {
    v34 = &v16[*(v13 + 20)];
    v35 = v48;
    specialized ServerSessionKeyManager.clientEarlyTrafficSecret.getter(v48);
    v36 = v51;
    v37 = v49;
    result = (*(v51 + 48))(v35, 1, v49);
    if (result != 1)
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v16, type metadata accessor for ServerHandshakeState.ClientHelloState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v20, type metadata accessor for ServerHandshakeState.IdleState);
      v38 = *(v36 + 32);
      v51 = v36 + 32;
      v39 = v47;
      v38(v47, v35, v37);
      v40 = type metadata accessor for PartialHandshakeResult(0);
      v41 = v40[5];
      v42 = type metadata accessor for EncryptionLevel(0);
      v43 = *(*(v42 - 8) + 56);
      v44 = v50;
      v43(v50 + v41, 1, 1, v42);
      v45 = v40[6];
      v38((v44 + v45), v39, v37);
      swift_storeEnumTagMultiPayload();
      v43(v44 + v45, 0, 1, v42);
      *v44 = xmmword_1B26C5EF0;
      *(v44 + 16) = 0;
      *(v44 + v40[7]) = xmmword_1B26C5EF0;
      return (*(*(v40 - 1) + 56))(v44, 0, 1, v40);
    }

    goto LABEL_10;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v16, type metadata accessor for ServerHandshakeState.ClientHelloState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v20, type metadata accessor for ServerHandshakeState.IdleState);
  v46 = type metadata accessor for PartialHandshakeResult(0);
  return (*(*(v46 - 8) + 56))(v50, 1, 1, v46);
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC5HelloyAA07PartialD6ResultVAA0cG0VzAA8TLSErrorOYKF@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v4 = v3;
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - v10;
  v11 = type metadata accessor for SymmetricKey();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v59 - v15;
  v16 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v23 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v4;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v4, v30, type metadata accessor for ServerHandshakeState);
  v61 = v27;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v30, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  outlined init with take of ServerHandshakeState.IdleState(v30, v26, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v31 = a1[3];
  v72[2] = a1[2];
  v72[3] = v31;
  v32 = a1[5];
  v72[4] = a1[4];
  v72[5] = v32;
  v33 = a1[1];
  v72[0] = *a1;
  v72[1] = v33;
  v34 = v73;
  v35 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c5HelloE0V07sendingcF008originalE006serverF0AE5state_AA10ByteBufferV0iF5BytestAC06ClientfE0V_AA0cF0VtAA8TLSErrorOYKFZ(v20, v26, v72, v70);
  if (v34)
  {
    v38 = v70[0];
    v39 = v70[1];
    v40 = v71;
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v26, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v42 = v68;
    *v68 = v38;
    v42[1] = v39;
    *(v42 + 16) = v40;
    return result;
  }

  v60 = v37;
  v68 = v36;
  v73 = v35;
  outlined init with take of ServerHandshakeState.IdleState(v20, v22, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v43 = *(v16 + 20);
  v44 = v66;
  specialized ServerSessionKeyManager.clientHandshakeTrafficSecret.getter(v66);
  v45 = v67;
  v46 = *(v67 + 48);
  result = v46(v44, 1, v11);
  if (result == 1)
  {
    goto LABEL_9;
  }

  v59 = 0;
  v67 = *(v45 + 32);
  (v67)(v69, v44, v11);
  v47 = v65;
  specialized ServerSessionKeyManager.serverHandshakeTrafficSecret.getter(v65);
  result = v46(v47, 1, v11);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v48 = v63;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v63, type metadata accessor for ServerHandshakeState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v26, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v49 = v62;
  v50 = v47;
  v51 = v67;
  (v67)(v62, v50, v11);
  outlined init with take of ServerHandshakeState.IdleState(v22, v48, type metadata accessor for ServerHandshakeState.ServerHelloState);
  swift_storeEnumTagMultiPayload();
  v52 = type metadata accessor for PartialHandshakeResult(0);
  v53 = v52[5];
  v54 = v64;
  v51(v64 + v53, v49, v11);
  v55 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v56 = *(*(v55 - 8) + 56);
  v56(v54 + v53, 0, 1, v55);
  v57 = v52[6];
  v51(v54 + v57, v69, v11);
  swift_storeEnumTagMultiPayload();
  result = (v56)(v54 + v57, 0, 1, v55);
  v58 = v68;
  *v54 = v73;
  v54[1] = v58;
  v54[2] = v60;
  *(v54 + v52[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC19EncryptedExtensionsyAA07PartialD6ResultVAA0gH0VAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ServerHandshakeState(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v3, v19, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of ServerHandshakeState.IdleState(v19, v15, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v20 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c19EncryptedExtensionsE0V07sendingcfG008originalE006serverfG0AE5state_AA10ByteBufferV0jfG5BytestAC0c5HelloE0V_AA0fG0VtAA8TLSErrorOYKFZ(v11, v15, a1, v35);
    if (v4)
    {
      v23 = v35[0];
      v24 = v35[1];
      v25 = v36;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v15, type metadata accessor for ServerHandshakeState.ServerHelloState);
      *a2 = v23;
      *(a2 + 8) = v24;
      *(a2 + 16) = v25;
    }

    else
    {
      v27 = v20;
      v28 = v21;
      v29 = v22;
      v37 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v3, type metadata accessor for ServerHandshakeState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v15, type metadata accessor for ServerHandshakeState.ServerHelloState);
      outlined init with take of ServerHandshakeState.IdleState(v11, v3, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      v30 = type metadata accessor for PartialHandshakeResult(0);
      v31 = v30[5];
      v32 = type metadata accessor for EncryptionLevel(0);
      v33 = *(*(v32 - 8) + 56);
      v33(a3 + v31, 1, 1, v32);
      result = (v33)(a3 + v30[6], 1, 1, v32);
      *a3 = v27;
      a3[1] = v28;
      a3[2] = v29;
      *(a3 + v30[7]) = xmmword_1B26C5EF0;
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v19, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC11CertificateAA07PartialD6ResultVyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v2, v17, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of ServerHandshakeState.IdleState(v17, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v18 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c11CertificateE0V07sendingcF008originalE0AE5state_AA10ByteBufferV06serverF5BytestAC0c19EncryptedExtensionsE0V_tAA8TLSErrorOYKFZ(v9, v13, v33);
    if (v3)
    {
      v21 = v33[0];
      v22 = v33[1];
      v23 = v34;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      *a1 = v21;
      *(a1 + 8) = v22;
      *(a1 + 16) = v23;
    }

    else
    {
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v35 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v2, type metadata accessor for ServerHandshakeState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      outlined init with take of ServerHandshakeState.IdleState(v9, v2, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      v28 = type metadata accessor for PartialHandshakeResult(0);
      v29 = v28[5];
      v30 = type metadata accessor for EncryptionLevel(0);
      v31 = *(*(v30 - 8) + 56);
      v31(a2 + v29, 1, 1, v30);
      result = (v31)(a2 + v28[6], 1, 1, v30);
      *a2 = v25;
      a2[1] = v26;
      a2[2] = v27;
      *(a2 + v28[7]) = xmmword_1B26C5EF0;
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v17, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC17CertificateVerifyAA07PartialD6ResultVyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v2, v17, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of ServerHandshakeState.IdleState(v17, v13, type metadata accessor for ServerHandshakeState.ServerCertificateState);
    v18 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c17CertificateVerifyE0V07sendingcfG008originalE0AE5state_AA10ByteBufferV06serverfG5BytestAC0cfE0V_tAA8TLSErrorOYKFZ(v9, v13, v33);
    if (v3)
    {
      v21 = v33[0];
      v22 = v33[1];
      v23 = v34;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      *a1 = v21;
      *(a1 + 8) = v22;
      *(a1 + 16) = v23;
    }

    else
    {
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v35 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v2, type metadata accessor for ServerHandshakeState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v13, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      outlined init with take of ServerHandshakeState.IdleState(v9, v2, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      swift_storeEnumTagMultiPayload();
      v28 = type metadata accessor for PartialHandshakeResult(0);
      v29 = v28[5];
      v30 = type metadata accessor for EncryptionLevel(0);
      v31 = *(*(v30 - 8) + 56);
      v31(a2 + v29, 1, 1, v30);
      result = (v31)(a2 + v28[6], 1, 1, v30);
      *a2 = v25;
      a2[1] = v26;
      a2[2] = v27;
      *(a2 + v28[7]) = xmmword_1B26C5EF0;
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v17, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC8FinishedAA07PartialD6ResultVyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a1;
  v81 = a2;
  v84 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v3 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v74 - v10;
  v86 = type metadata accessor for SymmetricKey();
  v83 = *(v86 - 8);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x1EEE9AC00](v86);
  v76 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v74 - v14;
  v82 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v15 = *(*(v82 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v82);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v74 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v74 - v25;
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ServerHandshakeState(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v2;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v2, v34, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    outlined init with take of ServerHandshakeState.IdleState(v34, v5, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    if ((v5[*(v84 + 40)] & 1) != 0 || (v5[*(v84 + 48) + 2] & 1) == 0)
    {
      v46 = v90;
      v47 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0025serverEncryptedExtensionsE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(v18, v5, &v87);
      if (v46)
      {
        v41 = v87;
        v42 = v88;
        v43 = v89;
        v44 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
        v45 = v5;
        goto LABEL_9;
      }

      v84 = v48;
      v85 = v49;
      v75 = v47;
      v90 = 0;
      outlined init with take of ServerHandshakeState.IdleState(v18, v21, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v64 = &v21[*(v82 + 20)];
      v65 = v77;
      specialized ServerSessionKeyManager.serverApplicationTrafficSecret.getter(v77);
      v66 = v83;
      v67 = v86;
      result = (*(v83 + 48))(v65, 1, v86);
      if (result != 1)
      {
        v68 = v80;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v80, type metadata accessor for ServerHandshakeState);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v5, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
        v56 = *(v66 + 32);
        v69 = v76;
        v56(v76, v65, v67);
        outlined init with take of ServerHandshakeState.IdleState(v21, v68, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        swift_storeEnumTagMultiPayload();
        v58 = type metadata accessor for PartialHandshakeResult(0);
        v59 = v81;
        v60 = v81 + v58[5];
        v61 = v60;
        v62 = v69;
        v63 = v67;
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_17:
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v34, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  outlined init with take of ServerHandshakeState.IdleState(v34, v30, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
  v36 = v90;
  v37 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0023serverCertificateVerifyE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(v24, v30, &v87);
  v40 = v86;
  if (v36)
  {
    v41 = v87;
    v42 = v88;
    v43 = v89;
    v44 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    v45 = v30;
LABEL_9:
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v45, v44);
    v51 = v85;
    *v85 = v41;
    v51[1] = v42;
    *(v51 + 16) = v43;
    return result;
  }

  v84 = v38;
  v85 = v39;
  v75 = v37;
  v90 = 0;
  outlined init with take of ServerHandshakeState.IdleState(v24, v26, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v52 = &v26[*(v82 + 20)];
  v53 = v79;
  specialized ServerSessionKeyManager.serverApplicationTrafficSecret.getter(v79);
  v54 = v83;
  result = (*(v83 + 48))(v53, 1, v40);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v55 = v80;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v80, type metadata accessor for ServerHandshakeState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v30, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
  v56 = *(v54 + 32);
  v57 = v78;
  v56(v78, v53, v40);
  outlined init with take of ServerHandshakeState.IdleState(v26, v55, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  swift_storeEnumTagMultiPayload();
  v58 = type metadata accessor for PartialHandshakeResult(0);
  v59 = v81;
  v60 = v81 + v58[5];
  v61 = v60;
  v62 = v57;
  v63 = v40;
LABEL_14:
  v56(v61, v62, v63);
  v70 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v71 = *(*(v70 - 8) + 56);
  v71(v60, 0, 1, v70);
  result = v71(v59 + v58[6], 1, 1, v70);
  v73 = v84;
  v72 = v85;
  *v59 = v75;
  v59[1] = v73;
  v59[2] = v72;
  *(v59 + v58[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO22receivedClientFinished_5bytesAA07PartialD6ResultVAA0H7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a6;
  v50 = a4;
  v51 = a5;
  v48 = a2;
  v49 = a3;
  v46 = a8;
  v47 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for SymmetricKey();
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v18 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ServerHandshakeState(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v8, v28, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v28, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with take of ServerHandshakeState.IdleState(v28, v24, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v29 = v53;
  _s15SwiftTLSLibrary20ServerHandshakeStateO05ReadyE0V23receivingClientFinished08originalE006clientI00kI5BytesAeC0ciE0V_AA0I7MessageVAA10ByteBufferVtAA8TLSErrorOYKFZ(v24, v47, v48, v49, v50, v51, v52, v54, v20);
  if (v29)
  {
    v30 = v54[0];
    v31 = v54[1];
    v32 = v55;
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v24, type metadata accessor for ServerHandshakeState.ServerFinishedState);
    *a7 = v30;
    *(a7 + 8) = v31;
    *(a7 + 16) = v32;
    return result;
  }

  v53 = 0;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v8, type metadata accessor for ServerHandshakeState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v20, v8, type metadata accessor for ServerHandshakeState.ReadyState);
  swift_storeEnumTagMultiPayload();
  v34 = &v20[*(ready + 20)];
  specialized ServerSessionKeyManager.clientApplicationTrafficSecret.getter(v13);
  v35 = v56;
  v36 = v14;
  result = (*(v56 + 48))(v13, 1, v14);
  if (result == 1)
  {
    goto LABEL_8;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v20, type metadata accessor for ServerHandshakeState.ReadyState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v24, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v37 = *(v35 + 32);
  v56 = v35 + 32;
  v38 = v45;
  v37(v45, v13, v36);
  v39 = type metadata accessor for PartialHandshakeResult(0);
  v40 = v39[5];
  v41 = type metadata accessor for EncryptionLevel(0);
  v42 = *(*(v41 - 8) + 56);
  v43 = v46;
  v42(v46 + v40, 1, 1, v41);
  v44 = v39[6];
  v37((v43 + v44), v38, v36);
  swift_storeEnumTagMultiPayload();
  result = (v42)(v43 + v44, 0, 1, v41);
  *v43 = xmmword_1B26C5EF0;
  *(v43 + 16) = 0;
  *(v43 + v39[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZ@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = v10;
  LODWORD(v317) = a8;
  v290 = a4;
  v291 = a5;
  v289 = a3;
  v319 = a1;
  v281 = a9;
  v318 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v15 = *(*(v318 - 8) + 64);
  MEMORY[0x1EEE9AC00](v318);
  v285 = &v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v293 = &v262 - v19;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v20 = *(*(v297 - 8) + 64);
  MEMORY[0x1EEE9AC00](v297);
  v298 = &v262 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v288 = &v262 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v311 = &v262 - v26;
  v27 = type metadata accessor for Date();
  v294 = *(v27 - 8);
  v295 = v27;
  v28 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v301 = &v262 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v283 = &v262 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v310 = &v262 - v34;
  v35 = type metadata accessor for SymmetricKey();
  v305 = *(v35 - 8);
  v306 = v35;
  v36 = *(v305 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v284 = &v262 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v292 = &v262 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v312 = &v262 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v304 = &v262 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v299 = &v262 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v262 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v282 = &v262 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v313 = (&v262 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v307 = &v262 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v308 = &v262 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v316 = &v262 - v60;
  v61 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  v314 = *(v61 - 8);
  v315 = v61;
  v62 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v296 = (&v262 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64 - 8);
  v287 = &v262 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v286 = &v262 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v72 = &v262 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70);
  v303 = &v262 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v302 = &v262 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v300 = (&v262 - v78);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v309 = &v262 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v262 - v81;
  v83 = *a2;
  v430 = a2;
  v84 = a2[1];
  if (v83 != 3 || v84 != 3 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(*(v430 + 11), &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv_r) & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    __swift_project_value_buffer(v100, logger);
    v101 = v430;
    outlined init with copy of ClientHello(v430, v367);
    outlined init with copy of ClientHello(v101, v367);
    outlined init with copy of ClientHello(v101, v367);
    outlined init with copy of ClientHello(v101, v367);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v102, v103))
    {
      outlined destroy of ClientHello(v101);
      outlined destroy of ClientHello(v101);
      outlined destroy of ClientHello(v101);
      outlined destroy of ClientHello(v101);
LABEL_22:

      v367[0] = xmmword_1B26C6410;
      v117 = 2;
      LOBYTE(v367[1]) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      result = swift_willThrowTypedImpl();
      v119 = 0;
      goto LABEL_23;
    }

    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *&v367[0] = v105;
    *v104 = 136315906;
    v106 = ProtocolVersion.description.getter(771);
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v367);

    *(v104 + 4) = v108;
    *(v104 + 12) = 2080;
    v109 = ProtocolVersion.description.getter(v83 | (v84 << 8));
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v367);

    *(v104 + 14) = v111;
    v112 = v430;
    *(v104 + 22) = 2048;
    v113 = *(v112 + 88);
    v114 = *(v113 + 16);
    outlined destroy of ClientHello(v112);
    *(v104 + 24) = v114;
    outlined destroy of ClientHello(v112);
    *(v104 + 32) = 1024;
    if (v114)
    {
      v115 = *(v113 + 32);
      outlined destroy of ClientHello(v112);
      if (!v115)
      {
        v116 = 1;
LABEL_21:
        *(v104 + 34) = v116;
        outlined destroy of ClientHello(v112);
        _os_log_impl(&dword_1B25F5000, v102, v103, "client hello legacy version and/or legacy compression methods incorrect. version expected %s, got %s, legacy compression methods expected [0], got array of length %ld with first value == 0? %{BOOL}d.", v104, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v105, -1, -1);
        MEMORY[0x1B274ECF0](v104, -1, -1);
        goto LABEL_22;
      }
    }

    else
    {
      outlined destroy of ClientHello(v112);
    }

    v116 = 0;
    goto LABEL_21;
  }

  v277 = v72;
  v278 = v49;
  v280 = v82;
  v86 = v318;
  v85 = v319;
  if (*(v319 + *(v318 + 24)))
  {
    v87 = *(v319 + *(v318 + 24));
  }

  else
  {
    v87 = MEMORY[0x1E69E7CC0];
  }

  v279 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v88 = *(v85 + v279[10]);
  v89 = (v85 + *(v86 + 32));
  v90 = *v89;
  v91 = v89[1];
  v92 = v317 & 1;
  *(v367 + 8) = 0u;
  *(&v367[2] + 8) = 0u;
  *&v367[0] = MEMORY[0x1E69E7CD0];
  *(&v367[3] + 1) = 0;
  *(&v367[1] + 8) = 0u;
  *&v368[0] = 0xF000000000000000;
  BYTE8(v368[2]) = 0;
  *(&v368[1] + 8) = 0u;
  *(v368 + 8) = 0u;
  v371 = 0u;
  v370 = 0u;
  v369 = 0u;
  *&v372 = 0;
  *(&v372 + 1) = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv0_r;
  *&v373 = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv1_r;
  *(&v373 + 1) = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv2_r;
  *&v374 = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv3_r;
  *(&v374 + 1) = v87;
  LODWORD(v317) = v88;
  LOBYTE(v375) = v88;
  *(&v375 + 1) = a6;
  *&v376[0] = a7;
  *(&v376[0] + 1) = v90;
  *&v376[1] = v91;
  BYTE8(v376[1]) = v92;
  v93 = *(v430 + 12);
  v94 = *(v93 + 16);

  outlined copy of PAKEServerRecords?(v90);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(a6, a7);
  if (v94)
  {
    v95 = v93 + 32;
    while (1)
    {
      v96 = *(v95 + 16);
      v428[0] = *v95;
      v428[1] = v96;
      v97 = *(v95 + 32);
      v98 = *(v95 + 48);
      v99 = *(v95 + 64);
      v429 = *(v95 + 80);
      v428[3] = v98;
      v428[4] = v99;
      v428[2] = v97;
      outlined init with copy of Extension(v428, &v352);
      _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16processExtensionyyAA0J0OAA8TLSErrorOYKF(v428);
      if (v11)
      {
        break;
      }

      v11 = 0;
      outlined destroy of Extension(v428);
      v95 += 88;
      if (!--v94)
      {
        goto LABEL_25;
      }
    }

    outlined destroy of Extension(v428);
    v364 = v374;
    v365 = v375;
    v366[0] = v376[0];
    *(v366 + 9) = *(v376 + 9);
    v360 = v370;
    v361 = v371;
    v362 = v372;
    v363 = v373;
    v356 = v368[0];
    v357 = v368[1];
    v358 = v368[2];
    v359 = v369;
    v352 = v367[0];
    v353 = v367[1];
    v354 = v367[2];
    v355 = v367[3];
    result = outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
    v119 = 0;
    v117 = 2;
LABEL_23:
    v120 = 5;
    goto LABEL_24;
  }

LABEL_25:
  v425 = v374;
  v426 = v375;
  v427[0] = v376[0];
  *(v427 + 9) = *(v376 + 9);
  v421 = v370;
  v422 = v371;
  v423 = v372;
  v424 = v373;
  v417 = v368[0];
  v418 = v368[1];
  v419 = v368[2];
  v420 = v369;
  v414[0] = v367[0];
  v414[1] = v367[1];
  v415 = v367[2];
  v416 = v367[3];
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v414, &v352);
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV18validateExtensionsyyAA8TLSErrorOYKF();
  if (v11)
  {
    v120 = v121;
    v119 = v122;
    v117 = v123;
    v364 = v374;
    v365 = v375;
    v366[0] = v376[0];
    *(v366 + 9) = *(v376 + 9);
    v360 = v370;
    v361 = v371;
    v362 = v372;
    v363 = v373;
    v356 = v368[0];
    v357 = v368[1];
    v358 = v368[2];
    v359 = v369;
    v352 = v367[0];
    v353 = v367[1];
    v354 = v367[2];
    v355 = v367[3];
    outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
    result = outlined destroy of ServerHandshakeState.ClientHelloVerifier(v414);
    goto LABEL_24;
  }

  outlined destroy of ServerHandshakeState.ClientHelloVerifier(v414);
  v276 = _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V20negotiateCipherSuite33_03AB5AB83506F65A656301CC88CAC942LLyAA0iJ0VSayAIG_AJtAA8TLSErrorOYKFZTf4nnd_n(*(v430 + 10), &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv4_r);
  if (*(&v415 + 1) && (v124 = *(*(&v415 + 1) + 16)) != 0)
  {
    v125 = 0;
    do
    {
      v126 = *(*(&v415 + 1) + 32 + v125++);
      v127 = *(*(&v424 + 1) + 16);
      v128 = (*(&v424 + 1) + 32);
      while (v127)
      {
        v129 = *v128++;
        --v127;
        if (v129 == v126)
        {
          v130 = 0;
          goto LABEL_38;
        }
      }

      LOBYTE(v126) = 0;
      v130 = 1;
    }

    while (v125 != v124);
  }

  else
  {
    LOBYTE(v126) = 0;
    v130 = 1;
  }

LABEL_38:
  v275 = v130;
  v412[12] = v374;
  v412[13] = v375;
  v413[0] = v376[0];
  *(v413 + 9) = *(v376 + 9);
  v412[8] = v370;
  v412[9] = v371;
  v412[10] = v372;
  v412[11] = v373;
  v412[4] = v368[0];
  v412[5] = v368[1];
  v412[6] = v368[2];
  v412[7] = v369;
  v412[0] = v367[0];
  v412[1] = v367[1];
  v412[2] = v367[2];
  v412[3] = v367[3];
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v412, &v352);
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV14negotiateGroupAA05NamedJ0VSgyAA8TLSErrorOYKF();
  v132 = v131;
  outlined destroy of ServerHandshakeState.ClientHelloVerifier(v412);
  v409 = v374;
  v410 = v375;
  v411[0] = v376[0];
  *(v411 + 9) = *(v376 + 9);
  v405 = v370;
  v406 = v371;
  v407 = v372;
  v408 = v373;
  v401[4] = v368[0];
  v402 = v368[1];
  v403 = v368[2];
  v404 = v369;
  v401[0] = v367[0];
  v401[1] = v367[1];
  v401[2] = v367[2];
  v401[3] = v367[3];
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v401, &v352);
  v271 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27negotiateSignatureAlgorithmAA0J6SchemeVSgyAA8TLSErrorOYKF();
  outlined destroy of ServerHandshakeState.ClientHelloVerifier(v401);
  if ((v132 & 0x10000) != 0)
  {
    v133 = 0;
    v134 = 0;
    v274 = 0;
    v135 = 0xF000000000000000;
    v136 = *(&v402 + 1);
  }

  else
  {
    v272 = *(&v368[1] + 1);
    v137 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV03getF8KeyShareyAA9ExtensionO0jK0O0jK5EntryVAA10NamedGroupVAA8TLSErrorOYKF(v132);
    v134 = v138;
    v135 = v139;
    v274 = v140;
    v133 = v137;
    v136 = v272;
  }

  v273 = v133;
  if (v276 != 4866)
  {
    v352 = xmmword_1B26C76D0;
    v142 = v135;
    v117 = 2;
    LOBYTE(v353) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Extension.KeyShare.KeyShareEntry?(v273, v134, v142);
    v364 = v374;
    v365 = v375;
    v366[0] = v376[0];
    *(v366 + 9) = *(v376 + 9);
    v360 = v370;
    v361 = v371;
    v362 = v372;
    v363 = v373;
    v356 = v368[0];
    v357 = v368[1];
    v358 = v368[2];
    v359 = v369;
    v352 = v367[0];
    v353 = v367[1];
    v354 = v367[2];
    v355 = v367[3];
    result = outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
    v119 = 0;
    v120 = 26;
    goto LABEL_24;
  }

  v272 = v136;
  v270 = v135;
  v141 = v372;
  v399[14] = v374;
  v399[15] = v375;
  v400[0] = v376[0];
  *(v400 + 9) = *(v376 + 9);
  v399[10] = v370;
  v399[11] = v371;
  v399[12] = v372;
  v399[13] = v373;
  v399[6] = v368[0];
  v399[7] = v368[1];
  v399[8] = v368[2];
  v399[9] = v369;
  v399[2] = v367[0];
  v399[3] = v367[1];
  v399[4] = v367[2];
  v399[5] = v367[3];
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF(2, 48, &v349, v280);
  v388 = v367[3];
  v387 = v367[2];
  v392 = v369;
  v391 = v368[2];
  v390 = v368[1];
  v389 = v368[0];
  v396 = v373;
  v395 = v372;
  v394 = v371;
  v393 = v370;
  *(v399 + 9) = *(v376 + 9);
  v399[0] = v376[0];
  v398 = v375;
  v397 = v374;
  v386 = v367[1];
  v385 = v367[0];
  v143 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16getALPNSelection8selfALPNSS_SitSgSaySSGSg_tAA8TLSErrorOYKF(*(v319 + v279[7]));
  v146 = v145;
  v268 = v132;
  v269 = v134;
  v266 = 0;
  v267 = v144;
  v264 = v143;
  v265 = v141;
  if ((BYTE8(v391) & 1) == 0 || *(v319 + v279[8]) != 1)
  {
    LODWORD(v296) = 0;
    goto LABEL_77;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v147 = type metadata accessor for Logger();
    __swift_project_value_buffer(v147, logger);
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_1B25F5000, v148, v149, "Client requested early data and server configured to allow early data. Checking conditions...", v150, 2u);
      MEMORY[0x1B274ECF0](v150, -1, -1);
    }

    v151 = v309;
    outlined init with copy of Any?(v280, v309, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
    v152 = *(v314 + 48);
    if (v152(v151, 1, v315) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v309, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      goto LABEL_54;
    }

    v153 = v296;
    outlined init with take of ServerHandshakeState.IdleState(v309, v296, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
    if (*(v153 + v315[5]))
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v296, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_54:
      outlined init with copy of Any?(v280, v300, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v154 = Logger.logObject.getter();
      LODWORD(v309) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v154, v309))
      {
        v155 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        *&v352 = v296;
        *v155 = 136315138;
        v156 = v300;
        v157 = v152(v300, 1, v315);
        if (v157 == 1)
        {
          v158 = 0xD000000000000012;
        }

        else
        {
          v158 = 0xD00000000000001CLL;
        }

        if (v157 == 1)
        {
          v159 = ".supportedGroups";
        }

        else
        {
          v159 = "psk not negotiated";
        }

        outlined destroy of P256.Signing.PrivateKey?(v156, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159 | 0x8000000000000000, &v352);

        *(v155 + 4) = v160;
        _os_log_impl(&dword_1B25F5000, v154, v309, "Early data not authorized: %s", v155, 0xCu);
        v161 = v296;
        __swift_destroy_boxed_opaque_existential_0(v296);
        MEMORY[0x1B274ECF0](v161, -1, -1);
        MEMORY[0x1B274ECF0](v155, -1, -1);
      }

      else
      {

        outlined destroy of P256.Signing.PrivateKey?(v300, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      }

      goto LABEL_75;
    }

    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&dword_1B25F5000, v162, v163, "Early data compatibly psk negotiated. Continuing checks...", v164, 2u);
      MEMORY[0x1B274ECF0](v164, -1, -1);
    }

    if (v390)
    {
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.debug.getter();
      v167 = os_log_type_enabled(v165, v166);
      if (v267 && !v146)
      {
        if (v167)
        {
          v168 = swift_slowAlloc();
          *v168 = 0;
          _os_log_impl(&dword_1B25F5000, v165, v166, "Server supports ALPN protocol associated with early data. Accepting early data.", v168, 2u);
          MEMORY[0x1B274ECF0](v168, -1, -1);
        }

        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v296, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
        LODWORD(v296) = 1;
        goto LABEL_76;
      }

      if (v167)
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&dword_1B25F5000, v165, v166, "Server does not support the ALPN protocol associated with early data. Rejecting early data.", v169, 2u);
        MEMORY[0x1B274ECF0](v169, -1, -1);
      }
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v296, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_75:
    LODWORD(v296) = 0;
LABEL_76:
    LODWORD(v132) = v268;
LABEL_77:
    v170 = _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(&v339);
    if ((v132 & 0x10000) != 0 && (v271 & 0x10000) != 0 && (*(v314 + 48))(v280, 1, v315, v170) == 1)
    {
      v171 = v372;
      if (!v372)
      {
        goto LABEL_125;
      }

      v172 = v369;
      v383[0] = v369;
      v279 = *(&v370 + 1);
      v263 = v370;
      v383[1] = v370;
      v309 = *(&v371 + 1);
      v300 = v371;
      v383[2] = v371;
      v384 = v372;
      v173 = *(&v399[0] + 1);
      if (*(&v399[0] + 1))
      {
        outlined copy of Extension.PAKE.PAKEClientHello?(v369, *(&v369 + 1), v263, v279, v300, v309, v372);
        v174 = v266;
        _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n(v383, v173, &v349, v377);
        v266 = v174;
        if (v174)
        {
          v120 = v349;
          v175 = v350;
          v117 = v351;
          outlined consume of Extension.PAKE.PAKEClientHello?(v172, *(&v172 + 1), v263, v279, v300, v309, v171);
          outlined consume of Extension.KeyShare.KeyShareEntry?(v273, v269, v270);

          v364 = v374;
          v365 = v375;
          v366[0] = v376[0];
          *(v366 + 9) = *(v376 + 9);
          v360 = v370;
          v361 = v371;
          v362 = v372;
          v363 = v373;
          v356 = v368[0];
          v357 = v368[1];
          v358 = v368[2];
          v359 = v369;
          v352 = v367[0];
          v353 = v367[1];
          v354 = v367[2];
          v355 = v367[3];
          outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
          result = outlined destroy of P256.Signing.PrivateKey?(v280, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
          v119 = v175;
          goto LABEL_24;
        }

        v326[0] = v377[6];
        v326[1] = v377[7];
        v327 = v377[8];
        v328 = v377[9];
        v322 = v377[2];
        v323 = v377[3];
        v324 = v377[4];
        v325 = v377[5];
        v320 = v377[0];
        v321 = v377[1];
        outlined consume of Extension.PAKE.PAKEClientHello?(v172, *(&v172 + 1), v263, v279, v300, v309, v171);
      }

      else
      {
LABEL_125:
        v326[0] = v345;
        v326[1] = v346;
        v327 = v347;
        v328 = v348;
        v322 = v341;
        v323 = v342;
        v324 = v343;
        v325 = v344;
        v320 = v339;
        v321 = v340;
      }

      v335 = v326[0];
      v336 = v326[1];
      v337 = v327;
      v338 = v328;
      v331 = v322;
      v332 = v323;
      v333 = v324;
      v334 = v325;
      v176 = v320;
      v177 = v321;
    }

    else
    {
      v335 = v345;
      v336 = v346;
      v337 = v347;
      v338 = v348;
      v331 = v341;
      v332 = v342;
      v333 = v343;
      v334 = v344;
      v176 = v339;
      v177 = v340;
    }

    v329 = v176;
    v330 = v177;
    v178 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
    v179 = *(v178 - 8);
    v180 = *(v179 + 56);
    v180(v316, 1, 1, v178);
    v181 = type metadata accessor for PAKEServerState(0);
    v309 = *(v181 - 8);
    v300 = *(v309 + 56);
    (v300)(v278, 1, 1, v181);
    if ((v268 & 0x10000) != 0 || v270 >> 60 == 15)
    {
      break;
    }

    outlined copy of Data._Representation(v269, v270);
    v182 = v307;
    generateEphemeralKeyForNamedGroup(_:)(v268, v307);
    v183 = *(v179 + 48);
    v146 = v179 + 48;
    v309 = v183;
    result = v183(v182, 1, v178);
    if (result == 1)
    {
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v184 = v316;
    outlined destroy of P256.Signing.PrivateKey?(v316, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v185 = v182;
    v186 = v308;
    outlined init with take of ServerHandshakeState.IdleState(v185, v308, type metadata accessor for GeneratedEphemeralPrivateKey);
    v180(v186, 0, 1, v178);
    outlined init with take of P256.Signing.PublicKey?(v186, v184, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v187 = v313;
    outlined init with copy of Any?(v184, v313, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    result = (v309)(v187, 1, v178);
    if (result == 1)
    {
      goto LABEL_140;
    }

    v188 = v270 >> 62;
    if ((v270 >> 62) <= 1)
    {
      if (!v188)
      {
        v189 = BYTE6(v270);
        goto LABEL_107;
      }

      v201 = v269;
      v189 = v269 >> 32;
      goto LABEL_105;
    }

    if (v188 == 2)
    {
      v201 = v269;
      v189 = *(v269 + 24);
LABEL_105:
      outlined copy of Data._Representation(v201, v270);
      goto LABEL_107;
    }

    v189 = 0;
LABEL_107:
    if (v189 >= v274)
    {
      v203 = v269;
      v202 = v270;
      v204 = v274;
      v205 = Data._Representation.subscript.getter();
      v207 = v206;
      v208 = v273;
      v274 = v204;
      outlined consume of Extension.KeyShare.KeyShareEntry?(v273, v203, v202);
      v209 = v313;
      v308 = v205;
      v309 = v207;
      v210 = v266;
      v211 = _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(v312, v205, v207, &v349);
      v299 = v210;
      v300 = v211;
      v307 = v212;
      if (v210)
      {
        v120 = v349;
        v213 = v350;
        v117 = v351;
        outlined destroy of P256.Signing.PrivateKey?(v316, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
        outlined consume of Data._Representation(v308, v309);

        outlined consume of Extension.KeyShare.KeyShareEntry?(v208, v203, v202);
        outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
        outlined consume of Extension.KeyShare.KeyShareEntry?(v208, v203, v202);
        v364 = v374;
        v365 = v375;
        v366[0] = v376[0];
        *(v366 + 9) = *(v376 + 9);
        v360 = v370;
        v361 = v371;
        v362 = v372;
        v363 = v373;
        v356 = v368[0];
        v357 = v368[1];
        v358 = v368[2];
        v359 = v369;
        v352 = v367[0];
        v353 = v367[1];
        v354 = v367[2];
        v355 = v367[3];
        outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v209, type metadata accessor for GeneratedEphemeralPrivateKey);
        outlined destroy of P256.Signing.PrivateKey?(v278, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
        result = outlined destroy of P256.Signing.PrivateKey?(v280, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v119 = v213;
        goto LABEL_24;
      }

      outlined consume of Extension.KeyShare.KeyShareEntry?(v208, v203, v202);
      outlined consume of Data._Representation(v308, v309);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v209, type metadata accessor for GeneratedEphemeralPrivateKey);
      v313 = *(v305 + 32);
      (v313)(v304, v312, v306);
LABEL_111:
      outlined init with copy of Any?(v319 + *(v318 + 20), v310, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      Date.init()();
      v214 = v302;
      outlined init with copy of Any?(v280, v302, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v215 = *(v314 + 48);
      v314 += 48;
      v318 = v215;
      if (v215(v214, 1, v315) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v302, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v216 = 1;
      }

      else
      {
        v217 = v302;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v302, v311, type metadata accessor for GeneralEPSK);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v217, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
        v216 = 0;
      }

      v218 = type metadata accessor for GeneralEPSK(0);
      v219 = *(v218 - 8);
      v220 = *(v219 + 56);
      v312 = v218;
      v308 = v219 + 56;
      v309 = v220;
      v220(v311, v216, 1);
      v221 = v303;
      outlined init with copy of Any?(v280, v303, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      if ((v318)(v221, 1, v315) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v303, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v222 = 0;
        v223 = 0;
        v224 = 0xF000000000000000;
      }

      else
      {
        v225 = v303;
        v226 = (v303 + v315[6]);
        v222 = *v226;
        v224 = v226[1];
        v223 = v226[2];
        outlined copy of Data._Representation(*v226, v224);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v225, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      v227 = v277;
      outlined init with copy of Any?(v280, v277, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v228 = (v318)(v227, 1, v315);
      if (v228 == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v277, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v229 = 0;
      }

      else
      {
        v229 = *&v277[v315[7]];
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v277, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      outlined init with copy of Any?(v310, v298, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      if (swift_getEnumCaseMultiPayload() >= 4)
      {
        v230 = v299;
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ9CryptoKit6SHA384V_Tt5g5(v289, v290, v291, v311, v317, v222, v224, v223, v293, v229, v228 == 1, &v349);
        v317 = v230;
        if (!v230)
        {
          outlined consume of ByteBuffer?(v222, v224);
          outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
          outlined destroy of P256.Signing.PrivateKey?(v311, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
          (*(v294 + 8))(v301, v295);
          v232 = v310;
          outlined destroy of P256.Signing.PrivateKey?(v310, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
          outlined init with take of P256.Signing.PublicKey?(v293, v232, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
          swift_storeEnumTagMultiPayload();
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v319, v285, type metadata accessor for ServerHandshakeState.IdleState);
          outlined init with take of P256.Signing.PublicKey?(v232, v283, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
          outlined init with take of P256.Signing.PublicKey?(v316, v282, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          v305 += 32;
          (v313)(v284, v304, v306);
          v319 = *(&v367[3] + 1);
          v316 = *&v368[0];
          v233 = v264;
          if (!v267)
          {
            v233 = 0;
          }

          v310 = v233;
          v311 = *(&v368[0] + 1);
          v234 = v286;
          outlined init with copy of Any?(v280, v286, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
          if ((v318)(v234, 1, v315) == 1)
          {
            outlined copy of Data?(v319, v316);
            outlined destroy of P256.Signing.PrivateKey?(v286, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
            v235 = 1;
          }

          else
          {
            v236 = v286;
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v286, v288, type metadata accessor for GeneralEPSK);
            outlined copy of Data?(v319, v316);
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v236, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
            v235 = 0;
          }

          (v309)(v288, v235, 1, v312);
          v237 = v287;
          outlined init with copy of Any?(v280, v287, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
          if ((v318)(v237, 1, v315) == 1)
          {
            outlined destroy of P256.Signing.PrivateKey?(v287, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
            LODWORD(v318) = 0;
          }

          else
          {
            LODWORD(v318) = *(v287 + v315[5]);
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v287, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
          }

          v238 = v265 != 0;
          v239 = v272 != 0;
          v240 = *(v430 + 56);
          v378 = *(v430 + 40);
          v379 = v240;
          v380 = *(v430 + 9);
          v241 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
          v242 = v281;
          v243 = v278;
          outlined init with copy of Any?(v278, v281 + v241[21], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
          v244 = v285;
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v285, v242, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v244, type metadata accessor for ServerHandshakeState.IdleState);
          outlined init with take of P256.Signing.PublicKey?(v283, v242 + v241[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
          *(v242 + v241[6]) = v276;
          v245 = v242 + v241[7];
          v246 = BYTE2(v268);
          *v245 = v268;
          *(v245 + 2) = v246 & 1;
          v247 = v242 + v241[8];
          v248 = BYTE2(v271);
          *v247 = v271;
          *(v247 + 2) = v248 & 1;
          v249 = (v242 + v241[9]);
          *v249 = v126;
          v249[1] = v275;
          v250 = (v242 + v241[10]);
          v252 = v269;
          v251 = v270;
          *v250 = v273;
          v250[1] = v252;
          v250[2] = v251;
          v250[3] = v274;
          v253 = v242 + v241[14];
          v254 = v379;
          *v253 = v378;
          *(v253 + 16) = v254;
          *(v253 + 32) = v380;
          outlined init with take of P256.Signing.PublicKey?(v282, v242 + v241[11], &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          (v313)(v242 + v241[12], v284, v306);
          v255 = (v242 + v241[13]);
          v256 = v307;
          *v255 = v300;
          v255[1] = v256;
          v257 = (v242 + v241[15]);
          v258 = v316;
          *v257 = v319;
          v257[1] = v258;
          v259 = v310;
          v257[2] = v311;
          v260 = (v242 + v241[16]);
          v261 = v267;
          *v260 = v259;
          v260[1] = v261;
          *(v242 + v241[17]) = v239;
          outlined init with take of P256.Signing.PublicKey?(v288, v242 + v241[18], &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
          *(v242 + v241[19]) = v318;
          *(v242 + v241[20]) = v296;
          *(v242 + v241[22]) = v92;
          *(v242 + v241[23]) = v238;
          v352 = v367[0];
          v353 = v367[1];
          v354 = v367[2];
          v355 = v367[3];
          v359 = v369;
          v358 = v368[2];
          v356 = v368[0];
          v357 = v368[1];
          v363 = v373;
          v362 = v372;
          v361 = v371;
          v360 = v370;
          *(v366 + 9) = *(v376 + 9);
          v366[0] = v376[0];
          v365 = v375;
          v364 = v374;
          outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
          outlined destroy of P256.Signing.PrivateKey?(v243, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
          return outlined destroy of P256.Signing.PrivateKey?(v280, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        }

        v120 = v349;
        v231 = v350;
        v117 = v351;
        outlined consume of ByteBuffer?(v300, v307);
        outlined consume of ByteBuffer?(v222, v224);

        outlined consume of Extension.KeyShare.KeyShareEntry?(v273, v269, v270);
        outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v311, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        (*(v294 + 8))(v301, v295);
        (*(v305 + 8))(v304, v306);
        outlined destroy of P256.Signing.PrivateKey?(v316, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
        v119 = v231;
      }

      else
      {

        outlined destroy of P256.Signing.PrivateKey?(v298, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
        v352 = xmmword_1B26C6450;
        v120 = 2;
        LOBYTE(v353) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of ByteBuffer?(v300, v307);
        outlined consume of ByteBuffer?(v222, v224);
        outlined consume of Extension.KeyShare.KeyShareEntry?(v273, v269, v270);
        outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v311, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        (*(v294 + 8))(v301, v295);
        (*(v305 + 8))(v304, v306);
        outlined destroy of P256.Signing.PrivateKey?(v316, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
        v119 = 0;
        v117 = 2;
      }

      outlined destroy of P256.Signing.PrivateKey?(v310, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v364 = v374;
      v365 = v375;
      v366[0] = v376[0];
      *(v366 + 9) = *(v376 + 9);
      v360 = v370;
      v361 = v371;
      v362 = v372;
      v363 = v373;
      v356 = v368[0];
      v357 = v368[1];
      v358 = v368[2];
      v359 = v369;
      v352 = v367[0];
      v353 = v367[1];
      v354 = v367[2];
      v355 = v367[3];
      outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
      outlined destroy of P256.Signing.PrivateKey?(v278, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
      result = outlined destroy of P256.Signing.PrivateKey?(v280, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      goto LABEL_24;
    }

    __break(1u);
LABEL_138:
    swift_once();
  }

  v326[0] = v335;
  v326[1] = v336;
  v327 = v337;
  v328 = v338;
  v322 = v331;
  v323 = v332;
  v324 = v333;
  v325 = v334;
  v320 = v329;
  v321 = v330;
  if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v320) != 1)
  {
    v381[4] = v324;
    v381[5] = v325;
    v382[0] = v326[0];
    *(v382 + 10) = *(v326 + 10);
    v381[0] = v320;
    v381[1] = v321;
    v381[2] = v322;
    v381[3] = v323;
    v194 = v327;
    v312 = *(&v328 + 1);
    v195 = v328;
    v313 = *(&v327 + 1);
    outlined init with copy of Any?(&v329, &v352, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
    outlined init with copy of Any?(&v329, &v352, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
    outlined init with copy of PAKEServerRecord(&v320, &v352);
    v196 = v266;
    _s15SwiftTLSLibrary15PAKEServerStateVyAcA0C6RecordVAA8TLSErrorOYKcfC(v381, &v349, v299);
    if (v196)
    {
      v120 = v349;
      v200 = v350;
      v117 = v351;
      outlined destroy of P256.Signing.PrivateKey?(v316, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
      outlined consume of Data._Representation(v313, v195);

      outlined destroy of PAKEServerRecord(&v320);
      outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
      outlined consume of Extension.KeyShare.KeyShareEntry?(v273, v269, v270);
      v364 = v374;
      v365 = v375;
      v366[0] = v376[0];
      *(v366 + 9) = *(v376 + 9);
      v360 = v370;
      v361 = v371;
      v362 = v372;
      v363 = v373;
      v356 = v368[0];
      v357 = v368[1];
      v358 = v368[2];
      v359 = v369;
      v352 = v367[0];
      v353 = v367[1];
      v354 = v367[2];
      v355 = v367[3];
      outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
      outlined destroy of P256.Signing.PrivateKey?(v278, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
      result = outlined destroy of P256.Signing.PrivateKey?(v280, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v119 = v200;
      goto LABEL_24;
    }

    v197 = v299;
    (v300)(v299, 0, 1, v181);
    v198 = v197;
    v199 = v278;
    outlined assign with take of PartialHandshakeResult?(v198, v278, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    result = (*(v309 + 48))(v199, 1, v181);
    if (result != 1)
    {
      _s15SwiftTLSLibrary15PAKEServerStateV26deriveKeysAndServerMessage11clientShare9CryptoKit12SymmetricKeyVAA9ExtensionO4PAKEO9PAKEShareV_tAA8TLSErrorOYKF(v194, v313, v195, v312, &v349, v292);
      v299 = 0;
      outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
      outlined destroy of PAKEServerRecord(&v320);
      outlined consume of Data._Representation(v313, v195);
      v313 = *(v305 + 32);
      (v313)(v304, v292, v306);
      v300 = 0;
      v307 = 0xF000000000000000;
      goto LABEL_111;
    }

LABEL_141:
    __break(1u);
    return result;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v190 = type metadata accessor for Logger();
  __swift_project_value_buffer(v190, logger);
  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    *v193 = 0;
    _os_log_impl(&dword_1B25F5000, v191, v192, "no group or PAKE negotiated", v193, 2u);
    MEMORY[0x1B274ECF0](v193, -1, -1);
  }

  v352 = xmmword_1B26C6450;
  v120 = 2;
  LOBYTE(v353) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Extension.KeyShare.KeyShareEntry?(v273, v269, v270);
  outlined destroy of P256.Signing.PrivateKey?(&v329, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v316, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v364 = v374;
  v365 = v375;
  v366[0] = v376[0];
  *(v366 + 9) = *(v376 + 9);
  v360 = v370;
  v361 = v371;
  v362 = v372;
  v363 = v373;
  v356 = v368[0];
  v357 = v368[1];
  v358 = v368[2];
  v359 = v369;
  v352 = v367[0];
  v353 = v367[1];
  v354 = v367[2];
  v355 = v367[3];
  outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v352);
  outlined destroy of P256.Signing.PrivateKey?(v278, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  result = outlined destroy of P256.Signing.PrivateKey?(v280, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
  v119 = 0;
  v117 = 2;
LABEL_24:
  *a10 = v120;
  *(a10 + 8) = v119;
  *(a10 + 16) = v117;
  return result;
}

uint64_t specialized ServerSessionKeyManager.clientEarlyTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t outlined init with take of ServerHandshakeState.IdleState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c5HelloE0V07sendingcF008originalE006serverF0AE5state_AA10ByteBufferV0iF5BytestAC06ClientfE0V_AA0cF0VtAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = a4;
  v77 = a3;
  v66 = a1;
  v5 = type metadata accessor for SymmetricKey();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v63 - v9;
  v10 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v63 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v81 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v68 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v64 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = a2 + v10[5];
  v74 = &v63 - v31;
  outlined init with copy of Any?(v30, &v63 - v31, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(a2 + v10[18], v25, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v32 = type metadata accessor for GeneralEPSK(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v67 = v33 + 48;
  v35 = v34(v25, 1, v32);
  v72 = v10;
  if (v35 == 1)
  {
    v70 = *(a2 + v10[17]);
  }

  else
  {
    v70 = 0;
  }

  outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v36 = v81;
  v37 = v71;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, logger);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v37, type metadata accessor for ServerHandshakeState.ClientHelloState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v36, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v73 = a2;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v16, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = v16;
  if (os_log_type_enabled(v39, v40))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109632;
    v43 = v34;
    v44 = v72;
    v45 = v68;
    outlined init with copy of Any?(v37 + v72[18], v68, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    v46 = v43(v45, 1, v32) != 1;
    outlined destroy of P256.Signing.PrivateKey?(v45, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v37, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v42 + 4) = v46;
    *(v42 + 8) = 1024;
    LODWORD(v43) = *(v81 + v44[17]);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v81, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v42 + 10) = v43;
    *(v42 + 14) = 1024;
    v47 = *(v41 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 40));
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v41, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v42 + 16) = v47;
    _os_log_impl(&dword_1B25F5000, v39, v40, "selectedPSK? = %{BOOL}d, pskNegotiationAttempted? = %{BOOL}d, useRawEPSKs? = %{BOOL}d", v42, 0x14u);
    MEMORY[0x1B274ECF0](v42, -1, -1);
    v48 = v80;
    v49 = v74;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v16, type metadata accessor for ServerHandshakeState.ClientHelloState);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v36, type metadata accessor for ServerHandshakeState.ClientHelloState);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v37, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v48 = v80;
    v49 = v74;
    v44 = v72;
  }

  v50 = v79;
  v51 = v73;
  (*(v79 + 16))(v75, v73 + v44[12], v48);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458]);
  v52 = v76;
  SymmetricKey.init<A>(data:)();
  v53 = v78;
  v54 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKFAK6SHA384V_Tg5(v77, v52, v70);
  v56 = v55;
  v58 = v57;
  (*(v50 + 8))(v52, v48);
  if (v53)
  {
    outlined destroy of P256.Signing.PrivateKey?(v49, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v59 = v69;
    *v69 = v54;
    v59[1] = v56;
    *(v59 + 16) = v58;
  }

  else
  {
    v60 = v65;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v51, v65, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v61 = v64;
    outlined init with copy of Any?(v49, v64, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    ServerHandshakeState.ServerHelloState.init(originalState:keyScheduler:)(v60, v61, v66);
    outlined destroy of P256.Signing.PrivateKey?(v49, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  }

  return v54;
}

uint64_t specialized ServerSessionKeyManager.clientHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t specialized ServerSessionKeyManager.serverHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c19EncryptedExtensionsE0V07sendingcfG008originalE006serverfG0AE5state_AA10ByteBufferV0jfG5BytestAC0c5HelloE0V_AA0fG0VtAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v43 - v14;
  outlined init with copy of Any?(a2 + v8[5], v43 - v14, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v45 = xmmword_1B26C6130;
  v46 = 0;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)(a3);
  v44 = *(&v45 + 1);
  v47 = v45;
  v43[1] = v46;
  v16 = v43[2];
  v17 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v45, *(&v45 + 1), v46);
  if (v16)
  {
    v20 = v17;
    v21 = v18;
    v22 = v19;
    outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    outlined consume of Data._Representation(v47, v44);
    *a4 = v20;
    *(a4 + 8) = v21;
    *(a4 + 16) = v22;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v23 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
    outlined init with take of P256.Signing.PublicKey?(v15, a1 + v23[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v11, a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v24 = &v11[v8[6]];
    v25 = *v24;
    LOBYTE(v24) = v24[2];
    v26 = a1 + v23[6];
    *v26 = v25;
    *(v26 + 2) = v24;
    v27 = &v11[v8[7]];
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = (a1 + v23[7]);
    *v31 = v28;
    v31[1] = v29;
    v31[2] = v30;
    v32 = &v11[v8[8]];
    v33 = *v32;
    v34 = *(v32 + 1);
    v35 = (a1 + v23[8]);
    *v35 = v33;
    v35[1] = v34;
    *(a1 + v23[9]) = *&v11[v8[9]];
    *(a1 + v23[10]) = v11[v8[10]];
    *(a1 + v23[11]) = v11[v8[11]];
    v36 = &v11[v8[12]];
    LOWORD(v33) = *v36;
    LOBYTE(v36) = v36[2];
    v37 = a1 + v23[12];
    *v37 = v33;
    *(v37 + 2) = v36;
    v38 = &v11[v8[13]];
    LOWORD(v33) = *v38;
    LOBYTE(v38) = v38[2];
    v39 = a1 + v23[13];
    *v39 = v33;
    *(v39 + 2) = v38;
    *(a1 + v23[14]) = v11[v8[15]];
    outlined init with copy of Any?(&v11[v8[16]], a1 + v23[15], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v40 = v11[v8[17]];
    outlined copy of Data?(v28, v29);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
    *(a1 + v23[16]) = v40;
    a1 = v47;
    v41 = v44;
    outlined copy of Data._Representation(v47, v44);
    outlined consume of Data._Representation(a1, v41);
  }

  return a1;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c11CertificateE0V07sendingcF008originalE0AE5state_AA10ByteBufferV06serverF5BytestAC0c19EncryptedExtensionsE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v77 = a3;
  v72 = a1;
  v80 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v4 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P256.Signing.PublicKey();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v66 - v15;
  v17 = type metadata accessor for P256.Signing.PrivateKey();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v23 = a2;
  outlined init with copy of Any?(a2 + *(v22 + 20), v16, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v16, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
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
      *v27 = 0;
      _os_log_impl(&dword_1B25F5000, v25, v26, "server attempting to send Certificate message but was not configured with a signing key. EPSK or PAKE negotiation probably failed.", v27, 2u);
      MEMORY[0x1B274ECF0](v27, -1, -1);
    }

    v78 = xmmword_1B26C94A0;
    v28 = 2;
    LOBYTE(v79) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v29 = 0;
    v30 = 24;
  }

  else
  {
    v68 = v18;
    v69 = v17;
    (*(v18 + 32))(v21, v16, v17);
    v31 = a2 + *(v80 + 20);
    v32 = v73;
    outlined init with copy of Any?(v31, v73, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1B26C6030;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v34 = P256.Signing.PublicKey.derRepresentation.getter();
    v36 = v35;
    (*(v74 + 8))(v9, v75);
    v37 = 0;
    v38 = v36 >> 62;
    v67 = v23;
    v70 = v21;
    if ((v36 >> 62) > 1)
    {
      if (v38 == 2)
      {
        v37 = *(v34 + 16);
      }
    }

    else if (v38)
    {
      v37 = v34;
    }

    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v39 = MEMORY[0x1E69E7CC0];
    *(v33 + 48) = v37;
    *(v33 + 56) = v39;
    v78 = xmmword_1B26C6130;
    v79 = 0;
    specialized ByteBuffer.writeHandshakeMessage<A>(_:)(0, 0xC000000000000000, 0, v33);
    v40 = v76;
    v41 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v78, *(&v78 + 1), v79);
    v44 = v80;
    if (!v40)
    {
      outlined consume of Data._Representation(0, 0xC000000000000000);

      (*(v68 + 8))(v70, v69);
      v47 = v71;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v67, v71, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v48 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
      v49 = v72;
      outlined init with take of P256.Signing.PublicKey?(v32, v72 + v48[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v47, v49, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v50 = v47 + v44[6];
      v51 = *v50;
      LOBYTE(v50) = *(v50 + 2);
      v52 = v49 + v48[6];
      *v52 = v51;
      *(v52 + 2) = v50;
      v53 = (v47 + v44[7]);
      v54 = *v53;
      v55 = v53[1];
      v56 = v53[2];
      v57 = (v49 + v48[7]);
      *v57 = v54;
      v57[1] = v55;
      v57[2] = v56;
      v58 = (v47 + v44[8]);
      v59 = *v58;
      v60 = v58[1];
      v61 = (v49 + v48[8]);
      *v61 = v59;
      v61[1] = v60;
      *(v49 + v48[9]) = *(v47 + v44[9]);
      *(v49 + v48[10]) = *(v47 + v44[11]);
      v62 = v47 + v44[13];
      LOWORD(v59) = *v62;
      LOBYTE(v62) = *(v62 + 2);
      v63 = v49 + v48[11];
      *v63 = v59;
      *(v63 + 2) = v62;
      *(v49 + v48[12]) = *(v47 + v44[14]);
      v64 = *(v47 + v44[16]);
      outlined copy of Data?(v54, v55);

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v47, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      *(v49 + v48[13]) = v64;
      v65 = *(&v78 + 1);
      v29 = v78;
      outlined copy of Data._Representation(v78, *(&v78 + 1));
      outlined consume of Data._Representation(v29, v65);
      return v29;
    }

    v30 = v41;
    v29 = v42;
    v28 = v43;
    outlined consume of Data._Representation(0, 0xC000000000000000);

    outlined destroy of P256.Signing.PrivateKey?(v32, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v68 + 8))(v70, v69);
    outlined consume of Data._Representation(v78, *(&v78 + 1));
  }

  v45 = v77;
  *v77 = v30;
  v45[1] = v29;
  *(v45 + 16) = v28;
  return v29;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c17CertificateVerifyE0V07sendingcfG008originalE0AE5state_AA10ByteBufferV06serverfG5BytestAC0cfE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v91 = a3;
  v84 = a1;
  v4 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for P256.Signing.ECDSASignature();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v75 - v16;
  v18 = type metadata accessor for P256.Signing.PrivateKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  outlined init with copy of Any?(a2 + *(v23 + 20), v17, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v17, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
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
      *v27 = 0;
      _os_log_impl(&dword_1B25F5000, v25, v26, "server attempting to send Certificate message but was not configured with a signing key. shouldn't get here", v27, 2u);
      MEMORY[0x1B274ECF0](v27, -1, -1);
    }

    v89 = xmmword_1B26C94A0;
    v28 = 2;
    LOBYTE(v90) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v29 = 0;
    v30 = 24;
    goto LABEL_25;
  }

  (*(v19 + 32))(v22, v17, v18);
  outlined init with copy of Any?(a2 + *(v4 + 20), v13, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v31 = (a2 + *(v4 + 24));
  if (v31[1])
  {
    v32 = v18;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, logger);
    v34 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v26))
    {
      v35 = v22;
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1B25F5000, v34, v26, "missing negotiated signature algorithm in server certificate verify", v36, 2u);
      v37 = v36;
      v22 = v35;
      MEMORY[0x1B274ECF0](v37, -1, -1);
    }

    v89 = xmmword_1B26C6400;
    v28 = 2;
    LOBYTE(v90) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v19 + 8))(v22, v32);
    v29 = 0;
    v30 = 6;
    goto LABEL_25;
  }

  v81 = v18;
  v82 = v22;
  v38 = *v31;
  v26 = v13;
  v39 = v88;
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5();
  v30 = result;
  v29 = v41;
  v28 = v42;
  if (v39)
  {
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v19 + 8))(v82, v81);
    goto LABEL_25;
  }

  v43 = v41 >> 62;
  if ((v41 >> 62) > 1)
  {
    if (v43 == 2)
    {
      v44 = *(result + 24);
    }

    else
    {
      v44 = 0;
    }
  }

  else if (v43)
  {
    v44 = result >> 32;
  }

  else
  {
    v44 = BYTE6(v41);
  }

  v88 = 0;
  v80 = v38;
  if (v44 >= v42)
  {
    v45 = Data._Representation.subscript.getter();
    v47 = v46;
    v48 = v30;
    v49 = v45;
    outlined consume of Data._Representation(v48, v29);
    *&v89 = v49;
    *(&v89 + 1) = v47;
    lazy protocol witness table accessor for type Data and conformance Data();
    v51 = v87;
    v50 = v88;
    v26 = v82;
    P256.Signing.PrivateKey.signature<A>(for:)();
    if (!v50)
    {
      v78 = v49;
      v53 = P256.Signing.ECDSASignature.derRepresentation.getter();
      v55 = v54;
      (*(v85 + 8))(v51, v86);
      v56 = v55 >> 62;
      v76 = a2;
      v77 = v4;
      v79 = v47;
      if ((v55 >> 62) > 1)
      {
        v57 = 0;
        v58 = v53;
        if (v56 == 2)
        {
          v57 = *(v53 + 16);
        }
      }

      else
      {
        if (v56)
        {
          v57 = v53;
        }

        else
        {
          v57 = 0;
        }

        v58 = v53;
      }

      v89 = xmmword_1B26C6130;
      v90 = 0;
      specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v80, v58, v55, v57);
      v87 = *(&v89 + 1);
      v88 = v89;
      _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v89, *(&v89 + 1), v90);
      outlined consume of Data._Representation(v78, v79);
      outlined consume of Data._Representation(v58, v55);
      v59 = v83;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v76, v83, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v60 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
      v61 = v84;
      outlined init with take of P256.Signing.PublicKey?(v13, v84 + v60[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v62 = (v61 + v60[7]);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v59, v61, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v63 = v77;
      v64 = (v59 + v77[7]);
      v65 = *v64;
      v66 = v64[1];
      v67 = v64[2];
      v68 = (v61 + v60[6]);
      *v68 = v65;
      v68[1] = v66;
      v68[2] = v67;
      v69 = (v59 + v63[8]);
      v70 = v69[1];
      *v62 = *v69;
      v62[1] = v70;
      *(v61 + v60[8]) = *(v59 + v63[9]);
      *(v61 + v60[9]) = *(v59 + v63[10]);
      v71 = v59 + v63[11];
      v72 = *v71;
      LOBYTE(v71) = *(v71 + 2);
      v73 = v61 + v60[10];
      *v73 = v72;
      *(v73 + 2) = v71;
      *(v61 + v60[11]) = *(v59 + v63[12]);
      LOBYTE(v62) = *(v59 + v63[13]);
      outlined copy of Data?(v65, v66);

      v26 = v88;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v59, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      *(v61 + v60[12]) = v62;
      v74 = v87;
      outlined copy of Data._Representation(v26, v87);
      outlined consume of Data._Representation(v26, v74);
      (*(v19 + 8))(v82, v81);
      return v26;
    }

    v89 = xmmword_1B26C6420;
    v28 = 2;
    LOBYTE(v90) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v49, v47);
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v19 + 8))(v26, v81);
    v29 = 0;
    v30 = 32;
LABEL_25:
    v52 = v91;
    *v91 = v30;
    v52[1] = v29;
    *(v52 + 16) = v28;
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0023serverCertificateVerifyE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v60 = a3;
  v51 = a1;
  v5 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v47 - v15;
  outlined init with copy of Any?(a2 + *(v5 + 20), &v47 - v15, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v58, v12);
  if (v3)
  {
    v17 = v58[0];
    v18 = v58[1];
    v19 = v59;
    outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v28 = v60;
    *v60 = v17;
    v28[1] = v18;
    *(v28 + 16) = v19;
  }

  else
  {
    v48 = v5;
    v49 = a2;
    v50 = v8;
    v56 = v9;
    v57 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    v21 = v52;
    (*(v52 + 16))(boxed_opaque_existential_1, v12, v9);
    __swift_project_boxed_opaque_existential_0(v55, v56);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v21 + 8))(v12, v9);
    v23 = v53;
    v22 = v54;
    __swift_destroy_boxed_opaque_existential_0(v55);
    v24 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      v25 = 0;
      v27 = v49;
      v26 = v50;
      if (v24 == 2)
      {
        v25 = *(v23 + 16);
      }
    }

    else
    {
      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      v27 = v49;
      v26 = v50;
    }

    v17 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v23, v22, v25);
    outlined consume of Data._Representation(v23, v22);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v27, v26, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    v30 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    v31 = v51;
    outlined init with take of P256.Signing.PublicKey?(v16, v51 + v30[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v26, v31, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v32 = v48;
    v33 = v26 + v48[6];
    v34 = *(v33 + 8);
    v60 = *v33;
    v52 = v34;
    v35 = *(v33 + 16);
    v36 = (v31 + v30[6]);
    *v36 = v60;
    v36[1] = v34;
    v36[2] = v35;
    v37 = (v26 + v32[7]);
    v38 = *v37;
    v49 = v37[1];
    v39 = v49;
    v50 = v35;
    v40 = (v31 + v30[7]);
    *v40 = v38;
    v40[1] = v39;
    *(v31 + v30[8]) = *(v26 + v32[8]);
    *(v31 + v30[9]) = *(v26 + v32[9]);
    v41 = v31 + v30[10];
    *v41 = 0;
    *(v41 + 2) = 1;
    v42 = v26 + v32[10];
    LOWORD(v38) = *v42;
    LOBYTE(v42) = *(v42 + 2);
    v43 = v31 + v30[11];
    *v43 = v38;
    *(v43 + 2) = v42;
    *(v31 + v30[12]) = 0;
    *(v31 + v30[13]) = *(v26 + v32[11]);
    v44 = v26;
    v45 = v30[14];
    v46 = type metadata accessor for PAKEServerState(0);
    (*(*(v46 - 8) + 56))(v31 + v45, 1, 1, v46);
    LOBYTE(v45) = *(v44 + v32[12]);
    outlined copy of Data?(v60, v52);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v44, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    *(v31 + v30[15]) = v45;
  }

  return v17;
}

uint64_t specialized ServerSessionKeyManager.serverApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0025serverEncryptedExtensionsE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v19;
  if (*(a2 + v7[10]) & 1) == 0 && (*(a2 + v7[12] + 2))
  {
    __break(1u);
  }

  else
  {
    v33 = v20;
    outlined init with copy of Any?(a2 + v7[5], &v32 - v19, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v39, v14);
    if (v3)
    {
      v22 = v39[0];
      v23 = v39[1];
      v24 = v40;
      outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      *a3 = v22;
      *(a3 + 8) = v23;
      *(a3 + 16) = v24;
    }

    else
    {
      v32 = a1;
      v37 = v10;
      v38 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
      (*(v11 + 16))(boxed_opaque_existential_1, v14, v10);
      __swift_project_boxed_opaque_existential_0(v36, v37);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v11 + 8))(v14, v10);
      v27 = v34;
      v26 = v35;
      __swift_destroy_boxed_opaque_existential_0(v36);
      v28 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        v29 = 0;
        if (v28 == 2)
        {
          v29 = *(v27 + 16);
        }
      }

      else if (v28)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      v22 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v27, v26, v29);
      v30 = v41;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v41, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v31 = v33;
      outlined init with copy of Any?(v21, v33, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      ServerHandshakeState.ServerFinishedState.init(originalState:keyScheduler:)(v30, v31, v32);
      outlined consume of Data._Representation(v27, v26);
      outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    }

    return v22;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO05ReadyE0V23receivingClientFinished08originalE006clientI00kI5BytesAeC0ciE0V_AA0I7MessageVAA10ByteBufferVtAA8TLSErrorOYKFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v101 = a3;
  v102 = a8;
  v95 = a7;
  v99 = a5;
  v100 = a6;
  v97 = a2;
  v98 = a4;
  v93 = a9;
  v10 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v92 = &v87 - v15;
  v91 = type metadata accessor for PAKEServerState(0);
  v90 = *(v91 - 8);
  v16 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v96 = *(v19 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v87 - v25;
  v27 = a1;
  outlined init with copy of Any?(a1 + *(v10 + 20), &v87 - v25, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v28 = v109;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v105, v22);
  if (v28)
  {
    v30 = v105[0];
    v29 = v105[1];
    v31 = v106;
    result = outlined destroy of P256.Signing.PrivateKey?(v26, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
LABEL_17:
    v47 = v102;
    *v102 = v30;
    v47[1] = v29;
    *(v47 + 16) = v31;
    return result;
  }

  v34 = v99;
  v33 = v100;
  v109 = v27;
  v87 = v18;
  v88 = v10;
  v35 = v101 >> 62;
  v89 = v26;
  if ((v101 >> 62) > 1)
  {
    v36 = v19;
    if (v35 == 2)
    {
      v37 = *(v97 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v36 = v19;
    if (v35)
    {
      v37 = v97 >> 32;
    }

    else
    {
      v37 = BYTE6(v101);
    }
  }

  if (v37 < v98)
  {
    __break(1u);
    goto LABEL_35;
  }

  v19 = Data._Representation.subscript.getter();
  v10 = v38;
  *&v103 = v19;
  *(&v103 + 1) = v38;
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  if ((static MessageAuthenticationCode.== infix<A>(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_14:
      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, logger);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v96;
      if (v42)
      {
        v44 = v19;
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1B25F5000, v40, v41, "invalid client finished payload", v45, 2u);
        v46 = v45;
        v19 = v44;
        MEMORY[0x1B274ECF0](v46, -1, -1);
      }

      v103 = xmmword_1B26C6400;
      v31 = 2;
      v104 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v19, v10);
      (*(v43 + 8))(v22, v36);
      result = outlined destroy of P256.Signing.PrivateKey?(v89, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v29 = 0;
      v30 = 6;
      goto LABEL_17;
    }

LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  v98 = v19;
  v101 = v10;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v34, v33, v95);
  v100 = v22;
  v48 = v88;
  v49 = v109;
  v50 = v92;
  outlined init with copy of Any?(v109 + v88[14], v92, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v51 = v91;
  v52 = (*(v90 + 48))(v50, 1, v91);
  v53 = v96;
  if (v52 == 1)
  {
    (*(v96 + 8))(v100, v36);
    outlined consume of Data._Representation(v98, v101);
    outlined destroy of P256.Signing.PrivateKey?(v50, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v54 = v93;
    v55 = v94;
  }

  else
  {
    v56 = v87;
    outlined init with take of ServerHandshakeState.IdleState(v50, v87, type metadata accessor for PAKEServerState);
    v57 = v56 + *(v51 + 32);
    v58 = *(v57 + 104);
    v108 = *(v57 + 120);
    v59 = *(v57 + 88);
    v107[0] = *(v57 + 72);
    v107[1] = v59;
    v107[2] = v58;
    v54 = v93;
    if (one-time initialization token for SwiftTLSPAKELimiter != -1)
    {
      swift_once();
    }

    v60 = (*(*SwiftTLSPAKELimiter + 112))(v107);
    v55 = v94;
    if ((v60 & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, logger);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v101;
      if (v84)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_1B25F5000, v82, v83, "error restoring PAKE Credential Attempt. This should never happen.", v86, 2u);
        MEMORY[0x1B274ECF0](v86, -1, -1);
      }

      v30 = 0xD000000000000027;

      v29 = 0x80000001B26CDDC0;
      *&v103 = 0xD000000000000027;
      *(&v103 + 1) = 0x80000001B26CDDC0;
      v31 = 1;
      v104 = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v98, v85);
      (*(v53 + 8))(v100, v36);
      outlined destroy of P256.Signing.PrivateKey?(v89, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v87, type metadata accessor for PAKEServerState);
      goto LABEL_17;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, logger);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1B25F5000, v62, v63, "restored PAKE credential attempt", v64, 2u);
      v65 = v64;
      v48 = v88;
      MEMORY[0x1B274ECF0](v65, -1, -1);
    }

    outlined consume of Data._Representation(v98, v101);

    (*(v53 + 8))(v100, v36);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v87, type metadata accessor for PAKEServerState);
    v49 = v109;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v49, v55, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v49, v54, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  outlined init with take of P256.Signing.PublicKey?(v89, v54 + ready[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v67 = (v55 + v48[6]);
  v68 = *v67;
  v69 = v67[1];
  v70 = v67[2];
  v71 = (v54 + ready[6]);
  *v71 = v68;
  v71[1] = v69;
  v71[2] = v70;
  v72 = (v55 + v48[7]);
  v73 = *v72;
  v74 = v72[1];
  v75 = (v54 + ready[7]);
  *v75 = v73;
  v75[1] = v74;
  *(v54 + ready[8]) = *(v55 + v48[8]);
  *(v54 + ready[9]) = *(v55 + v48[9]);
  v76 = v55 + v48[10];
  LOWORD(v73) = *v76;
  LOBYTE(v76) = *(v76 + 2);
  v77 = v54 + ready[10];
  *v77 = v73;
  *(v77 + 2) = v76;
  v78 = v55 + v48[11];
  LOWORD(v73) = *v78;
  LOBYTE(v78) = *(v78 + 2);
  v79 = v54 + ready[11];
  *v79 = v73;
  *(v79 + 2) = v78;
  *(v54 + ready[12]) = *(v55 + v48[12]);
  *(v54 + ready[13]) = *(v55 + v48[13]);
  v80 = *(v55 + v48[15]);
  outlined copy of Data?(v68, v69);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v55, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  *(v54 + ready[14]) = v80;
  return result;
}

uint64_t specialized ServerSessionKeyManager.clientApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t ServerHandshakeState.IdleState.epsks.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerHandshakeState.IdleState(0) + 24));
}

uint64_t ServerHandshakeState.IdleState.externalPSKSelectionCallback.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.IdleState(0) + 28));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t ServerHandshakeState.IdleState.pakeRecords.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.IdleState(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  outlined copy of PAKEServerRecords?(*v1);
  return v2;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientOfferedSignatureAlgs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientRequestedServerCertificateTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientALPN.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientOfferedPSKs.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  outlined copy of PAKEServerRecords?(v1);
  return v1;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientOfferedPSKs.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  result = outlined consume of Extension.PreSharedKey.OfferedPSKs?(*(v2 + 88));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.externalPSKSelectionCallback.getter()
{
  v1 = *(v0 + 216);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v1, *(v0 + 224));
  return v1;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.pakeRecords.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  outlined copy of PAKEServerRecords?(v1);
  return v1;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16processExtensionyyAA0J0OAA8TLSErrorOYKF(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v61 = *(a1 + 40);
  v62 = *(a1 + 24);
  v60 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v8 = 0;
  switch(v6 >> 4)
  {
    case 1u:
      v8 = 10;
      break;
    case 2u:
      v8 = 43;
      break;
    case 3u:
      v8 = 16;
      break;
    case 4u:
      v8 = 51;
      break;
    case 5u:
      v8 = 42;
      break;
    case 6u:
      v8 = 13;
      break;
    case 7u:
      v8 = 20;
      break;
    case 8u:
      v8 = 57;
      break;
    case 9u:
      v8 = 45;
      break;
    case 0xAu:
      v8 = 41;
      break;
    case 0xBu:
      v8 = 58;
      break;
    case 0xCu:
      v8 = 35387;
      break;
    case 0xDu:
      v8 = *a1;
      break;
    default:
      break;
  }

  if (specialized Set._Variant.insert(_:)(&v74, v8, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMd, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMR))
  {
    v9 = v3;
    v10 = *a1;
    v11 = *(a1 + 16);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 80);
    switch(v15 >> 4)
    {
      case 1u:
        v16 = *(v1 + 16);
        v63 = *a1;

        *(v1 + 16) = v63;
        return 5;
      case 2u:
        if (BYTE8(v10))
        {
          goto LABEL_42;
        }

        v34 = *(v1 + 24);
        v67 = v10;
        sub_1B260EDD8(v2, v9 & 1);

        *(v1 + 24) = v67;
        return 5;
      case 3u:
        if (v11)
        {
          goto LABEL_42;
        }

        v25 = *(v1 + 80);
        v65 = v10;
        outlined copy of Extension.ApplicationLayerProtocolNegotiation();

        *(v1 + 80) = v65;
        return 5;
      case 4u:
        if ((v11 & 0x3000000000000000) != 0)
        {
          goto LABEL_42;
        }

        v36 = *(v1 + 8);
        v69 = v10;
        outlined copy of Extension.KeyShare(v2, v9, v4);

        *(v1 + 8) = v69;
        return 5;
      case 5u:
        *(v1 + 104) = 1;
        return 5;
      case 6u:
        v35 = *(v1 + 32);
        v68 = *a1;

        *(v1 + 32) = v68;
        return 5;
      case 7u:
        if (BYTE8(v10))
        {
          goto LABEL_42;
        }

        v47 = *(v1 + 40);
        v72 = v10;
        sub_1B260EDD8(v2, v9 & 1);

        *(v1 + 40) = v72;
        return 5;
      case 8u:
        v31 = *(v1 + 56);
        v32 = *(v1 + 64);
        v33 = *(v1 + 72);
        v66 = v10;
        v58 = v11;
        outlined copy of Data._Representation(v2, v9);
        outlined consume of ByteBuffer?(v31, v32);
        *(v1 + 56) = v66;
        *(v1 + 72) = v58;
        return 5;
      case 9u:
        v38 = *(v1 + 48);
        v71 = *a1;

        *(v1 + 48) = v71;
        return 5;
      case 0xAu:
        if (v11)
        {
          goto LABEL_42;
        }

        v23 = *(v1 + 88);
        v24 = *(v1 + 96);
        v64 = v10;

        outlined consume of Extension.PreSharedKey.OfferedPSKs?(v23);
        *(v1 + 88) = v64;
        return 5;
      case 0xBu:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, logger);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_76;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B25F5000, v27, v28, "skipped processing ticket_request in CH", v29, 2u);
        v30 = v29;
        goto LABEL_75;
      case 0xCu:
        if (v15)
        {
          goto LABEL_42;
        }

        v37 = *(v1 + 112);
        v56 = *(v1 + 128);
        v57 = *(v1 + 120);
        v54 = *(v1 + 144);
        v55 = *(v1 + 136);
        v52 = *(v1 + 160);
        v53 = *(v1 + 152);
        *&v74 = v2;
        *(&v74 + 1) = v9;
        v59 = v11;
        v76 = v62;
        v77 = v61;
        v78 = v60;
        v75 = v4;
        v79 = v5;
        v80 = v6 & 0xF;
        v70 = v10;
        outlined init with copy of Extension.PAKE(&v74, v73);
        outlined consume of Extension.PAKE.PAKEClientHello?(v37, v57, v56, v55, v54, v53, v52);
        *(v1 + 112) = v70;
        *(v1 + 128) = v59;
        *(v1 + 144) = v13;
        *(v1 + 152) = v12;
        *(v1 + 160) = v14;
        break;
      case 0xDu:
LABEL_42:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, logger);
        outlined init with copy of Extension(a1, &v74);
        v27 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        outlined destroy of Extension(a1);
        if (os_log_type_enabled(v27, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v74 = v42;
          *v41 = 136315138;
          v43 = 0;
          switch(*(a1 + 80) >> 4)
          {
            case 1:
              v43 = 10;
              break;
            case 2:
              v43 = 43;
              break;
            case 3:
              v43 = 16;
              break;
            case 4:
              v43 = 51;
              break;
            case 5:
              v43 = 42;
              break;
            case 6:
              v43 = 13;
              break;
            case 7:
              v43 = 20;
              break;
            case 8:
              v43 = 57;
              break;
            case 9:
              v43 = 45;
              break;
            case 0xA:
              v43 = 41;
              break;
            case 0xB:
              v43 = 58;
              break;
            case 0xC:
              v43 = -30149;
              break;
            case 0xD:
              v43 = *a1;
              break;
            default:
              break;
          }

          v48 = ExtensionType.description.getter(v43);
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v74);

          *(v41 + 4) = v50;
          _os_log_impl(&dword_1B25F5000, v27, v40, "skipped unknown/unsupported client extension with raw value %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x1B274ECF0](v42, -1, -1);
          v30 = v41;
LABEL_75:
          MEMORY[0x1B274ECF0](v30, -1, -1);
        }

LABEL_76:

        break;
      default:
        return 5;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    outlined init with copy of Extension(a1, &v74);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    outlined destroy of Extension(a1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v74 = v21;
      *v20 = 136315138;
      v22 = 0;
      switch(*(a1 + 80) >> 4)
      {
        case 1:
          v22 = 10;
          break;
        case 2:
          v22 = 43;
          break;
        case 3:
          v22 = 16;
          break;
        case 4:
          v22 = 51;
          break;
        case 5:
          v22 = 42;
          break;
        case 6:
          v22 = 13;
          break;
        case 7:
          v22 = 20;
          break;
        case 8:
          v22 = 57;
          break;
        case 9:
          v22 = 45;
          break;
        case 0xA:
          v22 = 41;
          break;
        case 0xB:
          v22 = 58;
          break;
        case 0xC:
          v22 = -30149;
          break;
        case 0xD:
          v22 = *a1;
          break;
        default:
          break;
      }

      v44 = ExtensionType.description.getter(v22);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v74);

      *(v20 + 4) = v46;
      _os_log_impl(&dword_1B25F5000, v18, v19, "client offered duplicate extension of type %s on server hello", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B274ECF0](v21, -1, -1);
      MEMORY[0x1B274ECF0](v20, -1, -1);
    }

    v74 = xmmword_1B26C6410;
    LOBYTE(v75) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v81 = 1;
  }

  return 5;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult.binderValue.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0) + 24));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data._Representation(*v1, v1[1]);
  return v2;
}

int *ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult.init(negotiatedPSK:pskIndex:binderValue:bindersArrayLength:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of ServerHandshakeState.IdleState(a1, a7, type metadata accessor for GeneralEPSK);
  result = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  *(a7 + result[5]) = a2;
  v14 = (a7 + result[6]);
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  *(a7 + result[7]) = a6;
  return result;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = v5;
  v400 = a2;
  v399 = a1;
  v436 = *MEMORY[0x1E69E9840];
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v10 = *(*(v402 - 8) + 64);
  MEMORY[0x1EEE9AC00](v402);
  v12 = &v375 - v11;
  v13 = type metadata accessor for RawEPSK(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v406 = (&v375 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ImportedPSK(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v405 = &v375 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v407 = &v375 - v20;
  v415 = type metadata accessor for PSK(0);
  v21 = *(*(v415 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v415);
  v411 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v408 = &v375 - v24;
  v25 = type metadata accessor for GeneralEPSK(0);
  v404 = *(v25 - 8);
  v26 = *(v404 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v409 = &v375 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v410 = &v375 - v32;
  v33 = v4[11];
  if (!v33)
  {
LABEL_396:
    v347 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
    (*(*(v347 - 8) + 56))(a4, 1, 1, v347);
    goto LABEL_397;
  }

  v392 = v12;
  v393 = v31;
  v413 = v4;
  v34 = v4[12];
  v396 = v30;
  v397 = v34;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_418;
  }

  while (1)
  {
    v35 = type metadata accessor for Logger();
    v416 = __swift_project_value_buffer(v35, logger);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B25F5000, v36, v37, "client offered psks, attempting to negotiate", v6, 2u);
      MEMORY[0x1B274ECF0](v6, -1, -1);
    }

    v38 = v413;
    v39 = v413[6];
    if (!v39)
    {
      v318 = Logger.logObject.getter();
      v319 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v318, v319))
      {
        v320 = swift_slowAlloc();
        *v320 = 0;
        _os_log_impl(&dword_1B25F5000, v318, v319, "client sent psk extension without psk_key_exchange_modes", v320, 2u);
        MEMORY[0x1B274ECF0](v320, -1, -1);
      }

      v422 = xmmword_1B26C94C0;
      v423 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v321 = 25;
      goto LABEL_386;
    }

    v40 = *(v39 + 16);
    v41 = (v39 + 32);
    do
    {
      if (!v40)
      {
        v322 = Logger.logObject.getter();
        v323 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v322, v323))
        {
          v324 = swift_slowAlloc();
          *v324 = 0;
          _os_log_impl(&dword_1B25F5000, v322, v323, "server ignoring offererd pre shared keys because it did not offer psk_dhe mode", v324, 2u);
          MEMORY[0x1B274ECF0](v324, -1, -1);
        }

        goto LABEL_396;
      }

      v42 = *v41++;
      --v40;
    }

    while (v42 != 1);
    v43 = *(v33 + 16);
    if (v43 != *(v397 + 16))
    {
      v325 = Logger.logObject.getter();
      v326 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v325, v326))
      {
        v327 = swift_slowAlloc();
        *v327 = 0;
        _os_log_impl(&dword_1B25F5000, v325, v326, "offered psk identities doesn't match number of binders", v327, 2u);
        MEMORY[0x1B274ECF0](v327, -1, -1);
      }

      v422 = xmmword_1B26C94B0;
      v423 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v321 = 33;
LABEL_386:
      *a3 = v321;
      *(a3 + 8) = 0;
      *(a3 + 16) = 2;
      goto LABEL_397;
    }

    v382 = a4;
    v403 = v43;
    if (!v43)
    {
      v380 = 0;
      v387 = MEMORY[0x1E69E7CC0];
      v388 = MEMORY[0x1E69E7CC0];
LABEL_388:
      v328 = swift_allocBox();
      v330 = v329;
      (*(v404 + 56))(v329, 1, 1, v396);
      v331 = swift_allocObject();
      *(v331 + 16) = 0;
      *(v331 + 18) = 1;
      v332 = v413;
      v333 = v413[27];
      if (v333)
      {
        v334 = v413[28];
        v335 = swift_allocObject();
        v401 = v8;
        v336 = v335;
        v337 = v332[13];
        *(v335 + 208) = v332[12];
        *(v335 + 224) = v337;
        *(v335 + 240) = v332[14];
        *(v335 + 249) = *(v332 + 233);
        v338 = v332[9];
        *(v335 + 144) = v332[8];
        *(v335 + 160) = v338;
        v339 = v332[11];
        *(v335 + 176) = v332[10];
        *(v335 + 192) = v339;
        v340 = v332[5];
        *(v335 + 80) = v332[4];
        *(v335 + 96) = v340;
        v341 = v332[7];
        *(v335 + 112) = v332[6];
        *(v335 + 128) = v341;
        v342 = v332[1];
        *(v335 + 16) = *v332;
        *(v335 + 32) = v342;
        v343 = v332[3];
        *(v335 + 48) = v332[2];
        *(v335 + 64) = v343;
        v344 = v387;
        *(v335 + 272) = v331;
        *(v335 + 280) = v344;
        *(v335 + 288) = v328;
        *(v335 + 296) = v399;
        *(v335 + 304) = v400;
        outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v333, v334);
        outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v332, &v422);

        v333(v388, _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKFySi_AA4EPSKVSgtcfU_Tf2nnnninn_nTA, v336);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v333);
      }

      else
      {
      }

      v345 = v393;
      swift_beginAccess();
      v346 = v392;
      outlined init with copy of Any?(v330, v392, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      if ((*(v404 + 48))(v346, 1, v396) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v346, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      }

      else
      {
        outlined init with take of ServerHandshakeState.IdleState(v346, v345, type metadata accessor for GeneralEPSK);
        swift_beginAccess();
        if (*(v331 + 18) != 1)
        {
          v349 = *(v331 + 16);
          v350 = Logger.logObject.getter();
          v351 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v350, v351))
          {
            v352 = v349;
            v353 = swift_slowAlloc();
            *v353 = 0;
            _os_log_impl(&dword_1B25F5000, v350, v351, "epsk selected", v353, 2u);
            v354 = v353;
            v349 = v352;
            MEMORY[0x1B274ECF0](v354, -1, -1);
          }

          v420 = v328;

          v355 = v393;
          v356 = v382;
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v393, v382, type metadata accessor for GeneralEPSK);
          if (v403 <= v349)
          {
            goto LABEL_454;
          }

          v357 = (v397 + 24 * v349);
          v358 = v357[4];
          v359 = v357[5];
          v360 = v357[6];
          outlined copy of Data._Representation(v358, v359);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v355, type metadata accessor for GeneralEPSK);
          v361 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
          *(v356 + v361[5]) = v349;
          v362 = (v356 + v361[6]);
          *v362 = v358;
          v362[1] = v359;
          v362[2] = v360;
          *(v356 + v361[7]) = v380;
          (*(*(v361 - 1) + 56))(v356, 0, 1, v361);

          goto LABEL_397;
        }

        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v345, type metadata accessor for GeneralEPSK);
      }

      a4 = v382;
      goto LABEL_396;
    }

    v44 = 0;
    v45 = (v397 + 48);
    v46 = v43;
    do
    {
      v47 = *(v45 - 2);
      v48 = *(v45 - 1);
      v49 = v48 >> 62;
      if ((v48 >> 62) > 1)
      {
        if (v49 == 2)
        {
          v51 = *(v47 + 24);
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        v50 = BYTE6(v48);
        v51 = v47 >> 32;
        if (!v49)
        {
          v51 = v50;
        }
      }

      v52 = __OFSUB__(v51, *v45);
      v53 = v51 - *v45;
      if (v52)
      {
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        outlined consume of Data._Representation(a3, v33);
        v371 = v391;
LABEL_404:
        v372 = v6;
LABEL_408:
        outlined consume of Data._Representation(v371, v372);
        outlined consume of Data._Representation(v38, v412);
        outlined consume of Data._Representation(v420, v414);
        v76 = v409;
LABEL_409:

        v365 = v382;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v76, v382, type metadata accessor for GeneralEPSK);
        v366 = v419;
        if (v419 >= 0x10000)
        {
          goto LABEL_459;
        }

        v367 = v76;
        v368 = *(v417 - 2);
        v369 = *(v417 - 1);
        v370 = *v417;
        outlined copy of Data._Representation(v368, v369);
LABEL_411:
        outlined consume of Data._Representation(v420, v414);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v367, type metadata accessor for GeneralEPSK);
        v373 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
        *(v365 + v373[5]) = v366;
        v374 = (v365 + v373[6]);
        *v374 = v368;
        v374[1] = v369;
        v374[2] = v370;
        *(v365 + v373[7]) = v380;
        (*(*(v373 - 1) + 56))(v365, 0, 1, v373);
LABEL_397:
        v348 = *MEMORY[0x1E69E9840];
        return;
      }

      v52 = __OFADD__(v44, v53);
      v44 += v53;
      if (v52)
      {
        goto LABEL_413;
      }

      v45 += 3;
      --v46;
    }

    while (v46);
    v380 = v44;
    v54 = 0;
    v395 = &v422;
    v55 = v33 + 56;
    v56 = v397 + 48;
    v389 = xmmword_1B26C6130;
    v387 = MEMORY[0x1E69E7CC0];
    v388 = MEMORY[0x1E69E7CC0];
    v378 = v397 + 48;
    v379 = v33 + 56;
LABEL_23:
    v33 = v55 + 32 * v54;
    v57 = (v56 + 24 * v54);
    v58 = v54;
LABEL_24:
    if (v58 < v43)
    {
      break;
    }

    __break(1u);
LABEL_416:
    __break(1u);
LABEL_417:
    __break(1u);
LABEL_418:
    swift_once();
  }

  if (__OFADD__(v58, 1))
  {
    goto LABEL_416;
  }

  v417 = v57;
  v418 = v58 + 1;
  v59 = *(v33 - 24);
  v6 = *(v33 - 16);
  v60 = *(v33 - 8);
  v61 = *v33;
  v419 = v58;
  v420 = v59;
  outlined copy of Data._Representation(v59, v6);
  if (v61)
  {
    v62 = Logger.logObject.getter();
    a3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, a3))
    {
      v63 = v60;
      v64 = v6;
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1B25F5000, v62, a3, "psk has non 0 obfuscated ticket age. still attempting to treat as an epsk.", v65, 2u);
      v66 = v65;
      v6 = v64;
      v60 = v63;
      MEMORY[0x1B274ECF0](v66, -1, -1);
    }
  }

  if ((*(v38 + 208) & 1) == 0)
  {
    a4 = (v6 >> 62);
    if ((v6 >> 62) > 1)
    {
      if (a4 == 2)
      {
        v67 = v420;
        v68 = *(v420 + 24);
        goto LABEL_38;
      }

      if (v60 > 0)
      {
        goto LABEL_417;
      }
    }

    else
    {
      if (!a4)
      {
        if (BYTE6(v6) < v60)
        {
          goto LABEL_417;
        }

        goto LABEL_41;
      }

      v67 = v420;
      v68 = v420 >> 32;
LABEL_38:
      outlined copy of Data._Representation(v67, v6);
      if (v68 < v60)
      {
        goto LABEL_417;
      }
    }

LABEL_41:
    v412 = v6 >> 62;
    a4 = v60;
    v69 = v420;
    a3 = Data._Representation.subscript.getter();
    v71 = v70;
    outlined consume of Data._Representation(v69, v6);
    outlined copy of Data._Representation(a3, v71);
    _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n(a3, v71, v428, &v430);
    if (v8)
    {
      v8 = 0;
      outlined consume of TLSError(v428[0], v428[1], v429);
      outlined consume of Data._Representation(a3, v71);
      outlined consume of Data._Representation(v69, v6);
      v58 = v419 + 1;
      v33 += 32;
      v57 = v417 + 3;
      v43 = v403;
      if (v418 == v403)
      {
        goto LABEL_388;
      }

      goto LABEL_24;
    }

    v186 = 0;
    v394 = a4;
    outlined consume of Data._Representation(a3, v71);
    v187 = *(v38 + 200);
    v188 = *(v187 + 16);
    v414 = v6;
    if (v188)
    {
      v189 = v187 + ((*(v404 + 80) + 32) & ~*(v404 + 80));
      v190 = v420;
      v377 = v420 >> 32;
      v381 = BYTE6(v6);
      v386 = *(v404 + 72);
      v191 = v410;
      while (1)
      {
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v189, v191, type metadata accessor for GeneralEPSK);
        v192 = v408;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v191, v408, type metadata accessor for PSK);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v401 = v186;
        if (EnumCaseMultiPayload == 1)
        {
          v194 = v406;
          outlined init with take of ServerHandshakeState.IdleState(v192, v406, type metadata accessor for RawEPSK);
          v195 = v194[1];
          v196 = v194[2];
          v391 = *v194;
          outlined copy of Data._Representation(v391, v195);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v194, type metadata accessor for RawEPSK);
          v398 = v195;
          v197 = v195 >> 62;
          if ((v195 >> 62) <= 1)
          {
            goto LABEL_227;
          }

          goto LABEL_290;
        }

        v391 = v188;
        v200 = v192;
        v201 = v407;
        outlined init with take of ServerHandshakeState.IdleState(v200, v407, type metadata accessor for ImportedPSK);
        v203 = *v201;
        v202 = *(v201 + 8);
        v204 = *(v201 + 16);
        v383 = *(v201 + 24);
        v205 = *(v201 + 40);
        v398 = *(v201 + 32);
        v206 = *(v201 + 48);
        v207 = *(v201 + 50);
        v426 = v389;
        v427 = 0;
        v208 = v202 >> 62;
        if ((v202 >> 62) > 1)
        {
          v209 = 0;
          if (v208 == 2)
          {
            v209 = *(v203 + 24);
          }
        }

        else if (v208)
        {
          v209 = v203 >> 32;
        }

        else
        {
          v209 = BYTE6(v202);
        }

        v52 = __OFSUB__(v209, v204);
        v210 = v209 - v204;
        if (v52)
        {
          goto LABEL_423;
        }

        if ((v210 & 0x8000000000000000) != 0)
        {
          goto LABEL_424;
        }

        LODWORD(v385) = v206;
        if (v210 >> 16)
        {
          goto LABEL_425;
        }

        v421 = bswap32(v210) >> 16;
        v424 = MEMORY[0x1E69E6290];
        v425 = MEMORY[0x1E6969DF8];
        *&v422 = &v421;
        *(&v422 + 1) = v395;
        v211 = __swift_project_boxed_opaque_existential_0(&v422, MEMORY[0x1E69E6290]);
        v213 = *v211;
        v212 = v211[1];
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v422);
        if (v208 > 1)
        {
          if (v208 == 2)
          {
            v215 = *(v203 + 16);
            v214 = *(v203 + 24);
          }

          else
          {
            v214 = 0;
            v215 = 0;
          }
        }

        else
        {
          if (v208)
          {
            v214 = v203 >> 32;
          }

          else
          {
            v214 = BYTE6(v202);
          }

          if (v208)
          {
            v215 = v203;
          }

          else
          {
            v215 = 0;
          }
        }

        v216 = v205;
        v217 = v398;
        if (v214 < v204 || v214 < v215)
        {
          goto LABEL_426;
        }

        v218 = Data._Representation.subscript.getter();
        v220 = v219;
        Data.append(_:)();
        outlined consume of Data._Representation(v218, v220);
        v390 = v189;
        LODWORD(v384) = v207;
        if (v217 >> 60 == 15)
        {
          v421 = 0;
          v221 = MEMORY[0x1E69E6290];
          v424 = MEMORY[0x1E69E6290];
          v222 = MEMORY[0x1E6969DF8];
          v425 = MEMORY[0x1E6969DF8];
          v223 = v395;
          *&v422 = &v421;
          *(&v422 + 1) = v395;
          v224 = __swift_project_boxed_opaque_existential_0(&v422, MEMORY[0x1E69E6290]);
          v226 = *v224;
          v225 = v224[1];
          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_0(&v422);
          v6 = v414;
          v190 = v420;
          goto LABEL_277;
        }

        v227 = v217 >> 62;
        if ((v217 >> 62) > 1)
        {
          break;
        }

        v228 = MEMORY[0x1E6969DF8];
        if (v227)
        {
          v230 = v383;
          v229 = v383 >> 32;
LABEL_259:
          outlined copy of Data._Representation(v230, v217);
          goto LABEL_261;
        }

        v229 = BYTE6(v217);
LABEL_261:
        v231 = v229 - v216;
        if (__OFSUB__(v229, v216))
        {
          goto LABEL_433;
        }

        if ((v231 & 0x8000000000000000) != 0)
        {
          goto LABEL_434;
        }

        if (v231 >> 16)
        {
          goto LABEL_435;
        }

        v421 = bswap32(v231) >> 16;
        v424 = MEMORY[0x1E69E6290];
        v425 = v228;
        *&v422 = &v421;
        *(&v422 + 1) = v395;
        v232 = __swift_project_boxed_opaque_existential_0(&v422, MEMORY[0x1E69E6290]);
        v234 = *v232;
        v233 = v232[1];
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v422);
        if (v227 > 1)
        {
          v235 = v383;
          if (v227 == 2)
          {
            v237 = *(v383 + 16);
            v236 = *(v383 + 24);
          }

          else
          {
            v236 = 0;
            v237 = 0;
          }
        }

        else
        {
          v235 = v383;
          if (v227)
          {
            v236 = v383 >> 32;
          }

          else
          {
            v236 = BYTE6(v217);
          }

          if (v227)
          {
            v237 = v383;
          }

          else
          {
            v237 = 0;
          }
        }

        if (v236 < v216 || v236 < v237)
        {
          goto LABEL_436;
        }

        v238 = Data._Representation.subscript.getter();
        v240 = v239;
        Data.append(_:)();
        outlined consume of ByteBuffer?(v235, v217);
        v241 = v240;
        v6 = v414;
        v190 = v420;
        outlined consume of Data._Representation(v238, v241);
        v223 = v395;
        v221 = MEMORY[0x1E69E6290];
        v222 = MEMORY[0x1E6969DF8];
LABEL_277:
        v421 = __rev16(v385);
        v424 = v221;
        v425 = v222;
        *&v422 = &v421;
        *(&v422 + 1) = v223;
        v242 = __swift_project_boxed_opaque_existential_0(&v422, v221);
        v244 = *v242;
        v243 = v242[1];
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v422);
        v421 = __rev16(v384);
        v424 = v221;
        v425 = v222;
        *&v422 = &v421;
        *(&v422 + 1) = v223;
        v245 = __swift_project_boxed_opaque_existential_0(&v422, v221);
        v247 = *v245;
        v246 = v245[1];
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_0(&v422);
        v248 = v426;
        v249 = *(&v426 + 1) >> 62;
        if ((*(&v426 + 1) >> 62) > 1)
        {
          v189 = v390;
          v188 = v391;
          if (v249 != 2)
          {
            goto LABEL_284;
          }

          v250 = *(v426 + 24);
        }

        else
        {
          v189 = v390;
          v188 = v391;
          if (!v249)
          {
            goto LABEL_284;
          }

          v250 = v426 >> 32;
        }

        if (v250 < 0)
        {
          goto LABEL_427;
        }

LABEL_284:
        v391 = Data._Representation.subscript.getter();
        v252 = v251;
        outlined consume of Data._Representation(v248, *(&v248 + 1));
        v196 = 0;
        v398 = v252;
        v197 = v252 >> 62;
        if ((v252 >> 62) > 1)
        {
          if (v197 == 2)
          {
            v196 = *(v391 + 16);
          }
        }

        else if (v197)
        {
          v196 = v391;
        }

        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v407, type metadata accessor for ImportedPSK);
        if (v197 <= 1)
        {
LABEL_227:
          v198 = v391;
          if (v197)
          {
            v199 = v391 >> 32;
          }

          else
          {
            v199 = BYTE6(v398);
          }

          goto LABEL_293;
        }

LABEL_290:
        v198 = v391;
        if (v197 == 2)
        {
          v199 = *(v391 + 24);
        }

        else
        {
          v199 = 0;
        }

LABEL_293:
        if (v199 < v196)
        {
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
          goto LABEL_422;
        }

        outlined copy of Data._Representation(v190, v6);
        v253 = Data._Representation.subscript.getter();
        v255 = v254;
        if (v412 > 1)
        {
          v257 = v394;
          if (v412 == 2)
          {
            v256 = *(v190 + 24);
          }

          else
          {
            v256 = 0;
          }
        }

        else
        {
          v256 = v381;
          v257 = v394;
          if (v412)
          {
            v256 = v377;
          }
        }

        if (v256 < v257)
        {
          goto LABEL_420;
        }

        v258 = Data._Representation.subscript.getter();
        v260 = v258;
        v261 = v259;
        v262 = v255 >> 62;
        v263 = v259 >> 62;
        if (v255 >> 62 == 3)
        {
          v264 = 0;
          if (!v253 && v255 == 0xC000000000000000 && v259 >> 62 == 3)
          {
            v264 = 0;
            if (!v258 && v259 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v363 = 0;
              v364 = 0xC000000000000000;
LABEL_405:
              outlined consume of Data._Representation(v363, v364);
              outlined consume of Data._Representation(v420, v414);
              outlined consume of Data._Representation(v198, v398);
              v191 = v410;
LABEL_406:

              v365 = v382;
              _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v191, v382, type metadata accessor for GeneralEPSK);
              v366 = v419;
              if (v419 < 0x10000)
              {
                v367 = v191;
                v368 = *(v417 - 2);
                v369 = *(v417 - 1);
                v370 = *v417;
                outlined copy of Data._Representation(v368, v369);
                outlined destroy of ImportedIdentity(&v430);
                goto LABEL_411;
              }

LABEL_460:
              __break(1u);
LABEL_461:
              __break(1u);
LABEL_462:
              __break(1u);
LABEL_463:
              __break(1u);
LABEL_464:
              __break(1u);
LABEL_465:
              __break(1u);
LABEL_466:
              __break(1u);
            }
          }

LABEL_321:
          if (v263 > 1)
          {
            goto LABEL_311;
          }

          goto LABEL_322;
        }

        if (v262 <= 1)
        {
          if (!v262)
          {
            v264 = BYTE6(v255);
            if (v263 > 1)
            {
              goto LABEL_311;
            }

            goto LABEL_322;
          }

          LODWORD(v264) = HIDWORD(v253) - v253;
          if (__OFSUB__(HIDWORD(v253), v253))
          {
            goto LABEL_445;
          }

          v264 = v264;
          goto LABEL_321;
        }

        if (v262 == 2)
        {
          v269 = *(v253 + 16);
          v268 = *(v253 + 24);
          v52 = __OFSUB__(v268, v269);
          v264 = v268 - v269;
          if (v52)
          {
            goto LABEL_446;
          }

          goto LABEL_321;
        }

        v264 = 0;
        if (v263 > 1)
        {
LABEL_311:
          if (v263 != 2)
          {
            if (!v264)
            {
              goto LABEL_402;
            }

LABEL_223:
            outlined consume of Data._Representation(v258, v259);
            outlined consume of Data._Representation(v253, v255);
            v190 = v420;
            v6 = v414;
            outlined consume of Data._Representation(v420, v414);
            outlined consume of Data._Representation(v198, v398);
            v186 = v401;
            v191 = v410;
            goto LABEL_224;
          }

          v266 = *(v258 + 16);
          v265 = *(v258 + 24);
          v52 = __OFSUB__(v265, v266);
          v267 = v265 - v266;
          if (v52)
          {
            goto LABEL_441;
          }

          goto LABEL_324;
        }

LABEL_322:
        if (!v263)
        {
          v267 = BYTE6(v259);
LABEL_324:
          if (v264 != v267)
          {
            goto LABEL_223;
          }

          goto LABEL_328;
        }

        if (__OFSUB__(HIDWORD(v258), v258))
        {
          goto LABEL_442;
        }

        if (v264 != HIDWORD(v258) - v258)
        {
          goto LABEL_223;
        }

LABEL_328:
        if (v264 < 1)
        {
LABEL_402:
          outlined consume of Data._Representation(v258, v259);
          v363 = v253;
          v364 = v255;
          goto LABEL_405;
        }

        if (v262 <= 1)
        {
          if (!v262)
          {
            *&v422 = v253;
            WORD4(v422) = v255;
            BYTE10(v422) = BYTE2(v255);
            BYTE11(v422) = BYTE3(v255);
            BYTE12(v422) = BYTE4(v255);
            BYTE13(v422) = BYTE5(v255);
            goto LABEL_343;
          }

          v390 = v189;
          v391 = (v253 >> 32) - v253;
          if (v253 >> 32 < v253)
          {
            goto LABEL_449;
          }

          v275 = __DataStorage._bytes.getter();
          if (v275)
          {
            v385 = v275;
            v276 = __DataStorage._offset.getter();
            if (__OFSUB__(v253, v276))
            {
              goto LABEL_456;
            }

            v385 += v253 - v276;
          }

          else
          {
            v385 = 0;
          }

          MEMORY[0x1B274CD90]();
          v282 = v401;
          closure #1 in static Data.== infix(_:_:)(v385, v260, v261, &v422);
          v149 = v282;
          v189 = v390;
          if (v282)
          {
            goto LABEL_475;
          }

          outlined consume of Data._Representation(v260, v261);
          outlined consume of Data._Representation(v253, v255);
          v190 = v420;
          v6 = v414;
          outlined consume of Data._Representation(v420, v414);
          outlined consume of Data._Representation(v198, v398);
          v280 = v422;
LABEL_353:
          v186 = 0;
          v191 = v410;
          if (v280)
          {
            goto LABEL_406;
          }

          goto LABEL_224;
        }

        if (v262 != 2)
        {
          *(&v422 + 6) = 0;
          *&v422 = 0;
LABEL_343:
          v277 = v401;
          closure #1 in static Data.== infix(_:_:)(&v422, v258, v259, &v426);
          v149 = v277;
          if (v277)
          {
            goto LABEL_475;
          }

          outlined consume of Data._Representation(v253, v255);
          v278 = v420;
          v6 = v414;
          outlined consume of Data._Representation(v420, v414);
          outlined consume of Data._Representation(v391, v398);
          v279 = v261;
          v190 = v278;
          outlined consume of Data._Representation(v260, v279);
          v280 = v426;
          goto LABEL_353;
        }

        v391 = v188;
        v270 = *(v253 + 16);
        v385 = *(v253 + 24);
        v271 = __DataStorage._bytes.getter();
        if (v271)
        {
          v383 = v270;
          v272 = v271;
          v273 = __DataStorage._offset.getter();
          v274 = v383;
          if (__OFSUB__(v383, v273))
          {
            goto LABEL_455;
          }

          v384 = (v383 - v273 + v272);
        }

        else
        {
          v384 = 0;
          v274 = v270;
        }

        if (__OFSUB__(v385, v274))
        {
          goto LABEL_450;
        }

        MEMORY[0x1B274CD90]();
        v281 = v401;
        closure #1 in static Data.== infix(_:_:)(v384, v260, v261, &v422);
        v149 = v281;
        if (v281)
        {
          goto LABEL_475;
        }

        outlined consume of Data._Representation(v260, v261);
        outlined consume of Data._Representation(v253, v255);
        v190 = v420;
        v6 = v414;
        outlined consume of Data._Representation(v420, v414);
        outlined consume of Data._Representation(v198, v398);
        v186 = 0;
        v191 = v410;
        v188 = v391;
        if (v422)
        {
          goto LABEL_406;
        }

LABEL_224:
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v191, type metadata accessor for GeneralEPSK);
        v189 += v386;
        if (!--v188)
        {
          goto LABEL_355;
        }
      }

      v228 = MEMORY[0x1E6969DF8];
      if (v227 != 2)
      {
        v229 = 0;
        goto LABEL_261;
      }

      v230 = v383;
      v229 = *(v383 + 24);
      goto LABEL_259;
    }

LABEL_355:
    v283 = v186;
    v284 = v430;
    v285 = v431;
    a4 = v432;
    v286 = v433;
    v288 = v434;
    v287 = v435;
    outlined copy of Data._Representation(v430, v431);
    outlined copy of Data?(v286, v288);
    v289 = specialized SwiftOfferedEPSK.init(external_identity:context:)(v284, v285, a4, v286, v288, v287);
    v291 = v290;
    v293 = v292;
    v295 = v294;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v388 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v388 + 2) + 1, 1, v388);
    }

    v297 = *(v388 + 2);
    v296 = *(v388 + 3);
    if (v297 >= v296 >> 1)
    {
      v388 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v296 > 1), v297 + 1, 1, v388);
    }

    v298 = v388;
    *(v388 + 2) = v297 + 1;
    v299 = &v298[32 * v297];
    *(v299 + 4) = v289;
    *(v299 + 5) = v291;
    *(v299 + 6) = v293;
    *(v299 + 7) = v295;
    if (v419 >= 0x10000)
    {
      goto LABEL_453;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v283;
    v38 = v413;
    v6 = v414;
    v301 = v420;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v387 + 2) + 1, 1, v387);
    }

    a3 = *(v387 + 2);
    v302 = *(v387 + 3);
    v303 = a3 + 1;
    if (a3 >= v302 >> 1)
    {
      v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v302 > 1), a3 + 1, 1, v387);
    }

    outlined destroy of ImportedIdentity(&v430);
LABEL_375:
    outlined consume of Data._Representation(v301, v6);
    v317 = v387;
    *(v387 + 2) = v303;
    v54 = v418;
    *&v317[2 * a3 + 32] = v419;
    v43 = v403;
    v56 = v378;
    v55 = v379;
    if (v54 == v403)
    {
      goto LABEL_388;
    }

    goto LABEL_23;
  }

  v72 = *(v38 + 200);
  a4 = *(v72 + 16);
  v73 = v411;
  v414 = v6;
  if (!a4)
  {
    v75 = v420;
LABEL_366:
    outlined copy of Data._Representation(v75, v6);
    v304 = specialized SwiftOfferedEPSK.init(external_identity:context:)(v75, v6, v60, 0, 0xF000000000000000, 0);
    v306 = v305;
    v308 = v307;
    v310 = v309;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v388 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v388 + 2) + 1, 1, v388);
    }

    v312 = *(v388 + 2);
    v311 = *(v388 + 3);
    if (v312 >= v311 >> 1)
    {
      v388 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v311 > 1), v312 + 1, 1, v388);
    }

    v313 = v388;
    *(v388 + 2) = v312 + 1;
    v314 = &v313[32 * v312];
    *(v314 + 4) = v304;
    *(v314 + 5) = v306;
    *(v314 + 6) = v308;
    *(v314 + 7) = v310;
    if (v419 >= 0x10000)
    {
      goto LABEL_452;
    }

    v315 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v413;
    v6 = v414;
    v301 = v420;
    if ((v315 & 1) == 0)
    {
      v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v387 + 2) + 1, 1, v387);
    }

    a3 = *(v387 + 2);
    v316 = *(v387 + 3);
    v303 = a3 + 1;
    if (a3 >= v316 >> 1)
    {
      v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v316 > 1), a3 + 1, 1, v387);
    }

    goto LABEL_375;
  }

  v74 = v72 + ((*(v404 + 80) + 32) & ~*(v404 + 80));
  v75 = v420;
  v377 = v420 >> 32;
  v381 = BYTE6(v6);
  v385 = *(v404 + 72);
  v386 = v6 >> 62;
  v76 = v409;
  v394 = v60;
  while (2)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v74, v76, type metadata accessor for GeneralEPSK);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v76, v73, type metadata accessor for PSK);
    v77 = swift_getEnumCaseMultiPayload();
    v390 = v74;
    if (v77 == 1)
    {
      v78 = v406;
      outlined init with take of ServerHandshakeState.IdleState(v73, v406, type metadata accessor for RawEPSK);
      v79 = v75;
      v80 = a4;
      v82 = *v78;
      v81 = v78[1];
      v83 = v78[2];
      outlined copy of Data._Representation(v79, v6);
      v398 = v82;
      v412 = v81;
      v84 = v81;
      v85 = v80;
      outlined copy of Data._Representation(v82, v84);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v78, type metadata accessor for RawEPSK);
      v86 = v386;
      goto LABEL_112;
    }

    v384 = a4;
    v401 = v8;
    v87 = v73;
    v88 = v405;
    outlined init with take of ServerHandshakeState.IdleState(v87, v405, type metadata accessor for ImportedPSK);
    v90 = *v88;
    v89 = *(v88 + 8);
    v91 = *(v88 + 16);
    v391 = *(v88 + 24);
    v92 = *(v88 + 32);
    v383 = *(v88 + 40);
    v93 = *(v88 + 48);
    v94 = *(v88 + 50);
    v426 = v389;
    v427 = 0;
    v95 = v89 >> 62;
    if ((v89 >> 62) > 1)
    {
      v96 = 0;
      if (v95 == 2)
      {
        v96 = *(v90 + 24);
      }
    }

    else if (v95)
    {
      v96 = v90 >> 32;
    }

    else
    {
      v96 = BYTE6(v89);
    }

    v52 = __OFSUB__(v96, v91);
    v97 = v96 - v91;
    if (v52)
    {
      goto LABEL_428;
    }

    if ((v97 & 0x8000000000000000) != 0)
    {
      goto LABEL_429;
    }

    LODWORD(v398) = v93;
    LODWORD(v412) = v94;
    if (v97 >> 16)
    {
      goto LABEL_430;
    }

    v421 = bswap32(v97) >> 16;
    v424 = MEMORY[0x1E69E6290];
    v425 = MEMORY[0x1E6969DF8];
    *&v422 = &v421;
    *(&v422 + 1) = v395;
    v98 = __swift_project_boxed_opaque_existential_0(&v422, MEMORY[0x1E69E6290]);
    v99 = *v98;
    v100 = v98[1];
    outlined copy of Data._Representation(v420, v414);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v422);
    if (v95 > 1)
    {
      v103 = v92;
      if (v95 == 2)
      {
        v102 = *(v90 + 16);
        v101 = *(v90 + 24);
      }

      else
      {
        v101 = 0;
        v102 = 0;
      }
    }

    else
    {
      if (v95)
      {
        v101 = v90 >> 32;
      }

      else
      {
        v101 = BYTE6(v89);
      }

      if (v95)
      {
        v102 = v90;
      }

      else
      {
        v102 = 0;
      }

      v103 = v92;
    }

    if (v101 < v91 || v101 < v102)
    {
      goto LABEL_431;
    }

    v104 = Data._Representation.subscript.getter();
    v106 = v105;
    Data.append(_:)();
    outlined consume of Data._Representation(v104, v106);
    if (v103 >> 60 == 15)
    {
      v421 = 0;
      v107 = MEMORY[0x1E69E6290];
      v424 = MEMORY[0x1E69E6290];
      v108 = MEMORY[0x1E6969DF8];
      v425 = MEMORY[0x1E6969DF8];
      v109 = v395;
      *&v422 = &v421;
      *(&v422 + 1) = v395;
      v110 = __swift_project_boxed_opaque_existential_0(&v422, MEMORY[0x1E69E6290]);
      v112 = *v110;
      v111 = v110[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v422);
      v8 = v401;
      goto LABEL_99;
    }

    v113 = v103 >> 62;
    v8 = v401;
    if ((v103 >> 62) > 1)
    {
      v114 = MEMORY[0x1E6969DF8];
      v115 = v391;
      v116 = v383;
      if (v113 != 2)
      {
        v117 = 0;
        goto LABEL_83;
      }

      v117 = *(v391 + 24);
      goto LABEL_81;
    }

    v114 = MEMORY[0x1E6969DF8];
    v115 = v391;
    v116 = v383;
    if (v113)
    {
      v117 = v391 >> 32;
LABEL_81:
      outlined copy of Data._Representation(v115, v103);
      goto LABEL_83;
    }

    v117 = BYTE6(v103);
LABEL_83:
    v118 = v117 - v116;
    if (__OFSUB__(v117, v116))
    {
      goto LABEL_437;
    }

    if ((v118 & 0x8000000000000000) != 0)
    {
      goto LABEL_438;
    }

    if (v118 >> 16)
    {
      goto LABEL_439;
    }

    v421 = bswap32(v118) >> 16;
    v424 = MEMORY[0x1E69E6290];
    v425 = v114;
    *&v422 = &v421;
    *(&v422 + 1) = v395;
    v119 = __swift_project_boxed_opaque_existential_0(&v422, MEMORY[0x1E69E6290]);
    v121 = *v119;
    v120 = v119[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v422);
    if (v113 > 1)
    {
      if (v113 == 2)
      {
        v123 = *(v115 + 16);
        v122 = *(v115 + 24);
      }

      else
      {
        v122 = 0;
        v123 = 0;
      }
    }

    else
    {
      if (v113)
      {
        v122 = v115 >> 32;
      }

      else
      {
        v122 = BYTE6(v103);
      }

      if (v113)
      {
        v123 = v115;
      }

      else
      {
        v123 = 0;
      }
    }

    if (v122 < v116 || v122 < v123)
    {
      goto LABEL_440;
    }

    v124 = Data._Representation.subscript.getter();
    v126 = v125;
    Data.append(_:)();
    outlined consume of ByteBuffer?(v115, v103);
    outlined consume of Data._Representation(v124, v126);
    v109 = v395;
    v107 = MEMORY[0x1E69E6290];
    v108 = MEMORY[0x1E6969DF8];
LABEL_99:
    v421 = __rev16(v398);
    v424 = v107;
    v425 = v108;
    *&v422 = &v421;
    *(&v422 + 1) = v109;
    v127 = __swift_project_boxed_opaque_existential_0(&v422, v107);
    v129 = *v127;
    v128 = v127[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v422);
    v421 = __rev16(v412);
    v424 = v107;
    v425 = v108;
    *&v422 = &v421;
    *(&v422 + 1) = v109;
    v130 = __swift_project_boxed_opaque_existential_0(&v422, v107);
    v132 = *v130;
    v131 = v130[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v422);
    v133 = v426;
    v134 = *(&v426 + 1) >> 62;
    if ((*(&v426 + 1) >> 62) <= 1)
    {
      v60 = v394;
      v135 = v384;
      if (!v134)
      {
        goto LABEL_106;
      }

      v136 = v426 >> 32;
LABEL_105:
      if (v136 < 0)
      {
        goto LABEL_432;
      }

      goto LABEL_106;
    }

    v60 = v394;
    v135 = v384;
    if (v134 == 2)
    {
      v136 = *(v426 + 24);
      goto LABEL_105;
    }

LABEL_106:
    v398 = Data._Representation.subscript.getter();
    v138 = v137;
    outlined consume of Data._Representation(v133, *(&v133 + 1));
    v83 = 0;
    v412 = v138;
    v139 = v138 >> 62;
    if ((v138 >> 62) > 1)
    {
      v86 = v386;
      if (v139 == 2)
      {
        v83 = *(v398 + 16);
      }
    }

    else
    {
      v86 = v386;
      if (v139)
      {
        v83 = v398;
      }
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v405, type metadata accessor for ImportedPSK);
    v85 = v135;
LABEL_112:
    v38 = v398;
    if (v86 > 1)
    {
      if (v86 == 2)
      {
        v140 = *(v420 + 24);
      }

      else
      {
        v140 = 0;
      }
    }

    else
    {
      v140 = v381;
      if (v86)
      {
        v140 = v377;
      }
    }

    if (v140 < v60)
    {
      goto LABEL_421;
    }

    v391 = Data._Representation.subscript.getter();
    v6 = v141;
    v142 = v412 >> 62;
    if ((v412 >> 62) > 1)
    {
      if (v142 == 2)
      {
        v143 = *(v38 + 24);
      }

      else
      {
        v143 = 0;
      }
    }

    else if (v142)
    {
      v143 = v38 >> 32;
    }

    else
    {
      v143 = BYTE6(v412);
    }

    if (v143 < v83)
    {
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
LABEL_435:
      __break(1u);
LABEL_436:
      __break(1u);
LABEL_437:
      __break(1u);
LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      __break(1u);
LABEL_451:
      __break(1u);
LABEL_452:
      __break(1u);
LABEL_453:
      __break(1u);
LABEL_454:
      __break(1u);
LABEL_455:
      __break(1u);
LABEL_456:
      __break(1u);
LABEL_457:
      __break(1u);
LABEL_458:
      __break(1u);
LABEL_459:
      __break(1u);
      goto LABEL_460;
    }

    v144 = Data._Representation.subscript.getter();
    a3 = v144;
    v33 = v145;
    v146 = v6 >> 62;
    v147 = v145 >> 62;
    if (v6 >> 62 == 3)
    {
      v148 = 0;
      v149 = v391;
      if (!v391 && v6 == 0xC000000000000000 && v145 >> 62 == 3)
      {
        v148 = 0;
        if (!v144 && v145 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v371 = 0;
          v372 = 0xC000000000000000;
          goto LABEL_408;
        }
      }

LABEL_147:
      if (v147 <= 1)
      {
        goto LABEL_148;
      }

LABEL_137:
      if (v147 == 2)
      {
        v151 = *(v144 + 16);
        v150 = *(v144 + 24);
        v52 = __OFSUB__(v150, v151);
        v152 = v150 - v151;
        if (v52)
        {
          goto LABEL_444;
        }

LABEL_150:
        if (v148 == v152)
        {
          goto LABEL_154;
        }
      }

      else if (!v148)
      {
        goto LABEL_403;
      }

LABEL_47:
      outlined consume of Data._Representation(v144, v145);
      outlined consume of Data._Representation(v149, v6);
      outlined consume of Data._Representation(v38, v412);
      v75 = v420;
      v6 = v414;
      outlined consume of Data._Representation(v420, v414);
      v60 = v394;
      v76 = v409;
LABEL_48:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v76, type metadata accessor for GeneralEPSK);
      v74 = v390 + v385;
      a4 = v85 - 1;
      v73 = v411;
      if (!a4)
      {
        goto LABEL_366;
      }

      continue;
    }

    break;
  }

  v149 = v391;
  if (v146 > 1)
  {
    if (v146 == 2)
    {
      v154 = *(v391 + 16);
      v153 = *(v391 + 24);
      v52 = __OFSUB__(v153, v154);
      v148 = v153 - v154;
      if (v52)
      {
        goto LABEL_448;
      }

      goto LABEL_147;
    }

    v148 = 0;
    if (v147 <= 1)
    {
      goto LABEL_148;
    }

    goto LABEL_137;
  }

  if (v146)
  {
    LODWORD(v148) = HIDWORD(v391) - v391;
    if (__OFSUB__(HIDWORD(v391), v391))
    {
      goto LABEL_447;
    }

    v148 = v148;
    goto LABEL_147;
  }

  v148 = BYTE6(v6);
  if (v147 > 1)
  {
    goto LABEL_137;
  }

LABEL_148:
  if (!v147)
  {
    v152 = BYTE6(v145);
    goto LABEL_150;
  }

  if (__OFSUB__(HIDWORD(v144), v144))
  {
    goto LABEL_443;
  }

  if (v148 != HIDWORD(v144) - v144)
  {
    goto LABEL_47;
  }

LABEL_154:
  if (v148 < 1)
  {
LABEL_403:
    outlined consume of Data._Representation(v144, v145);
    v371 = v149;
    goto LABEL_404;
  }

  if (v146 <= 1)
  {
    if (!v146)
    {
      *&v422 = v149;
      WORD4(v422) = v6;
      BYTE10(v422) = BYTE2(v6);
      BYTE11(v422) = BYTE3(v6);
      BYTE12(v422) = BYTE4(v6);
      BYTE13(v422) = BYTE5(v6);
      goto LABEL_169;
    }

    v401 = v8;
    if (v149 > v149 >> 32)
    {
      goto LABEL_451;
    }

    v159 = __DataStorage._bytes.getter();
    if (v159)
    {
      v160 = v159;
      v161 = __DataStorage._offset.getter();
      if (__OFSUB__(v149, v161))
      {
        goto LABEL_458;
      }

      v383 = v149 - v161 + v160;
    }

    else
    {
      v383 = 0;
    }

    v38 = v398;
    v149 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    MEMORY[0x1B274CD90]();
    v8 = v401;
    if (v147 == 2)
    {
      v172 = *(a3 + 16);
      v173 = *(a3 + 24);
      v174 = __DataStorage._bytes.getter();
      if (v174)
      {
        v175 = v174;
        v176 = __DataStorage._offset.getter();
        if (__OFSUB__(v172, v176))
        {
          goto LABEL_464;
        }

        v177 = (v172 - v176 + v175);
      }

      else
      {
        v177 = 0;
      }

      v376 = v177;
      v52 = __OFSUB__(v173, v172);
      v182 = v173 - v172;
      v8 = v401;
      if (v52)
      {
        goto LABEL_463;
      }

      v149 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      v183 = MEMORY[0x1B274CD90]();
      if (v183 >= v182)
      {
        v181 = v182;
      }

      else
      {
        v181 = v183;
      }

      v60 = v394;
      v171 = v383;
      if (!v383)
      {
        goto LABEL_470;
      }

      v38 = v398;
      v179 = v376;
      if (!v376)
      {
        goto LABEL_469;
      }

      goto LABEL_216;
    }

    if (v147 == 1)
    {
      if (a3 >> 32 < a3)
      {
        goto LABEL_462;
      }

      v167 = __DataStorage._bytes.getter();
      if (v167)
      {
        v168 = v167;
        v169 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v169))
        {
          goto LABEL_466;
        }

        v376 = (a3 - v169 + v168);
      }

      else
      {
        v376 = 0;
      }

      v8 = v401;
      v60 = v394;
      v149 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      v184 = MEMORY[0x1B274CD90]();
      if (v184 >= (a3 >> 32) - a3)
      {
        v181 = (a3 >> 32) - a3;
      }

      else
      {
        v181 = v184;
      }

      v171 = v383;
      if (!v383)
      {
        goto LABEL_473;
      }

      v38 = v398;
      v179 = v376;
      if (!v376)
      {
        goto LABEL_472;
      }

LABEL_216:
      if (v171 == v179)
      {
        goto LABEL_414;
      }

      v178 = v181;
LABEL_218:
      v185 = memcmp(v171, v179, v178);
      outlined consume of Data._Representation(a3, v33);
      outlined consume of Data._Representation(v391, v6);
      outlined consume of Data._Representation(v38, v412);
      v75 = v420;
      v6 = v414;
      outlined consume of Data._Representation(v420, v414);
      v76 = v409;
      if (!v185)
      {
        goto LABEL_409;
      }

      goto LABEL_48;
    }

    v171 = v383;
    *&v422 = a3;
    WORD4(v422) = v33;
    BYTE10(v422) = BYTE2(v33);
    BYTE11(v422) = BYTE3(v33);
    BYTE12(v422) = BYTE4(v33);
    BYTE13(v422) = BYTE5(v33);
    v60 = v394;
    if (!v383)
    {
      goto LABEL_471;
    }

LABEL_194:
    v178 = BYTE6(v33);
    v179 = &v422;
    goto LABEL_218;
  }

  if (v146 != 2)
  {
    *(&v422 + 6) = 0;
    *&v422 = 0;
LABEL_169:
    closure #1 in static Data.== infix(_:_:)(&v422, v144, v145, &v426);
    if (v8)
    {
      goto LABEL_474;
    }

    outlined consume of Data._Representation(v149, v6);
    outlined consume of Data._Representation(v38, v412);
    v162 = v420;
    v6 = v414;
    outlined consume of Data._Representation(v420, v414);
    v163 = v33;
    v75 = v162;
    outlined consume of Data._Representation(a3, v163);
    v60 = v394;
    v76 = v409;
    if (v426)
    {
      goto LABEL_409;
    }

    goto LABEL_48;
  }

  v401 = v8;
  v155 = *(v149 + 16);
  v156 = __DataStorage._bytes.getter();
  if (v156)
  {
    v157 = v156;
    v158 = __DataStorage._offset.getter();
    if (__OFSUB__(v155, v158))
    {
      goto LABEL_457;
    }

    v383 = v155 - v158 + v157;
  }

  else
  {
    v383 = 0;
  }

  v38 = v398;
  v149 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  MEMORY[0x1B274CD90]();
  v8 = v401;
  if (v147 == 2)
  {
    v170 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(*(a3 + 16), *(a3 + 24), v33 & 0x3FFFFFFFFFFFFFFFLL, v383);
    outlined consume of Data._Representation(a3, v33);
    outlined consume of Data._Representation(v391, v6);
    outlined consume of Data._Representation(v38, v412);
    v75 = v420;
    v6 = v414;
    outlined consume of Data._Representation(v420, v414);
    v60 = v394;
    v76 = v409;
    if (v170)
    {
      goto LABEL_409;
    }

    goto LABEL_48;
  }

  if (v147 == 1)
  {
    if (a3 >> 32 < a3)
    {
      goto LABEL_461;
    }

    v164 = __DataStorage._bytes.getter();
    if (v164)
    {
      v165 = v164;
      v166 = __DataStorage._offset.getter();
      if (__OFSUB__(a3, v166))
      {
        goto LABEL_465;
      }

      v376 = (a3 - v166 + v165);
    }

    else
    {
      v376 = 0;
    }

    v60 = v394;
    v149 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v180 = MEMORY[0x1B274CD90]();
    if (v180 >= (a3 >> 32) - a3)
    {
      v181 = (a3 >> 32) - a3;
    }

    else
    {
      v181 = v180;
    }

    v8 = v401;
    v171 = v383;
    if (!v383)
    {
      goto LABEL_468;
    }

    v38 = v398;
    v179 = v376;
    if (!v376)
    {
      goto LABEL_467;
    }

    goto LABEL_216;
  }

  v171 = v383;
  *&v422 = a3;
  WORD4(v422) = v33;
  BYTE10(v422) = BYTE2(v33);
  BYTE11(v422) = BYTE3(v33);
  BYTE12(v422) = BYTE4(v33);
  BYTE13(v422) = BYTE5(v33);
  v60 = v394;
  if (v383)
  {
    goto LABEL_194;
  }

  __break(1u);
LABEL_467:
  __break(1u);
LABEL_468:
  __break(1u);
LABEL_469:
  __break(1u);
LABEL_470:
  __break(1u);
LABEL_471:
  __break(1u);
LABEL_472:
  __break(1u);
LABEL_473:
  __break(1u);
LABEL_474:

  __break(1u);
LABEL_475:

  __break(1u);
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKFySi_AA4EPSKVSgtcfU_Tf2nnnninn_n(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v66 = a8;
  v70 = a7;
  v71 = a4;
  v72 = a5;
  v73 = a1;
  v10 = type metadata accessor for ImportedPSK(0);
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for RawEPSK(0);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v61 - v20;
  v21 = type metadata accessor for EPSK(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v74 = (&v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v75 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v61 - v29;
  v31 = swift_projectBox();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, logger);
  outlined init with copy of Any?(a2, v30, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(a3, &v76);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = v31;
    v36 = v35;
    *v35 = 67109376;
    v37 = (*(v22 + 48))(v30, 1, v21);
    v62 = a2;
    v38 = v19;
    v39 = v37 == 1;
    outlined destroy of P256.Signing.PrivateKey?(v30, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
    v36[1] = v39;
    v19 = v38;
    a2 = v62;
    *(v36 + 4) = 1024;
    *(v36 + 10) = *(a3 + 208) & 1;
    outlined destroy of ServerHandshakeState.ClientHelloVerifier(a3);
    _os_log_impl(&dword_1B25F5000, v33, v34, "in server handshake state machine completion block... epsk == nil? %{BOOL}d usingRawEPSKs: %{BOOL}d", v36, 0xEu);
    v40 = v36;
    v31 = v63;
    MEMORY[0x1B274ECF0](v40, -1, -1);
  }

  else
  {
    outlined destroy of P256.Signing.PrivateKey?(v30, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
    outlined destroy of ServerHandshakeState.ClientHelloVerifier(a3);
  }

  v41 = v75;
  outlined init with copy of Any?(a2, v75, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  if ((*(v22 + 48))(v41, 1, v21) == 1)
  {
    return outlined destroy of P256.Signing.PrivateKey?(v41, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  }

  v43 = v21;
  v44 = v74;
  result = outlined init with take of ServerHandshakeState.IdleState(v41, v74, type metadata accessor for EPSK);
  if ((v73 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v72 + 16) <= v73)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = *(v72 + 2 * v73 + 32);
  v46 = v71;
  swift_beginAccess();
  *(v46 + 16) = v45;
  *(v46 + 18) = 0;
  if (*(a3 + 208))
  {
    v47 = *v44;
    v48 = v44[1];
    v49 = v44[2];
    v50 = *(v43 + 20);
    v51 = *(v67 + 20);
    v52 = type metadata accessor for SymmetricKey();
    v53 = v68;
    (*(*(v52 - 8) + 16))(v68 + v51, v44 + v50, v52);
    outlined copy of Data._Representation(v47, v48);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v44, type metadata accessor for EPSK);
    *v53 = v47;
    v53[1] = v48;
    v53[2] = v49;
    v54 = v69;
    outlined init with take of ServerHandshakeState.IdleState(v53, v69, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v55 = type metadata accessor for GeneralEPSK(0);
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    swift_beginAccess();
    v56 = v54;
    return outlined assign with take of PartialHandshakeResult?(v56, v31, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16TLSKDFIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16TLSKDFIdentifierVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B26C6030;
  *(inited + 32) = v70;
  *(inited + 40) = v66;
  v58 = _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(inited);
  result = swift_setDeallocating();
  if (*(v58 + 16))
  {
    v59 = v64;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v58 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v64, type metadata accessor for ImportedPSK);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v44, type metadata accessor for EPSK);
    outlined init with take of ServerHandshakeState.IdleState(v59, v19, type metadata accessor for ImportedPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v60 = type metadata accessor for GeneralEPSK(0);
    (*(*(v60 - 8) + 56))(v19, 0, 1, v60);
    swift_beginAccess();
    v56 = v19;
    return outlined assign with take of PartialHandshakeResult?(v56, v31, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  }

LABEL_17:
  __break(1u);
  return result;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV25validateSupportedVersions33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = (v1 + 33);
    v3 = *(v1 + 16) + 1;
    while (--v3)
    {
      v4 = v2;
      v2 += 2;
      if (*(v4 - 1) == 3 && *v4 == 4)
      {
        return;
      }
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v6 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v10, "TLS 1.3 Client Hello missing TLS 1.3 version in supported_versions extension", v11, 2u);
      MEMORY[0x1B274ECF0](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v7, "Client Hello without supported_versions extension received", v8, 2u);
      MEMORY[0x1B274ECF0](v8, -1, -1);
    }
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV23validateSupportedGroups33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  if (!*(v0 + 16) && !*(v0 + 160))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B25F5000, v2, v3, "client hello missing required supported_groups extension", v4, 2u);
      MEMORY[0x1B274ECF0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return 14;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV35validateAndDetermineCertificateType33_03AB5AB83506F65A656301CC88CAC942LLAA0lM0VyAA8TLSErrorOYKF()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 32;
      v5 = *(v0 + 184);
      v6 = *(v5 + 16);
      v7 = (v5 + 32);
      do
      {
        v8 = *(v4 + v3++);
        v9 = v6;
        v10 = v7;
        while (v9)
        {
          v11 = *v10++;
          --v9;
          if (v11 == v8)
          {
            return v8;
          }
        }
      }

      while (v3 != v2);
    }

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v17 = *(v0 + 184);
  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_10:
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B25F5000, v13, v14, "client requested unsupported server certificate type", v15, 2u);
      MEMORY[0x1B274ECF0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 15;
  }

  return *(v17 + 32);
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27validateSignatureAlgorithms33_03AB5AB83506F65A656301CC88CAC942LL21serverCertificateTypeyAA0sT0V_tAA8TLSErrorOYKF(char a1)
{
  if (*(v1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = a1 == 0;
  }

  if (v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B25F5000, v4, v5, "client hello missing required signature_algorithms extension", v6, 2u);
      MEMORY[0x1B274ECF0](v6, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return 14;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV17validateKeyShares33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  if (!*(v0 + 160))
  {
    v1 = *(v0 + 8);
    if (v1)
    {
      if (*(v1 + 16))
      {
        return;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1B25F5000, v3, v4, "no client key shares", v5, 2u);
        MEMORY[0x1B274ECF0](v5, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, logger);
      v3 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1B25F5000, v3, v7, "client hello missing required key_shares extension", v8, 2u);
        MEMORY[0x1B274ECF0](v8, -1, -1);
      }
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12validatePAKE33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  if (*(v0 + 160) && !*(v0 + 232))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B25F5000, v2, v3, "server was not configured with PAKE support", v4, 2u);
      MEMORY[0x1B274ECF0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return 16;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV13negotiatePAKEAA16PAKEServerRecordV_AA9ExtensionO0J0O9PAKEShareVtSgyAA8TLSErrorOYKF(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 128);
  v22[0] = *(v2 + 112);
  v22[1] = v5;
  v22[2] = *(v2 + 144);
  v6 = *(v2 + 160);
  v23 = v6;
  if (v6 && (v7 = *(v2 + 128), v24[0] = *(v2 + 112), v24[1] = v7, v24[2] = *(v2 + 144), v25 = v6, (v8 = *(v2 + 232)) != 0))
  {
    outlined init with copy of Any?(v22, v20, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMR);
    _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n(v24, v8, v18, v21);
    if (v3)
    {
      v10 = v18[0];
      v11 = v18[1];
      v12 = v19;
      outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMR);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      return;
    }

    v32 = v21[6];
    v33 = v21[7];
    v34 = v21[8];
    v35 = v21[9];
    v28 = v21[2];
    v29 = v21[3];
    v30 = v21[4];
    v31 = v21[5];
    v26 = v21[0];
    v27 = v21[1];
    outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMR);
  }

  else
  {
    _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(&v26);
  }

  v13 = v33;
  a2[6] = v32;
  a2[7] = v13;
  v14 = v35;
  a2[8] = v34;
  a2[9] = v14;
  v15 = v29;
  a2[2] = v28;
  a2[3] = v15;
  v16 = v31;
  a2[4] = v30;
  a2[5] = v16;
  v17 = v27;
  *a2 = v26;
  a2[1] = v17;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27negotiateSignatureAlgorithmAA0J6SchemeVSgyAA8TLSErrorOYKF()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = 0;
    return v2 | ((v1 != 0) << 16);
  }

  v4 = v0[4];
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      v8 = v0[22];
      v9 = *(v8 + 16);
      v10 = (v8 + 32);
      do
      {
        v2 = *(v7 + 2 * v6++);
        v11 = v9;
        v12 = v10;
        while (v11)
        {
          v13 = *v12++;
          --v11;
          if (v13 == v2)
          {
            return v2 | ((v1 != 0) << 16);
          }
        }
      }

      while (v6 != v5);
    }

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = v0[22];
    if (*(v18 + 16))
    {
      v2 = *(v18 + 32);
      return v2 | ((v1 != 0) << 16);
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B25F5000, v15, v16, "signature algorithm negotiation failed", v17, 2u);
    MEMORY[0x1B274ECF0](v17, -1, -1);
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 6;
}

unint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV09negotiateC15CertificateTypeAA0jK0VSgyAA8TLSErrorOYKF()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v1 = 0;
LABEL_11:
    v11 = 1;
    return v1 | (v11 << 8);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = *(v0 + 184);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  do
  {
    v1 = *(v4 + v3++);
    v8 = v6;
    v9 = v7;
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (v10 == v1)
      {
        v11 = 0;
        return v1 | (v11 << 8);
      }
    }

    v1 = 0;
    v11 = 1;
  }

  while (v3 != v2);
  return v1 | (v11 << 8);
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV14negotiateGroupAA05NamedJ0VSgyAA8TLSErrorOYKF()
{
  if (!v0[20])
  {
    v1 = v0[2];
    if (v1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = 0;
        v4 = v1 + 32;
        v5 = v0[21];
        v6 = *(v5 + 16);
        v7 = (v5 + 32);
        do
        {
          v8 = *(v4 + 2 * v3++);
          v9 = v6;
          v10 = v7;
          while (v9)
          {
            v11 = *v10++;
            --v9;
            if (v11 == v8)
            {
              return;
            }
          }
        }

        while (v3 != v2);
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1B25F5000, v13, v14, "key exchange group negotiation failed", v15, 2u);
        MEMORY[0x1B274ECF0](v15, -1, -1);
      }

      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV03getF8KeyShareyAA9ExtensionO0jK0O0jK5EntryVAA10NamedGroupVAA8TLSErrorOYKF(uint64_t result)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = result;
      v7 = (v2 + 56);
      v8 = 0xF000000000000000;
      do
      {
        if (*(v7 - 12) == v6)
        {
          v9 = *(v7 - 1);
          v18 = *v7;
          v10 = v5;
          v5 = *(v7 - 2);
          outlined copy of Data._Representation(v5, v9);
          outlined consume of Extension.KeyShare.KeyShareEntry?(v4, v10, v8);
          v4 = v6;
          v8 = v9;
        }

        v7 += 4;
        --v3;
      }

      while (v3);
      if (v8 >> 60 != 15)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v8 = 0xF000000000000000;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v4;
      v15 = v5;
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v12, v13, "no client key share matching group received", v16, 2u);
      v17 = v16;
      v5 = v15;
      v4 = v14;
      MEMORY[0x1B274ECF0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Extension.KeyShare.KeyShareEntry?(v4, v5, v8);
    return 16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV18validateExtensionsyyAA8TLSErrorOYKF()
{
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV25validateSupportedVersions33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
  if (!v1)
  {
    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV23validateSupportedGroups33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
    v2 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV35validateAndDetermineCertificateType33_03AB5AB83506F65A656301CC88CAC942LLAA0lM0VyAA8TLSErrorOYKF();
    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27validateSignatureAlgorithms33_03AB5AB83506F65A656301CC88CAC94221serverCertificateTypeyAA0sT0V_tAA8TLSErrorOYKF(v2);
    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV17validateKeyShares33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
    v3 = *(v0 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = *(v0 + 192);
        v7 = v3 + 32;
        v8 = *(v6 + 16);
        v9 = (v6 + 32);
        do
        {
          v10 = *(v7 + v5++);
          v11 = v8;
          v12 = v9;
          do
          {
            if (!v11)
            {
              break;
            }

            v13 = *v12++;
            --v11;
          }

          while (v13 != v10);
        }

        while (v5 != v4);
      }
    }

    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12validatePAKE33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
    if ((*(v0 + 248) & 1) != 0 && !*(v0 + 80))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, logger);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B25F5000, v15, v16, "no alpn negotiated when required by QUIC", v17, 2u);
        MEMORY[0x1B274ECF0](v17, -1, -1);
      }

      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
    }
  }
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16getALPNSelection8selfALPNSS_SitSgSaySSGSg_tAA8TLSErrorOYKF(uint64_t a1)
{
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
    _os_log_impl(&dword_1B25F5000, v4, v5, "server selecting ALPN protocol", v6, 2u);
    MEMORY[0x1B274ECF0](v6, -1, -1);
  }

  v7 = *(v1 + 80);
  if (v7 && a1)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v7 + 32;
      v11 = (a1 + 40);
      v25 = a1;
      v26 = v10;
      do
      {
        v12 = (v10 + 16 * v9);
        v14 = *v12;
        v13 = v12[1];
        ++v9;
        v15 = *(a1 + 16) + 1;
        v16 = v11;
        v17 = v11;
        while (--v15)
        {
          v18 = v17 + 2;
          v19 = specialized Sequence<>.elementsEqual<A>(_:)(v14, v13, *(v17 - 1), *v17);
          v17 = v18;
          if (v19)
          {

            return v14;
          }
        }

        v11 = v16;
        a1 = v25;
        v10 = v26;
      }

      while (v9 != v8);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "alpn negotiation failed";
    goto LABEL_19;
  }

  if ((*(v1 + 248) & 1) == 0)
  {
    return 0;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "quic requires alpn";
LABEL_19:
    _os_log_impl(&dword_1B25F5000, v20, v21, v23, v22, 2u);
    MEMORY[0x1B274ECF0](v22, -1, -1);
  }

LABEL_20:

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 17;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = String.UTF8View._foreignIndex(after:)();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = String.UTF8View._foreignIndex(after:)();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

__n128 ServerHandshakeState.ClientHelloVerifier.init(observedExtensionTypes:clientKeyShares:clientOfferedGroups:clientOfferedSupportedVersions:clientOfferedSignatureAlgs:clientRequestedServerCertificateTypes:clientRequestPSKKexModes:clientQUICTransportParameters:clientALPN:clientOfferedPSKs:clientIndicatedEarlyData:clientOfferedPAKE:serverSupportedGroups:serverSupportedSignatureAlgs:serverSupportedCertificateTypes:serverSupportedPSKKexModes:serverSupportedPSKs:useRawEPSKs:externalPSKSelectionCallback:pakeRecords:transportIsQuic:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, char a18, __n128 a19, uint64_t a20, uint64_t a21, char a22)
{
  result = a19;
  v23 = *(a14 + 48);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  v24 = *(a14 + 16);
  *(a9 + 112) = *a14;
  *(a9 + 128) = v24;
  *(a9 + 144) = *(a14 + 32);
  *(a9 + 160) = v23;
  *(a9 + 168) = a15;
  *(a9 + 184) = a16;
  *(a9 + 200) = a17;
  *(a9 + 208) = a18;
  *(a9 + 216) = a19;
  *(a9 + 232) = a20;
  *(a9 + 240) = a21;
  *(a9 + 248) = a22;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloState.clientKeyShare.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 40));
  v2 = *v1;
  v3 = v1[3];
  outlined copy of Extension.KeyShare.KeyShareEntry?(*v1, v1[1], v1[2]);
  return v2;
}

uint64_t ServerHandshakeState.ClientHelloState.sharedSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 48);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ServerHandshakeState.ClientHelloState.publicKeyShare.getter()
{
  v1 = v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 52);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

__n128 ServerHandshakeState.ClientHelloState.legacySessionIDEcho.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 56);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloState.clientQUICTransportParameters.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 60));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data?(*v1, v1[1]);
  return v2;
}

uint64_t ServerHandshakeState.ClientHelloState.selectedALPN.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ServerHandshakeState.ClientHelloState.init(originalState:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, int a4@<W3>, int a5@<W4>, __int16 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, __int16 a23, char a24, uint64_t a25, char a26, char a27)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a9, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.IdleState);
  v34 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a9 + v34[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  *(a9 + v34[6]) = a3;
  v35 = a9 + v34[7];
  *v35 = a4;
  *(v35 + 2) = BYTE2(a4) & 1;
  v36 = a9 + v34[8];
  *v36 = a5;
  *(v36 + 2) = BYTE2(a5) & 1;
  v37 = (a9 + v34[9]);
  *v37 = a6;
  v37[1] = HIBYTE(a6) & 1;
  v38 = (a9 + v34[10]);
  *v38 = a7;
  v38[1] = a8;
  v38[2] = a10;
  v38[3] = a11;
  v39 = a9 + v34[14];
  v40 = *(a12 + 16);
  *v39 = *a12;
  *(v39 + 16) = v40;
  *(v39 + 32) = *(a12 + 32);
  outlined init with take of P256.Signing.PublicKey?(a13, a9 + v34[11], &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v41 = v34[12];
  v42 = type metadata accessor for SymmetricKey();
  (*(*(v42 - 8) + 32))(a9 + v41, a14, v42);
  v43 = (a9 + v34[13]);
  *v43 = a15;
  v43[1] = a16;
  v44 = a9 + v34[15];
  *v44 = a17;
  *(v44 + 16) = a18;
  v45 = (a9 + v34[16]);
  *v45 = a19;
  v45[1] = a20;
  *(a9 + v34[17]) = a21;
  outlined init with take of P256.Signing.PublicKey?(a22, a9 + v34[18], &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  *(a9 + v34[19]) = a23;
  *(a9 + v34[20]) = a24;
  result = outlined init with take of P256.Signing.PublicKey?(a25, a9 + v34[21], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  *(a9 + v34[22]) = a26;
  *(a9 + v34[23]) = a27;
  return result;
}

uint64_t ServerHandshakeState.ServerHelloState.negotiatedSignatureAlgorithm.setter(int a1)
{
  result = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t ServerHandshakeState.ServerHelloState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v14 = a3 + v13[6];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v13[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v15 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v16 = a1 + v15[8];
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 2);
  *v14 = v17;
  *(v14 + 2) = v16;
  v18 = (a1 + v15[15]);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = (a3 + v13[7]);
  *v22 = v19;
  v22[1] = v20;
  v22[2] = v21;
  v23 = (a1 + v15[16]);
  v24 = *v23;
  v25 = v23[1];
  v26 = (a3 + v13[8]);
  *v26 = v24;
  v26[1] = v25;
  *(a3 + v13[9]) = *(a1 + v15[6]);
  outlined init with copy of Any?(a1 + v15[18], v12, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v27 = type metadata accessor for GeneralEPSK(0);
  v28 = (*(*(v27 - 8) + 48))(v12, 1, v27) != 1;
  outlined copy of Data?(v19, v20);

  outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  *(a3 + v13[10]) = v28;
  v29 = v42;
  *(a3 + v13[11]) = *(a1 + v15[20]);
  v30 = v15[21];
  outlined init with copy of Any?(a1 + v30, v29, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v31 = type metadata accessor for PAKEServerState(0);
  v32 = (*(*(v31 - 8) + 48))(v29, 1, v31);
  if (v32 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v29, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v33 = 0;
  }

  else
  {
    v33 = *(v29 + *(v31 + 32));
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v29, type metadata accessor for PAKEServerState);
  }

  v34 = a3 + v13[12];
  *v34 = v33;
  *(v34 + 2) = v32 == 1;
  v35 = a1 + v15[7];
  LOWORD(v34) = *v35;
  LOBYTE(v35) = *(v35 + 2);
  v36 = a3 + v13[13];
  *v36 = v34;
  *(v36 + 2) = v35;
  *(a3 + v13[15]) = *(a1 + v15[17]);
  v37 = (a1 + v15[9]);
  LOBYTE(v34) = *v37;
  LOBYTE(v37) = v37[1];
  v38 = (a3 + v13[14]);
  *v38 = v34;
  v38[1] = v37;
  outlined init with copy of Any?(a1 + v30, a3 + v13[16], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v39 = *(a1 + v15[23]);
  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ClientHelloState);
  *(a3 + v13[17]) = v39;
  return result;
}

uint64_t ServerHandshakeState.ServerHelloState.clientQUICTransportParameters.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[2];
  outlined copy of Data?(*v2, v2[1]);
  return v3;
}

uint64_t ServerHandshakeState.ServerHelloState.selectedALPN.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ServerHandshakeState.ServerEncryptedExtensionsState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v7 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v8 = a1 + v7[6];
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 2);
  v10 = a3 + v6[6];
  *v10 = v9;
  *(v10 + 2) = v8;
  v11 = (a1 + v7[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = (a3 + v6[7]);
  *v15 = v12;
  v15[1] = v13;
  v15[2] = v14;
  v16 = (a1 + v7[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (a3 + v6[8]);
  *v19 = v17;
  v19[1] = v18;
  *(a3 + v6[9]) = *(a1 + v7[9]);
  *(a3 + v6[10]) = *(a1 + v7[10]);
  *(a3 + v6[11]) = *(a1 + v7[11]);
  v20 = a1 + v7[12];
  LOWORD(v17) = *v20;
  LOBYTE(v20) = *(v20 + 2);
  v21 = a3 + v6[12];
  *v21 = v17;
  *(v21 + 2) = v20;
  v22 = a1 + v7[13];
  LOWORD(v17) = *v22;
  LOBYTE(v22) = *(v22 + 2);
  v23 = a3 + v6[13];
  *v23 = v17;
  *(v23 + 2) = v22;
  *(a3 + v6[14]) = *(a1 + v7[15]);
  outlined init with copy of Any?(a1 + v7[16], a3 + v6[15], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  LOBYTE(v7) = *(a1 + v7[17]);
  outlined copy of Data?(v12, v13);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerHelloState);
  *(a3 + v6[16]) = v7;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v7 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = a1 + v7[6];
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 2);
  v10 = a3 + v6[6];
  *v10 = v9;
  *(v10 + 2) = v8;
  v11 = (a1 + v7[7]);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v15 = (a3 + v6[7]);
  *v15 = v13;
  v15[1] = v12;
  v15[2] = v14;
  v16 = (a1 + v7[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (a3 + v6[8]);
  *v19 = v17;
  v19[1] = v18;
  *(a3 + v6[9]) = *(a1 + v7[9]);
  *(a3 + v6[10]) = *(a1 + v7[11]);
  v20 = a1 + v7[13];
  LOWORD(v17) = *v20;
  LOBYTE(v20) = *(v20 + 2);
  v21 = a3 + v6[11];
  *v21 = v17;
  *(v21 + 2) = v20;
  *(a3 + v6[12]) = *(a1 + v7[14]);
  v22 = *(a1 + v7[16]);
  outlined copy of Data?(v13, v12);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  *(a3 + v6[13]) = v22;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.selectedALPN.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v7 = (a3 + v6[7]);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v8 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v9 = (a1 + v8[7]);
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = (a3 + v6[6]);
  *v13 = v11;
  v13[1] = v10;
  v13[2] = v12;
  v14 = (a1 + v8[8]);
  v15 = v14[1];
  *v7 = *v14;
  v7[1] = v15;
  *(a3 + v6[8]) = *(a1 + v8[9]);
  *(a3 + v6[9]) = *(a1 + v8[10]);
  v16 = a1 + v8[11];
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 2);
  v18 = a3 + v6[10];
  *v18 = v17;
  *(v18 + 2) = v16;
  *(a3 + v6[11]) = *(a1 + v8[12]);
  LOBYTE(v7) = *(a1 + v8[13]);
  outlined copy of Data?(v11, v10);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerCertificateState);
  *(a3 + v6[12]) = v7;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.clientQUICTransportParameters.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[2];
  outlined copy of Data?(*v2, v2[1]);
  return v3;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.selectedALPN.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ServerHandshakeState.ServerFinishedState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v6 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v7 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v8 = (a1 + v7[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = (a3 + v6[6]);
  *v12 = v9;
  v12[1] = v10;
  v12[2] = v11;
  v13 = (a1 + v7[7]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (a3 + v6[7]);
  *v16 = v14;
  v16[1] = v15;
  *(a3 + v6[8]) = *(a1 + v7[8]);
  *(a3 + v6[9]) = *(a1 + v7[9]);
  v17 = a3 + v6[10];
  *v17 = 0;
  *(v17 + 2) = 1;
  v18 = a1 + v7[10];
  LOWORD(v14) = *v18;
  LOBYTE(v18) = *(v18 + 2);
  v19 = a3 + v6[11];
  *v19 = v14;
  *(v19 + 2) = v18;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = *(a1 + v7[11]);
  v20 = v6[14];
  v21 = type metadata accessor for PAKEServerState(0);
  (*(*(v21 - 8) + 56))(a3 + v20, 1, 1, v21);
  LOBYTE(v7) = *(a1 + v7[12]);
  outlined copy of Data?(v9, v10);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
  *(a3 + v6[15]) = v7;
  return result;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = result;
  v12 = *(a1 + *(result + 40));
  if (v12 & 1) == 0 && (*(a1 + *(result + 48) + 2))
  {
    __break(1u);
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v13 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    outlined init with take of P256.Signing.PublicKey?(a2, a3 + v13[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v14 = (a1 + v11[7]);
    v15 = v14[1];
    v30 = *v14;
    v16 = v14[2];
    v17 = (a3 + v13[6]);
    *v17 = v30;
    v17[1] = v15;
    v17[2] = v16;
    v18 = (a1 + v11[8]);
    v19 = *v18;
    v20 = v18[1];
    v21 = (a3 + v13[7]);
    *v21 = v19;
    v21[1] = v20;
    *(a3 + v13[8]) = *(a1 + v11[9]);
    *(a3 + v13[9]) = *(a1 + v11[11]);
    v22 = a1 + v11[12];
    LOWORD(v19) = *v22;
    LOBYTE(v22) = *(v22 + 2);
    v23 = a3 + v13[10];
    *v23 = v19;
    *(v23 + 2) = v22;
    v24 = a1 + v11[13];
    LOWORD(v19) = *v24;
    LOBYTE(v24) = *(v24 + 2);
    v25 = a3 + v13[11];
    *v25 = v19;
    *(v25 + 2) = v24;
    *(a3 + v13[12]) = v12;
    *(a3 + v13[13]) = *(a1 + v11[14]);
    v26 = v11[15];
    outlined init with copy of Any?(a1 + v26, a3 + v13[14], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    outlined init with copy of Any?(a1 + v26, v9, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    outlined copy of Data?(v30, v15);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v27 = type metadata accessor for PAKEServerState(0);
    v28 = (*(*(v27 - 8) + 48))(v9, 1, v27) != 1;
    result = outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    *(a3 + v13[15]) = v28;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKFAK6SHA384V_Tg5(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v39 = a3;
  v45 = a2;
  v42 = a1;
  v38 = type metadata accessor for SymmetricKey();
  v41 = *(v38 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  outlined init with copy of Any?(v4, &v36 - v20, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_5:
    v43 = xmmword_1B26C6450;
    v30 = 2;
    LOBYTE(v44) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v30;
  }

  v23 = v17;
  v24 = v41;
  v25 = v40;
  v36 = v10;
  v37 = v4;
  v26 = v45;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  v27 = v23;
  outlined init with take of P256.Signing.PublicKey?(v21, v23, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v43 = xmmword_1B26C6130;
  v44 = 0;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  outlined init with copy of Any?(v27, v15, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v28 = *(v24 + 16);
  v29 = v25;
  v28(v25, v26, v38);
  v31 = *(&v43 + 1);
  v30 = v43;
  v32 = v44;
  outlined copy of Data._Representation(v43, *(&v43 + 1));
  v33 = v36;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretV05earlyO005ecdheO016serverHelloBytes9pskFailedAHyx__GAF05EarlyO0Vyx__G_9CryptoKit09SymmetricD0VAA10ByteBufferVSbtcfCAQ6SHA384V_Tt4g5(v15, v29, v30, v31, v32, v39 & 1, v36);
  outlined destroy of P256.Signing.PrivateKey?(v27, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v34 = v37;
  outlined destroy of P256.Signing.PrivateKey?(v37, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  outlined init with take of P256.Signing.PublicKey?(v33, v34, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  return v30;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = a2;
  v4 = v3;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  outlined init with copy of Any?(v4, &v28 - v18, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v21 = a1;
    v29 = v4;
    v22 = v30;
    v23 = v33;
    if (EnumCaseMultiPayload)
    {
      outlined init with take of P256.Signing.PublicKey?(v19, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v31 = xmmword_1B26C6130;
      v32 = 0;
      specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v21, v22, v23);
      outlined init with copy of Any?(v12, v10, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v26 = *(&v31 + 1);
      v24 = v31;
      v27 = v32;
      outlined copy of Data._Representation(v31, *(&v31 + 1));
      _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretV09handshakeO019serverFinishedBytesAHyx__GAF09HandshakeO0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5(v10, v24, v26, v27, v17);
      outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      swift_storeEnumTagMultiPayload();
      outlined assign with take of PartialHandshakeResult?(v17, v29, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      return v24;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  outlined destroy of P256.Signing.PrivateKey?(v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
  v31 = xmmword_1B26C6450;
  v24 = 2;
  LOBYTE(v32) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v24;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ9CryptoKit6SHA384V_Tt5g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v155 = a8;
  v165 = a7;
  v157 = a6;
  LODWORD(v166) = a5;
  v176 = a4;
  v167 = a3;
  v173 = a1;
  v159 = a9;
  v13 = type metadata accessor for SHA384Digest();
  v169 = *(v13 - 8);
  v14 = *(v169 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v158 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v145 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v179 = &v145 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v164 = *(v20 - 8);
  v21 = *(v164 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v152 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v175 = &v145 - v24;
  v150 = type metadata accessor for RawEPSK(0);
  v25 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ImportedPSK(0);
  v27 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for PSK(0);
  v29 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v31 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v145 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v145 - v38;
  v40 = type metadata accessor for SymmetricKey();
  v182 = *(v40 - 8);
  v41 = *(v182 + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v153 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v178 = &v145 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v174 = &v145 - v46;
  v47 = type metadata accessor for SHA384();
  v171 = *(v47 - 8);
  v48 = *(v171 + 64);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v172 = &v145 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v145 - v51;
  v53 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
  v185 = v52;
  v177 = v47;
  v181 = v53;
  dispatch thunk of HashFunction.init()();
  v54 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v55 = 0;
    if (v54 == 2)
    {
      v55 = *(v173 + 24);
    }
  }

  else if (v54)
  {
    v55 = v173 >> 32;
  }

  else
  {
    v55 = BYTE6(a2);
  }

  if (v55 < v167)
  {
    __break(1u);
    goto LABEL_66;
  }

  v146 = a2 >> 62;
  v147 = a2;
  v56 = Data._Representation.subscript.getter();
  v58 = v57;
  v59 = v180;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v56, v57);
  outlined consume of Data._Representation(v56, v58);
  v180 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  v60 = dispatch thunk of static Digest.byteCount.getter();
  if (v60 < 0)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
    goto LABEL_28;
  }

  v163 = v20;
  if (v60)
  {
    v61 = v60;
    v62 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v62 + 16) = v61;
    bzero((v62 + 32), v61);
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any?(v176, v35, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v63 = type metadata accessor for GeneralEPSK(0);
  v64 = *(v63 - 8);
  v161 = *(v64 + 48);
  v160 = v64 + 48;
  v65 = v161(v35, 1, v63);
  v170 = v40;
  v168 = v13;
  v162 = v59;
  if (v65 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v35, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    v66 = v182;
    (*(v182 + 56))(v39, 1, 1, v40);
    *&v183 = v62;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    SymmetricKey.init<A>(data:)();
    v67 = (*(v66 + 48))(v39, 1, v40);
    v20 = v165;
    if (v67 != 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v39, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    }
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v35, v31, type metadata accessor for PSK);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = (v182 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v70 = v151;
      outlined init with take of ServerHandshakeState.IdleState(v31, v151, type metadata accessor for RawEPSK);
      v71 = v170;
      (*v69)(v39, v70 + *(v150 + 20), v170);
      v72 = type metadata accessor for RawEPSK;
    }

    else
    {
      v70 = v149;
      outlined init with take of ServerHandshakeState.IdleState(v31, v149, type metadata accessor for ImportedPSK);
      v71 = v170;
      (*v69)(v39, v70 + *(v148 + 20), v170);
      v72 = type metadata accessor for ImportedPSK;
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v70, v72);
    v20 = v165;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v35, type metadata accessor for GeneralEPSK);
    v73 = v182;
    (*(v182 + 56))(v39, 0, 1, v71);
    (*(v73 + 32))(v174, v39, v71);
  }

  *&v183 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v74 = v177;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();

  if (v166)
  {
    v75 = 0x646E696220747865;
  }

  else
  {
    v75 = 0x646E696220706D69;
  }

  v76 = v172;
  dispatch thunk of HashFunction.init()();
  v77 = v179;
  dispatch thunk of HashFunction.finalize()();
  v35 = (v171 + 8);
  v166 = *(v171 + 8);
  v166(v76, v74);
  v78 = v168;
  v79 = dispatch thunk of static Digest.byteCount.getter();
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(v75, 0xEA00000000007265, v79, v178);

  v81 = v169 + 8;
  v80 = *(v169 + 8);
  v80(v77, v78);
  if (v161(v176, 1, v63) == 1)
  {
    v161 = v80;
    v176 = v35;
LABEL_24:
    v82 = v177;
    dispatch thunk of HashFunction.finalize()();
    v83 = dispatch thunk of static Digest.byteCount.getter();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
    v85 = *(v84 + 44);
    v86 = v84;
    v173 = v84;
    v87 = v159;
    v88 = v175;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6661727420652063, 0xEB00000000636966, v83, v159 + v85);
    v89 = dispatch thunk of static Digest.byteCount.getter();
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x616D207078652065, 0xEC00000072657473, v89, v87 + *(v86 + 48));
    v90 = v172;
    dispatch thunk of HashFunction.init()();
    v91 = v158;
    dispatch thunk of HashFunction.finalize()();
    v166(v90, v82);
    v92 = dispatch thunk of static Digest.byteCount.getter();
    v93 = v173;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v92, v87 + *(v173 + 36));
    v94 = v161;
    (v161)(v91, v78);
    v94(v179, v78);
    (*(v164 + 8))(v88, v163);
    v95 = v182;
    v96 = v170;
    (*(v182 + 8))(v174, v170);
    (*(v171 + 32))(v87, v185, v82);
    return (*(v95 + 32))(v87 + *(v93 + 40), v178, v96);
  }

  v13 = v163;
  if (v20 >> 60 == 15 || (a11 & 1) != 0)
  {
    v105 = 0x80000001B26CDE70;
    v106 = v163;
    v107 = 0xD00000000000002CLL;
    *&v183 = 0xD00000000000002CLL;
    *(&v183 + 1) = 0x80000001B26CDE70;
    v108 = 1;
    v184 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v109 = *(v182 + 8);
    v110 = v170;
    v109(v178, v170);
    (*(v164 + 8))(v175, v106);
    v109(v174, v110);
    result = (v166)(v185, v177);
LABEL_64:
    *a12 = v107;
    *(a12 + 8) = v105;
    *(a12 + 16) = v108;
    return result;
  }

  v161 = v80;
  v169 = v81;
  outlined copy of Data._Representation(v157, v20);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_67;
  }

LABEL_28:
  v98 = type metadata accessor for Logger();
  v156 = __swift_project_value_buffer(v98, logger);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  v101 = os_log_type_enabled(v99, v100);
  v102 = v152;
  if (v101)
  {
    v103 = swift_slowAlloc();
    *v103 = 134217984;
    *(v103 + 4) = a10;
    _os_log_impl(&dword_1B25F5000, v99, v100, "bindersArrayLength: %ld", v103, 0xCu);
    MEMORY[0x1B274ECF0](v103, -1, -1);
  }

  if (v146 > 1)
  {
    if (v146 == 2)
    {
      v104 = *(v173 + 24);
    }

    else
    {
      v104 = 0;
    }
  }

  else if (v146)
  {
    v104 = v173 >> 32;
  }

  else
  {
    v104 = BYTE6(v147);
  }

  result = v167;
  if (v104 < v167)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v111 = Data._Representation.subscript.getter();
  specialized BidirectionalCollection.dropLast(_:)(a10 + 3, v111, v112, &v183);
  v113 = v183;
  v114 = v102;
  v115 = v13;
  v116 = v172;
  v117 = v177;
  v176 = v35;
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v113, *(&v113 + 1));
  v118 = v162;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v113, *(&v113 + 1));
  v173 = v118;
  v167 = *(&v113 + 1);
  v160 = v113;
  outlined consume of Data._Representation(v113, *(&v113 + 1));
  dispatch thunk of HashFunction.finalize()();
  v166(v116, v117);
  v119 = dispatch thunk of static Digest.byteCount.getter();
  v120 = v153;
  v121 = _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v119, v153);
  MEMORY[0x1EEE9AC00](v121);
  *(&v145 - 2) = v120;
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408]);
  v122 = v114;
  v123 = v173;
  result = dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v162 = v123;
  v124 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    v125 = v155;
    v126 = v157;
    if (v124 == 2)
    {
      v127 = *(v157 + 24);
    }

    else
    {
      v127 = 0;
    }
  }

  else
  {
    v125 = v155;
    v126 = v157;
    if (v124)
    {
      v127 = v157 >> 32;
    }

    else
    {
      v127 = BYTE6(v20);
    }
  }

  if (v127 < v125)
  {
    goto LABEL_69;
  }

  *&v183 = Data._Representation.subscript.getter();
  *(&v183 + 1) = v128;
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  v129 = static MessageAuthenticationCode.== infix<A>(_:_:)();
  outlined consume of Data._Representation(v183, *(&v183 + 1));
  if (v129)
  {
    outlined consume of ByteBuffer?(v126, v20);
    outlined consume of Data._Representation(v160, v167);
    (*(v164 + 8))(v122, v115);
    v78 = v168;
    (v161)(v154, v168);
    (*(v182 + 8))(v153, v170);
    goto LABEL_24;
  }

  result = HashedAuthenticationCode.byteCount.getter();
  if (v124 > 1)
  {
    v130 = v155;
    v131 = v165;
    v132 = v157;
    if (v124 == 2)
    {
      v133 = *(v157 + 24);
    }

    else
    {
      v133 = 0;
    }
  }

  else
  {
    v130 = v155;
    v131 = v165;
    v132 = v157;
    if (v124)
    {
      v133 = v157 >> 32;
    }

    else
    {
      v133 = BYTE6(v165);
    }
  }

  v134 = __OFSUB__(v133, v130);
  v135 = v133 - v130;
  if (!v134)
  {
    if (result != v135)
    {
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_1B25F5000, v136, v137, "psk binder value not of expected length. likely epsk hash algorithm mismatch.", v138, 2u);
        MEMORY[0x1B274ECF0](v138, -1, -1);
      }
    }

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_1B25F5000, v139, v140, "client binder value incorrect. aborting handshake.", v141, 2u);
      MEMORY[0x1B274ECF0](v141, -1, -1);
    }

    v183 = xmmword_1B26C9520;
    v108 = 2;
    v184 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v132, v131);
    outlined consume of Data._Representation(v160, v167);
    v142 = *(v164 + 8);
    v142(v122, v115);
    (v161)(v154, v168);
    v143 = *(v182 + 8);
    v144 = v170;
    v143(v178, v170);
    v142(v175, v115);
    v143(v174, v144);
    v143(v153, v144);
    result = (v166)(v185, v177);
    v105 = 0;
    v107 = 31;
    goto LABEL_64;
  }

LABEL_70:
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 2 * v16) = *(*(v4 + 48) + 2 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V20negotiateCipherSuite33_03AB5AB83506F65A656301CC88CAC942LLyAA0iJ0VSayAIG_AJtAA8TLSErrorOYKFZTf4nnd_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      result = *(v4 + 2 * v3++);
      v6 = *(a2 + 16);
      v7 = (a2 + 32);
      while (v6)
      {
        v8 = *v7++;
        --v6;
        if (v8 == result)
        {
          return result;
        }
      }
    }

    while (v3 != v2);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B25F5000, v10, v11, "no common ciphersuites", v12, 2u);
    MEMORY[0x1B274ECF0](v12, -1, -1);
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 6;
}

double _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x1B274CD90]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t outlined copy of Extension.PAKE.PAKEClientHello?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined copy of Data._Representation(result, a2);
    outlined copy of Data._Representation(a4, a5);
  }

  return result;
}

uint64_t outlined consume of Extension.PAKE.PAKEClientHello?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined consume of Data._Representation(result, a2);
    outlined consume of Data._Representation(a4, a5);
  }

  return result;
}

uint64_t outlined assign with take of ServerHandshakeStateMachine.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of PAKEServerRecords?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of Extension.PreSharedKey.OfferedPSKs?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeState()
{
  result = type metadata accessor for ServerHandshakeState.IdleState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeState.ClientHelloState(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ServerHandshakeState.ServerHelloState(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ServerHandshakeState.ServerCertificateState(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ServerHandshakeState.ServerFinishedState(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ServerHandshakeState.ReadyState(319);
                if (v8 <= 0x3F)
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
  }

  return result;
}

void type metadata completion function for ServerHandshakeState.IdleState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [GeneralEPSK]?(319, &lazy cache variable for type metadata for [GeneralEPSK]?, &_sSay15SwiftTLSLibrary11GeneralEPSKVGMd, &_sSay15SwiftTLSLibrary11GeneralEPSKVGMR);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [GeneralEPSK]?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEServerRecords?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ServerSessionKeyManager<SHA384>()
{
  if (!lazy cache variable for type metadata for ServerSessionKeyManager<SHA384>)
  {
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
    v0 = type metadata accessor for ServerSessionKeyManager();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ServerSessionKeyManager<SHA384>);
    }
  }
}

void type metadata accessor for [GeneralEPSK]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerHandshakeState.NegotiatedParams(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServerHandshakeState.NegotiatedParams(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerHandshakeState.ClientHelloVerifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t storeEnumTagSinglePayload for ServerHandshakeState.ClientHelloVerifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult()
{
  result = type metadata accessor for GeneralEPSK(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for ServerHandshakeState.ClientHelloState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for CertificateType?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Extension.KeyShare.KeyShareEntry?);
            if (v5 <= 0x3F)
            {
              type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for GeneratedEphemeralPrivateKey?, type metadata accessor for GeneratedEphemeralPrivateKey);
              if (v6 <= 0x3F)
              {
                type metadata accessor for SymmetricKey();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Data?);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for GeneralEPSK?, type metadata accessor for GeneralEPSK);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
                          if (v12 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void type metadata accessor for GeneratedEphemeralPrivateKey?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for ServerHandshakeState.ServerHelloState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?);
            if (v5 <= 0x3F)
            {
              type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for CertificateType?);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
                  if (v8 <= 0x3F)
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
  }
}

void type metadata accessor for PAKEServerRecords?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata completion function for ServerHandshakeState.ServerEncryptedExtensionsState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?);
            if (v5 <= 0x3F)
            {
              type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
                if (v7 <= 0x3F)
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
}

void type metadata completion function for ServerHandshakeState.ServerCertificateState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?);
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

void type metadata completion function for ServerHandshakeState.ServerCertificateVerifyState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for ServerHandshakeState.ServerFinishedState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?);
            if (v5 <= 0x3F)
            {
              type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
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

uint64_t __swift_get_extra_inhabitant_index_77Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_78Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for ServerHandshakeState.ReadyState()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?);
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