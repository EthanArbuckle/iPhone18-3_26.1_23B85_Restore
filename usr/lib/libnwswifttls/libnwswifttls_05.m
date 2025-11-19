uint64_t ServerHandshakeStateMachine.earlyDataAccepted.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v38 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v40 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v28 = v9[*(v34 + 40)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v30 = v9;
      }

      else
      {
        outlined init with take of ImportedPSK(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = v6[*(v35 + 36)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v30 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      outlined init with take of ImportedPSK(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v13[*(v37 + 36)];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      outlined init with take of ImportedPSK(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = v13[*(ready + 36)];
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v17[*(v14 + 44)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v17;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v30, v29);
      return v28;
    }

    outlined init with take of ImportedPSK(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = v13[*(v10 + 44)];
    v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v29 = v31;
    v30 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = v21[*(v18 + 80)];
    v29 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v30 = v21;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, type metadata accessor for ServerHandshakeState);
  return 2;
}

uint64_t ServerHandshakeStateMachine.stateDescription.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v0 + *(v5 + 24), v4, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 1701602409;
  v8 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v8 = 0x726F467964616572;
  }

  v9 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v9 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v8 = v9;
  }

  v10 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v10 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v7 = v10;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v4, type metadata accessor for ServerHandshakeState);
  return v11;
}

BOOL ServerHandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v0 + *(v5 + 24), v4, type metadata accessor for ServerHandshakeState);
  v6 = swift_getEnumCaseMultiPayload() > 6;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v4, type metadata accessor for ServerHandshakeState);
  return v6;
}

uint64_t ServerHandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v0 + *(v5 + 24), v4, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v0 + 24);
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v4, type metadata accessor for ServerHandshakeState);
  return v6;
}

void ServerHandshakeStateMachine.logUnexpectedMessage(message:)(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  v4 = ServerHandshakeState.description.getter();
  v6 = *(a1 + 104);
  v7 = 0x6548746E65696C63;
  v8 = 0xE800000000000000;
  v9 = 0x64656873696E6966;
  if (v6 != 6)
  {
    v9 = 0xD000000000000010;
    v8 = 0x80000001B26CD8F0;
  }

  v10 = 0xEB00000000657461;
  v11 = 0x6369666974726563;
  if (v6 != 4)
  {
    v11 = 0xD000000000000011;
    v10 = 0x80000001B26CD910;
  }

  if (*(a1 + 104) <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0x80000001B26CD950;
  v13 = 0xD000000000000012;
  if (v6 == 2)
  {
    v13 = 0xD000000000000013;
  }

  else
  {
    v12 = 0x80000001B26CD930;
  }

  if (*(a1 + 104))
  {
    v7 = 0x6548726576726573;
  }

  if (*(a1 + 104) <= 1u)
  {
    v12 = 0xEB000000006F6C6CLL;
  }

  else
  {
    v7 = v13;
  }

  if (*(a1 + 104) <= 3u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (*(a1 + 104) <= 3u)
  {
    v15 = v12;
  }

  else
  {
    v15 = v8;
  }

  v16 = v4;
  v17 = v5;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);

  oslog = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315394;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v25);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v25);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_1B25F5000, oslog, v19, "unexpected message %s in state %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v21, -1, -1);
    MEMORY[0x1B274ECF0](v20, -1, -1);
  }

  else
  {
  }
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMR);
  v10 = *(type metadata accessor for GeneralEPSK(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GeneralEPSK(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized SwiftOfferedEPSK.init(external_identity:context:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = result;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(result + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = result >> 32;
  }

  else
  {
    v12 = BYTE6(a2);
  }

  if (v12 < a3)
  {
    goto LABEL_23;
  }

  result = Data._Representation.subscript.getter();
  v13 = result;
  if (a5 >> 60 == 15)
  {
    outlined consume of Data._Representation(v10, a2);
    return v13;
  }

  v14 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v14 != 2)
    {
      if (a6 <= 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    v15 = *(a4 + 24);
  }

  else
  {
    if (!v14)
    {
      if (BYTE6(a5) < a6)
      {
        goto LABEL_22;
      }

LABEL_19:
      Data._Representation.subscript.getter();
      outlined consume of ByteBuffer?(a4, a5);
      outlined consume of Data._Representation(v10, a2);
      outlined consume of ByteBuffer?(a4, a5);
      return v13;
    }

    v15 = a4 >> 32;
  }

  result = outlined copy of Data._Representation(a4, a5);
  if (v15 >= a6)
  {
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SwiftOfferedEPSK(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SwiftOfferedEPSK(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeStateMachine()
{
  result = type metadata accessor for ServerHandshakeState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeStateMachine.StepResult()
{
  v0 = type metadata accessor for PartialHandshakeResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t outlined init with take of ImportedPSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void TLSPlaintext.hash(into:)(int a1, unsigned int a2, uint64_t a3)
{
  v4 = a2 >> 8;
  v5 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(a3 + 16);
  MEMORY[0x1B274DB20](v6);
  if (v6)
  {
    v7 = (a3 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }
}

Swift::Int TLSPlaintext.hashValue.getter(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(a2 + 16);
  MEMORY[0x1B274DB20](v6);
  if (v6)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TLSPlaintext()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 1);
  v3 = *v0;
  Hasher.init(_seed:)();
  TLSPlaintext.hash(into:)(&v5, v3 | (v1 << 16), v2);
  return Hasher._finalize()();
}

BOOL specialized static TLSPlaintext.__derived_struct_equals(_:_:)(_BOOL8 result, uint64_t a2, int a3, uint64_t a4)
{
  if ((result & 0xFFFFFF) != (a3 & 0xFFFFFF))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 != *(a4 + 16))
  {
    return 0;
  }

  if (!v4 || a2 == a4)
  {
    return 1;
  }

  v5 = (a2 + 32);
  v6 = (a4 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TLSPlaintext and conformance TLSPlaintext()
{
  result = lazy protocol witness table cache variable for type TLSPlaintext and conformance TLSPlaintext;
  if (!lazy protocol witness table cache variable for type TLSPlaintext and conformance TLSPlaintext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSPlaintext and conformance TLSPlaintext);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TLSPlaintext(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TLSPlaintext(uint64_t result, int a2, int a3)
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

uint64_t _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC(uint64_t *a1)
{
  result = _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (!v1)
  {
    return result;
  }

  return result;
}

uint64_t CertificateVerify.signature.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = outlined consume of Data._Representation(v3[1], v3[2]);
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t static CertificateVerify.__derived_struct_equals(_:_:)(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a1 == a5)
  {
    return specialized static ByteBuffer.== infix(_:_:)(a2, a3, a4, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

void CertificateVerify.hash(into:)(int a1, Swift::UInt16 a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  Hasher._combine(_:)(a2);
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(a3 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = a3 >> 32;
  }

  else
  {
    v9 = BYTE6(a4);
  }

  if (v9 < a5)
  {
    __break(1u);
  }

  else
  {
    v10 = Data._Representation.subscript.getter();
    v12 = v11;
    Data.hash(into:)();

    outlined consume of Data._Representation(v10, v12);
  }
}

void CertificateVerify.hashValue.getter(Swift::UInt16 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(a2 + 24);
    }
  }

  else if (v8)
  {
    v9 = a2 >> 32;
  }

  else
  {
    v9 = BYTE6(a3);
  }

  if (v9 < a4)
  {
    __break(1u);
  }

  else
  {
    v10 = Data._Representation.subscript.getter();
    v12 = v11;
    Data.hash(into:)();
    outlined consume of Data._Representation(v10, v12);
    Hasher._finalize()();
  }
}

void protocol witness for Hashable.hash(into:) in conformance CertificateVerify()
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
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    outlined consume of Data._Representation(v6, v8);
  }
}

void protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateVerify()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    outlined consume of Data._Representation(v7, v9);
    Hasher._finalize()();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CertificateVerify(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return specialized static ByteBuffer.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a1 + 3), *(a2 + 1), *(a2 + 2), *(a2 + 3));
  }

  else
  {
    return 0;
  }
}

unint64_t CertificateVerify.write(into:)(uint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = bswap32(a2) >> 16;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v38 = MEMORY[0x1E69E6290];
  v39 = MEMORY[0x1E6969DF8];
  v36 = &v35;
  v37 = &v36;
  v11 = __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v14 = *a1;
  v15 = a1[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v19 = *(v14 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v17 = BYTE6(v15);
    v18 = v14 >> 32;
    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }
  }

  v35 = 0;
  v38 = v9;
  v39 = v10;
  v36 = &v35;
  v37 = &v36;
  v20 = __swift_project_boxed_opaque_existential_0(&v36, v9);
  v22 = *v20;
  v21 = v20[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v23 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a3 + 16);
      v25 = *(a3 + 24);
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }
  }

  else if (v23)
  {
    v24 = a3;
    v25 = a3 >> 32;
  }

  else
  {
    v24 = 0;
    v25 = BYTE6(a4);
  }

  if (v25 < a5 || v25 < v24)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v26 = Data._Representation.subscript.getter();
  v28 = v27;
  Data.append(_:)();
  v29 = v28;
  v30 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_29;
    }

    v32 = *(v26 + 16);
    v31 = *(v26 + 24);
    outlined consume of Data._Representation(v26, v29);
    v26 = v31 - v32;
    if (!__OFSUB__(v31, v32))
    {
LABEL_26:
      if ((v26 & 0x8000000000000000) == 0)
      {
        if (!(v26 >> 16))
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_29:
        outlined consume of Data._Representation(v26, v29);
        v26 = 0;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_24:
    outlined consume of Data._Representation(v26, v29);
    if (__OFSUB__(HIDWORD(v26), v26))
    {
      goto LABEL_33;
    }

    v26 = HIDWORD(v26) - v26;
    goto LABEL_26;
  }

  if (v30)
  {
    goto LABEL_24;
  }

  outlined consume of Data._Representation(v26, v28);
  v26 = BYTE6(v28);
LABEL_30:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v26, v19);
  v33 = *MEMORY[0x1E69E9840];
  return v26 + 4;
}

uint64_t _s15SwiftTLSLibrary17CertificateVerifyVAA24HandshakeMessageProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateVerify and conformance CertificateVerify()
{
  result = lazy protocol witness table cache variable for type CertificateVerify and conformance CertificateVerify;
  if (!lazy protocol witness table cache variable for type CertificateVerify and conformance CertificateVerify)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateVerify and conformance CertificateVerify);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateVerify(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CertificateVerify(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary15ProtocolVersionV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 33);
  v4 = (result + 33);
  while (v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v3 += 2;
    v7 = v6;
    result = *(v4 - 1) == v5 && *v4 == v7;
    v9 = result != 1 || v2-- == 1;
    v4 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v55[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 56);
      v5 = (a2 + 56);
      while (1)
      {
        v8 = *(v4 - 2);
        v53 = *(v4 - 3);
        v9 = *(v4 - 1);
        v11 = *(v5 - 3);
        v10 = *(v5 - 2);
        v12 = *(v5 - 1);
        v50 = *v5;
        v51 = *v4;
        v13 = v8 >> 62;
        if ((v8 >> 62) <= 1)
        {
          break;
        }

        if (v13 == 2)
        {
          v14 = *(v4 - 3);
          v15 = *(v53 + 24);
LABEL_16:
          outlined copy of Data._Representation(v14, v8);
          if (v15 < v9)
          {
            goto LABEL_79;
          }

          goto LABEL_19;
        }

        if (v9 > 0)
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
        }

LABEL_19:
        outlined copy of Data._Representation(v11, v10);
        v16 = Data._Representation.subscript.getter();
        v18 = v17;
        v19 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v19 == 2)
          {
            v20 = *(v11 + 24);
          }

          else
          {
            v20 = 0;
          }
        }

        else if (v19)
        {
          v20 = v11 >> 32;
        }

        else
        {
          v20 = BYTE6(v10);
        }

        if (v20 < v12)
        {
          goto LABEL_80;
        }

        v52 = v11;
        v21 = Data._Representation.subscript.getter();
        v23 = v18 >> 62;
        v24 = v22 >> 62;
        if (v18 >> 62 == 3)
        {
          v25 = 0;
          if (!v16 && v18 == 0xC000000000000000 && v22 >> 62 == 3)
          {
            v25 = 0;
            if (!v21 && v22 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v6 = 0;
              v7 = 0xC000000000000000;
              goto LABEL_7;
            }
          }

LABEL_43:
          if (v24 <= 1)
          {
            goto LABEL_44;
          }

          goto LABEL_37;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v31 = *(v16 + 16);
            v30 = *(v16 + 24);
            v28 = __OFSUB__(v30, v31);
            v25 = v30 - v31;
            if (v28)
            {
              goto LABEL_83;
            }

            goto LABEL_43;
          }

          v25 = 0;
          if (v24 <= 1)
          {
            goto LABEL_44;
          }
        }

        else if (v23)
        {
          LODWORD(v25) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_84;
          }

          v25 = v25;
          if (v24 <= 1)
          {
LABEL_44:
            if (v24)
            {
              LODWORD(v29) = HIDWORD(v21) - v21;
              if (__OFSUB__(HIDWORD(v21), v21))
              {
                goto LABEL_81;
              }

              v29 = v29;
            }

            else
            {
              v29 = BYTE6(v22);
            }

            goto LABEL_48;
          }
        }

        else
        {
          v25 = BYTE6(v18);
          if (v24 <= 1)
          {
            goto LABEL_44;
          }
        }

LABEL_37:
        if (v24 != 2)
        {
          if (v25)
          {
            goto LABEL_76;
          }

LABEL_6:
          outlined consume of Data._Representation(v21, v22);
          v6 = v16;
          v7 = v18;
LABEL_7:
          outlined consume of Data._Representation(v6, v7);
          outlined consume of Data._Representation(v11, v10);
          outlined consume of Data._Representation(v53, v8);
          if (v51 != v50)
          {
            goto LABEL_77;
          }

          goto LABEL_8;
        }

        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        v28 = __OFSUB__(v26, v27);
        v29 = v26 - v27;
        if (v28)
        {
          goto LABEL_82;
        }

LABEL_48:
        if (v25 != v29)
        {
LABEL_76:
          outlined consume of Data._Representation(v21, v22);
          outlined consume of Data._Representation(v16, v18);
          outlined consume of Data._Representation(v11, v10);
          outlined consume of Data._Representation(v53, v8);
          goto LABEL_77;
        }

        if (v25 < 1)
        {
          goto LABEL_6;
        }

        v49 = v8;
        if (v23 > 1)
        {
          if (v23 != 2)
          {
            memset(v55, 0, 14);
            v42 = v21;
            v43 = v22;
            outlined copy of Data._Representation(v21, v22);
            closure #1 in static Data.== infix(_:_:)(v55, v42, v43, &v54);
            outlined consume of Data._Representation(v42, v43);
            outlined consume of Data._Representation(v16, v18);
            v34 = v42;
            v35 = v43;
            goto LABEL_71;
          }

          v47 = v22;
          v48 = v3;
          v36 = *(v16 + 16);
          v37 = *(v16 + 24);
          v46 = v21;
          outlined copy of Data._Representation(v21, v22);
          v38 = __DataStorage._bytes.getter();
          if (v38)
          {
            v39 = __DataStorage._offset.getter();
            if (__OFSUB__(v36, v39))
            {
              goto LABEL_87;
            }

            v38 += v36 - v39;
          }

          if (__OFSUB__(v37, v36))
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (!v23)
          {
            v55[0] = v16;
            LOWORD(v55[1]) = v18;
            BYTE2(v55[1]) = BYTE2(v18);
            BYTE3(v55[1]) = BYTE3(v18);
            BYTE4(v55[1]) = BYTE4(v18);
            BYTE5(v55[1]) = BYTE5(v18);
            v32 = v21;
            v33 = v22;
            outlined copy of Data._Representation(v21, v22);
            closure #1 in static Data.== infix(_:_:)(v55, v32, v33, &v54);
            outlined consume of Data._Representation(v32, v33);
            outlined consume of Data._Representation(v16, v18);
            v34 = v32;
            v35 = v33;
LABEL_71:
            outlined consume of Data._Representation(v34, v35);
            v41 = v54;
            goto LABEL_72;
          }

          v48 = v3;
          if (v16 >> 32 < v16)
          {
            goto LABEL_85;
          }

          v46 = v21;
          v47 = v22;
          outlined copy of Data._Representation(v21, v22);
          v38 = __DataStorage._bytes.getter();
          if (v38)
          {
            v40 = __DataStorage._offset.getter();
            if (__OFSUB__(v16, v40))
            {
              goto LABEL_88;
            }

            v38 += v16 - v40;
          }
        }

        MEMORY[0x1B274CD90]();
        v3 = v48;
        closure #1 in static Data.== infix(_:_:)(v38, v46, v47, v55);
        outlined consume of Data._Representation(v46, v47);
        outlined consume of Data._Representation(v16, v18);
        outlined consume of Data._Representation(v46, v47);
        v41 = LOBYTE(v55[0]);
LABEL_72:
        outlined consume of Data._Representation(v52, v10);
        outlined consume of Data._Representation(v53, v49);
        result = 0;
        if (!v41 || v51 != v50)
        {
          goto LABEL_78;
        }

LABEL_8:
        v4 += 8;
        v5 += 8;
        if (!--v2)
        {
          goto LABEL_75;
        }
      }

      if (!v13)
      {
        if (BYTE6(v8) < v9)
        {
          goto LABEL_79;
        }

        goto LABEL_19;
      }

      v14 = *(v4 - 3);
      v15 = v53 >> 32;
      goto LABEL_16;
    }

LABEL_75:
    result = 1;
  }

  else
  {
LABEL_77:
    result = 0;
  }

LABEL_78:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 48);
      v5 = (a2 + 48);
      while (1)
      {
        v11 = *(v4 - 1);
        v51 = *(v4 - 2);
        v12 = *v4;
        v14 = *(v5 - 2);
        v13 = *(v5 - 1);
        v15 = *v5;
        v16 = v11 >> 62;
        if ((v11 >> 62) <= 1)
        {
          break;
        }

        if (v16 == 2)
        {
          v17 = *(v4 - 2);
          v18 = *(v51 + 24);
LABEL_16:
          outlined copy of Data._Representation(v17, v11);
          if (v18 < v12)
          {
            goto LABEL_78;
          }

          goto LABEL_19;
        }

        if (v12 > 0)
        {
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
        }

LABEL_19:
        outlined copy of Data._Representation(v14, v13);
        v19 = Data._Representation.subscript.getter();
        v21 = v20;
        v22 = v13 >> 62;
        if ((v13 >> 62) > 1)
        {
          if (v22 == 2)
          {
            v23 = *(v14 + 24);
          }

          else
          {
            v23 = 0;
          }
        }

        else if (v22)
        {
          v23 = v14 >> 32;
        }

        else
        {
          v23 = BYTE6(v13);
        }

        if (v23 < v15)
        {
          goto LABEL_79;
        }

        v50 = v14;
        v24 = Data._Representation.subscript.getter();
        v26 = v21 >> 62;
        v27 = v25 >> 62;
        if (v21 >> 62 != 3)
        {
          if (v26 > 1)
          {
            if (v26 == 2)
            {
              v36 = *(v19 + 16);
              v35 = *(v19 + 24);
              v33 = __OFSUB__(v35, v36);
              v28 = v35 - v36;
              if (v33)
              {
                goto LABEL_83;
              }

LABEL_43:
              if (v27 <= 1)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v28 = 0;
              if (v27 <= 1)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
            if (!v26)
            {
              v28 = BYTE6(v21);
              if (v27 > 1)
              {
                goto LABEL_37;
              }

LABEL_44:
              if (v27)
              {
                LODWORD(v34) = HIDWORD(v24) - v24;
                if (__OFSUB__(HIDWORD(v24), v24))
                {
                  goto LABEL_81;
                }

                v34 = v34;
              }

              else
              {
                v34 = BYTE6(v25);
              }

LABEL_50:
              if (v28 != v34)
              {
LABEL_75:
                outlined consume of Data._Representation(v24, v25);
                outlined consume of Data._Representation(v19, v21);
                outlined consume of Data._Representation(v14, v13);
                outlined consume of Data._Representation(v51, v11);
                goto LABEL_76;
              }

              if (v28 >= 1)
              {
                v49 = v11;
                if (v26 > 1)
                {
                  if (v26 != 2)
                  {
                    memset(v53, 0, 14);
                    v6 = v24;
                    v7 = v25;
                    outlined copy of Data._Representation(v24, v25);
                    closure #1 in static Data.== infix(_:_:)(v53, v6, v7, &v52);
                    outlined consume of Data._Representation(v6, v7);
                    outlined consume of Data._Representation(v19, v21);
                    v8 = v6;
                    v9 = v7;
                    goto LABEL_6;
                  }

                  v47 = v25;
                  v48 = v3;
                  v39 = *(v19 + 16);
                  v40 = *(v19 + 24);
                  v46 = v24;
                  outlined copy of Data._Representation(v24, v25);
                  v41 = __DataStorage._bytes.getter();
                  if (v41)
                  {
                    v42 = __DataStorage._offset.getter();
                    if (__OFSUB__(v39, v42))
                    {
                      goto LABEL_86;
                    }

                    v41 += v39 - v42;
                  }

                  if (__OFSUB__(v40, v39))
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  if (!v26)
                  {
                    v53[0] = v19;
                    LOWORD(v53[1]) = v21;
                    BYTE2(v53[1]) = BYTE2(v21);
                    BYTE3(v53[1]) = BYTE3(v21);
                    BYTE4(v53[1]) = BYTE4(v21);
                    BYTE5(v53[1]) = BYTE5(v21);
                    v37 = v24;
                    v38 = v25;
                    outlined copy of Data._Representation(v24, v25);
                    closure #1 in static Data.== infix(_:_:)(v53, v37, v38, &v52);
                    outlined consume of Data._Representation(v37, v38);
                    outlined consume of Data._Representation(v19, v21);
                    v8 = v37;
                    v9 = v38;
LABEL_6:
                    outlined consume of Data._Representation(v8, v9);
                    v10 = v52;
LABEL_7:
                    outlined consume of Data._Representation(v50, v13);
                    outlined consume of Data._Representation(v51, v49);
                    if ((v10 & 1) == 0)
                    {
                      goto LABEL_76;
                    }

                    goto LABEL_8;
                  }

                  v48 = v3;
                  if (v19 >> 32 < v19)
                  {
                    goto LABEL_84;
                  }

                  v46 = v24;
                  v47 = v25;
                  outlined copy of Data._Representation(v24, v25);
                  v41 = __DataStorage._bytes.getter();
                  if (v41)
                  {
                    v43 = __DataStorage._offset.getter();
                    if (__OFSUB__(v19, v43))
                    {
                      goto LABEL_87;
                    }

                    v41 += v19 - v43;
                  }
                }

                MEMORY[0x1B274CD90]();
                v3 = v48;
                closure #1 in static Data.== infix(_:_:)(v41, v46, v47, v53);
                outlined consume of Data._Representation(v46, v47);
                outlined consume of Data._Representation(v19, v21);
                outlined consume of Data._Representation(v46, v47);
                v10 = v53[0];
                goto LABEL_7;
              }

              goto LABEL_55;
            }

            LODWORD(v28) = HIDWORD(v19) - v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_82;
            }

            v28 = v28;
            if (v27 <= 1)
            {
              goto LABEL_44;
            }
          }

LABEL_37:
          if (v27 == 2)
          {
            v32 = *(v24 + 16);
            v31 = *(v24 + 24);
            v33 = __OFSUB__(v31, v32);
            v34 = v31 - v32;
            if (v33)
            {
              goto LABEL_80;
            }

            goto LABEL_50;
          }

          if (v28)
          {
            goto LABEL_75;
          }

LABEL_55:
          outlined consume of Data._Representation(v24, v25);
          v29 = v19;
          v30 = v21;
          goto LABEL_56;
        }

        v28 = 0;
        if (v19)
        {
          goto LABEL_43;
        }

        if (v21 != 0xC000000000000000)
        {
          goto LABEL_43;
        }

        if (v25 >> 62 != 3)
        {
          goto LABEL_43;
        }

        v28 = 0;
        if (v24 || v25 != 0xC000000000000000)
        {
          goto LABEL_43;
        }

        outlined consume of Data._Representation(0, 0xC000000000000000);
        v29 = 0;
        v30 = 0xC000000000000000;
LABEL_56:
        outlined consume of Data._Representation(v29, v30);
        outlined consume of Data._Representation(v14, v13);
        outlined consume of Data._Representation(v51, v11);
LABEL_8:
        v4 += 3;
        v5 += 3;
        if (!--v2)
        {
          goto LABEL_74;
        }
      }

      if (!v16)
      {
        if (BYTE6(v11) < v12)
        {
          goto LABEL_78;
        }

        goto LABEL_19;
      }

      v17 = *(v4 - 2);
      v18 = v51 >> 32;
      goto LABEL_16;
    }

LABEL_74:
    result = 1;
  }

  else
  {
LABEL_76:
    result = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v56[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 56);
      v5 = (a2 + 56);
      do
      {
        if (!v2)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
        }

        if (*(v4 - 12) != *(v5 - 12))
        {
          goto LABEL_75;
        }

        v10 = *(v4 - 2);
        v9 = *(v4 - 1);
        v11 = v9 >> 62;
        if ((v9 >> 62) > 1)
        {
          if (v11 == 2)
          {
            v12 = *(v10 + 24);
          }

          else
          {
            v12 = 0;
          }
        }

        else if (v11)
        {
          v12 = v10 >> 32;
        }

        else
        {
          v12 = BYTE6(v9);
        }

        if (v12 < *v4)
        {
          goto LABEL_78;
        }

        v53 = v2;
        v14 = *(v5 - 2);
        v13 = *(v5 - 1);
        v15 = *v5;
        outlined copy of Data._Representation(v10, v9);
        outlined copy of Data._Representation(v14, v13);
        v54 = v10;
        v16 = Data._Representation.subscript.getter();
        v18 = v17;
        v19 = v13 >> 62;
        if ((v13 >> 62) > 1)
        {
          if (v19 == 2)
          {
            v21 = v14;
            v20 = *(v14 + 24);
            goto LABEL_26;
          }

          v20 = 0;
        }

        else if (v19)
        {
          v20 = v14 >> 32;
        }

        else
        {
          v20 = BYTE6(v13);
        }

        v21 = v14;
LABEL_26:
        if (v20 < v15)
        {
          goto LABEL_79;
        }

        v22 = Data._Representation.subscript.getter();
        v24 = v18 >> 62;
        v25 = v23 >> 62;
        if (v18 >> 62 == 3)
        {
          v26 = 0;
          if (!v16 && v18 == 0xC000000000000000 && v23 >> 62 == 3)
          {
            v26 = 0;
            if (!v22 && v23 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v27 = 0;
              v28 = 0xC000000000000000;
              goto LABEL_56;
            }
          }

LABEL_43:
          if (v25 <= 1)
          {
            goto LABEL_44;
          }

          goto LABEL_37;
        }

        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v34 = *(v16 + 16);
            v33 = *(v16 + 24);
            v31 = __OFSUB__(v33, v34);
            v26 = v33 - v34;
            if (v31)
            {
              goto LABEL_82;
            }

            goto LABEL_43;
          }

          v26 = 0;
          if (v25 <= 1)
          {
            goto LABEL_44;
          }
        }

        else if (v24)
        {
          LODWORD(v26) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_83;
          }

          v26 = v26;
          if (v25 <= 1)
          {
LABEL_44:
            if (v25)
            {
              LODWORD(v32) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                goto LABEL_81;
              }

              v32 = v32;
            }

            else
            {
              v32 = BYTE6(v23);
            }

            goto LABEL_50;
          }
        }

        else
        {
          v26 = BYTE6(v18);
          if (v25 <= 1)
          {
            goto LABEL_44;
          }
        }

LABEL_37:
        if (v25 != 2)
        {
          if (v26)
          {
            goto LABEL_74;
          }

LABEL_55:
          outlined consume of Data._Representation(v22, v23);
          v27 = v16;
          v28 = v18;
LABEL_56:
          outlined consume of Data._Representation(v27, v28);
          outlined consume of Data._Representation(v21, v13);
          outlined consume of Data._Representation(v54, v9);
          goto LABEL_7;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        v31 = __OFSUB__(v29, v30);
        v32 = v29 - v30;
        if (v31)
        {
          goto LABEL_80;
        }

LABEL_50:
        if (v26 != v32)
        {
LABEL_74:
          outlined consume of Data._Representation(v22, v23);
          outlined consume of Data._Representation(v16, v18);
          outlined consume of Data._Representation(v21, v13);
          outlined consume of Data._Representation(v54, v9);
          goto LABEL_75;
        }

        if (v26 < 1)
        {
          goto LABEL_55;
        }

        v52 = v9;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v49 = v3;
            v51 = v21;
            v37 = *(v16 + 16);
            v38 = *(v16 + 24);
            v45 = v22;
            v47 = v23;
            outlined copy of Data._Representation(v22, v23);
            v39 = __DataStorage._bytes.getter();
            if (v39)
            {
              v40 = __DataStorage._offset.getter();
              if (__OFSUB__(v37, v40))
              {
                goto LABEL_86;
              }

              v39 += v37 - v40;
            }

            if (__OFSUB__(v38, v37))
            {
              goto LABEL_85;
            }

            MEMORY[0x1B274CD90]();
            v3 = v49;
            closure #1 in static Data.== infix(_:_:)(v39, v45, v47, v56);
            outlined consume of Data._Representation(v45, v47);
            outlined consume of Data._Representation(v16, v18);
            outlined consume of Data._Representation(v45, v47);
            v8 = v56[0];
            v21 = v51;
          }

          else
          {
            memset(v56, 0, 14);
            v6 = v22;
            v7 = v23;
            outlined copy of Data._Representation(v22, v23);
            closure #1 in static Data.== infix(_:_:)(v56, v6, v7, &v55);
            outlined consume of Data._Representation(v6, v7);
            outlined consume of Data._Representation(v16, v18);
            outlined consume of Data._Representation(v6, v7);
            v8 = v55;
          }
        }

        else
        {
          v50 = v21;
          if (v24)
          {
            if (v16 >> 32 < v16)
            {
              goto LABEL_84;
            }

            v46 = v22;
            v48 = v23;
            outlined copy of Data._Representation(v22, v23);
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v42 = __DataStorage._offset.getter();
              if (__OFSUB__(v16, v42))
              {
                goto LABEL_87;
              }

              v41 += v16 - v42;
            }

            MEMORY[0x1B274CD90]();
            closure #1 in static Data.== infix(_:_:)(v41, v46, v48, v56);
            outlined consume of Data._Representation(v46, v48);
            outlined consume of Data._Representation(v16, v18);
            outlined consume of Data._Representation(v46, v48);
            v8 = v56[0];
          }

          else
          {
            v56[0] = v16;
            LOWORD(v56[1]) = v18;
            BYTE2(v56[1]) = BYTE2(v18);
            BYTE3(v56[1]) = BYTE3(v18);
            BYTE4(v56[1]) = BYTE4(v18);
            BYTE5(v56[1]) = BYTE5(v18);
            v35 = v22;
            v36 = v23;
            outlined copy of Data._Representation(v22, v23);
            closure #1 in static Data.== infix(_:_:)(v56, v35, v36, &v55);
            outlined consume of Data._Representation(v35, v36);
            outlined consume of Data._Representation(v16, v18);
            outlined consume of Data._Representation(v35, v36);
            v8 = v55;
            v21 = v50;
          }
        }

        outlined consume of Data._Representation(v21, v13);
        outlined consume of Data._Representation(v54, v52);
        if ((v8 & 1) == 0)
        {
          goto LABEL_75;
        }

LABEL_7:
        v4 += 4;
        v5 += 4;
        v2 = v53 - 1;
      }

      while (v53 != 1);
    }

    result = 1;
  }

  else
  {
LABEL_75:
    result = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 32);
        v6 = *(v3 + 64);
        v13[3] = *(v3 + 48);
        v13[4] = v6;
        v14 = *(v3 + 80);
        v7 = *(v3 + 16);
        v13[0] = *v3;
        v13[1] = v7;
        v13[2] = v5;
        v8 = *(v4 + 48);
        v15[2] = *(v4 + 32);
        v15[3] = v8;
        v15[4] = *(v4 + 64);
        v16 = *(v4 + 80);
        v9 = *(v4 + 16);
        v15[0] = *v4;
        v15[1] = v9;
        outlined init with copy of Extension(v13, v12);
        outlined init with copy of Extension(v15, v12);
        v10 = specialized static Extension.__derived_enum_equals(_:_:)(v13, v15);
        outlined destroy of Extension(v15);
        outlined destroy of Extension(v13);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 88;
        v3 += 88;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary18CertificateMessageV0D5EntryV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v59 = result + 32;
  v58 = a2 + 32;
  v57 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_70;
    }

    v4 = (v59 + 32 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v8 = *(v5 + 24);
      }

      else
      {
        v8 = 0;
      }
    }

    else if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(v6);
    }

    if (v8 < v4[2])
    {
      goto LABEL_71;
    }

    v9 = v4[3];
    v10 = (v58 + 32 * v3);
    v12 = *v10;
    v11 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    outlined copy of Data._Representation(v5, v6);

    outlined copy of Data._Representation(v12, v11);

    result = Data._Representation.subscript.getter();
    v15 = result;
    v17 = v16;
    v18 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      v19 = v11;
      v20 = v12;
      if (v18 == 2)
      {
        v21 = *(v12 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v19 = v11;
      v20 = v12;
      if (v18)
      {
        v21 = v12 >> 32;
      }

      else
      {
        v21 = BYTE6(v11);
      }
    }

    if (v21 < v14)
    {
      goto LABEL_72;
    }

    v22 = v20;
    v23 = v19;
    result = Data._Representation.subscript.getter();
    v25 = v17 >> 62;
    v26 = v24 >> 62;
    v60 = v5;
    if (v17 >> 62 == 3)
    {
      v27 = 0;
      if (!v15 && v17 == 0xC000000000000000 && v24 >> 62 == 3)
      {
        v27 = 0;
        if (!result && v24 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v28 = 0;
          v29 = 0xC000000000000000;
          goto LABEL_50;
        }
      }

LABEL_36:
      if (v26 <= 1)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    }

    if (v25 == 2)
    {
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      v32 = __OFSUB__(v30, v31);
      v27 = v30 - v31;
      if (v32)
      {
        goto LABEL_76;
      }

      goto LABEL_36;
    }

    if (v25 == 1)
    {
      LODWORD(v27) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_75;
      }

      v27 = v27;
      if (v26 <= 1)
      {
LABEL_37:
        if (v26)
        {
          LODWORD(v33) = HIDWORD(result) - result;
          if (__OFSUB__(HIDWORD(result), result))
          {
            goto LABEL_73;
          }

          v33 = v33;
        }

        else
        {
          v33 = BYTE6(v24);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v27 = BYTE6(v17);
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_42:
    if (v26 != 2)
    {
      if (v27)
      {
LABEL_66:
        outlined consume of Data._Representation(result, v24);
        outlined consume of Data._Representation(v15, v17);
        outlined consume of Data._Representation(v22, v23);

        v54 = v5;
        v55 = v6;
        goto LABEL_63;
      }

LABEL_49:
      outlined consume of Data._Representation(result, v24);
      v28 = v15;
      v29 = v17;
LABEL_50:
      result = outlined consume of Data._Representation(v28, v29);
      goto LABEL_51;
    }

    v35 = *(result + 16);
    v34 = *(result + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      goto LABEL_74;
    }

LABEL_44:
    if (v27 != v33)
    {
      goto LABEL_66;
    }

    if (v27 < 1)
    {
      goto LABEL_49;
    }

    v36 = v23;
    v37 = v22;
    v38 = result;
    v39 = v24;
    outlined copy of Data._Representation(result, v24);
    v56 = specialized Data.withUnsafeBytes<A>(_:)(v15, v17, v38, v39);
    outlined consume of Data._Representation(v15, v17);
    result = outlined consume of Data._Representation(v38, v39);
    if ((v56 & 1) == 0)
    {
      v52 = v37;
      v53 = v36;
      goto LABEL_62;
    }

    v22 = v37;
    v23 = v36;
LABEL_51:
    v40 = *(v9 + 16);
    if (v40 != *(v13 + 16))
    {
LABEL_61:
      v52 = v22;
      v53 = v23;
LABEL_62:
      outlined consume of Data._Representation(v52, v53);

      v54 = v60;
      v55 = v6;
LABEL_63:
      outlined consume of Data._Representation(v54, v55);

      return 0;
    }

    if (v40 && v9 != v13)
    {
      break;
    }

LABEL_5:
    ++v3;
    outlined consume of Data._Representation(v22, v23);

    outlined consume of Data._Representation(v60, v6);

    result = 1;
    v2 = v57;
    if (v3 == v57)
    {
      return result;
    }
  }

  v41 = 0;
  v42 = 32;
  while (v41 < *(v9 + 16))
  {
    v43 = *(v9 + v42);
    v62[1] = *(v9 + v42 + 16);
    v44 = *(v9 + v42 + 32);
    v45 = *(v9 + v42 + 48);
    v46 = *(v9 + v42 + 64);
    v63 = *(v9 + v42 + 80);
    v62[3] = v45;
    v62[4] = v46;
    v62[2] = v44;
    v62[0] = v43;
    if (v41 >= *(v13 + 16))
    {
      goto LABEL_69;
    }

    v47 = *(v13 + v42 + 16);
    v64[0] = *(v13 + v42);
    v64[1] = v47;
    v48 = *(v13 + v42 + 32);
    v49 = *(v13 + v42 + 48);
    v50 = *(v13 + v42 + 64);
    v65 = *(v13 + v42 + 80);
    v64[3] = v49;
    v64[4] = v50;
    v64[2] = v48;
    outlined init with copy of Extension(v62, v61);
    outlined init with copy of Extension(v64, v61);
    v51 = specialized static Extension.__derived_enum_equals(_:_:)(v62, v64);
    outlined destroy of Extension(v64);
    result = outlined destroy of Extension(v62);
    if ((v51 & 1) == 0)
    {
      goto LABEL_61;
    }

    ++v41;
    v42 += 88;
    if (v40 == v41)
    {
      goto LABEL_5;
    }
  }

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
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary11CipherSuiteV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t CertificateRequest.extensions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t static CertificateRequest.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((specialized static ByteBuffer.== infix(_:_:)(a1, a2, a3, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(a4, a8);
}

uint64_t CertificateRequest.hash(into:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = a2 >> 32;
  }

  else
  {
    v8 = BYTE6(a3);
  }

  if (v8 < a4)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    v12 = *(a5 + 16);
    result = MEMORY[0x1B274DB20](v12);
    if (v12)
    {
      v13 = a5 + 32;
      do
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 64);
        v18[3] = *(v13 + 48);
        v18[4] = v15;
        v19 = *(v13 + 80);
        v16 = *(v13 + 16);
        v18[0] = *v13;
        v18[1] = v16;
        v18[2] = v14;
        outlined init with copy of Extension(v18, v17);
        Extension.hash(into:)(v6);
        result = outlined destroy of Extension(v18);
        v13 += 88;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

Swift::Int CertificateRequest.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  CertificateRequest.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CertificateRequest()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  CertificateRequest.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateRequest()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  CertificateRequest.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CertificateRequest(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v2, v3);
}

uint64_t CertificateRequest.write(into:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v15 = 0;
    if (v12 == 2)
    {
      v15 = *(v10 + 24);
    }
  }

  else
  {
    v13 = BYTE6(v11);
    v14 = v10 >> 32;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }
  }

  LOBYTE(v42) = 0;
  v16 = MEMORY[0x1E69E6290];
  v17 = MEMORY[0x1E6969DF8];
  v45 = MEMORY[0x1E69E6290];
  v46 = MEMORY[0x1E6969DF8];
  v43 = &v42;
  v44 = (&v42 + 1);
  v18 = __swift_project_boxed_opaque_existential_0(&v43, MEMORY[0x1E69E6290]);
  v20 = *v18;
  v19 = v18[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v21 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }
  }

  else
  {
    if (v21)
    {
      v22 = a2 >> 32;
    }

    else
    {
      v22 = BYTE6(a3);
    }

    if (v21)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v22 < a4 || v22 < v23)
  {
    __break(1u);
    goto LABEL_43;
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
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v28 != 2)
  {
    goto LABEL_31;
  }

  v30 = *(v24 + 16);
  v29 = *(v24 + 24);
  outlined consume of Data._Representation(v24, v27);
  v24 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
LABEL_26:
    outlined consume of Data._Representation(v24, v27);
    if (__OFSUB__(HIDWORD(v24), v24))
    {
      goto LABEL_46;
    }

    v24 = HIDWORD(v24) - v24;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v24 <= 0xFF)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  outlined consume of Data._Representation(v24, v27);
  v24 = 0;
LABEL_32:
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

  v42 = 0;
  v45 = v16;
  v46 = v17;
  v43 = &v42;
  v44 = &v43;
  v35 = __swift_project_boxed_opaque_existential_0(&v43, v16);
  v37 = *v35;
  v36 = v35[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  v38 = specialized Sequence.reduce<A>(into:_:)(0, a5);
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

  v39 = v38;
  if (v38 >> 16)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v38, v34);
  v40 = *MEMORY[0x1E69E9840];
  return v24 + v39 + 3;
}

uint64_t _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc14readExtensionsL_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
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
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v65, bswap32(v12) >> 16, 13, 0, v57, &v59);
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

uint64_t _s15SwiftTLSLibrary18CertificateRequestVAA24HandshakeMessageProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
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

uint64_t *_s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readcD7ContextL_yA2FzFTf4n_g(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = result[2];
  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_13;
    }

    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      v5 = BYTE6(v1);
LABEL_13:
      result[2] = v5;
      return v2;
    }

    v5 = v2 >> 32;
    v6 = v2;
  }

  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    if (v4 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = v2 >> 32;
    }

    if (v7 >= v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  outlined copy of Data._Representation(*a1, v3);
  _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L125OIglozo_A2cEIeglrzo_TR04_s15a42TLSLibrary18CertificateRequestV5bytesAcA10cd7Vz_tAA8E30OYKcfc04readcD7ContextL_yA2FzFTf3nnpf_nTf1nnc_n(v14, &v16);
  if (v1)
  {
    v6 = v14[0];
    v7 = v14[1];
    v8 = v15;
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    v16 = v6;
    v17 = v7;
    LOBYTE(v18) = v8;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  else
  {
    v9 = v17;
    if (v17 >> 60 == 15)
    {
      outlined consume of Data._Representation(*a1, a1[1]);
      v10 = v16;
      v11 = v9;
    }

    else
    {
      outlined consume of Data._Representation(v4, v3);
      v13 = v16;
      v19 = v18;
      v4 = *a1;
      v3 = a1[1];
      v5 = a1[2];
      outlined copy of Data._Representation(*a1, v3);
      if (_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l114OIglozo_AcfHIeglrzo_TR04_s15a42TLSLibrary18CertificateRequestV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1))
      {
        outlined consume of Data._Representation(v4, v3);
        return v13;
      }

      outlined consume of Data._Representation(*a1, a1[1]);
      v10 = v13;
      v11 = v9;
    }

    outlined consume of ByteBuffer?(v10, v11);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type CertificateRequest and conformance CertificateRequest()
{
  result = lazy protocol witness table cache variable for type CertificateRequest and conformance CertificateRequest;
  if (!lazy protocol witness table cache variable for type CertificateRequest and conformance CertificateRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateRequest and conformance CertificateRequest);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CertificateRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1B2628AE0(a1, a2);
}

void Extension.SupportedVersions.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(BYTE1(a2));
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v4 = *(a2 + 16);
    MEMORY[0x1B274DB20](v4);
    if (v4)
    {
      v5 = (a2 + 33);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;
        v5 += 2;
        Hasher._combine(_:)(v6);
        Hasher._combine(_:)(v7);
        --v4;
      }

      while (v4);
    }
  }
}

Swift::Int Extension.SupportedVersions.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Extension.SupportedVersions.hash(into:)(v5, a1, a2 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.SupportedVersions()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Extension.SupportedVersions.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.SupportedVersions()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Extension.SupportedVersions.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFSayAA15ProtocolVersionVGACzXEfU_@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v3);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v10 = __OFSUB__(v9, v5);
  v11 = v9 - v5;
  if (v10)
  {
    goto LABEL_29;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v11 / 2) & ~((v11 + (v11 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v13 = a1[1];
  v25 = *a1;
  v14 = v5 + 2;
  if (__OFADD__(v5, 2))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v15 = result;
  v16 = v13 >> 62;
  v17 = BYTE6(v13);
  while (1)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v25 + 24) < v14)
        {
          break;
        }
      }

      else if (v14 > 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v18 = v17;
    if (v16)
    {
      v18 = v25 >> 32;
    }

    if (v18 < v14)
    {
      break;
    }

LABEL_20:
    v26 = *a1;
    v27 = a1[1];
    if (v14 < v5)
    {
      goto LABEL_28;
    }

    outlined copy of Data._Representation(*a1, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    result = outlined consume of Data._Representation(v26, v27);
    a1[2] = v14;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
      v15 = result;
    }

    v21 = bswap32(0) >> 16;
    *(v15 + 16) = v20 + 1;
    v22 = v15 + 2 * v20;
    *(v22 + 32) = BYTE1(v21);
    *(v22 + 33) = v21;
    v5 = v14;
    v10 = __OFADD__(v14, 2);
    v14 += 2;
    if (v10)
    {
      goto LABEL_27;
    }
  }

  *a2 = v15;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static Extension.SupportedVersions.__derived_enum_equals(_:_:)(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0 && result == a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    v4 = *(result + 16);
    if (v4 != *(a3 + 16))
    {
      return 0;
    }

    else if (v4 && result != a3)
    {
      v5 = (a3 + 33);
      v6 = (result + 33);
      while (v4)
      {
        v7 = *(v5 - 1);
        v8 = *v5;
        v5 += 2;
        v9 = v8;
        result = *(v6 - 1) == v7 && *v6 == v9;
        v11 = result != 1 || v4-- == 1;
        v6 += 2;
        if (v11)
        {
          return result;
        }
      }

      __break(1u);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.SupportedVersions and conformance Extension.SupportedVersions()
{
  result = lazy protocol witness table cache variable for type Extension.SupportedVersions and conformance Extension.SupportedVersions;
  if (!lazy protocol witness table cache variable for type Extension.SupportedVersions and conformance Extension.SupportedVersions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.SupportedVersions and conformance Extension.SupportedVersions);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.SupportedVersions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for Extension.SupportedVersions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

int64_t TLSMessageSerializer.writeHandshakeMessage(_:into:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 104);
  if (v5 > 3)
  {
    if (*(a1 + 104) > 5u)
    {
      if (v5 == 6)
      {
        return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v3);
      }

      else
      {
        v8 = *a1;
        v10 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *(a1 + 24);
        v17 = *(a1 + 32);
        v20 = *(a1 + 48);
        return specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
      }
    }

    else if (v5 == 4)
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v3, v4, 11, CertificateMessage.write(into:));
    }

    else
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v3, v4);
    }
  }

  else if (*(a1 + 104) > 1u)
  {
    if (v5 == 2)
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1);
    }

    else
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v3, v4, 13, CertificateRequest.write(into:));
    }
  }

  else
  {
    v7 = *a1;
    v9 = *(a1 + 8);
    v11 = *(a1 + 16);
    v13 = *(a1 + 24);
    if (*(a1 + 104))
    {
      v16 = *(a1 + 32);
      v19 = *(a1 + 48);
      v22 = *(a1 + 64);
      v24 = *(a1 + 80);
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
    }

    else
    {
      v21 = *(a1 + 64);
      v23 = *(a1 + 80);
      v25 = *(a1 + 96);
      v18 = *(a1 + 48);
      v15 = *(a1 + 32);
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
    }
  }
}

int64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  LOBYTE(v23) = 8;
  v3 = MEMORY[0x1E69E6290];
  v4 = MEMORY[0x1E6969DF8];
  v26 = MEMORY[0x1E69E6290];
  v27 = MEMORY[0x1E6969DF8];
  v24 = &v23;
  v25 = (&v23 + 1);
  v5 = __swift_project_boxed_opaque_existential_0(&v24, MEMORY[0x1E69E6290]);
  v7 = *v5;
  v6 = v5[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  v8 = *v1;
  v9 = v1[1];
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

  LOBYTE(v23) = 0;
  v26 = v3;
  v27 = v4;
  v24 = &v23;
  v25 = (&v23 + 1);
  v12 = __swift_project_boxed_opaque_existential_0(&v24, v3);
  v14 = *v12;
  v13 = v12[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  v23 = 0;
  v26 = v3;
  v27 = v4;
  v24 = &v23;
  v25 = &v24;
  v15 = __swift_project_boxed_opaque_existential_0(&v24, v3);
  v17 = *v15;
  v16 = v15[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  v18 = EncryptedExtensions.write(into:)(v1, a1);
  if (v18 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v19 = v18;
  v20 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v18), v11);
  if (__OFADD__(v11, v20))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v19, v11 + v20);
  v21 = *MEMORY[0x1E69E9840];
  return v19 + 4;
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(a1, a2, a3, a4, 11, CertificateMessage.write(into:));
}

int64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  LOBYTE(v29) = 15;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v32 = MEMORY[0x1E69E6290];
  v33 = MEMORY[0x1E6969DF8];
  v30 = &v29;
  v31 = (&v29 + 1);
  v11 = __swift_project_boxed_opaque_existential_0(&v30, MEMORY[0x1E69E6290]);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v14 = *v4;
  v15 = v4[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v14 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v14 >> 32;
  }

  else
  {
    v17 = BYTE6(v15);
  }

  LOBYTE(v29) = 0;
  v32 = v9;
  v33 = v10;
  v30 = &v29;
  v31 = (&v29 + 1);
  v18 = __swift_project_boxed_opaque_existential_0(&v30, v9);
  v20 = *v18;
  v19 = v18[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v29 = 0;
  v32 = v9;
  v33 = v10;
  v30 = &v29;
  v31 = &v30;
  v21 = __swift_project_boxed_opaque_existential_0(&v30, v9);
  v23 = *v21;
  v22 = v21[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v24 = CertificateVerify.write(into:)(v4, a1, a2, a3, a4);
  if (v24 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v25 = v24;
  v26 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v24), v17);
  if (__OFADD__(v17, v26))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v25, v17 + v26);
  v27 = *MEMORY[0x1E69E9840];
  return v25 + 4;
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v37 = *MEMORY[0x1E69E9840];
  LOBYTE(v32) = a5;
  v12 = MEMORY[0x1E69E6290];
  v13 = MEMORY[0x1E6969DF8];
  v35 = MEMORY[0x1E69E6290];
  v36 = MEMORY[0x1E6969DF8];
  v33 = &v32;
  v34 = (&v32 + 1);
  v14 = __swift_project_boxed_opaque_existential_0(&v33, MEMORY[0x1E69E6290]);
  v16 = *v14;
  v15 = v14[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v33);
  v17 = *v6;
  v18 = v6[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
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
    v20 = BYTE6(v18);
  }

  LOBYTE(v32) = 0;
  v35 = v12;
  v36 = v13;
  v33 = &v32;
  v34 = (&v32 + 1);
  v21 = __swift_project_boxed_opaque_existential_0(&v33, v12);
  v23 = *v21;
  v22 = v21[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v33);
  v32 = 0;
  v35 = v12;
  v36 = v13;
  v33 = &v32;
  v34 = &v33;
  v24 = __swift_project_boxed_opaque_existential_0(&v33, v12);
  v26 = *v24;
  v25 = v24[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v33);
  v27 = a6(v6, a1, a2, a3, a4);
  if (v27 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v28 = v27;
  v29 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v27), v20);
  if (__OFADD__(v20, v29))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v28, v20 + v29);
  v30 = *MEMORY[0x1E69E9840];
  return v28 + 4;
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)()
{
  v26 = *MEMORY[0x1E69E9840];
  LOBYTE(v21) = 4;
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
  v16 = NewSessionTicket.write(into:)(v0);
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

uint64_t Extension.PreSharedKey.OfferedPSKs.identities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Extension.PreSharedKey.OfferedPSKs.binders.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

BOOL static Extension.PreSharedKey.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0 && a1 == a4;
  }

  else
  {
    return (a6 & 1) == 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(a1, a4) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(a2, a5) & 1) != 0;
  }
}

uint64_t static Extension.PreSharedKey.OfferedPSKs.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(a2, a4);
}

void Extension.PreSharedKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a2);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(a1, a2);

    specialized Array<A>.hash(into:)(a1, a3);
  }
}

Swift::Int Extension.PreSharedKey.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a1);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(v7, a1);
    specialized Array<A>.hash(into:)(v7, a2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.PreSharedKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(v5, v1);
    specialized Array<A>.hash(into:)(v5, v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v3);
  }

  else
  {
    v4 = *(v1 + 8);
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(a1, v3);

    specialized Array<A>.hash(into:)(a1, v4);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(v5, v1);
    specialized Array<A>.hash(into:)(v5, v2);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PreSharedKey(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && v4 == v5;
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  else
  {
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    return (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(v4, v5) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(v9, v8) & 1) != 0;
  }
}

uint64_t Extension.PreSharedKey.OfferedPSKs.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized Array<A>.hash(into:)(a1, a2);

  return specialized Array<A>.hash(into:)(a1, a3);
}

Swift::Int Extension.PreSharedKey.OfferedPSKs.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, a1);
  specialized Array<A>.hash(into:)(v5, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.PreSharedKey.OfferedPSKs()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey.OfferedPSKs(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);

  return specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey.OfferedPSKs()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PreSharedKey.OfferedPSKs(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(v2, v3);
}

void Extension.PreSharedKey.OfferedPSKs.PSKIdentity.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = a2 >> 32;
  }

  else
  {
    v7 = BYTE6(a3);
  }

  if (v7 < a4)
  {
    __break(1u);
  }

  else
  {
    v8 = Data._Representation.subscript.getter();
    v10 = v9;
    Data.hash(into:)();
    outlined consume of Data._Representation(v8, v10);
    Hasher._combine(_:)(a5);
  }
}

Swift::Int Extension.PreSharedKey.OfferedPSKs.PSKIdentity.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  result = Hasher.init(_seed:)();
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(a1 + 24);
    }
  }

  else if (v9)
  {
    v10 = a1 >> 32;
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
    v11 = Data._Representation.subscript.getter();
    v13 = v12;
    Data.hash(into:)();
    outlined consume of Data._Representation(v11, v13);
    Hasher._combine(_:)(a4);
    return Hasher._finalize()();
  }

  return result;
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(v1 + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = v1 >> 32;
  }

  else
  {
    v4 = BYTE6(v2);
  }

  if (v4 < *(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();
    outlined consume of Data._Representation(v6, v8);
    Hasher._combine(_:)(v5);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  result = Hasher.init(_seed:)();
  v6 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v1);
  }

  if (v7 < v3)
  {
    __break(1u);
  }

  else
  {
    v8 = Data._Representation.subscript.getter();
    v10 = v9;
    Data.hash(into:)();
    outlined consume of Data._Representation(v8, v10);
    Hasher._combine(_:)(v4);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  return specialized static ByteBuffer.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & (v2 == v3);
}

void Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a2 >> 32;
  }

  else
  {
    v5 = BYTE6(a3);
  }

  if (v5 < a4)
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    outlined consume of Data._Representation(v6, v8);
  }
}

Swift::Int Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = Hasher.init(_seed:)();
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 24);
    }
  }

  else if (v7)
  {
    v8 = a1 >> 32;
  }

  else
  {
    v8 = BYTE6(a2);
  }

  if (v8 < a3)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    return Hasher._finalize()();
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = Hasher.init(_seed:)();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    outlined consume of Data._Representation(v7, v9);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
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

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    return outlined consume of Data._Representation(v6, v8);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = Hasher.init(_seed:)();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    outlined consume of Data._Representation(v7, v9);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t ByteBuffer.writePreSharedKey(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = bswap32(a1) >> 16;
    v10[3] = MEMORY[0x1E69E6290];
    v10[4] = MEMORY[0x1E6969DF8];
    v10[0] = &v9;
    v10[1] = v10;
    v3 = __swift_project_boxed_opaque_existential_0(v10, MEMORY[0x1E69E6290]);
    v5 = *v3;
    v4 = v3[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(v10);
    v6 = *MEMORY[0x1E69E9840];
    return 2;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return ByteBuffer.writeOfferedPSKs(_:)(a1, a2);
  }
}

uint64_t ByteBuffer.writeOfferedPSKs(_:)(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v10 = 0;
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v6);
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

  v31 = 0;
  v11 = MEMORY[0x1E69E6290];
  v12 = MEMORY[0x1E6969DF8];
  v34 = MEMORY[0x1E69E6290];
  v35 = MEMORY[0x1E6969DF8];
  v32 = &v31;
  v33 = &v32;
  v13 = __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x1E69E6290]);
  v15 = *v13;
  v14 = v13[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v32);
  v16 = specialized Sequence.reduce<A>(into:_:)(0, a1);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  if (v16 >> 16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v16, v10);
  v18 = *v2;
  v19 = v2[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = *(v18 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v21 = BYTE6(v19);
    v22 = v18 >> 32;
    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }
  }

  v31 = 0;
  v34 = v11;
  v35 = v12;
  v32 = &v31;
  v33 = &v32;
  v24 = __swift_project_boxed_opaque_existential_0(&v32, v11);
  v26 = *v24;
  v25 = v24[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v32);
  v27 = specialized Sequence.reduce<A>(into:_:)(0, a2);
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v28 = v27;
  if (v27 >> 16)
  {
    goto LABEL_22;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v27, v23);
  v29 = *MEMORY[0x1E69E9840];
  return v17 + v28 + 4;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV16readPreSharedKey11messageType17helloRetryRequestAA9ExtensionO0fgH0OAA09HandshakeJ0V_SbtAA8TLSErrorOYKF(unsigned __int8 a1, char a2)
{
  if (a1 == 2)
  {
    if ((a2 & 1) == 0)
    {
      v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
      if ((v9 & 0x10000) == 0)
      {
        return v9;
      }

LABEL_13:
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 0;
    }

LABEL_6:
    v8 = a1 | 0x290000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v8;
  }

  if (a1 != 1)
  {
    goto LABEL_6;
  }

  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  outlined copy of Data._Representation(*v2, v4);
  v7 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O12rst3O11uv3V11w5VGAA8L175OIglozo_AclNIeglrzo_TR04_s15a12TLSLibrary10cd7V15readi44PSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9e3O12fgh12O0fG0VSgyAA8l28OYKF0E10IdentitiesL_ySayAK11K10VGACzANYKFTf3nnpf_nTf1nc_n(v2);
  v8 = v7;
  if (!v3)
  {
    if (v7)
    {
      outlined consume of Data._Representation(v5, v4);
      v5 = *v2;
      v4 = v2[1];
      v6 = v2[2];
      outlined copy of Data._Representation(*v2, v4);
      if (_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O12rst3O11uv3V14wx5VGAA8L179OIglozo_AclNIeglrzo_TR04_s15a12TLSLibrary10cd7V15readi44PSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9e3O12fgh12O0fG0VSgyAA8m31OYKF0E13BinderEntriesL_ySayAK14kL10VGACzANYKFTf3nnpf_nTf1nc_n(v2))
      {
        outlined consume of Data._Representation(v5, v4);
        return v8;
      }

      outlined consume of Data._Representation(*v2, v2[1]);
    }

    else
    {
      outlined consume of Data._Representation(*v2, v2[1]);
    }

    *v2 = v5;
    v2[1] = v4;
    v2[2] = v6;
    goto LABEL_13;
  }

  outlined consume of Data._Representation(*v2, v2[1]);
  *v2 = v5;
  v2[1] = v4;
  v2[2] = v6;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v8;
}

unint64_t ByteBuffer.writePSKIdentity(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v10 = v4[1];
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

  LOWORD(v35) = 0;
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v38 = MEMORY[0x1E69E6290];
  v39 = MEMORY[0x1E6969DF8];
  v36 = &v35;
  v37 = (&v35 + 2);
  v17 = __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
  v19 = *v17;
  v18 = v17[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    if (v20)
    {
      v21 = a1 >> 32;
    }

    else
    {
      v21 = BYTE6(a2);
    }

    if (v20)
    {
      v22 = a1;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v21 < a3 || v21 < v22)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v23 = Data._Representation.subscript.getter();
  v25 = v24;
  Data.append(_:)();
  v26 = v25;
  v27 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_32;
    }

    v29 = *(v23 + 16);
    v28 = *(v23 + 24);
    outlined consume of Data._Representation(v23, v26);
    v23 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
LABEL_29:
      if ((v23 & 0x8000000000000000) == 0)
      {
        if (!(v23 >> 16))
        {
          goto LABEL_33;
        }

        __break(1u);
LABEL_32:
        outlined consume of Data._Representation(v23, v26);
        v23 = 0;
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_27:
    outlined consume of Data._Representation(v23, v26);
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      goto LABEL_36;
    }

    v23 = HIDWORD(v23) - v23;
    goto LABEL_29;
  }

  if (v27)
  {
    goto LABEL_27;
  }

  outlined consume of Data._Representation(v23, v25);
  v23 = BYTE6(v25);
LABEL_33:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v23, v14);
  v35 = bswap32(a4);
  v38 = v15;
  v39 = v16;
  v36 = &v35;
  v37 = &v36;
  v30 = __swift_project_boxed_opaque_existential_0(&v36, v15);
  v32 = *v30;
  v31 = v30[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v33 = *MEMORY[0x1E69E9840];
  return v23 + 6;
}

unint64_t ByteBuffer.writePSKBinder(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29[5] = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = v3[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = *(v7 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v10 = BYTE6(v8);
    v11 = v7 >> 32;
    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }
  }

  v28 = 0;
  v29[3] = MEMORY[0x1E69E6290];
  v29[4] = MEMORY[0x1E6969DF8];
  v29[0] = &v28;
  v29[1] = v29;
  v13 = __swift_project_boxed_opaque_existential_0(v29, MEMORY[0x1E69E6290]);
  v15 = *v13;
  v14 = v13[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v29);
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v18 = *(a1 + 16);
      v17 = *(a1 + 24);
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
      v17 = a1 >> 32;
    }

    else
    {
      v17 = BYTE6(a2);
    }

    if (v16)
    {
      v18 = a1;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v17 < a3 || v17 < v18)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v19 = Data._Representation.subscript.getter();
  v21 = v20;
  Data.append(_:)();
  v22 = v21;
  v23 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_32;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    outlined consume of Data._Representation(v19, v22);
    v19 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
LABEL_29:
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19 <= 0xFF)
        {
          goto LABEL_33;
        }

        __break(1u);
LABEL_32:
        outlined consume of Data._Representation(v19, v22);
        v19 = 0;
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_27:
    outlined consume of Data._Representation(v19, v22);
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_36;
    }

    v19 = HIDWORD(v19) - v19;
    goto LABEL_29;
  }

  if (v23)
  {
    goto LABEL_27;
  }

  outlined consume of Data._Representation(v19, v21);
  v19 = BYTE6(v21);
LABEL_33:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v19, v12);
  v26 = *MEMORY[0x1E69E9840];
  return v19 + 1;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV15readOfferedPSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9ExtensionO12PreSharedKeyO0fG0VSgyAA8TLSErrorOYKF0E10IdentitiesL_ySayAK11PSKIdentityVGACzANYKF(uint64_t *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v45 = *a1;
  v2 = a1[2];
  v3 = v2 + 2;
  if (__OFADD__(v2, 2))
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

  v5 = v1 >> 62;
  v6 = *a1;
  v7 = MEMORY[0x1E69E7CC0];
  v46 = BYTE6(v1);
  v47 = v1 >> 62;
  while (1)
  {
    if (v5 <= 1)
    {
      v8 = v46;
      if (v5)
      {
        v8 = v45 >> 32;
      }

LABEL_8:
      if (v8 < v3)
      {
        goto LABEL_84;
      }

      goto LABEL_11;
    }

    if (v5 == 2)
    {
      v8 = *(v45 + 24);
      goto LABEL_8;
    }

    if (v3 >= 1)
    {
LABEL_84:
      v42 = v1;
      outlined copy of Data._Representation(v6, v1);
      v12 = *a1;
      v13 = a1[1];
      goto LABEL_86;
    }

LABEL_11:
    v54 = v1;
    if (v3 < v2)
    {
      goto LABEL_91;
    }

    v48 = v2;
    v9 = v1;
    outlined copy of Data._Representation(v6, v1);
    v51 = v9;
    outlined copy of Data._Representation(v6, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v6, v54);
    v10 = bswap32(0) >> 16;
    a1[2] = v3;
    v11 = v3 + v10;
    if (__OFADD__(v3, v10))
    {
      goto LABEL_92;
    }

    v12 = *a1;
    v13 = a1[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v12 + 24);
        goto LABEL_19;
      }

      if (v11 <= 0)
      {
        goto LABEL_22;
      }

LABEL_85:
      v2 = v48;
      v42 = v51;
LABEL_86:
      outlined consume of Data._Representation(v12, v13);
      *a1 = v6;
      a1[1] = v42;
      a1[2] = v2;
      goto LABEL_89;
    }

    v15 = v14 ? v12 >> 32 : BYTE6(v13);
LABEL_19:
    if (v15 < v11)
    {
      goto LABEL_85;
    }

LABEL_22:
    if (v11 < v3)
    {
      goto LABEL_93;
    }

    v16 = Data._Representation.subscript.getter();
    v18 = v16;
    v19 = v17;
    a1[2] = v11;
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v16 = *(v16 + 16);
        v21 = *(v18 + 24);
      }

      else
      {
        v16 = 0;
        v21 = 0;
      }
    }

    else if (v20)
    {
      v16 = v16;
      v21 = v18 >> 32;
    }

    else
    {
      v16 = 0;
      v21 = BYTE6(v17);
    }

    v22 = __OFSUB__(v21, v16);
    v23 = v21 - v16;
    if (v22)
    {
      goto LABEL_94;
    }

    v24 = v16 + v23;
    if (__OFADD__(v16, v23))
    {
      goto LABEL_95;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        v25 = v18 >> 32;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_38:
      if (v25 < v24)
      {
        goto LABEL_101;
      }

      goto LABEL_41;
    }

    if (v20 == 2)
    {
      v25 = *(v18 + 24);
      goto LABEL_38;
    }

    if (v24 > 0)
    {
      goto LABEL_102;
    }

LABEL_41:
    if (v24 < v16)
    {
      goto LABEL_96;
    }

    v49 = v7;
    v26 = Data._Representation.subscript.getter();
    v27 = 0;
    v50 = v28;
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v27 = *(v26 + 16);
      }
    }

    else if (v29)
    {
      v27 = v26;
    }

    v52 = v26;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v30 = *(v18 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v20)
    {
      v30 = v18 >> 32;
    }

    else
    {
      v30 = BYTE6(v19);
    }

    if (__OFSUB__(v30, v24))
    {
      goto LABEL_97;
    }

    if (v30 != v24)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v52, v50);
      outlined consume of Data._Representation(v18, v19);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v6;
      a1[1] = v51;
      a1[2] = v48;
      swift_willThrowTypedImpl();

      v7 = 1;
      goto LABEL_89;
    }

    outlined consume of Data._Representation(v18, v19);
    outlined consume of Data._Representation(v6, v51);
    v31 = v11 + 4;
    if (__OFADD__(v11, 4))
    {
      goto LABEL_98;
    }

    v32 = *a1;
    v33 = a1[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      break;
    }

    v35 = v27;
    if (v34)
    {
      v36 = v32 >> 32;
    }

    else
    {
      v36 = BYTE6(v33);
    }

LABEL_64:
    v37 = v50;
    if (v36 < v31)
    {
      goto LABEL_87;
    }

LABEL_67:
    v53 = *a1;
    v55 = a1[1];
    if (v31 < v11)
    {
      goto LABEL_99;
    }

    outlined copy of Data._Representation(v32, v33);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v53, v55);
    a1[2] = v31;
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v38 = *(v52 + 24);
      }

      else
      {
        v38 = 0;
      }
    }

    else if (v29)
    {
      v38 = v52 >> 32;
    }

    else
    {
      v38 = BYTE6(v37);
    }

    v7 = v49;
    v22 = __OFSUB__(v38, v35);
    v39 = v38 - v35;
    if (v22)
    {
      goto LABEL_100;
    }

    if (v39 <= 0)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v52, v37);

      v7 = 9;
      goto LABEL_89;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 16) + 1, 1, v49);
    }

    v5 = *(v7 + 16);
    v40 = *(v7 + 24);
    if (v5 >= v40 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v5 + 1, 1, v7);
    }

    *(v7 + 16) = v5 + 1;
    v41 = v7 + 32 * v5;
    *(v41 + 32) = v52;
    *(v41 + 40) = v37;
    *(v41 + 48) = v35;
    *(v41 + 56) = bswap32(0);
    v6 = *a1;
    v1 = a1[1];
    v2 = a1[2];
    v3 = v2 + 2;
    LODWORD(v5) = v47;
    if (__OFADD__(v2, 2))
    {
      goto LABEL_90;
    }
  }

  v35 = v27;
  if (v34 == 2)
  {
    v36 = *(v32 + 24);
    goto LABEL_64;
  }

  v37 = v50;
  if (v31 <= 0)
  {
    goto LABEL_67;
  }

LABEL_87:
  outlined consume of Data._Representation(v52, v37);
  v7 = v49;
LABEL_89:
  v43 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV15readOfferedPSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9ExtensionO12PreSharedKeyO0fG0VSgyAA8TLSErrorOYKF0E13BinderEntriesL_ySayAK14PSKBinderEntryVGACzANYKF(uint64_t *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v6 = v2 >> 62;
  v7 = MEMORY[0x1E69E7CC0];
  v38 = BYTE6(v2);
  v39 = v2 >> 62;
  v42 = a1[1];
  while (1)
  {
    v40 = v3;
    if (v6 > 1)
    {
      break;
    }

    v8 = v38;
    if (v6)
    {
      v8 = v1 >> 32;
    }

LABEL_8:
    if (v8 < v4)
    {
      goto LABEL_72;
    }

LABEL_11:
    v9 = *a1;
    v10 = a1[1];
    v44 = *a1;
    if (v4 < v3)
    {
      goto LABEL_77;
    }

    outlined copy of Data._Representation(v1, v2);
    outlined copy of Data._Representation(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v44, v10);
    a1[2] = v4;
    v11 = *a1;
    v12 = a1[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      if (v13)
      {
        v14 = v11 >> 32;
      }

      else
      {
        v14 = BYTE6(v12);
      }

LABEL_18:
      if (v14 < v4)
      {
        goto LABEL_73;
      }

      goto LABEL_21;
    }

    if (v13 == 2)
    {
      v14 = *(v11 + 24);
      goto LABEL_18;
    }

    if (v4 > 0)
    {
      goto LABEL_73;
    }

LABEL_21:
    v15 = Data._Representation.subscript.getter();
    v17 = v15;
    v18 = v16;
    a1[2] = v4;
    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v15 = *(v15 + 16);
        v20 = *(v17 + 24);
      }

      else
      {
        v15 = 0;
        v20 = 0;
      }
    }

    else if (v19)
    {
      v15 = v15;
      v20 = v17 >> 32;
    }

    else
    {
      v15 = 0;
      v20 = BYTE6(v16);
    }

    v21 = __OFSUB__(v20, v15);
    v22 = v20 - v15;
    if (v21)
    {
      goto LABEL_78;
    }

    v23 = v7;
    v24 = v15 + v22;
    if (__OFADD__(v15, v22))
    {
      goto LABEL_79;
    }

    if (v19 <= 1)
    {
      if (v19)
      {
        v25 = v17 >> 32;
      }

      else
      {
        v25 = BYTE6(v16);
      }

LABEL_36:
      if (v25 < v24)
      {
        goto LABEL_83;
      }

      goto LABEL_39;
    }

    if (v19 == 2)
    {
      v25 = *(v17 + 24);
      goto LABEL_36;
    }

    if (v24 > 0)
    {
      goto LABEL_84;
    }

LABEL_39:
    if (v24 < v15)
    {
      goto LABEL_80;
    }

    v26 = Data._Representation.subscript.getter();
    v27 = 0;
    v41 = v28;
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v27 = *(v26 + 16);
      }
    }

    else if (v29)
    {
      v27 = v26;
    }

    v43 = v26;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v30 = *(v17 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v19)
    {
      v30 = v17 >> 32;
    }

    else
    {
      v30 = BYTE6(v18);
    }

    if (__OFSUB__(v30, v24))
    {
      goto LABEL_81;
    }

    if (v30 != v24)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v43, v41);
      outlined consume of Data._Representation(v17, v18);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v1;
      a1[1] = v42;
      a1[2] = v40;
      swift_willThrowTypedImpl();

      v7 = 1;
      goto LABEL_75;
    }

    outlined consume of Data._Representation(v17, v18);
    outlined consume of Data._Representation(v1, v42);
    if (v29 > 1)
    {
      v7 = v23;
      if (v29 == 2)
      {
        v32 = *(v43 + 24);
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v7 = v23;
      if (!v29)
      {
        v31 = v41;
        v32 = BYTE6(v41);
        goto LABEL_63;
      }

      v32 = v43 >> 32;
    }

    v31 = v41;
LABEL_63:
    v21 = __OFSUB__(v32, v27);
    v33 = v32 - v27;
    if (v21)
    {
      goto LABEL_82;
    }

    if (v33 <= 31)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v43, v31);

      v7 = 9;
      goto LABEL_75;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    }

    v6 = *(v7 + 16);
    v34 = *(v7 + 24);
    if (v6 >= v34 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v6 + 1, 1, v7);
    }

    *(v7 + 16) = v6 + 1;
    v35 = (v7 + 24 * v6);
    v35[4] = v43;
    v35[5] = v31;
    v35[6] = v27;
    v3 = a1[2];
    v4 = v3 + 1;
    v2 = v42;
    LODWORD(v6) = v39;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_76;
    }
  }

  if (v6 == 2)
  {
    v8 = *(v1 + 24);
    goto LABEL_8;
  }

  if (v4 < 1)
  {
    goto LABEL_11;
  }

LABEL_72:
  outlined copy of Data._Representation(v1, v2);
  v11 = *a1;
  v12 = a1[1];
LABEL_73:
  outlined consume of Data._Representation(v11, v12);
  *a1 = v1;
  a1[1] = v2;
  a1[2] = v40;
LABEL_75:
  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    while (1)
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = v7 >> 62;
      if ((v7 >> 62) <= 1)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = *(v6 + 24);
LABEL_10:
        outlined copy of Data._Representation(*(v5 - 2), *(v5 - 1));
        result = outlined copy of Data._Representation(v6, v7);
        if (v10 < v8)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v8 > 0)
      {
LABEL_15:
        __break(1u);
        return result;
      }

LABEL_13:
      v5 += 3;
      v11 = Data._Representation.subscript.getter();
      v13 = v12;
      Data.hash(into:)();
      outlined consume of Data._Representation(v11, v13);
      outlined consume of Data._Representation(v6, v7);
      result = outlined consume of Data._Representation(v6, v7);
      if (!--v3)
      {
        return result;
      }
    }

    if (!v9)
    {
      if (BYTE6(v7) < v8)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v10 = v6 >> 32;
    goto LABEL_10;
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    while (1)
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = v7 >> 62;
      if ((v7 >> 62) <= 1)
      {
        break;
      }

      if (v10 == 2)
      {
        v11 = *(v6 + 24);
LABEL_10:
        result = outlined copy of Data._Representation(*(v5 - 3), *(v5 - 2));
        if (v11 < v8)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v8 > 0)
      {
LABEL_15:
        __break(1u);
        return result;
      }

LABEL_13:
      v5 += 8;
      v12 = Data._Representation.subscript.getter();
      v14 = v13;
      Data.hash(into:)();
      outlined consume of Data._Representation(v12, v14);
      Hasher._combine(_:)(v9);
      result = outlined consume of Data._Representation(v6, v7);
      if (!--v3)
      {
        return result;
      }
    }

    if (!v10)
    {
      if (BYTE6(v7) < v8)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v11 = v6 >> 32;
    goto LABEL_10;
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B274DB20](v4);
  if (v4)
  {
    v6 = 0;
    v22 = a2 + 32;
    while (1)
    {
      v7 = (v22 + 32 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        v11 = v10 == 2 ? *(v8 + 24) : 0;
      }

      else
      {
        v11 = v10 ? v8 >> 32 : BYTE6(v9);
      }

      if (v11 < v7[2])
      {
        break;
      }

      v12 = v7[3];
      outlined copy of Data._Representation(*v7, v7[1]);

      v13 = Data._Representation.subscript.getter();
      v15 = v14;
      Data.hash(into:)();
      outlined consume of Data._Representation(v13, v15);
      MEMORY[0x1B274DB20](*(v12 + 16));
      v16 = *(v12 + 16);
      if (v16)
      {
        v17 = v12 + 32;
        do
        {
          v18 = *(v17 + 16);
          v24[0] = *v17;
          v24[1] = v18;
          v19 = *(v17 + 32);
          v20 = *(v17 + 48);
          v21 = *(v17 + 64);
          v25 = *(v17 + 80);
          v24[3] = v20;
          v24[4] = v21;
          v24[2] = v19;
          outlined init with copy of Extension(v24, v23);
          Extension.hash(into:)(a1);
          outlined destroy of Extension(v24);
          v17 += 88;
          --v16;
        }

        while (v16);
      }

      outlined consume of Data._Representation(v8, v9);

      if (++v6 == v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      Hasher._combine(_:)(*(v4 - 12));
      v8 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v9 = *(v5 + 24);
LABEL_10:
        outlined copy of Data._Representation(v5, v6);
        outlined copy of Data._Representation(v5, v6);
        if (v9 < v7)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v7 > 0)
      {
LABEL_15:
        __break(1u);
        return;
      }

LABEL_13:
      v4 += 4;
      v10 = Data._Representation.subscript.getter();
      v12 = v11;
      Data.hash(into:)();
      outlined consume of Data._Representation(v10, v12);
      outlined consume of Data._Representation(v5, v6);
      outlined consume of Data._Representation(v5, v6);
      if (!--v3)
      {
        return;
      }
    }

    if (!v8)
    {
      if (BYTE6(v6) < v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v9 = v5 >> 32;
    goto LABEL_10;
  }
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey and conformance Extension.PreSharedKey()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey and conformance Extension.PreSharedKey;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey and conformance Extension.PreSharedKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey and conformance Extension.PreSharedKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 28))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t SignatureScheme.description.getter(__int16 a1)
{
  result = 0xD000000000000017;
  if (a1 == 2052)
  {
    return 0xD000000000000014;
  }

  if (a1 != 1283 && a1 != 1027)
  {
    _StringGuts.grow(_:)(29);

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v3);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SignatureScheme and conformance SignatureScheme()
{
  result = lazy protocol witness table cache variable for type SignatureScheme and conformance SignatureScheme;
  if (!lazy protocol witness table cache variable for type SignatureScheme and conformance SignatureScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SignatureScheme and conformance SignatureScheme);
  }

  return result;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA256V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5@<X0>(Swift::Int a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X4>, unint64_t a4@<X8>)
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
  type metadata accessor for SHA256Digest();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  type metadata accessor for SHA256();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA256> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

uint64_t RawEPSK.init(identity:epsk:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for RawEPSK(0) + 20);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t GeneralEPSK.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return GeneralEPSK.init(_:)(a1, type metadata accessor for RawEPSK, a2);
}

{
  return GeneralEPSK.init(_:)(a1, type metadata accessor for ImportedPSK, a2);
}

uint64_t _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(void *a1)
{
  v3 = type metadata accessor for ImportedPSK(0);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SHA256();
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SHA256Digest();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymmetricKey();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v49 - v20;
  v59 = a1[2];
  if (v59)
  {
    result = static SHA256Digest.byteCount.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v68 = a1;
      v49 = v18;
      v50 = v17;
      v75 = v1;
      v67 = v7;
      v53 = v10;
      if (result)
      {
        v22 = result;
        v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v23 + 16) = v22;
        bzero((v23 + 32), v22);
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v24 = *(type metadata accessor for EPSK(0) + 20);
      *&v70 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v25 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v55 = v25;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();

      v26 = 0;
      v54 = (v67 + 8);
      ++v53;
      v52 = (v69 + 16);
      v51 = (v69 + 8);
      v27 = v68 + 5;
      v28 = MEMORY[0x1E69E7CC0];
      v29 = v75;
      v58 = v13;
      v57 = v16;
      v56 = v6;
      while (!__OFADD__(v26, 1))
      {
        v69 = v26 + 1;
        v31 = v27 + 2;
        v30 = *v27;
        _s15SwiftTLSLibrary4EPSKV24generateImportedIdentity3forAA0eF0VAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF(*(v27 - 4), &v72, v73);
        if (v29)
        {
          v48 = v72;
          (*(v49 + 8))(v66, v50);

          return v48;
        }

        v67 = v26;
        v32 = ImportedIdentity.serialize()();
        v34 = v33;
        v35 = v62;
        v68 = v28;
        v36 = v65;
        dispatch thunk of HashFunction.init()();
        outlined copy of Data._Representation(v32, v34);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v32, v34);
        v75 = 0;
        outlined consume of Data._Representation(v32, v34);
        v37 = v60;
        dispatch thunk of HashFunction.finalize()();
        v38 = v34;
        v39 = v56;
        v40 = v57;
        outlined consume of Data._Representation(v32, v38);
        v41 = v35;
        v42 = v58;
        v43 = v36;
        v28 = v68;
        (*v54)(v41, v43);
        _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA256V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x2064657669726564, 0xEB000000006B7370, v30, v40);
        (*v53)(v37, v61);
        (*v52)(v39 + *(v64 + 20), v40, v42);
        v44 = v73[1];
        *v39 = v73[0];
        *(v39 + 16) = v44;
        *(v39 + 32) = v73[2];
        *(v39 + 48) = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
        }

        v45 = v69;
        v47 = v28[2];
        v46 = v28[3];
        v29 = v75;
        if (v47 >= v46 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v28);
        }

        (*v51)(v40, v42);
        v28[2] = v47 + 1;
        result = outlined init with take of RawEPSK(v39, v28 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v47, type metadata accessor for ImportedPSK);
        v26 = v67 + 1;
        v27 = v31;
        if (v45 == v59)
        {
          (*(v49 + 8))(v66, v50);
          return v28;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v70 = xmmword_1B26C76B0;
    v71 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 21;
  }

  return result;
}

uint64_t GeneralEPSK.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of RawEPSK(a1, a3, a2);
  type metadata accessor for PSK(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t EPSK.context.getter()
{
  v1 = (v0 + *(type metadata accessor for EPSK(0) + 24));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data?(*v1, v1[1]);
  return v2;
}

uint64_t _s15SwiftTLSLibrary4EPSKV16externalIdentity4epsk7contextAcA10ByteBufferV_9CryptoKit12SymmetricKeyVAHSgtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  if (SymmetricKey.bitCount.getter() >= 128)
  {
    *a9 = a1;
    a9[1] = a2;
    a9[2] = a3;
    v19 = type metadata accessor for EPSK(0);
    v20 = *(v19 + 20);
    v21 = type metadata accessor for SymmetricKey();
    result = (*(*(v21 - 8) + 32))(a9 + v20, a4, v21);
    v22 = (a9 + *(v19 + 24));
    *v22 = a5;
    v22[1] = a6;
    v22[2] = a7;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(a5, a6);
    outlined consume of Data._Representation(a1, a2);
    v17 = type metadata accessor for SymmetricKey();
    result = (*(*(v17 - 8) + 8))(a4, v17);
    *a8 = xmmword_1B26C5EE0;
    *(a8 + 16) = 2;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary4EPSKV24generateImportedIdentity3forAA0eF0VAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF@<X0>(__int16 a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  result = type metadata accessor for EPSK(0);
  v10 = (v3 + *(result + 24));
  v12 = *v10;
  v11 = v10[1];
  v24 = v10[2];
  v13 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_8;
    }

    v14 = *(v7 + 24);
  }

  else
  {
    if (!v13)
    {
      v14 = BYTE6(v6);
      goto LABEL_8;
    }

    v14 = v7 >> 32;
  }

  result = outlined copy of Data._Representation(v7, v6);
LABEL_8:
  v15 = __OFSUB__(v14, v8);
  v16 = v14 - v8;
  if (v15)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v11 >> 60 == 15)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v18 = v11 >> 62;
  v19 = a2;
  if ((v11 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v20 = 0;
      goto LABEL_19;
    }

    v20 = *(v12 + 24);
    goto LABEL_17;
  }

  if (v18)
  {
    v20 = v12 >> 32;
LABEL_17:
    result = outlined copy of Data._Representation(v12, v11);
    goto LABEL_19;
  }

  v20 = BYTE6(v11);
LABEL_19:
  v17 = v20 - v24;
  if (__OFSUB__(v20, v24))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  a2 = v19;
LABEL_21:
  v15 = __OFADD__(v16, v17);
  v21 = v16 + v17;
  if (v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = __OFADD__(v21, 8);
  v22 = v21 + 8;
  if (v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v22 < 0x10000)
  {
    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = v8;
    *(a3 + 24) = v12;
    *(a3 + 32) = v11;
    *(a3 + 40) = v24;
    *(a3 + 48) = 772;
    *(a3 + 50) = a1;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v7, v6);
    result = outlined consume of ByteBuffer?(v12, v11);
    *a2 = xmmword_1B26C76C0;
    *(a2 + 16) = 2;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary16ImportedIdentityV08externalD07context14targetProtocol0G3KDFAcA10ByteBufferV_AISgs6UInt16VALtAA8TLSErrorOYKcfC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = result;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(result + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = result >> 32;
  }

  else
  {
    v16 = BYTE6(a2);
  }

  v17 = v16 - a3;
  if (__OFSUB__(v16, a3))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v23 = *(a4 + 24);
      }

      else
      {
        v31 = a3;
        v24 = a8;
        v25 = a7;
        v26 = a9;
        result = outlined consume of ByteBuffer?(a4, a5);
        a3 = v31;
        a9 = v26;
        a7 = v25;
        a8 = v24;
        v23 = 0;
      }
    }

    else if (v19)
    {
      v23 = a4 >> 32;
    }

    else
    {
      v30 = a3;
      v20 = a8;
      v21 = a7;
      v22 = a9;
      result = outlined consume of ByteBuffer?(a4, a5);
      a3 = v30;
      a9 = v22;
      a7 = v21;
      a8 = v20;
      v23 = BYTE6(a5);
    }

    v27 = __OFSUB__(v23, a6);
    v18 = v23 - a6;
    if (v27)
    {
      goto LABEL_28;
    }
  }

  v27 = __OFADD__(v17, v18);
  v28 = v17 + v18;
  if (v27)
  {
    goto LABEL_26;
  }

  v27 = __OFADD__(v28, 8);
  v29 = v28 + 8;
  if (v27)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (v29 < 0x10000)
  {
    *a9 = v14;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 50) = a8;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v14, a2);
    result = outlined consume of ByteBuffer?(a4, a5);
    *a10 = xmmword_1B26C76C0;
    *(a10 + 16) = 2;
  }

  return result;
}

uint64_t ImportedIdentity.serialize()()
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = xmmword_1B26C6130;
  v27 = 0;
  ByteBuffer.writeUInt16LengthPrefixedImmutableBuffer(_:)(*v0, *(v0 + 8), *(v0 + 16));
  v1 = *(v0 + 32);
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  if (v1 >> 60 == 15)
  {
    v21 = 0;
    v24 = MEMORY[0x1E69E6290];
    v25 = MEMORY[0x1E6969DF8];
    v22 = &v21;
    v23 = &v22;
    v4 = __swift_project_boxed_opaque_existential_0(&v22, MEMORY[0x1E69E6290]);
    v6 = *v4;
    v5 = v4[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  else
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    outlined copy of Data._Representation(v8, *(v0 + 32));
    ByteBuffer.writeUInt16LengthPrefixedImmutableBuffer(_:)(v8, v1, v7);
    outlined consume of ByteBuffer?(v8, v1);
  }

  v21 = bswap32(*(v0 + 48)) >> 16;
  v24 = v2;
  v25 = v3;
  v22 = &v21;
  v23 = &v22;
  v9 = __swift_project_boxed_opaque_existential_0(&v22, v2);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v21 = bswap32(*(v0 + 50)) >> 16;
  v24 = v2;
  v25 = v3;
  v22 = &v21;
  v23 = &v22;
  v12 = __swift_project_boxed_opaque_existential_0(&v22, v2);
  v14 = *v12;
  v13 = v12[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v15 = v26;
  v16 = *(&v26 + 1) >> 62;
  if ((*(&v26 + 1) >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_12;
    }

    v17 = *(v26 + 24);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_12;
    }

    v17 = v26 >> 32;
  }

  if (v17 < 0)
  {
    __break(1u);
  }

LABEL_12:
  v18 = Data._Representation.subscript.getter();
  outlined consume of Data._Representation(v15, *(&v15 + 1));
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t ImportedPSK.init(importedIdentity:ipskx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = *(a1 + 48);
  v6 = *(type metadata accessor for ImportedPSK(0) + 20);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t _s15SwiftTLSLibrary16TLSKDFIdentifierV26cipherSuiteToKDFIdentifier0dE0AcA06CipherE0V_tAA8TLSErrorOYKFZ(__int16 a1)
{
  result = 2;
  if (a1 != 4866)
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 26;
  }

  return result;
}

Swift::Int TLSKDFIdentifier.hashValue.getter(Swift::UInt16 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  MEMORY[0x1B274DB20](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TLSKDFIdentifier()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x1B274DB20](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TLSKDFIdentifier()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  return MEMORY[0x1B274DB20](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TLSKDFIdentifier()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x1B274DB20](v1);
  return Hasher._finalize()();
}

uint64_t static ImportedPSK.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v3;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  if (specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v6, v8))
  {
    v4 = *(type metadata accessor for ImportedPSK(0) + 20);

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t static RawEPSK.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static ByteBuffer.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v2 = *(type metadata accessor for RawEPSK(0) + 20);

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t GeneralEPSK.identity.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawEPSK(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ImportedPSK(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PSK(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PSK(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of RawEPSK(v13, v5, type metadata accessor for RawEPSK);
    v14 = *v5;
    v15 = v5[2];
    outlined copy of Data._Representation(*v5, v5[1]);
    v16 = type metadata accessor for RawEPSK;
    v17 = v5;
  }

  else
  {
    outlined init with take of RawEPSK(v13, v9, type metadata accessor for ImportedPSK);
    v18 = *(v9 + 1);
    v23[0] = *v9;
    v23[1] = v18;
    v23[2] = *(v9 + 2);
    v24 = *(v9 + 12);
    v19 = ImportedIdentity.serialize()();
    v14 = v19;
    if (v20 >> 62 == 2)
    {
      v21 = *(v19 + 16);
    }

    v16 = type metadata accessor for ImportedPSK;
    v17 = v9;
  }

  outlined destroy of RawEPSK(v17, v16);
  return v14;
}

uint64_t ImportedPSK.identity.getter()
{
  result = ImportedIdentity.serialize()();
  if (v1 >> 62 == 2)
  {
    v2 = *(result + 16);
  }

  return result;
}

uint64_t GeneralEPSK.key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawEPSK(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImportedPSK(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PSK(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PSK(v2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of RawEPSK(v15, v7, type metadata accessor for RawEPSK);
    v16 = *(v4 + 20);
    v17 = type metadata accessor for SymmetricKey();
    (*(*(v17 - 8) + 16))(a1, &v7[v16], v17);
    v18 = type metadata accessor for RawEPSK;
    v19 = v7;
  }

  else
  {
    outlined init with take of RawEPSK(v15, v11, type metadata accessor for ImportedPSK);
    v20 = *(v8 + 20);
    v21 = type metadata accessor for SymmetricKey();
    (*(*(v21 - 8) + 16))(a1, &v11[v20], v21);
    v18 = type metadata accessor for ImportedPSK;
    v19 = v11;
  }

  return outlined destroy of RawEPSK(v19, v18);
}

uint64_t EPSK.epsk.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for SymmetricKey();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL GeneralEPSK.isImported.getter()
{
  v1 = type metadata accessor for PSK(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PSK(v0, v4);
  v5 = swift_getEnumCaseMultiPayload() != 1;
  outlined destroy of RawEPSK(v4, type metadata accessor for PSK);
  return v5;
}

uint64_t GeneralEPSK.targetKDF.getter()
{
  v1 = type metadata accessor for ImportedPSK(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PSK(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of PSK(v0, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of RawEPSK(v8, type metadata accessor for PSK);
    v10 = 0;
  }

  else
  {
    outlined init with take of RawEPSK(v8, v4, type metadata accessor for ImportedPSK);
    v10 = *(v4 + 25);
    outlined destroy of RawEPSK(v4, type metadata accessor for ImportedPSK);
  }

  return v10 | ((EnumCaseMultiPayload == 1) << 16);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImportedPSK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  if (specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v8, v10))
  {
    v6 = *(a3 + 20);

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RawEPSK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (specialized static ByteBuffer.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v4 = *(a3 + 20);

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t protocol witness for PSKProtocol.key.getter in conformance ImportedPSK@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for SymmetricKey();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ImportedIdentity.context.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  outlined copy of Data?(v1, v2);
  return v1;
}

uint64_t ByteBuffer.writeUInt16LengthPrefixedImmutableBuffer(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = BYTE6(a2);
  v21[5] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a2);
    if (v6)
    {
      v7 = a1 >> 32;
    }
  }

  v8 = __OFSUB__(v7, a3);
  v9 = v7 - a3;
  if (v8)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 >> 16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = bswap32(v9) >> 16;
  v21[3] = MEMORY[0x1E69E6290];
  v21[4] = MEMORY[0x1E6969DF8];
  v21[0] = &v20;
  v21[1] = v21;
  v10 = __swift_project_boxed_opaque_existential_0(v21, MEMORY[0x1E69E6290]);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 24);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v13 = a1 >> 32;
    }

    else
    {
      v13 = v4;
    }

    if (v6)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v13 < a3 || v13 < v14)
  {
LABEL_27:
    __break(1u);
  }

  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  Data.append(_:)();
  result = outlined consume of Data._Representation(v15, v17);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

double _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n(a1, a2, &v10, v12);
  if (v4)
  {
    v7 = v11;
    result = *&v10;
    *a3 = v10;
    *(a3 + 16) = v7;
  }

  else
  {
    v9 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v9;
    result = *&v13;
    *(a4 + 32) = v13;
    *(a4 + 48) = v14;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readUInt16LengthPrefixedyxSgAeCzq_YKXEq_YKs5ErrorR_r0_lF@<X0>(void (*a1)(uint64_t *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v30 = a1;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v24 = *(v14 - 8);
  v15 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v18 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v18 & 0x10000) != 0)
  {
    return (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  }

  v19 = ByteBuffer.readSlice(length:)(v18);
  if (v20 >> 60 == 15)
  {
    return (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  }

  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30(&v27, v13);
  outlined consume of Data._Representation(v27, v28);
  if (v6)
  {
    return (*(v10 + 32))(v25, v13, a4);
  }

  v23 = *(a3 - 8);
  if ((*(v23 + 48))(v17, 1, a3) == 1)
  {
    (*(v24 + 8))(v17, v14);
    return (*(v23 + 56))(a6, 1, 1, a3);
  }

  else
  {
    (*(v23 + 32))(a6, v17, a3);
    return (*(v23 + 56))(a6, 0, 1, a3);
  }
}

uint64_t static ImportedIdentity.getImportedIdentity(serialized:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined copy of Data._Representation(a1, a2);
  result = _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n(a1, a2, &v10, v11);
  v7 = v11[1];
  v8 = v11[2];
  v9 = v12;
  *a3 = v11[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  return result;
}

void ImportedIdentity.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v4 = *(v1 + 24);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3)
  {
    v4 = v1 >> 32;
  }

  else
  {
    v4 = BYTE6(v2);
  }

  if (v4 < *(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = Data._Representation.subscript.getter();
    v7 = v6;
    Data.hash(into:)();
    outlined consume of Data._Representation(v5, v7);
    v8 = *(v0 + 32);
    if (v8 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
LABEL_20:
      Hasher._combine(_:)(*(v0 + 48));
      Hasher._combine(_:)(*(v0 + 50));
      return;
    }

    v9 = *(v0 + 24);
    v10 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v12 = *(v9 + 24);
      }

      else
      {
        v12 = 0;
      }
    }

    else if (v11)
    {
      v12 = v9 >> 32;
    }

    else
    {
      v12 = BYTE6(v8);
    }

    if (v12 >= v10)
    {
      v13 = Data._Representation.subscript.getter();
      v15 = v14;
      Data.hash(into:)();
      outlined consume of Data._Representation(v13, v15);
      goto LABEL_20;
    }
  }

  __break(1u);
}

Swift::Int ImportedIdentity.hashValue.getter()
{
  Hasher.init(_seed:)();
  ImportedIdentity.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImportedIdentity()
{
  Hasher.init(_seed:)();
  ImportedIdentity.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ImportedIdentity(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v5, v7);
}

uint64_t outlined init with take of RawEPSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL specialized static ImportedIdentity.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v4 = *(a1 + 40);
  v14 = v4;
  v11 = *(a2 + 24);
  v5 = *(a2 + 40);
  v12 = v5;
  v6 = v13;
  v7 = v11;
  if (*(&v13 + 1) >> 60 != 15)
  {
    if (*(&v11 + 1) >> 60 != 15)
    {
      outlined init with copy of ByteBuffer?(&v13, v10);
      outlined init with copy of ByteBuffer?(&v11, v10);
      v8 = specialized static ByteBuffer.== infix(_:_:)(v6, *(&v6 + 1), v4, v7, *(&v7 + 1), v5);
      outlined consume of ByteBuffer?(v7, *(&v7 + 1));
      outlined consume of ByteBuffer?(v6, *(&v6 + 1));
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    outlined init with copy of ByteBuffer?(&v13, v10);
    outlined init with copy of ByteBuffer?(&v11, v10);
    outlined consume of ByteBuffer?(v6, *(&v6 + 1));
    outlined consume of ByteBuffer?(v7, *(&v7 + 1));
    return 0;
  }

  if (*(&v11 + 1) >> 60 != 15)
  {
    goto LABEL_6;
  }

  outlined init with copy of ByteBuffer?(&v13, v10);
  outlined init with copy of ByteBuffer?(&v11, v10);
  outlined consume of ByteBuffer?(v6, *(&v6 + 1));
LABEL_8:
  if (*(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 50) == *(a2 + 50);
  }

  return 0;
}

uint64_t specialized static PSK.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for RawEPSK(0);
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImportedPSK(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PSK(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary3PSKO_ACtMd, &_s15SwiftTLSLibrary3PSKO_ACtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v33 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of PSK(a1, &v33 - v21);
  outlined init with copy of PSK(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PSK(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of RawEPSK(&v22[v23], v6, type metadata accessor for RawEPSK);
      if (specialized static ByteBuffer.== infix(_:_:)(*v15, *(v15 + 1), *(v15 + 2), *v6, *(v6 + 1), *(v6 + 2)) & 1) != 0 && (MEMORY[0x1B274D200](&v15[*(v34 + 20)], &v6[*(v34 + 20)]))
      {
        outlined destroy of RawEPSK(v6, type metadata accessor for RawEPSK);
        v24 = v15;
        v25 = type metadata accessor for RawEPSK;
LABEL_13:
        outlined destroy of RawEPSK(v24, v25);
        outlined destroy of RawEPSK(v22, type metadata accessor for PSK);
        return 1;
      }

      outlined destroy of RawEPSK(v6, type metadata accessor for RawEPSK);
      v31 = v15;
      v32 = type metadata accessor for RawEPSK;
LABEL_16:
      outlined destroy of RawEPSK(v31, v32);
      outlined destroy of RawEPSK(v22, type metadata accessor for PSK);
      return 0;
    }

    v26 = type metadata accessor for RawEPSK;
    v27 = v15;
  }

  else
  {
    outlined init with copy of PSK(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of RawEPSK(&v22[v23], v10, type metadata accessor for ImportedPSK);
      v28 = *(v17 + 1);
      v35[0] = *v17;
      v35[1] = v28;
      v35[2] = *(v17 + 2);
      v36 = *(v17 + 12);
      v29 = *(v10 + 1);
      v37[0] = *v10;
      v37[1] = v29;
      v37[2] = *(v10 + 2);
      v38 = *(v10 + 12);
      if (specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v35, v37) && (MEMORY[0x1B274D200](&v17[*(v7 + 20)], &v10[*(v7 + 20)]) & 1) != 0)
      {
        outlined destroy of RawEPSK(v10, type metadata accessor for ImportedPSK);
        v24 = v17;
        v25 = type metadata accessor for ImportedPSK;
        goto LABEL_13;
      }

      outlined destroy of RawEPSK(v10, type metadata accessor for ImportedPSK);
      v31 = v17;
      v32 = type metadata accessor for ImportedPSK;
      goto LABEL_16;
    }

    v26 = type metadata accessor for ImportedPSK;
    v27 = v17;
  }

  outlined destroy of RawEPSK(v27, v26);
  outlined destroy of (PSK, PSK)(v22);
  return 0;
}

uint64_t outlined init with copy of PSK(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RawEPSK(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(a1 + 16);
LABEL_6:
      outlined copy of Data._Representation(a1, a2);
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v10 & 0x10000) != 0)
  {
    goto LABEL_20;
  }

  v11 = ByteBuffer.readSlice(length:)(v10);
  if (v12 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  v17 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v17 & 0x10000) != 0 || (v18 = ByteBuffer.readSlice(length:)(v17), v19 >> 60 == 15))
  {
LABEL_19:
    outlined consume of ByteBuffer?(v14, v15);
LABEL_20:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a1, a2);
    result = outlined consume of Data._Representation(a1, a2);
    *a3 = xmmword_1B26C76E0;
    *(a3 + 16) = 2;
    return result;
  }

  v35 = v18;
  v37 = v19;
  v36 = v20;
  v34 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v34 & 0x10000) != 0 || (v21 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5(), (v21 & 0x10000) != 0))
  {
    outlined consume of ByteBuffer?(v35, v37);
    goto LABEL_19;
  }

  v22 = v21;
  outlined consume of Data._Representation(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  v23 = v37;
  v24 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    v30 = v24 == 2;
    v27 = v16;
    v28 = v15;
    v29 = v14;
    result = v35;
    if (v30)
    {
      v26 = *(v35 + 24);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    result = v35;
    if (v24)
    {
      v26 = v35 >> 32;
    }

    else
    {
      v26 = BYTE6(v37);
    }

    v27 = v16;
    v28 = v15;
    v29 = v14;
  }

  v31 = v36;
  v32 = __OFSUB__(v26, v36);
  v33 = v26 - v36;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    if (v33 <= 0)
    {
      outlined consume of ByteBuffer?(result, v37);
      v29 = v14;
      v28 = v15;
      v27 = v16;
      result = 0;
      v31 = 0;
      v23 = 0xF000000000000000;
    }

    *a4 = v29;
    *(a4 + 8) = v28;
    *(a4 + 16) = v27;
    *(a4 + 24) = result;
    *(a4 + 32) = v23;
    *(a4 + 40) = v31;
    *(a4 + 48) = v34;
    *(a4 + 50) = v22;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TLSKDFIdentifier and conformance TLSKDFIdentifier()
{
  result = lazy protocol witness table cache variable for type TLSKDFIdentifier and conformance TLSKDFIdentifier;
  if (!lazy protocol witness table cache variable for type TLSKDFIdentifier and conformance TLSKDFIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSKDFIdentifier and conformance TLSKDFIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImportedIdentity and conformance ImportedIdentity()
{
  result = lazy protocol witness table cache variable for type ImportedIdentity and conformance ImportedIdentity;
  if (!lazy protocol witness table cache variable for type ImportedIdentity and conformance ImportedIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportedIdentity and conformance ImportedIdentity);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLSKDFIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TLSKDFIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SymmetricKey();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for SymmetricKey();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ImportedIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 52))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ImportedIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t outlined init with copy of ByteBuffer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (PSK, PSK)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary3PSKO_ACtMd, &_s15SwiftTLSLibrary3PSKO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Extension.ServerCertificateType.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a2);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v4 = *(a2 + 16);
    MEMORY[0x1B274DB20](v4);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v6 = *v5++;
        Hasher._combine(_:)(v6);
        --v4;
      }

      while (v4);
    }
  }
}

Swift::Int Extension.ServerCertificateType.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a1);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v4 = *(a1 + 16);
    MEMORY[0x1B274DB20](v4);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        Hasher._combine(_:)(v6);
        --v4;
      }

      while (v4);
    }
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.ServerCertificateType()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Extension.ServerCertificateType.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t specialized static Extension.ServerCertificateType.__derived_enum_equals(_:_:)(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0 && result == a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    v4 = *(result + 16);
    if (v4 != *(a3 + 16))
    {
      return 0;
    }

    else if (v4 && result != a3)
    {
      v5 = (result + 32);
      v6 = (a3 + 32);
      while (v4)
      {
        v8 = *v5++;
        v7 = v8;
        v9 = *v6++;
        result = v7 == v9;
        if (v7 != v9 || v4-- == 1)
        {
          return result;
        }
      }

      __break(1u);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType()
{
  result = lazy protocol witness table cache variable for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType;
  if (!lazy protocol witness table cache variable for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType);
  }

  return result;
}

uint64_t ByteBuffer.writeCertificateType(_:)(char a1)
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
  return 1;
}

uint64_t ByteBuffer.readCertificateType()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v1 = v0;
  if ((v0 & 0x100) != 0)
  {
    v1 = 0;
  }

  return v0 & 0x100 | v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CertificateType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t CertificateType.description.getter(char a1)
{
  if (!a1)
  {
    return 0x393035782ELL;
  }

  if (a1 == 2)
  {
    return 0x6C6275507761722ELL;
  }

  _StringGuts.grow(_:)(29);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

unint64_t lazy protocol witness table accessor for type CertificateType and conformance CertificateType()
{
  result = lazy protocol witness table cache variable for type CertificateType and conformance CertificateType;
  if (!lazy protocol witness table cache variable for type CertificateType and conformance CertificateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateType and conformance CertificateType);
  }

  return result;
}

double Nonce.array.getter(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  v11 = a2 >> 8;
  v14 = HIBYTE(a2);
  v15 = HIWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v12 = swift_allocObject();
  *&result = 12;
  *(v12 + 16) = xmmword_1B26C7C90;
  *(v12 + 32) = v3;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v2;
  *(v12 + 41) = v11;
  *(v12 + 42) = v15;
  *(v12 + 43) = v14;
  return result;
}

unint64_t static Nonce.== infix(_:_:)(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  Nonce.array.getter(a1, a2);
  v7 = v6;
  Nonce.array.getter(a3, a4);
  LOBYTE(a3) = _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(v7, v8);

  return a3 & 1;
}

uint64_t Nonce.hash(into:)(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = Nonce.array.getter(a2, a3);
  v5 = v4;
  v6 = *(v4 + 16);
  MEMORY[0x1B274DB20](v6, v3);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }
}

Swift::Int Nonce.hashValue.getter(unint64_t a1, unsigned int a2)
{
  Hasher.init(_seed:)();
  v4 = Nonce.array.getter(a1, a2);
  v6 = v5;
  v7 = *(v5 + 16);
  MEMORY[0x1B274DB20](v7, v4);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Nonce()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Nonce.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Nonce(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  Nonce.array.getter(*a1, *(a1 + 8));
  v5 = v4;
  Nonce.array.getter(v2, v3);
  LOBYTE(v3) = _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(v5, v6);

  return v3 & 1;
}

uint64_t additionalData(ciphertextLength:)(unint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = xmmword_1B26C6130;
  v33 = 0;
  LOBYTE(v27) = 23;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v30 = MEMORY[0x1E69E6290];
  v31 = MEMORY[0x1E6969DF8];
  v28 = &v27;
  v29 = (&v27 + 1);
  v4 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
  v6 = *v4;
  v5 = v4[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v27 = 771;
  v30 = v2;
  v31 = v3;
  v28 = &v27;
  v29 = &v28;
  v7 = __swift_project_boxed_opaque_existential_0(&v28, v2);
  v9 = *v7;
  v8 = v7[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(a1 >> 16))
  {
    v27 = bswap32(a1) >> 16;
    v30 = v2;
    v31 = v3;
    v28 = &v27;
    v29 = &v28;
    v10 = __swift_project_boxed_opaque_existential_0(&v28, v2);
    v12 = *v10;
    v11 = v10[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v28);
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001B26CDA10, &v28);
    *(v16 + 12) = 2080;
    v18 = ProtocolVersion.description.getter(771);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v28);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2048;
    *(v16 + 24) = a1;
    _os_log_impl(&dword_1B25F5000, v14, v15, "additional data: content type = %s, protocol version = %s, length = %ld", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v17, -1, -1);
    MEMORY[0x1B274ECF0](v16, -1, -1);
  }

  v21 = v32;
  v22 = *(&v32 + 1) >> 62;
  if ((*(&v32 + 1) >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_14;
    }

    v23 = *(v32 + 24);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_14;
    }

    v23 = v32 >> 32;
  }

  if (v23 < 0)
  {
    __break(1u);
  }

LABEL_14:
  v24 = Data._Representation.subscript.getter();
  outlined consume of Data._Representation(v21, *(&v21 + 1));
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t _s15SwiftTLSLibrary23calculateTLSRecordNonce2iv5seqnoAA0E0VSays5UInt8VG_s6UInt64VtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 12;
  *(result + 32) = 0;
  v5 = (result + 32);
  *(result + 36) = HIBYTE(a2);
  *(result + 37) = BYTE6(a2);
  *(result + 38) = BYTE5(a2);
  *(result + 39) = BYTE4(a2);
  *(result + 40) = BYTE3(a2);
  *(result + 41) = BYTE2(a2);
  *(result + 42) = BYTE1(a2);
  *(result + 43) = a2;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _s15SwiftTLSLibrary5NonceVyACSays5UInt8VGAA8TLSErrorOYKcfCTf4nd_n(result);
  }

  if (v6 <= 0xC)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      *v5++ ^= v8;
      --v6;
    }

    while (v6);
    return _s15SwiftTLSLibrary5NonceVyACSays5UInt8VGAA8TLSErrorOYKcfCTf4nd_n(result);
  }

  __break(1u);
  return result;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(type metadata accessor for TLSRecordProtector() + 40));
  if (v4[1])
  {
    v5 = 0xD00000000000002ELL;
LABEL_13:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v5;
  }

  v6 = *v4;
  v7 = SymmetricKey.bitCount.getter();
  if (v6 == 4866)
  {
    if (v7 != 256)
    {
      v16 = 0;
      _StringGuts.grow(_:)(82);
      MEMORY[0x1B274D610](0xD00000000000003FLL, 0x80000001B26CDAD0);
      SymmetricKey.bitCount.getter();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B274D610](v8);

      v9 = "LS_AES_256_GCM_SHA384: key has ";
      v10 = 0xD000000000000011;
LABEL_11:
      v13 = v9 | 0x8000000000000000;
      goto LABEL_12;
    }
  }

  else if (v7 != 128 && SymmetricKey.bitCount.getter() != 256)
  {
    v16 = 0;
    _StringGuts.grow(_:)(70);
    MEMORY[0x1B274D610](0xD00000000000002CLL, 0x80000001B26CDA60);
    SymmetricKey.bitCount.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v14);

    v9 = "c key size for AES. key has ";
    v10 = 0xD000000000000018;
    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  if (v5 != 12)
  {
    _StringGuts.grow(_:)(48);

    v16 = 0xD00000000000001DLL;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v11);

    MEMORY[0x1B274D610](0x202C736574796220, 0xEE0020736465656ELL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v12);

    v10 = 46;
    v13 = 0xE100000000000000;
LABEL_12:
    MEMORY[0x1B274D610](v10, v13);
    v5 = v16;
    goto LABEL_13;
  }

  return v5;
}

uint64_t TLSRecordProtector.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for TLSRecordProtector();
  v5 = v4[5];
  v6 = v4[6];
  v3(a1 + v6, 1, 1, v2);
  v7 = v4[7];
  *(a1 + v4[8]) = 0;
  *(a1 + v4[9]) = 0;
  v8 = a1 + v4[10];
  outlined destroy of SymmetricKey?(a1);
  v3(a1, 1, 1, v2);
  *(a1 + v5) = 0;
  outlined destroy of SymmetricKey?(a1 + v6);
  result = (v3)(a1 + v6, 1, 1, v2);
  *(a1 + v7) = 0;
  *v8 = 0;
  *(v8 + 2) = 1;
  return result;
}

uint64_t TLSRecordProtector.init(writeKey:writeIV:readKey:readIV:ciphersuite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v55 = a4;
  LODWORD(v56) = a5;
  v57 = a3;
  v53 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v48 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = *(v15 + 56);
  v21(a6, 1, 1, v14);
  v22 = type metadata accessor for TLSRecordProtector();
  v50 = v22[5];
  *(a6 + v50) = 0;
  v51 = v22[6];
  v21(a6 + v51, 1, 1, v14);
  v49 = v22[7];
  *(a6 + v49) = 0;
  *(a6 + v22[8]) = 0;
  *(a6 + v22[9]) = 0;
  v23 = a6 + v22[10];
  *v23 = v56;
  *(v23 + 2) = 0;
  v56 = a1;
  outlined init with copy of SymmetricKey?(a1, v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    v25 = v15;
    outlined destroy of SymmetricKey?(v13);
    v26 = v57;
    v27 = v53;
    v28 = v54;
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    v27 = v53;
    if (v53)
    {
      v25 = v15;

      v29 = v54;
      v30 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v20, v27);
      v33 = v20;
      if (v29)
      {
        LODWORD(v52) = v32;
        v54 = v31;
        v34 = v15;
        v26 = v57;
        v35 = v30;
        v36 = v33;
        goto LABEL_14;
      }

      v28 = 0;
      (*(v15 + 8))(v20, v14);
    }

    else
    {
      v25 = v15;
      (*(v15 + 8))(v20, v14);
      v28 = v54;
    }

    v26 = v57;
  }

  v37 = v52;
  outlined init with copy of SymmetricKey?(v26, v52);
  if (v24(v37, 1, v14) != 1)
  {
    v39 = v37;
    v34 = v25;
    v36 = v48;
    (*(v25 + 32))(v48, v39, v14);
    v38 = v55;
    if (!v55)
    {
      (*(v25 + 8))(v36, v14);
      goto LABEL_17;
    }

    v40 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v36, v38);
    if (!v28)
    {
      (*(v25 + 8))(v36, v14);

      goto LABEL_17;
    }

    v35 = v40;
    LODWORD(v52) = v42;
    v54 = v41;
LABEL_14:
    swift_bridgeObjectRelease_n();

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_allocError();
    v43 = v54;
    *v44 = v35;
    *(v44 + 8) = v43;
    *(v44 + 16) = v52;
    outlined destroy of SymmetricKey?(v26);
    outlined destroy of SymmetricKey?(v56);
    (*(v34 + 8))(v36, v14);
    return outlined destroy of TLSRecordProtector(a6);
  }

  outlined destroy of SymmetricKey?(v37);
  v38 = v55;
LABEL_17:
  outlined assign with take of SymmetricKey?(v56, a6);
  v46 = v51;
  *(a6 + v50) = v27;
  result = outlined assign with take of SymmetricKey?(v26, a6 + v46);
  *(a6 + v49) = v38;
  return result;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV19updateWriteKeyAndIVyy9CryptoKit09SymmetricG0V_Says5UInt8VGtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  result = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(a1, a2);
  if (!v3)
  {
    outlined destroy of SymmetricKey?(v2);
    v7 = type metadata accessor for SymmetricKey();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v2, a1, v7);
    (*(v8 + 56))(v2, 0, 1, v7);
    v9 = type metadata accessor for TLSRecordProtector();
    v10 = *(v9 + 20);
    v11 = *(v2 + v10);

    *(v2 + v10) = a2;
    *(v2 + *(v9 + 32)) = 0;
  }

  return result;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV18updateReadKeyAndIVyy9CryptoKit09SymmetricG0V_Says5UInt8VGtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  result = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(a1, a2);
  if (!v3)
  {
    v7 = type metadata accessor for TLSRecordProtector();
    v8 = v7[6];
    outlined destroy of SymmetricKey?(v2 + v8);
    v9 = type metadata accessor for SymmetricKey();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v2 + v8, a1, v9);
    (*(v10 + 56))(v2 + v8, 0, 1, v9);
    v11 = v7[7];
    v12 = *(v2 + v11);

    *(v2 + v11) = a2;
    *(v2 + v7[9]) = 0;
  }

  return result;
}

Swift::Void __swiftcall TLSRecordProtector.setCiphersuite(ciphersuite:)(Swift::UInt16 ciphersuite)
{
  v3 = v1 + *(type metadata accessor for TLSRecordProtector() + 40);
  *v3 = ciphersuite;
  *(v3 + 2) = 0;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(uint64_t a1, int a2, unint64_t a3)
{
  v54 = a3;
  LODWORD(v53) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v46 - v16;
  v17 = type metadata accessor for TLSRecordProtector();
  v18 = *(v3 + *(v17 + 20));
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v17;
  outlined init with copy of SymmetricKey?(v3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of SymmetricKey?(v9);
LABEL_4:
    v20 = 0xD00000000000002CLL;
    v55 = 0xD00000000000002CLL;
    v56 = 0x80000001B26CDB30;
    v57 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v20;
  }

  v52 = v15;
  v21 = v58;
  (*(v11 + 32))(v58, v9, v10);
  if (*(a1 + 16) > 0x4000uLL)
  {
    v20 = 0xD000000000000030;
    v55 = 0xD000000000000030;
    v56 = 0x80000001B26CDBE0;
    v57 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v21, v10);
    return v20;
  }

  v51 = *(a1 + 16);
  v22 = *(v19 + 32);
  v23 = *(v3 + v22);
  v20 = _s15SwiftTLSLibrary23calculateTLSRecordNonce2iv5seqnoAA0E0VSays5UInt8VG_s6UInt64VtAA8TLSErrorOYKF(v18, v23);
  v25 = v24;
  if (v4)
  {
LABEL_12:
    (*(v11 + 8))(v58, v10);
    return v20;
  }

  v50 = v23;
  v26 = v54;
  v27 = v51 + 1 + v54;
  if (__OFADD__(v51 + 1, v54))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (__OFADD__(v27, 16))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_15;
  }

  if ((v27 + 16) > 16640)
  {
    v20 = 0xD000000000000036;
    v55 = 0xD000000000000036;
    v56 = 0x80000001B26CDBA0;
    v57 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_12;
  }

  v48 = v27 + 16;
  v49 = 0;
  v46 = v3;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_28;
  }

LABEL_15:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, logger);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  v47 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 134218496;
    *(v33 + 4) = v54;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v51;

    *(v33 + 22) = 2048;
    v34 = v48;
    *(v33 + 24) = v48;
    _os_log_impl(&dword_1B25F5000, v30, v31, "creating ciphertext record: paddingLength: %ld, pt len: %ld, ct len: %ld", v33, 0x20u);
    v35 = v33;
    v26 = v54;
    MEMORY[0x1B274ECF0](v35, -1, -1);
  }

  else
  {

    v34 = v48;
  }

  v36 = additionalData(ciphertextLength:)(v34);
  v38 = v37;
  v39 = v52;
  (*(v11 + 16))(v52, v58, v10);
  v40 = v49;
  v41 = _s15SwiftTLSLibrary17TLSInnerPlaintextV7protect8writeKey5nonce14additionalDataSays5UInt8VGSg9CryptoKit09SymmetricG0V_AA5NonceV10Foundation0J0VtAA8TLSErrorOYKF(v39, v20, v25, v36, v38, v47, v53, v26);
  v20 = v41;
  if (v40)
  {
    outlined consume of Data._Representation(v36, v38);
    v42 = *(v11 + 8);
    v42(v39, v10);
LABEL_20:
    v42(v58, v10);
    return v20;
  }

  v54 = v38;
  if (!v41)
  {
    v20 = 0xD000000000000018;
    v55 = 0xD000000000000018;
    v56 = 0x80000001B26CDB60;
    v57 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v36, v54);
    v42 = *(v11 + 8);
    v42(v52, v10);
    goto LABEL_20;
  }

  v53 = 0;
  v43 = *(v11 + 8);
  v43(v52, v10);
  v44 = v50;
  v45 = v58;
  if (v50 == -1)
  {

    v20 = 0xD00000000000001ELL;
    v55 = 0xD00000000000001ELL;
    v56 = 0x80000001B26CDB80;
    v57 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v36, v54);
    v43(v45, v10);
  }

  else
  {
    v43(v58, v10);
    outlined consume of Data._Representation(v36, v54);
    *(v46 + v22) = v44 + 1;
  }

  return v20;
}